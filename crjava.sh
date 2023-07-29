#!/bin/bash

LOC=$(pwd)
PJNAME=$(basename $(pwd))
if [ $(basename $LOC) == "src" ]; then
    javac *.java 
elif [ $(basename $LOC) == "out" ]; then
    cd ..
    cd src
    javac *.java 
elif [ $(basename $LOC) == "production" ]; then
    cd ../..
    cd src 
    javac *.java 
elif [ $(basename $LOC) == $PJNAME ]; then
    cd ..
    if [ $(basename $(pwd)) == "production" ]; then
        cd ../..
        cd src
        javac *.java 
    else
        cd $PJNAME 
        cd src 
        javac *.java 
    fi
else
    echo "You are not in the right directory"
fi

#Compile all the java files in the directory

# javac *.java 
#Move all the class files to the out directory
FIRSTLOC=$(pwd)
LASTLOC=${FIRSTLOC##*/}
cd ..
LOCATION=$(pwd)
PROJECTNAME=${LOCATION##*/}
cd $LASTLOC
mv *.class ~/projects/$PROJECTNAME/out/production/$PROJECTNAME

#Run the java file

LOCATION=$(pwd)
PROJECTNAME=$(basename $(pwd))

if [ $(basename $LOCATION) == "src" ]; then
    cd ..
    PROJECTNAME=$(basename $(pwd))
    cd out/production/$PROJECTNAME
    LOCATION=$(pwd)
    java -cp $LOCATION $1
elif [ $(basename $LOCATION) == "out" ]; then
    cd ..
    PROJECTNAME=$(basename $(pwd))
    cd out/production/$PROJECTNAME

    LOCATION=$(pwd)
    java -cp $LOCATION $1
elif [ $(basename $LOCATION) == "production" ]; then
    cd ..
    cd ..
    PROJECTNAME=$(basename $(pwd))
    cd out/production/$PROJECTNAME
    LOCATION=$(pwd)
    java -cp $LOCATION $1
elif [ $(basename $LOCATION) == $PROJECTNAME ]; then
    cd ..
    if [ $(basename $(pwd)) == "production" ]; then
        cd ..
        cd ..
        PROJECTNAME=$(basename $(pwd))
        cd out/production/$PROJECTNAME
        LOCATION=$(pwd)
        java -cp $LOCATION $1
    else
        cd $PROJECTNAME
        cd out/production/$PROJECTNAME
        LOCATION=$(pwd)
        java -cp $LOCATION $1
    fi
else
    echo "You are not in the right directory"
fi


