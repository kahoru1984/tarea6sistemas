read -p "Introduce un número mayor a 0: " numero

while [ $numero -le 0 ]; do
    echo "El número introducico es incorrecto"
    read -p "Introduce un número mayor a 0: " numero
done

for numero in `seq 0 $numero`; do
    echo $numero
done