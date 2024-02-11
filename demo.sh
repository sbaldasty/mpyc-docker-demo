NPARTIES=$1

rm -r .config
mkdir .config
cd .config
python ../generate-certificates.py -m $NPARTIES
cd ..

docker build --tag mpyc-demo .
docker network create --driver bridge mpyc-demo-net

for i in $(seq 0 $((NPARTIES-1)))
do
  docker run -itd --name=mpyc$i --network mpyc-demo-net -e NPARTIES=$NPARTIES -e PARTYINDEX=$i mpyc-demo
done
