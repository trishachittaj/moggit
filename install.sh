#!/usr/bin/env bash
# install.sh
# Install script for moggit + aliases

# source colors
source "$(dirname "$0")/colours.sh"

# path to the repo
REPO_DIR="$(pwd)"

echo -e "${PINK}Installing moggit + brainrot aliases...${RESET}"

# detect shell and pick config
if [[ -n "$ZSH_VERSION" ]]; then
    CONFIG_FILE="$HOME/.zshrc"
elif [[ -n "$BASH_VERSION" ]]; then
    CONFIG_FILE="$HOME/.bashrc"
else
    CONFIG_FILE="$HOME/.profile"
fi

# ensure moggit.sh is executable
chmod +x "$REPO_DIR/moggit.sh"

# dynamically add mog alias to aliases.sh if not present
if ! grep -qxF "alias mog='$REPO_DIR/moggit.sh'" "$REPO_DIR/aliases.sh"; then
    echo "alias mog='$REPO_DIR/moggit.sh'" >> "$REPO_DIR/aliases.sh"
fi

# append source line to user shell config if not already there
if ! grep -qxF "source $REPO_DIR/aliases.sh" "$CONFIG_FILE"; then
    echo "" >> "$CONFIG_FILE"
    echo "" >> "$CONFIG_FILE"
    echo "# moggit brainrot aliases" >> "$CONFIG_FILE"
    echo "source $REPO_DIR/aliases.sh" >> "$CONFIG_FILE"
fi

echo -e "${GREEN}✅ Done!${RESET}"
echo -e "Restart your terminal or run ${BLUE}'source $CONFIG_FILE'${RESET} to load aliases."
