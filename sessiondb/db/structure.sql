CREATE  TABLE Location (
  id SERIAL ,
  code varchar(10) NOT NULL UNIQUE ,
  iata_airport CHAR(3) NOT NULL ,
  terminal varchar(5) NULL,
  PRIMARY KEY (id) );


CREATE  TABLE Movie (
  id SERIAL ,
  title VARCHAR(45) NULL ,
  director  VARCHAR(250),
  starring  VARCHAR(500),
  release_year  smallint ,
  PRIMARY KEY (id) );

CREATE  TABLE Disc (
  id SERIAL ,
  movieId INT NOT NULL ,
  locationId INT,
  available BOOLEAN DEFAULT true,
  FOREIGN KEY (movieId) references Movie(id),
  FOREIGN KEY (locationId) references Location(id),
  PRIMARY KEY (id)
);

CREATE  TABLE Member (
  id SERIAL ,
  username VARCHAR(45) NULL ,
  fullname VARCHAR(250) NULL ,
  email VARCHAR(250) NULL ,
  active BOOLEAN DEFAULT false,
  password VARCHAR(250) NULL ,
  PRIMARY KEY (id) );

CREATE  TABLE Loan (
  id SERIAL ,
  memberId int,
  itemId int,
  loanDate DATE,
  foreign key (itemId) references Disc(id),
  PRIMARY KEY (id) );


