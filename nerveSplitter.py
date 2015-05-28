'''
START = 3
NSKIP = (4,)
SMODULO = (0,)
NPLAY = (4,)
PMODULO = (0,)
'''
START = 7
NSKIP = (8,)
SMODULO = (0,)
NPLAY = (8,)
PMODULO = (0,)
#########################################
import sys
import os
import subprocess
SR = 'r'

MELODY = """
d'' ees'' f'' d'' bes' c'' d'' bes' r c'' d'' bes' g' a' bes' g'
r bes' f' f' f' f' f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f' r r bes' a'
g' r g'' f'' ees'' d'' c'' bes' a' r a'' g'' f'' ees'' d'' c'' bes'
bes' bes' bes' bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes'
r r d'' ees'' f'' d'' bes' c'' d'' bes' r c'' d'' bes' g' a'
bes' g' r bes' f' f' f' f' f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f'
r r bes' a' g' r g'' f'' ees'' d'' c'' bes' a' r a'' g'' f'' ees''
d'' c'' bes' bes' bes' bes'
bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes' ~ bes' r r bes' ~ bes'
g'' ~ g'' ~ g'' ~ g'' r fis'' g'' a'' f'' ~ f'' ~ f'' ~ f''
r r g'' ~ g'' ees'' ~ ees'' ees'' ~ ees'' ees'' ~ ees'' f'' ~ f''
d'' ~ d'' ~ d'' ~ d'' r r d'' d'' c'' bes' c'' bes' c'' bes' c'' d''
bes' ~ bes' ~ bes' ~ bes' r c'' d'' f'' g'' r r r r d'' c'' bes'
f'' ~ f'' ~ f'' ~ f'' r r d'' ees'' f'' d'' bes' c'' d'' bes' r c''
d'' bes' g' a' bes' g' r bes' f' f' f' f'
f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f' ~ f' r r bes' a' g' r g''
f'' ees'' d'' c'' bes' a' r a'' g'' f'' ees'' d'' c'' bes' bes' bes'
bes' bes' ~ bes' ~ bes' ~ bes'  
"""
def gulp(f) :
  infi = file(f,'r')
  out = infi.read()
  infi.close()
  return out
        
class Note(object) :
  def __init__(self, note, tie) :
    self.note = note
    self.tie = tie
  def toLily(self, tie) :
    out = self.note
    out+= '8'
    if tie & self.tie :
      out += ' ~'
    return out
  def __str__(self) :
    return self.note + (' ~ ' if self.tie else '')

melsplit = filter(lambda y : y != '', sum([x.split(' ') for x in MELODY.split('\n')], []))
NOTES = []
ctr = 0

while ctr < len(melsplit) :
  has_tie = False
  if ctr != len(melsplit) - 1:
    tie = melsplit[ctr + 1]
    if tie == '~' :
      has_tie = True
  NOTES.append(Note(melsplit[ctr], has_tie))
  ctr += 1
  if has_tie :
    ctr += 1

skipCounter = 0
playCounter = 0

OUT = []
FIRST_TIME = True
for x in range(START) :
  OUT.append(Note(SR, False))

ctr = 0
while ctr < len(NOTES) :
  nToPlay = NPLAY[playCounter % len(NPLAY)]
  if (FIRST_TIME) :
    nToPlay -= PMODULO[playCounter % len(NPLAY)]
  target = nToPlay + ctr
  while (ctr < target) & (ctr < len(NOTES)) :
    OUT.append(NOTES[ctr])
    ctr += 1
  playCounter += 1
  ######
  nToSkip = NSKIP[skipCounter % len(NSKIP)]
  if (FIRST_TIME) :
    nToSkip -= SMODULO[skipCounter % len(NSKIP)]
  for p in range(nToSkip) :
    OUT.append(Note(SR, False))
  skipCounter += 1
  FIRST_TIME = False

REPLACEME = [OUT[x].toLily(False if x == len(OUT) - 1 else (False if OUT[x+1].note == SR else True)) for x in range(len(OUT))]

NERVE_TEST = gulp('nerve_melody_test.ly')
NERVE_TEST = NERVE_TEST.replace('REPLACEME', ' '.join(REPLACEME))

if os.path.exists(sys.argv[1]) :
  print "Cowardly refusing to overwrite file"
  sys.exit(1)

OUTFI = file(sys.argv[1], 'w')
OUTFI.write(NERVE_TEST)
OUTFI.close()

print (len(OUT) / 2) * 60./96.
subprocess.call('lilypond '+sys.argv[1], shell=True)
