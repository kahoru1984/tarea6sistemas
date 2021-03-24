
read -p "Introduce tu nota: " nota


while [ $nota -lt 0 ] || [ $nota -gt 10 ]; do
    echo "La nota introducida no es valida"
    read -p "Introduce tu nota: " nota
done
    

if [ $nota -le 4 ]; then
    echo "Suspendido"
elif [ $nota -eq 5 ]; then
    echo "Suficiente"
elif [ $nota -eq 6 ]; then
    echo "Bien"
elif [ $nota -eq 7 ] || [ $nota -eq 8 ]; then
    echo "Notable"
else
    echo "Sobresaliente"
fi

