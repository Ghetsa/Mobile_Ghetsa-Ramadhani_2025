void main() {
  // LANGKAH 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  // print(list1);
  print(list); // Ubah ke list agar tidak error
  print(list2);
  print(list2.length);

  // LANGKAH 2:
  // Terjadi error pada print(list1);
  // karena list1 belum didefinisikan.

  // LANGKAH 3:
  // list1 = [1, 2, null];
  var list1 = [1, 2, null]; // Tambahkan var agar tidak error
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators
  var nim = ['220601234'];
  var listNIM = [0, ...nim];
  print(listNIM);

  // LANGKAH 4:
  // Jika terjadi error, silakan perbaiki.
  // Tunjukkan hasilnya jika variabel promoActive ketika true dan false.
  bool promoActive = true;

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  promoActive = false;
  var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav1);

  // LANGKAH 5:
  var login = 'Manager';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(nav2);

  login = 'Admin';
  var nav3 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
  ];
  print(nav3);

  // LANGKAH 6:
  var listOfInts = [1, 2, 3]; // List angka [1,2,3]
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // List string, mulai '#0' lalu loop isi listOfInts jadi '#1','#2','#3'

  assert(listOfStrings[1] == '#1'); // Pastikan index ke-1 bernilai '#1'
  print(listOfStrings); // Cetak hasil: [#0, #1, #2, #3]
}
