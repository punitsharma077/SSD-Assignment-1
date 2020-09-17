read input
input=`echo $input | tr -s "()" " "`
string2=${input#" "}
input=${string2%" "}

echo "("$input")"