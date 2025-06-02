# Remove the .terraform directory from tracking
git rm -r --cached .terraform

# Add it to your .gitignore
echo ".terraform/" >> .gitignore

# Commit the change
git add .gitignore
git commit -m "Remove .terraform directory and add to .gitignore"

# Push again
git push origin main

