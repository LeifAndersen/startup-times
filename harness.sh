#!/usr/bin/env bash

javac spd.java
gcc spd.c -o spd
raco make spd.rkt

echo "C"
time sh -c 'for i in $(seq 1 100); do ./spd > /dev/null; done'
echo ""

echo "sh"
time sh -c 'for i in $(seq 1 100); do ./spd.sh > /dev/null; done'
echo ""

echo "Lua"
time sh -c 'for i in $(seq 1 100); do lua spd.lua > /dev/null; done'
echo ""

echo "Racket"
time sh -c 'for i in $(seq 1 100); do racket spd.rkt > /dev/null; done'
echo ""

echo "Java"
time sh -c 'for i in $(seq 1 100); do java spd > /dev/null; done'
