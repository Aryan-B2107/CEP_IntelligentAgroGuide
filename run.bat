# Set up a function in your shell's profile (e.g., .bashrc or .zshrc)
function push_feature_branch() {
  # Check if a branch name was provided
  if [ -z "$1" ]; then
    echo "Usage: push_feature_branch <branch_name>"
    return 1
  fi

  BRANCH_NAME=$1

  # Create and switch to the new feature branch
  git checkout -b "$BRANCH_NAME"

  # Stage all changes
  git add .

  # Commit the changes with a default message
  git commit -m "feat: adding new feature on $BRANCH_NAME"

  # Push the new branch to the remote repository
  git push -u origin "$BRANCH_NAME"
}

# Add an alias to the function for easy use
alias agro-push='push_feature_branch'