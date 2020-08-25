# Muon collider steering

This repository provides a set of helper scripts for launching simulation and reconstruction of the MuonColliderSoft framework. The code is based on the docker images provided by INFN `infnpd/mucoll-ilc-framework:1.0-centos8` and the steering of the docker image is done with the `docker-compose` multi-container manager generally provided with the standard docker installation.

## Download the test input files
After cloning this project, test input files can be downloaded by executing
```
source scripts/download-test-files.sh
```
Once test files have been retrieved you are ready to run the analysis following the next instructions.

## Run the analysis

The various steps of the event generation and the interactions with the `infnpd/mucoll-ilc-framework:1.0-centos8` docker container are simplified using a `docker-compose.yml` file. In order to run this, you will need docker and docker-compose installed (see [https://www.docker.com](https://www.docker.com)).


- The **simulation** of muon interactions
```
docker-compose run simulation
```
- After the simulation step, the **reconstruction** can be performed using the command: 
```
docker-compose run reco
```

## Run the Beam Induced Background (BIB)
BIB files can be downloaded and untared by typing
```
source scripts/download-bib-files.sh
```
Since files are really large this might take a while. In order to rerun the reconstruction step with the BIB included, you can run with the BIB xml file by uncommenting
```
#RECO_CONFIG_XML=xml/reco_steer_BIB_notrack.xml
```
in the `.env` file. Right now, a crash might happen due to memory usage issue (you will need to provide docker with more memory in order to run this).

## Useful links
-   [Open question and ideas slides (July 2020)](https://indico.fnal.gov/event/43963/contributions/190487/attachments/131664/161302/EF-Workshop-MuonColl.pdf)
-   [Muon collider software](https://sites.google.com/site/muoncollider/home)
-   [Hands-on tutorial](https://indico.cern.ch/event/938616/)
-   [Indico session](https://indico.cern.ch/event/937551/)
