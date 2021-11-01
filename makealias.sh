#!/bin/bash
echo "Enter EXECUTABLE  pwd: "
read exec_pwd
echo "enter aliasname: "
read aliasname
echo "${exec_pwd},,${aliasname} "
create_alias(){

cd

myline_numb=$(awk '/elmehdi /{print NR ;exit}' test.txt) #.bashrc
myline_numb=$((myline_numb + 1))
sed -i "${myline_numb}i alias ${aliasname}='bash ${exec_pwd}'" .bashrc

}
create_alias
