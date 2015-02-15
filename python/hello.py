#!/usr/bin/python3
print('hello world')

#字符串的例子
print('A B C\n')
print(r'A B C\n')

print('你好')
print(u'你好')

print('a b c'  ' d e')

#变量的例子
i=1
print(i)
i=i+1
print(i)

s='''Line one.
Line two.'''
print(s)

#表达式例子
width=5
heigh=2
area=width*heigh
print('Area is',area) #会有漂亮的输出，这是python让生活变得美好的一个例子
print('Perimeter is',2*(width+heigh))

#if
if True:
    print('It\'s true')

#while
answer=23
running=False
while running:
    guess=int(input('Enter an integer:'))
    if guess==answer:
        print('Correct!')
        running=False
    elif guess<answer:
        print('Lower!')
    else:
        print('higher!')
else:
    print('The while loop is over.')

#for
for i in range(1,5):
    print(i)
else:
    print('The for loop is over.')

#function, 默认参数直
def say(message,times=1):
    print(message*times)
say('a')
say('b',2)

def func(a, b=5, c=10):
    print('a is', a, 'and b is', b, 'and c is', c)    
func(3, 7)
func(25, c=24)
func(c=50, a=100)

#文档字符串
def printMax(x, y):
    '''Prints the maximum of two numbers.
    The two values must be integers.'''
    
    x = int(x) # convert to integers, if possible
    y = int(y)

    if x > y:
        print(x, 'is maximum')
    else:
        print(y, 'is maximum')

printMax(3, 5)
print(printMax.__doc__)
print(printMax.__name__)

if __name__=='__main__':
    print('This is main enter')

#list
print(">>> start list demo")
list=['b','a','c']
print('I have a list',list,', and it\'s size is',len(list),', they are:')
for item in list:
    print(item,)

print("I will append 'd'")
list.append('d')
print('I have a list',list,', and it\'s size is',len(list))

print("I will sort my list")
list.sort
print('I have a list',list,', and it\'s size is',len(list))

print("I will delete the first item in my list")
del list[0]
print('I have a list',list,', and it\'s size is',len(list))

#list
print(">>> start tuple demo")
tuple=('a','b','c')
print('I have a tuple:',tuple)
new_tuple=(tuple, 'd')
print('I have a new tuple:',new_tuple)

name="shixin"
age=29
print("My name is %s, and I am %d"%(name,age))

#dict
print(">>> start dict demo")
myDict={"name":"shixin","age":"29"}
print('I have a dict:',myDict)
for keyName,value in myDict.items():
    print("key is %s and value is %s"%(keyName,value))
if 'age' in myDict: # myDict.has_key("age")
    print("My age is", myDict["age"])

#class
print(">>> start class demo")
class Person:
    def __init__(self,name):
        self.name=name
    def sayHi(self):
        print("Hi, my name is", name)
        
person=Person("shixin")
print(person)

person.sayHi()
