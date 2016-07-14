# SnabbStudio [![Build Status](https://travis-ci.org/ObjectProfile/snabbstudio.svg?branch=master)](https://travis-ci.org/ObjectProfile/snabbstudio) [![Download](https://api.bintray.com/packages/peteruhnak/SnabbStudio/SnabbStudio/images/download.svg) ](https://bintray.com/peteruhnak/SnabbStudio/SnabbStudio/_latestVersion#files)

SnabbStudio: Graphical analysis toolkit for Snabb users and developers


Installing SnabbStudio is just a few steps:
* Click on the download button, right above this line.
* A virtual machine is also necessary to run SnabbStudio. http://pharo.org/download contains a section "Custom Downloads" to download the virtual machine on OSX, Windows or Linux
* The source of Pharo available on http://files.pharo.org/get-files/50/sources.zip
* 

In the future, we will provide a one-click experience, that will be based on a bundle summarizing these steps.


```st
Metacello new
    baseline: 'SnabbStudio';
    repository: 'github://ObjectProfile/snabbstudio/repository';
    load
```
