import 'package:didemo1/utilies/counterservice.dart';
import 'package:didemo1/utilies/locator.dart';
import 'package:flutter/material.dart';
//
// class MyCounterWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Retrieve the counter service using the locator
//     CounterService counterService = locator<CounterService>();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DI Counter Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Counter Value: ${counterService.counter}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Increment the counter
//                     counterService.increment();
//                   },
//                   child: Text('Increment'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Decrement the counter
//                     counterService.decrement();
//                   },
//                   child: Text('Decrement'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class MyCounterWidget extends StatefulWidget {
  @override
  _MyCounterWidgetState createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  late CounterService counterService;

  @override
  void initState() {
    super.initState();
    // Retrieve the counter service using the locator
    counterService = locator<CounterService>();
    // Set up a listener to update the UI when the counter changes
    counterService.onCounterChanged = () {
      setState(() {});
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DI Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: ${counterService.counter}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Increment the counter
                    counterService.increment();
                  },
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Decrement the counter
                    counterService.decrement();
                  },
                  child: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}