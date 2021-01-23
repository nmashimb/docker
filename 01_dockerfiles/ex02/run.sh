
docker build -f ft-rails/Dockerfile -t ft-rails:on-build .
docker build -t rubyrails .
docker run -it --name ft-rails -p 3000:3000 rubyrails

#takes about 12 minutes to run, just control c out of puma listening thread thing.
#and restart the container ft-rails. Finally go to URL to localhost and port 3000.