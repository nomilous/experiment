#!/usr/bin/env python


print """

mult
i
pleli
ne
    
"""

string = 'string'

print len(string)   # --> 6

print string * 5    # --> stringstringstringstringstring
print string [:2]   # --> 'st'
print string [-1:]  # --> 'g'
print string [:-1]  # --> 'strin'
print string [2:]   # --> 'ring'

try:
    string[0] = 'S'
    
except Exception, e:
    print e         # --> 'str' object does not support item assignment
                    #     (cannot change one letter)
finally:
    string = '5'    # but can reassign

# try:
#     print string
# except Exception, e:

# else:


try:
    string = '5'
except Exception, e:
    raise e           # --> rethrow
else:
    # 
    # happens if no exception was caught
    # 
    inT = int(string)
finally:
    floaT = float(string)


print floaT   # is still in scope

try:
    print int + float
except Exception, e:
    print e   # --> unsupported operand type(s) for +: 'type' and 'type'

print float(inT) + floaT  # --> 10.0

floaT = 22
floaT *= (1 / 7)     
print floaT  # -> 0

floaT = 22
floaT *= (1.0 / 7)
print floaT   # -> 3.14285714286

import ast   # http://docs.python.org/2/library/ast.html#ast.literal_eval
pi = ast.literal_eval("3.14159265359")
print pi    # -> 3.14159265359

print "pi = {0}".format(pi)

print '1 = %(number)010d' % {"number": 1}  # --> 0000000001

print "%.3f" % pi         # --> 3.142






