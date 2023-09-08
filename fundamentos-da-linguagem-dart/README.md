# Fundamentos da Linguagem Dart

## Percurso

- Etapa 1: Fundamentos da Linguagem Dart;
- Etapa 2: Estruturas Condicionais e de Repetição em Dart;
- Etapa 3: Dominando Funções em Dart;
- Etapa 4: Orientação a Objetos em Dart;
- Etapa 5: Boas Práticas e Tratamento de Exceções em Dart;
- Etapa 6: Introdução à Testes em Dart;

## Introdução

- Dart é uma linguagem de programação apresentada pelo Google em 2011 com o objetivo de ser uma opção ao TypeScript para desenvolvimento Web.

- Começou a ser mais difundida com o advento do Flutter que trouxe o Dart como linguagem para seu SDK.

- É uma linguagem muito parecida com a linguagem C, com isso ela lembra muito **Java**, **C#**, **JavaScript** e PHP.

- Linguem fortemente tipada, mas que possibilita o uso também de tipos dinâmicos;

- Orientada a objetos;

- [DartPad](https://dartpad.dartlang.org/);

> Criando um projeto com Dart:

```bash

# Criar o projeto em dart
dart create -t console meu_app

# Executar o projeto
dart run
```

## Tipos de dados

- int;
- double;
- String;
- bool;
- List e List<>;
- Map - chave/valor;
- constant - const;
- Dynamic;
- Date;

## Dominando Funções em Dart

**Benefícios das funções**

- Reduzindo a duplicação de código;
- Melhorar a clareza do código;
- Reutilização de código;
- Decompondo problemas complexos em partes mais simples;
- Ocultação de informações;

## Orientação a Objetos em Dart

**O que é OO?**

- A Orientação a Objetos é um paradigma de computação que nos auxilia a efetuar abstrações de objetos e outras coisas imateriais do mundo real. Essas abstrações serão escritas em forma de estruturas de fácil compreensão, estruturas essas que servirão de modelo para criação de nossos dados dentro dos sistemas.

**Princípios da OO**

- Abstração;
- Encapsulamento;
- Herança;
- Polimorfismo;

**Detalhamento da OO**

- Classes;
- Herança;
- Objetos;
- Encapsulamento;
- Polimorfismo;
- Classes Abstratas;
- Interfaces;
- Inversão de Controle e Injeção de dependência;
- SOLID;
- DDD- Domain Driven Design;

## Boas Práticas e Tratamento de Exceções em Dart

**Tratamento de Erros**

- Try-catch;
- Try-catch-finally;

```dart
try{
  // Caso seja sucesso
}on ExceçãoEspecifica catch(e){
  // Trata Exceção específica
}catch(e){
  // Trata qualquer outra exceção
}finally{
  // Executa mesmo sendo sucesso ou erro
}
```

**Boas práticas e Lint**
