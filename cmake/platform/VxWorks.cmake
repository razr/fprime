####
# VxWorks.cmake:
#
# Platform setup for all VxWorks based targets. This can be used for VxWorks, raspberry pi, and other VxWorks-like hosts. This
# file represents all common linux functions.
####

# Set VxWorks target
add_definitions(-DTGT_OS_TYPE_VXWORKS)
set(FPRIME_USE_POSIX ON)
# Requires threading library, use cmake to find appropriate library
# message(STATUS "Requiring thread library")
# FIND_PACKAGE ( Threads REQUIRED )

# Add Linux specific headers into the system
include_directories(SYSTEM "${FPRIME_FRAMEWORK_PATH}/Fw/Types/VxWorks")
