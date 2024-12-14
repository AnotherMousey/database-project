create database DB01;
use DB01;

create table airport(
	airportID varchar(5) not null primary key,
    airportName varchar(30) not null,
    city varchar(30) not null,
    country varchar(30) not null
);

create table flight(
	flightID varchar(10) not null primary key,
    airportFrom varchar(5) not null,
    timeFrom timestamp not null,
    dateFrom date not null,
    airportTo varchar(5) not null,
    timeTo timestamp not null,
    dateTo date not null,
    seat int not null
);

create table customer(
	customerID varchar(15) not null primary key,
    customerName varchar(30) not null,
    address varchar(50) not null,
    phoneNumber varchar(15) not null
);

create table reservation(
	flightID varchar(15) not null,
    customerID varchar(15) not null,
    reservationTime timestamp not null,
    constraint reservationConstraint primary key (flightID, customerID)
);