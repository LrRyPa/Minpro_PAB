# Mini Project 1 - Pemrograman Aplikasi Bergerak
Nama: Larry Polin Anugrah

NIM: 2409116026

Kelas: A

## Deskripsi Aplikasi Riwayat Service Kendaraan Roda Empat
Aplikasi riwayat service kendaraan roda empat adalah aplikasi mobile flutter yang dirancang untuk membantu pemilik bengkel dalam melakukan pencatatan dan pengelolaan data service kendaraan pelanggan secara digital. Aplikasi ini mencatat data pelanggan untuk menyimpan riwayat service kendaraan seperti:
* nama pelanggan
* nomor telepon
* plat nomor kendaraan
* jenis service
* biaya service

## Fitur Aplikasi
  ### A. Dashboard Bengkel
  <img width="1916" height="908" alt="image" src="https://github.com/user-attachments/assets/8ed1ff91-ec2b-497e-a5d6-4539c9fee122" />

  Dashboard bengkel merupakan halaman utama pada aplikasi Riwayat Service Kendaraan Roda Empat. Halaman ini berfungsi sebagai pusat informasi dan menampilkan ringkasan data umum. Pada bagian header terdapat juga informasi total pemasukan dari seluruh transaksi service yang telah dicatat. Total pemasukan ini dihitung secara otomatis berdasarkan data yang tersimpan di dalam aplikasi.

  Lalu pada bagian kanan bawah terdapat tombol tambah (+) yang berfungsi untuk menambahkan data service baru, yang ketika ditekan akan mengarahkan pengguna ke halaman form input menggunakan navigasi getX

  ### B. Tambah Service (Create)
  <img width="1918" height="908" alt="image" src="https://github.com/user-attachments/assets/35da8758-4bd2-4bb7-9d13-ce69fc7d8627" />

  Pada tambah service, pengguna diminta untuk mengisi beberapa informasi terkait service kendaraan, seperti nama pelanggan, nomor hp, plat nomor kendaraan, jenis service, dan biaya service.

  Setelah seluruh data diisi, pengguna dapat menekan tombol "simpan" untuk menyimpan data tersebut. 

  ### C. Melihat Riwayat Service (Read)
   <img width="1918" height="910" alt="image" src="https://github.com/user-attachments/assets/60959fca-2f87-4ceb-9611-2853518d88f0" />

  Data yang telah disimpan sebelumnya akan langsung ditambahkan ke dalam daftar riwayat service dan ditampilkan pada halaman dashboard. Selain itu, total pemasukan pada Dashboard Bengkel juga akan otomatis diperbarui berdasarkan biaya service yang diinputkan sebelumnya.

  ### D. Edit Riwayat Service (Update)

  Selain melihat data yang telah disimpan, pengguna juga dapat melakukan perubahan (update) pada data riwayat service sebelumnya hanya dengan menekan data yang ingin diperbarui.

  * Sebelum diperbarui
  <img width="1919" height="909" alt="image" src="https://github.com/user-attachments/assets/7b7cbebf-350e-4728-9881-2b3d5b3fae93" />

  Ketika pengguna menekan data tersebut, sistem akan mengarahkan pengguna kembali ke form input dan menampilkan data yang telah disimpan sebelumnya. Setelah melakukan perubahan, pengguna dapat menekan tombol "update" untuk menyimpan perubahan tersebut.

  * Sesudah diperbarui
  <img width="1919" height="909" alt="image" src="https://github.com/user-attachments/assets/7078a141-1e97-45c3-a3eb-673936baae16" />

  Perubahan yang telah disimpan akan ditampilkan pada halaman dashboard. Dalam hal ini perubahan terdapat pada nama pelanggan, yaitu "polin" menjadi "Larry Polin Anugrah".

  ### E. Hapus Riwayat Service (Delete)
  * Sebelum dihapus
  <img width="1918" height="906" alt="image" src="https://github.com/user-attachments/assets/7609fcbc-c8e5-4ac0-8c61-4d5de085d7ec" />

  Setiap data service yang ditampilkan pada halaman dashboard terdapat ikon tempat sampah (delete) yang terletak di bagian kanan data service. Ketika ikon tersebut ditekan, sistem tidak secara langsung menghapus data tetapi menampilkan terlebih dahulu pop up konfirmasi.

  <img width="1918" height="903" alt="image" src="https://github.com/user-attachments/assets/87fe335b-6529-4a66-86f6-bab9cf3dc96b" />

  Setelah pop up konfirmasi muncul, pengguna memiliki dua opsi pilihan, yaitu batal dan hapus.

  Jika pengguna memilih opsi hapus, maka data tersebut akan dihapus dari riwayat service dan tampilan dashboard juga akan langsung diperbarui secara otomatis termasuk total pemasukan akan ikut berubah juga.

 * Sesudah dihapus
<img width="1918" height="905" alt="image" src="https://github.com/user-attachments/assets/e8ddc4af-d9bb-4c16-924b-0fcf3d9fb3fc" />

