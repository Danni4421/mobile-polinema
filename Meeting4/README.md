## Praktikum Pemrograman Mobile

> Nama : Aji Hamdani Ahmad <br />
> NIM: 2241720155 <br />
> Kelas : TI-3G <br />
> Absen : 04 <br />

### Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

### Jawaban Praktikum

#### Praktikum 1: Eksperimen Tipe Data List
- Langkah 1: Ketik atau salin kode program berikut ke dalam void main().
    ```dart
    var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
    print(list.length);
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
    ```

    Hasil Percobaan: 
    ```dart
    void() {
        var list = [1, 2, 3];
        assert(list.length == 3);
        assert(list[1] == 2);
        print(list.length);
        print(list[1]);

        list[1] = 1;
        assert(list[1] == 1);
        print(list[1]);
    }
    ```
- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ```bash
    3
    2
    1
    ```

    Tidak terjadi error dan menampilkan berurutan 3 2 1.
    Untuk `3` ini dari `list.length` atau panjang dari sebuah list. Untuk `2` merupakan hasil dari `list[1` atau element index ke-1 dari list. dan Untuk `1` merupakan hasil dari `list[1]` yang sebelumnya telah diinisialisasi menjadi 1 sehingga hasilnya 1.

- Langkah 3: Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ```dart
    final List list = new List.filled(5, null);
    list[0] = "Aji Hamdani Ahmad";
    list[1] = "2241720155";
    ```

    ```dart
    final List<String?> list = new List<String?>.filled(5, null);
    list[0] = "Aji Hamdani Ahmad";
    list[1] = "2241720155";
    ```


#### Praktikum 2: Eksperimen Tipe Data Set
- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().
    ```dart
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);
    ```

    Hasil Percobaan: 
    ```dart
    var halogens = {
        'fluorine', 
        'chlorine', 
        'bromine', 
        'iodine', 
        'astatine'
    };
    print(halogens);
    ```

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ```
    {fluorine, chlorine, bromine, iodine, astatine}
    ```

    Kode berhasil menampilkan data yang telah dibuat menggunakan tipe data Set.

- Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
    ```dart
    var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.
    var names3 = {}; // Creates a map, not a set.

    print(names1);
    print(names2);
    print(names3);
    ```

    Hasil Percobaan: 

    ```dart
    var names1 = <String>{};
    Set<String> names2 = {};
    // var names3 = {}; -> This is a map, not a set

    print(names1);
    print(names2);

    names1.add("Aji Hamdani Ahmad");
    names1.add("2241720155");
    names2.addAll({"Aji Hamdani Ahmad", "2241720155"});

    print(names1);
    print(names2);
    ```

    Output: 

    ```
    {}
    {}
    {Aji Hamdani Ahmad, 2241720155}
    {Aji Hamdani Ahmad, 2241720155}
    ```

#### Praktikum 3: Eksperimen Tipe Data Maps

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().
    ```dart
    var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
    };

    var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    };

    print(gifts);
    print(nobleGases);
    ```

    Hasil Percobaan: 
    ```dart
    var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

    var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

    print(gifts);
    print(nobleGases);
    ```

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
    ```
    {first: partridge, second: turtledoves, fifth: 1}
    {2: helium, 10: neon, 18: 2}
    ```

- Langkah 3: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
    ```dart
    var mhs1 = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

    var mhs2 = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';
    ```

    Hasil Percobaan: 
    ```dart
    var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

    var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

    print(gifts);
    print(nobleGases);

    var mhs1 = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

    var mhs2 = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';
    ```

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ```
    Tidak terjadi error dan berhasil menampilkan output variable map. 
    ```

    Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

    ```dart
    mhs1.addAll({"name": "Aji Hamdani Ahmad", "nim": "2241720155"});
    mhs2.addAll({4: 'Aji Hamdani Ahmad', 6: "2241720155"});
    gifts.addAll({"name": "Aji Hamdani Ahmad", "nim": "2241720155"});
    nobleGases.addAll({4: "Aji Hamdani Ahmad", 6: "2241720155"});

    print(mhs1);
    print(mhs2);
    print(gifts);
    print(nobleGases);
    ```
    Output:
    ```
    {name: Aji Hamdani Ahmad, nim: 2241720155}
    {4: Aji Hamdani Ahmad, 6: 2241720155}
    {first: partridge, second: turtledoves, fifth: golder rings, name: Aji Hamdani Ahmad, nim: 2241720155}
    {2: helium, 10: neon, 18: argon, 4: Aji Hamdani Ahmad, 6: 2241720155}
    ```

#### Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operations

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ```dart
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    print(list1);
    print(list2);
    print(list2.length);
    ```

    Hasil Percobaan: 
    ```dart
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    print(list1);
    print(list2);
    print(list2.length);
    ```

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ```
    [1, 2, 3]
    [0, 1, 2, 3]
    4
    ```  
- Langkah 3: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3.length);
    ```

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

    ```dart
    list3 = [...list3, '2241720155'];
    ```

    Dengan kode tersebut akan melakukan spread element list sebelumnya dengan element baru yaitu `NIM`

- Langkah 4: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
    ```

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

    ```dart
    /**
    * `promoActive` Variable set into `true`
    */
    var promoActive = true;
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
    ```

    Output: 

    ```
    [Home, Furniture, Plants, Outlet]
    ```

    ```dart
    /**
    * `promoActive` Variable set into `false`
    */
    var promoActive = true;
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
    ```

    Output: 

    ```
    [Home, Furniture, Plants]
    ```

- Langkah 5: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
    print(nav2);
    ```

    ```dart
    // var login = "Manager"; -> should be declared
    var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
    print(nav2);
    ```
    
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

    ```
    Akan terjadi error karena variable login belum dideklarasikan, untuk mengatasinya dapat dengan melakukan deklarasi variable login dengan tipe data string yang berisi role dari user. Dengan itu maka akan menghasilkan output seperti dibawah
    ```

    Output: 

    ```
    [Home, Furniture, Plants, Inventory]
    ```

- Langkah 6: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    var listOfInts = [1, 2, 3];
    var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
    assert(listOfStrings[1] == '#1');
    print(listOfStrings);
    ```

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

    ```
    [#0, #1, #2, #3]
    ```

    Berdasarkan output yang dihasilkan, Collection For berfungsi untuk menyisipkan elemen-elemen ke dalam sebuah collection seperti `List`, `Map`, ataupun `Set` secara dinamis menggunakan `for` loop

#### Praktikum 5: Eksperimen Tipe Data Record
- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ```dart
    var record = ('first', a: 2, b: true, 'last');
    print(record)
    ```

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    **Output:**
    ```
    (first, last, a: 2, b: true)
    ```
    Pada output menghasilkan `(first, last, a: 2, b: true)` dimana merupakan data yang telah dimasukkan dalam record.

- Langkah 3: Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

    ```dart
    (int, int) tukar((int, int) record) {
        var (a, b) = record;
        return (b, a);
    }
    ```

    **Hasil Praktikum:**
    ```dart
    (int, int) reverse((int, int) record) {
        var (a, b) = record;
        return (b, a);
    }
    ```

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

    **Implementasi:**
    ```dart
    var reversedRecord = reverse((3, 2)); // (2, 3)
    print('Reversed Record: ${reversedRecord}');
    ```

    Pada fungsi `reverse` terdapat implementasi record yang digunakan sebagai sebuah parameter dan juga return value, dimana didalam fungsi melakukan destructuring record kemudian mengembalikan record yang sudah dalam kondisi reverse.

