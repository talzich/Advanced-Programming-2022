# The find command does a recursive walk under the specified directory
# satisfying certain conditions

find mydir -name myfile.txt     # find a file named myfile.txt under directory named mydir

find mydir -name *.txt          # ?

find . -type d                  # find all files of type directory under pwd

find . -type f -size +1M        # ?

find /home -mtime -7            # find all files changed in the last 7 days under home directory
