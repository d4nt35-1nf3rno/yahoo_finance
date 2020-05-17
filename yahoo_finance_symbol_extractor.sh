for j in {a..z}
do 

curl -Ls "https://finance.yahoo.com/lookup/equity?s=${j}&t=A&b=0&c=10000"  | grep -Eo "/quote/[a-zA-Z0-9:.-]*\?p=[a-zA-Z0-9_.-]*" | awk -F "=" '{print $2}' >> valores_yahoo.txt

done

cat valores_yahoo.txt | sort | uniq > final.txt 