- Langkah 4: Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
    ```dart
    // Record type annotation in a variable declaration:
    (String, int) mahasiswa;
    print(mahasiswa);
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

    Terjadi error dimana Non-nullable variable seharusnya diinisialisasi terlebih dahulu sebelum digunakan. Untuk inisialisasi field nama dan NIM pada variable record dapat dilakukan seperti berikut:

    ```dart
    (String, int) mahasiswa;
    mahasiswa = ("Aji Hamdani Ahmad", 2241720155);
    print(mahasiswa);
    ```

    **Output:**

    ```
    (Aji Hamdani Ahmad, 2241720155)
    ```

- Langkah 5: Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

    ```dart
    var mahasiswa2 = ('first', a: 2, b: true, 'last');

    print(mahasiswa2.$1); // Prints 'first'
    print(mahasiswa2.a); // Prints 2
    print(mahasiswa2.b); // Prints true
    print(mahasiswa2.$2); // Prints 'last'
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

    **Output:**
    ```
    (first, last, a: 2, b: true)
    ```

    Kode program akan menampilkan hasil berupa `first`, `last`, `a: 2`, `b: true`.

    Untuk mengganti salah satu isi record dapat dilakukan dengan melakukan redeclare variable tersebut dengan record baru. Karena record bersifat immutable yang berarti tidak bisa diubah maka solusi yang tepat yaitu dengan redeclare ulang record tersebut.

    ```dart
    mahasiswa2 =
      (mahasiswa2.$1, a: mahasiswa2.a, b: mahasiswa2.b, "Aji Hamdani Ahmad");

    print(mahasiswa2);
    ```

    **Output:**
    ```
    (first, Aji Hamdani Ahmad, a: 2, b: true)
    ```

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

    **Jawab:**

    Function pada bahasa dart ataupun pada bahasa pemrograman lainnya memiliki fungsi yang sama, dimana merupakan sekumpulan sebuah perintah kode yang dapat dipanggil berkali-kali dalam program.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

    **Jawab:**
    
    Function dapat menerima baik itu Primitif data type atau juga Non-Primitive data type seperti `int`, `string`, `List`, `Record` ataupun juga menerima function lain sebagai sebuah parameter.

    - Contoh menerima Primitive data type
        ```dart
        int sum(int a, int b) {
            return a + b;
        }
        ```
    - Contoh menerima Non-Primitive data type
        ```dart
        class Vehicle {
            void service() {
                // service procedure
            };
        }

        void serviceVehicle(Vehicle vehicle) {
            // service procedure in workshop
            vehicle.service();
        }
        ```
    
    - Contoh menerima function lain 
        ```dart
        Vehicle drop() {
            return new Vehicle();
        }

        void serviceVehicle(Vehicle Function() dropVehicle) {
            Vehicle vehicle = dropVehicle()
            vehicle.service();
        }

        class Vehicle {
            void service() {
                // service procedure
            }
        }
        ```

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

    **Jawab:**

    Function sebagai first-class object memiliki arti bahwa sebuah fungsi dapat diperlakukan sebagai layaknya sebuah object atau nilai lainnya. Semisal sebuah fungsi dapat disimpan dalam variable, dapat dikirim sebagai argumen ke fungsi lain, dan lain sebagainya.

    Sebagai contoh: 
    ```dart
    void getName(String name) {
        print(name);
    }

    void main() {
        var printName = getName; // Sebuah fungsi dapat disimpan pada variable.

        printName("Aji Hamdani Ahmad"); // Output: Aji Hamdani Ahmad
    }
    ```

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

    **Jawab:**

    Anonymous function merupakan fungsi yang tidak memiliki nama dan biasanya hanya didefinisikan untuk digunakan sekali, dan tidak untuk dipanggil berkali kali.

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

    **Jawab:**
    
    **Lexical Scope** 
    
    Sebuah rule yang dimana sebuah variable dalam function hanya dapat diakses oleh kode di dalam function tersebut saja.

    **Lexical Closures**

    Fungsi yang bisa mengingat variable variable dari lingkup tempat fungsi tersebut dibuat.


7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

    **Jawab:**

    Untuk membuat sebuah fungsi yang mengembalikan multiple values tidak bisa secara langsung seperti pada `Python` atau `Go`. Tetapi untuk mengembalikan multiple values dapat dengan menggunakan bantuan List, Record atau Map.

    ```dart
    // with record
    (String, String) getName () {
        return ("Aji Hamdani", "Ahmad");
    }

    void main() {
        var (firstname, lastname) = getName(); // (Aji Hamdani, Ahmad)
    }
    ```

    ```dart
    // with list
    List<String> getName () {
        return ["Aji Hamdani", "Ahmad"];
    }

    void main() {
        var [firstname, lastname] = getName(); // (Aji Hamdani, Ahmad)
    }
    ```