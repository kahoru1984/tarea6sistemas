read -p "Introduce un número: " valor
read -p "Introduce un número: " valor2

if [ $valor -gt $valor2 ]; then
  echo "El primer número es mayor";
elif [ $valor -eq $valor2 ]; then
  echo "los números introducidos son iguales"
else
 echo "El segundo número es mayor";
fi
