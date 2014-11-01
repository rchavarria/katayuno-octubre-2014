import "package:unittest/unittest.dart";

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

