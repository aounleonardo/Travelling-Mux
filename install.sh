config_file=$HOME/.tmux.conf

if [ -e $config_file ]
then
    mv $config_file $config_file.save
fi

cp config $config_file

# Install vimrc configuration
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install mosh server (only works with ubuntu now)
sudo apt update
sudo apt install mosh
