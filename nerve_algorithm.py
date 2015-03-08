BIG = "fis'8 g' a' fis' d' e' fis' d' ~d' e' fis' d' b cis' d' b ~b d' a a a a a ~a ~a ~a ~a ~a ~a ~a r r d' cis' b ~b b' a' g' fis' e' d' cis' cis' cis'' b' a' g' fis' e' d' d' d' d' d"
BIG = BIG.split(' ')




print """\\version "2.19.0"
\\score{ <<
\\new Staff {
\\tempo 4=180
"""

for x in range(len(BIG)) :
  for y in range(x) :
    print BIG[y],
  print ""

print """
}
\\new Staff { r8 r r r r r r r r
"""
for x in range(len(BIG)) :
  for y in range(x) :
    print BIG[y],
  print ""


print """
} >>
\\layout{}
\\midi{}
}
"""