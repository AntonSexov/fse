#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SVN_TRUNK=file://$SCRIPT_DIR/lab2/trunk
SVN_BRANCHES=file://$SCRIPT_DIR/lab2/branches
SVN_BRANCH_RED=file://$SCRIPT_DIR/lab2/branches/red
SVN_BRANCH_BLUE=file://$SCRIPT_DIR/lab2/branches/blue


#init
svnadmin create lab2
svn mkdir -m "trunk" $SVN_TRUNK
svn mkdir -m "branches" $SVN_BRANCHES
svn checkout $SVN_TRUNK trunk
 
#r0
echo "r0" >> trunk/message0.txt
svn add trunk/message0.txt
cd trunk && svn commit -m "r0 commit" --username=bolvan && cd ..

#r1
echo "r1" >> trunk/message1.txt
svn add trunk/message1.txt
cd trunk && svn commit -m "r1 commit" --username=bolvan && cd ..

#branching out + r2
svn copy $SVN_TRUNK $SVN_BRANCH_BLUE -m "blue branch added"
cd trunk && svn switch $SVN_BRANCH_BLUE && cd ..
echo "r2" >> trunk/message2.txt
svn add trunk/message2.txt
cd trunk && svn commit -m "r2 commit" --username=umnik && cd ..

#branching out + r3
svn copy $SVN_BRANCH_BLUE $SVN_BRANCH_RED -m "red branch added"
cd trunk && svn switch $SVN_BRANCH_RED && cd ..
echo "r3" >> trunk/message3.txt
svn add trunk/message3.txt
cd trunk && svn commit -m "r3 commit" --username=bolvan && cd ..

#r4
cd trunk && svn switch $SVN_TRUNK && cd ..
echo "r4" >> trunk/message4.txt
svn add trunk/message4.txt
cd trunk && svn commit -m "r4 commit" --username=bolvan && cd ..

#r5
cd trunk && svn switch $SVN_BRANCH_RED && cd ..
echo "r5" >> trunk/message5.txt
svn add trunk/message5.txt
cd trunk && svn commit -m "r5 commit" --username=bolvan && cd ..

#r6
cd trunk && svn switch $SVN_BRANCH_BLUE && cd ..
echo "r6" >> trunk/message6.txt
svn add trunk/message6.txt
cd trunk && svn commit -m "r6 commit" --username=umnik && cd ..

#r7
cd trunk && svn switch $SVN_TRUNK && cd ..
echo "r7" >> trunk/message7.txt
svn add trunk/message7.txt
cd trunk && svn commit -m "r7 commit" --username=bolvan && cd ..

#r8
cd trunk && svn switch $SVN_BRANCH_BLUE && cd ..
echo "r8" >> trunk/message8.txt
svn add trunk/message8.txt
cd trunk && svn commit -m "r8 commit" --username=bolvan && cd ..

#r9
cd trunk && svn switch $SVN_TRUNK && cd ..
echo "r9" >> trunk/message9.txt
svn add trunk/message9.txt
cd trunk && svn commit -m "r9 commit" --username=bolvan && cd ..

#r10
cd trunk && svn switch $SVN_BRANCH_BLUE && cd ..
echo "r10" >> trunk/message10.txt
svn add trunk/message10.txt
cd trunk && svn commit -m "r10 commit" --username=bolvan && cd ..

#merging blue into red + r11
cd trunk && svn switch $SVN_BRANCH_RED
svn up 
svn merge --force $SVN_BRANCH_BLUE
cd ..
echo "r11" >> trunk/message11.txt
svn add trunk/message11.txt
cd trunk && svn commit -m "blue merged and r11 commit" --username=bolvan && cd ..

#r12
echo "r12" >> trunk/message12.txt
svn add trunk/message12.txt
cd trunk && svn commit -m "r12 commit" --username=bolvan && cd ..

#meging into master + r13
cd trunk && svn switch $SVN_TRUNK
svn up 
svn merge --force $SVN_BRANCH_RED
cd ..
echo "r13" >> trunk/message13.txt
svn add trunk/message13.txt
cd trunk && svn commit -m "red merged and r13 commit" --username=bolvan && cd ..

#r14
echo "r14" >> trunk/message14.txt
svn add trunk/message14.txt
cd trunk && svn commit -m "r14 commit" --username=bolvan && cd ..
