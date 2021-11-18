void main() {
  //               cheve /  valor
  final paciente = <String, String>{'nome': 'leo', 'curso': 'academia flutter'};

  Map<String, String>? pacienteNullSafety = null;

  //aceita chave nula
  Map<String?, String> pacienteNullSafety2 = {
    null: 'isaac',
  };

  //aceita valor nulo
  Map<String, String?> pacienteNullSafety3 = {
    'nome': null,
  };

  var produtos = <String, String>{};
  //só sera add se a chave n existir
  produtos.putIfAbsent('nome', () => 'charuto');
  produtos.putIfAbsent('nome', () => 'refrigerante');
  print(produtos);

  //atualizar a chave
  produtos.update('nome', (value) => 'refrigerante');
  print(produtos);

  //recuperando o valor
  print('Produtos ${produtos['nome']}');

  //varrer todos os itens  -  nao funciona com assincrono
  produtos.forEach((key, value) {
    print('chave $key:  $value:');
  });

  //varrer todos os itens  -  funciona com assincrono
  for (var entry in produtos.entries) {
    print('chave: ${entry.key}: ${entry.value}');
  }

  //
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

  //MAPA dentro de outro MAPA
  var mapa = <String, Object>{
    'nome': 'leo',
    'cursos': [
      {'nome': 'flutter'},
      {'nome': 'python'}
    ]
  };
}
