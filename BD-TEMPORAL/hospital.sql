CREATE TABLE poliza(
cod-Poliza int primary key auto_increment,
datos varchar(30)
);

CREATE TABLE asegurado(
num-Asegurado int not null unsigned,
nombre varchar(45) not null,
fechaNacimiento date not null,
codPoliza int not null,
PRIMARY KEY(núm-Asegurado,codPoliza),
CONSTRAINT cod-Poliza FOREIGN KEY (codPoliza) REFERENCE poliza (cod-Poliza)
);

CREATE TABLE a1c(
num-Asegurado int not null unsigned,
codPoliza1 int not null,
PRIMARY KEY(núm-Asegurado,codPoliza1),
CONSTRAINT cod-Poliza foreign key (codPoliza1) REFERENCE asegurado(cod-Poliza),
CONSTRAINT num-asegurado foreign key (num-asegurado) REFERENCE asegurado(num-Asegurado),
);

CREATE TABLE a2c(
num-Asegurado int not null unsigned,
codPoliza1 int not null,
PRIMARY KEY(núm-Asegurado,codPoliza1),
CONSTRAINT cod-Poliza foreign key (codPoliza1) REFERENCE asegurado(cod-Poliza),
CONSTRAINT num-asegurado foreign key (num-asegurado) REFERENCE asegurado(num-Asegurado),
);

CREATE TABLE hospital(
cod-Hospital int primary key auto_increment,
nombre varchar(45),
);

CREATE TABLE propio(
cod-Hospital int primary key auto_increment,
presupuesto int not null,
tipo-Servicio varchar(45) not null,
CONSTRAINT cod-Hospital foreign key (hospital) references hospital (cod-Hospital),
);

CREATE TABLE area(
cod-Área int primary key auto_increment,
superficie int not null,
núm-habitantes int not null,
);

CREATE TABLE concertado(
cod-Hospital int primary key auto_increment,
cod-Área int not null ,
CONSTRAINT cod-Hospital foreign key (hospital) references hospital (cod-Hospital),
CONSTRAINT cod-Área foreign key (area) references area (cod-Área),
);
CREATE TABLE medico(
cod-Medico int primary key auto_increment,
nombre varchar(45) int not null,
num-tlfn-personal int not null,
);


CREATE TABLE adscrito(
cod-Medico int primary key auto_increment,
CONSTRAINT cod-Medico foreign key(medico) references medico (cod-Medico),
CONSTRAINT cod-Área foreign key(area) references(cod-Área),
);

CREATE TABLE hospitalizado-1(
fecha-inicio date  not null,
fecha-final  date not null,
núm-Asegurado int not null,
cod-Póliza int not null,
cod-Hospital int not null,
cod-Medico int not null,
CONSTRAINT cod-Medico foreign key(medico) references medico (cod-Medico),
CONSTRAINT cod-Hospital foreign key (hospital) references hospital (cod-Hospital),
CONSTRAINT cod-Póliza foreign key (a1c) references a1c (cod-Póliza),
CONSTRAINT núm-Asegurado foreign key (a1c) references a1c (núm-Asegurado),
);

CREATE TABLE hospitalizado-2(
fecha-inicio date  not null,
fecha-final  date not null,
núm-Asegurado int not null,
cod-Póliza int not null,
cod-Hospital int not null,
cod-Medico int not null,
CONSTRAINT cod-Medico foreign key(medico) references medico (cod-Medico),
CONSTRAINT cod-Hospital foreign key (propio) references propio (cod-Hospital),
CONSTRAINT cod-Póliza foreign key (a2c) references a2c (cod-Póliza),
CONSTRAINT núm-Asegurado foreign key (a2c) references a2c (núm-Asegurado),
);


