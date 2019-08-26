# new_pc_setup_script
Contains scripts to install custom bash_profile and apps with customisations...so I can wipe and load my machine with no dramas...config mgmt but for my PC :)

# Overview of each file 
- ./bash_profile and ./install_apps.sh
Contains the alias's used and entrypoints to call other scrtpts, like install_apps.sh
install_apps.sh is to be used when doing a 'wipe & load' of you mac or linux system. 
Post the initial boot, you'll have to install git, clone and run install_apps.sh and everthing you need should just automatically install using brew.

- ./makefile
compiles ./bash_profile and overwrites the file located in your  /Users/username/.bash_profile file

- dockerfile
This is the test/staging env, using centos so everything is pretty vinilla  

- ./new_pc_setup_script.code-workspace
VScode IDE wokspace for this project

- ./myTerminalTheme.terminal
my terminal theme

# How to use this Project

1. Edit the 
