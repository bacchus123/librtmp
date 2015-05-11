/*librtmp.i*/

%module librtmp_wrapper

//all we need are the functions defined in rtmp.h! so we just need to include that and and swig will automatically bind the functions within
#define NO_CRYPTO

/* Anything in the following section is added verbatim to the .cxx wrapper file */
%{
#include "rtmp.h"
%}
%include "various.i"
%apply char* BYTE {char *buf}
%include rtmp.h