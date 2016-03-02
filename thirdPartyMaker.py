# -*- coding: utf-8 -*-

import random

URL = 'public_html/oz/perrine'
import subprocess
import sys
import os
from constants import TITLES, MUSIC, RECORDINGS, MIDIS, NOTPRINTABLE
# first, verify existence

COUNT = 0

for x in MUSIC :
  if (not os.path.exists(x+".pdf")) or (not os.path.exists(x+".ly")) :
    raise ValueError(x+" score doesn't exist")
  else :
    cmd = "pdfinfo "+x+".pdf | grep 'Pages' | awk '{print $2}'"
    COUNT += int(os.popen(cmd).read().strip())

print "Approximate count", COUNT
for x in RECORDINGS :
  if not os.path.exists('recordings/'+x+".mp3") :
    raise ValueError(x+" music doesn't exist")

for x in MIDIS :
  if not os.path.exists(x+".midi") :
    raise ValueError(x+" midi doesn't exist")

random.seed(9)
random.shuffle(MUSIC)

for x in range(len(MUSIC)) :
  m = MUSIC[x]
  outfi = file('tpcompile.ly','w')
  outfi.write('''\\version "2.19" \\include "{0}.ly" \\header {{
  title = "Response Work {1}"
  subtitle = ""
  composer = ""
  poet = ""
  arranger = ""
}}'''.format(m, x+1))
  outfi.close()
  subprocess.call('lilypond -dno-point-and-click -o thirdparty/{0} tpcompile.ly'.format(x+1), shell=True)