set -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)

DOCKER_BUILDKIT=1 docker build \
    --build-arg UID=$USER_ID \
    --build-arg GID=$GROUP_ID \
    -f Dockerfile . \
    -t agostini01/privategpt