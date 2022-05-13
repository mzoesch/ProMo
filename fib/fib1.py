# Base case
# Worst calculation

import time


def fib(n):

    # Prints all calcs above x
    # if (n > 30):
    #     print(n)

    if (n == 0 or n == 1):
        return n

    return fib(n - 1) + fib(n - 2)


print("Num: ")
strnum = input()

# Convert to Integer
try:
    num = int(strnum)
except Exception as e:
    print("\n-1")
    quit()

# Calculating the stuff
start_time = time.time()
print(fib(num))
print("%ss" % (time.time() - start_time))
