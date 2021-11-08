void main() {
  //parametros simples(obrigatorios)
  print('A soma de 10 + 10 é ${somaInterios(10, 10)}');

  //Parametros Nomeados,  = {}
  //parametros nomeados são nullables por default
  //parametros nomeados podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');

  //Parametros Nomeados Obrigatorios = required
  print('A soma é ${somaDoublesObrigatorios(numero1: 26.5548, numero2: 863.569)}');
  print('A soma é ${somaDoublesObrigatorios2(numero1: null, numero2: 863.569)}');

  //Parametros Nomeados Default
  print('Parametros Nomeados Default ${somaDoublesObrigatoriosDefault()}');
  print('Parametros Nomeados Default ${somaDoublesObrigatoriosDefault(numero1: 98)}');

  //Parametro Opcional - tem que passar os parametros na sequencia. = []
  print('Parametro Opcional ${somaIntOpcional()}');
  print('Parametro Opcional ${somaIntOpcional(1)}');
  print('Parametro Opcional ${somaIntOpcional(8,24)}');

  //Parametros Normais + Nomeados
  parametrosNormaisENomeados(8, nome: 'leo', idade: 25);
  parametrosNormaisENomeados2(1, 'isaac', 3);

}

int somaInterios(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesObrigatorios2({required double? numero1, required double numero2}) {
  numero1 ??= 52552;
  // if (numero1 == null ) {
  //   return numero1 = 0;
  // }
  return numero1 + numero2;
}

double somaDoublesObrigatoriosDefault({double numero1 = 86, double numero2 = 28}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 9,int numero2 = 5]){
  return numero1 + numero2;

}

void parametrosNormaisENomeados(int numero, {required String nome, required int idade}){}
void parametrosNormaisENomeados2(int numero, [String? nome, int? idade]){}