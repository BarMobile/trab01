# TRABALHO 01:  Bar Mobile
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gary Moura da Silva: garymsilva@outlook.com<br>
José Guilherme Silva de Lima: guislima47@gmail.com<br>
Thalles Vargas Ribeiro Lopes: tvrl07031997@gmail.com<br>
Yago Henrique Zanon Trarbach: yagozt.henrique@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>
<br>Plataforma que visa melhorar a eficiência no atendimento de bares, restaurantes e lanchonetes, já que ao acessá-lo como cliente permite que faça seu pedido pelo celular, além de outras funcionalidades como por exemplo poder até mesmo pagar a comanda pelo celular uma vez que o cartão foi cadastrado. Na visão do administrador o dono teria uma visão muito mais ampla de seu estabelecimento facilitando o seu gerenciamento com uma interface intuitiva.

### 3.MINI-MUNDO<br>
O FastServ é uma plataforma para atendimento de clientes de bares,restaurantes e lanchonetes. Há duas formas de acessá-lo, uma com o foco no cliente e outra com o foco no estabelecimento.

Na visão do cliente o acesso à plataforma será via smartphones e tablets, através de um aplicativo mobile. Ao abrir a aplicação pela primeira vez, o usuário terá a opção de fazer cadastro no sistema ou fazer login diretamente. Caso não seja cadastrado, irá para a página de cadastro onde fornecerá os seus dados, que são seu nome completo, CPF, e-mail e data de nascimento. Depois de cadastrado, o cliente poderá editar suas informações de conta e adicionar um cartão de crédito para fazer pagamentos via aplicação. Para isso, o cliente deverá fornecer os dados sobre o cartão que deseja cadastrar, sendo eles o número do cartão, validade, nome do titular e código de segurança. O cliente já cadastrado, ao fazer o login, terá acesso a uma lista com todos os bares e restaurantes cadastrados no sistema. Cada bar terá uma avaliação de 0 a 5 estrelas, descrição do estabelecimento, cardápio e fotos do local. O cliente também poderá visualizar em um mapa sua localização e os estabelecimentos ao seu redor e terá a opção de visualizar o caminho que deverá seguir para chegar até um bar ou restaurante de sua escolha.

Caso esteja em um estabelecimento cadastrado no sistema, o cliente poderá ter acesso à plataforma de atendimento virtual ao fazer a leitura de um QR Code, que se disponibilizará em cima de uma das mesas do recinto, através do aplicativo. Após a sincronização, o cliente visualizará o cardápio do estabelecimento, dessa vez com o preço, dividido em diversas categorias (categorias definidas pelo estabelecimento), terá a opção de filtrar ou buscar um produto, poderá também fazer pedidos e  gerenciar a sua "comanda".<br>
<br> Já na visão do Estabelecimento o acesso será através de um sistema instalado em desktop com sistema operacional Windows. O cliente fará o seu cadastro no site, informando o nome do estabelecimento, nome fantasia, CNPJ, e-mail e telefone para contato, e fará o download do instalador do software para gerenciamento e atendimento dos seus clientes. O usuário instalará o sistema e fará o login na aplicação através do seu nome de login, ou e-mail, e senha, e então escolherá com qual tipo de usuário deseja utilizar o sistema, administrador ou funcionário. 
<br>
No modo administrador o cliente  terá acesso a funções para auxiliar no gerenciamento do estabelecimento, sendo elas o Gerenciamento de Estoque, Cardápio e Relatórios. Também poderá visualizar as avaliações e comentários sobre o seu estabelecimento. Cada produto em estoque deverá ser registrado com nome, preço de compra e quantidade . Após adicionado o produto, ele receberá um ID automático para o gerenciamento de dados. Já no cardápio, os produtos deverão ser registrados com nome, categoria, preço, ingredientes (descrito pelo cliente), e sua relação com o estoque. A relação com o estoque é uma funcionalidade do sistema que torna a saída de produtos do estoque mais dinâmica, sem que o usuário tenha que remover manualmente todos os produtos que são vendidos. Com a função "relatórios", o cliente terá acesso ao seu balanço financeiro (relação de entrada e saída de mercadorias), produtos mais vendidos, horários e dias de maior atendimento, relatório de atendimento de cada garçom (quanto que cada um arrecadou) e gráficos para ajudá-lo na administração do estabelecimento. 

No modo “Atendimento”, o cliente visualizará um “quadro de mesas”, onde poderá definir a quantidade de mesas que estarão disponíveis para os clientes no aplicativo e atender os pedidos que serão mostrados de forma dinâmica e prática. Também terá acesso a comanda do cliente, onde poderá ver o total comprado por cada um e finalizar um atendimento.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

<b>Protótipo do Aplicativo Mobile</b> <br>

