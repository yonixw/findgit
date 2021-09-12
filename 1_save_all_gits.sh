date && \
 (find . -type d \
  -name ".git"  \
  -and -not -path '*/node_modules/*' \
  -and -not -path '*/.*/*' > all_gits.txt) \
&& date