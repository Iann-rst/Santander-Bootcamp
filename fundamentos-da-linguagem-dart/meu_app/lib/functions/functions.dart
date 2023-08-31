void main(List<String> arguments) {
  printHelloWorld();
  printName("Iann");
  var number = returnNumber();
  print(number);

  var result = sum(10, 22);
  print(result);
}

void printHelloWorld() {
  print("Hello World");
}

// recebendo parâmetros pela função
void printName(String name) {
  print("My name is: $name");
}

// função com retorno
int returnNumber() {
  return 30;
}

int sum(int number1, int number2) {
  return number1 + number2;
}
