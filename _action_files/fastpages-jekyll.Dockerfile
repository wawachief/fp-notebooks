# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0
ENV BUNDLE_PATH=$GEM_HOME

COPY . .

# Pre-load all gems into the environment
RUN chmod -R 777 .
RUN gem install bundler 
RUN chmod -R 777 /home/jekyll /var/jekyll /srv/jekyll /usr/gem/
RUN jekyll build
