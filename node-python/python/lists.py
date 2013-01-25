#!/usr/bin/env python

print [1, 2, 'three']   # --> [1, 2, 'three']

print [1, 2, 'three'][2]  # --> three

list = [1,2,'three']

print list[1:]   # -> [2, 'three']

print list[:1]   # 1

print len(list)  # 3


list[1] = ['a','b','c'] 

print list  # --> [1, ['a', 'b', 'c'], 'three']

print list[1].append('d')  # --> None
print list                 # --> [1, ['a', 'b', 'c', 'd'], 'three']

