#!/bin/bash

# init
mkdir lab2
cd lab2
git init
mkdir trunk

# r0
echo "r0" >> thunk/msg0.txt
git add ./thunk/msg0.txt
git commit -m "r0 commit" --author="bolvan"

# r1
echo "r1" >> thunk/msg1.txt
git add ./thunk/msg1.txt
git commit -m "r1 commit" --author="bolvan"

# r2
git checkout -b blue
echo "r2" >> thunk/msg2.txt
git add ./thunk/msg2.txt
git commit -m "r2 commit" --author="umnik"

# r3
git checkout -b red
echo "r3" >> thunk/msg3.txt
git add ./thunk/msg3.txt
git commit -m "r3 commit" --author="bolvan"

# r4
git checkout main
echo "r4" >> thunk/msg4.txt
git add ./thunk/msg4.txt
git commit -m "r4 commit" --author="bolvan"

# r5
git checkout red
echo "r5"  >> thunk/msg5.txt
git add ./thunk/msg5.txt
git commit -m "r5 commit" --author="bolvan"

# r6
git checkout blue 
echo "r6" >> thunk/msg6.txt
git add ./thunk/msg6.txt
git commit -m "r6 commit" --author="umnik"

# r7
git checkout main
echo "r7" >>  thunk/msg7.txt
git add ./thunk/msg7.txt
git commit -m "r7 commit" --author="bolvan"

# r8
git checkout blue 
echo "r8" >> thunk/msg8.txt
git add ./thunk/msg8.txt
git commit -m "r8 commit" --author="umnik"

# r9
git checkout main
echo "r9" >> thunk/msg9.txt
git add ./thunk/msg9.txt
git commit -m "r9 commit" --author="bolvan"

# r10
git checkout blue 
echo "r10" >> thunk/msg10.txt
git add ./thunk/msg10.txt
git commit -m "r10 commit" --author="umnik"

# merging blue into red + r11
git checkout red
git merge blue 
echo "r11" >> thunk/msg11.txt
git add ./thunk/msg11.txt
git  commit -m "blue merged and r11 commit" --author="bolvan"

# r12
echo "r12" >> thunk/msg12.txt
git add ./thunk/msg12.txt
git commit -m "r12 commit" --author="bolvan"

# merging red into main + r13
git checkout main 
git merge red
echo "r13" >> thunk/msg13.txt
git add  ./thunk/msg13.txt
git commit -m "red merged and r13 commit" --author="bolvan"

# r14
echo "r14" >> thunk/msg14.txt
git add ./thunk/msg14.txt
git commit -m "r14 commit" --author="bolvan"