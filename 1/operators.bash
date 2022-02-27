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

