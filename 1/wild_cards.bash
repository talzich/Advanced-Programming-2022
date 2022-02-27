ls -l l*            # ls -l on all files with prefix l

ls -l l?_*          # ls -l on all files with prefix l, any single char,_

ls -l l[es]*        # ls -l on all files with prefix l, e OR s

ls -l l[es][!_]*    # ls -l on all files with prefix l, e OR s, NOT -

# ========
# Exercise: create the next files in your PWD
# 1. Lego
# 2. lEt's go
# 3. Let it go
# 4. I am learning Linux
#
# list all files which name's contain le (case insensitive) but not leg
# store the names in a file called Le
# ========

touch Lego "lEt's go" "Let it go" "I am learning Linux"