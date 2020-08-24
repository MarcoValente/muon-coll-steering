echo Downloading BIB and signal samples. WARNING: This might take a while...
mkdir -p 
cd inputs
wget https://cernbox.cern.ch/index.php/s/K70LjkKVyS5w2RC/download && tar zxvf download && rm download
cd -
