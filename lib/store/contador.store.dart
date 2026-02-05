import 'package:mobx/mobx.dart';

part 'contador.store.g.dart';

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int _contador = 100;

  int get contador => _contador;

  @action
  void incrementar() {
    _contador++;
  }
}