![Alt text](https://github.com/BarMobile/trab01/blob/master/app.png "Title")<br>

Prototipo Completo em: https://github.com/BarMobile/trab01/blob/master/PrototipoApp.pdf> <br>

<b>Protótipo do Sistema Principal</b><br>

![Alt text](https://github.com/BarMobile/trab01/blob/master/Principal.png "Title")<br>

<br>
<center>Protótipo Completo em: https://github.com/BarMobile/trab01/blob/master/PrototipoPrincipal.pdf</center>

#### 4.1 TABELA DE DADOS DO SISTEMA:
| Nome | Sobrenome | CPF | e-mail | Celular | Possui cartão | Numero do cartão | Dígito Verificador | Bandeira | Validade | Titular | Nome da empresa | CNPJ | Telefone | e-mail | Endereço | Responsável | Cardápio | Avaliações | Atendimentos |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Gary | Moura | 123.456.789 | gary@email.com | 27 9 9999 8888 | 1 | 456.456.456.456 | 987 | Visa | 05/2020 | Gary | ABC bar | 3143254 | 33224455 | abc@bar.com | rua x, 80 | José | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| José | Lima | 456.789.123 | ze@email.com | 27 9 8888 9999 | 0 | - | - | - | - | - | JKL restaurante | 6512374 | 33335556 | jkl@rest.com | av y, 150 | João | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Yago | Henrique | 951.385.357 | yago@email.com | 27 9 8787 6868 | 1 | 654.654.654.654 | 321 | Mastercard | 06/2019 | Yago | KWL bar | 3571748 | 33213321 | kwl@bar.com | rua b, 72 | Carlos | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Thalles | Lopes | 654.357.159 | thales@email.com | 27 9 8584 9194 | 0 | - | - | - | - | - | XYZ bar | 1438757 | 33324567 | xyz@bar.com | rua p, 234 | Henrique | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Luiz | Antônio | 356.156.657 | luiz@email.com | 27 9 99664 488 | 1 | 321.321.321.321 | 159 | Visa | 04/2018 | Luiz | BRT restaurante | 3510066 | 33456711 | brt@rest.com | av f, 345 | Antônio | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Gabriel | Marchezi | 954.687.621 | gabriel@email.com | 27 9 9911 5588 | 1 | 354.354.354.354 | 476 | Visa | 03/2019 | Gabriel | YYI restaurante | 2000647 | 33184455 | yyi@rest.com | rua t, 12 | Mário | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Paulo | Ricardo | 459.684.159 | paulo@email.com | 27 9 8855 6688 | 0 | - | - | - | - | - | ZXC bar | 2542476 | 33164878 | zxc@bar.com | rua x, 98 | Cleiton | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Brenno | Milanezi | 653.875.542 | brenno@email.com | 27 9 3344 5566 | 1 | 984.984.984.984 | 687 | Mastercard | 09/2017 | Brenno | CVB bar | 9870564 | 33261548 | cvb@bar.com | av b, 92 | Bernardo | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Ana | Carolina | 986.154.266 | ana@email.com | 27 9 8785 9898 | 0 | - | - | - | - | - | MNX bar | 6171468 | 33649754 | mnx@bar.com | av k, 108 | Tarcisio | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Ícaro | Gandini | 455.566.788 | icaro@email.com | 27 8 8686 8787 | 1 | 657.657.657.657 | 354 | Elo | 10/2020 | Ícaro | LKJ restaurante | 6211844 | 32315754 | lkj@rest.com | rua w, 37 | Lucas | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |


### 5.MODELO CONCEITUAL<br>
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/Modelo%20Conceitual.jpg "Modelo Conceitual")
    
#### 5.1 Validação do Modelo Conceitual
    Grupo 1: David, Ícaro, Leonardo Murakami, Luiz Henrique.
    Grupo 2: Brenno Milizanezi, Caio Pupolin, Lucas Sabino, Luiz Antônio.

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    USUARIO: Tabela que armazena as informações relativas ao usuário em geral da aplicação.
    NOME: Campo que armazena o nome de cada usuário cadastrado
    CPF: Campo que armazena o número de CPF para cada usuário cadastrado.
    Data_Nasc: Campo que armazena a data de nascimento do usuário cadastrado.
    -
    CONTATO: Tabela que armazena as informações relativas aos contatos dos usuários cadastrados.
    CONTATO: Campo que armazena o contato do usuário.
    ID_DONO: Campo que armazena o ID do dono do contato correspondente.
    ID_CONTATAVEL: Campo que armazena o ID do tipo de usuário.
    ID_TIPO: Campo que armazena o ID do tipo de contato correspondente.
    -   
    TIPO: Tabela que armazena o tipo do contato cadastrado.
    Nome: Campo que armazena o nome do meio de comunicação do contato correspondente.
    -
    CONTATAVEL: Tabela que armazena o tipo do usuário cadastrado.
    TIPO: Campo que armazena o tipo do usuário que está cadastrado.
    -
    CARTAO: Tabela que armazena as informações relativas aos cartões de credito cadastrados.
    NUMERO: Campo que armazena o Número impresso no cartão.
    VERIFICADOR: Campo que armazena o número do código verificador do cartão.
    VALIDADE: Campo que armazena a data de validade do cartão.
    BANDEIRA: Campo que armazena o nome da bandeira do cartão.
    CPF_TITULAR: Campo que armazena o CPF do titular do cartão.
    TITULAR: Campo que armazena o nome do titular do cartão.
    -
    PERTENCE A: Tabela que armazena as relações entre usuários e cartões.   
    ID_CARTÃO: Campo que armazena o ID do cartão.
    ID_USUARIO: Campo que armazena o ID do usuário a qual o cartão pertence.
    -   
    AVALIA:  Tabela que armazena as informações relativas as avaliações feitas pelos usuários sobre cada atendimento.
    AVALIACAO: Campo que armazena o comentário sobre a avaliação.
    NOTA: Campo que armazena o número relativo a nota da avaliação.
    ID_ATENDIMENTO: Campo que armazena o ID do atendimento correspondente a avaliação. 
    iD_USUARIO:  Campo que armazena o ID do usuário correspondente a sua avaliação.
    -
    RECEBE: Tabela que os IDs do usuário e de seu atendimento correspondente.
    ID_USUARIO: Campo que armazena o ID do usuário que recebeu o atendimento.
    ID_ATENDIMENTO: Campo que armazena o ID do atendimento correspondente.
    -
    ATENDIMENTO: Tabela que armazena as inforções relativas ao atendimento do usuário com a empresa.
    INICIO: Campo que armazena a hora de início do atendimento.
    FIM: Campo que armazena a hora de fim do atendimento.
    MESA: Campo que armazena a mesa do atendimento.
    ID_EMPREGADO: Campo que armazena o ID do empregado que realizou o atendimento correspondente.
    -
    EMPRESA: Tabela que armazena as informações de cada empresa cadastrada.
    NOME: Campo que armazena o nome de cada empresa cadastrada.
    CNPJ: Campo que armazena o CNPJ de cada empresa cadastrada.
    RESPONSAVEL: Campo que armazena o nome do responsável de cada empresa cadastrada.
    LOGRADOURO: Campo que armazena o endereço de cada empresa cadastrada. 
    ID_BAIRRO: Campo que armazena o ID do bairro da empresa em questão.
    -
    BAIRRO: Tabela que armazena as informações dos bairros das empresas cadastradas.
    Nome: Campo que armazena o nome do bairro da empresa cadastrada.
    -
    CIDADE: Tabela que armazena as informações das cidades das empresas cadastradas.
    NOME: Campo que armazena o nome da cidade da empresa cadastrada.
    -
    ESTADO: Tabela que armazena as informações dos estados das empresas cadastradas.
    NOME: Campo que armazena o nome do estado da empresa cadastrada.
    -
    VENDE: Tabela que armazena a relação entre empresa e produto.
    PREÇO: Campo que armazena o valor  da venda.
    ID_PRODUTO: Campo que armazena o ID do produto vendido.
    ID_EMPRESA: Campo que armazena o ID da empresa que vendeu o produto
    -
    PRODUTO: Tabela que armazena as informações dos produtos.
    DESCRIÇÃO: Campo que armazena a descrição do produto.
    CATEGORIA: Campo que armazena a categoria do produto
    -
    ITEM_VENDIDO: Tabela que armazena os itens vendidos.
    QUANTIDADE: Campo que armazena a quantidade de unidades do item foi vendido.
    PREÇO: Campo que armazena o preço da unidade do item vendido.   
    ID_PRODUTO: Campo que armazena o ID do produto vendido.
    ID_ATENDIMENTO: Campo que armazena o ID do atendimento em que o produto foi vendido.
    -
    COMPRA: Tabela que armazena os IDs dos itens comprados e os usuários que compraram 
    ID_ ITEM: Campo que armazena o ID do item que foi comprado.
    ID_USUARIO: Campo que armazena o ID do usuário que comprou o iten correspondente.
    -
    EMPREGADO: Tabela que armazena as informações dos empregados da empresa.
    NOME: Campo que armazena o nome de cada empregado da empresa.
    CPF: Campo que armazena o cadatro de pessoa física de cada empregado da empresa.
    SALARIO: Campo que armazena o sálario recebido pelo empregado.
    ID_EMPRESA: Campo que armazena o ID da empresa a qual o empregado trabalha.
    
    
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/Modelo%20Logico.jpg "Modelo Conceitual")


