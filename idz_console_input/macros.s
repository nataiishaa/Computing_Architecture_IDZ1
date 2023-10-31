
#
# Library of macros.
#

.include "macrolib.s"



.macro calculate(%x)
  mv a0 %x
  jal macloran
  
.end_macro

