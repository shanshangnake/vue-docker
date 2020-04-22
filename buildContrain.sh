#!/bin/bash
# -s: start; -m: commit; -e: save
paramsOne="$1"

if [ $paramsOne = '-s' ]
then
  echo "start sucess"
  docker run -i -t  -p 8002:8080/tcp  --name $2 -v ~/wucl/Volums:/Code $3  /bin/bash
elif [ $paramsOne = '-m' ]
then
  docker commit -m $2 $3 $4
  echo "commit sucess"
elif [ $paramsOne = '-e' ]
then
  docker save -o $2 $3 && mv $2 $4
  echo "save sucess"
else
   echo "params error!"
fi
