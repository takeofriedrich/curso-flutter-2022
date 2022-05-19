class Pessoa {
  String? _nome;
  int? idade;
  double? altura;
  String? _cpf;
  bool? ehFumante;

  Pessoa({this.idade = 21});

  void set nome(String nome) {
    this._nome = nome;
  }

  String get nome {
    return this._nome!;
  }

  void set cpf(String cpf) {
    if (cpf.length == 11) {
      this._cpf = cpf;
    } else {
      // Lançar erro
      this._cpf = 'ERRO';
    }
  }

  bool ehDeMaior() {
    return idade! > 18;
  }

  @override
  String toString() {
    return 'Nome: $nome - $idade anos';
  }
}
