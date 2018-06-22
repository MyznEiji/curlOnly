#!/bin/sh
# arg1=BRANCH_NAME  arg2=FILE_NAME

desc=~/Desktop
git_dir=~/Desktop/git-flow-tutorial/
pwd_dir=pwd

cd $desc
git clone https://github.com/MyznEiji/git-flow-tutorial.git
cd $git_dir
git checkout -b $1
touch $2.txt
echo fetch_test > $2.txt
git add .
git commit -m fetch_test
git push origin $1
open https://github.com/MyznEiji/git-flow-tutorial

echo " remove directory [Enter] "
read

rm -rf $git_dir
rm -f $pwd_dir/fetch_test.sh
