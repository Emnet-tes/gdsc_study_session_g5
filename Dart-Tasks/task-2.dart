import 'dart:math';

void findMaximum(var num) {
  int maxval = 0;
  for (int i = 0; i < num.length; i++) {
    maxval = max(maxval, num[i]);
  }
  print('maximum =$maxval');
}

void findMinmum(var num) {
  int minval = num[0];
  for (int i = 0; i < num.length; i++) {
    minval = min(minval, num[i]);
  }
  print('minimun =$minval');
}

int calculateSum(List<int> num) {
  int sum = 0;
  for (int i = 0; i < num.length; i++) {
    sum += num[i];
  }
  return sum;
}

void calculateAverage(int num, int k) {
  double avg = num / k;
  print('average =$avg');
}

void main() {
  var numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  findMaximum(numbers);
  findMinmum(numbers);
  int sum = calculateSum(numbers);
  print('sum =$sum');
  calculateAverage(calculateSum(numbers), numbers.length);
}
