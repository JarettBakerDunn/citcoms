# -*- Makefile -*-
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# <LicenseText>
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#

PROJECT = CitcomS
PACKAGE = Exchangermodule

include std-pythonmodule.def
PROJ_CXX_INCLUDES = ../../lib/Common

PROJ_CXX_SRCLIB = \
        $(EXPORT_ROOT)/modules/$(PROJECT)/Regionalmodule.so \
        -ljournal \
        -lmpimodule

EXTERNAL_LIBPATH += -L$(TOOLS_DIR)/lib

PROJ_SRCS = \
	AreaWeightedNormal.cc \
	Boundary.cc \
	BoundaryCondition.cc \
	BoundedBox.cc \
	BoundedMesh.cc \
	CartesianCoord.cc \
	Convertor.cc \
	FEMInterpolator.cc \
	Interior.cc \
	InteriorImposing.cc \
	SIUnit.cc \
	Sink.cc \
	Source.cc \
	TractionInterpolator.cc \
	TractionSource.cc \
	VTInterpolator.cc \
	bindings.cc \
	exceptions.cc \
	exchangers.cc \
	initTemperature.cc \
	misc.cc \
	utility.cc


# version
# $Id: Make.mm,v 1.12 2004/01/08 20:42:56 tan2 Exp $

# End of file
