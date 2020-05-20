sudo apt-get update
sudo apt-get install python3-pip
sudo pip3 install virtualenv

sudo apt-get install libjpeg-dev zlib1g-dev
sudo apt-get install libncurses5-dev
sudo apt-get install libblas-dev liblapack-dev gfortran
sudo apt-get install python3-tk

virtualenv -p python3 .env

source .env/bin/activate
pip install -r requirements.txt
jupyter notebook --ip=0.0.0.0 --port=8888
deactivate

cd cs231n/datasets
./get_datasets.sh
