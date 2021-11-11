// ignore: file_names
// ignore_for_file: file_names

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
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['leo', 'amanda', 'isaac'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  ///
  var listapacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  listapacientes.sort((paciente1, paciente2) {
    final pacientesdados1 = paciente1.split('|');
    final pacientesdados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacientesdados1[1]);
    final idadePaciente2 = int.parse(pacientesdados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente2 == 0) {
      return 0;
    } else {
      return -1;
    }
  });

  print(listapacientes);

  //CompareTo

  var listapacientes2 = [
    'Rodrigo Rahman|35|',
    'Manoel Silva|12|',
    'Joaquim Rahman|18|',
    'Fernando Verne|35|',
    'Gustavo Silva|40|',
    'Sandra Silva|40|',
    'Regina Verne|35|',
    'João Rahman|55|',
  ];

  listapacientes2.sort((paciente1, paciente2) {
    final pacientesdados1 = paciente1.split('|');
    final pacientesdados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacientesdados1[1]);
    final idadePaciente2 = int.parse(pacientesdados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listapacientes2);
}
