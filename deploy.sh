# git submodule add https://github.com/nodejh/hugo-theme-mini.git themes/mini
echo '---- START BUILDING ----'
HUGO_ENV=production hugo -D

echo '---- START UPDATING MAIN REPO ----'
git add .
git commit -m "updated on `date +'%Y-%m-%d %H:%M:%S'`"
git push

echo '---- START UPDATING PUBLIC REPO ----'
cd public
git add .
git commit -m "generated files on `date +'%Y-%m-%d %H:%M:%S'`"
git push

echo '---- DEPLOY SUCCESS ----'