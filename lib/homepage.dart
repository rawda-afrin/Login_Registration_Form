import 'package:flutter/material.dart';
import 'container.dart';
import 'image.dart';
import 'converter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Rawdatul Jannat"),
              accountEmail: Text("rawda.afrin@email.com"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 207, 111, 146),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
  leading: const Icon(Icons.currency_exchange),
  title: const Text("Currency Converter"),
  onTap: () {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConverterPage(),
      ),
    );
  },
),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Help & Support"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContainerPage(),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        tooltip: "Open Container Page",
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerPage(),
                ),
              );
            },
            style: TextButton.styleFrom(
              side: const BorderSide(),
              backgroundColor: const Color.fromARGB(255, 235, 148, 220),
              foregroundColor: Colors.white,
              shadowColor: const Color.fromARGB(255, 133, 169, 218),
              elevation: 10,
              fixedSize: const Size(200, 50),
            ),
            child: const Text("Container page"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImagePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(),
              backgroundColor: const Color.fromARGB(255, 220, 112, 230),
              foregroundColor: Colors.white,
              shadowColor: const Color.fromARGB(255, 123, 219, 174),
              elevation: 10,
              fixedSize: const Size(200, 50),
            ),
            child: const Text("Image Page"),
          ),

          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Pink Button Clicked !!"),
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(),
              backgroundColor: const Color.fromARGB(255, 235, 148, 220),
              foregroundColor: Colors.white,
              fixedSize: const Size(200, 50),
            ),
            child: const Text("Pink"),
          ),
        ],
      ),
    );
  }
}