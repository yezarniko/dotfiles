#!/usr/bin/python3
#!!! Only Run This Script On First Setup

import os
import subprocess
import shutil

manual_linking = ['Code', 'vifm']
home = os.environ['HOME']
joinPath = os.path.join
dotfilePath = os.getcwd()
distPath = home


def autolink(path, distPath):
    if not os.path.exists(distPath):
        print(f"mkdir {distPath}")
        os.makedirs(distPath)
    for f in [f for f in os.listdir(path) if f not in manual_linking]:
        absPath = joinPath(path, f)
        absDistPath = joinPath(distPath, f)
        if os.path.exists(absDistPath):
            subprocess.call(["rm", "-r", f"{absDistPath}"])
        print(f"ln -s {absPath} {absDistPath}")
        subprocess.call(["ln", "-s", absPath, absDistPath])


configPath = joinPath(distPath, ".config")
binPath = joinPath(distPath, ".local/bin")

# .config
autolink(joinPath(dotfilePath, ".config"), configPath)

# custom_scripts
autolink(joinPath(dotfilePath, "custom_scripts"), binPath)

# dmenu_scripts
autolink(joinPath(dotfilePath, "dmenu_scripts"), binPath)
