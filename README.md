<h1 align="center"> GeekShop - Marketplace App </h1> 
<a href="https://flutter.dev">
  <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter" alt="Platform">
</a>
<a href="https://opensource.org/licenses/MIT" rel="ugc">
  <img src="https://img.shields.io/github/license/aagarwal1012/animated-text-kit?color=red" alt="License: MIT">
</a>
<br>
<p align="center">
  <a href="https://github.com/cesar-pimenta/sacolao_app">
    <img alt="GeekShop" title="GeekShop" src="https://i.imgur.com/9Uay0iK.png" width="450">
  </a>
</p>

A GeekShop é uma aplicação Mobile em Flutter de um marketplace de vendas de acessórios Geek, como camisetas, canecas, etc.

## Contruído com

- [Flutter](https://flutter.dev/) - Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.
- [Back4App API](https://www.back4app.com/) - Low-code backend to build modern apps.

## Dependências
- [animated_text_kit](https://pub.dev/packages/animated_text_kit): ^4.2.1
- [fluttertoast](https://pub.dev/packages/fluttertoast): ^8.0.8

## App

### Login
Tela de Login do usuário, permite logar no aplicativo, criar uma conta ou selecionar o "Esqueceu a senha?".

Utiliza o pacote [animated_text_kit](https://pub.dev/packages/animated_text_kit) para animar as palavras (Camisetas, Canecas, Tecnologia, etc.) que aparecem abaixo do logo do aplicativo.

Ao selecionar "Esqueceu a senha?" utiliza o Dialog do Material Design para mostrar um modal por cima da tela. Ao digitar o e-mail para recuperar a senha é exibido um 
toaster através do pacote [fluttertoast](https://pub.dev/packages/fluttertoast).

<p align="center">
  <img src="https://i.imgur.com/DrUOZYJ.png" width="300">
</p>

### Cadastro
Tela de cadastro de novo usuário.

Utiliza o container Form do Flutter para criar o formulário com os campos necessários e botão de cadastrar. Cada campo (e-mail, senha, nome, etc.) tem seu próprio validador, e o aplicativo só permite prosseguir ao preencher todos os campos com informações válidas.

Ao fazer o cadastro, o aplicativo já faz o login e direciona para a página de Home.

<p align="center">
  <img src="https://i.imgur.com/IfkDeNS.png" width="300">
</p>

### Home
<p align="center">
  <img src="https://i.imgur.com/7XpzUoC.png" width="300">
</p>

### Carrinho
<p align="center">
  <img src="https://i.imgur.com/SesaGII.png" width="300">
</p>

### Pedidos
<p align="center">
  <img src="https://i.imgur.com/TKDEIEJ.png" width="300">
</p>

### Perfil
<p align="center">  
  <img src="https://i.imgur.com/7UO2n09.png" width="300">
</p>

## Contribuidores
- César Pimenta
- Luan Prado
- Lucas Marinho
- Guilherme Ferrace
