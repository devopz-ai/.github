#!/bin/bash
#
# Add a new project to the Devopz.ai organization profile
#
# Usage:
#   ./scripts/add-project.sh <repo-name> "<description>"
#
# Example:
#   ./scripts/add-project.sh my-new-tool "A tool that does something cool"
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PROFILE_README="$ROOT_DIR/profile/README.md"

# Colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

if [[ -z "$1" ]]; then
    echo "Usage: $0 <repo-name> \"<description>\""
    echo ""
    echo "Example:"
    echo "  $0 my-new-tool \"A tool that does something cool\""
    exit 1
fi

REPO_NAME="$1"
DESCRIPTION="${2:-A new project by Devopz.ai}"

echo ""
echo -e "${CYAN}Adding project to Devopz.ai profile...${NC}"
echo ""
echo "  Repo: $REPO_NAME"
echo "  Description: $DESCRIPTION"
echo ""

# Create the new project section
NEW_PROJECT="
### [$REPO_NAME](https://github.com/devopz-ai/$REPO_NAME)

$DESCRIPTION

\`\`\`bash
git clone https://github.com/devopz-ai/$REPO_NAME.git
\`\`\`
"

# Insert before the "Connect With Us" section
if grep -q "## Connect With Us" "$PROFILE_README"; then
    # Use awk to insert before "Connect With Us"
    awk -v new="$NEW_PROJECT" '
    /^## Connect With Us/ {
        print "---"
        print new
        print ""
    }
    { print }
    ' "$PROFILE_README" > "$PROFILE_README.tmp"
    mv "$PROFILE_README.tmp" "$PROFILE_README"

    echo -e "${GREEN}Added $REPO_NAME to profile/README.md${NC}"
    echo ""
    echo "Next steps:"
    echo "  1. Review: cat profile/README.md"
    echo "  2. Commit: git add . && git commit -m \"Add $REPO_NAME to profile\""
    echo "  3. Push:   git push"
else
    echo -e "${YELLOW}Could not find 'Connect With Us' section. Add manually.${NC}"
    echo ""
    echo "Add this to profile/README.md:"
    echo "$NEW_PROJECT"
fi
