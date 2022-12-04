#!/bin/bash
# https://docs.docker.com/engine/install/ubuntu/

command_exists() {
  command -v "$@" > /dev/null 2>&1
}

if ! command_exists curl; then
  sudo apt-get update && sudo apt-get install -y -q curl
fi

echo "[INFO] Remove previous versions"
sudo apt-get remove -y docker docker-engine docker.io containerd runc >/dev/null
echo ""

echo "[INFO] Install the latest version"
# wget -qO- https://get.docker.com | bash -s docker --mirror Aliyun
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
echo ""

echo "[INFO] Adding ${USER} to the docker group"
sudo usermod -aG docker "$USER"
echo ""

echo "[INFO] Configure the Docker daemon"
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": ["https://registry.docker-cn.com"]
}
EOF
echo ""

echo "[INFO] Flush changes and restart Docker"
sudo systemctl daemon-reload
sudo systemctl restart docker
echo ""

# => Running and Building ARM Docker Containers on x86
# 1. Install the qemu packages
sudo apt-get install qemu binfmt-support qemu-user-static

# 2. This step will execute the registering scripts
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

# 3. Testing the emulation environment
docker run --rm -t arm64v8/ubuntu uname -m

reboot () { echo 'Reboot? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; }

reboot
