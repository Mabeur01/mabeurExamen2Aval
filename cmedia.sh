if [$# -ne 1]; then
    echo "Uso: $0 [ciudad]"
    exit 1
fi

ciudad=$1
sumaConsumos=0
numConsumos=0

while read c m a consumo; do
    if [[ "$c" = "$ciudad" ]]; then
    sumaConsumos=$((sumaConsumos+consumo))
    numConsumos=$((numConsumos+1))
    fi
done < consumo.txt