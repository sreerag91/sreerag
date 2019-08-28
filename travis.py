known_users=["Sreerag","Vavu","Achu"]
print(len(known_users))
while True:
    print("Hi! My name is Travis\n")
    name=input("What is your name?:\n").strip().capitalize()
    if name in known_users:
        print("name found is {}".format(name))
        remove=input("Would you like to be removed from the system (y/n)?: ").lower()
        if remove=="y":
            known_users.remove(name)
            print(known_users)
    else:
        print("name not found\n")
