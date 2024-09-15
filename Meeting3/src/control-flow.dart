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

  // Verify variable test is defined and initialized.
  test = "true";

  if (test == "true") {
    print("Kebenaran");
  } else {
    print("Kesalahan");
  }
}
