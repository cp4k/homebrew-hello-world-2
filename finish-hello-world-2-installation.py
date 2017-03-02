#!/usr/local/bin/python

import subprocess, os, shutil

def run_command(command, *args):
    print "$", command, " ".join(args)
    subprocess.check_call((command,)+args)

def copy_directory(source, dest):
    if os.path.exists(dest):
        print dest, "already exists."
        print "I won't copy anything there to avoid overwriting your data."
    elif not os.path.exists(source):
        print "Installation failed!"
        print "Please contact Carter at cp4khelp@gmail.com and tell him this:"
        print
        print source, "didn't exist and it should've."
        print
    else:
        print "Copying", source, "to", dest
        shutil.copytree(source, dest)
        

print "Finishing up the Hello World! 2nd Edition installation..."

homebrew_prefix = subprocess.check_output(["brew", "--prefix"]).rstrip("\r\n")

if homebrew_prefix != "/usr/local":
    print
    print "WARNING: It looks like you've installed Homebrew to a custom"
    print "         location instead of /usr/local. I haven't tested this,"
    print "         so it might not work. Contact cp4khelp@gmail.com if you"
    print "         run into any issues."
    print

print "Installing easygui..."

try:
    run_command(homebrew_prefix+"/bin/pip", "install", "--upgrade", "easygui")
except:
    print
    print "WARNING: Easygui installation failed! If easygui (Ch 6 of the book)"
    print "         doesn't work, contact cp4khelp@gmail.com !"
    print

print
print "Installing IDLE..."

copy_directory(homebrew_prefix+"/opt/python/IDLE.app", "/Applications/IDLE.app")

print
print "Installing Qt Designer..."

copy_directory(homebrew_prefix+"/opt/qt/Designer.app", "/Applications/Qt Designer.app")

print
print "Installation complete! Enjoy the book!"
print "The sample code and images can be downloaded from:"
print "    http://helloworldbookblog.com/downloads/"
print "If you run into any trouble, please contact cp4khelp@gmail.com ."