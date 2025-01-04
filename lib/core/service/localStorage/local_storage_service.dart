import 'dart:io';

import 'package:eternal_fire_static/core/private/private_value.dart';
import 'package:hive/hive.dart';

import '../../../global.dart';
import '../../import/constant_import.dart';

class _LocalStorageService {
  static _LocalStorageService? _instance;
  static _LocalStorageService get instance {
    if (_instance != null) return _instance!;
    _instance = _LocalStorageService._init();
    return _instance!;
  }

  _LocalStorageService._init();
  Box? box;
  Future<void> instancePrefs() async {
    if (box != null) return;
    developerLog("instancePrefs", name: "LocalStorageService.instancePrefs");
    final Directory directory = await PrivateValue.localStorageDir();
    Hive.init(directory.path);

    box = await Hive.openBox(ProjectConstant.projectName);
  }

  void setValue({required String key, required value}) {
    developerLog("key: $key, value: $value",
        name: "LocalStorageService.set.$key");
    if (box == null) {
      instancePrefs().then((_) => box?.put(key, value));
    } else {
      box?.put(key, value);
    }
  }

  dynamic getValue({required String key}) {
    dynamic result = box?.get(key);

    if (box == null) {
      instancePrefs().then((_) => result = box?.get(key));
    }

    developerLog("key: $key => result: $result ",
        name: "LocalStorageService.get.$key");
    return result;
  }

  void remove({required String key}) {
    developerLog("key: $key", name: "LocalStorageService.remove.$key");
    if (box == null) {
      instancePrefs().then((_) => box?.delete(key));
      return;
    }

    box?.delete(key);
  }
}

enum ELocalStorage {
  isShowOnBoard;

  static Future<void> init() => _LocalStorageService.instance.instancePrefs();

  void setValue(final value) =>
      _LocalStorageService.instance.setValue(key: name, value: value);

  dynamic getValue() => _LocalStorageService.instance.getValue(key: name);

  void remove() => _LocalStorageService.instance.remove(key: name);
}
