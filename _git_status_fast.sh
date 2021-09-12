cd "$1"
cd ..

echo [FOLDER] $(pwd)

origins=`git remote -v | wc -l`
if [ -z $origins ]
then
    echo "    * No remotes! in: $1";
fi

git status | grep -q 'nothing to commit'
if [ $? -ne 0 ]
then
    echo "    * Files uncommited in: $1";
fi

git status | grep -q 'branch is up to date'
if [ $? -ne 0 ]
then
    echo "    * Commits to push in: $1";
fi