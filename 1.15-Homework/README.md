# Getting Started with Beer Assignment

### How to run the App

Application can be run by executing the following command:

```
docker run -p 8080:8080 -d turbopuz/punkapi-beer
```

### Available REST endpoints

Following endpoints with short description are available in the App:

- `GET /beers` - returns a JSON array of available beers
- `GET /beers/{internalId}` - returns a specific beers based on its internal id (internal id is represented as *UUID*)
- `DELETE /beers/{internalId}` - deletes the specified beer from the database
- `GET /beers/fill` - fills database of beers up to 10 elements

Docker image can be found in [Docker Hub](https://hub.docker.com/r/turbopuz/punkapi-beer)
