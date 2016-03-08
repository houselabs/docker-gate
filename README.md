## Build Image
checkout this project
```
docker build -t houselabs/gate ./docker-gate/
```

## For development
Run
`docker run -i -t --net=host --privileged=true -v /home/core/conf:/conf houselabs/gate bash`
And run
`supervisord`

## For production
Run
`docker run -i -t --net=host --privileged=true -v /home/core/conf:/conf houselabs/gate`
