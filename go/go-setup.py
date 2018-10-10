import os
import requests
import tarfile

version=raw_input("please enter the version of go to install.\n")

filename="go"+version+".linux-amd64.tar.gz"

endpoint = "https://dl.google.com/go/"+ filename



r = requests.get(endpoint)
open(filename , 'wb').write(r.content)

tar = tarfile.open(filename, "r:gz")
tar.extractall()
tar.close()
print(os.getcwd())
os.system("sudo mv go/ /usr/local/")

fh=open("/etc/profile", "a")
fh.write("\n\nexport PATH=$PATH:/usr/local/go/bin")
fh.close()

print("Setup complete, Please log off and login again to see the effects.")
