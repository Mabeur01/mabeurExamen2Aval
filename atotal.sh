if [$n -ne 1]; then
    echo "Uso: $0 [ciudad]"
    exit 1
fi

ciudad = $1
consumoTotal = 0

while read linea; do
    if [["$linea" =~ ^$ciudad]]; then
    consumo=$(echo $linea | awk '{print $NF}')
    consumoTotal=$((consumoTotal+consumo))
    fi
done < consumo.txt

if [$consumoTotal -eq 0]; then
    echo "Ciudad no encontrada"
    exit 1
fi