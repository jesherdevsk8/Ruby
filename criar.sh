# Criar vários arquivos em um 
# Executável no bash

array=( 'app'
        'mercado'
        'produto'
        'teste'
        'testeeeee'
        'verdade'
        'carro'
        'moto'
        'jesher' )

for i in ${array[@]}; do > ${i[@]}.rb; done