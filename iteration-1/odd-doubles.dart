import "package:unittest/unittest.dart";

void main() {
    
    group('OddDoubledList', () {
        
        test('returns empty list when a == b and both are even', () {
            OddDoubler od = new OddDoubler();
            List<int> list = od.compute(1, 1);

            expect(list.length, equals(0));
        });

    });
}

