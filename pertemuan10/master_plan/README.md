# Praktikum 1 Flutter – Dasar State dengan Model-View

## Deskripsi

Praktikum ini membahas konsep dasar *state management* dalam Flutter dengan pola **Model-View**, di mana logika data (Model) dipisahkan dari tampilan (View).  
Aplikasi yang dibuat berupa daftar rencana (*Master Plan App*) dengan fitur menambah, menampilkan, dan memperbarui status tugas menggunakan konsep *stateful widget*.

---

## Fitur

- Menampilkan daftar rencana kegiatan.
- Menambah tugas baru ke dalam daftar.
- Mengubah status tugas menjadi selesai/belum selesai.
- Menggunakan konsep Model-View agar kode lebih terstruktur dan mudah dipelihara.

---

## Hasil Akhir

### 🎞️ Tampilan Aplikasi (GIF)
![Hasil Praktikum](../images/praktikum1.png)

---

## Penjelasan Pertanyaan

### 🧩 1. Maksud dari Langkah 4
Pada langkah 4 dilakukan **pembuatan class Model (`Plan`)** yang merepresentasikan data atau struktur logika dari satu rencana/tugas.

Contoh:
```dart
class Plan {
  final String name;
  final List<Task> tasks = [];

  Plan(this.name);
}
```

Langkah ini dilakukan agar data dan logika aplikasi **dipisahkan dari tampilan**, sehingga kode menjadi lebih mudah dikelola, dapat diuji, dan tidak bergantung langsung pada widget.

---

### 📦 2. Alasan Adanya Variabel `plan` di Langkah 6
Variabel `plan` berfungsi untuk **menyimpan satu instance objek Plan** yang sedang digunakan oleh halaman (View).  
Dengan adanya variabel ini, widget dapat menampilkan dan memanipulasi data dari model tersebut secara langsung.

Variabel dibuat dengan kata kunci `const` karena:
- Nilai awal dari `plan` bersifat tetap (immutable).
- Dengan `const`, Flutter dapat mengoptimalkan performa karena widget tidak akan membangun ulang data statis setiap kali *hot reload*.

Contoh:
```dart
const plan = Plan('Master Plan');
```

---

### 🎬 3. Hasil Langkah 9 (Capture GIF)
Pada langkah ini, aplikasi sudah bisa menampilkan daftar rencana serta memungkinkan pengguna menandai tugas yang sudah selesai atau menambah tugas baru.

Secara garis besar:
- Widget menampilkan daftar dari `plan.tasks`.
- Pengguna dapat menambahkan data baru menggunakan form sederhana.
- Status tugas bisa diubah dengan menekan *checkbox*.

GIF hasil langkah ini menunjukkan perubahan *state* secara langsung di layar tanpa perlu me-*restart* aplikasi.

---

### 🔄 4. Kegunaan Method pada Langkah 11 dan 13 (Lifecycle State)
#### Langkah 11 – `initState()`
Digunakan untuk **inisialisasi awal state** sebelum widget ditampilkan di layar.  
Method ini hanya dipanggil sekali selama siklus hidup widget.  
Contohnya digunakan untuk memuat data awal seperti daftar tugas.

#### Langkah 13 – `dispose()`
Digunakan untuk **membersihkan resource** ketika widget dihapus dari tree Flutter, seperti menutup *controller*, *listener*, atau stream.  
Ini penting agar aplikasi tidak mengalami kebocoran memori (*memory leak*).

---

## Kesimpulan

Dari praktikum ini, dapat dipahami bahwa:
- Flutter menggunakan konsep *stateful widget* untuk membuat tampilan dinamis.
- Pemisahan antara Model dan View membuat struktur kode lebih rapi.
- Penggunaan `initState()` dan `dispose()` membantu mengatur *lifecycle* widget dengan baik.
- `const` digunakan untuk menjaga efisiensi dan konsistensi nilai yang tidak berubah.

---

## Identitas

**Nama:** Ghetsa Ramadhani Riska Arryanti  
**NIM:** 2341720004  
**Kelas:** TI-2A  

---
