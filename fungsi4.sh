#!/bin/bash
function a {
return .123. #exit status
}
a
echo $? //menyimpan exit
status
