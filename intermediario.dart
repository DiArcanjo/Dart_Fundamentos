 // DART INTERMEDIARIO

 // ESTRUTURA DE UMA FUNÇÃO

 // Função sem retorno
import 'dart:async';

void exibirDados(){
    print("Olá me chamo Diana");
  }

 // Função com retorno
 int soma(){
   int soma = 50 + 50;
   return soma;
 } 

 // Função com parâmetros
    int exibirSoma(int numero1, int numero2){
      int somaResultado = numero1 + numero2;
      return somaResultado;
    }

    String exibirDadosPessoais(String nome, int idade){
        return "Olá meu nome é ${nome}, minha idade é de ${idade} anos";
    }

  // Função com parâmetros opcionais
   String exibirDadosOpcionais(String nome, {int idade, double altura}){
        // Se novaIdade for igual a null será acrescentado o 0 no lugar
        int novaIdade = idade ?? 0;
        double novaAltura = altura ?? 0.00;
        return "Olá meu nome é ${nome}, minha idade é de ${novaIdade}, minha altura é de $novaAltura";
  }

  // Passando uma função como parâmetro
  void funcao(String digitaQualquerCoisa, Function callFunction){
    print("$digitaQualquerCoisa");
    callFunction();
  }

   // ESTRUTURA DE UMA CLASSE

   // Criando uma classe 
   class Animal{
     // Atributo
     String cor;

     // Criando um construtor, para simplificar o construtor poderar cria-lo assim: Aninal(this.cor);
     Animal(String cor){
      this.cor = cor;
     }

     // Criando um construtor nomeado.
     Animal.jabuti(this.cor){
       print("Construtor do Jabuti");
     }

     // Método de uma classe, ele segue a mesma estrutura de uma função, mas chamamos de métodos quando está dentro de uma classe. 
     void dormir(){

     }
   }

   class ComportamentoAnimal{
     String dormindo;

     void dormir(){
       print("Cão latindo");
     }

      void latir(){
       print("Cão latindo");
     }
   }


   // Criando uma herança entre as classes

   class Cachorro extends ComportamentoAnimal{

     String nomeCao;
     int idadeCao;

     void dono(bool temDono){
       if(temDono == true){
         print("Sim ele tem dono"); 
       }else{
         print ("Ele não tem um dono :(");
       }
     }

     void exibirDadosCao(Function call){
       print("O cão se chama ${nomeCao}, sua idade é $idadeCao, ");
     }

   }

   // Criando Getters e Setters dentro da classe

   class Conta{
     // O Anderline colocado antes do atributo é para indicar que ele é privado. 
     double _saque = 0;

     // Getters
     double get getSaque{
       return this._saque;
     }

     // Setters 
     set setSaque(double saque){
       if(saque > 0 && saque <= 500){
         this._saque = saque;
       }else{
         print("Valor não permitido");
       }
     }

   } 

//===========//================///==================//=============//==========///=========//======///=====
main() {

  // Executando a função exibirDados
     exibirDados();

  // Executando a função soma
  int visualizarRetorno = soma();
  print(visualizarRetorno);

  // Executando a função exibirSoma
  int retornoExibirSoma = exibirSoma(28, 2);
  print("Printando o resultado da função exibirSoma: ${retornoExibirSoma}");

  // Executando a função exibirDadosPessoais
  String retornoDadosPessoais = exibirDadosPessoais("Diana", 30);
  print(retornoDadosPessoais);

  // Executando a função exibirDadosOpcionais
  String retornoDadosOpcionais = exibirDadosOpcionais("Diana", altura: 1.67);
  print(retornoDadosOpcionais);
  
  // Executando a função funcao
  funcao("Será que vai dar certo?? << Chamando a função >> ", exibirDados);

  // Passando uma função anônima e executando
  funcao("Sera que vai dar certo isso? << Chamando a função anônima >>", (){
    print("Num é que deu certo!! Uhulllll");
  });

  //===========//================///==================//=============//==========//
  //===========//================///==================//=============//==========//
  
  // Instanciando uma classe
   Animal animal = Animal("Verde");
   animal.dormir();

   Animal animalJabuti = Animal.jabuti("Marron");
   print(animalJabuti.cor);

   // Instanciando uma classe Cachorro que herda métodos da classe ComportamentoAnimal
   Cachorro cao = Cachorro();
   cao.nomeCao = "Thor";
   cao.idadeCao = 1;
   cao.dormir();
  
  // Instanciando uma classe com Getters e Setters
  Conta conta = Conta();
  conta.setSaque = 900;
  print(conta.getSaque);
}











