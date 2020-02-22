myarr = ['hello', 'hello','hello','hello','hello']
test = [str(item)+'_'+str(s) for s in range(2) for item in myarr]
print(test)

unroll = 2
for x in range(unroll - 1):
    print(x, x + 1)
#
# for s in range(unroll):
#     print(s)