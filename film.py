class movie:
     def __init__(self):
       self.cinema = ["LUCIFER" ,"MI" ,"HAPPY HUSBAND","DRISYAM"]
       self.seat = ["" for i in range(10)]
#Ticket booking system in cinema theatre
       print("Welcome to sreerag cinemas")
       self.film()
     def start(self):

# Display the list of movies
        #print(self.cinema)
        sreerag.age_check()
# See the seat in the theatre
     def Seat_print(self):
            row1= "| {} |  | {} |  | {} |   | {} |  | {} |".format(self.seat[0],self.seat[1],self.seat[2],self.seat[3],self.seat[4])
            row2= "| {} |  | {} |  | {} |   | {} |  | {} |".format(self.seat[5],self.seat[6],self.seat[7],self.seat[8],self.seat[9])

            print()

            print(row1)
            print()
            print(row2)
            
# ask for the details and check cx is eligible and check age 
     def age_check(self):
            self.age=int(input("Please confirm your age:"))
            if self.age >= 18 :
                print("you are eligible to watch the movie")
                sreerag.Seat_print()
                sreerag.select()
            else:
                print("you are not eligible to watch")

#seat Selection
     def  select(self):
                choice = int(input("Enter your seat,only 10 seats available:").strip())
                self.seat[choice - 1]= "booked"
                sreerag.Seat_print()   

#Select movie
     def film(self):
           print(self.cinema)
           self.watch_movie=input("Please select a movie from the list:").upper()
           for tik in self.cinema:
                  if self.watch_movie == tik:
                       print("you are selected {}".format(tik))
                  

sreerag = movie()
sreerag.start()

     


#check seats are available or not


#booking with confirmed message 



