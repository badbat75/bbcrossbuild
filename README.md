# bbcrossbuild 0.9 Beta
This is a framework to cross-compile defined packages using an optional predefined sysroot directory.
## Current Limitations

 - Tested only ARM cross-compile projects. Other platforms will need
   adjustments and integration
 - Only RPi platform defined
 - Only one project to build: [Moode
   Audio](http://moodeaudio.org/)

## QuickStart
**Prepare your environment**

    $ git clone https://github.com/badbat75/bbcrossbuild.git
    $ cd bbcrossbuild
    $ cp bbxb.conf.default bbxb.conf
    $ ./bootstrap
`bootstrap`  installs all the dependencies on the build host *(the script is not complete, yet)*.

**Customization**

Edit your bbxb.conf and change the behaviour of the framework if you need (optional).

    $ vi bbxb.conf

**Run**

Run your build using the predefined projects

    $ ./bbxb <project> <platform>
 
 **Output**
 
 Get your package here: `.bbxb/<project>/<platform>/<project>.tar.xz`

## Create your own project

**Define your project**

TBC

**Define your package**

TBC

**Define your platform**

TBC

**Create your sysroot**

TBC
