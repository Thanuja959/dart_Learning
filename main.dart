void main() {
  List<int> nums = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var finList = [];
  for (int n in nums) {
    if (n < 5) {
      finList.add(n);
    }
  }
  print(finList.toSet());
}

/* one line code 

print([for(var n in nums ) if (n>5) n].toset());  
*/