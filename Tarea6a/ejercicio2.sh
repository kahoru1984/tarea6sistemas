read -p "Introduce un número distinto de 0: " numero



while [ $numero -eq 0 ]; do
 echo "El número introducido no es correcto";
    read -p "Introduce un número distinto de 0: " numero 

done

let resto=numero%2

 if [ $resto -eq 0 ]; then
     echo "El número es par"
 else
     echo "El número es impar"
 fi