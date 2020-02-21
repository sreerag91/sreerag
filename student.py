students = {
    "male":[ "one", "two" , "three" , "four" ],
    "Female":["five","six", "Seven","Eight"]
    }

for key in students.keys():
  #  print(key)
    for name in students[key]:
      if "e" in name:
       print(name)
