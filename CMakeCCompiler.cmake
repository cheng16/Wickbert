SET(CMAKE_C_COMPILER "cl")
SET(CMAKE_AR "CMAKE_AR-NOTFOUND")
SET(CMAKE_RANLIB ":")
SET(CMAKE_COMPILER_IS_GNUCC )
SET(CMAKE_C_COMPILER_LOADED 1)
SET(CMAKE_COMPILER_IS_MINGW )
SET(CMAKE_COMPILER_IS_CYGWIN )
IF(CMAKE_COMPILER_IS_CYGWIN)
  SET(CYGWIN 1)
  SET(UNIX 1)
ENDIF(CMAKE_COMPILER_IS_CYGWIN)

IF(CMAKE_COMPILER_IS_MINGW)
  SET(MINGW 1)
ENDIF(CMAKE_COMPILER_IS_MINGW)
SET(CMAKE_COMPILER_IS_GNUCC_RUN 1)