// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopingapp/providers/cart.dart';
import 'package:shopingapp/screens/edit_product_screen.dart';
import 'package:shopingapp/screens/user_products_screen.dart';

import './screens/products_overview.dart';
import './screens/products_details_screen.dart';
import './providers/products.dart';
import 'screens/cart_screen.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // value: Products(),
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          // value: Products(),
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          // value: Products(),
          create: (ctx) => Orders(),
        ),
      ], //if our fn is not dependent on context then we can use in this way
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
