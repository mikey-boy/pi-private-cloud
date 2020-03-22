# Download base image from Docker Hub
# May create my own image at a later point to slim it down a bit
FROM balenalib/rpi-raspbian:latest
MAINTAINER Michael Argany "michael.argany@protonmail.com"

RUN apt update

# Install necessary dependencies
RUN apt install -y apt-utils wget curl bzip2 vim sqlite3 apache2

# Install php and necessary extensions
RUN apt install -y php7.3 php7.3-curl php7.3-sqlite3 php7.3-gmp php7.3-zip php7.3-xml php7.3-intl php7.3-gd php7.3-mbstring

# Install Owncloud and set permissions
RUN wget -q -O - http://download.owncloud.org/community/owncloud-latest.tar.bz2 | tar jx -C /var/www/
RUN chown -R www-data:www-data /var/www/owncloud

# Create 
