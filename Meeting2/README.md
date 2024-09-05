## Praktikum Pemrograman Mobile

> Nama : Aji Hamdani Ahmad <br />
> NIM: 2241720155 <br />
> Kelas : TI-3G <br />
> Absen : 04 <br />

### Soal 1

Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

```dart

void main() {
    for (int i = 0; i < 10; i ++) {
        print('hello ${i + 2}');
    }
}
```

Output yang diminta:

```bash
Nama saya adalah Fulan, sekarang berumur 18
Nama saya adalah Fulan, sekarang berumur 17
Nama saya adalah Fulan, sekarang berumur 16
Nama saya adalah Fulan, sekarang berumur 15
Nama saya adalah Fulan, sekarang berumur 14
Nama saya adalah Fulan, sekarang berumur 13
Nama saya adalah Fulan, sekarang berumur 12
Nama saya adalah Fulan, sekarang berumur 11
Nama saya adalah Fulan, sekarang berumur 10
Nama saya adalah Fulan, sekarang berumur 9
```

`Jawab :`

```dart
void main () {
    const NAME = "Aji Hamdani Ahmad";

    for (int i = 18; i >= 9; i--) {
        print('Nama saya adalah ${NAME}, sekarang berumur ${i}');
    }
}
```

Output jawaban :

```bash
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 18
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 17
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 16
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 15
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 14
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 13
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 12
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 11
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 10
Nama saya adalah Aji Hamdani Ahmad, sekarang berumur 9
```

### Soal 2

Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter?

`Jawab :`
Karena dart menjadi bahasa utama yang digunakan dalam framework Flutter. Sehingga dengan memahami bahasa pemrograman dart akan dapat memudahkan dalam proses pengembangan menggunakan framework Flutter nantinya.

### Soal 3

Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

`Jawab :`

Terdapat beberapa poin penting dari materi codelab pertemuan 2 ini yang dapat membantu dalam proses pengembangan aplikasi mobile menggunakan Flutter nantinya. Beberapa poin tersebut diantaranya yaitu :

- Bahasa pemrograman dart memiliki keunggulan seperti :
  - Sudah tersedia `Productive tooling` sehingga dapat memudahkan dalam proses pengembangan dengan menggunakan dart.
  - Terdapat fitur `Garbage collection` yang dapat digunakan untuk memory management.
  - Menyediakan `Type annotations` untuk dapat mengontrol data pada aplikasi.
  - Memiliki fitur type safe dengan `Static Type`. Fitur ini dapat membantu dalam analisis types saat runtime. Dengan itu dapat membantu menemukan bug selama kompilasi kode.
  - Dart dapat dikompilasi secara native baik itu menjadi Web (diterjemahkan ke JavaScript) ataupun ke ARM dan x86.
  - Mendukung paradigma pemrograman berbasis `Object Oriented` yang dapat menambahkan fleksibilitas dan ketangguhan.
- Memiliki beberapa model kompilasi yang dapat membantu pada proses development diantaranya seperti :
  - Kompilasi `Just-In-Time` atau `JIT`, yaitu salah satu teknik dimana kompiler menerjemahkan source code selama eksekusi program.
  - Kompilasi `Ahead-Of-Time` atau `AOT`, dimana untuk kompiler ini akan menerjemahkan source code sebelum kode dieksekusi.
- Struktur pada bahasa dart secara umum seperti bahasa C atau JavaScript. Dart dirancang untuk `object-oriented`. Karena dart dirancang secara object-oriented, operator pada dart seperti `x == y` itu sama hal nya seperti memanggil method `==` dengan parameter `y` untuk melakukan operasi perbandingan.
- Memiliki operator yang sama seperti banyak bahasa pemrograman lainnya seperti:
  - `+, -, *, /` yang merupakan operator umum untuk operasi dasar yaitu penambahan, pengurangan, perkalian, dan pembagian.
  - `~/` digunakan untuk pembagian bilangan bulat. Karena ketika menggunakan operator pembagi `/` akan mengembalikan nilai double tidak berupa integer (bilangan bulat).
  - `%` untuk operasi modulus.
  - `~<expression>` untuk operator negasi dimana akan membalikkan nilai suatu nilai
  - Operator increment dapat dilakukan dengan `++var` atau `var++`, Atau untuk decrement dapat dilakukan dengan `--var` atau `var--`.
  - Terdapat juga logical operator seperti negasi dengan `!`, atau logika OR `||`, dan juga `&&` AND.
