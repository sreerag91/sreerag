class Atm:

 def __init__(self):
   self.cash = 500

 def start(self):

    
    self.pins =[1111,2222]
    self.pin = int(input("Please enter the pin number\n").strip())
    if (self.pin == self.pins[0] or self.pin == self.pins[1]):
         self.choice=int(input("Enter 1 for withdraw or 2 for check balance:\n"))
         if (self.choice == 1):
             print("Your process is starting now")
             sreerag.withdraw()
         elif(self.choice == 2):
             print("wait")
             sreerag.balance()
         else:
             print("updating")
      
    else:
          print("incorrect pin")

 def withdraw(self):
       self.cash=int(input("Enter the amount to withdraw ,Please note that only 100,200,500 is available:\n").strip())
       if (self.cash == 100):
          print("amount succefully debited is {}".format(self.cash))
       elif (self.cash == 200):
          print("amount succefully debited is {}".format(self.cash))
       elif (self.cash == 500):
          print("amount succefully debited is {}".format(self.cash))
       else:
          print("Sorry not available available")


 def balance(self):
   
       self.cash = 1000 - self.cash
       print("The balance is {}".format(self.cash))


sreerag = Atm()
sreerag.start()
