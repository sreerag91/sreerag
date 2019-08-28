email=input("What is your email address\n").strip()
username = email[:email.index("@")]
print(username)
domain_name= email[email.index("@")+1:]
print(domain_name)
output= "your username is {} and your domain name is {}".format(username, domain_name)
print(output)