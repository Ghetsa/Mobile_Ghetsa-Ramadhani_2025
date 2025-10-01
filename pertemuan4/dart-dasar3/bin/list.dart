void main() {
  // LANGKAH 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // LANGKAH 2
  // Jawaban: list[1,2,3] memiliki panjang 3 sehingga menampilkan 3. 
  // Kemudian elemen ke-1 dari list bernilai 2 dan di-print. 
  // Dan kemudian elemen ke-1 diubah menjadi 1 dan ditampilkan. 
  // Sehingga menampilkan 3 2 1.

  // LANGKAH 3 
  // Ubah kode pada langkah 1 menjadi variabel final 
  // yang mempunyai index = 5 dengan default value = null. 
  // Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. 
  final List<dynamic> list = List.filled(5, null);

  list[1] = "Ghetsa Ramadhani Riska Arryanti";
  list[2] = "2341720004";

  print(list);
}
