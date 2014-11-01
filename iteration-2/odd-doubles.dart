import "package:unittest/unittest.dart";

class OddDoubler {

    boolean isOdd(int n) => n % 2 != 0;

    List<int> getNumbers(int a, int b) {
        int howMany = b - a + 1;
        return new List<int>.generate(howMany, (int index) => a + index);
    }

    List<int> filterOdds(List<int> numbers) {
        numbers.removeWhere((n) => !isOdd(n));
        return numbers;
    }
    
}

void main() {

    group('OddDoubler', () {
        OddDoubler od;
        
        setUp(() {
            od = new OddDoubler();
        });

        test('isOdd() returns true if the number is odd', () {
            expect(od.isOdd(1), equals(true));
            expect(od.isOdd(2), equals(false));
        });

        test('getNumbers() returns a list with as many numbers between a and b, both inclusive', () {
            expect(od.getNumbers(1, 1), equals([1]));
            expect(od.getNumbers(1, 2), equals([1, 2]));
            expect(od.getNumbers(1, 5), equals([1, 2, 3, 4, 5]));
            expect(od.getNumbers(3, 10), equals([3, 4, 5, 6, 7, 8, 9, 10]));
        });

        test('filterOdds() removes even numbers from a provided list of numbers', () {
            expect(od.filterOdds([2, 4, 6, 8]), equals([]));
            expect(od.filterOdds([1, 2, 3, 4]), equals([1, 3]));
            expect(od.filterOdds([3, 8, 5, 3, 11, 10, 20, 14, 12]), equals([3, 5, 3, 11]));
        });

    });
}

