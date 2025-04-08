# Copy files command 
In Bash scripting, command-line arguments are accessed using positional parameters:  

**$0** - The script's name.  
**$1** - The first argument.  
**$2** - The second argument.  
**$#** - The number of arguments passed.  
**$@** - treats each argument as a separate string → preserves quotes.  
**$*** - treats all arguments as one single string.   
**$?** - Exit status of previous command  

**if [ ! -e "$source_file" ]; then**  
**Meaning:** This checks if the file does not exist.  

**if [ $? -eq 0 ]; then**  
**Meaning:** This checks if the previous command was successful.  

**if [ "$#" -ne 2 ]; then**  
**Meaning:** This checks if the script was not given exactly 2 arguments.  
