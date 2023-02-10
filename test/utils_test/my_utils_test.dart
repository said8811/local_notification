import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:local_notification/data/models/utils_model.dart';

void main() {
  group("My Utils test", () {
    Utils utils = Utils();
    test("Base URl check", () {
      expect(utils.baseUrl, "https://kun.uz");
    });
    utils.myNumber = 200;
    test("My NUmber check", () {
      expect(utils.myNumber, 200);
    });
    test('IsMaxNew passed', () {
      expect(utils.isMaxNew(50, 100, 3, true), true);
    });
    test("IsMaxNew 2 passed", () {
      expect(utils.isMaxNew(200, 300, 1, false), false);
    });
    test("String Equals Passed", () {
      expect(utils.stringEquals("Salom", "Hayr"), false);
    });
    test("My Card passed", () {
      expect(utils.returnCardFormatText("1111222233334444"),
          "1111 2222 3333 4444");
    });
    test("Format Passed", () {
      expect(Utils.format(3), "03");
    });
  });
}