### 7	MODELO FÍSICO<br>

        CREATE TABLE Produto (
            ID int PRIMARY KEY,
            Descricao varchar(200),
            Categoria varchar(30)
        );

        CREATE TABLE Estado (
            Nome varchar(20),
            ID int PRIMARY KEY
        );

        CREATE TABLE Cidade (
            ID int PRIMARY KEY,
            Nome varchar(50),
            ID_estado int,
            FOREIGN KEY(ID_estado) REFERENCES Estado (ID)
        );

        CREATE TABLE Bairro (
            ID int PRIMARY KEY,
            Nome varchar(50),
            ID_cidade int,
            FOREIGN KEY(ID_cidade) REFERENCES Cidade (ID)
        );

        CREATE TABLE Empresa (
            Nome varchar(50),
            CNPJ char(14),
            ID int PRIMARY KEY,
            Responsavel varchar(50),
            Logradouro varchar(100),
            ID_bairro int,
            FOREIGN KEY(ID_bairro) REFERENCES Bairro (ID)
        );

        CREATE TABLE Empregado (
            Nome varchar,
            CPF char(11),
            ID int PRIMARY KEY,
            Salario numeric,
            ID_empresa int,
            FOREIGN KEY(ID_empresa) REFERENCES Empresa (ID)
        );

        CREATE TABLE Atendimento (
            ID int PRIMARY KEY,
            Inicio timestamp,
            Fim timestamp,
            Mesa int,
            ID_empregado int,
            FOREIGN KEY(ID_empregado) REFERENCES Empregado (ID)
        );

        CREATE TABLE Item_vendido (
            ID int PRIMARY KEY,
            Preco numeric,
            Quantidade int,
            ID_produto int,
            ID_atendimento int,
            FOREIGN KEY(ID_produto) REFERENCES Produto (ID),
            FOREIGN KEY (ID_atendimento) REFERENCES Atendimento (ID)
        );

        CREATE TABLE Contatavel (
            ID int PRIMARY KEY,
            Tipo varchar(50)
        );

        CREATE TABLE Tipo (
            ID int PRIMARY KEY,
            Nome varchar(20)
        );

        CREATE TABLE Contato (
            ID int PRIMARY KEY,
            Contato varchar(50),
            ID_dono int,
            ID_contatavel int,
            ID_tipo int,
            FOREIGN KEY(ID_contatavel) REFERENCES Contatavel (ID),
            FOREIGN KEY(ID_tipo) REFERENCES Tipo (ID)
        );

        CREATE TABLE Usuario (
            ID int PRIMARY KEY,
            CPF char(11),
            Nome varchar(100),
            Data_nasc Date
        );

        CREATE TABLE Cartao (
            ID int PRIMARY KEY,
            Numero char(16),
            Verificador int,
            Validade Date,
            Bandeira varchar(30),
            Titular varchar(50),
            CPF_Titular char(11)
        );

        CREATE TABLE pertence_a (
            ID_usuario int,
            ID_cartao int,
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID),
            FOREIGN KEY(ID_cartao) REFERENCES Cartao (ID)
        );

        CREATE TABLE recebe (
            ID_atendimento int,
            ID_usuario int,
            FOREIGN KEY(ID_atendimento) REFERENCES Atendimento (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE avalia (
            Nota real,
            Avaliacao varchar(300),
            ID_atendimento int,
            ID_usuario int,
            FOREIGN KEY(ID_atendimento) REFERENCES Atendimento (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE compra (
            Valor_pago numeric,
            ID_item int,
            ID_usuario int,
            FOREIGN KEY(ID_item) REFERENCES Item_vendido (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE vende (
            Preco numeric,
            ID_produto int,
            ID_empresa int,
            FOREIGN KEY(ID_produto) REFERENCES Produto (ID),
            FOREIGN KEY(ID_empresa) REFERENCES Empresa (ID)
        );
        ![Alt text](https://github.com/BarMobile/trab01/blob/master/CREATETABLES.SQL)


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
        
        INSERT INTO PRODUTO (ID, DESCRICAO, CATEGORIA) VALUES
            (1, 'Budweiser', 'Cerveja'),
            (2, 'Batata Frita', 'Porcao'),
            (3, 'Frango a passarinho', 'Porcao'),
            (4, 'Coca Cola 2l', 'Refrigerante');

        INSERT INTO ESTADO (ID, NOME) VALUES
           (1, 'Espirito Santo');

        INSERT INTO CIDADE (ID, NOME, ID_ESTADO) VALUES
           (1, 'Vila Velha', 1),
           (2, 'Vitória', 1),
           (3, 'Cariacica', 1),
           (4, 'Serra', 1);

        INSERT INTO BAIRRO (ID, NOME, ID_CIDADE) VALUES
            (1, 'Jardim Camburi', 2),
            (2, 'Praia da Costa', 1),
            (3,'Laranjeiras', 4),
            (4,'Campo Grande', 3);

        INSERT INTO EMPRESA (ID, NOME, CNPJ, RESPONSAVEL, LOGRADOURO, ID_BAIRRO) VALUES
            (1, 'ABC bar',  '3143254', 'José',	'rua x, 80', 2),
            (2, 'JKL restaurante',  '6512374',	'João', 'av y, 150', 3),
            (3, 'KWL bar', '3571748', 'Carlos', 'rua b, 72', 4),
            (4, 'XYZ bar', '1438757', 'Henrique', 'rua p, 234', 3),
            (5, 'BRT restaurante', '3510066', 'Antônio', 'av f, 345', 2),
            (6, 'YYI restaurante', '2000647', 'Mário', 'rua t, 12', 1),
            (7, 'ZXC bar',  '2542476', 'Cleiton', 'rua x, 98', 4),
            (8, 'CVB bar', '9870564', 'Bernardo', 'av b, 92', 3),
            (9, 'MNX bar', '6171468', 'Tarcisio', 'av k, 108', 2),
            (10, 'LKJ restaurante', '6211844', 'Lucas', 'rua w, 37', 1);

        INSERT INTO EMPREGADO (ID, NOME, CPF, SALARIO, ID_EMPRESA) VALUES 
            (1, 'FULANO', '11111111111', 3000, 6),
            (2, 'CICLANO', '22222222222', 2000, 5 ),
            (3, 'BELTRANO', '33333333333', 2500, 3),
            (4, 'JOAO', '44444444444', 1500, 2),
            (5, 'MARIA', '55555555555', 1800, 1),
            (6, 'JOSE', '66666666666', 4000, 4);

        INSERT INTO ATENDIMENTO (ID, INICIO, FIM, MESA, ID_EMPREGADO) VALUES
            (1, '20160926 22:11:00', '20160927 00:11:00', '3', 2),
            (2, '20160527 17:12:00', '20160527 18:55:00', '25', 3),
            (3, '20161028 20:23:00', '20161028 23:40:00', '12', 4),
            (4, '20160429 19:46:00', '20160429 21:31:00', '8', 5),
            (5, '20160930 21:12:00', '20161001 01:05:00', '19', 6);

        INSERT INTO ITEM_VENDIDO(ID, QUANTIDADE, PRECO, ID_PRODUTO) VALUES
            (1, 2, 10, 1),
            (2, 1, 15, 2),
            (3, 1, 60, 3),
            (4, 2, 10, 4);

        INSERT INTO CONTATAVEL (ID, TIPO) VALUES
            (1, 'usuario'),
            (2, 'empresa');

        INSERT INTO TIPO (ID, NOME) VALUES
            (1, 'telefone'),
            (2, 'email');

        INSERT INTO CONTATO(ID, CONTATO, ID_DONO, ID_CONTATAVEL,ID_TIPO) VALUES
            (1,'27999998888',1,1,2),
            (2,'27988889999',2,1,2),
            (3,'27987876868',3,1,2),
            (4,'27985849194',4,1,2),
            (5,'27999664488',5,1,2),
            (6,'27999115588',6,1,2),
            (7,'27988556688',7,1,2),
            (8,'27933445566',8,1,2),
            (9,'27987859898',9,1,2),
            (10,'27986868787',10,1,2),
            (11,'gary@email.com',5,2,1),
            (12,'ze@email.com',6,2,1),
            (13,'yago@email.com',7,2,1),
            (14,'thales@email.com',8,2,1),
            (15,'luiz@email.com',1,2,1),
            (16,'gabriel@email.com',2,2,1),
            (17,'paulo@email.com',3,2,1),
            (18,'brenno@email.com',4,2,1),
            (19,'ana@email.com',5,2,1),
            (20,'icaro@email.com',6,2,1);

        INSERT INTO USUARIO(ID,NOME,CPF,DATA_NASC)VALUES
            (1,'Gary',	'123456789',	'19970123'),
            (2,'José',	'456789123',	'19961110'),
            (3,'Yago',	'951385357',	'19950522'),
            (4,'Thalles',	'654357159',	'19960430'),
            (5,'Luiz',	'356156657',	'19970731'),
            (6,'Gabriel',	'954687621',	'19970615'),
            (7,'Paulo',	'459684159',	'19950202'),
            (8,'Brenno',	'653875542',	'19971106'),
            (9,'Ana',	'986154266',	'19960324'),
            (10,'Ícaro',	'455566788',	'19970620');

        INSERT INTO CARTAO (ID, NUMERO, VERIFICADOR, VALIDADE, BANDEIRA, TITULAR, CPF_TITULAR) VALUES
            (1, '456456456456', '987', '20200501', 'Visa', 'Gary', '123456789'),
            (2, '654654654654', '321', '20190601', 'Mastercard', 'Yago', '951385357'),
            (3, '321321321321', '159', '20180401', 'Visa', 'Luiz', '356156657'),
            (4, '354354354354', '476', '20190301', 'Visa',  'Gabriel', '954687621'),
            (5, '984984984984', '687', '20170901', 'Mastercard',  'Brenno', '653875542'),
            (6, '657657657657', '354', '20201001', 'Elo', 'Ícaro',  '455566788');

        INSERT INTO PERTENCE_A (ID_CARTAO, ID_USUARIO) VALUES
            (1, 1),
            (2, 3),
            (3, 5),
            (4, 6),
            (5, 8),
            (6, 10);

        INSERT INTO RECEBE(ID_ATENDIMENTO, ID_USUARIO) VALUES
            (1,2),
            (1,1),
            (2,4),
            (3,5),
            (3,6),
            (4,3);

        INSERT INTO AVALIA (NOTA, AVALIACAO, ID_ATENDIMENTO, ID_USUARIO) VALUES
            (1, 'ótimo', 5, 2),
            (2, 'mais ou menos mais pra mais', 3, 3),
            (3, 'mais ou menos mais pra menos', 2, 4);

        INSERT INTO COMPRA (ID_USUARIO, VALOR_PAGO, ID_ITEM) VALUES 
            (1, 10, 1),
            (2, 15, 2),
            (3, 20, 3),
            (4, 7, 1);

        INSERT INTO vende (id_produto, preco, id_empresa) VALUES 
            (1, 10,1),
            (1, 7,2),
            (2, 15, 3),
            (2, 15, 4),
            (4, 10, 1);
        
        
#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        CREATE TABLE Produto (
            ID int PRIMARY KEY,
            Descricao varchar(200),
            Categoria varchar(30)
        );

        CREATE TABLE Estado (
            Nome varchar(20),
            ID int PRIMARY KEY
        );

        CREATE TABLE Cidade (
            ID int PRIMARY KEY,
            Nome varchar(50),
            ID_estado int,
            FOREIGN KEY(ID_estado) REFERENCES Estado (ID)
        );

        CREATE TABLE Bairro (
            ID int PRIMARY KEY,
            Nome varchar(50),
            ID_cidade int,
            FOREIGN KEY(ID_cidade) REFERENCES Cidade (ID)
        );

        CREATE TABLE Empresa (
            Nome varchar(50),
            CNPJ char(14),
            ID int PRIMARY KEY,
            Responsavel varchar(50),
            Logradouro varchar(100),
            ID_bairro int,
            FOREIGN KEY(ID_bairro) REFERENCES Bairro (ID)
        );

        CREATE TABLE Empregado (
            Nome varchar,
            CPF char(11),
            ID int PRIMARY KEY,
            Salario numeric,
            ID_empresa int,
            FOREIGN KEY(ID_empresa) REFERENCES Empresa (ID)
        );

        CREATE TABLE Atendimento (
            ID int PRIMARY KEY,
            Inicio timestamp,
            Fim timestamp,
            Mesa int,
            ID_empregado int,
            FOREIGN KEY(ID_empregado) REFERENCES Empregado (ID)
        );

        CREATE TABLE Item_vendido (
            ID int PRIMARY KEY,
            Preco numeric,
            Quantidade int,
            ID_produto int,
            ID_atendimento int,
            FOREIGN KEY(ID_produto) REFERENCES Produto (ID),
            FOREIGN KEY (ID_atendimento) REFERENCES Atendimento (ID)
        );

        CREATE TABLE Contatavel (
            ID int PRIMARY KEY,
            Tipo varchar(50)
        );

        CREATE TABLE Tipo (
            ID int PRIMARY KEY,
            Nome varchar(20)
        );

        CREATE TABLE Contato (
            ID int PRIMARY KEY,
            Contato varchar(50),
            ID_dono int,
            ID_contatavel int,
            ID_tipo int,
            FOREIGN KEY(ID_contatavel) REFERENCES Contatavel (ID),
            FOREIGN KEY(ID_tipo) REFERENCES Tipo (ID)
        );

        CREATE TABLE Usuario (
            ID int PRIMARY KEY,
            CPF char(11),
            Nome varchar(100),
            Data_nasc Date
        );

        CREATE TABLE Cartao (
            ID int PRIMARY KEY,
            Numero char(16),
            Verificador int,
            Validade Date,
            Bandeira varchar(30),
            Titular varchar(50),
            CPF_Titular char(11)
        );

        CREATE TABLE pertence_a (
            ID_usuario int,
            ID_cartao int,
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID),
            FOREIGN KEY(ID_cartao) REFERENCES Cartao (ID)
        );

        CREATE TABLE recebe (
            ID_atendimento int,
            ID_usuario int,
            FOREIGN KEY(ID_atendimento) REFERENCES Atendimento (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE avalia (
            Nota real,
            Avaliacao varchar(300),
            ID_atendimento int,
            ID_usuario int,
            FOREIGN KEY(ID_atendimento) REFERENCES Atendimento (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE compra (
            Valor_pago numeric,
            ID_item int,
            ID_usuario int,
            FOREIGN KEY(ID_item) REFERENCES Item_vendido (ID),
            FOREIGN KEY(ID_usuario) REFERENCES Usuario (ID)
        );

        CREATE TABLE vende (
            Preco numeric,
            ID_produto int,
            ID_empresa int,
            FOREIGN KEY(ID_produto) REFERENCES Produto (ID),
            FOREIGN KEY(ID_empresa) REFERENCES Empresa (ID)
        );

        INSERT INTO PRODUTO (ID, DESCRICAO, CATEGORIA) VALUES
            (1, 'Budweiser', 'Cerveja'),
            (2, 'Batata Frita', 'Porcao'),
            (3, 'Frango a passarinho', 'Porcao'),
            (4, 'Coca Cola 2l', 'Refrigerante');

        INSERT INTO ESTADO (ID, NOME) VALUES
           (1, 'Espirito Santo');

        INSERT INTO CIDADE (ID, NOME, ID_ESTADO) VALUES
           (1, 'Vila Velha', 1),
           (2, 'Vitória', 1),
           (3, 'Cariacica', 1),
           (4, 'Serra', 1);

        INSERT INTO BAIRRO (ID, NOME, ID_CIDADE) VALUES
            (1, 'Jardim Camburi', 2),
            (2, 'Praia da Costa', 1),
            (3,'Laranjeiras', 4),
            (4,'Campo Grande', 3);

        INSERT INTO EMPRESA (ID, NOME, CNPJ, RESPONSAVEL, LOGRADOURO, ID_BAIRRO) VALUES
            (1, 'ABC bar',  '3143254', 'José',	'rua x, 80', 2),
            (2, 'JKL restaurante',  '6512374',	'João', 'av y, 150', 3),
            (3, 'KWL bar', '3571748', 'Carlos', 'rua b, 72', 4),
            (4, 'XYZ bar', '1438757', 'Henrique', 'rua p, 234', 3),
            (5, 'BRT restaurante', '3510066', 'Antônio', 'av f, 345', 2),
            (6, 'YYI restaurante', '2000647', 'Mário', 'rua t, 12', 1),
            (7, 'ZXC bar',  '2542476', 'Cleiton', 'rua x, 98', 4),
            (8, 'CVB bar', '9870564', 'Bernardo', 'av b, 92', 3),
            (9, 'MNX bar', '6171468', 'Tarcisio', 'av k, 108', 2),
            (10, 'LKJ restaurante', '6211844', 'Lucas', 'rua w, 37', 1);

        INSERT INTO EMPREGADO (ID, NOME, CPF, SALARIO, ID_EMPRESA) VALUES 
            (1, 'FULANO', '11111111111', 3000, 6),
            (2, 'CICLANO', '22222222222', 2000, 5 ),
            (3, 'BELTRANO', '33333333333', 2500, 3),
            (4, 'JOAO', '44444444444', 1500, 2),
            (5, 'MARIA', '55555555555', 1800, 1),
            (6, 'JOSE', '66666666666', 4000, 4);

        INSERT INTO ATENDIMENTO (ID, INICIO, FIM, MESA, ID_EMPREGADO) VALUES
            (1, '20160926 22:11:00', '20160927 00:11:00', '3', 2),
            (2, '20160527 17:12:00', '20160527 18:55:00', '25', 3),
            (3, '20161028 20:23:00', '20161028 23:40:00', '12', 4),
            (4, '20160429 19:46:00', '20160429 21:31:00', '8', 5),
            (5, '20160930 21:12:00', '20161001 01:05:00', '19', 6);

        INSERT INTO ITEM_VENDIDO(ID, QUANTIDADE, PRECO, ID_PRODUTO, ID_ATENDIMENTO) VALUES
            (1, 2, 10, 1, 1),
            (2, 1, 15, 2, 2),
            (3, 1, 60, 3, 3),
            (4, 2, 10, 4, 4);

        INSERT INTO CONTATAVEL (ID, TIPO) VALUES
            (1, 'usuario'),
            (2, 'empresa');

        INSERT INTO TIPO (ID, NOME) VALUES
            (1, 'telefone'),
            (2, 'email');

        INSERT INTO CONTATO(ID, CONTATO, ID_DONO, ID_CONTATAVEL,ID_TIPO) VALUES
            (1,'27999998888',1,1,2),
            (2,'27988889999',2,1,2),
            (3,'27987876868',3,1,2),
            (4,'27985849194',4,1,2),
            (5,'27999664488',5,1,2),
            (6,'27999115588',6,1,2),
            (7,'27988556688',7,1,2),
            (8,'27933445566',8,1,2),
            (9,'27987859898',9,1,2),
            (10,'27986868787',10,1,2),
            (11,'gary@email.com',5,2,1),
            (12,'ze@email.com',6,2,1),
            (13,'yago@email.com',7,2,1),
            (14,'thales@email.com',8,2,1),
            (15,'luiz@email.com',1,2,1),
            (16,'gabriel@email.com',2,2,1),
            (17,'paulo@email.com',3,2,1),
            (18,'brenno@email.com',4,2,1),
            (19,'ana@email.com',5,2,1),
            (20,'icaro@email.com',6,2,1);

        INSERT INTO USUARIO(ID,NOME,CPF,DATA_NASC)VALUES
            (1,'Gary',	'123456789',	'19970123'),
            (2,'José',	'456789123',	'19961110'),
            (3,'Yago',	'951385357',	'19950522'),
            (4,'Thalles',	'654357159',	'19960430'),
            (5,'Luiz',	'356156657',	'19970731'),
            (6,'Gabriel',	'954687621',	'19970615'),
            (7,'Paulo',	'459684159',	'19950202'),
            (8,'Brenno',	'653875542',	'19971106'),
            (9,'Ana',	'986154266',	'19960324'),
            (10,'Ícaro',	'455566788',	'19970620');

        INSERT INTO CARTAO (ID, NUMERO, VERIFICADOR, VALIDADE, BANDEIRA, TITULAR, CPF_TITULAR) VALUES
            (1, '456456456456', '987', '20200501', 'Visa', 'Gary', '123456789'),
            (2, '654654654654', '321', '20190601', 'Mastercard', 'Yago', '951385357'),
            (3, '321321321321', '159', '20180401', 'Visa', 'Luiz', '356156657'),
            (4, '354354354354', '476', '20190301', 'Visa',  'Gabriel', '954687621'),
            (5, '984984984984', '687', '20170901', 'Mastercard',  'Brenno', '653875542'),
            (6, '657657657657', '354', '20201001', 'Elo', 'Ícaro',  '455566788');

        INSERT INTO PERTENCE_A (ID_CARTAO, ID_USUARIO) VALUES
            (1, 1),
            (2, 3),
            (3, 5),
            (4, 6),
            (5, 8),
            (6, 10);

        INSERT INTO RECEBE(ID_ATENDIMENTO, ID_USUARIO) VALUES
            (1,2),
            (1,1),
            (2,4),
            (3,5),
            (3,6),
            (4,3);

        INSERT INTO AVALIA (NOTA, AVALIACAO, ID_ATENDIMENTO, ID_USUARIO) VALUES
            (1, 'ótimo', 5, 2),
            (2, 'mais ou menos mais pra mais', 3, 3),
            (3, 'mais ou menos mais pra menos', 2, 4);

        INSERT INTO COMPRA (ID_USUARIO, VALOR_PAGO, ID_ITEM) VALUES 
            (1, 10, 1),
            (2, 15, 2),
            (3, 20, 3),
            (4, 7, 1);

        INSERT INTO vende (id_produto, preco, id_empresa) VALUES 
            (1, 10,1),
            (1, 7,2),
            (2, 15, 3),
            (2, 15, 4),
            (4, 10, 1);


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        SELECT * FROM PRODUTO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_produto.PNG "Produto")

        SELECT * FROM ESTADO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_estado.PNG "Estado")

        SELECT * FROM CIDADE;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_cidade.PNG "Cidade")

        SELECT * FROM BAIRRO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_bairro.PNG "Bairro")

        SELECT * FROM EMPRESA;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_empresa.PNG "Empresa")

        SELECT * FROM EMPREGADO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_empregado.PNG "Empregado")

        SELECT * FROM ATENDIMENTO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_atendimento.PNG "Atendimento")

        SELECT * FROM ITEM_VENDIDO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_item_vendido.PNG "Item vendido")

        SELECT * FROM CONTATAVEL;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_contatavel.PNG "Contatavel")

        SELECT * FROM TIPO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_tipo.PNG "Tipo")

        SELECT * FROM CONTATO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_contato.PNG "Contato")

        SELECT * FROM USUARIO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_usuario.PNG "Usuario")

        SELECT * FROM CARTAO;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_cartao.PNG "Cartão")

        SELECT * FROM PERTENCE_A;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_pertence_a.PNG "Pertence a")

        SELECT * FROM RECEBE;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_recebe.PNG "Recebe")

        SELECT * FROM AVALIA;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_avalia.PNG "Avalia")

        SELECT * FROM COMPRA;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_compra.PNG "Compra")

        SELECT * FROM VENDE;
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/select_all/select_all_vende.PNG "Vende")
        
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
        SELECT * FROM USUARIO WHERE DATA_NASC > '1997-01-01'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/where/where_usuario.PNG "Usuario")

        SELECT * FROM EMPRESA WHERE NOME = 'ABC bar'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/where/where_empresa.PNG "Empresa")

        SELECT * FROM ATENDIMENTO WHERE MESA = 3
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/where/where_atendimento.PNG "Atendimento")
        
        SELECT * FROM CARTAO WHERE VALIDADE > '2018-06-12'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/where/where_cartao.PNG "Cartão")

        SELECT * FROM AVALIA WHERE NOTA > 2
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/where/where_avalia.PNG "Avalia")

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
        SELECT * FROM EMPREGADO WHERE SALARIO > 2000
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/logicos/logicos_empregado.PNG "Empregado")
        
        SELECT * FROM ITEM_VENDIDO WHERE PRECO > 10
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/logicos/logicos_item_vendido.PNG "Item vendido")

        SELECT * FROM ATENDIMENTO WHERE FIM < '2016-05-10 23:50:00'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/logicos/logicos_atendimento.PNG "Atendimento")
        
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
        SELECT * FROM EMPRESA WHERE NOME NOT LIKE '%IFES%'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/like/like_empresa.PNG "Empresa")
        
        SELECT * FROM PRODUTO WHERE DESCRICAO LIKE 'Coca Cola%'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/like/like_produto.PNG "Produto")

        SELECT * FROM CARTAO WHERE TITULAR LIKE '%JO_O%'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/like/like_cartao.PNG "Cartao")
        
        SELECT * FROM CONTATO WHERE CONTATO LIKE '2799%'
