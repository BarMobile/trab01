# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gary Moura da Silva: garymsilva@outlook.com<br>
José Guilherme Silva de Lima: guislima47@gmail.com<br>
Thales Lopes: email@dominio.com<br>
Yago Henrique: yagozt.henrique@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

### 3.MINI-MUNDO<br>
Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

###4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

<center><b>Protótipo do Aplicativo Mobile</center></b> 


![Alt text](https://github.com/BarMobile/trab01/blob/master/app.png "Title")


<center>Prototipo Completo em: https://github.com/BarMobile/trab01/blob/master/PrototipoApp.pdf</center> <br>

<center><b>Protótipo do Sistema Principal</center></b>


![Alt text](https://github.com/BarMobile/trab01/blob/master/Principal.png "Title")


<center>Protótipo Completo em: https://github.com/BarMobile/trab01/blob/master/PrototipoPrincipal.pdf</center>

#### 4.1 TABELA DE DADOS DO SISTEMA:
| Nome | Sobrenome | CPF | e-mail | Celular | Possui cartão | Numero do cartão | Dígito Verificador | Bandeira | Validade | Titular | Nome da empresa | CNPJ | Telefone | e-mail | Endereço | Responsável | Cadápio | Avaliações | Atendimentos |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Gary | Moura | 123.456.789 | gary@email.com | 27 9 9999 8888 | 1 | 456.456.456.456 | 987 | Visa | 05/2020 | Gary | ABC bar | 3143254 | 33224455 | abc@bar.com | rua x, 80 | José | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| José | Lima | 456.789.123 | ze@email.com | 27 9 8888 9999 | 0 | - | - | - | - | - | JKL restaurante | 6512374 | 33335556 | jkl@rest.com | av y, 150 | João | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Yago | Henrique | 951.385.357 | yago@email.com | 27 9 8787 6868 | 1 | 654.654.654.654 | 321 | Mastercard | 06/2019 | Yago | KWL bar | 3571748 | 33213321 | kwl@bar.com | rua b, 72 | Carlos | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
| Thales | Lopes | 654.357.159 | thales@email.com | 27 9 8584 9194 | 0 | - | - | - | - | - | XYZ bar | 1438757 | 33324567 | xyz@bar.com | rua p, 234 | Henrique | Item1, Item2, Item3, Item4... | Avaliação1, Avaliação2... | Atendimento1, Atendimento2... |
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



