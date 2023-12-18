if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone OMlinks/VishaBot-hinata
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VishaBot-hinata
fi
cd /VishaBot-hinata
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
