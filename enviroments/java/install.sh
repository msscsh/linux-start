
sudo wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz

sudo tar -xzvf jdk-17_linux-x64_bin.tar.gz

sudo cp -r jdk-17.0.10/ ~/dev/bin

sudo rm -r jdk-17.0.10/
sudo rm jdk-17_linux-x64_bin.tar.gz

sudo chown $USER:$USER ~/dev/bin/jdk-17.0.10

echo "Writing variables to the user's bashrc file"
echo ""
echo "" >> $USER_ROOT_DIR/.bashrc
echo "" >> $USER_ROOT_DIR/.bashrc
echo "#Java" >> $USER_ROOT_DIR/.bashrc
echo "export JAVA_HOME=\$USER_ROOT_DIR/dev/bin/jdk-17.0.10" >> $USER_ROOT_DIR/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> $USER_ROOT_DIR/.bashrc
