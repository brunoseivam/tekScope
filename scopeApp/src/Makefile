TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = scope
# scope.dbd will be created and installed
DBD += scope.dbd

# scope.dbd will be made up from these files:
scope_DBD += base.dbd

# Include dbd files from all support applications:
#scope_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#scope_LIBS += xxx

# scope_registerRecordDeviceDriver.cpp derives from scope.dbd
scope_SRCS += scope_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
scope_SRCS_DEFAULT += scopeMain.cpp
scope_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#scope_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
scope_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

scope_DBD += asyn.dbd
scope_DBD += drvAsynSerialPort.dbd
scope_DBD += drvAsynIPPort.dbd
scope_DBD += drvAsynUSBTMC.dbd
scope_DBD += stream.dbd
scope_DBD += calcSupport.dbd

scope_LIBS += asyn
scope_LIBS += stream
scope_LIBS += calc


