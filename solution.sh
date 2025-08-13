#!/bin/bash

# init a repo
git init

# add origin, set default branch to main, then fetch latest changes
git remote add origin https://github.com/AbdullaK123/git_demo.git
git branch -M master main
git pull origin main

# create a new branch
git checkout -b cool_content

# make a file with some content
echo "This is cool content" > first_file.txt

# first changes!
git add .
git commit -m "First Commit!"
git push origin cool_content

# switch to main then merge
git checkout main
git merge cool_content --allow-unrelated-histories

# switch back to cool_content
git checkout cool_content

# make another file with some content
echo "This is more cool content" > second_file.txt
echo "ANOTHER LINE" >> second_file.txt

# another file
echo "This is even more cool content" > third_file.txt
echo "ANOTHER LINE" >> third_file.txt

# second commit
git add .
git commit -m "Second Commit"
git push origin cool_content

# switch to main then merge
git checkout main
git merge cool_content --allow-unrelated-histories

# switch back to cool_content
git checkout cool_content

# more changes
rm first_file.txt

# final commit 
git add .
git commit -m "Third Commit!"
git push origin cool_content

# switch the main branch and merge
git checkout main
git merge cool_content --allow-unrelated-histories

# show status
git status

echo "DONE!"