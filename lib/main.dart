import 'package:flutter/material.dart';
import './pages/currency_convertor_material_page.dart';

void main() {
  runApp(
      const MyApp()); // runs the widget defined in the MyApp class(MyApp is root of widget tree)
}

class MyApp extends StatelessWidget {
  // create a custom widget that inherits from abstract class StatelessWidget
  const MyApp(
      {super.key}); // constructor for MyApp, pass the optional widget key to its parent class' constructor
// stateless widgets won’t change (no internal state or user interaction updates), it just builds a widget tree once and stays static

  @override // overriding a method from parent class(build method)
  Widget build(BuildContext context) {
    // function flutter calls to build the UI , (this is the handle to the widgets position in the app)
    return MaterialApp(
        home:
            CurrencyConvertorMaterialPage()); // returns a text widget with the text specified, and renders it left to right
  }
}


// const means this widget can be a compile-time constant
// flutter can reuse this widget in the widget tree without rebuilding it if nothing changes
// saves memory & improves performance
// super.key passes the widget’s key to StatefulWidget so Flutter knows when to reuse the same widget
// The CurrencyConvertorMaterialPage widget itself (the immutable configuration) is constant
// The state is still mutable, because it lives in a separate _CurrencyConvertorMaterialPageState object
// set state rereuns the build function
