def divide42(devid):
    try:
        return 42/devid
    except ZeroDivisionError:
        print("please ignore")
print(divide42(2))
print(divide42(0))
