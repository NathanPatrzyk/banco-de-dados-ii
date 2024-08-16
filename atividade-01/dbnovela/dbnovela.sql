-- Active: 1719951308867@@127.0.0.1@3306@dbnovela
DROP DATABASE IF EXISTS dbnovela;

CREATE DATABASE dbnovela;

USE dbnovela;

CREATE TABLE tbator (
    codigo_ator INT(11) NOT NULL,
    nome_ator VARCHAR(20) NOT NULL,
    idade_ator INT(11) NOT NULL,
    cidade_ator VARCHAR(200) NOT NULL,
    salario_ator DOUBLE NOT NULL,
    sexo_ator CHAR(1) NOT NULL,
    CONSTRAINT pk_tbator PRIMARY KEY (codigo_ator)
) ENGINE = INNODB;

INSERT INTO
    tbator (
        codigo_ator,
        nome_ator,
        idade_ator,
        cidade_ator,
        salario_ator,
        sexo_ator
    )
VALUES (
        1,
        'Joaquina Penteado',
        30,
        'Sao Paulo, Brasil',
        5000.00,
        'F'
    ),
    (
        2,
        'Carlos Eduardo',
        28,
        'Rio de Janeiro, Brasil',
        4600.00,
        'M'
    ),
    (
        3,
        'Maria Fernanda',
        26,
        'Belo Horizonte, Brasil',
        4800.00,
        'F'
    ),
    (
        4,
        'Pedro Henrique',
        32,
        'Porto Alegre, Brasil',
        5100.00,
        'M'
    ),
    (
        5,
        'Ana Carolina',
        29,
        'Curitiba, Brasil',
        4500.00,
        'F'
    ),
    (
        6,
        'Emily Johnson',
        31,
        'Nova Iorque, Estados Unidos',
        5200.00,
        'F'
    ),
    (
        7,
        'Liam Smith',
        27,
        'Los Angeles, Estados Unidos',
        4700.00,
        'M'
    ),
    (
        8,
        'Sophie Dubois',
        33,
        'Paris, Franca',
        5400.00,
        'F'
    ),
    (
        9,
        'Lucas Martins',
        25,
        'Lisboa, Portugal',
        4300.00,
        'M'
    ),
    (
        10,
        'Isabella Rossi',
        34,
        'Roma, Italia',
        5500.00,
        'F'
    ),
    (
        11,
        'Javier Garcia',
        30,
        'Madri, Espanha',
        4800.00,
        'M'
    ),
    (
        12,
        'Natalia Petrova',
        29,
        'Moscou, Russia',
        4700.00,
        'F'
    ),
    (
        13,
        'Takashi Nakamura',
        26,
        'Toquio, Japao',
        4400.00,
        'M'
    ),
    (
        14,
        'Chloe Wilson',
        32,
        'Sydney, Australia',
        5100.00,
        'F'
    ),
    (
        15,
        'Mohammed Ali',
        28,
        'Cairo, Egito',
        4600.00,
        'M'
    ),
    (
        16,
        'Aisha Khan',
        31,
        'Lahore, Paquistao',
        5300.00,
        'F'
    ),
    (
        17,
        'Oliver Brown',
        27,
        'Londres, Reino Unido',
        4500.00,
        'M'
    ),
    (
        18,
        'Mia Svensson',
        33,
        'Estocolmo, Suecia',
        5400.00,
        'F'
    ),
    (
        19,
        'Hassan Hussein',
        25,
        'Dubai, Emirados Arabes Unidos',
        4300.00,
        'M'
    ),
    (
        20,
        'Kim Min-ji',
        34,
        'Seul, Coreia do Sul',
        5500.00,
        'F'
    ),
    (
        21,
        'Ravi Patel',
        30,
        'Mumbai, India',
        4800.00,
        'M'
    ),
    (
        22,
        'Emma Muller',
        29,
        'Berlim, Alemanha',
        4700.00,
        'F'
    ),
    (
        23,
        'David Liu',
        26,
        'Pequim, China',
        4400.00,
        'M'
    ),
    (
        24,
        'Lucas Costa',
        32,
        'Toronto, Canada',
        5100.00,
        'M'
    ),
    (
        25,
        'Sophia Martin',
        28,
        'Buenos Aires, Argentina',
        4600.00,
        'F'
    ),
    (
        26,
        'Nina Kovac',
        31,
        'Zagreb, Croacia',
        5300.00,
        'F'
    ),
    (
        27,
        'Ali Reza',
        27,
        'Teera, Ira',
        4500.00,
        'M'
    ),
    (
        28,
        'Elena Popova',
        33,
        'Sofia, Bulgaria',
        5400.00,
        'F'
    ),
    (
        29,
        'Tomas Novak',
        25,
        'Praga, Republica Tcheca',
        4300.00,
        'M'
    ),
    (
        30,
        'Lucia Silva',
        34,
        'Lima, Peru',
        5500.00,
        'F'
    ),
    (
        31,
        'Sebastian Wolf',
        30,
        'Viena, Austria',
        4800.00,
        'M'
    ),
    (
        32,
        'Amelie Bernard',
        29,
        'Bruxelas, Belgica',
        4700.00,
        'F'
    ),
    (
        33,
        'Diego Torres',
        26,
        'Santiago, Chile',
        4400.00,
        'M'
    ),
    (
        34,
        'Eva Nagy',
        32,
        'Budapeste, Hungria',
        5100.00,
        'F'
    ),
    (
        35,
        'Lars Jensen',
        28,
        'Copenhague, Dinamarca',
        4600.00,
        'M'
    ),
    (
        36,
        'Helena Toma',
        31,
        'Belgrado, Servia',
        5300.00,
        'F'
    ),
    (
        37,
        'Samuel Mwangi',
        27,
        'Nairobi, Quenia',
        4500.00,
        'M'
    ),
    (
        38,
        'Anastasia Ivanova',
        33,
        'Sao Petersburgo, Russia',
        5400.00,
        'F'
    ),
    (
        39,
        'Mehmet Yildiz',
        25,
        'Istambul, Turquia',
        4300.00,
        'M'
    ),
    (
        40,
        'Yara Kassem',
        34,
        'Beirute, Libano',
        5500.00,
        'F'
    ),
    (
        41,
        'Juan Perez',
        30,
        'Cidade do Mexico, Mexico',
        4800.00,
        'M'
    ),
    (
        42,
        'Katerina Pavlova',
        29,
        'Kiev, Ucrania',
        4700.00,
        'F'
    ),
    (
        43,
        'Leila Abdallah',
        26,
        'Rabat, Marrocos',
        4400.00,
        'F'
    ),
    (
        44,
        'Matteo Ricci',
        32,
        'Milao, Italia',
        5100.00,
        'M'
    ),
    (
        45,
        'Amina Diallo',
        28,
        'Dacar, Senegal',
        4600.00,
        'F'
    ),
    (
        46,
        'Santiago Gonzalez',
        31,
        'Caracas, Venezuela',
        5300.00,
        'M'
    ),
    (
        47,
        'Fatima Al-Mahmoud',
        27,
        'Riad, Arabia Saudita',
        4500.00,
        'F'
    ),
    (
        48,
        'Jean-Luc Lefevre',
        33,
        'Marselha, Franca',
        5400.00,
        'M'
    ),
    (
        49,
        'Hiroshi Tanaka',
        25,
        'Osaka, Japao',
        4300.00,
        'M'
    ),
    (
        50,
        'Luciana Perez',
        34,
        'Quito, Equador',
        5500.00,
        'F'
    ),
    (
        51,
        'Andre Silva',
        30,
        'Luanda, Angola',
        4800.00,
        'M'
    ),
    (
        52,
        'Freya Hansen',
        29,
        'Oslo, Noruega',
        4700.00,
        'F'
    ),
    (
        53,
        'Daniela Reyes',
        26,
        'Havana, Cuba',
        4400.00,
        'F'
    ),
    (
        54,
        'George Papadopoulos',
        32,
        'Atenas, Grecia',
        5100.00,
        'M'
    ),
    (
        55,
        'Soraya Mendes',
        28,
        'Maputo, Mocambique',
        4600.00,
        'F'
    ),
    (
        56,
        'Artur Jablonski',
        31,
        'Varsovia, Polonia',
        5300.00,
        'M'
    ),
    (
        57,
        'Malika Ouedraogo',
        27,
        'Uagadugu, Burkina Faso',
        4500.00,
        'F'
    ),
    (
        58,
        'Rui Zhang',
        33,
        'Xangai, China',
        5400.00,
        'M'
    ),
    (
        59,
        'Ana Gonzalez',
        25,
        'San Jose, Costa Rica',
        4300.00,
        'F'
    ),
    (
        60,
        'Paul Walker',
        34,
        'Edimburgo, Escocia',
        5500.00,
        'M'
    ),
    (
        61,
        'Veronika Novak',
        30,
        'Bratislava, Eslovaquia',
        4800.00,
        'F'
    ),
    (
        62,
        'Jorge Ramirez',
        29,
        'Tegucigalpa, Honduras',
        4700.00,
        'M'
    ),
    (
        63,
        'Maya Ali',
        26,
        'Islamabad, Paquistao',
        4400.00,
        'F'
    ),
    (
        64,
        'Ahmed Musa',
        32,
        'Abuja, Nigeria',
        5100.00,
        'M'
    ),
    (
        65,
        'Ella Andersen',
        28,
        'Reykjavik, Islandia',
        4600.00,
        'F'
    ),
    (
        66,
        'Ibrahim Salem',
        31,
        'Cartum, Sudao',
        5300.00,
        'M'
    ),
    (
        67,
        'Maria Ioannou',
        27,
        'Nicosia, Chipre',
        4500.00,
        'F'
    ),
    (
        68,
        'Vladimir Petrov',
        33,
        'Minsk, Bielorrussia',
        5400.00,
        'M'
    ),
    (
        69,
        'Laura Gutierrez',
        25,
        'Cidade da Guatemala, Guatemala',
        4300.00,
        'F'
    ),
    (
        70,
        'Erik Johansson',
        34,
        'Gotemburgo, Suecia',
        5500.00,
        'M'
    ),
    (
        71,
        'Soraya Karim',
        30,
        'Cabul, Afeganistao',
        4800.00,
        'F'
    ),
    (
        72,
        'Kofi Mensah',
        29,
        'Acra, Gana',
        4700.00,
        'M'
    ),
    (
        73,
        'Leonie Schmidt',
        26,
        'Zurique, Suica',
        4400.00,
        'F'
    ),
    (
        74,
        'Gustavo Andrade',
        32,
        'La Paz, Bolivia',
        5100.00,
        'M'
    ),
    (
        75,
        'Katarzyna Nowak',
        28,
        'Cracovia, Polonia',
        4600.00,
        'F'
    ),
    (
        76,
        'Miguel Herrera',
        31,
        'San Salvador, El Salvador',
        5300.00,
        'M'
    ),
    (
        77,
        'Irina Dobreva',
        27,
        'Bucareste, Romenia',
        4500.00,
        'F'
    ),
    (
        78,
        'Dmitry Fedorov',
        33,
        'Astana, Cazaquistao',
        5400.00,
        'M'
    ),
    (
        79,
        'Rita Souza',
        25,
        'Funchal, Portugal',
        4300.00,
        'F'
    ),
    (
        80,
        'Sebastian Vazquez',
        34,
        'Assuncao, Paraguai',
        5500.00,
        'M'
    ),
    (
        81,
        'Carla Mendes',
        30,
        'Praia, Cabo Verde',
        4800.00,
        'F'
    ),
    (
        82,
        'Pablo Diaz',
        29,
        'Montevideu, Uruguai',
        4700.00,
        'M'
    ),
    (
        83,
        'Talia Jaber',
        26,
        'Ama, Jordania',
        4400.00,
        'F'
    ),
    (
        84,
        'Filipe Costa',
        32,
        'Braga, Portugal',
        5100.00,
        'M'
    ),
    (
        85,
        'Sahar El-Sayed',
        28,
        'Cartago, Tunisia',
        4600.00,
        'F'
    ),
    (
        86,
        'Nelson Oliveira',
        31,
        'Ponta Delgada, Portugal',
        5300.00,
        'M'
    ),
    (
        87,
        'Mariam Toure',
        27,
        'Bamako, Mali',
        4500.00,
        'F'
    ),
    (
        88,
        'Lukas Horak',
        33,
        'Brno, Republica Tcheca',
        5400.00,
        'M'
    ),
    (
        89,
        'Paula Delgado',
        25,
        'Santa Cruz de la Sierra, Bolivia',
        4300.00,
        'F'
    ),
    (
        90,
        'James Wilson',
        34,
        'Toronto, Canada',
        5500.00,
        'M'
    ),
    (
        91,
        'Eva Vargas',
        30,
        'Guadalajara, Mexico',
        4800.00,
        'F'
    ),
    (
        92,
        'Alejandro Cruz',
        29,
        'Managua, Nicaragua',
        4700.00,
        'M'
    ),
    (
        93,
        'Anabela Vieira',
        26,
        'Luanda, Angola',
        4400.00,
        'F'
    ),
    (
        94,
        'Sergey Ivanov',
        32,
        'Moscou, Russia',
        5100.00,
        'M'
    ),
    (
        95,
        'Ingrid Johansen',
        28,
        'Oslo, Noruega',
        4600.00,
        'F'
    ),
    (
        96,
        'Hugo Martinez',
        31,
        'Cidade do Panama, Panama',
        5300.00,
        'M'
    ),
    (
        97,
        'Milena Batista',
        27,
        'Maputo, Mocambique',
        4500.00,
        'F'
    ),
    (
        98,
        'Viktor Kravchenko',
        33,
        'Kiev, Ucrania',
        5400.00,
        'M'
    ),
    (
        99,
        'Juliana Santos',
        25,
        'Salvador, Brasil',
        4300.00,
        'F'
    ),
    (
        100,
        'Marcelo Costa',
        34,
        'Recife, Brasil',
        5500.00,
        'M'
    );

