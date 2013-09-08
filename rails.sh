sudo apt-get install curl &&
curl -L https://get.rvm.io | bash -s stable --ruby &&
rvm install 1.9.3 &&
rvm use 1.9.3 &&
gem install rails