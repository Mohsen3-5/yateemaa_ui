import 'package:flutter/material.dart';
import 'package:yateemaa_ui/widgets/button.dart';

class gridbuttons extends StatelessWidget {
  const gridbuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(30.0),
        crossAxisSpacing: 25,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          button(
              text: 'Home',
              color: Colors.white,
              textColor: Theme.of(context).primaryColor,
              icon: Icons.home),
          button(
              text: 'Search',
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              icon: Icons.search),
          button(
              text: 'Design',
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              icon: Icons.design_services),
          button(
              text: 'sign up',
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              icon: Icons.sign_language),
        ],
      ),
    );
  }
}
