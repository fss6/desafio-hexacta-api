# Rails REST API application

Simple implementation using Twitter and OpenWeatherMap API. 

## Install

    $ git clone https://github.com/fss6/desafio-hexacta-api.git
    $ cd desafio-hexacta-api
    $ rename config/application.example.yml to config/application.yml
    $ assign your credentials in config/application.yml
    $ docker-compose build 

## Run the app

    $ docker-compose up

# REST API

### Get current weather

`POST /weather?city=CITY_NAME` or `POST /preview?lat=LATITUDE&lon=LONGITUDE`

### Get weather forecast

`POST /preview?city=CITY_NAME` or `POST /preview?lat=LATITUDE&lon=LONGITUDE`

### Twitter preview message

`GET /preview?city=CITY_NAME` or `GET /preview?lat=LATITUDE&lon=LONGITUDE`

### Twitter send message

`POST /twitter?city=CITY_NAME` or `POST /twitter?lat=LATITUDE&lon=LONGITUDE`
