import random

def mergeSort(alist):
    #print("Splitting ",alist)
    if len(alist)>1:
        mid = len(alist)//2
        lefthalf = alist[:mid]
        righthalf = alist[mid:]

        mergeSort(lefthalf)
        mergeSort(righthalf)

        i=0
        j=0
        k=0
        #print lefthalf, righthalf
        while i<len(lefthalf) and j<len(righthalf):
            #print i, j, k, lefthalf, righthalf
            if lefthalf[i]<righthalf[j]:
                alist[k]=lefthalf[i]
                i=i+1
            else:
                alist[k]=righthalf[j]
                j=j+1
            k=k+1

        while i<len(lefthalf):
            alist[k]=lefthalf[i]
            i=i+1
            k=k+1

        while j<len(righthalf):
            alist[k]=righthalf[j]
            j=j+1
            k=k+1
    #print("Merging ",alist)


def prepareCikDataset():
    count = 0
    lines = 0
    names = []
    with open('cik.coleft.c.txt') as f:
        for line in f:
            lines += 1
            tokens = line.strip().split(':')
            if len(tokens[0]) > 0 and tokens[0][0].isalpha():
                count +=1
                names.append(tokens[0])
        print lines, count

    out = open('names.txt','w')
    while len(names) > 0:
        name = random.choice(names)
        out.write(name+'\n')
        names.remove(name)

    out.close()

def testMergesort(filename):
    items = []
    with open(filename,'r') as f:
        for line in f:
            items.append(line)
    print len(items)

    mergeSort(items)
    
    print 'sorted!'
    with open('mergesort.txt','w') as f:
        for item in items:
            f.write(item)
    print "all done"
            

testMergesort('names.txt')



##alist = [54,26,93,17,77,31,44,55,20]
##mergeSort(alist)
##print(alist)
