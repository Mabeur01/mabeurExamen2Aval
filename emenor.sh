menorCiudad=""
menorMedia=""

while read ciudad; do
    media=$(./cmedia.sh $ciudad | awk '{print $5}')

    if [[ -z $menorMedia || $(echo "$media < $menorMedia" | bc -l) ]]; then
    menorCiudad=$ciudad
    menorMedia=$media
    fi
done < <(awk '{print $1}' consumo.txt | sort | uniq)

echo "La ciudad con la media de consumos más baja es: $menorCiudad"