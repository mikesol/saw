TRIPLE = "TRIPLE"
DOUBLE = "DOUBLE"
SINGLE = "SINGLE"

class Decision(object) :
  def __init__(self, *args) :
    self.t = args

class Not(Decision) : pass
class Yes(Decision) : pass

HARVEST = [Not(6,5,11,2,4,1,9,0,3,SINGLE),
Not(6,9,1,0,5,7,11,10,3,SINGLE),
Yes(6,9,1,0,5,10,8,7,3,SINGLE),
Not(6,9,1,0,7,10,8,11,3,SINGLE),
Not(6,9,1,5,4,2,10,0,3,SINGLE),
Not(6,9,1,5,4,2,11,10,3,SINGLE),
Not(6,9,1,5,4,8,7,0,3,SINGLE),
Yes(6,9,1,5,4,8,10,0,3,TRIPLE),
Yes(6,9,1,5,8,10,7,4,3,SINGLE),
Not(6,9,5,2,4,7,10,8,3,SINGLE),
Not(6,9,7,4,1,5,8,10,3,SINGLE),
Not(6,9,2,4,8,7,5,0,3,DOUBLE),
Not(6,9,4,2,1,5,7,0,3,SINGLE),
Not(6,9,4,2,1,8,7,0,3,DOUBLE),
Not(6,9,4,2,1,8,10,0,3,SINGLE),
Not(6,9,4,2,1,8,10,7,3,SINGLE),
Not(6,10,2,11,8,7,9,0,3,SINGLE),
Not(6,10,7,5,4,1,9,8,3,SINGLE),
Yes(6,9,11,4,7,5,8,0,3,SINGLE),
Not(6,9,11,4,7,5,10,0,3,SINGLE),
Not(6,9,11,5,4,8,7,0,3,DOUBLE),
Not(6,9,11,5,4,8,10,0,3,DOUBLE),
Yes(6,10,1,4,7,5,8,0,3,SINGLE),
Not(6,10,1,4,8,7,2,0,3,SINGLE),
Not(6,10,1,4,8,7,9,0,3,SINGLE),
Yes(6,10,1,5,4,8,7,0,3,SINGLE),
Not(6,5,1,0,4,8,7,9,3,SINGLE),
Not(6,5,1,11,4,8,7,9,3,SINGLE),
Not(6,5,1,11,4,10,9,8,3,SINGLE),
Not(6,5,2,0,9,1,8,10,3,SINGLE),
Not(6,5,2,4,0,8,11,9,3,SINGLE),
Not(6,5,2,11,1,4,7,10,3,SINGLE),
Yes(6,5,2,11,1,4,9,0,3,SINGLE),
Not(6,5,2,11,1,4,9,8,3, DOUBLE),
Yes(6,0,5,4,1,9,8,7,3,DOUBLE),
Yes(6,0,5,4,1,10,8,7,3,DOUBLE),
Not(6,0,11,4,8,10,9,7,3,SINGLE),
Not(6,1,4,0,9,8,7,11,3,SINGLE),
Not(6,1,10,0,5,7,9,11,3,SINGLE),
Not(6,1,10,0,9,7,5,8,3,SINGLE),
Not(6,1,10,0,9,8,7,11,3,SINGLE),
Not(6,1,10,8,5,4,9,11,3,SINGLE),
Not(6,1,10,8,5,7,9,11,3,SINGLE),
Not(6,2,1,0,4,7,9,11,3,SINGLE),
Not(6,1,4,2,5,10,9,11,3,SINGLE),
Not(6,1,5,2,0,9,8,4,3,DOUBLE),
Not(6,1,5,2,0,9,11,4,3,SINGLE),
Yes(6,1,5,4,8,7,2,0,3,SINGLE),
Not(6,1,5,7,0,10,8,4,3,SINGLE),
Yes(6,4,10,2,1,9,8,0,3,SINGLE),
Yes(6,4,11,2,0,10,8,7,3,DOUBLE),
Not(6,5,1,0,4,7,9,8,3,DOUBLE),
Not(6,5,4,11,1,10,9,7,3,SINGLE),
Not(6,5,7,2,4,1,8,10,3,SINGLE),
Not(6,5,7,4,0,2,8,10,3,SINGLE),
Not(6,5,10,0,4,8,7,9,3,DOUBLE),
Not(6,5,10,2,1,8,7,0,3,DOUBLE),
Yes(6,5,10,2,1,8,7,9,3,SINGLE),
Yes(6,5,10,2,4,8,7,0,3,SINGLE),
Yes(6,5,10,2,4,8,7,9,3,SINGLE),
Not(6,5,2,11,1,8,7,0,3,SINGLE),
Yes(6,5,2,11,1,8,7,9,3,DOUBLE),
Not(6,5,2,11,7,10,8,4,3,SINGLE),
Not(6,5,4,8,0,2,7,10,3,SINGLE)
]
HARVEST = filter(lambda x : isinstance(x, Yes), sorted(HARVEST, key=lambda x : {SINGLE:2,DOUBLE:1,TRIPLE:0}[x.t[-1]]))
NOTES = "c' cis' d' dis' e' f' fis' g' gis' a' ais' b'".split(" ")
IV = "ais' b' c'' cis'' d'' dis'' e'' f'' fis''".split(" ")

print "\\version \"2.19\"\n#(set-global-staff-size 15)"
for x in range(len(HARVEST)) :
  X = HARVEST[x].t[:-1]
  Y = HARVEST[x].t
  print '\\markup {{ "{0}" \\score {{ \\new Staff {{ r4 {1} }} }} }}'.format(Y, ' '.join(['<{0} \\tweak #\'font-size #-2 {1}>'.format(NOTES[X[y]], IV[y]) for y in range(len(X))]))
