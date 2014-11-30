import random

A_0 = -3
B_0 = -1
C = 0
CIS = 1
D = 2
DIS = 3
E = 4
EIS = 5
FIS = 6
G = 7
GIS = 8
A = 9
AIS = 10
B = 11
CIS_1 = 13

GOODS = [
  ("When" , FIS),
  ("a"  , G),
  ("man's" , A),
  ("an" , FIS),
  ("emp" , (D, "empty")),
  ("ty" , (E, "empty")),
  ("ket" , (FIS, "kettle")),
  ("tle" , (D, "kettle")),
  ("He" , E),
  ("should" , FIS),
  ("be" , D),
  ("on" , B_0),
  ("his" , CIS),
  ("met" , (D, "mettle")),
  ("tle" , (B_0, "mettle")),
  ("And" , D),
  ("yet" , A_0),
  ("I'm" , A_0),
  ("torn" , A_0),
  ("a" , (A_0, "apart")),
  ("part" , (A_0, "apart")),
  ("Just" , D),
  ("be" , (CIS, "because")),
  ("cause" , (B_0, "because")),
  ("I'm" , B),
  ("pre" , (A, "presumin")),
  ("sum" , (G, "presumin")),
  ("in" , (FIS, "presumin")),
  ("That" , E),
  ("I" , D),
  ("could" , CIS),
  ("be" , CIS_1),
  ("a" , B),
  ("hu" , (A, "human")),
  ("man" , (G, "human")),
  ("If" , FIS),
  ("I" , E),
  ("on" , (D, "only")),
  ("ly" , (D, "only")),
  ("had" , D),
  ("a" , D),
  ("heart" , D),


  ("I'd" , FIS),
  ("be" , G),
  ("ten" , (A, "tender")),
  ("der" , (FIS, "tender")),
  ("I'd" , D),
  ("be" , E),
  ("gen" , (FIS, "gentle")),
  ("tle" , (D, "gentle")),
  ("And" , (E, "and")),
  ("aw" , (FIS, "awfully")),
  ("fully" , (D, "awfully")),
  ("sen" , (B_0, "sentimental")),
  ("ti" , (CIS, "sentimental")),
  ("men" , (D, "sentimental")),
  ("tal" , (B_0, "sentimental")),
  ("Re" , (D, "Regarding")),
  ("gar" , (A_0, "Regarding")),
  ("ding" , (A_0, "Regarding")),
  ("love" , A_0),
  ("and" , A_0),
  ("art" , A_0),
  ("I'd" , D),
  ("be" , CIS),
  ("friends" , B_0),
  ("with" , B),
  ("the" , A),
  ("spar" , (G, "sparrows")),
  ("rows" , (FIS, "sparrows")),
  ("And" , E),
  ("the" , D),
  ("boy" , CIS),
  ("that" , CIS),
  ("shoots" , CIS_1),
  ("the" , B),
  ("ar" , (A, "arrows")),
  ("rows" , (G, "arrows")),
  ("If" , FIS),
  ("I" , E),
  ("on" , (D, "only")),
  ("ly" , (D, "only")),
  ("had" , D),
  ("a" , D),
  ("heart" , D),


  ("Pic" , (D, "Picture")),
  ("ture" , (D, "Picture")),
  ("me" , B),
  ("a" , AIS),
  ("bal" , (B, "balcony")),
  ("co" , (CIS_1, "balcony")),
  ("ny" , (A, "balcony")),
  ("A" , (B, "Above")),
  ("bove" , (G, "Above")),
  ("a" , G),
  ("voice" , G),
  ("sings" , A),
  ("low" , FIS),
  ("Where" , (E, "Wherefore")),
  ("fore" , (E, "Wherefore")),
  ("art" , D),
  ("thou" , E),
  ("Ro" , (E, "Romeo")),
  ("me" , (FIS, "Romeo")),
  ("o" , (D, "Romeo")),
  ("I" , E),
  ("hear" , FIS),
  ("a" , A),
  ("beat" , B),
  ("How" , E),
  ("sweet" , A),


  ("Just" , FIS),
  ("to" , G),
  ("re" , (A, "register")),
  ("gis" , (FIS, "register")),
  ("ter" , (D, "register")),
  ("e" , (E, "emotion")),
  ("mo" , (FIS, "emotion")),
  ("tion" , (D, "emotion")),
  ("Jeal" , (FIS, "Jealousy")),
  ("ou" , (D, "Jealousy")),
  ("sy" , (B_0, "Jealousy")),
  ("de" , (CIS,"devotion")),
  ("vo" , (D,"devotion")),
  ("tion" , (B_0,"devotion")),
  ("And" , D),
  ("real" , (A_0, "really")),
  ("ly" , (A_0, "really")),
  ("feel" , A_0),
  ("the" , A_0),
  ("part" , A_0),
  ("I" , D),
  ("could" , CIS),
  ("stay" , B_0),
  ("young" , B),
  ("and" , A),
  ("chip" , (G, "chipper")),
  ("per" , (FIS, "chipper")),
  ("And" , E),
  ("I'd" , D),
  ("lock" , CIS),
  ("it" , CIS),
  ("with" , CIS_1),
  ("a" , B),
  ("zip" , (A, "zipper")),
  ("per" , (G, "zipper")),
  ("If" , FIS),
  ("I" , E),
  ("on" , (D, "only")),
  ("ly" , (D, "only")),
  ("had" , D),
  ("a" , D),
  ("heart" , D),
  ###############
  ###############
  ############### kludges
  ###############
  ###############
  #  C natural can be fudged: d c b b' a g fis ...
  ("be", (C, "because")),
  ("be", C),
  ("could", C),
  ###############
  ###############
  #  DIS art in wherefore art thou
  ("art", DIS),
  ###############
  ###############
  #  EIS I in I hear a beat
  ("I", EIS),
  ###############
  ###############
  #  GIS I in I hear a beat
  ("a", GIS),
]

def get_choices_from_goods(n, do_mod = False) :
  out = []
  for entry in GOODS :
    key = entry[0]
    value = entry[1]
    r_value = value if type(value) == type(0) else value[0]
    if ((n == r_value) if not do_mod else (n == (r_value % 12))) :
      out.append((key, key if type(value) == type(0) else value[1]))
  return out

def format_choice_list(l) :
  out = [get_choices_from_goods(n, True) for n in l]
  [random.shuffle(x) for x in out]
  for x in out :
    print "*******"
    for y in x :
      print y
    print "*******"

#print get_choices_from_goods(AIS)
'''
stay B
rows FIS
And E
a AIS
young B
boy CIS
Just D
in FIS
and E
I'd D
shoot CIS
friends B
'''
if __name__ == '__main__' :
  #format_choice_list([B,FIS,E,AIS,B,CIS,D,FIS,E,D,CIS,B])
  #format_choice_list([E,D,CIS,B])
  #format_choice_list([B,FIS,E,AIS,B,CIS,D,FIS,E,D,CIS,B])
  format_choice_list([FIS,EIS,E])
