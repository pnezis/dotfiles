#!/bin/bash
#
# Set sexy global git colors

# Color 
git config --global --replace-all color.ui auto

# Branch colors
git config --global --replace-all color.branch.current "yellow reverse"
git config --global --replace-all color.branch.local yellow
git config --global --replace-all color.branch.remote green

# Diff colors
git config --global --replace-all color.diff.meta "yellow bold"
git config --global --replace-all color.diff.frag "magenta bold"
git config --global --replace-all color.diff.old "red bold"
git config --global --replace-all color.diff.new "green bold"

# Status colors
git config --global --replace-all color.status.added yellow
git config --global --replace-all color.status.changed green
git config --global --replace-all color.status.untracked cyan
git config --global --replace-all color.status.nobranch red
