import 'package:flutter/material.dart';
import 'country_picker.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _callBackFunction(String name, String dialCode, String flag) {
    // place your code
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 56,
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 16,
                ),
                Image.asset('assets/images/registration.png'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'CountryCode Picker',
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Please Change your countrycode from country picker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0
                        ),
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 253, 188, 51),
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            CountryPicker(
                              callBackFunction: _callBackFunction,
                              headerText: 'Select Country',
                              headerBackgroundColor: Theme.of(context).primaryColor,
                              headerTextColor: Colors.white,
                            ),
                            const Expanded(
                              child:  TextField(
                                decoration: InputDecoration(
                                  hintText: 'Contact Number',
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding:  EdgeInsets.symmetric(vertical: 13.0),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 253, 188, 51),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Validate Mobile Number',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
