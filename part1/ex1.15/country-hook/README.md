This app was cloned from the part7 of Full Stack Open course

Using with Docker locally

```
docker build . -t country-hook
docker run -p 3001:5173 country-hook
```

Using [DockerHub Link](https://hub.docker.com/r/mmiglioranza22/country-hook-example) image.
Use `latest` tag (`deploy` tag is only for linux host platform)

```
docker pull mmiglioranza22/country-hook-example
docker run -p 3001:5173 mmiglioranza22/country-hook-example
```
