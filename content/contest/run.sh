set -e
clear; clear
f=$(ls -t -1 *.cc | head -n1)
g++ -g -std=gnu++23 -Wall -W -Wconversion -Wshadow -fsanitize=address,undefined -o sol $f
for i in *.in; do
    echo --- $i
    ./sol < $i >k 2>g
    diff k ${i%.in}.[ao]??
done
echo PASS
if [[ "$1" == "yolo" ]]; then ../submit; fi
