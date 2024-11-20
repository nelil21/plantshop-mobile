import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:plantshop/screens/login.dart';
import 'package:plantshop/screens/productentry_form.dart';
import 'package:plantshop/screens/list_productentry.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  // Method untuk menentukan warna latar belakang berdasarkan nama item
  Color getBackgroundColor() {
    switch (item.name) {
      case "Lihat Produk":
        return Colors.yellow; // Warna kuning untuk Lihat Daftar Produk
      case "Tambah Produk":
        return Colors.blue; // Warna biru untuk Tambah Produk
      case "Logout":
        return Colors.red; // Warna merah untuk Logout
      default:
        return Colors.grey; // Default warna abu-abu jika item tidak sesuai
    }
  }

  // Method untuk menentukan warna teks
  Color getTextColor() {
    return Colors.white; // Teks putih untuk semua tombol
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: getBackgroundColor(),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ),
            );
          }
          else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryPage()
              ),
            );
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
              // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
              "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                ),
               );
            }
          }
        }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: getTextColor(),
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: getTextColor()), // Warna teks putih
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}