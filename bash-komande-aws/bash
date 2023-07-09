#!/bin/bash
for test in Alabama Alaska Arizona Arkansas California Colorado
do
 echo The next state is $test
done#!/bin/bash

for test in Alabama Alaska Arizona Arkansas California Colorado
do
 echo "The next state is $test"
done
echo "The last state we visited was $test"
test=Connecticut
echo "Wait, now we're visiting $test"#!/bin/bash
# another example of how not to use the for command

for test in I don't know if this'll work
do
 echo "word:$test"
done


# FIX 1
# for test in I "don't" know if "this'll" work
# FIX 2
# for test in I don\'t know if this\'ll work
#!/bin/bash
# another example of how to use the for command

for test in I don\'t know if "this'll" work
do
 echo word:$test
done#!/bin/bash

# another example of how not to use the for command
 for test in Nevada New Hampshire New Mexico New York North Carolina
 do
    echo "Now going to $test"
 done
 #!/bin/bash

# an example of how to properly define values

for test in Nevada "New Hampshire" "New Mexico" "New York"
do
 echo "Now going to $test"
done#!/bin/bash

# using a variable to hold the list
 list="Alabama Alaska Arizona Arkansas Colorado"
 list=$list" Connecticut"

 for state in $list
 do
    echo "Have you ever visited $state?"
 done#!/bin/bash

# reading values from a file
 file="states"

 for state in $(cat $file)
 do
    echo "Visit beautiful $state"
 done#!/bin/bash

# reading values from a file
file="states"
echo $IFS
IFS=$'\n'
echo $IFS
for state in $(cat $file)
do
    echo "Visit beautiful $state"
