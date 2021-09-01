import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int value = 0;

  @observable
  bool showDialog = false;

  @action
  void increment() {
    value++;
    if (value == 5) {
      showDialog = true;
    } else {
      showDialog = false;
    }
  }
}
