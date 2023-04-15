#!/bin/bash -ex

# to lower permissions on files downloaded
sudo chmod a+rX mounts/ opt/ -R
sudo chown $USER opt/ -R
