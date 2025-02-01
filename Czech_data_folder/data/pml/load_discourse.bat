@echo off

SET DATA=.
SET BTRED=C:\tred\btred
echo "Going to replace discourse annotation in directories train-1 ... train-8, dtest and etest."
CALL :load_in_dir "train-1"
CALL :load_in_dir "train-2"
CALL :load_in_dir "train-3"
CALL :load_in_dir "train-4"
CALL :load_in_dir "train-5"
CALL :load_in_dir "train-6"
CALL :load_in_dir "train-7"
CALL :load_in_dir "train-8"
CALL :load_in_dir "dtest"
CALL :load_in_dir "etest"
echo "Done! You may check log files in directory bin to make sure there have been no errors."

EXIT /B %ERRORLEVEL%

:load_in_dir
SET DIR=%~1
echo "Processing directory %~1 (takes several minutes)"
CALL %BTRED% "-I" "%CD%\bin\delete_discourse.btred" "%DATA%/%DIR%/*.t.gz" > bin\load_discourse_%DIR%.log 2>&1
CALL %BTRED% "-I" "%CD%\bin\load_discourse.btred" "%DATA%/%DIR%/*.t.gz" "-o" "%CD%\bin\_extracted_PDiT30.tsv" "--"  >> bin\load_discourse_%DIR%.log 2>&1
EXIT /B 0
