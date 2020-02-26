#!/usr/bin/env bash
# Generate a Preview.md file with links and 
# previews of all the images in the repo and update repo

git pull git@github.com:turing753/wallpapers.git master

# get all files that don't end in `md` or `sh` and for each 
# echo to `Preview.md` the appropriate line to include the image
# preview

ls | grep -vE ".+(md|sh)$" \
   | xargs -I _ echo -e "### [_](_) \n![_](_)" \
   > Preview.md