import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_social_app/src/pages/feiends_list_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: pageIndex,
        children: [
          FriendsListPage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.blue[400],
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            Opacity(
              opacity: 0.0,
              child: const Icon(
                Icons.add,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ],
        ),
      )),
    );
  }
}
