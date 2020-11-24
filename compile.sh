nasm -f macho64 hello_world.asm
ld -macosx_version_min 10.7.0 hello_world.o
