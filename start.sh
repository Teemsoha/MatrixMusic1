echo "Cloning Repository"
git clone https://github.com/Teemsoha/MatrixMusic1 /MatrixMusic1
cd /MatrixMusic1 
echo "installing requirements"
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 -m MatrixMusic
