TOTAL = 16

from heart_lyric_machine import *
import string

GOODS = '''
fis cis' b, |
fis' d' r
  %!
  fis, |
  cis' b, fis' b |
  d, e r
%&2
fis |
cis' b, a' d |
r
  %!
  fis, cis' b, |
  fis' b a, d |
  e r
%&3
fis cis' |
e, a d r |
  %!
  fis, cis' b, fis' |
  b a, d b |
  e r
%&4
g cis |
e, a d r |
  %!
  fis, cis' b, fis' |
  b a, d b |
  a' e r
%&5
g |
b e, a d |
r
  %!
  fis, cis' e, |
  b fis' b a, |
  d b a' e |
  r
%&6
g b e, |
a cis r
  %!
  fis, |
  cis' e, b' b, |
  fis' b a, d |
  b a' e r |
%&7
g b e, ais |
cis 
  r8 a cis | 
    fis, b d, e |
      a g r fis |
        r4 g8 fis |
          r8 a r g |

 '''

MAPPED_l='c cis d dis e f fis g gis a ais b'.split(' ')
MAPPED = {}
for x in range(len(MAPPED_l)) :
  MAPPED[MAPPED_l[x]] = x

GOODS = GOODS.split('\n')
GOODS = filter(lambda x : "%" not in x, GOODS)
GOODS = ' '.join(GOODS)
GOODS = GOODS.replace("'","")
GOODS = GOODS.replace("8","")
GOODS = GOODS.replace("4","")
GOODS = GOODS.replace(",","")
GOODS = GOODS.replace("r","")
GOODS = GOODS.replace("|","")
GOODS = GOODS.split(' ')
while True :
  try :
    GOODS.remove('')
  except :
    break

#GOODS = [string.upper(x) for x in GOODS]
GOODS = [[random.choice(get_choices_from_goods(MAPPED[x],True))[0] for x in GOODS] for y in range(TOTAL)]

SPLITS = [5,7,5,8,5,9,5,10,5,11,5,12,5,8,1,2,2]

SPSP = [0]+[sum(SPLITS[:x+1]) for x in range(len(SPLITS))]

for x in range(len(SPSP) - 1) :
  for y in range(TOTAL) :
    for z in GOODS[y][SPSP[x]:SPSP[x+1]] :
      print z,
      print " "*(8-len(z)),
    print "%"
  print "%%%%%"
  print ""