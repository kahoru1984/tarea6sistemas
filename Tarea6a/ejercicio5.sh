read -p "Introduce un valor: " dato
let cont=1

while [ $dato -ne 0 ]; do
    let total=total+dato
    let iter=iter+cont
    read -p "Introduce otro dato o 0 para finalizar: " dato
done

let media=total/iter

echo "La suma total es: $total"
echo "La media es: $media"



