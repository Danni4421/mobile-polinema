void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21)
      break;

    // else if (index > 1 || index < 7) continue; -> logical operator OR cannot be used here

    else if (index > 1 && index < 7) continue;
    print(index);
  }
}
