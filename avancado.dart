// SOBRESCRITA DE MÉTODOS

// Classe Mãe
class Animal{
  
  String cor;

  Animal(this.cor);

  void dormir(){
    print("Dormir");
  }

  void correr(){
    print("Correu");
  }

}

// Classe Filha
class Cao extends Animal{
  
  String corOrelha;

  // Chamando um construtor da classe mãe Animal
  Cao(String cor, this.corOrelha) : super(cor);

  void latir(){
    print("Latir");
  }

  // O override sobrescreve o método da classe mãe.
  @override
  void correr(){
    // o super chama o método da classe mãe.
    super.correr();
    print("o cachorro");
  }

}

// Classe Filha
class Passaro extends Animal{

  String corBico;

  // Chamando um construtor da classe mãe
  Passaro(String cor) : super(cor);
  
  void voar(){
    print("passaro");
  }
}

//===========//================///==================//=============//==========//
//===========//================///==================//=============//==========//

// CLASSES ABSTRATAS

// Para instanciar uma classe basta somente acrescentar o abstract na classe, exemplo:

abstract class DadosPessoais{
// Colocando o abstract na classe ela não poderá mais ser instanciada.

}


//===========//================///==================//=============//==========//
//===========//================///==================//=============//==========//

// MODIFICADORES STATIC E FINAL

/*
O Modificador STATIC é utilizado quando você quer criar uma classe, e essa classe ela vai ter por exemplo: Constantes.
O Modificador FINAL é utilizado para definir um valor final seja para um atributo ou instancia onde não poderá ser alterado.
*/

class Configuracoes{
  
  // Deixando um atributo static 
  static String identificadorApp = "43ba18d9031d6581defd490947c59865";

  // Deixando um atributo final
  final String tokenApp = "ea66068d-40d0-47e5-9d7c-15acb2d74d47";

  // Deixando um método static
  static void configuracaoInicial(){
    print("Executa configurações iniciais");
  }

}

/*
Acrescentando o final no instaciamento

final Cao cao = Cao("Preto", "Branco");
cao.correr();

Aqui já da um erro o valor do primeiro cão acima não pode ser alterado
cao = Cao("Marrom", "Preto");
*/


//===========//================///==================//=============//==========//
//===========//================///==================//=============//==========//

// INTERFACE

// Criando uma interface
abstract class Presidenciavel{
  // Normalmente dentro de uma interface no criamos os métodos sem corpo.
  void participarEleicao();
}

// Classe mãe
class Cidadao{
 void direitosDeveres(){
   print("Todo cidadão tem direitos e deveres");
 }
}

// No caso da classe Obama vamos dizer que ele será obrigado a participar da eleição então ele precisará utilizar o método da interface.
// Para definir uma interface dentro de uma classe vamos usar o implements
class Obama extends Cidadao implements Presidenciavel{

  // A classe Obama é obrigada a utilizar o método participarEleicao da classe Presidenciavel.
    void participarEleicao(){
      print("Participando da eleição dos Estados Unidos");
    }
}

class Jason extends Cidadao{

}

//===========//================///==================//=============//==========//
//===========//================///==================//=============//==========//

// COLEÇÕES - LISTAS E MAPAS

class Usuario{
  String nome;
  int idade;

  Usuario(this.nome, this.idade);  
}

// LISTAS
List frutas = ["Morango", "Manga", "Melancia"];
List <String> nomes = ["Jorge", "Steve", "Jon"];
List <int> numeros = [100, 200, 300, 400];

// MAPAS
/*
  O Mapa é uma lista onde você consegue definir a chave -> valor 
  Quando criamos um array/lista a chave é definida de forma automática, no caso do mapa nós podemos definir essa chave.
*/ 

// Criando um map
Map <String, String> estados = Map();
Map <String, int> notas = Map();
Map<dynamic, dynamic> dadosQualquer = Map();


main(){
// Instanciando a classe Cao
Cao cao = Cao("Preto", "Branco");
cao.correr();

cao = Cao("Marrom", "Preto");

//===========//================///==================//=============//==========//

// Para acessar o identificadorApp não precisa instanciar a classe...
Configuracoes.identificadorApp;
print(Configuracoes.identificadorApp);

// Para acessar o metodo statico configuracaoInicial
Configuracoes.configuracaoInicial();

//===========//================///==================//=============//==========//

// Instanciando a classe Obama
Obama obama = Obama();
obama.participarEleicao();

//===========//================///==================//=============//==========//

// Adicionando um item na lista
frutas.add("Amora");

// Adicionando um item na lista no indice que deseja.
frutas.insert(0, "Banana");

// Removendo um item da lista
frutas.remove("Amora");

// Removendo um item na lista no indice que deseja.
frutas.removeAt(3);

// Utilizando o método contains(), esse método verifica se contém o intem na lista, se contém ele retorna true senão false.
print(frutas.contains("Banana")); // true
print(frutas.contains("Maça")); // false

// Utilizando o length, ele verifica o tamanho da lista.
print(frutas.length); // true

// Acrescentando um objeto dentro de uma lista.
// Criando uma lista vazia chamada usarios onde o tipo dela será a classe Usuario
List<Usuario> usuarios = List();

// Acrescentando os objetos na lista

usuarios.add(Usuario("Diana", 30));
usuarios.add(Usuario("Jorge", 35));

// Para mostrar os dados da lista, devemos criar um for para percorrer a lista
for(Usuario usuario in usuarios){
  print("Nome: ${usuario.nome} Idade: ${usuario.idade}");
}

//===========//================///==================//=============//==========//

// Acrescentando valores no Mapa estados
estados["SP"] = "São Paulo";
estados["RJ"] = "Rio de Janeiro";
estados["MG"] = "Minas Gerais";
print(estados);

// Acrescentando valores no Mapa notas
notas["Diana"] = 8;
notas["Maria"] = 10;
notas["Carlos"] = 5; 
print(notas);

// Acrescentando valores no Mapa dadosQualquer
dadosQualquer[10] = 1.45;
dadosQualquer["Diana"] = "OK";
dadosQualquer["SP"] = true; 
print(dadosQualquer);

// No mapa você pode fazer as mesmas operações feitas na lista como, add, remove, insert e assim por diante.

// Para percorrer o mapa podemos utilizar ao invés do for, o forEach 
estados.forEach(
  (chave, valor) => print("${chave} - ${valor}")
);

}