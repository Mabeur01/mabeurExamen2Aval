awk '{if($3==2022) print $1,$2,$4}' consumo.txt |

sort -k1,1 k2m |

awk
    'BEGIN { ciudadActual="; contador=0 }
    $1 != ciudadActual {
        if ( contador == 11 ) {
            print ciudadActual " ha tenido un consumo decreciente";
        }
        ciudadActual=$1;
        contador=0;
    }
    {
        if( contador > 0 ) {
            if ($3 <= anterior ){
                decremento=1;
            }else{
                decremento=0;
            }
        }
        anterior=$3;
        contador++;
    }
    END {
        if (contador == 11 && decremento == 1) {
            print ciudadActual " ha tenido un consumo decreciente";
        }
    }
    
    
    '