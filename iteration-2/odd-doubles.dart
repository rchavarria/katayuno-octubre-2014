import "package:unittest/unittest.dart";

class OddDoubler {

    boolean isOdd(int n) => n % 2 != 0;

}

void main() {

    group('OddDoubler', () {
        OddDoubler od;
        
        setUp(() {
            od = new OddDoubler();
        });

        test('isOdd returns true if the number is odd', () {
            expect(od.isOdd(1), equals(true));
            expect(od.isOdd(2), equals(false));
        });

        test('getNumbers() returns a list with as many numbers between a and b, both inclusive', () {
            expect(od.getNumbers(1, 1), equals([1]));
            expect(od.getNumbers(1, 2), equals([1, 2]));
            expect(od.getNumbers(1, 5), equals([1, 2, 3, 4, 5]));
            expect(od.getNumbers(3, 10), equals([3, 4, 5, 6, 7, 8, 9, 10]));
        });

    });
}

