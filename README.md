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

## Principais Dependências
- [animated_text_kit](https://pub.dev/packages/animated_text_kit): ^4.2.1
- [fluttertoast](https://pub.dev/packages/fluttertoast): ^8.0.8
- [add_to_cart_animation](https://pub.dev/packages/add_to_cart_animation): ^0.0.7
- [mask_text_input_formatter](https://pub.dev/packages/mask_text_input_formatter): ^2.0.0

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

Os campos utilizam máscaras (CPF e número de telefone) através do pacote [mask_text_input_formatter](https://pub.dev/packages/mask_text_input_formatter).

Ao fazer o cadastro, o aplicativo já faz o login e direciona para a página de Home.

<p align="center">
  <img src="https://i.imgur.com/IfkDeNS.png" width="300">
</p>

### Home
Tela de listagem de produtos.

O campo de pesquisa presente na tela é um TextFormField, e conforme o usuário digita é feito a busca no Back-end para filtrar os produtos e atualizar o estado da listagem.

É utilizado um ListView no sentido horizontal para as categorias (CategoryTile), para permitir scrollar entre as categorias disponiveis para filtro caso tenha mais do que a largura da tela comporte.

A listagem de produtos é um GridView e é compostas por ItemTiles, ao clicar no icone de adicionar ao carrinho é utilizado o pacote [add_to_cart_animation](https://pub.dev/packages/add_to_cart_animation) para animar a adição de um novo item ao carrinho, essa ação acessar a controller do Carrinho e já adiciona o novo item na lista do carrinho.

<p align="center">
  <img src="https://i.imgur.com/7XpzUoC.png" width="300">
</p>

### Carrinho
Tela que exibe os produtos selecionados para compra e a unidadade de cada produto, permitindo aumentar ou remover a quantidade de cada produto. Mostrando também o total que ficará a compra e um botão para concluir o pedido.

Ao concluir o pedido, é mostrada uma mensagem de confirmação, ao confirmar é exibido o QRCode para pagamento por PIX através de um dialog.

<p align="center">
  <img src="https://i.imgur.com/SesaGII.png" width="300">
</p>

### Pedidos
Tela de listagem dos pedidos feitos. Nessa tela é exibido todos os pedidos feitos, e é possível expandir cada um dos pedidos para ver o status da compra (Pedido confirmado, pagamento, preparando, envio e entregue).

<p align="center">
  <img src="https://i.imgur.com/TKDEIEJ.png" width="300">
</p>

### Perfil
Tela de informações do usuário. É possível ver as informações do usuário logado e alterar a senha. Além de ter um botão de logout que encerra a sessão do usuário e direciona para a tela de Login.

<p align="center">  
  <img src="https://i.imgur.com/7UO2n09.png" width="300">
</p>

## Contribuidores
- César Pimenta
- Luan Prado
- Lucas Marinho
- Guilherme Ferrace
