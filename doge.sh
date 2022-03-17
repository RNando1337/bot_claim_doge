#!/bin/bash
detik=0
while true :
    do
        RESPONSE=$(curl -i -s -k -H "Content-Length:0" -X GET https://uptocoin.my.id/fp/faucet.php?address=DMNKEt9hbnZxVkBAiJR3r8uo1mDoX6EUMP&currency=DOGE&key=0bc9fbe86af62516cdf7cee6c3493917)
        CODE=$(echo $RESPONSE | grep HTTP |  awk '{print $2}')
            if (($CODE=200)) ; then
                echo "Berhasil claim"
            elif (($CODE=429)) ; then
                echo "Tunggu 6 menit"
            fi
        sleep 6m
    done

# https://uptocoin.my.id/fp/?r=DMNKEt9hbnZxVkBAiJR3r8uo1mDoX6EUMP&rc=DOGE