# Rails REST API application

Simple implementation using Twitter and OpenWeatherMap API. 

## Requirements

- Git (https://git-scm.com/)
- Docker (https://www.docker.com/)
- Docker Compose (https://docs.docker.com/compose/)

## Install

1. Clone the project
```bash
    $ git clone https://github.com/fss6/desafio-hexacta-api.git
```
2. Rename **desafio-hexacta-api/config/application.example.yml** to **desafio-hexacta-api/config/application.yml**
3. Assign your credentials in desafio-hexacta-api/config/application.yml
4. Build the app
```bash
    $ docker-compose build 
```

## Run the app
```bash
    $ docker-compose up
 ```
 
### Application credentials (config/application.yml)
    
* open_weather_map_api_key: OpenWeatherMap API credentials (for more details: https://openweathermap.org/)
* twitter_consumer_key: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_consumer_secret: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_access_token: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_access_token_secret: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_bearer_token: Twitter API credentials (for more details: https://developer.twitter.com/)   


## REST API

### Get current weather

`POST /weather?city=CITY_NAME` or `POST /weather?lat=LATITUDE&lon=LONGITUDE`

### Get weather forecast

`POST /forecast?city=CITY_NAME` or `POST /forecast?lat=LATITUDE&lon=LONGITUDE`

### Twitter preview message

`GET /preview?city=CITY_NAME` or `GET /preview?lat=LATITUDE&lon=LONGITUDE`

### Twitter send message

`POST /twitter?city=CITY_NAME` or `POST /twitter?lat=LATITUDE&lon=LONGITUDE`
