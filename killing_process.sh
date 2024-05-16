# When Ctrl + C not working
# Ctrl + Z, then:
ps -aux | grep "SOME KEY WORDS OF THE PROCESS"
# Get the Process ID at the begining of the output line
kill -9 PROCESS_ID