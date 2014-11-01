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

    });
}

