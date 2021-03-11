
read -p "Introduce la cantidad de litros de agua consumidos: " litros

while [ $litros -eq 0 ]; do
read -p "Introduce la cantidad de litros de agua consumidos mayor que 0: " litros
done


tramo2=0.20
tramo3=0.10

if [ $litros -le 50 ]; then

    echo "El coste total del agua consumida es 20 euros"

elif [ $litros -le 200 ]; then

litrosTramo2=`expr $litros - 50`
    precioTramo2=$(echo "scale=2; $litrosTramo2 * $tramo2" |bc)
    totalPrecio=$(echo "scale=2; $precioTramo2 + 20" |bc)

    echo "El coste total del agua consumida es $totalPrecio euros"

elif [ $litros -gt 200 ]; then

    litrosTramo2=150
    litrosTramo3=`expr $litros - 200`
    precioTramo2=$(echo "scale=2; $litrosTramo2 * $tramo2" |bc)
     precioTramo3=$(echo "scale=2; $litrosTramo3 * $tramo3" |bc)
    totalPrecio=$(echo "scale=2; $precioTramo2 + $precioTramo3 + 20" |bc)

    echo "El coste total del agua consumida es $totalPrecio euros"

fi