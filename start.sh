if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone OMlinks/HINATA-X-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HINATA-X-BOT
fi
cd /HINATA-X-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
