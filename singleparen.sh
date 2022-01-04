# single parenthesis condition creates a subshell and executes command in it
echo $BASH_SUBSHELL
if (echo $BASH_SUBSHELL)
then
	echo "The subshell command operated successfully"
else
	echo "The subshell command was not successful"
fi
