#!/bin/bash

# resultado > prev
# resultado < prev

var1=$1
sign=$2
var3=$3
tlimit=$4

result=$(qalc -t $var1 $sign $var3)
day=$(date "+%d/%m/%y")

[[ "$result" < "$var1" ]] && echo "[✔️] [ $day ] -R\$$3 ❯ R\$$result/R\$$tlimit"
[[ "$result" > "$var1" ]] && echo "[✔️] [ $day ] +R\$$3 ❯ R\$$result/R\$$tlimit"
