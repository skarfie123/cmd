@echo off
kubectl get pods | findstr %~1 > tmpFile 
set /p var= < tmpFile 
del tmpFile 

for /f "tokens=1 delims= " %%a in ("%var%") do (
  set pod=%%a
)

kubectl get pods %pod% -o jsonpath='{.spec.containers[*].name}' > tmpFile 
set /p conts= < tmpFile 
del tmpFile
set conts2=%conts:1,-1%
for /f "tokens=1 delims= " %%a in ("%conts:~1,-1%") do (
  set cont=%%a
)

kubectl logs %pod% -c %cont%