![Alt text](https://github.com/BarMobile/trab01/blob/master/imagens/like/like_contato.PNG "Contato")

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
        `UPDATE USUARIO SET DATA_NASC = '19900220' WHERE ID = 1`
        `UPDATE EMPREGADO SET SALARIO = 3000 WHERE NOME IS LIKE 'FULANO'`
        `UPDATE CARTAO SET TITULAR = 'CICLANO' WHERE NUMERO = '5050404030302020'`
        `DELETE FROM USUARIO WHERE ID = 2`
        `DELETE FROM ATENDIMENTO WHERE MESA = 10`
        `DELETE FROM avalia WHERE NOTA = 0`
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
      
        SELECT MESA, NOTA, AVALIACAO, INICIO, FIM
        FROM AVALIA
        INNER JOIN ATENDIMENTO
        ON (AVALIA.ID_ATENDIMENTO = ATENDIMENTO.ID)
        ORDER BY AVALIACAO;
        
        SELECT CONTATO.ID, CONTATO, TIPO  
        FROM CONTATO
        INNER JOIN CONTATAVEL
        ON(CONTATO.ID_CONTATAVEL = CONTATAVEL.ID)
        ORDER BY CONTATO.ID;
        
        SELECT NOME, CPF, NUMERO
        FROM USUARIO
        INNER JOIN CARTAO
        ON(USUARIO.CPF = CARTAO.CPF_TITULAR)
        
        SELECT NOME,NUMERO 
        FROM USUARIO
        INNER JOIN PERTENCE_A
        ON (USUARIO.ID = PERTENCE_A.ID_USUARIO)
        INNER JOIN CARTAO
        ON (PERTENCE_A.ID_CARTAO = CARTAO.ID)
        
        SELECT NOME, CPF, NOTA, AVALIACAO, MESA
        FROM USUARIO
        INNER JOIN AVALIA
        ON (USUARIO.ID = AVALIA.ID_USUARIO)
        INNER JOIN ATENDIMENTO
        ON (AVALIA.ID_ATENDIMENTO = ATENDIMENTO.ID)
        
        
        
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        SELECT TIPO, COUNT(*) AS QUANTIDADE
        FROM CONTATAVEL
        GROUP BY TIPO;
        
        SELECT DESCRICAO, COUNT(*) AS QUANTIDADE
        FROM PRODUTO
        GROUP BY DESCRICAO;
        
        SELECT NOME, COUNT(*) AS QUANTIDADE
        FROM BAIRRO
        GROUP BY NOME;
        
        SELECT NOTA, COUNT(*) AS QUANTIDADE
        FROM AVALIA
        GROUP BY NOTA;
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
        SELECT MESA, NOTA FROM ATENDIMENTO
        LEFT OUTER JOIN AVALIA
        ON (ATENDIMENTO.ID = AVALIA.ID_ATENDIMENTO)
        
        SELECT MESA, NOTA FROM AVALIA
        RIGHT OUTER JOIN ATENDIMENTO
        ON (ATENDIMENTO.ID = AVALIA.ID_ATENDIMENTO)
        
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
        
        CREATE VIEW SALARIO_ANUAL_EMPREGADO AS
        (SELECT NOME,SALARIO*12 AS SALARIO ANUAL
        FROM EMPREGADO)
        
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
### OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.



