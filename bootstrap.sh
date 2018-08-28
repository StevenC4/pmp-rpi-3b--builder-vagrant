export DEBIAN_FRONTEND=noninteractive

BUILD_DIR=/home/vagrant

apt-get update
apt-get upgrade

if [ ! -d "$BUILD_DIR/plex-LibreELEC.tv" ]; then
  cd $BUILD_DIR

  git clone https://github.com/stedaniels/LibreELEC.tv plex-LibreELEC.tv

  cd plex-LibreELEC.tv

  git checkout dist-master

  cp /vagrant/start.sh ./

  chown -R vagrant:vagrant ./

  sed -i '/--disable-ffserver \\/d' packages/addons/addon-depends/ffmpegx/package.mk packages/multimedia/ffmpeg/package.mk packages/plex/multimedia/ffmpeg-plex/package.mk
fi

apt-get -y install swapspace

dpkg --add-architecture i386
apt-get clean
apt-get update

apt-get -y install build-essential wget bc gawk gperf zip unzip lzop xsltproc openjdk-9-jre-headless libncurses5-dev texi2html libexpat1
apt-get -y install gcc-multilib libexpat1-dev:i386 libfreetype6-dev:i386 libexpat1-dev libfreetype6-dev fontconfig:i386

apt-get -y install g++-multilib
