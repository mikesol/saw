subP = \markup { \center-align
\normal-text { \italic { \italic sub } }
\dynamic p }

subPd = #(make-dynamic-script subP)
\relative c''' {
<< {  \time 5/6
  \tempo "With urgency" 4=200
  s2. s4*1/3 | % we represent the lollipop guild
  \time 9/20
  \bar ".|:" s4 s4*4/5 | \bar ":|."  % the lollipop guild
}
{
  \clef "treble^8"
  cisih8.^\mp^\> \times 4/5 { d16 ~ \times 2/3 { d8^\pp cis cih^\fp^\< ~ } } \times 4/7 { cih4 bis8.^\subPd ~ } \times 2/3 { bis8^\espressivo ~ } bis16 |
  \times 4/5 { aih16^\< e'8^\f ~ \times 2/3 { e8^\< eeh16^\ff^\> ~ } \times 4/5 { eeh gisih,8.^\f eih'16 } } |
}
>>
}

\addlyrics {
  We re -- pre -- sent
  The Lol -- li -- pop Guild,
  The
}