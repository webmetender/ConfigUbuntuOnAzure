# ConfigUbuntuOnAzure
These scripts have been tested on Ubuntu Server 16.04 LTS installed on Azure VPS.

To download this scripts, connect to the VPS and run this line:
```bash
sudo apt-get install git
```
Once git is installed, move to your home directory and clone the scripts.
```bash
git clone https://github.com/webmetender/ConfigUbuntuOnAzure.git
```
After file download, make the scripts executable:
```bash
sudo chmod +x 01_sys_install_config.sh
sudo chmod +x 02_worker_compile_config.sh
```
You'd be now able to run the first file, it updates the OS and installs needed mudules.
You'll be asked to agree by hitting 'y' several times during the process.
```bash
sudo ./01_sys_install_config.sh
```
After this script ends, you need to log out and log baxk in to see memory configuration changes applied.
```bash
exit
```
Log back in and run the second script.
```bash
sudo ./02_worker_compile_config.sh
```
