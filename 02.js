var curnum = 1
var lastnum = 0
var sum = 0
while(curnum <= 4000000){
  if(curnum%2 === 0) sum += curnum
  curnum += lastnum
  lastnum = curnum - lastnum
}

print(sum);