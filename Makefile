compile_qemu:
	cargo build --target x86-64_my_os.json

compile_and_run:
	cargo build --target x86-64_my_os.json
	qemu-system-x86_64 -drive format=raw,file=target/x86-64_my_os/debug/bootimage-my_os.bin
