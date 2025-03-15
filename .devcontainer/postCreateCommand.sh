git config --global init.defaultBranch main

BASHRC=~/.bashrc
echo 'eval "$(uv generate-shell-completion bash)"' >> $BASHRC
echo 'eval "$(uvx --generate-shell-completion bash)"' >> $BASHRC

echo "source /usr/share/bash-completion/completions/git" >> $BASHRC