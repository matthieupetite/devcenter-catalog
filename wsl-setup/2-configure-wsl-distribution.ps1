
$Usernamme = Read-Host "Please enter your wsl username you set in the previous script"
# update source.list and install base configuration file
wsl -d Ubuntu-22.04 -u root -e sh -c "apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release git"
# Update the distro
wsl -d Ubuntu-22.04 -u root -e sh -c "apt-get upgrade -y"
# Install Python3
wsl -d Ubuntu-22.04 -u root -e sh -c "apt install software-properties-common"
wsl -d Ubuntu-22.04 -u root -e sh -c "add-apt-repository -y ppa:deadsnakes/ppa && apt update -y"
wsl -d Ubuntu-22.04 -u root -e sh -c "apt install -y python3.8 python-is-python3 python3-pip"
# Install Az Cli
wsl -d Ubuntu-22.04 -u root -e sh -c "pip install azure-cli==2.49.0"
# Enable Docker
wsl -d Ubuntu-22.04 -u root -e sh -c "apt-get install -y docker.io"
# Enable Docker to start on boot
wsl -d Ubuntu-22.04 -u root -e sh -c "systemctl enable docker"
# Install repo
wsl -d Ubuntu-22.04 -u root -e sh -c "curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && chmod a+rx /usr/local/bin/repo"
# Before lauching the following command please change the token YOUR_USERNAME with the one you set when installing the distro
wsl -d Ubuntu-22.04 -u root -e sh -c "usermod -aG docker $Username"