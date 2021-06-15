# SSHiggs_signalGeneration

# First time setup
- We need to add the model to the MadGraph models directory
```
cp -r /path/to/MLRSM /path/to/MadGraph/MG5_aMC_v3_1_1/models/
```
- Add ability to set MHPPL externally:
	- Modify `MLRSM/parameters.py`
	```
MHPPL = Parameter(name = 'MHPPL',
                  nature = 'external',
                  type = 'real',
                  #value = 'cmath.sqrt((-2*rho1 + rho3)*vR**2 + alpha3*vev**2*cmath.sqrt(1 - eps**2))/cmath.sqrt(2)',
                  value = 500, # default??
                  lhacode = [ 61 ],
                  lhablock = 'MASS',
                  texname = 'M_{\\text{HPPL}}')
	```

- It should be possible to add the model to `PYTHONPATH` (see [setup.sh](setup.sh)), but I could not get this to work yet
- `mg5_aMC install.cfg`

# Troubleshooting
- Installing pythia8 via
```
mg5_aMC
> install pythia8
```
didn't work - webpage for pythia8 version was not found. Instead, a tarball of [pythia8](https://pythia.org/releases/) can be downloaded, and manually installed with
```
mg5_aMC
> install pythia8 --pythia8_tarball=/path/to/pythia8245.tgz
```

# Run
For example, to run schan, ZGamma, 100GeV,
```cat cards/ssHiggs/schan/ZGamma/MHPPL_{base,100GEV}.txt > /tmp/runCard.txt
/path/to/bin/mg5_aMC /tmp/runCard.txt
```