## Widget
 Aplikasi Riwayat Service Kendaraan Roda Empat menggunakan dua jenis wigdet utama, yaitu StatelessWidget dan StatefulWidget. Selain itu, Aplikasi ini juga menggunakan widget penyusun dan package seperti GetX

 ### 1. StatelessWidget
   Widget ini digunakan pada halaman seperti **Dashboard** dan **Tambah Service** karena halaman tersebut tidak menyimpan state lokal dan tidka menggunakan setState untuk memperbarui tampilan. Selain itu, data yang ditampilkan juga dikelola oleh **GetX**, sehingga perubahan data akan diperbarui secara langsung karena terdapat mekanisme reactive (Obx).

 ### 2. StatefullWidget
 Widget Stateful digunaakn pada halaman **Edit service** karena halaman tersebut membutuhkan lifecyle seperti initState untuk menginisialisasi data yang sudah ada ke dalam TextEditingController sebelum ditampilkan ke pengguna. Jadi halaman ini perlu memuat data lama terlebih dahulu agar pengguna dapat mengedit informasi yang telah tersimpan.

 ### 3. Widget Penyusun
   1. Scaffold: sebagai kerangkat utama setiap halaman, seperti: HomePage, AddServicePage, dan EditServicePage. Widget ini juga menyediakan struktur dasar seperti **body**, **AppBar**, dan **FloatingActionButton**.

   2. AppBar: Menampilkan header atau judul halaman pada halaman AddServicePage dan EditServicePage.

   3. Column: Digunakan untuk menyusun widget secara vertikal (kolom) pada semua halaman. Penggunaan widget ini untuk menyusun header dan daftar service di HomePage serta menyusun form input di halaman tambah dan edit.

   4. Row: Digunakan menyusun widget secara horizontal (baris) pada bagian header HomePage. Penggunaan widget ini memungkinkan ikon mobil dan teks "Dashboard Bengkel" berada dalam satu baris.

   5. Container: Membungkus widget dan memberikan styling pada header dashboard dan card service, sehingga dapat memberikan warna gradient dan border radius.

   6. Text: Digunakan untuk menampilkan teks pada semua halaman. Penggunaan widget ini bisa untuk menampilkan judul, total pemasukan, maupun data riwayat service.

   7. TextField: Digunakan untuk menerima input dari pengguna pada halaman AddServicePage dan EditServicePage, sehingga pengguna dapat menginput nama pelanggan, nomor hp, plat nomor, jenis service, dan biaya service.

   8. TextEditingController: Digunakan untuk mengambil dan mengatur nilai dari TextField pada halaman AddServicePagr dan EditServicePage. Penggunaan ini untuk mengambil data yang telah dimasukkan pengguna dan mengisi data lama dengan data baru saat proses edit

   9. ListView.Builder: Digunakan untuk menampilkan daftar data secara dinamis pada halaman HomePage, sehingga dapat menampilkan seluruh riwayat service dan menyesuaikan jumlah item berdasarkan panjang listnya.

   10. ListTile: Digunakan untuk menampilkan informasi dalam format list pada halaman HomePage. Tampilan yang ditampilkan seperti nama pelanggan sebagai title, plat nomor dan jenis service sebagai subtitle, serta menyediakan area klik untuk beralih ke halaman edit.

   11. Icon: Digunakan untuk menampilkan ikon pada Header dan tombol. Dalam hal ini, ikon yang digunakan seperti ikon mobil pada halaman dashboard, ikon tambah (+), dan ikon hapus.
       
   12. IconButton: Sebuah tombol yang berbasis ikon pada halaman HomePage. Tombol tersebut digunakan untuk menghapus data service melalui ikon hapus (Delete).

   13. ElevatedButton: Sebuah tombol yang digunakan untuk aksi tertentu pada halaman AddServicePage dan EditServicePage. Tombol tersebut digunakan untuk menyimpan data baru (Create) dan memperbarui data (Update).

   14. FloatingActionButton: Sebuah tombol aksi yang mengambang pada halaman HomePage, sehingga dapat  menavigasi pengguna dari halaman HomePage ke halaman AddServicePage.

   15. Expanded: Digunakan untuk mengisi ruang kosong yang tersedia pada halaman HomePage. Widget ini membuat ListView yang memenuhi sisa ruang di bawah header.

   16. Padding: Memberikan jarak di dalam widget di semua halaman form, sehingga dapat membuat tampilan lebih rapi dan tidak terlalu mepet.

   17. SizedBox: Memberikan jarak antar widget terutama pada form input, sehingga memberikan spasi antar TextField dan tombol.

   18. Obx (GetX): Widget reactive dari GetX pada halaman HomePage yang digunakan untuk memperbarui data service secara otomatis satt data berubah dan memperbarui total pemasukan secara realtime

  ### 4. Package GetX
  Penggunaan Packgae GetX pada aplikasi ini sebagai sistem navigasi antar halaman tanpa perlu menggunakan Navigator.Push(). Berikut ini beberapa navigasi GetX yang digunakan dalam aplikasi ini:
  * Get.to(): Digunakan untuk berpindah ke halaman baru seperti dari halaman dashboard ke halaman Tambah Service atau halaman Edit Service.
  * Get.Back(): Digunakan untuk kembali ke halaman sebelumnya seperti ketika pengguna menekan tombol "Simpan" pada halaman Tambah Service dan tombol "Update" pada halaman Edit Service, sehingga dapat menutup halaman tersebut dan kembali ke halaman dashboard.

  


  
  





