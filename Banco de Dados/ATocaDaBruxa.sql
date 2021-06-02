create database ATocaDaBruxa;
use ATocaDaBruxa;

create table Numerologia (
	idNumerologia INT PRIMARY KEY AUTO_INCREMENT,
    descricao varchar(45),
	negativo varchar(25),
    positivo varchar(25)
    );

create table Usuario (
	idUsuario int primary key auto_increment,
    nome varchar(45),
    nascimento date,
    usuario varchar(15),
    email varchar(25),
    senha varchar(10),
    fkNumerologia int,
    foreign key (fkNumerologia) references Numerologia (idNumerologia)
    )auto_increment = 100;
    
create table Livros (
	idLivros int primary key auto_increment,
    titulo varchar(45),
    autor varchar(45),
    sinopse varchar(100)
    )auto_increment = 1000;
    
create table UsuarioLivros (
	fkLivros int,
    foreign key (fkLivros) references Livros (idLivros),
    fkUsuario int,
    foreign key (fkUsuario) references Usuario (idUsuario),
    avaliacao float(4,2),
    comentario varchar(45)
    );
    
insert into Numerologia values 
	(null, 'O que lidera', 'Autoritarismo', 'Pioneirismo'),
    (null, 'O que colabora', 'Indecisão', 'Diplomacia'),
    (null, 'O que comunica', 'Exibicionismo', 'Sociabilidade'),
    (null, 'O que realiza', 'Apego', 'Disciplina'),
    (null, 'O que é livre', 'Inquietação', 'Versatilidade'),
    (null, 'O que concilia', 'Acomodação', 'Generosidade'),
    (null, 'O que pensa', 'Melancolia', 'Poder de Análise'),
    (null, 'O que tem poder', 'Arrogância', 'Perspicácia'),
    (null, 'O que compreende', 'Fanatismo', 'Paciência');
    
insert into Livros values
	(null, 'Mistérios Nórdicos', 'Mirella Faur', 'Aborda a complexidade cosmológica e mágica do universo nórdico de forma prática e acessível.'),
	(null, 'O Poder da Bruxa', 'Laurie Cabot', 'A conhecida bruxa de Salem rompe o silêncio e revela os segredos da bruxaria.'),
	(null, 'A Dança Cósmica das Feiticeiras', 'Starhawk', 'O livro apresenta a história, a teologia e as práticas que cercam a Bruxaria.'),
	(null, 'A Bruxaria Hoje', 'Gerald Gardner', 'Hoje em dia é fácil nos depararmos com bruxas, chegando a ser comum mas, nem sempre isso foi assim.'),
	(null, 'Aradia O Evangelho das Bruxas', 'Charles G. Leland', 'O autor traz a história de Aradia, bruxa enviada à Terra para propagar os ensinamentos da Bruxaria.'),
	(null, 'Enciclopédia de Cristais', 'Scott Cunningham', 'A magia feita com pedras é tão antiga quanto o Tempo.');
    
select * from Numerologia;

select * from Livros;