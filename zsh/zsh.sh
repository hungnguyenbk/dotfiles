# CONFIG_DIR="/home/hungnv/Documents/project/github/dotfiles/zsh"
# Source public configs
PUBLIC_DIR="$CONFIG_DIR/public_config"
if [ -d "$PUBLIC_DIR" ]; then
  for file in "$PUBLIC_DIR"/*; do
    [ -f "$file" ] && [ -r "$file" ] && source "$file"
  done
fi

# Source private configs (không commit lên Git)
PRIVATE_DIR="$CONFIG_DIR/private_config"
if [ -d "$PRIVATE_DIR" ]; then
  for file in "$PRIVATE_DIR"/*; do
    [ -f "$file" ] && [ -r "$file" ] && source "$file"
  done
fi