#def start():
global cash
#cash=int(input("Enter the amount to withdraw ,Please note that only 100,200,500 is available:\n").strip())
pins =[1111,2222]
pin = int(input("Please enter the pin number\n").strip())
if (pin == pins[0] or pin == pins[1]):
   choice=int(input("Enter 1 for withdraw or 2 for check balance:\n"))
   if (choice == 1):
      print("Your process is starting now")
      withdraw()
   elif(choice == 2):
      print("wait")
      balance()
   else:
      print("updating")
      
else:
   print("incorrect pin")

def withdraw():
   #global cash
   cash=int(input("Enter the amount to withdraw ,Please note that only 100,200,500 is available:\n").strip())
   if (cash == 100):
      print("amount succefully debited is {}".format(cash))
   elif (cash == 200):
      print("amount succefully debited is {}".format(cash))
   elif (cash == 500):
      print("amount succefully debited is {}".format(cash))
   else:
      print("Sorry not available available")


def balance():
   cash = 1000 - cash
   print("The balance is {}".format(cash))

       
#start()




