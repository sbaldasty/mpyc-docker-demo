params=
for i in $(seq 0 $((NPARTIES-1)))
do
  params="$params -P mpyc$i:8000 "
done
python app.py --ssl $params -I$PARTYINDEX
