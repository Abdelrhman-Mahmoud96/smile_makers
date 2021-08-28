import 'package:flutter/material.dart';

class UnauthenticatedItemsView extends StatelessWidget {

  static Page page() => MaterialPage(child: UnauthenticatedItemsView());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/no_login_page.jpg', fit: BoxFit.cover,)
    );
  }
}
