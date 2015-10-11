import time
import sys
import os

outfile = sys.argv[1]
if os.path.exists(outfile) :
  print "not overwriting", outfile
  sys.exit(1)

LPSET = "\\set Score.tempoWholesPerMinute = #(ly:make-moment {0} 4 0 1)"

OLDTIME = None

OUT = []
while True :
  I = raw_input('')
  T = time.time()
  if (I in '1234567890qQ') and (I != '') :
    print "BREAKING"
    break
  if OLDTIME != None :
    diff = 60/(T - OLDTIME)
    OUT.append(LPSET.format(int(diff)))
  OLDTIME = T

fh = file(outfile,'w')
fh.write('{\n  '+('\n  '.join(OUT))+"\n}")
fh.close()