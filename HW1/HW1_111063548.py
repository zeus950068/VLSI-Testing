import numpy as np

def circuit(x1, y1, y2, x3):
    a = not (x1 or y1)
    b = not (y2 and x3)
    z = a or b
    return a,b,z

def test_pattern(x1, y1, y2, x3):
    if(x1 == True and y1 == False):
        excepted_a = False
    elif(x1 == False and y1 == True):
        excepted_a = False
    elif(x1 == True and y1 == True):
        excepted_a = False
    elif(x1 == False and y1 == False):
        excepted_a = True
        
    if(y2 == True and x3 == False):
        excepted_b = True
    elif(y2 == False and x3 == True):
        excepted_b = True
    elif(y2 == True and x3 == True):
        excepted_b = False
    elif(y2 == False and x3 == False):
        excepted_b = True
        
    return excepted_a,excepted_b

def test_and(x1, y1, y2, x3):
    a = not (x1 or y1)
    b = not (y2 and x3)
    if (a == 1 and b == 1):
        z = True
    else:
        z = False
    return a,b,z

def test_or(x1, y1, y2, x3):
    y1_AB = (y1 or x3)
    a = not (x1 or y1_AB)
    b = not (y2 and y1_AB)
    z = a or b
    return a,b,z

print("correct truth table\t\t\tAND-bridging fault between a and b\t\t\tOR-bridging fault between a and b")        
print("x1\tx2\tx3\ta\tb\tz\t\t\tx1\tx2\tx3\ta\tb\tz\t\t\t\t\t\tx1\tx2\tx3\ta\tb\tz")
print("--------------------\t\t\t--------------------\t\t\t\t\t\t--------------------")

and_cnt = 0
or_cnt = 0
for x1 in [False, True]:
    for x2 in [False, True]:
        y1 = x2
        y2 = x2
        for x3 in [False, True]:
            correct_result = circuit(x1, y1, y2, x3)
            binary_correct_result = '\t'.join('1' if x else '0' for x in correct_result)
            print(f"{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_correct_result[0]}\t{binary_correct_result[2]}\t{binary_correct_result[4]}\t\t", end = '')
            
            bridging_fault_and = test_and(x1, y1, y2, x3)
            #print(bridging_fault_and)
            binary_and = '\t'.join('1' if x else '0' for x in bridging_fault_and)
            if (binary_and[0] != binary_correct_result[0]):
                print(f"\t{int(x1)}\t{int(x2)}\t{int(x3)}\t({binary_and[0]})\t{binary_and[2]}\t({binary_and[4]})\t\t", end ='')
                and_cnt = and_cnt + 1
            elif (binary_and[2] != binary_correct_result[2]):
                print(f"\t{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_and[0]}\t({binary_and[2]})\t({binary_and[4]})\t\t", end ='')
                and_cnt = and_cnt + 1
            elif (binary_and[4] != binary_correct_result[4]):
                print(f"\t{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_and[0]}\t{binary_and[2]}\t({binary_and[4]})\t\t", end ='')
                and_cnt = and_cnt + 1
            else:
                print(f"\t{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_and[0]}\t{binary_and[2]}\t{binary_and[4]}\t\t", end ='')
            
            
            bridging_fault_or = test_or(x1, y1, y2, x3)
            binary_or = '\t'.join('1' if x else '0' for x in bridging_fault_or)
            if (binary_or[0] != binary_correct_result[0]):
                print(f"\t\t\t\t{int(x1)}\t{int(x2)}\t{int(x3)}\t({binary_or[0]})\t{binary_or[2]}\t{binary_or[4]}\t\t")
                or_cnt = or_cnt + 1
            elif (binary_or[2] != binary_correct_result[2]):
                print(f"\t\t\t\t{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_or[0]}\t({binary_or[2]})\t({binary_or[4]})\t\t")
                or_cnt = or_cnt + 1
            else:
                print(f"\t\t\t\t{int(x1)}\t{int(x2)}\t{int(x3)}\t{binary_or[0]}\t{binary_or[2]}\t{binary_or[4]}\t\t")

print("\n\t\t\t\t\t\t\t   AND-bridiging fault num :",and_cnt, end='')
print("\t\t\t\t   OR-bridiging fault num :",or_cnt)

            
            
                
            
