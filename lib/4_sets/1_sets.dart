void main() {
  var numeroLista = <int?>[];
  numeroLista.add(1);
  numeroLista.add(11);
  numeroLista.add(2);
  numeroLista.add(2);
  numeroLista.add(6);
  numeroLista.add(null);
  numeroLista.add(9);
  numeroLista.add(9);
  print(numeroLista);

  //set = {}
  //nao aceita numeros duplicados
  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(11);
  numeroSet.add(2);
  numeroSet.add(2);
  numeroSet.add(6);
  numeroSet.add(null);
  numeroSet.add(9);
  numeroSet.add(9);

  print(numeroSet);

  //outra alternativa
  //   .toSet()
  print('toSet =  ${numeroSet.toSet()}');

  //outra alternativa
  //   .forEach
  print('forEach=');
  numeroSet.forEach(print);

  ///
  var numero1 = {1, 6, 3, 8, 8, 3};
  var numero2 = {8, 2, 7, 9, 587, 6, 1};

  //diferente. o que nao tem na outra lista
  print('diferenca');
  print(numero1.difference(numero2));
  print(numero2.difference(numero1));

  //union  =  nao permite duplicado juntando as duas listas
  print('union');
  print(numero1.union(numero2));

  //intercessao  =  mostra os numeros que se repetem nas duas listas
  print(numero1.intersection(numero2));

  //lookup   =   procura o elemento na lista
  print('lookup');
  print(numero1.lookup(1));
  print(numero1.lookup(99));
  }
