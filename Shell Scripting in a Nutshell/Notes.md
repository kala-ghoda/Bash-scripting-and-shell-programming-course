# Scripts:

A series of command line programs to be run by the interpreter. In case of shell scripts, the shell acts as the interpreter.
> Great for automating tasks.

Example:

```bash
#!/bin/bash
echo "Hello, world!"
```

To execute the above script, first make it executable by and then run, like this.
```bash
$ chmod +x script.sh
$ ./script.sh
```

# Shebang:

The `#!` in the first line of shell scripts is called the "shebang". The shebang points to and invokes the interpreter to used to run the script. The path followed by the shebang is the path of the interpreter. Any interpreter can be used in the script. Examples:

```bash
#!/bin/bash

#!/bin/zsh
```

When we execute the script with shebang, the interpreter is executed and the path used to call the script is passed as an arugment to the interpreter.

If script does not contain shebang, the commands are executed your current shell. It is however important to give the shebang as sometimes commands can be incompatible for different shells.

# Variables

Variables in bash are declared as follows.

```bash
VARIABLE="whatever value"
```

Variables in bash are case-sensitive, but conventionally they are declared in all caps.

**Note: <mark>There should be no space between the declaration</mark>**

Example usage:

```bash
#!/bin/bash
MY_SHELL="bash"
echo "This is my shell: $MY_SHELL"
```

Another way to use variables is to use `{}` around variables. Useful when appeding additional data to variable. Example:

```bash
#!/bin/bash
MY_SHELL="bash"
echo "This shell is totally ${MY_SHELL}ing"
```

A variable can also hold the output of a command. Example:

```bash
VARIABLE=$(ls)
```

# Tests
Tests in bash are not your traditional testing programs. In shell scripting, test is basically a check for some conditions. You use it to write some conditional logic in your script.

Syntax:

```bash
[ some_conditional_text ]
```

**Note: To check for various types of tests, run the command `help test`**

If condition true, it returns true (0), else false (1).

# Conditionals in shell scripting

Syntax:
```bash
if [ some-condition ]
then
	command 1  #All commands hereon executed only if true
	command 2
	...
	command n
elif [ some other condition ]
then
	commands
else
	commands
fi
```

**Note: It is a good practice to enclose variables in quotes (" "), to avoid unexpected side effects.**

# Loops

## For loop

Syntax(1):

```bash
for VARIABLE_NAME in ITEM1 ITEMN
do
	commands
done
```

Example:
```bash
for COLOR in red green blue
do
	echo $COLOR
done
```

Can also be written as

```bash
COLORS="red green blue"
for COLOR in $COLORS
do
	echo $COLOR
done
```

# Positional parameters

Positional parameters are the arguments passed through the command lines. The positional parameters are accessed just like the variables (using the `$` symbol) and are accessed by a numerical value. The value `$0` denotes the script itself and the following values (`$1`, `$2`, etc.) are the arguments.

Example:


```bash
$ ./some_script.sh value1 value2 value3
```

Here the value of `$1` will be `value1`, and so on.

To use for loop with the positional parameters, we can use the special symbol `$@` to loop through all the parameters.

Example:

```bash
for VAR in $@
do
	some command
done
```

# Accepting User input (STDIN)

The `read` command is used to accept user input. It generally accepts input from STDIN, but can also be used to give pipe inputs.

Syntax:

```bash
read -p "PROMPT" VARIABLE
```

Example:

```bash
read -p "Enter a number" NUMBER
echo $NUMBER
```
