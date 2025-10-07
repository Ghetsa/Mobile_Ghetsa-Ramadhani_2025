void main() {
  // LANGKAH 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
   
  // LANGKAH 2
  // Jawaban: Tidak ada error karena halogens langsung dikenali sebagai Set.

  // LANGKAH 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  // Jawaban: name1 dan name2 merupakan set kosong bertipe String 
  // sehingga hanya akan menampilkan {}. Kemudian name3 bukan 
  // merupakan set melainkan map kosong, jadi akan menampilkan {}.



  // Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut
  // dengan dua fungsi berbeda yaitu .add() dan .addAll().
  // Tambah elemen ke names1 dengan .add()
  names1.add("Ghetsa Ramadhani");
  names1.add("123456789");

  // Tambah elemen ke names2 dengan .addAll()
  names2.addAll({"Ghetsa Ramadhani", "123456789"});

  print(names1);
  print(names2);
  print(names3);
}