done#!/bin/bash

 # iterate through all the files in a directory
 for file in /etc/ssh/*
 do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
 done#!/bin/bash

# iterating through multiple directories
 for file in /etc/ssh/* /home/rich/badtest
 do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    else
        echo "$file doesn't exist"
    fi
 done#!/bin/bash

 # testing the C-style for loop
 for (( i=1; i <= 10; i++ ))
 do
    echo "The next number is $i"
 done#!/bin/bash

# multiple variables
 for (( a=1, b=10; a <= 10; a++, b-- ))
 do
    echo $[$a - $b]
 done#!/bin/bash

# while command test
 var1=10
 while [ $var1 -gt 0 ]
 do
    echo $var1
    var1=$[ $var1 - 1 ]
 done#!/bin/bash

# testing a multicommand while loop
 var1=10
 while echo $var1
 [ $var1 -ge 0 ]
 do
    echo "This is inside the loop"
    var1=$[ $var1 - 1 ]
 done#!/bin/bash

# using the until command
 var1=100
 until [ $var1 -eq 0 ]
 do
    echo $var1
    var1=$[ $var1 - 25 ]
 done#!/bin/bash


 # using the until command
 var1=100
 until echo $var1 
 [ $var1 -eq 0 ]
 do
    echo Inside the loop: $var1
    var1=$[ $var1 - 25 ]
done#!/bin/bash

# nesting for loops
 for (( a = 1; a <= 3; a++ ))
 do
    echo "Starting loop $a:"
    for (( b = 1; b <= 3; b++ ))
    do
        echo " Inside loop: $b"
    done
 done#!/bin/bash

# placing a for loop inside a while loop
 var1=5
 while [ $var1 -ge 0 ]
 do
    echo "Outer loop: $var1"
    for (( var2 = 1; $var2 < 3; var2++ ))
    do
        var3=$[ $var1 * $var2 ]
        echo " Inner loop: $var1 * $var2 = $var3"
    done
    var1=$[ $var1 - 1 ]
 done#!/bin/bash

# using until and while loops
 var1=3
 until [ $var1 -eq 0 ]
 do
    echo "Outer loop: $var1"
    var2=1
    while [ $var2 -lt 5 ]
    do
        var3=$(echo "scale=4; $var1 / $var2" | bc)
        echo " Inner loop: $var1 / $var2 = $var3"
        var2=$[ $var2 + 1 ]
    done
    var1=$[ $var1 - 1 ]
 done#!/bin/bash

# changing the IFS value
 IFS.OLD=$IFS
 IFS=$'\n'
 for entry in $(cat /etc/passwd)
 do
    echo "Values in $entry –"
    IFS=:
    for value in $entry
    do
        echo " $value"
    done
 done#!/bin/bash

# breaking out of a for loop
 for var1 in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration number: $var1"
 done
 echo "The for loop is completed"#!/bin/bash

# breaking out of a while loop
 var1=1
 while [ $var1 -lt 10 ]
 do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration: $var1"
    var1=$[ $var1 + 1 ]
 done
 echo "The while loop is completed"#!/bin/bash

# breaking out of an inner loop
 for (( a = 1; a < 4; a++ ))
    do
    echo "Outer loop: $a"
    for (( b = 1; b < 100; b++ ))
    do
        if [ $b -eq 5 ]
        then
            break
        fi
        echo " Inner loop: $b"
    done
 done#!/bin/bash

# breaking out of an outer loop
 for (( a = 1; a < 4; a++ ))
 do
    echo "Outer loop: $a"
    for (( b = 1; b < 100; b++ ))
    do
        if [ $b -gt 4 ]
        then
            break 2
        fi
        echo " Inner loop: $b"
    done
 done#!/bin/bash

# using the continue command
 for (( var1 = 1; var1 < 15; var1++ ))
 do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Iteration number: $var1"
 done#!/bin/bash

# continuing an outer loop
 for (( a = 1; a <= 5; a++ ))
 do
    echo "Iteration $a:"
    for (( b = 1; b < 3; b++ ))
    do
        if [ $a -gt 2 ] && [ $a -lt 4 ]
        then
            continue 2
        fi
        var3=$[ $a * $b ]
        echo " The result of $a * $b is $var3"
    done
 done#!/bin/bash

for file in /etc/ssh/*
do
    if [ -d "$file" ]
    then
        echo "$file is a directory" 
    elif [ -f "$file" ]
    then
        echo "$file is a file" 
    fi
done > output.txt#!/bin/bash


# piping a loop to another command
 for state in "North Dakota" Connecticut Illinois Alabama Tennessee
 do
    echo "$state is the next place to go"
 done | sort
 echo "This completes our travels"#!/bin/bash

# finding files in the PATH
IFS=:
for folder in $PATH
do
    echo "$folder:"
    for file in $folder/*
    do
        if [ -x $file ]
        then
            echo " $file"
        fi
    done
done#!/bin/bash
# process new user accounts

input="users.csv"
IFS=',' 
while  echo $? &&  read userid name  
do 
 echo "adding $userid"
 useradd -c "$name" -m $userid
done < "$input"
#!/bin/bash

# using one command line parameter

factorial=1
for (( number = 1; number <= $1 ; number++ ))
do
  factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial#!/bin/bash

# testing two command line parameters

total=$[ $1 * $2 ]
echo The first parameter is $1.
echo The second parameter is $2.
echo The total value is $total.#!/bin/bash

# testing string parameters

echo Hello $1, glad to meet you.#!/bin/bash

# handling lots of parameters

total=$[ ${10} * ${11} ]
echo The tenth parameter is ${10}
echo The eleventh parameter is ${11}
echo The total is $total#!/bin/bash

# Testing the $0 parameter

echo The zero parameter is set to: $0
#!/bin/bash

# Using basename with the $0 parameter

name=$(basename $0)
echo
echo The script name is: $name#!/bin/bash
# Testing a Multi-function script
#
name=$(basename $0)
#
if [ $name = "script38.sh" ]
then
 total=$[ $1 + $2 ]
#
elif [ $name = "multem" ]
then
 total=$[ $1 * $2 ]
fi
#
echo
echo The calculated value is $total#!/bin/bash
# testing parameters before use
#
if [ -n "$1" ]
then
 echo Hello $1, glad to meet you.
else
 echo "Sorry, you did not identify yourself. "
fi#!/bin/bash
# getting the number of parameters
#
echo There were $# parameters supplied.
#!/bin/bash
# Testing parameters
#
if [ $# -ne 2 ]
then
 echo
 echo Usage: script41.sh a b
 echo
else
 total=$[ $1 + $2 ]
 echo
 echo The total is $total
 echo
fi#!/bin/bash
# testing grabbing last parameter
# not a solution you can not use $ inside of {}, instead use ${!#}
echo The last parameter was ${$#}
echo The last parameter was ${!#}#!/bin/bash
#  grabbing last parameter
echo The last parameter was ${!#}#!/bin/bash

# testing $* and $@
#
echo
echo "Using the \$* method: $*"
echo
echo "Using the \$@ method: $@"#!/bin/bash
# testing $* and $@
#
echo
count=1
#
for param in "$*"
do
 echo "\$* Parameter #$count = $param"
 count=$[ $count + 1 ]
done
#
echo
count=1
#
for param in "$@"
do
 echo "\$@ Parameter #$count = $param"
 count=$[ $count + 1 ]
done#!/bin/bash
# demonstrating the shift command
echo
count=1
while [ -n "$1" ]
do
 echo "Parameter #$count = $1"
 count=$[ $count + 1 ]
 shift
done#!/bin/bash
# demonstrating a multi-position shift
#
echo
echo "The original parameters: $*"
shift 2
echo "Here's the new first parameter: $1"#!/bin/bash

# extracting command line options as parameters
#
echo
while [ -n "$1" ]
do
 case "$1" in
 -a) echo "Found the -a option" ;;
 -b) echo "Found the -b option" ;;
 -c) echo "Found the -c option" ;;
 *) echo "$1 is not an option" ;;
 esac
 shift
done#!/bin/bash
# left empty by mistake#!/bin/bash
# left empty by mistake#!/bin/bash

# extracting options and parameters, example page 414
echo
while [ -n "$1" ]
do
 case "$1" in
 -a) echo "Found the -a option" ;;
 -b) echo "Found the -b option";;
 -c) echo "Found the -c option" ;;
 --) shift
 break ;;
 *) echo "$1 is not an option";;
 esac
 shift
done
#
count=1
for param in $@
do
 echo "Parameter #$count: $param"
 count=$[ $count + 1 ]
done#!/bin/bash

# extracting command line options and values
echo
while [ -n "$1" ]
do
 case "$1" in
 -a) echo "Found the -a option";;
 -b) param="$2"
     echo "Found the -b option, with parameter value $param"
     shift ;;
 -c) echo "Found the -c option";;
 --) shift
     break ;;
 *) echo "$1 is not an option";;
 esac
 shift
done
#
count=1
for param in "$@"
do
 echo "Parameter #$count: $param"
 count=$[ $count + 1 ]
done
#!/bin/bash
# Extract command line options & values with getopt
#
set -- $(getopt -q ab:cd "$@")
#
echo
while [ -n "$1" ]
do
 case "$1" in
 -a) echo "Found the -a option" ;;
 -b) param="$2"
     echo "Found the -b option, with parameter value $param"
     shift ;;
 -c) echo "Found the -c option" ;;
 --) shift
     break ;;
 *) echo "$1 is not an option";;
 esac
 shift
done
#
count=1
for param in "$@"
do
 echo "Parameter #$count: $param"
 count=$[ $count + 1 ]
done#!/bin/bash
# simple demonstration of the getopts command
#
echo
while getopts :ab:c opt
do
 case "$opt" in
 a) echo "Found the -a option" ;;
 b) echo "Found the -b option, with value $OPTARG";;
 c) echo "Found the -c option" ;;
 *) echo "Unknown option: $opt";;
 esac
done#!/bin/bash
# Processing options & parameters with getopts
#
echo
while getopts :ab:cd opt
do
 case "$opt" in
 a) echo "Found the -a option" ;;
 b) echo "Found the -b option, with value $OPTARG" ;;
 c) echo "Found the -c option" ;;
 d) echo "Found the -d option" ;;
 *) echo "Unknown option: $opt" ;;
 esac
done
#
shift $[ $OPTIND - 1 ]
#
echo
count=1
for param in "$@"
do
 echo "Parameter $count: $param"
 count=$[ $count + 1 ]
done
##!/bin/bash

# testing the read command
#
echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program. "
##!/bin/bash

# testing the read -p option
#
read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "That makes you over $days days old! "
##!/bin/bash

# entering multiple variables

read -p "Enter your name: " first last
echo "Checking data for $last, $first"#!/bin/bash
# Testing the REPLY Environment variable
#
read -p "Enter your name: "
echo
echo Hello $REPLY, welcome to my program.
##!/bin/bash
# timing the data entry
#
if read -t 5 -p "Please enter your name: " name
then
 echo "Hello $name, welcome to my script"
else
 echo
 echo "Sorry, too slow! "
fi

#!/bin/bash
# getting just one character of input
#
read -n1 -p "Do you want to continue [Y/N]? " answer
case $answer in
Y | y) echo
 echo "fine, continue on…";;
N | n) echo
 echo OK, goodbye
 exit;;
esac
echo "This is the end of the script"#!/bin/bash
# hiding input data from the monitor
#
read -s -p "Enter your password: " pass
echo
echo "Is your password really $pass? "#!/bin/bash

# reading data from a file
#
count=1
cat states | while read line
do
 echo "Line $count: $line"
 count=$[ $count + 1]
done
echo "Finished processing the file"#!/bin/bash
 # testing STDERR messages
 echo "This is an error" >&2
 echo "This is normal output"#!/bin/bash
# redirecting all output to a file
 echo "from a script to another file."
 exec 1>testout
 echo "This is a test of redirecting all output"
 echo "from a script to another file."
 echo "without having to redirect every individual line"#!/bin/bash
# redirecting output to different locations
 exec 2>testerror
 echo "This is the start of the script"
 echo "now redirecting all output to another location"
 exec 1>testout
 echo "This output should go to the testout file"
 echo "but this should go to the testerror file" >&2#!/bin/bash
 # redirecting file input
 exec 0< testerror
 count=1
 while read line
 do
 echo "Line #$count: $line"
 count=$[ $count + 1 ]
 done#!/bin/bash
# using an alternative file descriptor
 exec 3>test13out
 echo "This should display on the monitor"
 echo "and this should be stored in the file" >&3
 echo "Then this should be back on the monitor"#!/bin/bash
 # storing STDOUT, then coming back to it
 exec 3>&1
 exec 1>test14out
 echo "This should store in the output file"
 echo "along with this line." 
 exec 1>&3
 echo "Now things should be back to normal" >&3#!/bin/bash
# redirecting input file descriptors
 exec 3<&0
 exec 0< test14out
 count=1
 while read line
 do
 echo "Line #$count: $line"
 count=$[ $count + 1 ]
 done
 exec 0<&3
 read -p "Are you done now? " answer
 case $answer in
 Y|y) echo "Goodbye";;
 N|n) echo "Sorry, this is the end.";;
 esac#!/bin/bash
# testing input/output file descriptor
 exec 3<> testfile
 read line <&3
 echo "Read: $line"
 echo "This is a test line" >&3
#!/bin/bash
# testing closing file descriptors
 exec 2> testfile
 exec 3> test14file
 echo "This is a test line of data" >&3
 exec 3>&-
 echo "This won't work" >&3#!/bin/bash
# testing closing file descriptors
 exec 3> test17file
 echo "This is a test line of data" >&3
 exec 3>&-
 cat test17file
 exec 3> test17file
 echo "This'll be bad" >&3#!/bin/bash
# testing lsof with file list descriptors
 exec 3> test18file1
 exec 6> test18file2
 exec 7< testfile
lsof -a -p $$ -d0,1,2,3,6,7,8#!/bin/bash
# creating and using a temp file
 tempfile=$(mktemp test19.XXXXXX)
 exec 3>$tempfile
 echo "This script writes to temp file $tempfile"
 echo "This is the first line" >&3
 echo "This is the second line." >&3
 echo "This is the last line." >&3
 exec 3>&-
 echo "Done creating temp file. The contents are:"
 cat $tempfile
 rm -f $tempfile 2> /dev/null#!/bin/bash
# creating a temp file in /tmp
 tempfile=$(mktemp -t tmp.XXXXXX)
 echo "This is a test file." > $tempfile
 echo "This is the second line of the test." >> $tempfile
 echo "The temp file is located at: $tempfile"
 cat $tempfile
 rm -f $tempfile#!/bin/bash
# using a temporary directory
 tempdir=$(mktemp -d dir.XXXXXX)
 cd $tempdir
 tempfile1=$(mktemp temp.XXXXXX)
 tempfile2=$(mktemp temp.XXXXXX)
 exec 7> $tempfile1
 exec 8> $tempfile2
 echo "Sending data to directory $tempdir"
 echo "This is a test line of data for $tempfile1" >&7
 echo "This is a test line of data for $tempfile2" >&8#!/bin/bash
# using the tee command for logging
 tempfile=test7
 echo "This is the start of the test" | tee $tempfile
 echo "This is the second line of the test" | tee -a $tempfile
 echo "This is the end of the test" | tee -a $tempfile#!/bin/bash
# read file and create INSERT statements for MySQL
outfile='members.sql'
IFS=','
while read lname fname address city state zip
do
 cat >> $outfile << EOF
 INSERT INTO members (lname,fname,address,city,state,zip) VALUES 
('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < $1#!/bin/bash
# Testing signal trapping
#
trap "echo ' Sorry! I have trapped Ctrl-C'" 2
#
echo This is a test script
#
count=1
while [ $count -le 10 ]
do
 echo "Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done
#
echo "This is the end of the test script"
##!/bin/bash
# Trapping the script exit
#
trap "echo Goodbye..." EXIT
#
count=1
while [ $count -le 5 ]
do
 echo "Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done#!/bin/bash
# Modifying a set trap
#
trap "echo ' Sorry... Ctrl-C is trapped.'" SIGINT
#
count=1
while [ $count -le 5 ]
do
 echo "Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done
#
trap "echo ' I modified the trap!'" SIGINT
#
count=1
while [ $count -le 5 ]
do
 echo "Second Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done
##!/bin/bash
# Removing a set trap
#
trap "echo ' Sorry... Ctrl-C is trapped.'" SIGINT
#
count=1
while [ $count -le 5 ]
do
 echo "Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done
#
# Remove the trap
trap -- SIGINT
echo "I just removed the trap"
#
count=1
while [ $count -le 5 ]
do
 echo "Second Loop #$count"
 sleep 1
 count=$[ $count + 1 ]
done#!/bin/bash
# Test running in the background
#
count=1
while [ $count -le 10 ]
do
 sleep 1
 count=$[ $count + 1 ]
done#!/bin/bash
# Test running in the background with output
#
echo "Start the test script"
count=1
while [ $count -le 5 ]
do
 echo "Loop #$count"
 sleep 5
 count=$[ $count + 1 ]
done
#
echo "Test script is complete"
##!/bin/bash
# Test job control
#
echo "Script Process ID: $$"
#
count=1
while [ $count -le 10 ]
do
 echo "Loop #$count"
 sleep 10
 count=$[ $count + 1 ]
done
#
echo "End of script..."
#
#!/bin/bash
# Test using at command
#
echo "This script ran at $(date +%B%d,%T)"
echo
sleep 5
echo "This is the script's end..."
##!/bin/bash
# Test using at command
#
echo "This script ran at $(date +%B%d,%T)" > test7
sleep 5
echo "This is the script's end..." >> test7
#

#!/bin/bash

for file in /home/ismail/ismail-icanovic-week-3/Ismail-Icanovic-devops-mentorship/week-3/scri* 
do
	 VARIJABLA=$(echo "$file" | egrep -o 'script[0-9]+\.sh')
	 echo "#!/bin/bash" > "$file"
#	 echo "echo "$VARIJABLA"" >> "$file"
done

