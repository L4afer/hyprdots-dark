#!/bin/bash
# ============================================================
#  Oh My Zsh Plugin Installer
#  Run this on any fresh Linux install to set up your plugins
# ============================================================

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

info()    { echo -e "${GREEN}[+]${NC} $1"; }
warn()    { echo -e "${YELLOW}[!]${NC} $1"; }
error()   { echo -e "${RED}[x]${NC} $1"; exit 1; }

# ── 1. Check Oh My Zsh is installed ─────────────────────────
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  warn "Oh My Zsh not found. Installing it now..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  info "Oh My Zsh already installed."
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# ── 2. Clone external plugins ────────────────────────────────
clone_plugin() {
  local name="$1"
  local url="$2"
  local dest="$ZSH_CUSTOM/plugins/$name"

  if [ -d "$dest" ]; then
    info "Plugin '$name' already exists — skipping."
  else
    info "Installing '$name'..."
    git clone --depth=1 "$url" "$dest"
  fi
}

clone_plugin "zsh-syntax-highlighting" \
  "https://github.com/zsh-users/zsh-syntax-highlighting.git"

clone_plugin "zsh-autosuggestions" \
  "https://github.com/zsh-users/zsh-autosuggestions.git"

# ── 3. Update plugins=() in .zshrc ──────────────────────────
ZSHRC="$HOME/.zshrc"

# Bundled plugins (already included with Oh My Zsh, no cloning needed)
# External plugins must come last, with zsh-syntax-highlighting at the very end
PLUGINS=(
  git
  z
  fzf
  sudo
  extract
  colored-man-pages
  history-substring-search
  dotenv
  docker
  docker-compose
  kubectl
  vscode
  web-search
  alias-finder
  timer
  zsh-autosuggestions
  zsh-syntax-highlighting  # ← must be last
)

PLUGIN_STRING="plugins=(${PLUGINS[*]})"

if grep -q "^plugins=" "$ZSHRC"; then
  info "Updating existing plugins=() line in .zshrc..."
  # Back up first
  cp "$ZSHRC" "$ZSHRC.bak"
  sed -i "s/^plugins=(.*/$PLUGIN_STRING/" "$ZSHRC"
else
  warn "No plugins=() line found — appending to .zshrc..."
  echo "" >> "$ZSHRC"
  echo "$PLUGIN_STRING" >> "$ZSHRC"
fi

# ── 4. Done ──────────────────────────────────────────────────
echo ""
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}  All plugins installed successfully!${NC}"
echo -e "${GREEN}============================================${NC}"
echo ""
echo "  Installed plugins:"
for p in "${PLUGINS[@]}"; do
  echo "    • $p"
done
echo ""
echo "  Run the following to apply changes:"
echo -e "  ${YELLOW}source ~/.zshrc${NC}"
echo ""
warn "A backup of your original .zshrc was saved to .zshrc.bak"
