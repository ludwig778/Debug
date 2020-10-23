# Debug Container

## Usage

The debug container allow you to attach a given (faulty) container, using the same network/mount/pids namespace, so you can debug the container/app and have a clear view of what's happening.

The container allow you to run many debug commands, such as : ping, curl, dig, nslookup, traceroute, tcpdump, strace, netcat, socat, etc...

Along with postgres and redis clients.

The container will be builded under the ludwig778/debug image name on Dockerhub with the latest tag.

## Command Reference

**Build the container**

```
docker build -t debug:latest .
```

**Attach the debug container to a running container**

```
docker run --rm -it --network=container:some_container --pid=container:some_container --volumes-from some_container debug:latest
```

The debug:latest image can be replaced by ludwig778/debug:latest.

## TL;DR

Use this nice bash function, and debug quickly any container you want.

```
debug_container () {
    docker run --rm -it \
    --network=container:$1 \
    --pid=container:$1 \
    --volumes-from $1 \
    ludwig778/debug:latest
}
```
