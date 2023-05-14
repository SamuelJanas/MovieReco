xhost +local:root

docker run -it \
    --privileged \
    --gpus all \
    --shm-size=16g \
    --ulimit memlock=-1 \
    --memory-swap=-1 \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="XAUTHORITY=$XAUTH" \
    --env="QT_GRAPHICSSYSTEM=native" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume="/usr/lib64:/usr/hostLib64" \
    --network=host \
    --name=Lab07 \
    mbed92/robotics_ai \
    bash