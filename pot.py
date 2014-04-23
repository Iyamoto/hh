
def getIndex1(my_items):
    return my_items[1]

inFile = open('pot.txt','r')
##outFile = codecs.open('logins.txt', 'w', encoding='utf-8')

counters = {}
num=10
for line in inFile:
    line = line.strip()
    if len(line)>3:
        key = line[-3]
        counters[key] = counters.get(key,0)+1
##        print(line)
##        num-=1
##        if num==0:
##            break

inFile.close()

rez = []
for k,v in counters.items():
    rez.append((k,v))

sortedlist = sorted(rez,key=getIndex1, reverse=True)

print(sortedlist)

##outFile.close()


