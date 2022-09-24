import math

def main():
    a = ask_value('a')
    b = ask_value('b')
    c = ask_value('c')

    solv_square(a, b, c)
    print("--")
    print("Test 1:")
    solv_square(1, -6, 9)   # Result: x = 3
    print("Test 2:")
    solv_square(1, -4, -5)  # Result: x1 = 5, x2 = -1
    print("Test 3:")
    solv_square(3, -4, 2)   # Result: d = -8, no real sqrt 
    
def ask_value(val):
    res = ""
    while not res.isnumeric() or res == "":
        resOrig = input('Enter integer number "' + val + '": ')    
        res = resOrig.replace('-', '')    
    return resOrig

def discriminant(a, b, c):
    # pow(int(b),2)
    # math.pow(int(b),2)
    return int(b)**2 - 4*int(a)*int(c)

def roots(d, a, b, c):
    res = []
    if d > 0:
        res.append((-1*int(b)+math.sqrt(int(d)))/(2*int(a)))
        res.append((-1*int(b)-math.sqrt(int(d)))/(2*int(a)))        
    elif d == 0:
        res.append((-1*int(b))/(2*int(a)))
    else:
        res.append(str((-1*int(b)+math.sqrt(-1*int(d)))/(2*int(a))) + 'i')
        res.append(str((-1*int(b)-math.sqrt(-1*int(d)))/(2*int(a))) + 'i')        

    print("Root(s): ", end="")
    print(res)
    return res

def solv_square(a, b, c):
    desc = discriminant(a, b, c)
    print('Discriminant (' + str(a) + ', ' + str(b) +', ' + str(c) + '): '  + str(desc))
    roots(desc, a, b, c)

main()