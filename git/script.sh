#!/bin/bash

# init
mkdir lab2
cd lab2
git init
cd lab2
mkdir reports

# r0
echo "r0" >> reports/msg0.txt
git add ./reports/msg0.txt
git commit -m "r0 commit" 

# r1
echo "r1" >> reports/msg1.txt
git add ./reports/msg1.txt
git commit -m "r1 commit" 

# r2
git checkout -b blue
echo "r2" >> reports/msg2.txt
git add ./reports/msg2.txt
git commit -m "r2 commit" 

# r3
git checkout -b red
echo "r3" >> reports/msg3.txt
git add ./reports/msg3.txt
git commit -m "r3 commit" 

# r4
git checkout master
echo "r4" >> reports/msg4.txt
git add ./reports/msg4.txt
git commit -m "r4 commit" 

# r5
git checkout red
echo "r5"  >> reports/msg5.txt
git add ./reports/msg5.txt
git commit -m "r5 commit" 

# r6
git checkout blue 
echo "r6" >> reports/msg6.txt
git add ./reports/msg6.txt
git commit -m "r6 commit" 

# r7
git checkout master
echo "r7" >>  reports/msg7.txt
git add ./reports/msg7.txt
git commit -m "r7 commit" 

# r8
git checkout blue 
echo "r8" >> reports/msg8.txt
git add ./reports/msg8.txt
git commit -m "r8 commit" 

# r9
git checkout master
echo "r9" >> reports/msg9.txt
git add ./reports/msg9.txt
git commit -m "r9 commit" 

# r10
git checkout blue 
echo "r10" >> reports/msg10.txt
git add ./reports/msg10.txt
git commit -m "r10 commit" 

# merging blue into red + r11
git checkout red
git merge blue -m "merge"
echo "r11" >> reports/msg11.txt
git add ./reports/msg11.txt
git  commit -m "blue merged and r11 commit" 

# r12
echo "r12" >> reports/msg12.txt
git add ./reports/msg12.txt
git commit -m "r12 commit" 
# merging red into master + r13
git checkout master 
git merge red -m "merge"
echo "r13" >> reports/msg13.txt
git add  ./reports/msg13.txt
git commit -m "red merged and r13 commit" 

# r14
echo "r14" >> reports/msg14.txt
git add ./reports/msg14.txt
git commit -m "r14 commit" 
