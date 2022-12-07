# VCWaltid

Implements the Verifiable Credential type used in the DSBA MVF activities

## Installtion

Clone the repository into your machine:

```
git clone git@github.com:hesusruiz/VCWaltid.git
```

Run `gradlew` to build and create the runtime artifacts (make sure that the file `gradlew` in the root of the project is runnable by your user):

```
./gradlew build
./gradlew installDist
```

## Running the APIs

This package has no configuration. It provides a set of APIs and there is a `Dockerfile` and corresponding `compose` file for development purposes. Just run:

```
docker compose up
```

Or if you want it to run in the background:

```
docker compose up -d
```
