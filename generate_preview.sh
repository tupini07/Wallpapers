#!/usr/bin/env bash
# Generate a Preview.md file with links and 
# previews of all the images in the repo and update repo

git pull git@github.com:turing753/wallpapers.git master

# get all files that don't end in `md` or `sh` and for each 
# echo to `Preview.md` the appropriate line to include the image
# preview

ls | grep -vE ".+(md|sh|smp)$" \
   | xargs -I _ echo -e "### [_](_) \n![_](_)" \
   > Preview.md

ls | grep -vE ".+(md|sh|smp)$" \
   | xargs -I _ bash -c "grep '_' credits.smp \
                               | cut -d':' -f2- \
                               | cut -c 2- \
                               | xargs -I {} echo -e '### [_](_) \n[{}]({}) \n![_](_)'" > Credits.md
