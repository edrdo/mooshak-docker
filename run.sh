if [ $# -ne 2 ]; then
  echo Usage: $0 host_port data_dir_at_host
  exit 1
fi

PORT=$1
DATA_DIR=$2

echo == Starting Mooshak container -- host port: $PORT, host data dir: $DATA_DIR
docker run --rm -h mooshak -v $DATA_DIR:/home/mooshak/data -p $PORT:80 -it --security-opt seccomp=unconfined edrdo/mooshak
exit $?
