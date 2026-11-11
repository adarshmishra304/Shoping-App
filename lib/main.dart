import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/cart_provider.dart';
import 'package:shoping/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Hostel Mart',
        theme: ThemeData(
          fontFamily: 'ComicRelief',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(255, 230, 137, 1.0),
            primary: Color.fromRGBO(255, 230, 137, 1.0),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),


          textTheme: TextTheme(
            titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )

          ),
          useMaterial3: true
        ),

        // home: ProductDetailsPage(
        //   product: products[0],
        // ),
        home: HomePage(),
      ),
    );
  }
}

