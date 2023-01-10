class Pessoa {
  String nome = "";
  String _cpf = "";

  //Com _ o atributo fica privado para fora do arquivo.
  // É preciso criar um get

  set cpf(String novoCPF){
    this._cpf = novoCPF;
  }

  get Cpf{
    return _cpf;
  }
}