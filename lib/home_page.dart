import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple App"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text(
            "Hello 63E",
            style: TextStyle(fontSize: 25),
          ),

          const SizedBox(height: 10),

          const Text("Welcome"),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star),
              SizedBox(width: 5),
              Text("Flutter"),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            width: 200,
            height: 120,
            alignment: Alignment.center,
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text("User"),

                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Clicked")),
                    );
                  },
                  child: const Text("Press"),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No add Option")),
          );
        },
        child: const Icon(Icons.add),
      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHead  qer(
              child: Text("Menu"),
            ),
            ListTile(title: Text("Home")),
            ListTile(title: Text("call")),
            ListTile(title: Text("Settings")),
            ListTile(title: Text("Profile")),
          ],
        ),
      ),
    );
  }
}
