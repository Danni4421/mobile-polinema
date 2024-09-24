void main() {
  /// STEP 1:
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  print(halogens);

  /// STEP 2:
  /**
   * Result: 
   * 
   * {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'}
   */

  /// STEP 3:
  var names1 = <String>{};
  Set<String> names2 = {};
  // var names3 = {}; -> this is a map, not a set

  print(names1);
  print(names2);

  /**
   * Result before add data:
   * {}
   * {}
   */

  names1.add("Aji Hamdani Ahmad");
  names1.add("2241720155");
  names2.addAll({"Aji Hamdani Ahmad", "2241720155"});

  print(names1);
  print(names2);

  /**
   * Result after add data:
   * 
   * {Aji Hamdani Ahmad, 2241720155}
   * {Aji Hamdani Ahmad, 2241720155}
   */
}
