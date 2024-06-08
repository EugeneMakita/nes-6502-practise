To run the project install fceux via homebrew
then install ca65 from source
run only once ca65 wrapper.s -o wrapper.o
then run ca65 file-name.asm -o file-name.o
then run ld65 -C nes.cfg -o file-name.nes file-name.o wrapper.o
