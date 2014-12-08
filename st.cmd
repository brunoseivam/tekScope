#!bin/linux-x86_64/scope

epicsEnvSet("STREAM_PROTOCOL_PATH", "scopeApp/Db")
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES", "1000000")

dbLoadDatabase("dbd/scope.dbd",0,0)
scope_registerRecordDeviceDriver(pdbbase)

usbtmcConfigure("SCOPE", 0x0699, 0x0408)
#asynSetTraceMask("SCOPE", -1, 0x9)
#asynSetTraceIOMask("SCOPE", -1, 0x2)

dbLoadTemplate("db/scope.substitutions")

iocInit()
