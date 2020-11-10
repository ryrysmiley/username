#! /bin/bash
# username.sh
# Ryley Jue
echo "Enter a username: "
echo "Use lower case characters, digits and underscore"
echo "It must start with a lowercase character"
echo "It must contain at least 3 but not more than 12 characters"
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z]{1}[a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username code - lower, digits, and underscores only!"
	echo "It must start with a lowercase character and must be between 3 and 12 characters."
	echo "Enter a username:"
	read USERNAME
done
echo "Thank you"
