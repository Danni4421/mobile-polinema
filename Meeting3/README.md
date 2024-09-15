## Praktikum Pemrograman Mobile

> Nama : Aji Hamdani Ahmad <br />
> NIM: 2241720155 <br />
> Kelas : TI-3G <br />
> Absen : 04 <br />

### Praktikum 1: Menerapkan Control Flows ("if/else")

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi `main()`

  ```dart
  String test = "test2";
  if (test == "test1") {
  print("Test1");
  } else if (test == "test2") {
  print("Test2");
  } else {
  print("Something else");
  }

  if (test == "test2") print("Test2 again");
  ```

  Hasil Praktikum:

  ```dart
  void main() {
    String test = "test2";

    // If - Else If - Else Statement.
    if (test == "test1") {
        print("Test1");
    } else if (test == "test2") {
        print("Test2");
    } else {
        print("Something else");
    }

    // Inline Conditional.
    if (test == "test2") print("Test2 again");
  }
  ```

- Langkah 2: Silahkan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

  Hasil eksekusi:

  ```bash
  Test2
  Test2 again
  ```

  Program menampilkan hasil seperti diatas yaitu `Test2` dan `Test2 again`. Kode tersebut merupakan if statement dimana untuk kondisi pertama melakukan operasi perbandingan variable `test` dengan string `"test1"`, hasilnya akan salah dan masuk ke kondisi selanjutnya yaitu `test` dengan string `"test2"`. Hasilnya benar dimana variable `test` memiliki nilai yang sama dengan string `"test2"`, maka kemudian akan menampilkan `Test2`. Kemudian untuk hasil `Test2 again` ditampilkan karena memenuhi if statement untuk `test == "test2"` namun untuk if statement ini dituliskan dengan model inline.

- Langkah 3: Tambahkan kode program berikut, Lalu coba eksekusi (Run) kode Anda.

  ```dart
  String test = "true";

  if (test) {
      print("Kebenaran");
  }
  ```

  Hasil Praktikum:

  ```dart
  String test = "true";

  if (test == "true") {
    print("Kebenaran");
  } else {
    print("Kesalahan");
  }
  ```

  Apa yang terjadi? Jika ada error, silahkan perbaiki namun tetap menggunakan if/else.

  Terjadi error berikut :

  <span style="color: red;">
    &#33; Conditions must have a static type of 'bool'.
  </span>

  Error tersebut terjadi karena if statement hanya dapat menerima nilai boolean namun pada variable test berisi nilai berupa String. Untuk solusi yang dapat dilakukan untuk mengatasi permasalahan tersebut dapat dilakukan dengan melakukan perbandingan nilai variable dengan expected output sehingga dapat menghasilkan nilai boolean `true` atau `false`. Selain itu juga bisa menggunakan attribute pada object String itu sendiri seperti misal

  ```dart
  if (test.isNotEmpty) { // use String object attribute
    print("Kebenaran");
  }
  ```

### Praktikum 2: Menerapkan perulangan "while" dan "do-while"

- Langkah 1: Ketik atau salin program berikut ke dalam fungsi `main()`

  ```dart
  while (counter < 33) {
    print(counter);
    counter++;
  }
  ```

  Hasil Praktikum :

  ```dart
  // int counter = 0; => should be declared to counter error

  while (counter < 33) {
    print(counter);
    counter++;
  }
  ```

- Langkah 2: Silahkan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

  Terjadi error pada implementasi looping dengan while tersebut yaitu

    <span style="color: red;">
      Undefined name 'counter'.
    </span>

  Error tersebut terjadi karena variable `counter` belum dideklarasikan sehingga menimbulkan error `Undefined name 'counter'`. Solusi nya dapat melakukan deklarasi untuk variable counter sebagai sebuah integer dengan diinisialisasikan dengan nilai 0

  Setelah deklarasi variable tersebut maka tidak akan terdapat error dan program perulangan dapat dijalankan. Berikut hasil dari perulangan tersebut.

  ```bash
  0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
  ```

- Langkah 3: Tambahkan kode program berikut, Lalu coba eksekusi (Run) kode Anda.

  ```dart
  do {
      print(counter);
      counter++;
  } while (counter < 77);
  ```

  Apa yang terjadi? Jika terjadi error, silahkan perbaiki namun tetap menggunakan do-while

  Tidak terjadi error, perulangan dengan `do-while` berjalan dengan baik dengan hasil seperti berikut :

  ```bash
  33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76
  ```

### Praktikum 3: Menerapkan perulangan "for" dan "break-continue"

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi `main()`

  ```dart
  for (Index = 10; index < 27; index) {
    print(Index);
  }
  ```

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

  Apabila menjalankan perulangan tersebut maka akan terjadi error karena terjadi inconcistency variable dan juga undeclared index variable. Sebagai perbaikan dapat mendeklarasikan dan juga memperbaiki penulisan variable.

  Selain terdapat kesalahan penulisan, kode program tersebut juga terdapat kesalahan lain dimana akan terjadi infinite loop ketika dijalankan. Berikut perbaikan untuk kode program tersebut.

  ```dart
  for (int index = 0; index < 27; index++) {
    print(index)
  }
  ```

- Langkah 3: Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

  ```dart
  If (Index == 21) break;
  Else If (index > 1 || index < 7) continue;
  print(index);
  ```

  Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

  Terdapat error karena kesalahan penulisan, untuk mengatasi error tersebut berikut adalah hasi perbaikan dan penerapan dengan pengkondisian diatas.

  Hasil Praktikum :

  ```dart
  for (int index = 0; index < 27; index++) {
    if (index == 21) break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
  ```

  Dengan kode program tersebut akan menghasilkan hasil sebagai berikut :

  ```bash

  ```

  Kode program tidak menghasilkan output sama sekali karena pada kondisi yang didefinisikan

  ```dart
  if (index == 21) break;
  else if (index > 1 || index < 7) continue;
  ```

  Kondisi tersebut membuat dimana setiap nilai index lebih dari 1 maka akan menjalankan `continue`. Hal ini membuat tidak ada output yang ditampilkan sama sekali karena selalu menjalankan continue.

  Solusi untuk memperbaiki permasalahan tersebut dapat dengan mengganti operator logika yang digunakan menjadi `AND`.

  ```dart
  if (index == 21) break;
  else if (index > 1 && index < 7) continue;
  ```

  Dengan perubahan tersebut maka akan menghasilkan output sebagai berikut :

  ```bash
  10 11 12 13 14 15 16 17 18 19 20
  ```

### Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

   Jawab :

   ```dart
   final String name = "Aji Hamdani Ahmad";
   final String nim = "2241720155";

   void main() {
    for (int i = 1; i <= 201; i++) {
      if (isPrima(i)) {
        print('${name} ${nim}');
      }
    }
   }

   bool isPrima(int n) {
    if (n < 2) {
      return false;
    }

    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        return false;
      }
    }

    return true;
   }

   ```
