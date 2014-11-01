import "package:unittest/unittest.dart";

void main() {

    group('OddDoubler', () {
        OddDoubler od;
        
        setUp(() {
            od = new OddDoubler();
        });
        
        test('returns empty list when a == b and both are even', () {
            expect(od.compute(2, 2).length, equals(0));
        });

        test('returns list with 1 element if a == b - 1 and a is odd', () {
            expect(od.compute(1, 2).length, equals(1));
        });

        test('returns list which only element is the double of a when a == b - 1 and a is odd', () {
            expect(od.compute(3, 4)[0], equals(6));
        });

        test('returns list which only element is the double of b when a == b - 1 and a is even', () {
            expect(od.compute(6, 7)[0], equals(14));
        });

        test('returns list with as many elements as odd numbers between a and b', () {
            expect(od.compute(1, 3).length, equals(2));
            expect(od.compute(5, 10).length, equals(3));
            expect(od.compute(4, 13).length, equals(5));
        });

    });
}

class OddDoubler {

    List<int> compute(int a, int b) {
        List<int> list = new List<int>();

        while (a <= b) {
            if (isOdd(a)) {
                list.add(a * 2);
            }
            a++;
        }

        return list;
    }

    boolean isOdd(n) => n % 2 != 0;

}

