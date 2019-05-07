# convert .bin to shellcode
bin2sc() {
    hexdump -v -e '"\\""x" 1/1 "%02x" ""' ${1}
}
