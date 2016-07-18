# SnabbStudio [![Build Status](https://travis-ci.org/ObjectProfile/snabbstudio.svg?branch=master)](https://travis-ci.org/ObjectProfile/snabbstudio) [![Download](https://api.bintray.com/packages/peteruhnak/SnabbStudio/SnabbStudio/images/download.svg) ](https://bintray.com/peteruhnak/SnabbStudio/SnabbStudio/_latestVersion#files)

SnabbStudio: Graphical analysis toolkit for Snabb users and developers

## Installation of SnabbStudio
Installing SnabbStudio is just a few steps:

1. Click on the download button, right above this line. It will open a page offers an archive to download.
2. The Pharo virtual machine is necessary to run SnabbStudio. http://pharo.org/download contains a section "Custom Downloads" to download the virtual machine on OSX, Windows or Linux
3. The source of Pharo available on http://files.pharo.org/get-files/50/sources.zip
4. Execute Pharo on the file snabbstudio-XX-Moose-6.0.image (e.g., on OSX, simply drag and drop the .image file on the Pharo application)

## Example of uses


## Future work
- In the future, we will provide a one-click experience, that will be based on a bundle summarizing these steps.
- Statistical tooling

------
SnabbStudio can also be installed programmatically, however only experienced Pharo and Roassal programmers are recommended to use it:
```st
Metacello new
    baseline: 'SnabbStudio';
    repository: 'github://ObjectProfile/snabbstudio/repository';
    load
```
