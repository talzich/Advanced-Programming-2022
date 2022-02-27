# Taken from https://www.tecmint.com/chaining-operators-in-linux-with-practical-examples/

ping -­c5 www.tecmint.com &     # Ping www.tecmint.com 5 times and do it in the background

apt-get update & apt-get upgrade &  # What's the difference between the two?

apt-get update ; apt-get upgrade ; mkdir test # Why not &?

apt-get update && apt-get upgrade   # upgrade only if update succeeds

apt-get update || apt-get upgrade   #???

# ========
# The NOT(!) Command
# Exercise: create the next files in your PWD
# a.doc 
# b.doc 
# a.pdf
# b.pdf
# a.xml
# b.xml
# a.html
# b.html
#
# Remove all files, except the html ones
# delete files using rm -r <file_name>
# ========

ping -c3 www.tecmint.com && echo "Verified" || echo "Host Down" # What does that do?

[ -d bin ] || { echo Directory does not exist, creating directory now.; mkdir bin; } && echo Directory exists. # Blocks commands together


# ========
# Exercise:
# A developer is searching for the next behaviour:
# Run either command_x1 AND command_x2 OR command_x3 AND command_x4

# The developer writes the following:
Command_x1 &&Command_x2 || Command_x3 && Command_x4

# Command_x1 fails and then nothing happens, command_x3 does not run

# Can you think of an operator to fix the problem?

nano test\(1\).txt      # Concatenates string