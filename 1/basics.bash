ls -l > ls_out      # Redirect stdout to file
ls -l >> ls_out     # Append the output to the same file

# ========
# Question: Redirect a different command to the same file, what happens?
# Example: echo abc > ls_out
# ========

ls -l 2> ls_err     # Rediredt stderr to a specific file
# Why would we do that?


ls -l > ls_out 2>&1 # Redirect stdout to ls_out and stderr to wherever stdout is

# ========
# Question: will the following command to the same thing? 
2>&1 ls-l > ls_out
# Write a C program to find out
# ========

ls -l 2> /dev/null  # Dismiss stderr
# Why would we do that? ==> https://www.maketecheasier.com/dev-null-in-linux/