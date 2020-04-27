def foo(**kwargs):
    for key,value in kwargs.items():
        print("{}:{}".format(key,value))
