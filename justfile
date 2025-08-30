export APPID := "com.obsproject.Studio.Plugin.Countdown"

default:
    @just --list

build:
   #!/bin/bash
   flatpak run org.flatpak.Builder --default-branch=stable $"./build-dir" --state-dir=$"./flatpak-builder" --ccache --force-clean --user --install --disable-rofiles-fuse ./$APPID.yaml 
