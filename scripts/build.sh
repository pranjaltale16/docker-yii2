echo "Getting present working directory"
SRC_PATH="$(pwd)/src"

echo "Doing docker run for composer install"
docker run --rm --interactive --tty \
    --volume $SRC_PATH:/src \
    --workdir /src \
    --user $(id -u):$(id -g) \
    composer install
