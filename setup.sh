#!/bin/bash

# Check the distribution
distribution=$(lsb_release -r | awk '{print $1}')

# Install jq
if [[ "$distribution" == "Ubuntu" ]]; then
  sudo apt install jq
elif [[ "$distribution" == "Fedora" ]]; then
  sudo dnf install jq
elif [[ "$distribution" == "Arch" ]]; then
  sudo pacman -S jq
fi

# Clone the repository
github_projects_dir=$1
mkdir -p "$github_projects_dir"
cd $github_projects_dir
git clone https://github.com/leejsinclair/stoic-journal-bash.git "$github_projects_dir"

# Append the alias to .bashrc
tee -a ~/.bashrc << EOF
export STOIC_JOURNAL_FILE=$github_projects_dir/journal.txt
alias stoic='$github_projects_dir/journal.sh'
EOF

# Reload .bashrc
source ~/.bashrc
