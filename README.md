This ``Repository`` will contain all important files for work.

<details>
<summary>Week-3. Bash Shell Scripting</summary>

### Bash Shell Scripting 
#### Used book
##### `Linux Command Line and Shell Scripting Bible, 3rd Edition` *Chapters [13-16]*

This Pull Request contains 88 scripts from the mentioned chapters `script1.sh - script88.h`.

##### The covered topics and scripts that covered practical examples sorted by chapters are :
<details>
<summary>Chapter 13 : More Structured Commands</summary>
    
- Looping with the ***for*** statement
    - Scripts : `script1.sh - script13.sh`
    - Using the escape character (the backslash) to escape the single quotation mark `don\'t`
    - Using double quotation marks to define the values that use single quotation marks `"this'll"`
    - Reading a list from a variable
        ```
        list="Alabama Alaska Arizona"
        for state in $list 
        do
            echo "Have you ever visited $state?"
        done
        ```
    - Reading values from a command `for state in $(cat file)`
    - Changing the field separator `IFS=$'\n'` 
    - Reading a directory using wildcards `for file in /home/rich/test/*`
    - C language for command `for (( i=1; i <= 10; i++ ))`
- Using the ***while*** statement
    - Scripts : `script14.sh - script15.sh`
    - Multi command while loop 
        ```
        while echo $var1
        [ $var1 -ge 0 ]
        do
            var1=$[ $var1 - 1 ]
        done
        ```
- Iterating with the ***until*** statement
    - Scripts : `script16.sh - script17.sh`
        ```
        until echo $var1
        until [ $var1 -eq 0 ]
        do
            var1=$[ $var1 - 25 ]
        done
        ```

- Combining loops
    - Scripts : `script18.sh - script21.sh`
- Using ***brake*** and ***continue***
    - Scripts : `script22.sh - script27.sh`
- Redirecting loop output/input 
    - Scripts : `script28.sh - script31.h`
    - Redirecting loop output is done by adding the processing command to the end of the `done` command: `done > output.txt`
    - Piping a loop to another command ` done | sort`
    - Redirecting loop input is done by adding the processing command to the end of the `done` command: `done < output.txt`
</details>    

<details>
<summary>Chapter 14 : Handling user input</summary>

- Passing parameters `$ ./script 10 30`
- Tracking parameters
    - Scripts : `script32.sh - script45.sh`
    - Reading parameters 
        - `$0 - script’s name`, or use `name=$(basename $0)` to skip the path
        - `$1 - first parameter`
        - `$2 - second parameter` 
        - `${10} - tenth parameter` ...
    - Testing parameters `if [ -n "$1" ]`
    - Counting parameters `$#`
    - Last parameter `${!#}`
    - Access to all parameters
        - `$*` all the parameters as a *single* word
        - `$@` all the parameters as *separate* words
- Using **shift**
    - Scripts : `script46.sh - script53.sh`
    - `shift` - what was inside `$2` is now in `$1`
    - `shift 2` - what was inside `$3` is now in `$1`
- Working with options
    - Scripts : `script48.sh - script55.sh`
    - `getopt` command take a list of command line options and parameters, in any form, and automatically turns them into the proper format.
        - Usage `getopt optstring parameters`
    - `set -- $(getopt -q ab:cd "$@")` command feeds the original script command line parameters to the `getopt` command and then feeds the output of the `getopt` command to the set command to replace the original command line parameters with the nicely formatted ones from getopt.
    - `getopts` command is built into the bash shell.
- Getting user input
    - Scripts : `script56.sh - script63.sh`
    - `read` - accepts input either from standard input (such as from the keyboard) or from another fi le descriptor
    - `read -p "Please enter your age: " age` - p option allows you to specify a **prompt** 
    - `read -p "Enter your name: " first last` - entering multiple variables
    - `$REPLY` if you specify **no variables** read places the data in this variable
    - `read -t 5 -p "Please enter your name: " name`  -t option specifies the number of seconds for the read command to **wait** for input.
    - `read -s -p "Enter your password: " pass` reading **passwords** 

