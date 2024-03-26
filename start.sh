echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/FilmyFather/Ultra-Forwardbot FilmyFather/Ultra-ForwardBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/FilmyFather/Ultra-Forwardbot -b $BRANCH /Ultra-ForwardBot
fi
cd FilmyFather/Ultra-ForwardBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
