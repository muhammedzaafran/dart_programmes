void main() {
  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  for (int number = 2; number <= 1000; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}