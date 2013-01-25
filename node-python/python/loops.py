#!/usr/bin/env python

a, b = 0, 1

while b < 10000:

    print b, 
    a, b = b, a+b

    
print 'end'  # --> 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 end

if b > 10000:

    print b   # --> 10946

else:

    print 'c'


if b < 10000:

    print b

elif b == 10946:

    print 'b = 10946'  # -->  b = 10946


words = ['humbug', 'osmosis', 'pied']

for w in words:

    print w,    # --> humbug osmosis pied

print 


for w in words:

    print w, len(w) 




r = range(10)

print r  # --> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


print range(5,7)   # --> [5, 6]

a = ['Mary', 'had', 'a', 'little', 'lamb']
for i in range(len(a)):
    print i, a[i]




# while True:
#     # --> does not run

# while True:
#     pass   # --> runs for ever


def fn(n):
    print "fn with %d" % n

fn(1)   # --> fn with 1

def pass_in_fn(f, n = 2):
    f(n)

pass_in_fn(fn)   # --> fn with 2


pass_in_fn(fn, 12345)  # --> fn with 12345


sound = 'moo'
def cow(arg=sound):
    print arg

sound = 'oink'
cow()     # --> moo  (! not oink)



def my_function():
    "my function() says hello"

    print "hello"


my_function()              # --> hello
print my_function          # --> <function my_function at 0x10a38fcf8>
print my_function.__doc__  # --> my function() says hello




# keyword args http://docs.python.org/2/tutorial/controlflow.html#keyword-arguments

# unpacking args http://docs.python.org/2/tutorial/controlflow.html#keyword-arguments



