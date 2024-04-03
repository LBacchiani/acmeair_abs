# ABS model for AcmeAir microservice architecture

## Executing ABS Simulations

The simulation can be executed via docker. First, you need to start a container containing the ABS code with:

```bash
docker run --entrypoint="/bin/bash" -i --rm -t lorenzobacchiani/abs_acmeair
```
The container is initially in acmeair_abs/.
To change the simulation parameters, you need to go in [param.abs](acmeair_abs/param.abs) and comment/uncomment/modify 
the parameters you want to discard/use/change, using vim as editor (it is already installed within the container).
