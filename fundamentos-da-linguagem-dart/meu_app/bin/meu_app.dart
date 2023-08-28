void main(List<String> arguments) {
  int number = 1;
  int number1 = 2;
  var number2 = 3;

  print("================ Int ================");

  // tipo inteiros (int)

  print("Retorna verdadeiro se e somente se este inteiro for par");
  print(number1.isEven);
  print(number2.isEven);

  print("Retorna verdadeiro se e somente se este inteiro for impar");
  print(number.isOdd);
  print(number2.isOdd);

  print("Retorna se o número é finito");
  print(number2.isFinite);

  print("Retorna se o número é infinito");
  print(double.infinity);

  print("Converte String para inteiro");
  print(int.parse("10"));
  print(int.tryParse("teste"));

  print("================ Double ================");

  // tipo double
  double numero1 = 10.9;
  var numero2 = 11.1;

  print("Remove o ponto flutuante");
  print(numero1.truncate());
  print(numero2.truncate());

  print("Converte para inteiro");
  print(numero1.toInt());
  print(numero2.toInt());

  print("Arredondar para cima");
  print(numero1.ceil());
  print(numero2.ceil());

  print("Arredondar para baixo");
  print(numero1.floor());
  print(numero2.floor());

  // tipo String

  print("================ String ================");
  String texto1 = "Iann";
  String text = "dio";
  var text2 = "DIO";

  // Comparação se vazio
  print(texto1.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty);

  // Tamanho da String
  print(texto1.length);

  // Maiúscula / Minuscula
  print(text.toUpperCase());
  print(text2.toLowerCase());

  // Substitui uma String em outra
  print(text.replaceAll("o", "a"));

  // Quebrar uma String por um caracter especifico
  print("Nome;Endereço;CEP".split(";"));

  // Remove espaços
  print(" Iann".trim());

// tipo Booleano

  print("================ Bool ================");
  bool varTrue = true;
  bool varFalse = false;
  print(varFalse);
  print(varTrue);

  // tipo List

  print("================ List ================");

  List<String> list = [];
  list.add('I'); // adicionar itens em uma list

  List<String> lstString = [];
  var lstInt = [1, 10, 50];
  List lstDynamic = [];

  print(lstInt);
  // tamanho da lista
  print(lstInt.length);

  // Adicionar itens
  lstString.add("I");
  lstString.add("A");
  lstString.add("N");
  lstString.add("N");

  // Verificar se a lista ta vazia
  print(lstString.isEmpty);
  print(lstDynamic.isEmpty);

  // Verificar se algum item contem na lista
  print(lstString.contains('A'));

  // Função Where, seria um filter em javascript
  print(lstInt.where((x) => x > 9 && x < 99));

  // Reverso
  print(lstInt);
  print(lstInt.reversed);

  // remover
  print(lstInt.remove(50));

  // tipo List
  print("================ Map ================");
  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {'zero': 0, 'one': 1, 'two': 2};

  print(map);

  // obter valor pela chave
  print(map["one"]);

  map1.addAll({"Name": "Iann Rodrigues"});
  map1.addAll({"Idade": 27});
  print(map1);
}
