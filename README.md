# Wallpapers

This is a collection of images I use as wallpapers. None of them were created by 
me, and if you're the original creator and would like me to remove them then just 
let me know and I'll remove them.

If you want to see a preview of the images, check out the 
[Preview.md](Preview.md) 
file.


## Sources

Most wallpapers come from [mut-ex/wallpapers](https://github.com/mut-ex/wallpapers)
and I try to always keep this repo up to date with this other one. Besides those, I
also added a couple of images myself.

If I know where an image was published then I will try to add said references in
the [Credits.md](Credits.md) file, which contains previews of the images and the
link from where they were originally taken. Only images for which there is such
a link are shown.


## Adding new images

Add the image to the root of the repo and remember to add an appropriate entry
to `credits.smp` that maps the name of the image with the source it was taken
from.

Then run `generate_preview.sh` to generate the `Preview.md` file. This script
will read `credits.smp` and generate the preview file from it.