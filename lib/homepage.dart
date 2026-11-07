
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
        title: const Text("Homepage 64B"),
        backgroundColor: const Color.fromARGB(255, 225, 87, 23),
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
              accountName: Text("Rawda"),
              accountEmail: Text("rawda.afrin@gmail.com"),
            ),

            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home),
              hoverColor: Colors.lime,
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              title: const Text("Currency Converter"),
              leading: const Icon(Icons.currency_exchange),
              hoverColor: Colors.lime,
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
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
              hoverColor: Colors.lime,
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout),
              ),
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
        backgroundColor: const Color.fromARGB(255, 164, 103, 124),
        foregroundColor: Colors.white,
        hoverColor: Colors.amber,
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
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shadowColor: Colors.amber,
              elevation: 10,
              fixedSize: const Size(100, 50),
            ),
            child: const Text("Blue"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImagePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text("Green"),
          ),

          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Yellow Button Clicked !!"),
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.purple,
                width: 2,
              ),
              foregroundColor: Colors.purple,
              backgroundColor: Colors.amber,
            ),
            child: const Text("Yellow"),
          ),
        ],
      ),
    );
  }
}
