void main() {
  /// STEP 1:
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  /// STEP 2:
  /**
   * RESULT: 
   * (first, last, a: 2, b: true)
   */

  /// STEP 3:
  var reversedRecord = reverse((3, 2)); // (2, 3)
  print('Reversed Record: ${reversedRecord}');

  /// STEP 4:
  (String, int) mahasiswa;
  // print(mahasiswa); -> Error: Non-nullable variable must be initialize before it can be used.

  // Solution: Initialize record `mahasiswa` with Name and Student Id
  mahasiswa = ("Aji Hamdani Ahmad", 2241720155);
  print(mahasiswa); // Result: ("Aji Hamdani Ahmad", 2241720155)

  /// STEP 5:
  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print(mahasiswa2.$1); // 'first'
  print(mahasiswa2.a); // 2
  print(mahasiswa2.b); // true
  print(mahasiswa2.$2); // 'last'

  mahasiswa2 =
      (mahasiswa2.$1, a: mahasiswa2.a, b: mahasiswa2.b, "Aji Hamdani Ahmad");

  print(mahasiswa2);
}

(int, int) reverse((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
