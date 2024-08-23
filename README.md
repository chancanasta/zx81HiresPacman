# Hires PacMan - tested and working on a real ZX81
Assembly language example of pseudo hires on a ZX81 with 16K Expansion Pack

Main file is:
pacman.asm

Requires the Telemark Assembler (TASM) to build

there is a DOS batchfile include, project can be assembled with just

zxasm pacman

or 

tasm -80 -b -s pacman.asm pacman.p

The resulting .p file can be run on ZX81 emulators or converted into a wav file and loaded onto a real ZX81


