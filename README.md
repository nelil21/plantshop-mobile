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
TextFormField untuk "Description": Mengambil input description lengkap dengan validator.

yang tidak digunakan:
Checkbox berfungsi untuk memilih ya atau tidak.
Radio Button: Ini digunakan untuk memilih satu dari banyak opsi.
DropdownButton: Memberikan daftar pilihan dalam format dropdown.
Slider:  untuk mengatur nilai dalam batas tertentu. 
Switch: memungkinkan opsi untuk on atau off.
DataPicker dan TimePicker: memungkinkan pengguna memilih tanggal atau waktu tertentu.

4.  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
 
Untuk menjaga konsistensi tema dalam aplikasi Flutter, ThemeData dapat diterapkan dalam MaterialApp. ThemeData dapat digunakan untuk mengubah warna, font, ukuran teks, dan elemen UI lainnya untuk membuat tampilan aplikasi lebih konsisten.

Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
ya, Untuk memastikan bahwa gaya warna dan elemen UI konsisten di seluruh tampilan, primaryColor dan skema warna ditetapkan di ThemeData.

5.  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dalam aplikasi Flutter yang memiliki banyak halaman dapat dikelola menggunakan Navigator dengan metode seperti push(), pop(), dan pushReplacement().  Untuk navigasi yang terstruktur, dapat digunakan Named Route yang didefinisikan di MaterialApp. Drawer atau Bottom Navigation dapat ditambahkan untuk akses mudah antar halaman.

===================================================
1.  Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Model sangat penting untuk memastikan struktur data JSON yang konsisten, memudahkan pengolahan data, dan memungkinkan validasi otomatis. Tanpa model, pengelolaan data menjadi lebih rentan terhadap kesalahan, terutama jika struktur JSON berubah; namun, model juga mempermudah debugging dan meningkatkan efisiensi pengembangan aplikasi.

2.  Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Mengambil data produk (GET): digunakan untuk mengambil data mood Django dan menampilkannya di aplikasi Flutter. 

Mengirim data pengguna (POST): digunakan untuk mengirimkan data pendaftaran dan login ke Django.

3.  Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.


'CookieRequest' berperan penting dalam pengelolaan autentikasi berbasis sesi pada aplikasi Flutter. Dengan mendistribusikan instance ini ke seluruh komponen aplikasi, status sesi pengguna dapat tetap terjaga secara konsisten, permintaan HTTP yang membutuhkan autentikasi akan selalu menyertakan cookie yang sesuai, dan proses implementasi autentikasi menjadi lebih sederhana dan efisien. Pendekatan ini memastikan bahwa setiap permintaan HTTP terhubung dengan sesi pengguna yang benar tanpa perlu membuat ulang koneksi di berbagai bagian aplikasi.

4.  Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Di Flutter, mekanisme pengiriman data dimulai dengan input pengguna melalui widget seperti TextField. Kemudian, data dikirim ke server Django menggunakan HTTP POST dalam format JSON. Server memproses data, menyimpannya di database, dan mengembalikan respons JSON. Metode fromJson digunakan oleh Flutter untuk menampilkan respons ini kepada pengguna melalui widget seperti FutureBuilder atau ListView. Proses ini memastikan bahwa data terintegrasi secara dinamis antara aplikasi.

5.  Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Registrasi: Flutter mengirimkan data akun baru ke Django, yang memvalidasi dan menyimpan data ke database, lalu mengirimkan status kembali ke Flutter. 

Login: Flutter mengirimkan kredensial ke Django, yang memvalidasi dan membuat sesi autentikasi, lalu mengembalikan cookie sesi ke Flutter. Cookie ini digunakan untuk memastikan status login di semua permintaan berikutnya.

Logout: Flutter meminta Django untuk menghilangkan sesi, Django menghilangkan cookie, dan status aplikasi kembali ke kondisi logout.

6.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

Pertama, saya membuat model di Flutter untuk menampilkan respons JSON dari Django. Kedua, saya menambahkan dependensi http dan provider untuk mengatur permintaan HTTP dan manajemen state. Terakhir, saya mengintegrasikan autentikasi, yang mencakup pendaftaran, log in, dan logout, dengan membuat endpoint di Django dan menghubungkannya ke Flutter menggunakan CookieRequest. Keempat, saya menggunakan FutureBuilder untuk menampilkan data dan menangani respons server untuk membuat antarmuka pengguna dinamis. Terakhir, pengujian dilakukan secara manual untuk memastikan fitur berjalan lancar, dengan debugging untuk memastikan setiap langkah dilakukan dengan benar.