</details>  

<details>
<summary>Chapter 15 : Presenting Data</summary>

- Standard input and output
    - Standard file descriptors
        - `0 STDIN` Standard input - `$ cat < testfile`
        - `1 STDOUT`Standard output - `$ ls -l > test2`, `$ who >> test2`
        - `2 STDERR` Standard error - `$ ls -al badfile 2> erroutfile.txt`
- Redirecting Output/Input in Scripts
    - Scripts : `script64.sh - script79.sh`
    - Temporary Output redirection
        - ` echo "This is an error message" >&2` - e displays the text wherever the `STDERR` file descriptor for the script is pointing
    - Permanent Output redirection
        - `exec 1>testout` - `exec` command starts a new shell and redirects the `STDOUT` file descriptor to a file
    - Redirecting Input in Scripts
        - `exec 0< testfile` - This command informs the shell that it should retrieve input from the file `testfile` instead of `STDIN`
    - Creating Own Redirection
        - `exec 3>test3out` - `exec 8>test8out` - max 9 descriptors
    - Redirecting file descriptors
        - `exec 3>&1` - redirects file descriptor 3 to the current location of file descriptor 1, which is `STDOUT`
    - Creating input file descriptors
        - `exec 6<&0` - file descriptor 6 is used to hold the location for `STDIN`
    - Creating a read/write file descriptor
        - `exec 3<> testfile` - the exec command to assign file descriptor 3 for both input and output sent to and from the file `testfile` 
    - Closing file descriptors
        - `exec 3>&-` - This statement closes file descriptor 3, preventing it from being used any more in the script    
    - Listing Open File Descriptors
        - `lsof -a -p $$ -d0,1,2,3,6,7`     

- Using Temporary Files
    - Scripts : `script75.sh - script78.sh` 
    - `$ mktemp testing.XXXXXX` - Creating a local temporary file
    - `$ mktemp -t test.XXXXXX` - Creating a temporary file in /tmp
    - `$ mktemp -d dir.XXXXXX` - Creating a temporary directory
- Creating log files
    - Scripts : `script78.sh`
    - `tee filename` - It sends data from `STDIN` to two destinations at the same time. One destination is `STDOUT`. The other destination is a `filename`. 
- How to empty a file without entering it : 
    -  `$ cat /dev/null filename`

</details>  

<details>
<summary>Chapter 16 : Script Control</summary>

- Trapping signals
    - Scripts : `script80.sh - script83.sh`
    - `trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT` - *CTRL+C* doesn't work now
    - `trap -- SIGINT` - Removing a set trap
- Running scripts in the background
    - `$ ./script.sh &`
- Running Scripts without a Hang-Up
    - `$ nohup ./script.sh &` - run in background mode until it finishes, even if you exit the terminal session    
- Controlling a Job
    - `$ jobs -l` - The jobs command enables you to view the jobs assigned to the shell
    - command `bg 2` can be used to send the second job into background mode or any other job by changing the parameter
- Modifying script priority
    - `$ nice -n 10 ./test4.sh > test4.out &` - using teh nice command to start a bg process with ne niceness of 10 and ` ps -p 4973 -o pid,ppid,ni,cmd` using this command to view the process. `-p 4973` is the PID.  
    - `$ renice -n -10 -p 4973` - to change the priority of a command that’s already running on the system use renice command.
- Automating script execution
    - Scheduling a job using the `at` command : `at [-f filename] time`
        - Listing pending jobs `$ atq`
        - Removing jobs `$ atrm 18`
    - Scheduling regular scripts, using `cron` 
        - `min hour dayofmonth month dayofweek command`
        - `15 10 * * * command` - run a command at 10:15 on every day
        - `$ crontab -e` - to edit cron table
        - `$ crontab -l` - list cron table   

</details>  
