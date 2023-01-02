soma(a, b){
  print(a+b);
}
int retornaSoma(a, b){
  return a+b;
}

class Produto{
  String nome = "";
  double preco = 0;

  Produto(this.nome, this.preco);
}

main (){
  soma(2,3);
  print ('O valor da soma é: ${retornaSoma(2, 3)}');

  /*var p = Produto();
  p.nome = "Lápis";
  p.preco = 4.59;*/

  var p1 = Produto("Lápis", 4.50);
  var p2 = Produto("Caneta", 5.00);

  //print("O produto: ${p.nome} tem preço R\$${p.preco }");
  print('O produto: ${p1.nome} tem o preço: ${p1.preco}');
  print('O produto: ${p2.nome} tem o preço: ${p2.preco}');

}