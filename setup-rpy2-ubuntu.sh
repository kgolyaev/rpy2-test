# prereq for zsh
sudo apt-get install -y zsh git
# install zsh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# install anaconda
wget https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh
chmod 775 ./Anaconda3-5.0.0.1-Linux-x86_64.sh
./Anaconda3-5.0.0.1-Linux-x86_64.sh
source ~/.bashrc
# make sure anaconda path is in for zsh
# NEWPATH=$(echo /home/$USER/anaconda3/bin)
# echo "export PATH=$NEWPATH:$PATH" >> ./.zshrc
# now install rpy2
conda install rpy2 -y
# prereqs for R
sudo apt-get install -y build-essential python-qt4 gfortran 
