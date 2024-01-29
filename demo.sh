docker build --tag mpyc-demo .
docker network create --driver bridge mpyc-demo-net

docker run -itd --name=mpyc0 --network mpyc-demo-net -e PARTYINDEX=0 mpyc-demo
docker run -itd --name=mpyc1 --network mpyc-demo-net -e PARTYINDEX=1 mpyc-demo