CREATE TABLE tbestilonovela (
    codigo_estilonovela INT(11) NOT NULL,
    nome_estilonovela VARCHAR(20) NOT NULL,
    CONSTRAINT pk_tbestilonovela PRIMARY KEY (codigo_estilonovela)
) ENGINE = INNODB;

INSERT INTO
    tbestilonovela (
        codigo_estilonovela,
        nome_estilonovela
    )
VALUES (100, 'Drama'),
    (101, 'Comedia'),
    (102, 'Suspense'),
    (103, 'Romance'),
    (104, 'Aventura'),
    (105, 'Ficcao Cientifica'),
    (106, 'Historico'),
    (107, 'Fantasia'),
    (108, 'Acao'),
    (109, 'Musical');

CREATE TABLE tbnovela (
    codigo_novela INT(11) NOT NULL,
    nome_novela VARCHAR(30) NOT NULL,
    data_primeiro_capitulo_novela DATE NOT NULL,
    data_ultimo_capitulo_novela DATE NOT NULL,
    horario_exibicao_novela TIME NOT NULL,
    codigo_estilonovela INT(11) NOT NULL,
    CONSTRAINT pk_tbnovela PRIMARY KEY (codigo_novela),
    CONSTRAINT fk_tbnovela_tbestilonovela FOREIGN KEY (codigo_estilonovela) REFERENCES tbestilonovela (codigo_estilonovela) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;

INSERT INTO
    tbnovela (
        codigo_novela,
        nome_novela,
        data_primeiro_capitulo_novela,
        data_ultimo_capitulo_novela,
        horario_exibicao_novela,
        codigo_estilonovela
    )
VALUES (
        1,
        'Misterios de uma Vida',
        '2024-01-01',
        '2024-12-31',
        '20:00:00',
        100
    ),
    (
        2,
        'Expedicao Selvatica',
        '2024-02-01',
        '2024-11-30',
        '18:00:00',
        104
    ),
    (
        3,
        'Casamento em Grande Estilo',
        '2024-03-01',
        '2024-10-31',
        '19:00:00',
        101
    ),
    (
        4,
        'Noite de Mistérios',
        '2024-04-01',
        '2024-09-30',
        '22:00:00',
        102
    ),
    (
        5,
        'Amor em Paris',
        '2024-05-01',
        '2024-08-31',
        '21:00:00',
        103
    ),
    (
        6,
        'Futuro Imaginado',
        '2024-06-01',
        '2024-07-31',
        '20:30:00',
        105
    ),
    (
        7,
        'Aventuras na História',
        '2024-07-01',
        '2024-12-31',
        '18:00:00',
        106
    ),
    (
        8,
        'Reinos Encantados',
        '2024-08-01',
        '2024-11-30',
        '20:00:00',
        107
    ),
    (
        9,
        'Luta Pela Justiça',
        '2024-09-01',
        '2024-10-31',
        '22:30:00',
        108
    ),
    (
        10,
        'Sonhos Musicalizados',
        '2024-10-01',
        '2024-12-31',
        '19:00:00',
        109
    ),
    (
        11,
        'Vivendo o Drama',
        '2024-01-02',
        '2024-12-30',
        '21:30:00',
        100
    ),
    (
        12,
        'Amor e Risos',
        '2024-02-02',
        '2024-11-29',
        '20:15:00',
        101
    ),
    (
        13,
        'Noites de Terror',
        '2024-03-02',
        '2024-10-30',
        '22:00:00',
        102
    ),
    (
        14,
        'Paixão nas Colinas',
        '2024-04-02',
        '2024-09-29',
        '20:45:00',
        103
    ),
    (
        15,
        'Ficcao no Digital',
        '2024-05-02',
        '2024-08-30',
        '18:00:00',
        105
    ),
    (
        16,
        'Lendas da Antiguidade',
        '2024-06-02',
        '2024-12-30',
        '21:00:00',
        106
    ),
    (
        17,
        'Contos Mágicos',
        '2024-07-02',
        '2024-11-29',
        '19:30:00',
        107
    ),
    (
        18,
        'Guerra e Glória',
        '2024-08-02',
        '2024-10-30',
        '20:00:00',
        108
    ),
    (
        19,
        'O Grande Show',
        '2024-09-02',
        '2024-12-30',
        '18:30:00',
        109
    ),
    (
        20,
        'Familia e Drama',
        '2024-10-02',
        '2024-12-29',
        '22:00:00',
        100
    ),
    (
        21,
        'A Comedia dos Casais',
        '2024-11-01',
        '2024-11-30',
        '20:00:00',
        101
    ),
    (
        22,
        'Segredos do Passado',
        '2024-12-01',
        '2024-12-30',
        '22:15:00',
        102
    ),
    (
        23,
        'Romance no Campo',
        '2024-01-03',
        '2024-11-30',
        '20:30:00',
        103
    ),
    (
        24,
        'Visões Futuras',
        '2024-02-03',
        '2024-08-31',
        '18:00:00',
        105
    ),
    (
        25,
        'Desenhos da Cidade',
        '2024-03-03',
        '2024-09-30',
        '21:00:00',
        106
    ),
    (
        26,
        'Reinos e Magia',
        '2024-04-03',
        '2024-10-31',
        '19:00:00',
        107
    ),
    (
        27,
        'Batalhas na Fronteira',
        '2024-05-03',
        '2024-11-30',
        '20:00:00',
        108
    ),
    (
        28,
        'Noites de Festas',
        '2024-06-03',
        '2024-12-31',
        '18:00:00',
        109
    ),
    (
        29,
        'A Tristeza do Mundo',
        '2024-07-03',
        '2024-11-30',
        '22:00:00',
        100
    ),
    (
        30,
        'O Casamento Perfeito',
        '2024-08-03',
        '2024-10-31',
        '19:00:00',
        101
    ),
    (
        31,
        'Segredos da Alma',
        '2024-09-03',
        '2024-12-31',
        '21:30:00',
        102
    ),
    (
        32,
        'Paixão na Costa',
        '2024-10-03',
        '2024-12-30',
        '20:00:00',
        103
    ),
    (
        33,
        'Visões no Horizonte',
        '2024-11-03',
        '2024-11-30',
        '18:00:00',
        105
    ),
    (
        34,
        'Aventura e Lenda',
        '2024-12-03',
        '2024-12-30',
        '21:00:00',
        106
    ),
    (
        35,
        'Mundos Imaginários',
        '2024-01-04',
        '2024-11-30',
        '19:30:00',
        107
    ),
    (
        36,
        'Heróis do Passado',
        '2024-02-04',
        '2024-10-31',
        '20:00:00',
        108
    ),
    (
        37,
        'Noites de Música',
        '2024-03-04',
        '2024-12-30',
        '18:00:00',
        109
    ),
    (
        38,
        'O Drama das Estações',
        '2024-04-04',
        '2024-12-31',
        '22:00:00',
        100
    ),
    (
        39,
        'Risos e Alegria',
        '2024-05-04',
        '2024-11-30',
        '20:30:00',
        101
    ),
    (
        40,
        'Noites de Mistério',
        '2024-06-04',
        '2024-09-30',
        '21:00:00',
        102
    ),
    (
        41,
        'Amor e Aventuras',
        '2024-07-04',
        '2024-10-31',
        '20:00:00',
        103
    ),
    (
        42,
        'Futuro Proibido',
        '2024-08-04',
        '2024-12-30',
        '18:00:00',
        105
    ),
    (
        43,
        'Contos do Passado',
        '2024-09-04',
        '2024-11-30',
        '21:00:00',
        106
    ),
    (
        44,
        'Encantos e Magia',
        '2024-10-04',
        '2024-12-30',
        '19:00:00',
        107
    ),
    (
        45,
        'Poder e Glória',
        '2024-11-04',
        '2024-10-31',
        '20:00:00',
        108
    ),
    (
        46,
        'Festas e Música',
        '2024-12-04',
        '2024-12-31',
        '18:00:00',
        109
    ),
    (
        47,
        'A Tragédia Familiar',
        '2024-01-05',
        '2024-11-30',
        '22:00:00',
        100
    ),
    (
        48,
        'Risos e Felicidade',
        '2024-02-05',
        '2024-12-31',
        '19:00:00',
        101
    ),
    (
        49,
        'Noites de Agonia',
        '2024-03-05',
        '2024-10-31',
        '20:00:00',
        102
    ),
    (
        50,
        'Paixão e Conflito',
        '2024-04-05',
        '2024-11-30',
        '18:00:00',
        103
    ),
    (
        51,
        'Ficcao do Amanhã',
        '2024-05-05',
        '2024-09-30',
        '21:00:00',
        105
    ),
    (
        52,
        'Histórias Reais',
        '2024-06-05',
        '2024-12-31',
        '20:00:00',
        106
    ),
    (
        53,
        'Mundos de Fantasia',
        '2024-07-05',
        '2024-11-30',
        '19:00:00',
        107
    ),
    (
        54,
        'Guerra e Honra',
        '2024-08-05',
        '2024-10-31',
        '18:30:00',
        108
    ),
    (
        55,
        'Notas da Alegria',
        '2024-09-05',
        '2024-12-30',
        '20:00:00',
        109
    ),
    (
        56,
        'A Tragédia e o Drama',
        '2024-10-05',
        '2024-11-30',
        '22:00:00',
        100
    ),
    (
        57,
        'Alegria e Risos',
        '2024-11-05',
        '2024-12-30',
        '21:00:00',
        101
    ),
    (
        58,
        'Mistérios e Amor',
        '2024-12-05',
        '2024-10-31',
        '20:00:00',
        102
    ),
    (
        59,
        'Amor e Destino',
        '2024-01-06',
        '2024-11-30',
        '18:00:00',
        103
    ),
    (
        60,
        'Futuro e Tecnologia',
        '2024-02-06',
        '2024-12-31',
        '21:30:00',
        105
    ),
    (
        61,
        'Histórias de Heróis',
        '2024-03-06',
        '2024-10-31',
        '20:00:00',
        106
    ),
    (
        62,
        'Encantos e Feitiços',
        '2024-04-06',
        '2024-11-30',
        '19:00:00',
        107
    ),
    (
        63,
        'Batalhas de Poder',
        '2024-05-06',
        '2024-09-30',
        '18:00:00',
        108
    ),
    (
        64,
        'Noite de Canções',
        '2024-06-06',
        '2024-12-30',
        '20:30:00',
        109
    ),
    (
        65,
        'Drama e Realidade',
        '2024-07-06',
        '2024-11-30',
        '22:00:00',
        100
    ),
    (
        66,
        'Comédia na Rua',
        '2024-08-06',
        '2024-12-31',
        '19:30:00',
        101
    ),
    (
        67,
        'Mistério da Escuridão',
        '2024-09-06',
        '2024-11-30',
        '20:00:00',
        102
    ),
    (
        68,
        'Romance e Conflito',
        '2024-10-06',
        '2024-12-31',
        '18:00:00',
        103
    ),
    (
        69,
        'Futuro e Expectativa',
        '2024-11-06',
        '2024-10-31',
        '21:00:00',
        105
    ),
    (
        70,
        'Histórias e Aventura',
        '2024-12-06',
        '2024-11-30',
        '20:00:00',
        106
    ),
    (
        71,
        'Reinos Encantados',
        '2024-01-07',
        '2024-11-30',
        '19:30:00',
        107
    ),
    (
        72,
        'Batalhas e Glória',
        '2024-02-07',
        '2024-12-31',
        '18:00:00',
        108
    ),
    (
        73,
        'Música e Magia',
        '2024-03-07',
        '2024-10-31',
        '20:00:00',
        109
    ),
    (
        74,
        'Drama e Vingança',
        '2024-04-07',
        '2024-12-30',
        '22:00:00',
        100
    ),
    (
        75,
        'Risos e Paixões',
        '2024-05-07',
        '2024-11-30',
        '21:00:00',
        101
    ),
    (
        76,
        'Mistério e Aventura',
        '2024-06-07',
        '2024-10-31',
        '20:00:00',
        102
    ),
    (
        77,
        'Amor e Tradição',
        '2024-07-07',
        '2024-12-30',
        '18:00:00',
        103
    ),
    (
        78,
        'Futuro e Esperança',
        '2024-08-07',
        '2024-11-30',
        '19:30:00',
        105
    ),
    (
        79,
        'Lendas e Contos',
        '2024-09-07',
        '2024-10-31',
        '21:00:00',
        106
    ),
    (
        80,
        'Encantos e Maravilhas',
        '2024-10-07',
        '2024-12-30',
        '20:00:00',
        107
    ),
    (
        81,
        'Glória e Vitória',
        '2024-11-07',
        '2024-11-30',
        '18:00:00',
        108
    ),
    (
        82,
        'Festas e Sonhos',
        '2024-12-07',
        '2024-12-31',
        '19:00:00',
        109
    ),
    (
        83,
        'Tragédia e Romance',
        '2024-01-08',
        '2024-12-30',
        '22:00:00',
        100
    ),
    (
        84,
        'Alegria e História',
        '2024-02-08',
        '2024-11-30',
        '20:30:00',
        101
    ),
    (
        85,
        'Noite de Mistério',
        '2024-03-08',
        '2024-10-31',
        '21:00:00',
        102
    ),
    (
        86,
        'Paixão e Vida',
        '2024-04-08',
        '2024-12-30',
        '18:00:00',
        103
    ),
    (
        87,
        'Futuro e Ação',
        '2024-05-08',
        '2024-11-30',
        '20:00:00',
        105
    ),
    (
        88,
        'Histórias do Passado',
        '2024-06-08',
        '2024-10-31',
        '21:00:00',
        106
    ),
    (
        89,
        'Magia e Poder',
        '2024-07-08',
        '2024-12-30',
        '20:00:00',
        107
    ),
    (
        90,
        'Guerra e Heróis',
        '2024-08-08',
        '2024-11-30',
        '18:30:00',
        108
    ),
    (
        91,
        'Sonhos e Música',
        '2024-09-08',
        '2024-12-31',
        '20:00:00',
        109
    ),
    (
        92,
        'Tragédia e Esperança',
        '2024-10-08',
        '2024-11-30',
        '22:00:00',
        100
    ),
    (
        93,
        'Comédia e Romance',
        '2024-11-08',
        '2024-12-30',
        '21:00:00',
        101
    ),
    (
        94,
        'Mistério e Paixão',
        '2024-12-08',
        '2024-10-31',
        '20:00:00',
        102
    ),
    (
        95,
        'Amor e Conflito',
        '2024-01-09',
        '2024-11-30',
        '18:00:00',
        103
    ),
    (
        96,
        'Futuro e Aventura',
        '2024-02-09',
        '2024-12-31',
        '21:30:00',
        105
    ),
    (
        97,
        'Histórias e Feitiçaria',
        '2024-03-09',
        '2024-10-31',
        '20:00:00',
        106
    ),
    (
        98,
        'Encantos e Conflitos',
        '2024-04-09',
        '2024-11-30',
        '19:00:00',
        107
    ),
    (
        99,
        'Batalhas e Música',
        '2024-05-09',
        '2024-09-30',
        '18:00:00',
        108
    ),
    (
        100,
        'Noite de Festa',
        '2024-06-09',
        '2024-12-30',
        '20:30:00',
        109
    );

CREATE TABLE tbcapitulo (
    codigo_capitulo INT(11) NOT NULL,
    nome_capitulo VARCHAR(50) NOT NULL,
    data_exibicao_capitulo DATE NOT NULL,
    codigo_novela INT(11) NOT NULL,
    CONSTRAINT pk_tbcapitulo PRIMARY KEY (codigo_capitulo),
    CONSTRAINT fk_tbcapitulo_tbnovela FOREIGN KEY (codigo_novela) REFERENCES tbnovela (codigo_novela) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;

INSERT INTO
    tbcapitulo (
        codigo_capitulo,
        nome_capitulo,
        data_exibicao_capitulo,
        codigo_novela
    )
VALUES (
        1,
        'Capítulo 1 - O Início do Mistério',
        '2024-01-01',
        7
    ),
    (
        2,
        'Capítulo 2 - Primeiros Segredos',
        '2024-01-02',
        7
    ),
    (
        3,
        'Capítulo 3 - Mistérios Revelados',
        '2024-01-03',
        7
    ),
    (
        4,
        'Capítulo 4 - Novos Desafios',
        '2024-01-04',
        7
    ),
    (
        5,
        'Capítulo 5 - Revelações',
        '2024-01-05',
        7
    ),
    (
        6,
        'Capítulo 6 - O Grande Final',
        '2024-01-06',
        7
    ),
    (
        7,
        'Capítulo 1 - A Jornada Começa',
        '2024-02-01',
        12
    ),
    (
        8,
        'Capítulo 2 - Explorando o Desconhecido',
        '2024-02-02',
        12
    ),
    (
        9,
        'Capítulo 3 - A Grande Descoberta',
        '2024-02-03',
        12
    ),
    (
        10,
        'Capítulo 4 - Conflito e Resolução',
        '2024-02-04',
        12
    ),
    (
        11,
        'Capítulo 5 - Epílogo',
        '2024-02-05',
        12
    ),
    (
        12,
        'Capítulo 1 - Noivos em Festa',
        '2024-03-01',
        3
    ),
    (
        13,
        'Capítulo 2 - Desafios do Casamento',
        '2024-03-02',
        3
    ),
    (
        14,
        'Capítulo 3 - O Grande Evento',
        '2024-03-03',
        3
    ),
    (
        15,
        'Capítulo 1 - Mistérios da Noite',
        '2024-04-01',
        19
    ),
    (
        16,
        'Capítulo 2 - Segredos Ocultos',
        '2024-04-02',
        19
    ),
    (
        17,
        'Capítulo 3 - Noite de Revelações',
        '2024-04-03',
        19
    ),
    (
        18,
        'Capítulo 1 - Romance em Paris',
        '2024-05-01',
        9
    ),
    (
        19,
        'Capítulo 2 - Amor e Aventura',
        '2024-05-02',
        9
    ),
    (
        20,
        'Capítulo 3 - O Encontro dos Amantes',
        '2024-05-03',
        9
    ),
    (
        21,
        'Capítulo 4 - Despedidas',
        '2024-05-04',
        9
    ),
    (
        22,
        'Capítulo 5 - Recomeços',
        '2024-05-05',
        9
    ),
    (
        23,
        'Capítulo 1 - Visões Futuras',
        '2024-06-01',
        2
    ),
    (
        24,
        'Capítulo 2 - O Futuro Desvelado',
        '2024-06-02',
        2
    ),
    (
        25,
        'Capítulo 3 - Mudanças à Vista',
        '2024-06-03',
        2
    ),
    (
        26,
        'Capítulo 1 - Reinos Mágicos',
        '2024-07-01',
        10
    ),
    (
        27,
        'Capítulo 2 - A Magia Revelada',
        '2024-07-02',
        10
    ),
    (
        28,
        'Capítulo 3 - Conflitos Mágicos',
        '2024-07-03',
        10
    ),
    (
        29,
        'Capítulo 4 - A Grande Batalha',
        '2024-07-04',
        10
    ),
    (
        30,
        'Capítulo 5 - Epílogo Mágico',
        '2024-07-05',
        10
    ),
    (
        31,
        'Capítulo 1 - Desafios e Glória',
        '2024-08-01',
        5
    ),
    (
        32,
        'Capítulo 2 - O Grande Conflito',
        '2024-08-02',
        5
    ),
    (
        33,
        'Capítulo 3 - Glória e Triunfo',
        '2024-08-03',
        5
    ),
    (
        34,
        'Capítulo 1 - Mistério e Amor',
        '2024-09-01',
        15
    ),
    (
        35,
        'Capítulo 2 - Amor em Perigo',
        '2024-09-02',
        15
    ),
    (
        36,
        'Capítulo 3 - O Grande Mistério',
        '2024-09-03',
        15
    ),
    (
        37,
        'Capítulo 4 - Revelações',
        '2024-09-04',
        15
    ),
    (
        38,
        'Capítulo 5 - A Conclusão',
        '2024-09-05',
        15
    ),
    (
        39,
        'Capítulo 1 - Encontro no Passado',
        '2024-10-01',
        8
    ),
    (
        40,
        'Capítulo 2 - Segredos Esquecidos',
        '2024-10-02',
        8
    ),
    (
        41,
        'Capítulo 3 - Revelações do Passado',
        '2024-10-03',
        8
    ),
    (
        42,
        'Capítulo 1 - Amor e Conflito',
        '2024-11-01',
        4
    ),
    (
        43,
        'Capítulo 2 - Conflitos e Esperanças',
        '2024-11-02',
        4
    ),
    (
        44,
        'Capítulo 3 - O Destino do Amor',
        '2024-11-03',
        4
    ),
    (
        45,
        'Capítulo 1 - Vida e Aventura',
        '2024-12-01',
        6
    ),
    (
        46,
        'Capítulo 2 - O Despertar da Vida',
        '2024-12-02',
        6
    ),
    (
        47,
        'Capítulo 3 - A Grande Jornada',
        '2024-12-03',
        6
    ),
    (
        48,
        'Capítulo 4 - Novos Começos',
        '2024-12-04',
        6
    ),
    (
        49,
        'Capítulo 5 - Conclusão',
        '2024-12-05',
        6
    ),
    (
        50,
        'Capítulo 1 - Desafios e Esperanças',
        '2024-01-04',
        11
    ),
    (
        51,
        'Capítulo 2 - O Novo Começo',
        '2024-01-05',
        11
    ),
    (
        52,
        'Capítulo 3 - Esperanças Renovadas',
        '2024-01-06',
        11
    ),
    (
        53,
        'Capítulo 1 - Segredos e Revelações',
        '2024-02-04',
        13
    ),
    (
        54,
        'Capítulo 2 - O Grande Segredo',
        '2024-02-05',
        13
    ),
    (
        55,
        'Capítulo 3 - Revelações Finais',
        '2024-02-06',
        13
    ),
    (
        56,
        'Capítulo 1 - Amor e Mistério',
        '2024-03-04',
        14
    ),
    (
        57,
        'Capítulo 2 - Mistérios do Coração',
        '2024-03-05',
        14
    ),
    (
        58,
        'Capítulo 3 - O Grande Amor',
        '2024-03-06',
        14
    ),
    (
        59,
        'Capítulo 1 - Desafios e Esperanças',
        '2024-04-04',
        17
    ),
    (
        60,
        'Capítulo 2 - O Desafio da Vida',
        '2024-04-05',
        17
    ),
    (
        61,
        'Capítulo 3 - Esperanças Futuras',
        '2024-04-06',
        17
    ),
    (
        62,
        'Capítulo 1 - Reinos e Magia',
        '2024-05-04',
        18
    ),
    (
        63,
        'Capítulo 2 - Magia Revelada',
        '2024-05-05',
        18
    ),
    (
        64,
        'Capítulo 3 - O Grande Reino',
        '2024-05-06',
        18
    ),
    (
        65,
        'Capítulo 1 - Aventuras no Passado',
        '2024-06-04',
        20
    ),
    (
        66,
        'Capítulo 2 - O Passado Revelado',
        '2024-06-05',
        20
    ),
    (
        67,
        'Capítulo 3 - Aventuras do Passado',
        '2024-06-06',
        20
    ),
    (
        68,
        'Capítulo 4 - A Conclusão',
        '2024-06-07',
        20
    ),
    (
        69,
        'Capítulo 5 - Recomeços',
        '2024-06-08',
        20
    ),
    (
        70,
        'Capítulo 1 - Romance e Magia',
        '2024-07-04',
        22
    ),
    (
        71,
        'Capítulo 2 - O Magia do Romance',
        '2024-07-05',
        22
    ),
    (
        72,
        'Capítulo 3 - Magia e Romance',
        '2024-07-06',
        22
    ),
    (
        73,
        'Capítulo 4 - Despedidas',
        '2024-07-07',
        22
    ),
    (
        74,
        'Capítulo 5 - Novos Começos',
        '2024-07-08',
        22
    ),
    (
        75,
        'Capítulo 1 - O Futuro e a Vida',
        '2024-08-04',
        24
    ),
    (
        76,
        'Capítulo 2 - Vida e Futuro',
        '2024-08-05',
        24
    ),
    (
        77,
        'Capítulo 3 - O Grande Futuro',
        '2024-08-06',
        24
    ),
    (
        78,
        'Capítulo 4 - Novos Desafios',
        '2024-08-07',
        24
    ),
    (
        79,
        'Capítulo 5 - Esperanças',
        '2024-08-08',
        24
    ),
    (
        80,
        'Capítulo 1 - Drama e Aventura',
        '2024-09-04',
        26
    ),
    (
        81,
        'Capítulo 2 - Aventuras do Drama',
        '2024-09-05',
        26
    ),
    (
        82,
        'Capítulo 3 - O Grande Drama',
        '2024-09-06',
        26
    ),
    (
        83,
        'Capítulo 4 - Conclusão Dramática',
        '2024-09-07',
        26
    ),
    (
        84,
        'Capítulo 5 - O Recomeço',
        '2024-09-08',
        26
    ),
    (
        85,
        'Capítulo 1 - Mistérios e Aventuras',
        '2024-10-04',
        28
    ),
    (
        86,
        'Capítulo 2 - Aventuras do Mistério',
        '2024-10-05',
        28
    ),
    (
        87,
        'Capítulo 3 - O Grande Mistério',
        '2024-10-06',
        28
    ),
    (
        88,
        'Capítulo 4 - Novas Revelações',
        '2024-10-07',
        28
    ),
    (
        89,
        'Capítulo 5 - Conclusão do Mistério',
        '2024-10-08',
        28
    );

CREATE TABLE tbpersonagem (
    codigo_personagem INT(11) NOT NULL,
    nome_personagem VARCHAR(50) NOT NULL,
    idade_personagem INT(11) NOT NULL,
    situacao_financeira_personagem VARCHAR(20) NOT NULL,
    codigo_ator INT(11) NOT NULL,
    CONSTRAINT pk_tbpersonagem PRIMARY KEY (codigo_personagem),
    CONSTRAINT fk_tbpersonagem_tbator FOREIGN KEY (codigo_ator) REFERENCES tbator (codigo_ator) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;

INSERT INTO
    tbpersonagem (
        codigo_personagem,
        nome_personagem,
        idade_personagem,
        situacao_financeira_personagem,
        codigo_ator
    )
VALUES (
        1,
        'Anna Silva',
        25,
        'Rica',
        45
    ),
    (
        2,
        'Carlos Pereira',
        30,
        'Pobre',
        12
    ),
    (
        3,
        'Maria Oliveira',
        28,
        'Média',
        78
    ),
    (
        4,
        'Anna Souza',
        27,
        'Rica',
        23
    ),
    (
        5,
        'Emily Costa',
        29,
        'Média',
        37
    ),
    (
        6,
        'Liam Ferreira',
        31,
        'Pobre',
        50
    ),
    (
        7,
        'Sophie Dubois',
        24,
        'Rica',
        82
    ),
    (
        8,
        'Lucas Martins',
        30,
        'Pobre',
        10
    ),
    (
        9,
        'Isabella Rossi',
        32,
        'Média',
        56
    ),
    (
        10,
        'Javier Garcia',
        29,
        'Rica',
        64
    ),
    (
        11,
        'Natalia Petrova',
        33,
        'Média',
        92
    ),
    (
        12,
        'Anna Nakamura',
        26,
        'Pobre',
        18
    ),
    (
        13,
        'Chloe Wilson',
        34,
        'Rica',
        75
    ),
    (
        14,
        'Mohammed Ali',
        28,
        'Média',
        89
    ),
    (
        15,
        'Aisha Khan',
        27,
        'Pobre',
        33
    ),
    (
        16,
        'Gabriel Hernández',
        30,
        'Rica',
        40
    ),
    (
        17,
        'Yara Santos',
        29,
        'Média',
        99
    ),
    (
        18,
        'Anna Svensson',
        32,
        'Pobre',
        6
    ),
    (
        19,
        'Oliver Brown',
        28,
        'Rica',
        83
    ),
    (
        20,
        'Hanna Müller',
        31,
        'Média',
        21
    ),
    (
        21,
        'Anna Moretti',
        27,
        'Pobre',
        66
    ),
    (
        22,
        'Lucas Silva',
        34,
        'Média',
        54
    ),
    (
        23,
        'Anna Rodrigues',
        26,
        'Rica',
        91
    ),
    (
        24,
        'Daniela Costa',
        30,
        'Pobre',
        3
    ),
    (
        25,
        'Rafael Lima',
        29,
        'Média',
        57
    ),
    (
        26,
        'Anna Pereira',
        28,
        'Rica',
        85
    ),
    (
        27,
        'Sofia Oliveira',
        31,
        'Pobre',
        69
    ),
    (
        28,
        'Diego Santos',
        27,
        'Média',
        94
    ),
    (
        29,
        'Anna Souza',
        26,
        'Rica',
        11
    ),
    (
        30,
        'Gabriela Silva',
        32,
        'Pobre',
        28
    ),
    (
        31,
        'João Almeida',
        30,
        'Média',
        81
    ),
    (
        32,
        'Anna Cruz',
        29,
        'Rica',
        45
    ),
    (
        33,
        'Mariana Costa',
        27,
        'Pobre',
        39
    ),
    (
        34,
        'Victor Martins',
        31,
        'Média',
        90
    ),
    (
        35,
        'Anna Oliveira',
        30,
        'Rica',
        14
    ),
    (
        36,
        'Felipe Santos',
        28,
        'Pobre',
        67
    ),
    (
        37,
        'Juliana Silva',
        33,
        'Média',
        52
    ),
    (
        38,
        'Anna Lima',
        25,
        'Rica',
        70
    ),
    (
        39,
        'Thiago Pereira',
        32,
        'Pobre',
        88
    ),
    (
        40,
        'Amanda Costa',
        29,
        'Média',
        47
    ),
    (
        41,
        'Anna Martins',
        27,
        'Rica',
        77
    ),
    (
        42,
        'Eduardo Lima',
        31,
        'Pobre',
        61
    ),
    (
        43,
        'Ana Paula',
        30,
        'Média',
        5
    ),
    (
        44,
        'Ricardo Santos',
        29,
        'Rica',
        9
    ),
    (
        45,
        'Anna Mendes',
        28,
        'Pobre',
        86
    ),
    (
        46,
        'Marcelo Silva',
        33,
        'Média',
        48
    ),
    (
        47,
        'Renata Costa',
        27,
        'Rica',
        72
    ),
    (
        48,
        'Ana Clara',
        30,
        'Pobre',
        84
    ),
    (
        49,
        'André Almeida',
        28,
        'Média',
        67
    ),
    (
        50,
        'Anna Ribeiro',
        29,
        'Rica',
        20
    ),
    (
        51,
        'Daniela Silva',
        31,
        'Pobre',
        76
    ),
    (
        52,
        'Bruno Costa',
        27,
        'Média',
        38
    ),
    (
        53,
        'Anna Martins',
        32,
        'Rica',
        62
    ),
    (
        54,
        'Ana Beatriz',
        30,
        'Pobre',
        1
    ),
    (
        55,
        'Rodrigo Silva',
        29,
        'Média',
        15
    ),
    (
        56,
        'Anna Lopes',
        28,
        'Rica',
        68
    ),
    (
        57,
        'Felipe Almeida',
        31,
        'Pobre',
        26
    ),
    (
        58,
        'Larissa Costa',
        27,
        'Média',
        79
    ),
    (
        59,
        'Anna Paula',
        30,
        'Rica',
        97
    ),
    (
        60,
        'Marcos Pereira',
        32,
        'Pobre',
        24
    ),
    (
        61,
        'Anna Faria',
        28,
        'Média',
        8
    ),
    (
        62,
        'Lucas Oliveira',
        29,
        'Rica',
        56
    ),
    (
        63,
        'Tatiane Silva',
        31,
        'Pobre',
        92
    ),
    (
        64,
        'Anna Carvalho',
        27,
        'Média',
        31
    ),
    (
        65,
        'Renan Costa',
        30,
        'Rica',
        48
    ),
    (
        66,
        'Clara Santos',
        29,
        'Pobre',
        65
    ),
    (
        67,
        'Anna Costa',
        26,
        'Média',
        90
    ),
    (
        68,
        'Gustavo Almeida',
        32,
        'Rica',
        71
    ),
    (
        69,
        'Ana Freitas',
        30,
        'Pobre',
        63
    ),
    (
        70,
        'Victor Silva',
        27,
        'Média',
        94
    ),
    (
        71,
        'Anna Rodrigues',
        29,
        'Rica',
        12
    ),
    (
        72,
        'Isabela Costa',
        31,
        'Pobre',
        58
    ),
    (
        73,
        'Thiago Almeida',
        30,
        'Média',
        25
    ),
    (
        74,
        'Anna Duarte',
        27,
        'Rica',
        77
    ),
    (
        75,
        'Mariana Pereira',
        28,
        'Pobre',
        52
    ),
    (
        76,
        'Carlos Lima',
        33,
        'Média',
        86
    ),
    (
        77,
        'Anna Alves',
        29,
        'Rica',
        20
    ),
    (
        78,
        'Lucas Santos',
        31,
        'Pobre',
        7
    ),
    (
        79,
        'Beatriz Silva',
        30,
        'Média',
        19
    ),
    (
        80,
        'Anna Tavares',
        27,
        'Rica',
        65
    ),
    (
        81,
        'Eduardo Costa',
        29,
        'Pobre',
        42
    ),
    (
        82,
        'Ana Paula',
        32,
        'Média',
        99
    ),
    (
        83,
        'Ricardo Costa',
        28,
        'Rica',
        53
    ),
    (
        84,
        'Anna Ribeiro',
        30,
        'Pobre',
        16
    ),
    (
        85,
        'Patrícia Almeida',
        27,
        'Média',
        71
    ),
    (
        86,
        'João Pereira',
        29,
        'Rica',
        34
    ),
    (
        87,
        'Anna Lima',
        30,
        'Pobre',
        82
    ),
    (
        88,
        'Fernanda Costa',
        28,
        'Média',
        43
    ),
    (
        89,
        'Lucas Oliveira',
        31,
        'Rica',
        88
    ),
    (
        90,
        'Anna Campos',
        29,
        'Pobre',
        51
    ),
    (
        91,
        'Renan Costa',
        26,
        'Média',
        70
    ),
    (
        92,
        'Mariana Almeida',
        32,
        'Rica',
        3
    ),
    (
        93,
        'Ana Santos',
        30,
        'Pobre',
        60
    ),
    (
        94,
        'Eduardo Silva',
        27,
        'Média',
        5
    ),
    (
        95,
        'Anna Rocha',
        29,
        'Rica',
        83
    ),
    (
        96,
        'Lucas Costa',
        31,
        'Pobre',
        25
    ),
    (
        97,
        'Paula Almeida',
        30,
        'Média',
        67
    ),
    (
        98,
        'Anna Martins',
        27,
        'Rica',
        91
    ),
    (
        99,
        'Juliana Pereira',
        28,
        'Pobre',
        14
    ),
    (
        100,
        'Lucas Almeida',
        29,
        'Média',
        64
    );

CREATE TABLE tbnovelapersonagem (
    codigo_novela INT(11) NOT NULL,
    codigo_personagem INT(11) NOT NULL,
    CONSTRAINT pk_tbnovelapersonagem PRIMARY KEY (
        codigo_novela,
        codigo_personagem
    ),
    CONSTRAINT fk_tbnovelapersonagem_tbnovela FOREIGN KEY (codigo_novela) REFERENCES tbnovela (codigo_novela),
    CONSTRAINT fk_tbnovelapersonagem_tbpersonagem FOREIGN KEY (codigo_personagem) REFERENCES tbpersonagem (codigo_personagem) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;

INSERT INTO
    tbnovelapersonagem (
        codigo_novela,
        codigo_personagem
    )
VALUES (5, 12),
    (1, 22),
    (7, 33),
    (25, 6),
    (12, 30),
    (20, 43),
    (13, 22),
    (8, 7),
    (30, 11),
    (1, 34),
    (3, 15),
    (27, 39),
    (22, 2),
    (40, 51),
    (31, 4),
    (19, 19),
    (11, 20),
    (1, 44),
    (26, 35),
    (33, 47),
    (28, 23),
    (10, 29),
    (6, 1),
    (15, 8),
    (41, 53),
    (7, 10),
    (42, 48),
    (50, 25),
    (13, 14),
    (24, 21),
    (17, 45),
    (1, 50),
    (2, 31),
    (29, 49),
    (22, 13),
    (12, 36),
    (21, 24),
    (45, 9),
    (53, 52),
    (26, 41),
    (39, 56),
    (4, 17),
    (1, 38),
    (48, 37),
    (11, 40),
    (19, 42),
    (27, 46),
    (13, 54),
    (31, 57),
    (16, 20),
    (43, 12),
    (30, 59),
    (22, 21),
    (38, 18),
    (1, 8),
    (41, 30),
    (29, 60),
    (6, 7),
    (33, 55),
    (20, 16),
    (8, 33),
    (14, 61),
    (3, 62),
    (47, 9),
    (32, 43),
    (54, 27),
    (40, 63),
    (21, 50),
    (18, 44),
    (1, 24),
    (7, 32),
    (15, 20),
    (45, 48),
    (28, 26),
    (35, 52),
    (51, 5),
    (60, 42),
    (12, 11),
    (8, 63),
    (14, 28),
    (33, 37),
    (9, 16),
    (1, 12);

-- 1. Explique e apresenta a sintaxe do LEFT OUTER JOIN, RIGHT OUTER JOIN e FULL OUTER  JOIN:

-- LEFT OUTER JOIN: Este comando é utilizado para retornar todos os registros da tabela da esquerda (primeira tabela) junto com os dados correspondentes da tabela da direita (segunda tabela), os quais, caso não existam, ficam com o valor NULL.
-- Sua sintaxe é:
--SELECT nomeDasColunas
--FROM
--    tabelaDaEsquerda
--    LEFT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria;

-- RIGHT OUTER JOIN: Este comando é utilizado para retornar todos os registros da tabela da direita (segunda tabela) junto com os dados correspondentes da tabela da esquerda (primeira tabela), os quais, caso não existam, ficam com o valor NULL.
-- Sua sintaxe é:
--SELECT nomeDasColunas
--FROM
--    tabelaDaEsquerda
--    RIGHT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria;

-- FULL OUTER JOIN: É a junção dos dois comandos anteriores, pois retorna todos os registros da tabela da esquerda (primeira tabela) E todos os registros da tabela da direita (segunda tabela), caso não acha alguma correspondência o campo fica com o valor NULL.
-- Sua sintaxe é:
--(
--    SELECT nomeDasColunas
--    FROM
--        tabelaDaEsquerda
--        LEFT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria
--)
--UNION
--(
--    SELECT nomeDasColunas
--    FROM
--        tabelaDaEsquerda
--        RIGHT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria
--);

-- 2. Selecione o nome dos atores que não participam de nenhuma novela:
SELECT DISTINCT
    a.nome_ator
FROM
    tbator a
    LEFT OUTER JOIN tbpersonagem p ON p.codigo_ator = a.codigo_ator
    LEFT OUTER JOIN tbnovelapersonagem np ON np.codigo_personagem = p.codigo_personagem
    LEFT OUTER JOIN tbnovela n ON np.codigo_novela = n.codigo_novela
WHERE
    n.nome_novela IS NULL;

-- 3. Selecione os atores que não possuem personagens:
SELECT DISTINCT
    a.nome_ator
FROM tbator a
    LEFT OUTER JOIN tbpersonagem p ON p.codigo_ator = a.codigo_ator
WHERE
    p.nome_personagem IS NULL;

-- 4. Selecione o nome e a idade dos atores que participam da novela “Mistérios de uma vida” ou outra novela que esteja cadastrada em sua base de dados:
SELECT a.nome_ator, a.idade_ator
FROM
    tbator a
    INNER JOIN tbpersonagem p ON p.codigo_ator = a.codigo_ator
    INNER JOIN tbnovelapersonagem np ON np.codigo_personagem = p.codigo_personagem
    INNER JOIN tbnovela n ON np.codigo_novela = n.codigo_novela
WHERE
    n.nome_novela LIKE "Mist_rios De uma vida";

-- 5. Selecione o nome de todos os atores que tiveram personagens com o nome “Anna” ou outro nome cadastrado em sua base de dados:
SELECT a.nome_ator, p.nome_personagem
FROM tbator a
    INNER JOIN tbpersonagem p ON p.codigo_ator = a.codigo_ator
WHERE
    p.nome_personagem LIKE "Anna%";

-- 6. Selecione o nome dos atores que trabalharam nas mesmas novelas que a atriz “Joaquina Penteado” ou outro nome cadastrado em sua base de dados:
-- 7. Selecione o nome dos atores que NÃO trabalharam nas mesmas novelas que a atriz “Joaquina Penteado” ou outro nome cadastrado em sua base de dados:
-- 8. Selecione o nome e a idade do personagem mais novo:
-- 9. Selecione o nome e o salário do ator que recebe o menor salário:
-- 10. Quais os nomes dos atores que nunca representaram personagens pobres nas novelas?
-- 11. Selecione o nome dos atores que trabalharam em pelo menos uma novela das 18 horas:
-- 12. Elabore uma consulta usando LEFT OUTER JOIN para a base de dados em questão:
-- 13. Elabore uma consulta usando RIGHT OUTER JOIN para a base de dados em questão:
-- 14. Elabore uma consulta usando FULL OUTER JOIN para a base de dados em questão:
-- 15. Quando deve - se usar os OPERADORES ALL, SOME E EXIST.Apresente uma consulta com cada um destes operadores: