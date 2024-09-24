/// STEP 1:

/**
 * Praktikum List
 *
 * Practice to know List data type.
 */

/*
  void main() {
    var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
    print(list.length);
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
  }
*/

/// STEP 2:
/**
 * Result:
 * 
 * 3
 * 2
 * 1
 */

/// STEP 3:
/**
 * Practice
 *
 * Define list with 5 index and have a default value of `null`.
 * But the first and second index should be filled with Name and Student Id.
 */
void main() {
  /*
    final List list = new List.filled(5, null);
    list[0] = "Aji Hamdani Ahmad";
    list[1] = "2241720155";
    print(list); 
  */

  /**
   * As a list doesn't have a generic data type, The list element can be 
   * inserted with null value. But if there is generic data type for List. 
   * It would causing this error.
   * Error: The value `null` can't be assigned to the parameter type `T` because `T` is not nullable.
   * 
   * For solving that error, we can use question symbol to make the list can be nullable.
   */

  // final List<String> list = new List<String>.filled(5, null); -> it should be error if we assign null into generic String

  final List<String?> list = new List<String?>.filled(5, null);
  list[0] = "Aji Hamdani Ahmad";
  list[1] = "2241720155";

  print(list);
}
