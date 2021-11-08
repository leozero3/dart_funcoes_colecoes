void main() {
//1-Funções Arrow - ok
//2-Funções Anonimas - ok
//3-TypeDef - ok


  //1
  print(somaInteiros(10, 10));

  //2
  var nome = '';
  var idade = 1;
  var funcaoQualquer = (){
    print('Chamou a funcao da variavel');
    return 2000;
  };

  print(funcaoQualquer());


}
///3 partes:
//1-tipo de retorno
//2-nome
//3-parametros(normais, nomeados e opcionais)



///1
// int somaInteiros(int numero1, int numero2){
//   return numero1 + numero2;
// }
//funcao arrow
int somaInteiros(int numero1, int numero2)=> numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2)=> numero1 + numero2;


//2-Funções Anonimas
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Isaac Gonzalez';
  funcaoQueRecebeONome(nomeCompleto);
}


//3-TypeDef -
typedef FuncaoQueRecebeNome = void Function(String nome);

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome){
  var calculo = 1+1;
  var nomeCompleto = 'Isaac Gonzalez';
  funcaoQueRecebeONome(nomeCompleto);
}
