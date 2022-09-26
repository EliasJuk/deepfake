SET var=%cd%

IF EXIST "%var%\venv" (
	cd venv/Scripts/
	call activate.bat
	cd ../../
  call jupyter notebook

) ELSE (
  call python -m venv venv
	cd venv/Scripts/
	call activate.bat
	cd ../../
	call python -m pip install --upgrade pip
	call pip install notebook
  call jupyter notebook
)