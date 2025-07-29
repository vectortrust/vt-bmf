# Hera Git Bootstrap Script for Vector Trust
# Navigate to project directory
cd /home/nfs/vtrust/vt-bmf || exit 1

# Initialize Git repository
git init

# Configure Vector Trust credentials
git config user.name "vectortrust"
git config user.email "vt@vectortrust.org"

# Optional: set GPG signing key if you have it
# Replace YOURKEYID with actual key ID
git config user.signingkey /home/nfs/vtrust/vtrust.asc
git config commit.gpgsign true

# Stage and commit all files
git add .
git commit -m "Initial commit: core ignition"

# Connect to remote GitHub repository (if already created)
git remote add origin https://github.com/vectortrust/vt-bmf.git
git branch -M vt-bmf-main
git push -u origin vt-bmf-main
