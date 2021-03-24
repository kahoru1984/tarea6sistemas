read -p "Introduce un número entre 1 y 30: " dia

while [ $dia -eq 0 ] || [ $dia -gt 30 ]; do
    read -p "Valor incorrecto; introduzcalo de nuevo: " dia
done

if [ $dia -eq 1 ] || [ $dia -eq 8 ] || [ $dia -eq 15 ] || [ $dia -eq 22 ] || [ $dia -eq 29 ]; then
    echo "El día de la semana es Lunes"
elif [ $dia -eq 2 ] || [ $dia -eq 9 ] || [ $dia -eq 16 ] || [ $dia -eq 23 ] || [ $dia -eq 30 ]; then
    echo "El día de la semana es Martes"
elif [ $dia -eq 3 ] || [ $dia -eq 10 ] || [ $dia -eq 17 ] || [ $dia -eq 24 ]; then
     echo "El día de la semana es Miércoles"
elif [ $dia -eq 4 ] || [ $dia -eq 11 ] || [ $dia -eq 18 ] || [ $dia -eq 25 ]; then
     echo "El día de la semana es Jueves"
elif [ $dia -eq 5 ] || [ $dia -eq 12 ] || [ $dia -eq 19 ] || [ $dia -eq 26 ]; then
     echo "El día de la semana es Viernes"
elif [ $dia -eq 6 ] || [ $dia -eq 13 ] || [ $dia -eq 20 ] || [ $dia -eq 27 ]; then
     echo "El día de la semana es Sábado"
else echo "El día de la semana es Domingo"
fi