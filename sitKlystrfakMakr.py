# -*- coding: utf-8 -*-
import subprocess
import sys
import os

TITLES = ['The Wonderful Wizard of Oz (Ouverture)','Somewhere Over the Rainbow', 'Come Out', 'It Really Was No Miracle', 'Ding Dong the Witch is Dead', 'The Coroner', 'The Lullaby League', 'The Lollipop Guild', 'Follow the Yellow Brick Road', 'The Wonderful Wizard of Oz (Bête)', 'If I Only Had a Brain','The Wonderful Wizard of Oz (Jazzy)', 'If I Only Had a Heart','The Wonderful Wizard of Oz (Noël)','If I Only Had the Nerve','The Wonderful Wizard of Oz (Cirque)','Optimistic Voices','Merry Old Land of Oz','If I Were King of the Forest','The Wonderful Wizard of Oz (Finale)','The Wonderful Wizard of Oz (Bis)']
MUSIC = 'wizard1 waldOz comeOut itReallyWasNoMiracle dingDongTheWitchIsDead coroner lullaby-league lollipop-guild followTheYellowBrickRoad2 wizard2 brain wizard3 heart wizard4-3 nerve6 wizard5 optimistic3 merryFast2 kotf2 finale bis'.split(' ')
RECORDINGS = 'wizard1 waldOz comeOut lullaby-league brain heart wizard4-3 nerve6 finale bis'.split(' ')
MIDIS = 'wizard1 waldOz comeOut itReallyWasNoMiracle coroner lullaby-league lollipop-guild followTheYellowBrickRoad2 brain wizard3 heart wizard4-3 nerve6 wizard5 optimistic3 merryFast2 kotf2 finale bis'.split(' ')
NOTPRINTABLE = 'lollipop-guild'.split(' ')
# first, verify existence

for x in MUSIC :
  if not os.path.exists(x+".pdf") :
    raise ValueError(x+" score doesn't exist")

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

'''
for x in MUSIC :
  subprocess.call('lilypond '+x+".ly", shell=True)
'''

from ftplib import FTP
ftp = FTP('ftp.ensemble101.fr')     # connect to host, default port
ftp.login('mikesol','eudespeyre1')                     # user anonymous, passwd anonymous@
ftp.cwd('public_html/oz')               # change into "debian" directory
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