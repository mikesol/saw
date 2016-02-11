# -*- coding: utf-8 -*-

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

CONTENT = ''
for x in range(len(MUSIC)) :
  CONTENT += '<hr />\n'
  CONTENT += '<h2>{0}</h2>\n'.format(TITLES[x])
  if MUSIC[x] in NOTPRINTABLE :
    CONTENT += '<b>pas encore prêt à être imprimé</b><br />\n'
  CONTENT += '<a href="{0}.pdf">PDF</a>\n'.format(MUSIC[x])
  if MUSIC[x] in RECORDINGS :
    CONTENT += '<a href="{0}.mp3">MP3</a>\n'.format(MUSIC[x])
  if MUSIC[x] in MIDIS :
    CONTENT += '<a href="{0}.midi">MIDI</a>\n'.format(MUSIC[x])
  
FRAME = '''<!DOCTYPE html>
<head>
  <meta charset="UTF-8" />  
  <title>Sit Ozfårs Wysr Partitions et Musique</title>
</head>
<body>
<h1>Sit Ozfårs Wysr</h2>
{0}
</body>
</html>
'''.format(CONTENT)
outfi = file("index.html",'w')
outfi.write(FRAME)
outfi.close()

for x in MUSIC :
  subprocess.call('lilypond -dno-point-and-click '+x+".ly", shell=True)

from ftplib import FTP
ftp = FTP('ftp.ensemble101.fr')     # connect to host, default port
ftp.login('mikesol','eudespeyre1')                     # user anonymous, passwd anonymous@
ftp.cwd(URL)               # change into "debian" directory
outfi = file("index.html",'r')
ftp.storbinary('STOR index.html', outfi)
outfi.close()
for x in MUSIC :
  outfi = file(x+".pdf",'r')
  ftp.storbinary('STOR '+x+".pdf", outfi)
  print 'STOR '+x+".pdf"
  outfi.close()

for x in MIDIS :
  outfi = file(x+".midi",'r')
  ftp.storbinary('STOR '+x+".midi", outfi)
  print 'STOR '+x+".midi"
  outfi.close()

for x in RECORDINGS :
  outfi = file("recordings/"+x+".mp3",'r')
  ftp.storbinary('STOR '+x+".mp3", outfi)
  print 'STOR '+x+".mp3"
  outfi.close()


ftp.quit()