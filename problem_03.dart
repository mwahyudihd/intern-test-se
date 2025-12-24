class Palindrome {
  String highest(int k, String s) {
    List<String> chars = s.split('');
    int makePalindrome(int l, int r, int crrK) {
      if (l >= r) {
        return crrK;
      }

      if (chars[l] != chars[r]) {
        if (crrK > 0) {
          if (chars[l].compareTo(chars[r]) > 0) {
            chars[r] = chars[l];
            crrK--;
          } else {
            chars[l] = chars[r];
            crrK--;
          }
        }
      }

      return makePalindrome(l + 1, r - 1, crrK);
    }

    makePalindrome(0, s.length - 1, k);
    return chars.join('');
  }
}
