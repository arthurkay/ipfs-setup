TARGET_DIR = "ipfs-dir"
# Clone the ipfs repo
git-clone:
	if [ ! -d $(TARGET_DIR) ]; then git clone https://github.com/ipfs/go-ipfs ipfs-dir; fi

# Compile IPFS CLI
ipfs-cli:
	cd $(shell pwd)/ipfs-dir/cmd/ipfs && go build

# Configure systemd and start the ipfs daemon
setup: git-clone ipfs-cli
	cp ./ipfs.config ./ipfs.service
	sed -i 's+User=.*+User='"$$(whoami)"'+g' ./ipfs.service
	sed -i 's+WorkingDirectory=.*+WorkingDirectory='"$$(pwd)"'/ipfs-dir/cmd/ipfs+g' ./ipfs.service
	sed -i 's+ExecStart=.*+ExecStart='"$$(pwd)"'/ipfs-dir/cmd/ipfs/ipfs daemon+g' ./ipfs.service
	sudo cp ./ipfs.service /etc/systemd/system/
	sudo systemctl daemon-reload
	sudo systemctl start ipfs
