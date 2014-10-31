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

        test('returns list with 1 element if a == b - 1', () {
            expect(od.compute(1, 2).length, equals(1));
        });

    });
}

class OddDoubler {
    List<int> compute(int a, int b) {
        List<int> list = new List<int>();

        if (a < b) {
            list.add(0);
        }

        return list;
    }
}

