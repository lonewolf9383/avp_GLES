#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.65])
AC_INIT(AvP, 1.0, lonewolf9383@hotmail.com)
AM_INIT_AUTOMAKE(Avp, 1.0)
AC_PROG_RANLIB
AC_OUTPUT(Makefile src/Makefile src/avp/Makefile src/avp/shapes/Makefile src/avp/support/Makefile 
src/avp/win95/Makefile src/avp/win95/frontend/Makefile src/avp/win95/gadgets/Makefile 
src/win95/Makefile)
AC_CONFIG_SRCDIR([src/shpanim.c])
AC_CONFIG_HEADERS(config.h)

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h inttypes.h limits.h stddef.h stdlib.h string.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_INT8_T
AC_TYPE_SIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T
AC_CHECK_TYPES([ptrdiff_t])

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_CHECK_FUNCS([atexit getcwd gettimeofday memmove memset mkdir realpath sqrt strchr strcspn strdup strerror strrchr strspn strstr])

AC_OUTPUT
