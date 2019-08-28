#get ur  mail address
email=input("what is your email\n")
#slice out your usrname
user=email[:email.index("@")]
#slice domain name
domain=email[email.index("@")+1:] #here we dont want @,so we need to use @+1
#format messages
output="Hai this is your username:{} and domain name is {}".format(user,domain)
#to get output
print(output)