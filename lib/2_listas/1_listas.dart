void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(print);

  //expand
  //Array BiDimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  //junta todos os itens da var lista.
  var listaNova = lista.expand((numeros) => numeros);
  print(listaNova);

  //any  -- busca o nome definido dentro da lista
  final listaBusca = ['leo', 'amanda', 'isaac'];

  if (listaBusca.any((nome) => nome == 'luna')) {
    print('tem luna');
  } else {
    print('nao tem luna');
  }

  //every   --  busca se tem a letra definida na em todos os itens da lista
  final listaBusca2 = ['leo', 'amanda', 'isaac'];

  if (listaBusca2.every((nome) => nome.contains('o'))) {
    print('todos tem a letra O');
  } else {
    print('nem todos tem a letra O');
  }

  //sort
  var listaParaOrdenacao = [75, 248, 369, 2, 79, 7, 3, 8];
}
