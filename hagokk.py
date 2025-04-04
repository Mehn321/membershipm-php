#small application where the user can input two given numbers

def compare_numbers():
    num_1 = int(input("number1"))
    num_2 = int(input("number2"))
    
    if num_1>num_2:
        print(str"{num_1} is greater than num_2")
    elif num_1<num_2:
        print(str"{num_1} is less than num_2")
    else:
        print(str"{num_1}is equal to num_2")
        
    compare_numbers()
        
