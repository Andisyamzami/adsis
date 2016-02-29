#!/bin/bash
VAR="global variable"
function localvar {
local VAR="local variable"
echo $VAR
}
echo $VAR
localvar
echo $VAR
