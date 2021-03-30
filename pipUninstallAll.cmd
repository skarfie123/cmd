@echo off
pip freeze --user > req.text
pip uninstall -y -r req.text
del req.text