#!/bin/bash
# Remove files that end in '---` only from all lists
for file in `find ./src/public-celtic-encyclopedia/ -type f -not -name "README.md"`;do
  if [ "`tail -n1 $file`" == "---" ]; then
    export filename="${file##*/}"
    sed -e "/${filename}/d" -i "./src/public-celtic-encyclopedia/${filename:0:1}.md" || echo $file not empty;
  fi
done

# Remove files that end in '---` only
for file in `find ./src/public-celtic-encyclopedia/ -type f -not -name "README.md"`;do
  tail -n1 $file 2>/dev/null | grep "\-\-\-" >/dev/null && echo rm -f $file || echo $file not empty
done