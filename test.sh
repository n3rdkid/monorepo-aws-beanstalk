number_of_tags=$(git tag | wc -l)
if [ $number_of_tags -lt 2 ]; then
    echo "Creating production build for first time"
    exit 0
fi
old_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --skip=1  --max-count=1)) 
echo $old_tag
new_tag=$(git describe --abbrev=0 --tags $(git rev-list --tags --max-count=1))
echo $new_tag
diff_files_consumer=$(git diff $old_tag $new_tag --name-only | grep -c packages/consumer || true)    
diff_files_common=$(git diff $old_tag $new_tag --name-only | grep -c packages/common || true)  
echo $diff_files
if [[ ${diff_files} -ne 0 ] ||[ ${diff_files_common} -ne 0 ] ]; then
     echo there is diff
fi