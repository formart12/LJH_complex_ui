import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FriendsListPage extends StatelessWidget {
  const FriendsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [_searchBar(), _frendsList()],
      ),
    );
  }

  Widget _searchBar() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        ),
      );

  Widget _frendsList() => Expanded(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white),
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) => const ListTile(
                title: Text("익명"),
                subtitle: Text("010-1234-1234"),
              ),
            )),
      );
}
