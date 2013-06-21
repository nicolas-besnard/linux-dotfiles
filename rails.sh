sudo apt-get install curl &&
curl -L https://get.rvm.io | bash -s stable &&
source ~/.rvm/scripts/rvm &&
rvm autolibs enable &&
rvm requirements &&
rvm install 1.9.3 &&
rvm use 1.9.3 --default &&
rvm rubygems current &&
gem install rails