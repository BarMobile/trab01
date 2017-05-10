# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gary Moura da Silva: garymsilva@outlook.com<br>
José Guilherme Silva de Lima: guislima47@gmail.com<br>
Thalles Vargas Ribeiro Lopes: tvrl07031997@gmail.com<br>
Yago Henrique Zanon Trarbach: yagozt.henrique@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>
	Plataforma que visa melhorar a eficiência no atendimento de bares, restaurantes e lanchonetes, já que ao acessá-lo como cliente permite que faça seu pedido pelo celular, além de outras funcionalidades como por exemplo poder até mesmo pagar a comanda pelo celular uma vez que o cartão foi cadastrado. Na visão do administrador o dono teria uma visão muito mais ampla de seu estabelecimento facilitando o seu gerenciamento com uma interface intuitiva.

### 3.MINI-MUNDO<br>
O FastServ é uma plataforma para atendimento de clientes de bares,restaurantes e lanchonetes. Há duas formas de acessá-lo, uma com o foco no cliente e outra com o foco no estabelecimento.
Na visão do cliente o acesso à plataforma será via smartphones e tablets, através de um aplicativo mobile. Ao abrir a aplicação pela primeira vez, o usuário terá a opção de fazer cadastro no sistema ou fazer login diretamente. Caso não seja cadastrado, irá para a página de cadastro onde fornecerá os seus dados, que são seu nome completo, CPF, e-mail e data de nascimento. Depois de cadastrado, o usuário poderá editar suas informações de conta e adicionar um cartão de crédito para fazer pagamentos via aplicação ao clicar no botão no canto superior esquerdo da tela, que mostrará o menu do aplicativo, e escolher a opção “Meus Cartões”. Lá o cliente deverá fornecer os dados sobre o cartão que deseja cadastrar, sendo eles o número do cartão, validade, nome do titular e código de segurança. O cliente já cadastrado, ao fazer o login, terá acesso a uma lista com todos os bares e restaurantes cadastrados no sistema. Ao clicar em um deles poderá ver a sua 
avaliação de 0 a 5 estrelas, descrição do estabelecimento, cardápio e fotos do local. O cliente também poderá visualizar em um mapa sua localização e os estabelecimentos ao seu redor e terá a opção de visualizar o caminho que deverá seguir para chegar até um bar ou restaurante de sua escolha.
Caso esteja em um estabelecimento cadastrado no sistema, o cliente poderá ter acesso à plataforma de atendimento virtual ao fazer a leitura de um QR Code, que se disponibilizará em cima de uma das mesas do recinto, através do aplicativo. Se ele for o primeiro da mesa, se tornará administrador da mesma, ou seja, todos os clientes que repetirem o processo de sincronização com o estabelecimento através daquela mesa enviarão uma solicitação de permissão para o administrador.<br>
Após a sincronização, o usuário visualizará o cardápio do estabelecimento, dessa vez com o preço, dividido em diversas categorias (categorias definidas pelo estabelecimento), também terá a opção de filtrar ou buscar um produto. Ao clicar em um produto, poderá ver os ingredientes que o compõe e o tempo de espera médio para a sua chegada. Se quiser fazer o pedido do produto, poderá clicar no “sino” ao lado de seu nome, e escolher quais os membros da mesa farão o consumo do mesmo para facilitar na divisão do pagamento.<br>
Depois de confirmar o pedido, o usuário poderá acessar a opção “comanda”, onde além de visualizar tudo que está sendo gasto na mesa em grupo e individualmente, poderá também ter acesso aos pedidos que ainda não foram entregues e seus status. Caso estejam com o status de coloração amarela, eles ainda não foram atendidos pelo garçom ou pela cozinha, o que quer dizer que o pedido ainda pode ser cancelado diretamente pelo aplicativo. Caso estejam com o status de coloração verde, o pedido já foi atendido pelo garçom ou pela cozinha, o que quer dizer que o cancelamento só poderá ser feito pessoalmente com um dos funcionários do local. 
<br>Ainda na “comanda”, o usuário poderá fazer o pagamento da conta clicando na opção “pagamento”, onde terá a opção de escolher se pagará pelo aplicativo ou em dinheiro no caixa do estabelecimento. O valor a pagar será dividido de acordo com o que foi definido durante cada pedido realizado (pedido para todos ou pedidos individuais), mostrando na tela o que cada usuário da mesa deverá pagar e também o valor total, incluindo os 10% do garçom. Caso o usuário não deseje incluir a taxa no pagamento, deverá finalizar o atendimento pessoalmente junto ao caixa.
<br> Já na visão do Estabelecimento o acesso será através de um sistema instalado em desktop com sistema operacional Windows. O cliente fará o seu cadastro no site, informando o nome do estabelecimento, nome fantasia, CNPJ, e-mail e telefone para contato, e fará o download do instalador do software para gerenciamento e atendimento dos seus clientes. O usuário instalará o sistema e fará o login na aplicação através do seu nome de login, ou e-mail, e senha, e então escolherá com qual tipo de usuário deseja utilizar o sistema, administrador ou funcionário. Cada modo terá serviços e funções específicas. O sistema é dividido dessa forma para proteger as informações confidenciais do estabelecimento, e dar mais segurança ao administrador. <br>
No modo administrador o usuário visualizará um menu com as funções disponíveis no modo, sendo elas Estoque, Cardápio e Relatórios. Também poderá optar por “Visualizar Estabelecimento”, onde poderá editar as informações que ficarão visíveis aos “usuários clientes”, como fotos e descrição do local. Também poderá visualizar as avaliações e comentários sobre o seu estabelecimento. Ao clicar na opção “Estoque”, o usuário terá acesso a todos os produtos que comprou e tem disponível nesse momento, podendo adicionar mais produtos ou editá-los. Cada produto deverá ser registrado com nome, preço de compra, quantidade e validade. Após adicionado o produto, ele receberá um ID automático para o gerenciamento de dados.<br>
Ao clicar na opção “Cardápio”, o usuário terá acesso ao cardápio que será disponibilizado para os seus clientes no aplicativo mobile. Ele poderá adicionar novos produtos, que, nesse caso, deverão ser registrados com nome, categoria, preço, ingredientes (descrito pelo usuário), e sua relação com o estoque. A relação com o estoque é uma funcionalidade do sistema que torna a saída de produtos do estoque mais dinâmica, sem que o usuário tenha que ficar removendo manualmente todos os produtos que são vendidos. Assim, um produto específico pode se relacionar com um ou mais itens armazenados em estoque, que serão removidos instantaneamente quando o produto for vendido.
Ao clicar na opção “Relatórios”, o usuário terá acesso ao seu balanço financeiro (relação de entrada e saída de mercadorias), produtos mais vendidos, horários e dias de maior atendimento, relatório de atendimento de cada garçom (quanto que cada um arrecadou) e gráficos para ajudá-lo na administração do estabelecimento. No modo funcionário ao acessá-lo, o usuário poderá transitar entre as funcionalidades do modo de “atendimento” e do modo de “cozinha”. O modo cozinha é basicamente uma extensão do “Estoque” (modo administrador), onde será possível fazer a remoção manual de alguns itens que não são relacionados diretamente com o cardápio, como pacotes grandes de carne, que podem ser usados para diversos pratos diferentes. No modo “Atendimento”, o usuário visualizará um “quadro de mesas”, onde poderá definir a quantidade de mesas que estarão disponíveis para os clientes no aplicativo e atender os pedidos que serão mostrados de forma dinâmica e prática. Ao clicar em uma das mesas, terá acesso a comanda do cliente, onde poderá ver o total comprado por cada um e finalizar um atendimento.

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
![Alt text](https://github.com/BarMobile/trab01/blob/master/Modelo%20conceitual.jpg "Modelo Conceitual")
    
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
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


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

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
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



