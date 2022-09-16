using Gridap
using Gridap.Algebra
using Gridap.Geometry
using Gridap.Fields
using Gridap.CellData
using Gridap.Arrays
using Gridap.ReferenceFEs
using Gridap.Fields: meas

using GridapGmsh
using GridapDistributed
using GridapDistributed.CellData

model = GmshDiscreteModel("NACA0012_3D_improved.msh")
writevtk(model, "NACA0012_3D")
