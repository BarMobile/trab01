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