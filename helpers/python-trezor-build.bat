cd Z:\wine\wine-py2.7.8-32\drive_c\Python27\Scripts
python pip.exe install cython
cd Z:\code
python setup.py build
cd Z:\trezor
python setup.py build
python setup.py install 
python setup.py bdist
