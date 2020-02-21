#get email address
email = input("What is your eamil address?:").strip()
#slice out user name
user = email[:email.index("@")]
#slice domain name
domain_name = email[email.index("@")+1:]
#print output message
print(user)
print(domain_name)
