# NARM
NARM is open source operating system and free.

This system is created and developed by an aglerain programmer.

The system may not be used for commercial or political pursposes

the distributor or modifier of its source code is 
expected to re-export it under the system name according to the GPL 3 

## Goals 
- Custom bootloader
- learn low-level programming
- build modular operating system

## Work map 
- [x] Boot sector
- [ ] Stage loader
- [ ] protected mode (32-bit)
- [ ] Kernel loading 
- [ ] memory manger
- [ ] File system
- [ ] system calls
- [ ] user mode


## Porjecty structure
```text
|-->/boot
|	|-> /lib16
|	|		|->std.asm
|	|-> bootsector.asm
|-->/binary
|		|->/boot
|-->/build-boot.lua
