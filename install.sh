LOC=$PWD;
cd;

for i in $(ls $LOC/home_files -A); do
    rm $i;
	ln -s $LOC/home_files/$i ./;
done;
