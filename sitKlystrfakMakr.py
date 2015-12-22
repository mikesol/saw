import subprocess

MUSIC = 'wizard1 waldOz comeOut itReallyWasNoMiracle dingDongTheWitchIsDead coroner lullaby-league lollipop-guild followTheYellowBrickRoad2 wizard2 brain wizard3 heart wizard4-3 nerve6 wizard5 optimistic3 merryFast2 kotf2 finale bis'

for x in MUSIC.split(' ') :
  subprocess.call('lilypond '+x+".ly", shell=True)

from ftplib import FTP
ftp = FTP('ftp.ensemble101.fr')     # connect to host, default port
ftp.login('mikesol','eudespeyre1')                     # user anonymous, passwd anonymous@
ftp.cwd('public_html/oz')               # change into "debian" directory
for x in MUSIC.split(' ') :
  outfi = file(x+".pdf",'r')
  ftp.storbinary('STOR '+x+".pdf", outfi)
  outfi.close()

ftp.quit()