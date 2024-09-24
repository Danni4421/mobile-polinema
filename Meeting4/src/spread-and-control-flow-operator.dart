void main() {
  /// STEP 1:
  /**
   * Spreading a list to another list
   */
  var list1 = <int?>[1, 2, 3];
  var list2 = [0, ...list1];

  print(list1); // [1, 2, 3]
  print(list2); // [0, 1, 2, 3]
  print(list2.length); // 4

  /// STEP 2:
  /**
   * Result:
   * 
   * [1, 2, 3]
   * [0, 1, 2, 3]
   * 4
   */

  /// STEP 3:
  list1 = [1, 2, null];
  print(list1);

  /**
   * ERROR: 
   * 
   * Cannot assign null to non-nullable list.
   */

  /**
   * Solution:
   * 
   * - Change the first initialization value to be nullable List of integer
   * - Redefine list data type into List<int?> to make the list nullable
   * 
   * e.g: Change the first initialization value to be nullable List of integer
   * -------------------------------------------------------------------------
   * var nullableList = <int?>[1, 2, 3];
   * var anotherNullableList = new List<int?>.of([0, ...?nullableList]);
   * 
   * e.g: Redefine list data type into List<int?> to make the list nullable
   * ----------------------------------------------------------------------
   * List<int?> nullableList = new List<int?>.of([1, 2, 3, null]);
   * var spreadedFromList1 = [0, ...nullableList];
   */

  var list3 = [
    0,
    ...?list1 // should be just ...list1
  ]; // The null-aware operator `?` is unnecessary and should not be included

  print(list3.length); // Result: 4

  /// STEP 4:
  var promoActive = true; // Needed when declaring nav variable.
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  /// STEP 5:
  var login = 'Manager'; // Needed when declaring nav2 variable.
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  /// STEP 6:
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
