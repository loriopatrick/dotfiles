LOC=$PWD;
cd $HOME;

for i in $(ls -A $LOC/home_files); do
    rm -r $i || true;
	ln -s $LOC/home_files/$i ./;
done;

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
