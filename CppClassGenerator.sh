#! /bin/bash 
read -p "please enter your name: " name 
echo "hello mr ${name}" 
read -p "please enter your class name: " classname

read -p "please enter your namespace: " namespace 
echo "your the class is ${classname} and your namespace is ${namespace}" 

mkdir ${classname}

echo "
///////////////////************************////////////////
///////////////////   CopyRight ${name}   
///////////////////************************////////////////

/*********************
autho: ${name} 
date: $(date)
brief: 
**********************/

namespace ${namespace}
{ 
class ${classname}
{
public: 
private:
    ${classname}();
    ~${classname}();
};
}
" > ${classname}/${classname}.hpp 

read -p "do you want the cpp file Y/N: " answer
if [ "$answer" = "Y" ]; then 
echo "///////////////////************************////////////////
///////////////////   CopyRight ${name}   
///////////////////************************////////////////

/*********************
author: ${name} 
date: $(date)
brief: 
**********************/
#include \"${classname}.hpp\"
namespace ${namespace}
{ 
    ${classname}::${classname}(){}
    ${classname}::~${classname}(){}
}
" > ${classname}/${classname}.cpp
fi

echo "Class is created"