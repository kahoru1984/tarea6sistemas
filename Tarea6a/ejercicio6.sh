
read -p "Introduce la cantidad de litros de agua consumidos: " litros

while [ $litros -eq 0 ]; do
read -p "Introduce una cantidad valida: " litros
done


tramo1=0.20
tramo2=0.10

if [ $litros -le 50 ]; then

    echo "El coste total del agua consumida es 20 euros"

elif [ $litros -le 200 ]; then

    litrosTramo1=`expr $litros - 50`
    precioTramo1=$(echo "scale=2; $litrosTramo1 * $tramo1" |bc)
    totalPrecio=$(echo "scale=2; $precioTramo1 + 20" |bc)

    echo "El coste total del agua consumida es $totalPrecio euros"

elif [ $litros -gt 200 ]; then

    litrosTramo1=150
    litrosTramo2=`expr $litros - 200`
    precioTramo1=$(echo "scale=2; $litrosTramo1 * $tramo1" |bc)
     precioTramo2=$(echo "scale=2; $litrosTramo2 * $tramo2" |bc)
    totalPrecio=$(echo "scale=2; $precioTramo1 + $precioTramo2 + 20" |bc)

    echo "El coste total del agua consumida es $totalPrecio euros"

fi
