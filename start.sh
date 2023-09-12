if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamKazukai/WEDNESDAY-NEW.git /WEDNESDAY-NEW
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /WEDNESDAY-NEW
fi
cd /WEDNESDAY-NEW
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
