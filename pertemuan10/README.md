
**Mata Kuliah:** Pemrograman Mobile  
**Topik:** Dasar State Management 
**Nama:** Ghetsa Ramadhani Riska Arryanti  
**Kelas:** 3D - D4 Teknik Informatika 
**NIM:** 2341720004


# 🧩 Praktikum 1: Dasar State dengan Model-View

## 🧠 Soal dan Penjelasan Langkah-langkah Penting

### Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

**Langkah 4: File `data_layer.dart`**
Pada langkah ini dibuat file `data_layer.dart` berisi:
```dart
export 'plan.dart';
export 'task.dart';
```
**Tujuan:**  
Langkah ini dilakukan untuk **menggabungkan ekspor file model** ke dalam satu file.  
Dengan demikian, di bagian view cukup menuliskan:
```dart
import '../models/data_layer.dart';
```
➡️ Hal ini dilakukan agar proses import menjadi **lebih ringkas, efisien, dan rapi**, terutama ketika jumlah file model semakin banyak.

---

### Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

**Langkah 6: Variabel `plan`**
```dart
Plan plan = const Plan();
```
**Mengapa diperlukan?**  
Variabel `plan` berfungsi sebagai **penyimpanan utama (state)** yang memuat daftar seluruh tugas (`tasks`) dalam aplikasi.  
Setiap perubahan yang dilakukan pengguna (menambah, mengedit, atau menyelesaikan tugas) akan memperbarui nilai `plan` melalui `setState()`.

**Mengapa dibuat konstanta (`const`)?**  
Karena pada awal pembuatan state belum ada data yang berubah, `const` digunakan agar instance awal `Plan` bersifat **immutable** dan dapat dioptimalkan oleh Flutter untuk performa lebih baik.

---

### Lakukan capture hasil dari Langkah 9, kemudian jelaskan apa yang telah Anda buat!

**Langkah 9: Hasil (List Tugas Dinamis)**

#### 📸 Tampilan Aplikasi
> ![hasil praktikum](images/praktikum1.png)

#### 💬 Penjelasan
Pada langkah ini ditambahkan tiga method utama:
1. `_buildAddTaskButton()` → tombol `+` untuk menambah tugas baru  
2. `_buildList()` → menampilkan daftar tugas dengan `ListView.builder()`  
3. `_buildTaskTile()` → menampilkan setiap tugas dalam bentuk `Checkbox` dan `TextFormField`  

Ketika tombol `+` ditekan, `plan.tasks` diperbarui dengan `setState()`.  
Flutter secara otomatis merender ulang tampilan sehingga daftar tugas baru langsung muncul tanpa memuat ulang seluruh aplikasi.

---

### Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

**Langkah 11 dan 13: Lifecycle Method (`initState` dan `dispose`)**

#### `initState()`
Digunakan untuk **inisialisasi awal** widget, termasuk:
- Membuat objek `ScrollController`
- Menambahkan listener untuk **menghapus fokus dari TextField** saat pengguna melakukan scroll

```dart
@override
void initState() {
  super.initState();
  scrollController = ScrollController()
    ..addListener(() {
      FocusScope.of(context).requestFocus(FocusNode());
    });
}
```

#### `dispose()`
Digunakan untuk **membersihkan resource** yang tidak lagi dipakai ketika widget dihapus dari tree, agar tidak terjadi kebocoran memori.

```dart
@override
void dispose() {
  scrollController.dispose();
  super.dispose();
}
```

➡️ Kedua method ini termasuk bagian dari **lifecycle StatefulWidget**, berfungsi memastikan widget bekerja efisien dan bebas error dalam jangka panjang.

---

# 🧩 Praktikum 2: InheritedWidget
## 🧠 Soal dan Penjelasan Langkah-langkah Penting
### Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

**Langkah 1: InheritedWidget / InheritedNotifier**

`InheritedWidget` adalah widget dasar di Flutter yang memungkinkan data dibagikan ke seluruh subtree widget tanpa harus diteruskan secara manual melalui parameter constructor.
Namun pada praktikum ini digunakan InheritedNotifier, yaitu turunan dari `InheritedWidget` yang bekerja sama dengan ChangeNotifier.

**Alasannya:**

* `InheritedNotifier` otomatis mendengarkan perubahan data dari model (melalui ChangeNotifier)
* Ketika model berubah, widget yang berlangganan otomatis ter-rebuild
* Membuat kode lebih bersih dan efisien dibandingkan setState() manual di banyak tempat

### Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

**Langkah 3: Method ini umumnya berupa getter atau method statis yang mengakses InheritedWidget dari context, seperti:**

```dart
static PlanProvider of(BuildContext context) {
  final PlanProvider? result =
      context.dependOnInheritedWidgetOfExactType<PlanProvider>();
  assert(result != null, 'No PlanProvider found in context');
  return result!;
}
```


**Tujuannya:**

* Memberikan cara mudah untuk mengakses state global (PlanProvider) dari mana saja di dalam tree widget.
* Dengan cara ini, widget lain dapat memanggil PlanProvider.of(context) untuk mendapatkan atau memperbarui data tanpa harus mengoper variabel antar halaman.

### Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
#### 📸 Tampilan Aplikasi:
> ![hasil praktikum 2](images/praktikum2-1.png)
> ![hasil praktikum 2](images/praktikum2-2.png)

**💬 Penjelasan**
Pada langkah ini, aplikasi Master Plan telah dimodifikasi menggunakan InheritedNotifier.
Ketika pengguna menambah atau mengubah tugas:
* Data otomatis diperbarui pada model (Plan)
* Widget yang menampilkan daftar tugas ikut ter-update tanpa setState() manual
* Perubahan status checkbox dan teks langsung terlihat real-time

Dengan pendekatan ini, aplikasi menjadi **lebih efisien, scalable, dan mudah dikembangkan**.

---