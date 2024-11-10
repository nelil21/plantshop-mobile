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

"=========================================================================================="
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Kegunaan const di Flutter untuk membuat mendeklarasikan nilai konstan pada saat kompilasi. Ini artinya widget atau objek yang dideklarasikan dengan const akan dibut sekali saja dan bersifat immutable.

keuntungan ketika menggunakan const pada kode flutter
a.) optimasi performa
Karena objek const dianggap immutable, Flutter menghindari proses pembuatan kembali pada objek tersebut. Dalam widget tree, jika sebuah widget dideklarasikan dengan const, Flutter mengetahui bahwa widget tersebut tidak perlu di-render ulang. Ini mengurangi beban render dan mempercepat kinerja aplikasi.
b.) menghemat memori
Objek yang dideklarasikan dengan const hanya dibuat satu kali di memori. Ketika widget atau objek yang sama digunakan berulang kali, Flutter tidak perlu mengalokasikan memori setiap kali objek itu dipakai.Sebaliknya, Flutter akan menggunakan instance yang sama, yang secara signifikan mengurangi jumlah memori yang digunakan.
c. optimasi waktu kompilasi
Dengan menentukan dan mengoptimalkan objek const pada saat kompilasi, bukan saat runtime, Flutter dapat mendeteksi dan memproses objek const lebih awal, yang mengurangi waktu komputasi yang diperlukan selama runtime dan membuat aplikasi lebih responsif.

Kapan sebaiknya kita menggunakan const
1.)widget statis, contohnya pada teks, ikon, dan dekorasi visual yang statis.
2.)Struktur data bersifat tetap, seperti daftar atau set.
3.) Menghidari rebuild yang tidak perlu
4.) untuk nilai-nilai onstan seperti ukuran font atau warna-warna tertentu.
5.) konstanta global atau konstanta dalam fungsi

Kapan sebaiknya kita tidak menggunakan const
1.) widget atau data yang bersifat dinamis
2.) widget atau object yang ditentukan secara random atau didapatkan secara asynchronous
3.) State yang bisa berubah dalam widget
4.) jika nilai di perlukan pada saat runtime

2.  Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah dua widget layout dasar yang sangat penting dalam Flutter untuk mengatur tata letak elemen-elemen UI.

berikut perbandinganya:
1.) column
arah susunan: vertikal
kegunaan:berguna untuk menumpuk elemen di atas satu sama lain, seperti pada tampilan daftar, formulir input, atau layout yang membutuhkan banyak komponen bertumpuk.
properti utama
a.) mainAxisAlignment: mengatur jarak antar elemen dengan arah vertikal
b.) crossAxisAlignment: mengatur penyelarasan horizontal elemen dalam 
column
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
2. Row
arah susunan: horizontal
kegunaan :digunakan untuk menyatukan elemen dalam satu baris, seperti menggabungkan ikon dengan teks atau menempatkan tombol secara horizontal
properti utama:
a.) mainAxisAlignment: mengatur jarak antar elemen dengan arah horizontal
b.) crossAxisAlignment: mengatur penyelarasan vertikal elemen dalam row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
  ],
)

3.  Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

input yang digunakan:
TextFormField untuk "Name": Mengambil input nama produk dengan validator agar tidak kosong.
TextFormField untuk "Amount": Mengambil input amount dan harus berupa int.
TextFormField untuk "description": Mengambil input description lengkap dengan validator.

yang tidak digunakan:
Checkbox: untuk pilihan antara ya atau tidak.
Radio Button: Digunakan untuk memilih satu opsi dari beberapa pilihan.
DropdownButton: Menyediakan daftar pilihan dalam format dropdown.
Slider: Mengatur nilai di dalam rentang tertentu.
Switch: Menyediakan opsi hidup/mati untuk suatu pengaturan.
DatePicker dan TimePicker: Memungkinkan pengguna memilih tanggal atau waktu tertentu.

4.  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
 
Untuk menjaga konsistensi tema dalam aplikasi Flutter, ThemeData dapat diterapkan dalam MaterialApp. ThemeData memungkinkan pengaturan warna, font, ukuran teks, serta elemen UI lainnya sehingga tampilan aplikasi menjadi lebih seragam.

Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
ya, Untuk memastikan bahwa gaya warna dan elemen UI konsisten di seluruh tampilan, primaryColor dan skema warna ditetapkan di ThemeData.

5.  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dalam aplikasi Flutter yang memiliki banyak halaman dapat dikelola menggunakan Navigator dengan metode seperti push(), pop(), dan pushReplacement().  Untuk navigasi yang terstruktur, dapat digunakan Named Route yang didefinisikan di MaterialApp. Drawer atau Bottom Navigation dapat ditambahkan untuk akses mudah antar halaman.


