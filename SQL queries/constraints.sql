alter table flight
add constraint flightFromToAirport foreign key (airportFrom) references airport(flightID);

