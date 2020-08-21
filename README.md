# HH Muon collider

This repository stores a set of scripts for the studies of HH production and detection at muon colliders. The code is fully based on the docker images provided by INFN `infnpd/mucoll-ilc-framework:1.0-centos8`.

## Run the analysis

The various steps of the event generation are simplified using a `docker-compose.yml` file. In order to run this, you will need docker installed (see [https://www.docker.com](https://www.docker.com)).

- The **simulation** of interactions
```
docker-compose run simulation
```
- After the simulation step, the **reconstruction** can be performed using the command: 
```
docker-compose run reco
```

## Useful links
-   [Open question and ideas slides (July 2020)](https://indico.fnal.gov/event/43963/contributions/190487/attachments/131664/161302/EF-Workshop-MuonColl.pdf)
-   [Muon collider software](https://sites.google.com/site/muoncollider/home)
-   [Hands-on tutorial](https://indico.cern.ch/event/938616/)
-   [Indico session](https://indico.cern.ch/event/937551/)
