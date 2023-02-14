if [ $s -ne 0 ]; then
    echo "Uso: $0"
    exit 1
fi

consumoMax=0
consumoMin=0
ciudadMax=""
mesMax=""
anioMax=""
ciudadMin=""
mesMin=""
anioMin=""

while read ciudad mes anio consumo; do
    if[ $consumo -gt $consumoMax] || [$consumoMax -eq 0 ]; then
    consumoMax=$consumo
    ciudadMax=$ciudad
    mesMax=$mes
    anioMax=$anio
    fi
    if [ $consumo -lt $consumoMin ] || [$consumoMin -eq 0 ]; then
    consumoMin=$consumo
    ciudadMin=$ciudad
    mesMin=$mes
    anioMin=$anio
    fi
done < consumo.txt

echo "Ciudad con el consumo máximo: $ciudadMax, mes: $mesMax, año: $anioMax, consumo: $consumoMax"
echo "Ciudad con el consumo minimo: $ciudadMin, mes: $mesMin, año: $anioMin, consumo: $consumoMin"