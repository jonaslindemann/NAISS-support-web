`PETSc <http://www.mcs.anl.gov/petsc/developers/>`_
is the development version of PETSc.

## How to use

It is necessary to have the correct petsc module loaded.
For complex arithmetic, one should e.g.

```text
module load petsc-complex/3.5.4-intelmpi-5.0.3-avx2
mpicc example.c
```
