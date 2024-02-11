# Go to build location
Set-Location build
git config --global core.autocrlf input
#  Clone the iris-web repository
git clone https://github.com/dfir-iris/iris-web.git
Set-Location iris-web

# Checkout to the last tagged version 
git checkout v2.4.5

# Copy the environment file 
Copy-Item .env.model .env

# Build the dockers
podman compose build

# Run IRIS 
podman compose up

Set-Location ../../
