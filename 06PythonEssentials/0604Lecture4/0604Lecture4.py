# Lists
from typing import Set, Tuple


lst = ["Start", 4, 5, "Hello", 0, 3.5, "End"]
print(lst)
print(lst[0])
print(lst[-1])
print(lst[2:4])
print(lst[2:])
lst[3] = 7
print(lst)
lst[3] = [6, 7, 8, 9]
print(lst)
lst[3:5] = [6, 7, 8, 9]
print(lst)
lst.insert(8, "Hello")
print(lst)
lst.insert(1,"S")
print(lst)
lst.append("Add")
print(lst)
lst1 = [-1, -2, -3]
lst1.extend(lst)
print(lst1)
lst.remove("Hello")
print(lst)
lst1.pop(1)
print(lst1)
lst1.clear()
print(lst1)

for item in lst:
    print(item)

lst = [4, 3, 8, 1]
print("<lst> list length: ", len(lst))
lst.sort()
print(lst)

lst1 = lst;
print(lst1);
print(id(lst))
print(id(lst1))

lst1 = lst.copy()
print(id(lst))
print(id(lst1))

print(lst + lst1)


#Tuple
tpl = ("MacOS", "Linux", "Win")
(os1, os2, os3) = tpl
print(os1, ",", os2, ",", os3)

lst = list(tpl)
lst.append("Unix")
tpl = tuple(lst)
print(tpl)


#Set
st = {"One", "Two", "Three",  "Two"}
st.add("Four")
print(st)
st.remove("Two")
print(st)
st.discard("Two")
print(st)
st.discard("Two")
print(st)

#Dict

dict = {"HDD": "400G", "CPU": "Intel", "RAM": "8G", "OWNER": "Pavlo"}
print(dict)

dict["HDD"] = "4T"
print(dict["HDD"])

dict["year"] = "2022"
print(dict)

dict.pop("CPU")
print(dict)


for key in dict:
    print(key, ":" ,dict.get(key))

for key in dict.values():
    print(key)