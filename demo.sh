NPARTIES=$1

docker build --tag mpyc-demo .
docker network create --driver bridge mpyc-demo-net

for i in $(seq 0 $((NPARTIES-1)))
do
  docker run -itd --name=mpyc$i --network mpyc-demo-net -e NPARTIES=$NPARTIES -e PARTYINDEX=$i mpyc-demo
done
