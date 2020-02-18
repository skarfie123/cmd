@echo off
jupyter nbconvert Jupyter\ "%~1" --to slides --post serve
