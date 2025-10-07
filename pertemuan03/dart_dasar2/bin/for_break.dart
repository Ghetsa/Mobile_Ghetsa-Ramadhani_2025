void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;             // hentikan loop saat index = 21
    else if (index > 1 && index < 7) continue; // skip jika index antara 2–6

    print(index);
  }
}