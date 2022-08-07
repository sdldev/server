# cd somewhere
cd /tmp

#To install them in debian/ubuntu, you need to run:
sudo apt-get install autoconf autogen automake curl gcc git ipset kmod make pkg-config procps traceroute zlib1g-dev

# download iprange and firehol from github
git clone https://github.com/firehol/iprange.git iprange.git
git clone https://github.com/firehol/firehol.git firehol.git

# install iprange
cd iprange.git

./autogen.sh
# make sure it completed successfully

./configure --prefix=/usr CFLAGS="-march=native -O3" --disable-man
# make sure it completed successfully

make
# make sure it completed successfully

sudo make install
# make sure it completed successfully

# install firehol
cd ../firehol.git

./autogen.sh
# make sure it completed successfully

./configure --prefix=/usr --sysconfdir=/etc --disable-man --disable-doc
# make sure it completed successfully

make
# make sure it completed successfully

sudo make install
# make sure it completed successfully

# Create the default RUN_PARENT_DIR='/usr/var/run' who is set in '/etc/firehol/update-ipsets.conf'
mkdir -p /usr/var/run
