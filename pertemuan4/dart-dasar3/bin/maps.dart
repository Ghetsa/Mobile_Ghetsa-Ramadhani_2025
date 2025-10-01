void main() {
  // LANGKAH 1:
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  // LANGKAH 2:
  // {} dikenali sebagai map karena memiliki format key: value
  // gifts memiliki key berupa String ('first', 'second', 'fifth').
  // nobleGases memiliki key berupa int (2, 10, 18).

  // LANGKAH 3:
  // Map kosong dengan tipe
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Tambahkan Nama & NIM Tambahkan Anda pada tiap variabel di atas 
  // (gifts, nobleGases, mhs1, dan mhs2). 
  gifts['nama'] = 'Ghetsa Ramadhani';
  gifts['nim'] = '2341720004';

  nobleGases[20] = 'Ghetsa Ramadhani';
  nobleGases[21] = '2341720004';

  mhs1['nama'] = 'Ghetsa Ramadhani';
  mhs1['nim'] = '2341720004';

  mhs2[99] = 'Ghetsa Ramadhani';
  mhs2[100] = '2341720004';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
