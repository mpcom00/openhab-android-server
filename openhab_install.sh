apt-get update
apt-get install wget apt-transport-https gnupg -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9
wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | apt-key add -
echo 'deb http://repos.azulsystems.com/debian stable main' | tee /etc/apt/sources.list.d/zulu.list
echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | tee /etc/apt/sources.list.d/openhab2.list
apt-get update
apt-get install zulu-embedded-8 openhab2 -y