@echo off
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
title francessco.us (Debug)
cd ..
webdev serve