#!/usr/bin/env bash

echo "$(clear)"
echo "************FOR************"
for (( i = 0;i<10;i++ ));do
    echo "$((i+10))"
done

echo "$(clear)"
echo "***************************"
echo "************FOR seq************"

for i in $(seq 1 10); do
    echo "$i"
done

echo "$(clear)"
echo "***************************"
echo "************FOR array************"
frutas=(
    Laranja
    Maçã
    Uva
    Abacaxi
    Abroba
)

for j in ${frutas[@]} ; do 
    echo "$j"
done

echo "$(clear)"
echo "***************************"
echo "************While************"

#loop normal
contador=1
while [[ $contador -lt 10 ]]; do
    echo "$contador"
    contador=$(($contador+1))
done

echo "$(clear)"
#loop em lista1
contador=1
while [[ $contador -lt ${#frutas[@]} ]]; do
    echo "${frutas[$contador]}"
    contador=$(($contador+1))
done