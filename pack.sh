IMAGE_NAME=${IMAGE_NAME:-webpack-ci}
echo "IMAGE_NAME: "$IMAGE_NAME

IMAGE_TAG=${IMAGE_TAG:-1.0.0}
echo "IMAGE_TAG: "$IMAGE_TAG

docker build --no-cache --disable-content-trust=true -t $IMAGE_NAME:${IMAGE_TAG} -f ./docker/Dockerfile ./publish/
docker push ${IMAGE_NAME}:${IMAGE_TAG}
docker rmi ${IMAGE_NAME}:${IMAGE_TAG}
