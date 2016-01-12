import string
def lyTrans(x) :
  for c in range(len(x)) :
    if (x[c] == '-') and (x[c+1] in string.lowercase) :
      x = x[:c+1] + string.upper(x[c+1]) + x[c+2:]
  nums = {'1':'One','2':'Two','3':'Three','4':'Four','5':'Five','6':'Six'}
  for key in nums.keys() :
    x = x.replace(key, nums[key])
  x = x.replace('-','')
  return x
  

def fLyTrans(x) :
  return "\\"+lyTrans(x)
