#!/usr/bin/env bash

set -eux

echo "=============================================================================="
echo "Freeing up disk space on CI system"
echo "=============================================================================="

df -h

echo "Removing large APT packages (unrelated to Packer/Docker)"
sudo apt-get remove -y \
  '^ghc-8.*' \
  '^dotnet-.*' \
  '^llvm-.*' \
  '^php.*' \
  azure-cli \
  google-cloud-sdk \
  hhvm \
  powershell \
  mono-devel \
  firefox \
  google-chrome-stable \
  microsoft-edge-stable

sudo apt-get autoremove -y
sudo apt-get clean

echo "Removing large directories (unrelated to Packer/Docker)"
sudo rm -rf \
  /usr/local/aws-sam-cil \
  /usr/local/julia* \
  /usr/local/bin/aliyun \
  /usr/local/bin/azcopy \
  /usr/local/bin/bicep \
  /usr/local/bin/cmake-gui \
  /usr/local/bin/cpack \
  /usr/local/bin/helm \
  /usr/local/bin/hub \
  /usr/local/bin/kubectl \
  /usr/local/bin/minikube \
  /usr/local/bin/pulumi* \
  /usr/local/bin/sam \
  /usr/local/bin/stack \
  /usr/local/bin/terraform \
  /usr/local/bin/oc \
  /usr/local/share/chromium \
  /usr/local/share/powershell \
  /usr/local/lib/android \
  /usr/local/lib/heroku \
  /usr/local/lib/node_modules \
  /usr/share/dotnet/ \
  /opt/az \
  /opt/microsoft/powershell \
  /opt/hostedtoolcache/CodeQL \
  /opt/hostedtoolcache/go \
  /opt/hostedtoolcache/PyPy \
  /opt/hostedtoolcache/node || :

df -h
