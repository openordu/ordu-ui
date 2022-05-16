#/bin/bash
cd `dirname $0`
git submodule update --remote --recursive --force
git submodule
git add .
git commit -m 'updating submodule commits'
git push
cd -

