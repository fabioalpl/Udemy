/*class Pessoa {
  String nome = "";
  String _cpf = "";

  //Com _ o atributo fica privado para fora do arquivo.
}*/

import 'pessoa.dart';

main() {

  var p1 = Pessoa();
  p1.nome = 'João';
  // erro de compilacao
  //p1._cpf = '1356565656';
  p1.cpf = '1356565656';

  //print("O ${p1.nome} tem CPF ${p1._cpf}")
  print("O ${p1.nome} tem CPF ${p1.Cpf}");
}