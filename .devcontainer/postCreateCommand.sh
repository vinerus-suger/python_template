git config --global init.defaultBranch main

BASHRC=~/.bashrc
echo 'eval "$(uv generate-shell-completion bash)"' >> $BASHRC
echo 'eval "$(uvx --generate-shell-completion bash)"' >> $BASHRC

echo "source /usr/share/bash-completion/completions/git" >> $BASHRC


# # tmuxの設定ファイルをシンボリックリンクで反映
# echo "=== Setting up tmux configuration ==="
# TMUX_SOURCE="${PWD}/.tmux.conf"
# TMUX_TARGET="${HOME}/.tmux.conf"

# # すでに存在する場合は削除（通常ファイルかシンボリックリンク）
# if [ -f "$TMUX_TARGET" ] || [ -L "$TMUX_TARGET" ]; then
#     echo "Removing existing tmux configuration..."
#     rm "$TMUX_TARGET"
# fi

# # シンボリックリンクを作成
# echo "Creating symlink for tmux configuration..."
# ln -s "$TMUX_SOURCE" "$TMUX_TARGET"
# echo "tmux configuration linked: $TMUX_SOURCE -> $TMUX_TARGET"

# # 現在tmuxが実行中なら設定をリロード
# if pgrep tmux >/dev/null; then
#     echo "Reloading tmux configuration..."
#     tmux source-file "$TMUX_TARGET" 2>/dev/null || echo "Failed to reload tmux (may need manual reload)"
# fi