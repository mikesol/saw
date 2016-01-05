\version "2.17.0"
\include "stylesheet.ly"
#(set-global-staff-size 13.7)
\include "defs-devel.ly"
\include "characterNames.ly"
ntrill = \override TrillSpanner #'bound-details #'left  #'text = #'()

%{

%}


%{
  Inhaled
  Col legno
  Anal
  Yodeled
  With spirit fingers
  Glutteral
  ***
  Vibrato
  Air
  Phlegm
  Rich in harmonies
%}

\header {
  title = "The Lollipop Guild" %(1)"
  subtitle = \markup { for Mark Applebaum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

metronomeMarkOne = \markup {
    \score {
        \new RhythmicStaff \with {
            \remove Time_signature_engraver 
            \remove Staff_symbol_engraver
            fontSize = #-1
        }
        {
            \times 2/3 { c4 }
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}

metronomeMarkTwo = \markup {
    \score {
        \new RhythmicStaff \with {
            \remove Time_signature_engraver 
            \remove Staff_symbol_engraver
            fontSize = #-1
        }
        {
            \times 4/7 { c8. }
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}

\markup \override #'(line-width . 120) \column {
  \line { 1. Inhaled. 2. Slightly flat. 3. Smoky. 4. Yodeled.
  5. Bluer. 6. Whispered. 7. Silly. 8. Curios. }
  \line { 9. Glutteral. 10. Col legno battuto. 11. Anal. 12. Rich in phlegm. 13. Lacking any semblance of breath support. }
  \line { 14. Overintellectualized. 15. Sweet. 16. Dans le style de l'ensemble 101.
  17. Unrecognizable as music. 18. In the pocket. }
}

marksLollipop = {
  \time 5/6
  \tempo "With urgency" 4=200
  s2. s4*1/3 | % we represent the lollipop guild
  \time 9/20
  \bar ".|:" s4 s4*4/5 | \bar ":|."  % the lollipop guild
  \time 5/8
  s4. % the lollipop 
  \mark \markup \override #'(thickness . 2.0) \box \pad-markup #1.5 \line { \general-align #Y #DOWN \metronomeMarkOne  = \general-align #Y #DOWN \metronomeMarkTwo } 
  s4 | % guild
  \time 4/4
  \once \override Score . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:override '(font-size . 4.5) "π" #:number "4" ))))
  s1 | % and in the name of the
  \time 4/4
  \once \override Score . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:override '(font-size . 1.5) #:bold "?" #:number "16"))))
  s1 | % the lollipop ugild, we
  \time 1/32
  s32
  \time 4/4
  % wish to welcome you, to
  \once \override Score . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:number "1" #:number "0"))))
  % munchkin land
  s1 \once \override Score.BarLine.stencil = ##f
}

prefatoryMatterLollipop = {
  %\key aes \major
  #(set-accidental-style 'modern-cautionary)
}

sopranoLollipop = \relative c''' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  cisih8.^\mp^\> \times 4/5 { d16 ~ \times 2/3 { d8^\pp cis cih^\fp^\< ~ } } \times 4/7 { cih4 bis8.^\subPd ~ } \times 2/3 { bis8^\espressivo ~ } bis16 |
  \times 4/5 { aih16^\< e'8^\f ~ \times 2/3 { e8^\< eeh16^\ff^\> ~ } \times 4/5 { eeh gisih,8.^\f eih'16^\> } } |
  \once \override Beam.grow-direction = #LEFT
  a32^\mf^\> [ a aih^\mp^\< ais   aisih^\mf^\> ais aih^\mp^\< a   aeh^\mf^\> aes aeseh^\mp^\< aeh   beh,^\mf^\> aeh' aes^\mp^\< aeseh   ] aes^\fff^\> aeh a^\mp^\< aih^\mf |
  \once \override TupletNumber.text = \markup \epsfile #X #13 #"pi1.eps"
  \times 4/5 { dis4^\> e:32 cis dis cis^\p }
  r64 bis,16..^\mp r128 cis'64^\f r4.... \clef treble <g,,, c-\harmonic \parenthesize g''>32^\mf \clef "treble^8" e'''8.^\mp r32.. eeh16.^\p |
  \times 4/5 { c128^\mf^\> c128 c128 dis'128 cih,128^\! } |
}

sopranoLollipopWords = \lyricmode {
  We re -- pre -- sent the
  lol -- li -- pop guild, the
  lol -- li -- pop guild, and
  in the name of the
  lol -- li pop guild we
  %\override LyricText.font-size = #-1
  Wish to wel -- come you
}

tnup = #(define-music-function (parser location) () #{
\once \override TupletNumber.Y-offset = #5
#})

mezzoLollipop = \relative c''' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  \times 2/3 { \times 4/7 { gis'2^\espressivo^\ppp^\cresc ( ais,4.-^ ) } b4-> \times 4/5 { d8-- cis-- [ ais ] b-- [ f-\snappizzicato ] } } |
  \tnup
  \times 4/7 { cis8-\prallmordent ( } \times 4/5 { fis16 ) } \times 4/7 { \tnup eis-\lineprall ( } \times 4/5 { aes ) } \times 4/7 { \tnup g-\prallup ( } \times 4/5 { aes ) } \times 4/7 { \tnup eis-\prall ( } \times 4/5 { fis ) } \times 4/7 { \tnup cis8-\downprall } |
  fis'4^\turn ~ fis32-. fis64-! fis-! \clef bass eis,,,-^ \clef "treble^8" fis'''32.^\espressivo ~ fis4   |
  \once \override TupletBracket.direction = #UP
  \once \override TupletNumber.text = \markup \epsfile #X #15 #"pi2.eps"
  \times 2/3 { ees,2-- \times 2/3 { c'4-_ b-_ d-_ } fis2-> } |
  r2...*64/61 b64*64/61-! |
  \times 4/5 { c128-. b^\trill c-. b,-. c'-.^\pp } |
  \override NoteHead.stencil = ##f
  b1 |
}

ossiaOne = \relative  c''' {
  \stopStaff
  R1*5/6 | % we represent the lollipop guild
  R1*9/20 % the lollipop guild
  R1*5/8 |
  s1 | % and in the name of the
  \startStaff
  \noBreak
  r2..*64/57^"OSSIA" b64*64/57-! |
  \stopStaff
  \noBreak
  s32
  s1
}

ossiaTwo = \relative  c''' {
  \stopStaff
  R1*5/6 | % we represent the lollipop guild
  R1*9/20 % the lollipop guild
  R1*5/8 |
  s1 | % and in the name of the
  \startStaff
  r2.*64/49^"OSSIA'S OSSIA" b64*64/49-! |
  \stopStaff
  s32
  s1
}

mezzoLollipopWords = \lyricmode {
  We re -- pre -- sent the
  lol -- li -- pop guild the
  lol -- li -- pop guild and
  in the name of the
  lol
  %\override LyricText.font-size = #-1
  Wish to wel -- come you
  
}

ann =
#(define-music-function (parser location a b c) (number? number? string?)
#{
  \balloonGrobText #'NoteHead #(cons a b) \markup { \override #'(circle-padding . 0.5) \circle \fontsize #-2.0 $c }
#})

altoLollipop = \relative c'' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  \autoBeamOff
  \clef "treble"
  \prefatoryMatterLollipop
  \times 2/3 {
    \ann #-3 #-3 #"1"
    beseh8.^\md ~
    \ann #2 #2 #"2"
    beseh4 ~
    \ann #-3 #-1 #"3"
    beseh16 ~
    \ann #-0.5 #2 #"4"
    beseh4. ~
    \ann #-4 #-1 #"5"
    beseh8 ~
    \ann #2 #-3 #"6"
    beseh4 ~
  } |
  \times 4/5 {
    \ann #2 #2 #"7"
    beseh32 ~
    \ann #3 #-1 #"8"
    beseh4.. ~
    \ann #-2 #-1 #"9"
    beseh16. ~
  } |
  \ann #3 #-1 #"9"
  beseh4. ~ \times 2/3 {
    \ann #-2 #-1 #"10"
    beseh4 ~
    \ann #-2 #2 #"11"
    beseh8 ~ }
  \once \override TupletNumber.text = \markup \epsfile #X #15 #"pi3.eps"
  \once \override TupletBracket.direction = #UP
  \times 8/11 {
    \ann #-2 #-2 #"12"
    beseh4. ~
    \ann #-2 #-2 #"13"
    beseh8 ~
    \ann #0 #-2 #"14"
    beseh4 ~
    \ann #-1 #-2 #"15"
    beseh16 ~
    \ann #0 #-2 #"16"
    beseh8. ~
    \ann #1 #-2 #"17"
    beseh4. ~
  } |
  \ann #-1 #-2 #"16"
  beseh16*16/33 bisih\breve*16/33 ~ |
  bisih32 | \noBreak
  s1 |
}

altoLollipopWords = \lyricmode {
  We
  \override LyricText.font-size = #-2
  representthelollipopguild,thelollipopguildandinthenameofthelollipopguildweWishtowelcomeyou
}

legato = \markup \italic "legato"
adue = \markup \italic "a 2"
boccachiusa = \markup \italic "bocca chiusa"
rubato = \markup \italic "rubato"
manontroppo = \markup \italic "ma non troppo"
conmotto = \markup \italic "con motto"
senzamotto = \markup \italic "senza motto"
leggero = \markup \italic "leggero"
cantando = \markup \italic "cantando"
giocoso = \markup \italic "giocoso"
rallentando = \markup \italic "rallentando"
strisciando = \markup \italic "strisciando"
consord = \markup \italic "con sordina"
%stringendo
%strascinando 
% MIRRKU
% mouth closed with lyrics
% a 2
#(define (blackbox grob)
  (let* ((nep (ly:grob-property grob 'normalized-endpoints)))
    (ly:round-filled-box '(0 . 60) '(-0.5 . 0.5) 1)))
tenorLollipop = \relative c'' {
  \autoBeamOff
  \repeat tremolo 4 { c32^\f^\boccachiusa bis } \times 2/3 { f4 eis } geses8 f |
  \times 4/5 { r64 } \once \override Hairpin #'stencil = #(lambda (grob) (vibster grob 0 0.2 0.4 '((9 0 20 -10 30 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10))
))
  \override Hairpin #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  beses16^\< gisis8 a8 f16 geses^\! |
  \times 5/8 { r4. b8^\adue \set glissandoMap = #'((0 . 0) (0 . 1) (0 . 2))  <ces>\glissando \set glissandoMap = #'((0 . 0) (1 . 0) (2 . 0))  <d, fis e'>\glissando <ces'>\glissando b } |
  \once \override TupletNumber.text = \markup \epsfile #X #20 #"pi4.eps"
  \once \override TupletBracket.direction = #UP
  \set Staff.pedalSustainStyle = #'mixed
  \times 4/7 { ais4 ceses4 bes \noTr ais2.^\startTrillSpan ceses4^\stopTrillSpan } |
  fis16*16/5-\sustainOn ges16*16/5 eis16*16/5-\sustainOff-\sustainOn ges16*16/5-\parend^\f fis16*16/5-\sustainOff |
  \times 4/5 { \override PhrasingSlur.dash-definition = #'((0 1 0.4 0.75)) ees128^\consord \( feses ees feses dis \) } |
  s1 |
}

tenorLollipopWords = \lyricmode {
  We __ _ re -- pre -- sent the
  lol -- li -- pop guild, the
  lol -- li -- pop guild, and
  in the name of the
  lol -- li pop guild we
  %\override LyricText.font-size = #-1
  Wish to wel -- come you
}


%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature
        \sopranoLollipop
      } {
        \marksLollipop
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
\new StaffGroup \with { \override SystemStartBracket.stencil = ##f }  <<
    \new Staff = "ossiaTwo" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    fontSize = #-5
    \override StaffSymbol.staff-space = #(magstep -5)
    \override StaffSymbol.thickness = #(magstep -5)
  }
  { \ossiaTwo }
    \new Staff = "ossia" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
  }
  { \ossiaOne }
 
    \new Staff = "mezzy" \with { instrumentName = \ttoName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { << { \numericTimeSignature
        \mezzoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
>>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { << { \numericTimeSignature
        \altoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { << { \numericTimeSignature
        \tenorLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \consists "Balloon_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \override BalloonTextItem.annotation-balloon = ##f
      \override BalloonTextItem.Y-extent = ##f
      \override BalloonTextItem.X-extent = ##f
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
%%% piano redux

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoLollipop \marksLollipop >> }
      \new Voice = "2" { \voiceTwo \mezzoLollipop }
      \new Voice = "3" { \voiceThree \altoLollipop }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorLollipop }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \override VerticalAxisGroup.remove-first = ##t
      \RemoveEmptyStaves
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature
        \sopranoLollipop
      } {
        \marksLollipop
      } >> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
    \new Staff = "mezzy" \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { \numericTimeSignature
        \mezzoLollipop
      }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { \numericTimeSignature
        \altoLollipop
      }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { \numericTimeSignature
        \tenorLollipop
      }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
  >>
  \midi {}
}
