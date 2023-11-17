#!/bin/bash

# Installing Lua
curl -R -O http://www.lua.org/ftp/lua-5.4.6.tar.gz
tar -zxf lua-5.4.6.tar.gz
cd lua-5.4.6/
make linux test
sudo make install

# Installing Luarocks
curl -R -O http://luarocks.github.io/luarocks/releases/luarocks-3.9.2.tar.gz
tar -zxf luarocks-3.9.2.tar.gz
cd luarocks-3.9.2/
./configure --force-config --lua-version=5.4
make
sudo make install

# Cleaning up
rm -rf lua-5.4.6.tar.gz luarocks-3.9.2.tar.gz lua-5.4.6/ luarocks-3.9.2/

echo "Lua and Luarocks installed"

