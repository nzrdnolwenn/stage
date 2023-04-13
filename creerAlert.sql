CREATE TABLE AREA
(
    id_area int PRIMARY KEY NOT NULL,
    name varchar(20),
    latitude_min float,
    latitude_max float,
    longitude_min float,
    longitude_max float
);


CREATE TABLE FLOAT_BGC
(
    id_float int PRIMARY KEY NOT NULL,
    wmo int(11),
    status tinyint(1),
    dac varchar(20),
    score_float float,
    id_area varchar(50),
    FOREIGN KEY (id_area) REFERENCES AREA(id_area)    
);


CREATE TABLE PI
(
    id_pi int PRIMARY KEY NOT NULL,
    lastname varchar(20),
    firstname varchar(20),
    nationality varchar(20)
    
);


CREATE TABLE PROFILE
(
    id_profile int PRIMARY KEY NOT NULL,
    name varchar(20),
    date datetime,
    latitude float,
    longitude float,
    date_modif datetime,
    id_float int,
    id_station int(11)
);


CREATE TABLE STATION
(
    id_station int(11) PRIMARY KEY NOT NULL,
    name varchar(50),
    date datetime,
    parameter_data_mode varchar(50),
    i_greylist float,
    code_greylist varchar(3),
    i_audit tinyint(1),
    latitude float,
    longitude float,
    date_modif datetime,
    score_station float,
    wmo int(11)
);

    FOREIGN KEY (wmo) REFERENCES fLOAT_BGC(wmo)
