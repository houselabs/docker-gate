## Build Image
checkout this project
```bash
docker build -t houselabs/gate ./docker-gate/
```

## For development
Run
```bash
docker run -i -t --net=host --privileged=true -v /home/core/conf:/conf houselabs/gate bash
```
And run
```bash
/start.sh
```

## For production
Run
```bash
docker run -d --name=gate --net=host --privileged=true -v /home/core/conf:/conf houselabs/gate
```
