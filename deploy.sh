echo 'START BUILDING'
hugo --minify

echo 'START UPDATING MAIN REPO'
git add .
git commit -m "updated on `date +'%Y-%m-%d %H:%M:%S'`"
git push

echo 'START UPDATING PUBLIC REPO'
cd public
git add .
git commit -m "generated files on `date +'%Y-%m-%d %H:%M:%S'`"
git push

echo 'DEPLOY SUCCESS'