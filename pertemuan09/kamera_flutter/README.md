#09 | Kamera

## Praktikum 1: Mengambil Gambar Menggunakan Kamera
Hasil akhir tampilan kamera berhasil menampilkan preview dan tombol shutter untuk mengambil gambar.

![Hasil Praktikum 1](images/01.png)

## Praktikum 2: Menampilkan Hasil Gambar dan Menambahkan Fitur Kamera Depan
Aplikasi berhasil menampilkan hasil foto yang diambil dan menambahkan fitur untuk mengganti kamera depan dan belakang.

![Hasil Praktikum 2](images/02.png)

---

### Penjelasan

**1. Jelaskan maksud `void async` pada praktikum 1!**  
`void async` digunakan untuk menandai sebuah fungsi agar dapat menjalankan proses secara asynchronous, yaitu tidak harus menunggu satu proses selesai sebelum menjalankan proses lainnya. Dalam konteks ini, fungsi dengan `async` memungkinkan penggunaan `await` agar kamera dapat diinisialisasi dan mengambil gambar tanpa membuat UI aplikasi menjadi hang atau freeze.

**2. Jelaskan fungsi dari anotasi `@immutable` dan `@override`!**  
- **@immutable**  
  Digunakan pada class (biasanya `StatelessWidget`) untuk menandakan bahwa semua properti di dalam class tersebut bersifat tidak dapat diubah (immutable). Artinya, nilai variabelnya tidak boleh dimodifikasi setelah objek dibuat.  

- **@override**  
  Digunakan untuk menandai bahwa sebuah method menimpa (override) method dari superclass-nya. Anotasi ini membantu memastikan bahwa fungsi yang ditulis memang mengubah perilaku bawaan dari class induk, serta membantu deteksi kesalahan pada saat kompilasi.

---

**Link Commit Repository GitHub:**  
[https://github.com/username/flutter_camera_praktikum09](https://github.com/username/flutter_camera_praktikum09)
