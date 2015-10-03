import itertools
import sys
INTERVALHEAD = 3.25
C = 0; DF = 1; D = 2; EF = 3; E = 4; F = 5; FS = 6; G = 7; AF = 8; A = 9; BF = 10; B=11
TERMINUS = [BF,B,C,DF,D,EF,E,F,FS]
N = -1
CT = 0
print TERMINUS

def _sign(x) :
  return 0 if x == 0 else abs(x)/x

def _fold6(x) :
 return abs(x) * _sign(x) if abs(x) < 6 else (12 - abs(x))*_sign(x)

def _avgInterval(l) :
 return sum([_fold6(abs(l[x] - l[x-1])) for x in range(1,len(l))]) * 1.0 / (len(l) - 1)

def _range(l) :
 return sum([_fold6(l[x] - l[x-1]) for x in range(1,len(l))])

for pmt in itertools.permutations(range(12), 9) :
 diffs = [abs(pmt[x] - TERMINUS[x]) % 12 for x in range(9)]
 uniqueDiffs = len(set(diffs)) == len(diffs)
 notOctave = 0 not in diffs
 orderILike = [FS,N,N,N,N,N,N,N,EF]
 correspondsToOrder = True
 for x in range(9) :
   if (orderILike[x] > N) and (orderILike[x] != pmt[x]) :
     correspondsToOrder = False
     break
 intervalsNormal = _avgInterval(pmt) < INTERVALHEAD
 rangeLessThanOctave = abs(_range(pmt)) <= B
 if (uniqueDiffs and notOctave and correspondsToOrder and intervalsNormal and rangeLessThanOctave) :
   print pmt
   CT += 1

print "COUNT", CT