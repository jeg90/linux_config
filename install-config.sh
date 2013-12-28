#Place configuration files
cp .bashrc $HOME/
cp .vimrc $HOME/

#vimrc uses Pathogen for plugins.  Arrange directory structure for
#using Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl 'www.vim.org/scripts/download_script.php?src_id=19375' \
> ~/.vim/autoload/pathogen.vim
