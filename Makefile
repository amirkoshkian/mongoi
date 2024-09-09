tool_name=mongoi
src_dir=/usr/share
bin_dir=/usr/bin

install:
	sudo install -m 755 mongoi $(bin_dir)
	sudo mkdir -p $(src_dir)/$(tool_name)
	sudo cp -rv ./mongoi ./requirments-mongodb /usr/share/mongoi/
uninstall:
	sudo rm -rf $(bin_dir)/$(tool_name)
	sudo rm -rf $(src_dir)/$(tool_name)
reinstall:
	sudo rm -rf $(bin_dir)/$(tool_name)
	sudo rm -rf $(src_dir)/$(tool_name)
	sudo install -m 755 mongoi $(bin_dir)
	sudo mkdir -p $(src_dir)/$(tool_name)
	sudo cp -rv ./mongoi ./requirments-mongodb /usr/share/mongoi/
