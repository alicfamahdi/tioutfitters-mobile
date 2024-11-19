import 'package:flutter/material.dart';
import 'package:tioutfitters/screens/list_product.dart';
import 'package:tioutfitters/screens/menu.dart';
// Impor halaman ProductEntryFormPage jika sudah dibuat
import 'package:tioutfitters/screens/productentry_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'TIOutfitters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Stay fashionable with TIOutfitters!",
                  // Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
            // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.party_mode),
            title: const Text('Add Product'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              /*
              Buatlah routing ke ProductEntryFormPage di sini,
              setelah halaman ProductEntryFormPage sudah dibuat.
              */
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Products'),
            onTap: () {
              // Route menu ke halaman product
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}