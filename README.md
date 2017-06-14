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
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>
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

    Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    (esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual)

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/BarMobile/trab01/blob/master/Modelo%20Bar.jpg "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 

    USUARIO: Tabela que armazena as informações relativas ao usuário em geral da aplicação.
    CPF: Campo que armazena o número de CPF para cada usuário
    Data_Nasc: Campo que armazena a data de nascimento do usuário cadastrado.
    
    CARTAO: Tabela que armazena as informações relativas aos cartões de credito cadastrados.
    NUMERO: Campo que armazena o Número impresso no cartão.
    VERIFICADOR: Campo que armazena o número do código verificador do cartão.
    VALIDADE: Campo que armazena a data de validade do cartão.
    BANDEIRA: Campo que armazena o nome da bandeira do cartão.
    CPF_TITULAR: Campo que armazena o CPF do titular do cartão.
    TITULAR: Campo que armazena o nome do titular do cartão.
    
    USUARIO_CARTAO: Tabela que armazena as informações relativas ao usuário e seus respectivos cartões.
    
    AVALIACAO:  Tabela que armazena as informações relativas as avaliações feitas pelos usuários sobre cada atendimento.
    TEXTO: Campo que armazena o comentário sobre a avaliação.
    NOTA: Campo que armazena o número relativo a nota da avaliação.
    
    ATENDIMENTO: Tabela que armazena as inforções relativas ao atendimento do usuário com a empresa.
    INICIO: Campo que armazena a hora de início do atendimento.
    FIM: Campo que armazena a hora de fim do atendimento.
    MESA: Campo que armazena a mesa do atendimento.
    
    USUARIO_ATENDIMENTO: Tabela que armazena as informações relativas ao atendimento para cada usuário.
    
    EMPRESA: Tabela que armazena as informações de cada empresa cadastrada.
    NOME: Campo que armazena o nome de cada empresa cadastrada.
    CNPJ: Campo que armazena o CNPJ de cada empresa cadastrada.
    RESPONSÁVEL: Campo que armazena o nome do responsável de cada empresa cadastrada.
    LOGRADOURO: Campo que armazena o endereço de cada empresa cadastrada. 
    
    BAIRRO: Tabela que armazena as informações do bairro das empresas cadastradas.
    Nome: Campo que armazena o nome do bairro da empresa cadastrada.
    
    CIDADE: Tabela que armazena as informações da cidade das empresas cadastradas.
    NOME: Campo que armazena o nome da cidade da empresa cadastrada.
    
    ESTADO: Tabela que armazena as informações dos estados das empresas cadastradas.
    NOME: Campo que armazena o nome do estado da empresa cadastrada.
    
    PRODUTO: Tabela que armazena as informações dos produtos.
    DESCRIÇÃO: Campo que armazena a descrição do produto.
    CATEGORIA: Campo que armazena a categoria do produto
    
    PRODUTO_ESTOQUE: Tabela que armazena as informações relativas ao estoque da empresa.
    
    ITEM_ESTOQUE: Tabela que armazena as informações relativas ao estoque da empresa.
    DESCRIÇÃO: Campo que armazena a descrição do item que está no estoque da empresa.
    
    EMPRESA_ESTOQUE: Tabela que armazena as informações relativas ao estoque da empresa.
    QUANTIDADE: Campo que armazena a quantidade de unidades do item que está no estoque.
    
    ITEM_VENDIDO: Tabela que armazena os itens vendidos.
    QUANTIDADE: Campo que armazena a quantidade de unidades do item foi vendido.
    PREÇO: Campo que armazena o preço da unidade do item vendido.   
    
    USUARIO_ITEM: Tabela que armazena os itens comprados dos usuários.
    VALOR: Campo que armazena o valor da unidade do item comprado pelo usuário

    ATENDIMENTO: Tabela que armazena as informações das mesas atendidas.
    INICIO: Campo que armazena quando o atendimento foi iniciado.
    FIM: Campo que armazena quando o atendimento foi finalizado.
    MESA: Campo que armazena a mesa correspondente ao atendimento.
    
    EMPREGADO: Tabela que armazena as informações dos empregados da empresa.
    NOME: Campo que armazena o nome de cada empregado da empresa.
    CPF: Campo que armazena o cadatro de pessoa física de cada empregado da empresa.
    
    
### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
        
        
        
        Entrega até este ponto em: (Data a ser definida)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)
        
        INSERT INTO USUARIO (ID, NOME, CPF, DATA_NASC) VALUES 
        (1, 'Gary', '123.456.789', '19970123'),
        (2, 'José', '456.789.123', '19961110'),
        (3, 'Yago', '951.385.357', '19950522'),
        (4, 'Thalles', '654.357.159', '19960430'),
        (5, 'Luiz', '356.156.657', '19970731'),
        (6, 'Gabriel', '954.687.621', '19970615'),
        (7, 'Paulo', '459.684.159', '19950202'),
        (8, 'Brenno', '653.875.542', '19971106'),
        (9, 'Ana', '986.154.266', '19960324'),
        (10, 'Ícaro', '455.566.788', '19970620');

        INSERT INTO CARTAO (ID, NUMERO, VERIFICADOR, VALIDADE, BANDEIRA, TITULAR, CPF_TITULAR) VALUES
        (1, '456.456.456.456', '987', 05/2020, 'Visa', 'Gary', '123.456.789'),
        (2, '654.654.654.654', '321', 06/2019, 'Mastercard', 'Yago', '951385357'),
        (3, '321.321.321.321', '159', 04/2018, 'Visa', 'Luiz', '356156657'),
        (4, '354.354.354.354', '476', 03/2019, 'Visa',  'Gabriel', '954.687.621'),
        (5, '984.984.984.984', '687', 09/2017, 'Mastercard',  'Brenno', '653.875.542'),
        (6, '657.657.657.657', '354', 10/2020, 'Elo', 'Ícaro',  '455.566.788');

        INSERT INTO EMPRESA (ID, NOME, CNPJ, RESPONSAVEL, LOGRADOURO) VALUES
        (1, 'ABC bar',  '3143254', 'José',	'rua x, 80'),
        (2, 'JKL restaurante',  '6512374',	'João', 'av y, 150'),
        (3, 'KWL bar', '3571748', 'Carlos', 'rua b, 72'),
        (4, 'XYZ bar', '1438757', 'Henrique', 'rua p, 234'),
        (5, 'BRT restaurante', '3510066', 'Antônio', 'av f, 345'),
        (6, 'YYI restaurante', '2000647', 'Mário', 'rua t, 12'),
        (7, 'ZXC bar',  '2542476', 'Cleiton', 'rua x, 98'),
        (8, 'CVB bar', '9870564', 'Bernardo', 'av b, 92'),
        (9, 'MNX bar', '6171468', 'Tarcisio', 'av k, 108'),
        10, 'LKJ restaurante', '6211844', 'Lucas', 'rua w, 37');

        INSERT INTO ATENDIMENTO (ID, INICIO, FIM, MESA, ID_EMPRESA) VALUES
        (1, '26/09/2016 22:11:00', '27/09/2016 00:11:00', '3', 5),
        (2, '27/05/2016 17:12:00', '27/05/2016 18:55:00', '25', 8),
        (3, '28/10/2016 20:23:00', '28/10/2016 23:40:00', '12', 4),
        (4, '29/04/2016 19:46:00', '29/04/2016 21:31:00', '8', 9),
        (5, '30/09/2016 21:12:00', '01/10/2016 01:05:00', '19', 6);


#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        `SELECT * FROM CARTAO`
        `SELECT * FROM USUARIO_CARTAO`
        `SELECT * FROM USUARIO`
        `SELECT * FROM USUARIO_CONTATO`
        `SELECT * FROM CONTATO`
        `SELECT * FROM USUARIO_ATENDIMENTO`
        `SELECT * FROM ATENDIMENTO`
        `SELECT * FROM AVALIACAO`
        `SELECT * FROM EMPREGADO`
        `SELECT * FROM EMPRESA_CONTATO`
        `SELECT * FROM EMPRESA`
        `SELECT * FROM USUARIO_ITEM`
        `SELECT * FROM ITEM_VENDIDO`
        `SELECT * FROM PRODUTO`
        `SELECT * FROM EMPRESA_PRODUTO`
        `SELECT * FROM PRODUTO_ESTOQUE`
        `SELECT * FROM EMPRESA_ESTOQUE`
        `SELECT * FROM ITEM_ESTOQUE`
        `SELECT * FROM BAIRRO`
        `SELECT * FROM CIDADE`
        `SELECT * FROM ESTADO`
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
        `SELECT * FROM USUARIO WHERE DT_NASC > '20000322'`
        `SELECT * FROM EMPRESA WHERE NOME = 'IFES'`
        `SELECT * FROM ATENDIMENTO WHERE MESA = 5`
        `SELECT * FROM CARTAO WHERE VALIDADE > 20170612`
        `SELECT * FROM AVALICAO WHERE NOTA > 3`
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
        `SELECT * FROM EMPREGADO WHERE SALARIO > 2000`
        `SELECT * FROM ITEM_VENDIDO WHERE PRECO > 100 `
        `SELECT * FROM ATENDIMENTO WHERE FIM IS NULL`
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
        `SELECT * FROM EMPRESA WHERE NOME IS NOT LIKE '%IFES%'`
        `SELECT * FROM PRODUTO WHERE DESCRICAO IS LIKE '%BATATA%'`
        `SELECT * FROM CARTAO WHERE TITULAR IS LIKE '%JOAO%'`
        `SELECT * FROM CONTATO WHERE TIPO IS LIKE 'CEL'`
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
        `UPDATE USUARIO SET DATA_NASC = '19900220' WHERE ID = 1`
        `UPDATE EMPREGADO SET SALARIO = 3000 WHERE NOME IS LIKE 'FULANO'`
        `UPDATE CARTAO SET TITULAR = 'CICLANO' WHERE NUMERO = '5050404030302020'`
        `DELETE FROM USUARIO WHERE ID = 2`
        `DELETE FROM ATENDIMENTO WHERE MESA = 10`
        `DELETE FROM AVALIACAO WHERE NOTA = 0`
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
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



