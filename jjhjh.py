known_users = ["Raja", "Sethu", "Fuad", "Arjun"]
while True:
       name = input("enter the name \n").strip().capitalize()

       if name in known_users:
        output="Hello {} you are welcome".format(name)
        print(output)
        remove = input("Do you want to removed from the list! y/n \n").lower()
        if remove == "y":
          known_users.remove(name)
          print(known_users)

        else:
          print("It's Ok")
       else:
        add = input("Do you want to add to the list! y/n \n").lower()
        if add == "y" :
         known_users.append(name)
         print(known_users)
