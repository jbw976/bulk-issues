#!/bin/sh

issue_title="Compliance: Community Extension Projects"

# Loop through the repositories in repos.txt and create an issue in each
while IFS= read -r repo || [ -n "$repo" ]; do
  gh issue create --repo "$repo" --title "$issue_title" --body-file body.md
  sleep 3  # slow down a bit to avoid rate limiting
done < repos.txt