main(){
  //variáveis
  var z = 3;
z = 4;

  final g = 3;
  //b = 5; não compila

  const c = 5;
  //c = 7; não compila

  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var w = "Você é muito legal";
  print (w is String);

  print(estaChovendo || estaFrio);
  print('Teste');

  //dynamic
  dynamic x = 'Teste';
  x = 123;
  x = false;

  //Listas - aceita valores duplicados
  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel');
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[2]);

  //Set
  var conjunto = {0,1,2,3,4,4,4,4,4};
  print(conjunto.length);
  print(conjunto is Set);
  print(conjunto.add(4));

  //Map
  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos':7.8,
  };

  for(var chave in notasDosAlunos.keys){
    print('chave = $chave');
  }

  for(var valor in notasDosAlunos.values){
    print('valor = $valor');
  }

  for(var registro in notasDosAlunos.entries){
    print('${registro.key} = ${registro.value}');
  }
}