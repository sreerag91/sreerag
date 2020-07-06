import os
hostname = "google.com" #example
response = os.system("ping -c 1 " + hostname)

#and then check the response...
if response == 0:
  print("{} is up!".format(hostname))
else:
  print("{} is up!".format(hostname))
