import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.light_mode),
              title: const Text('Light Mode'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Welcome to Home!'),
      ),
    );
  }
}