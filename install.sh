config_file=$HOME/.tmux.conf

if [ -e $config_file ]
then
    mv $config_file $config_file.save
fi

cp config $config_file
