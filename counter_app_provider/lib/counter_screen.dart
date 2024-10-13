import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Flutter Counter App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter Value:',
                  style: TextStyle(fontSize: screenWidth * 0.06),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  '${context.watch<CounterProvider>().count}',
                  style: TextStyle(
                    fontSize: screenWidth * 0.15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.07,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<CounterProvider>().incrementByOne();
                            },
                            child: const Text('Increment by 1'),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.07,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<CounterProvider>().incrementByTwo();
                            },
                            child: const Text('Increment by 2'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    SizedBox(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.07,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<CounterProvider>().reset();
                        },
                        child: const Text('Reset'),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.07,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<CounterProvider>().decrementByOne();
                            },
                            child: const Text('Decrement by 1'),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.07,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<CounterProvider>().decrementByTwo();
                            },
                            child: const Text('Decrement by 2'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
