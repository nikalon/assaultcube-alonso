# assaultcube-snap
The necessary files that drives a build of AssaultCube as a snap package
## How to build
1. Install snapcraft. You can install it from any supported distribution, like Ubuntu 16.04: `sudo apt install snapcraft`
2. Clone this repository: `git clone https://github.com/nikalon/assaultcube-snap.git -b snapcraft.yaml`
3. Go to the cloned directory: `cd assaultcube-snap`
4. Build and make the snap: `snapcraft clean && snapcraft`
## How to install the package
Currently AssaultCube is not confined, you must install it with devmode:
`sudo snap install assaultcube*.snap --devmode --dangerous`
