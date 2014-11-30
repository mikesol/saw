def N(x, t) :
  out = 1
  B = 8
  for z in range(x) :
    out += 6
    if (z < (x - 1)) | t :
      out += B
    B += 1
  return out

if __name__ == "__main__" :
  print N(10,False), 42*4 + 1