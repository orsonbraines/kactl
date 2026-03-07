ulimit -S -s 2048000
for d in {A..Z}; do
    mkdir $d
    cp -n t.cc $d/$d.cc
    cp $d-*/*/* $d
done
