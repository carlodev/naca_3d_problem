#!/bin/sh
export PATH=$HOME/julia-1.7.2/bin/:$PATH

srun julia --project=../ -J ../ExoFlow.so -O3 --check-bounds=no -e 'using Gridap
using GridapDistributed
using GridapGmsh
using PartitionedArrays


    prun(mpi, 4) do parts
        model =  GmshDiscreteModel(parts, "../models/NACA0012_3D_improved.msh")
        writevtk(model, "NACA0012_3D_distributed")
    end
'