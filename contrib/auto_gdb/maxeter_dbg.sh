#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.maxetercore/maxeterd.pid file instead
maxeter_pid=$(<~/.maxetercore/testnet3/maxeterd.pid)
sudo gdb -batch -ex "source debug.gdb" maxeterd ${maxeter_pid}
