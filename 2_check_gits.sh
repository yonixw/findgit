#cat all_gits.txt | xargs -n 1 -d '\n' bash _git_status_fast.sh
cat all_gits.txt | xargs -n 1 -I{} bash _git_status_fast.sh {}