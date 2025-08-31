#!/usr/bin/env bash
# moggit.sh
# commit message builder

# source colors
source "$(dirname "$0")/colours.sh"

echo -e "${PINK}🤫🧏 commit time!${RESET}"
echo ""

# pick commit type
types=("feat" "fix" "docs" "style" "refactor" "test" "chore")
echo -e "${BLUE}Select commit type:${RESET}"
select type in "${types[@]}"; do
    if [[ -n "$type" ]]; then
        break
    else
        echo -e "${YELLOW}❌ Invalid choice, try again.${RESET}"
    fi
done

# add scope (area of code changed)
echo -e "${GREEN}Enter scope (optional):${RESET}"
read -rp "> " scope
[[ -n "$scope" ]] && scope="($scope)"

# commit summary
# commit summary
while true; do
    echo -e "${PURPLE}Enter summary (max 100 chars):${RESET}"
    read -rp "> " summary

    if (( ${#summary} > 100 )); then
        echo -e "${YELLOW}⚠️  Summary is ${#summary} chars, which is over 50.${RESET}"

        while true; do
        echo -e "${YELLOW}Do you want to trim it to 50 chars or rewrite it? (t/r)${RESET}"
        read -rp "> " choice
        case "$choice" in
            [Tt]* )
            summary="${summary:0:50}"
            echo -e "${GREEN}Summary trimmed to:${RESET} $summary"
            break 2   # breaks both inner and outer loop, summary is finalised
            ;;
            [Rr]* )
            echo -e "${BLUE}Please rewrite your summary.${RESET}"
            break      # break inner loop, outer loop repeats for new summary
            ;;
            * )
            echo -e "${YELLOW}Invalid choice, please type 't' to trim or 'r' to rewrite.${RESET}"
            ;;
        esac
        done
    else
        break  # summary <=50 chars, done
    fi
done

# message builder
message="$type$scope: $summary"
echo ""
echo -e "${BLUE}Commit message will be:${RESET}"
echo -e "${PINK}$message${RESET}"
echo ""

# confirm & commit
echo -e "${GREEN}Commit? (y/n)${RESET}"
read -rp "> " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
    git add .
    git commit -m "$message"
    echo ""
    echo -e "${PINK}✅ Committed!${RESET}"
else
    echo ""
    echo -e "${RED}❌ Commit cancelled.${RESET}"
fi
