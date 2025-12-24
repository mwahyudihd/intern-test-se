class Palindrome {
  int highest(int k, int length) {
    String strK = k.toString();
    return highest(int.tryParse(strK) ?? 0, strK.length);
  }
}