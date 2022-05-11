if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TG-V4MP1R3/File-Store-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Store-Bot
fi
cd /File-Store-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
