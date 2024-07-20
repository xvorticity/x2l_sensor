Enviroment Setup
  Run "setup.sh" to initialize pico-sdk and setup build folder with Makefile.

Build
  Run "make " followed by build target to build *.elf, *.uf2, and *.bin files.
    "make hello_world"

Copy to RP2040 Target over USB
  Run "usb.sh" to reset the RP2040 and mount the file system at /media/$USER/rp2040.
  Copy *.uf2 file to the previous mount point.
    "sudo cp build/hello_world.uf2 /media/$USER/rp2040/"
