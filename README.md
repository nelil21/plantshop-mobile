Tugas Individu 7
Nama: Nelil Amaani
NPM: 2306227835
Kelas: PBP B

1.  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless widget merupakan widget bersifat statis yang tidak akan berubah setelah widget dibangun, biasanya digunakan untuk menamampilkan tampilan statis seperti  teks, ikon, dan gambar. Sedangkan stateful widget, merupakan widget yang dapat berubah keadaan internalnya sepanjang siklus hidupnya, stateful widget biasanya digunakan untuk menangani input pengguna atau data yang dinamis. 


2.  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

a.) Scaffold berfungsi untuk struktur dasar untuk membangun halaman utama aplikasi ini.
b.) Appbar berfungsi untuk menampilkan judul aplikasi "Plantshop" di atas halaman.
c.) Padding berfungsi untuk memberikan jarak di sekitar elemen-elemen ui seperti tombol dan kartu informasi agar tampilanya menjadi lebih rapih.
d.) Column berfungsi untuk menyusun tombol, text sambutan, dan InfoCard secara vertikal di halaman utama.
e.) Row berfungsi menyusun widget secara horizontal. Row berfungsi untuk menyusun NPM, nama, dan kelas agar tersusun satu baris.
f.) ElevatedButton.icon berfugsi untuk menampilkan ikon dan teks secara bersamaan.
g.) Icon berfungsi untuk menampilkan ikon grafis di layar.
h.) Snackbar berfungsi untuk menampilkan pesan sementara di bawah layar.
i.) Card berfungsi untuk menampilkan tampilan berbentuk kotak dengan bayangan yang digunakan untuk menampilkan informasi di dalamnya.
j.) Inkwell berfungsi untuk mendeteksi interaksi pengguuna, seperti ketukan dan menapilkan efek ripple pada klik.
k.) GridView.count berfungsi untuk menampilkan widget dalam bentuk grid dengan jumlah tertentu
l.) Center berfungsi untuk menampilkan widget di tengah layar baik secara horizontal maupun vertikal.
m.) text berfungsi untuk menampilkan text di layar.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi

Fungsi setState() adalah untuk memberitahu framework Flutter bahwa terdapat perubahan data yang memerlukan pembaruan tampilan. Variabel yang terkena dampak adalah variabel yang berada dalam class State dari Stateful Widget.


4. Jelaskan perbedaan antara const dengan final.

Immutabilitas: Koleksi yang dideklarasikan sebagai final dapat diubah, sementara koleksi yang dideklarasikan sebagai const tidak dapat diubah. 
Waktu Penugasan: final dapat diinisiasi pada runtime, sementara const harus diinisiasi pada compile time.
Kinerja: Variabel const lebih efektif karena dievaluasi pada waktu kompilasi


5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

Saya memulai proyek ini dengan membuka terminal, menggunakan perintah flutter create plantshop untuk membuat direktori proyek baru, dan menggunakan flutter run untuk masuk ke dalam direktori tersebut untuk menjalankan aplikasi. Untuk mendukung web, saya mengaktifkan konfigurasi web dengan flutter config --enable-web, dan saya menjalankan aplikasi di Chrome dengan flutter run -d chrome. Setelah itu, saya membuat file menu.dart baru dan memindahkan MyHomePage dari main.dart ke dalamnya. Untuk menghindari kesalahan, saya menghilangkan parameter title dari file, dan saya mengubah MyHomePage menjadi StatelessWidget karena tidak ada state yang perlu diperbarui. Saya menambahkan widget InfoCard untuk menampilkan informasi pengguna seperti NPM, nama, dan kelas. Saya juga menggunakan ElevatedButton.icon untuk membuat tombol "Lihat Daftar Produk", "Tambah Produk", dan "Keluar" dengan ikon dan warna yang berbeda. Dengan menggunakan InkWell dan ScaffoldMessenger, setiap tombol yang dibungkus dalam ItemCard dimaksudkan untuk menampilkan Snackbar ketika ditekan. Dengan GridView.count, tata letak tombol ditata menjadi grid, yang membuat tampilan lebih teratur dan tampak lebih profesional. Untuk nilai tetap, saya menggunakan const, dan untuk variabel seperti npm, name, dan className, yang hanya diinisialisasi sekali namun dapat berubah pada runtime, saya menggunakan final. Terakhir, proyek diuji dengan Flutter Analysis dan Flutter Run untuk memastikan bahwa aplikasi berjalan lancar.

Referensi:
Nextgen Indonesia. (n.d.). Stateful widget dan stateless widget. Retrieved November 5, 2024, from https://nextgen.co.id/stateful-widget-dan-stateless-widget/

The Mobile Coder. (n.d.). Flutter setState: The simplest state management in Flutter. Retrieved November 5, 2024, from https://themobilecoder.com/flutter-setstate-the-simplest-state-management-in-flutter/

User9076803. (2018, May 20). What is the difference between the const and final keywords in Dart? Stack Overflow. Retrieved November 5, 2024, from https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart

