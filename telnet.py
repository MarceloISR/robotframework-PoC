

import telnetlib

# Connect to the Telnet server
tn = telnetlib.Telnet()
tn.open("trial.rf.wdgcorp.com", 5023)

# Login to the server
output = tn.write("1".encode('ascii')+b"\n")
print(tn.read_all())
tn.write(b"password\r\n")

# Get the prompt
prompt = tn.read_until(b">")

# Send a command to the server
tn.write(b"show ip int brief\r\n")

# Read the output of the command
output = tn.read_until(b"prompt")

# Close the connection
tn.close()

# Print the output of the command
print(output)