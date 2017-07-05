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