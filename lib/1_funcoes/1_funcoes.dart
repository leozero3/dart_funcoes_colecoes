void main() {

  final valorCalculado = somaInterios(10, 10);
  print('A soma de dois inteiros é $valorCalculado');
}

int somaInterios(int numero1, int numero2){
  print('Executando a soma de inteiros($numero1, $numero2)');
  return numero1 + numero2;
}