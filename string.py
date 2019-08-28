#This is my first string program

#ask user for the name
name=input("What is your name\n")
print(name)
#ask for the city
age=input("What are your age\n")
print(age)
city=input("Where are you from?\n")
print(city)
#ask for what they enjoy

string="your name is {} and you are {} old you live in {}"
output=string.format(name,age,city)
print(output)