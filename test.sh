#!/bin/sh

# Jenkins install script for debian and ubuntu

# Jenkins
echo "Installing Jenkins CI Server"
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
apt-get -y update
apt-get -y install jenkins

# Apache ANT
echo "Installing Apache ANT"
apt-get -y install ant

# Apache Modules
echo "Enabling Apache Modules"
a2enmod proxy proxy_http

# PHP XSL
echo "Installing PHP XSL"
apt-get -y install php5-xsl

# PHP Composer
echo "Installing PHP Composer"
curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin
chmod +x /bin/composer.phar
mv /bin/composer.phar /bin/composer

# PHP Pear
echo "Installing PHP Pear"
apt-get -y install php-pear

# Pear Channels
echo "Discovering required channels"
pear channel-discover pear.pdepend.org
pear channel-discover pear.phpmd.org
pear channel-discover pear.phpunit.de
pear channel-discover pear.phpdoc.org
pear channel-discover components.ez.no
pear channel-discover pear.symfony-project.com
pear channel-discover pear.symfony.com
pear channel-discover pear.netpirates.net

# Pear Packages
echo "Installing required PHP packages for jenkins plugins"
pear install pdepend/PHP_Depend
pear install phpmd/PHP_PMD
pear install phpunit/phpcpd
pear install phpunit/phpcpd
pear install phpunit/phploc
pear install --alldeps phpunit/PHP_CodeBrowser
pear install --alldeps phpunit/PHPUnit
pear install phpdoc/phpDocumentor-alpha
pear install PHP_CodeSniffer
pear install Image_GraphViz

exit

