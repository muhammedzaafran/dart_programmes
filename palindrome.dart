void main() {
  String word ="tenet";
  if (isPalindrome(word)) {
    print("$word is a palindrome.");
  } else {
    print("$word is not a palindrome.");
  }
}

bool isPalindrome(String word) {
  int left =0;
  int right =word.length - 1;

  while (left < right) {
    if (word[left]!=word[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}