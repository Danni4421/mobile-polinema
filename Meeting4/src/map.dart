void main() {
  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golder rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

  /**
   * TASK:
   * 
   * - Add Name and NIM element for each Map.
   * `mhs1`, `mhs2`, `gifts`, and `nobleGases`
   */
  mhs1.addAll({"name": "Aji Hamdani Ahmad", "nim": "2241720155"});
  mhs2.addAll({4: 'Aji Hamdani Ahmad', 6: "2241720155"});
  gifts.addAll({"name": "Aji Hamdani Ahmad", "nim": "2241720155"});
  nobleGases.addAll({4: "Aji Hamdani Ahmad", 6: "2241720155"});

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);

  /**
   * Result:
   * 
   * {name: Aji Hamdani Ahmad, nim: 2241720155}
   * {4: Aji Hamdani Ahmad, 6: 2241720155}
   * {first: partridge, second: turtledoves, fifth: golder rings, name: Aji Hamdani Ahmad, nim: 2241720155}
   * {2: helium, 10: neon, 18: argon, 4: Aji Hamdani Ahmad, 6: 2241720155}
   */
}
