def reverse(self, x: int) -> int:
        temp_list = str(x)
        if temp_list[0] == "-":
            answer = int("-" + temp_list[:0:-1])
        else:
            answer = int(temp_list[::-1])
        
        if answer >= 1<<31 or answer < -1<<31:
            return 0
        else:
            return answer
            
           
#         solution b
#         answer = 0
#         if x == 0 or x > 2**31 -1 or x < -2**31:
#             pass 
#         else: 
#             sign = int(x/abs(x))
#   here we use sign to repersent + or -
#             x *= sign
#             while x > 0:
#                 temp = x % 10
#                 answer *= 10
#                 answer += temp
#                 x = x // 10 
#   here we use sign to restore the +- of x
#             answer *= sign
            
#         if answer > 2**31 -1 or answer < -2**31:
#             return 0
#         else:
#             return answer
     
    
# solution c
#         answer = 0
#         if x == 0 or x > 2**31 -1 or x < -2**31:
#             pass
#         elif x > 0: 
#             while x > 0:
#                 temp = x % 10 
#                 answer *= 10
#                 answer += temp
#                 x = x // 10  
#         elif x < 0: 
#             x *= -1 
#             while x > 0:
#                 temp = x % 10
#                 answer *= 10
#                 answer += temp
#                 x = x // 10 
#             answer *= -1
            
#         if answer > 2**31 -1 or answer < -2**31:
#             return 0
#         else:
#             return answer
