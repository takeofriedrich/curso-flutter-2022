class Singleton {
  int x = 0;
  static Singleton? _instance;
  Singleton._();
  factory Singleton() {
    return _instance ??= Singleton._();
  }

  void incrementa() {
    x++;
  }

  @override
  String toString() {
    return 'Valor de x é $x';
  }
}
