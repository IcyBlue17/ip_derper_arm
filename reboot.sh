#!/bin/bash

CONTAINER_NAME="derper"

if [[ $(docker ps -q -f name="$CONTAINER_NAME") ]]; then
    echo "正在重启容器：$CONTAINER_NAME"
    docker restart "$CONTAINER_NAME"
    echo "容器 $CONTAINER_NAME 重启完成"
else
    echo "容器 $CONTAINER_NAME 未运行，尝试启动"
    docker start "$CONTAINER_NAME"
    echo "容器 $CONTAINER_NAME 启动完成"
fi
