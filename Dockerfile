FROM nimmis/apache-php5

MAINTAINER Jasper Roel <jasperroel@gmail.com>

# Update aptitude, install git
RUN apt-get update && apt-get install -y git

# Make ssh dir
RUN mkdir /root/.ssh/

# Add bitbucket to default keys
RUN touch /root/.ssh/known_hosts && ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

## Setup apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

# Make sure we can log apache
RUN ln -sf /dev/stdout /var/log/apache2/access.log 
RUN ln -sf /dev/stderr /var/log/apache2/error.log

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
