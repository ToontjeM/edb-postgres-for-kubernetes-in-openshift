#!/bin/bash
. ./config.sh

if [ ! -d $HOME/.local/bin ]; then
  mkdir -p $HOME/.local/bin
  export PATH=$PATH:$HOME/.local/bin
fi

print_command "https://github.com/EnterpriseDB/kubectl-cnp/raw/main/install.sh | \
  sh -s -- -b /usr/local/bin\n"

curl -sSfL \
  https://github.com/EnterpriseDB/kubectl-cnp/raw/main/install.sh | \
  sh -s -- -b $HOME/.local/bin

print_info "Plug-in ${kubectl_cnp} installed\n"
