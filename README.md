## Enviroment Setup

Run setup.sh to initialize pico-sdk and setup build folder with Makefile.
  
## Build Target

Run "make " followed by build target to build *.elf, *.uf2, and *.bin files.

    make hello_world

## Copy to RP2040 Target over USB

Run usb_boot.sh to reset the RP2040 in usb boot mode and mount the file system at /media/$USER/rp2040.

Copy *.uf2 file to the previous mount point.

    sudo cp build/hello_world.uf2 /media/$USER/rp2040/

## Reset RP2040

Run reset_rp2040.sh to reset the RP2040 in flash boot. The RP2040 will run previously flashed code.