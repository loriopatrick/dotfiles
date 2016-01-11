LOC=$PWD;
cd $HOME;

for i in $(ls $LOC/home_files -A); do
    rm -r $i || true;
	ln -s $LOC/home_files/$i ./;
done;

xrdb -load $HOME/.Xresources
xmodmap $HOME/.Xmodmap

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

if [ -d $HOME/.config ]; then
    cd $HOME/.config;
    rm -r i3;
    ln -s $LOC/i3 ./
    cd $HOME;
fi
