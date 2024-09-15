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
