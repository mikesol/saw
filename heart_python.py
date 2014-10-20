FACTOR = 60/52.
LENGTH = 2.5
FACTOR = 60/52.
LENGTH = 2.5
piece = "fis g a fis d e fis d e fis d b cis d b d a a a a a d cis b b' a g fis e d cis cis' b a g fis e d d d d d     fis g a fis d e fis d e fis d b cis d b d a a a a a d cis b b' a g fis e d cis cis cis' b a g fis e d d d d d     d d b' ais b cis a b g g g a fis      e e d e e fis d    e fis a b       e, a    fis g a fis d e fis d      fis d b cis d b d a a a a a     d cis b b' a g fis e d cis cis cis' b a g fis e d d d d d"
PIECE = filter(lambda x : x != '', piece.split(' '))
piece2 = "fis g a fis d e fis d e fis d b cis d b d a d cis b b' a g fis e d cis cis' b a g fis e d     fis g a fis d e fis d e fis d b cis d b d a    d cis b b' a g fis e d cis cis' b a g fis e d     b' ais b cis a b g a fis      e d e d e d e fis d      e fis a b       fis e d a    fis g a fis d e fis d     e fis d b cis d b d a     d cis b b' a g fis e d cis cis' b a g fis e d"
PIECE2 = filter(lambda x : x != '', piece2.split(' '))

print "p1 is", len(PIECE)
print "piece 1 len is", len(PIECE) * FACTOR * LENGTH

print "p2 is", len(PIECE2)
print "piece 2 len is", len(PIECE2) * FACTOR * LENGTH
                         