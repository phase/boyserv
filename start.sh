# Script for backing up worlds, pulling latest changes, and starting the server.

while true
do
  # todo: automated backups
  #DATE=$(date +"%d-%b-%Y-%H-%M-%S")
  #mkdir -p backup/
  #tar -zcvf world-$DATE.tgz world
  #mv *.tgz backup/

  git reset --hard HEAD
  git pull

  java -server \
  -Xms8G -Xmx8G \
  -jar fabric-server-launch.jar nogui

done
