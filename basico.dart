// DECLARAÇÃO E TIPOS DE VARIÁVEIS

// var, String, bool, int, double, dynamic
var qualquerValor = 2020;
String nome = 'Diana';
bool brasileira = true;
int idade = 30;
double altura = 1.68;
dynamic valoresAleatorios = 'Arcanjo'; // 30, 1.68, true


/* OPERADORES BÁSICOS ARITIMÉTICOS
   Soma(+), Subtrair(-), Multiplicar(*) e Dividir(/)
*/
  // REALIZANDO OPERAÇÕES
  var soma = 20 + 20;
  var subtrair = 50 - 25;
  var multiplicar = 3 * 6;
  var dividir = 10 / 2;

/* OPERADORES RELACIONAIS
  == (Igual a)
  != (Diferente)
   > (Maior que)
   < (Menor que)
  >= (Maior ou igual)
  <= (Menor ou igual)
*/

bool igualA = 10 == 10;
bool diferente = 10 != 20;
bool maiorQue = 10 > 50;
bool menorQue = 10 < 100;
bool maiorOuIgual = 100 >= 100;
bool menorOuIgual = 150 <= 20;


/* OPERADORES LÓGICOS
   && (E)
   || (OU)
*/

bool e = true && true;
bool ou = true || false;
bool relacionalLogico =  (6==6) && (5<10);
bool relacionalLogico2 = (5 != 5) || ( 12 <= 12);

/* CONTROLE DE FLUXO
   IF ELSE
   SWITCH
*/

/* LOOPS
   FOR
   WHILE
   DO WHILE
*/


main(){

  // PRINTANDO AS VARIÁVEIS
  print('<<< VARIÁVEIS >>>');
  print('Meu nome é ${nome} $valoresAleatorios');
  
  //PRINTANDO OPERADORES BÁSICOS ARITIMÉTICOS
  print('\n<<< OPERADORES BÁSICOS ARITIMÉTICOS >>>');
  print('Soma: ${soma}, Subtrair ${subtrair}, Multiplicar: ${multiplicar} e Dividir: ${dividir}');

  //PRINTANDO OPERADORES RELACIONAIS 
  print('\n<<< OPERADORES RELACIONAIS True/False >>>');
  print('Igual a: ${igualA}, Diferente: ${diferente}, MaiorQue: ${maiorQue}, MenorQue: ${menorQue}, MaiorOuIgual: ${maiorOuIgual}, MenorOuIgual: ${menorOuIgual}');

  //PRINTANDO OPERADORES LÓGICOS
  print('\n<<< OPERADORES LÓGICOS >>>');
  print('E: ${e}, OU: ${ou}, RelacionalLogico: ${relacionalLogico}, RelacionalLogico2: ${relacionalLogico2}');

  //CONTROLE DE FLUXO IF - ELSE IF - ELSE
  print('\n<<< CONTROLE DE FLUXO IF - ELSE IF - ELSE >>>');
  var idade2 = 10;
  if(idade2 <= 9){
    print('Criança');
   }else if( idade2 >= 10 && idade2 <= 18){
    print('Adolescente');
   }else{
   print('Adulto');
   }

  //CONTROLE DE FLUXO SWITCH
  print('\n<<< CONTROLE DE FLUXO SWITCH >>>');
  var comando = 'sacar';
  switch(comando){
    case 'depositar':
      print('Deposite um valor');
      break;
    case 'sacar':
      print('Sacar um valor');
      break;
    default:
      print('Nenhuma opçāo escolhida é valida');
  }

  //LOOPS - WHILE
  print('\n<<< LOOPS -  WHILE >>>');
  var numero = 0;
  while( numero <= 5 ){
    print('Executando $numero');
    numero++;
  }

   //LOOPS - DO WHILE
  print('\n<<< LOOPS -  DO WHILE >>>');
  var numeroDoWhile = 6;
  do{
    print('Executando $numeroDoWhile');
    numeroDoWhile++;
  } while( numeroDoWhile <= 5 );

  //LOOPS - FOR
  print('\n<<< LOOPS -  FOR >>>');
  var numeroFor = 10;
  for (var i = 0; i <= numeroFor; i++) {
     print('Executando: $i');
  }

} // main
