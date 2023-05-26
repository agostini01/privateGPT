set -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)

docker run --rm --privileged -it \
    --user=$USER_ID:$GROUP_ID \
    -v ${PWD}/models:/home/user/app/models \
    -v ${PWD}/source_documents:/home/user/app/source_documents \
    -v ${PWD}/db:/home/user/app/db \
    -w /home/user/app \
    agostini01/privategpt \
    /bin/bash