# assaultcube-snap

The necessary files that drives a build of AssaultCube as a snap package

## How to build

To build this package it's recommended to use a clean installation of Ubuntu 16.04

1. Install snapcraft: `sudo apt install snapcraft`
2. Clone this repository: `git clone https://github.com/nikalon/assaultcube-snap.git -b next`
3. Go to the cloned directory: `cd assaultcube-snap`
4. Build and make the snap: `snapcraft clean && snapcraft`

## How to install the package

Currently AssaultCube is not confined, you must install it with devmode:

`sudo snap install assaultcube*.snap --devmode --dangerous`

The `--dangerous` flag it's needed to install snap packages outside the store.
