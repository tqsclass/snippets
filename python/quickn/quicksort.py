def quickSort(arr):
    less = []
    pivotList = []
    more = []
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr[0]
        print 'pivot is ',pivot 
        for i in arr:
            if i < pivot:
                less.append(i)
            elif i > pivot:
                more.append(i)
            else:
                pivotList.append(i)
            print less, pivotList, more,'\n'
        print less, pivotList, more,'\n'
        less = quickSort(less)
        print 'finished less: ',less,'array: ',arr,'\n'
        more = quickSort(more)
        print 'finished more: ',more,'array: ',arr,'\n'
        return less + pivotList + more
 
a = [4, 65, 2, -31, 0, 99, 83, 782, 1]
print a
a = quickSort(a)


def testQuickSort(filename):
    items = []
    with open(filename,'r') as f:
        for line in f:
            items.append(line)
    print len(items)

    quickSort(items)
    
    print 'sorted!'
    with open('quickSort.txt','w') as f:
        for item in items:
            f.write(item)
    print "all done"
            

#testQuickSort('names.txt')
