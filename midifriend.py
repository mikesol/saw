import time

OUTAR = []
klick = 0
while True :
  x = raw_input("{0}-->".format(klick))
  t = time.time()
  if x != 'q' :
    OUTAR.append(t)
  else :
    break
  klick += 1

print OUTAR
    