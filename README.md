# SDRplaylinux
Install scripts to build and install SoapySDR, SDRPlay support and CubicSDR on Ubuntu 16.04 and it's variants.

These two scripts will automatically install a build environment, dependancies, and pull down several projects from git.  These inlcude SoapySDR, the soapy module for the SDRPlay, and CubicSDR plus it's dependancies.
You will also need the linux driver installer downloaded from SDRPlay's website.
Put these into a folder named sdrplay on your desktop.   
Execute the first install script as root.
When it finishes, execute the SDRPlay driver installer from sdrplay.com, also as root.
Finally, execute the second installer script as root.
When it's finished, CubicSDR will be installed with SDRPlay supported through soapySDR.   It will not create any menu items, so depending on your desktop, you may want to add your own menu item to launch it.  The command is CubicSDR.

I have a more detailed explaination on my blog post.  Please browse to this address.
http://kb9rlw.blogspot.com/2017/06/step-by-step-install-of-sdrplay-rsp2.html
