\version "2.17.0"
\include "defs-devel.ly"

maybeStemUp =  { %{\stemUp%} }
maybeStemDown =  { %{\stemDown%} }
maybeStemNeutral = { %{\stemNeutral%} }
#(ly:set-option 'point-and-click #f)
sim = \markup \italic "sim."
MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

doux = \markup \italic "doux"

\header {
  title = "The Merry Old Land of Oz" %(1)"
  subtitle = \markup { for The Bird }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 4/4
  \tempo "Sit swagrfårs bytn" 2=116
  \mark \markup \italic "Sitsit fakbydfakbyd kläpnfårs"
  \bar ".|:"
  s1 \bar ":|."
}

prefatoryMatter = {
  \key ees \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = {
  \relative c'' { 
    \prefatoryMatter
    R1*9 |
    \lod r4. \sh b^\f \lo r \sh bes \lo r \sh a ~ |
    \lodd a2..^\>-\bendAfter #-2 \sh r8\! |
    \lo r8 \sh a^\mf \lo a \sh gis \lo r \sh gis \times 2/3 { gis gis gis } |
    \lo g8 \sh r r4 r2 |
    \lo r8 \sh c^\< \lo c \sh bes \lo r \sh bes \lo r \sh c ~ |
    \lo c^\f \sh c r4 r2 |
    \lo r8 \sh ces^\mp \lo ces \sh ces \lo bes \sh r r4 |
    \lo r8 \sh c^\mf \lo c \sh c \lo c \sh r r4 |
    \lo r8 \sh c^\mp^\< \times 2/3 { c c c } \lo bes \sh aes \lo g \sh f |
    g4^\f^\> \times 2/3 { g8 g g } \lo bes \sh bes \lo bes \sh aes^\mp ~ |
    \lo aes \sh r \times 2/3 { aes aes aes } \lo c \sh c \lo c \sh c |
    \lo bes^\< \sh bes \lo bes \sh bes \lo d \sh d \lo d \sh c^\!^\> ~ |
    \lo c-. \sh c \lo c \sh c \lo ces \sh ces \lo ces \sh ces |
    \lo bes^\mp \sh bes \lo bes \sh bes \lo beses \sh beses \lo beses \sh beses |
    \lo aes \sh aes \lo aes \sh f-. \lo r f4 \sh f8 |
    \lo g \sh g \times 2/3 { g g g } \lo aes \sh aes \lo f \sh g ~ |
    g8 r16 bes8.^\f bes bes bes4-. |
    \cricket
    r2 %{\quiet%} c,4 r4 |
    R1 |
    %\times 2/3 { r2 g'4^\mp } f4. r8 |
    \times 2/3 { r2 c4^\mp } c4. r8 |
    \saNormal
  }
}

sopranoWords = \lyricmode {
  cut -- ting Tom
  ter her left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  \repeat unfold 4 Hey! No?
  (de -- mic)
}

mezzo = {
  \relative c' {
    \prefatoryMatter
    R1*9 |
    \lod r4. \sh fis^\f \lo r \sh f \lo r \sh e ~ |
    \lodd e2..^\>-\bendAfter #-2 \sh r8\! |
    \lo r8 \sh e^\mf \lo e \sh dis \lo r \sh dis \times 2/3 { dis dis dis } |
    \lo d8 \sh r r4 r2 |
    \lo r8 \sh ees^\< \lo ees \sh des \lo r \sh c \lo r \sh ees^\f ~ |
    \lo ees \sh ees r4 r2 |
    \lo r8 \sh f^\mp \lo f \sh f \lo e \sh r r4 |
    \lo r8 \sh ges^\mf \lo ges \sh ges \lo f \sh r r4 |
    \lo r8 \sh f^\mp^\< \times 2/3 { f f f } \lo e \sh e \lo e \sh f |
    ees4^\f^\> \times 2/3 { ees8 ees ees } \lo g \sh g \lo g \sh f^\mp ~ |
    \lo f \sh r \times 2/3 { f f f } \lo aes \sh aes \lo aes \sh aes |
    \lo g^\< \sh g \lo g \sh g \lo bes \sh bes \lo bes \sh aes^\!^\> ~ |
    \lo aes-. \sh aes \lo aes \sh aes \lo f \sh f \lo f \sh f |
    \lo g^\mp \sh g \lo g \sh g \lo ges \sh ges \lo ges \sh ges |
    \lo f \sh f \lo f \sh c-. \lo r c4 \sh c8 |
    \lo ees \sh ees \times 2/3 { ees ees ees } \lo d \sh d \lo d \sh bes ~ |
    bes8 r8 r4 r2 |
  }
}

mezzoWords = \lyricmode {
  cut -- ting Tom
  ter her left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  \repeat unfold 4 Hey! No?
}

goodTimesTogether = \relative c'' {
  \sh g ~ \times 2/3 { g8 a g } \lo e \sh c |
  dis4 \lo b8 \sh fis'8 \lo e \sh c \lo bes \sh g |
  \lo cis b4 \sh fis8 \times 2/3 { g b d } \lo fis \sh e |
  \lo r \sh a, \times 2/3 { b d fis } a4 \times 2/3 { g8 a g } |
  \lo fis \sh d \lo c \sh aes8 ~ \lo aes gis'4 \sh dis8 |
  \lo e \sh c \lo r \sh g \lo a \sh fis' \lo f \sh c |
  dis4 \lo b8 \sh f'8 \lo cis \sh a \lo r \sh g |
  \lo a \sh c \lo d \sh fis \lo r \sh g \lo r \sh a8 ~ |
  a4 \times 2/3 { g8 gis a } \lo fis \sh cis \lo bes \sh g |
  \lo a \sh b \times 2/3 { d ( e ) f } \lo r \sh bes, \times 2/3 { c d e } |
  \lo fis ais4 \sh gis8 \times 2/3 { a f ees } \lo c \sh g |
  \lo bes \sh c \lo ees \sh f \lo r ees4 \sh g ~ |
  \lo g \sh bes \lo g \sh f \lo e \sh cis \lo b \sh g |
  \lo aes \sh c \lo ees \sh c \lo ges' \sh ees \lo ces \sh g |
  \lo aes \sh c \lo f \sh ees \lo g \sh aes \lo g \sh ges |
  \lo f8 \sh b \times 2/3 { bes ges d } \lo ces \sh g \lo ges \sh f |
}

alto = {
  \relative c' {
    \clef "treble_8"
    \prefatoryMatter
    R1 |
    r2 \lo r8 \sh a^\f \times 2/3 { b d e } |
    \lo fis8 \sh e \lo r
  }
  \goodTimesTogether
  \relative c' {
    g4 \glissando \times 2/3 { ees8 g bes } \lo d \sh ees, \lo des' \sh c ~ |
    \lo c \sh r \times 2/3 { aes8 c ees } \lo g \sh g \lo f \sh ees |
    \lo g \sh bes \lo g \sh cis, \lo d \sh bes \lo des \sh c ~ |
    \lo c-. \sh g' \lo f \sh ees \lo c \sh aes \lo  g \sh f |
    \lo g \sh bes \lo f' \sh ees \lo d \sh c \lo bes \sh g |
    \lo aes \sh c \lo ees \sh bes' \lo r aes4 \sh bes8 |
    \lo g \sh ees \times 2/3 { c ees f } \lo g \sh ees \lo f \sh ees ~ |
    ees8. des des des des4-. |
    r2 ees4-. \lo r8 \sh bes |
    \times 2/3 { ees f fis } \lo g \sh ees \lo d \sh bes \lo g \sh ees |
    \lo ees' \sh d ~ d4 \lo r8 \sh g, \times 2/3 { bes c ees } |
    \lo g8 \sh d \lo f \sh g \lo ees \sh c \lo bes \sh aes |
    \lo g ees'4 \sh cis8 \lo d \sh bes \lo g \sh f |
    \lo b8 c4 \sh bes8 \times 2/3 { aes c ees } \lo bes' \sh aes |
    \lo g \sh bes \lo g \sh ees \lo c \sh d \lo e \sh c |
    f4-. r \lod c'4. \sh bes8 |
    \lo aes8 \sh g \lo f \sh d ~ d2 |
    \lo r8 \sh b \times 2/3 { cis dis g } \lo c b4 \sh d ~ |
    \times 4/6 { d4 b a g d' b } |
    \lo aes g4 \sh b,8 \times 2/3 { c ees g } \lo c \sh bes |
    \lo aes \sh g \lo f \sh d ~ \lo d \sh bes \times 2/3 { aes b d } |
    \lo bes'8 aes4 \sh e8 \lo d \sh ais8 \times 2/3 { b d e } |
    \lo a8 g4 \sh ais,8 \times 2/3 { b d e } \lo a \sh g ~ |
    \lo g \sh ais,8 \times 2/3 { b d e } \lo a g4 \sh ais,8 |
    \times 2/3 { b d e } \lo a \sh g ~ \lo g \sh ais,8 \times 2/3 { b d e } |
    \lo a8 g4 \sh ais,8 \times 2/3 { b d e } \lo a \sh g ~ |
    \lo g \sh ais,8 \times 2/3 { b d e } \lo a g4 \sh ais,8 |
    \times 2/3 { b d e } \lo a \sh g ~ \lo g \sh ais,8 \times 2/3 { b d e } |
    \lo a8 g4 \sh ais,8 \times 2/3 { b d e } \lo a \sh g ~ |
    \lo g \sh ais,8 \times 2/3 { b d e } \lo a g4 \sh ais,8 |
    \times 2/3 { b d e } \lo a \sh g ~ \lo g \sh ais,8 \times 2/3 { b d e } |
    \lo a8 g4 \sh r8 r2 |
    r2 \lo r8 \sh ais,8 \times 2/3 { b d e } |
    \lo a8 g4 \transpose c ees \relative c'' { \sh ais,8 \times 2/3 { b d e } \lo a \sh g ~ |
    \lo g } \sh ais,8 \times 2/3 { b d e } \lo a g4 \sh ais,8 |
    \times 2/3 { b d e } \lo a \sh g ~ \lo g \sh ais,8 \times 2/3 { b d e } |
    \lo a8 g4 \sh ais,8 \times 2/3 { b d e } \lo a \sh g ~ |
    \lo g \sh g \times 2/3 { g g g } \lo g \sh g \lo r \sh bes, |
    \lo c \sh bes \lo ees \sh g \lo f \sh d \lo c \sh bes |
    \lo ees \sh f \lo g \sh ees \lo f \sh aes \lo c \sh d |
    ees4-. ees-. ees-. r4 |
  }
}

togetherWords = \lyricmode {
  Hi -- de -- ous -- ly ab -- rupt
  Would -- n't help with your re -- gres -- sion
  Ne -- fa -- ri -- ous ar -- tist,
  Ma -- le -- vo -- lent tramp,
  Con -- jur -- ing i -- ma -- ges
  A shrewd en -- chan -- ter
  Un -- can -- ny, wic -- ked gent
  Vile im -- pos -- ter
  No more than a cut -- ting Tom
  Fe -- lo -- ny was re -- por -- ted
  af -- ter he left
  And ev -- ry -- one doubt -- ed
  er -- ro -- ne -- ous -- ly
  The vi -- ru -- lent fact that he a --
  lone would tra -- vel to re -- mar -- ka -- ble in -- cin -- di -- a -- ry
  spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child -- ren to the
}

altoWords = \lyricmode {
  He was a be -- lie -- ver
  \togetherWords
  door.
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  \repeat unfold 4 Hey! No?
  The Wi -- zard of Oz, he was an a -- ca -- de -- mic
  Al -- ler -- gic to work -- in' if it meant he'd lift a fin -- ger
  The Wi -- zard was a swin -- ger
  That ten -- ded to lin -- ger
  In his of -- fice mul -- ling o -- ver books

  He had all of the keys
  om -- ni -- vor -- ous -- ly read dic -- tion -- a -- ries,
  just to show off
  he liked to re -- cite six syl -- la -- ble nouns,
  es -- pe -- cial -- ly con -- cepts, you know,
De -- mo -- bi -- li -- sa -- tion
Per -- so -- ni -- fi -- ca -- tion
Col -- lec -- ti -- vi -- za -- tion
Hu -- mi -- di -- fi -- ca -- tion
I -- ni -- tia -- li -- za -- tion
Au -- then -- ti -- fi -- ca -- tion
Mis -- re -- pre -- sen -- ta -- tion
I -- den -- ti -- fi -- ca -- tion
Com -- mer -- cia -- li -- za -- tion
Trans -- mo -- gri -- fi -- ca -- tion
Pha -- ryn -- gea -- li -- za -- tion
Me -- di -- ca -- men -- ta -- tion
De -- ser -- ti -- fi -- ca -- tion
not pro -- cras -- ti -- na -- tion
Re -- har -- mo -- ni -- sa -- tion
%{\tag #'disqualification%} { Dis -- qua -- li -- fi -- ca -- tion }
Ex -- pe -- ri -- men -- ta -- tion
%%%%
Dis -- or -- ga -- ni -- sa -- tion
Syl -- la -- bi -- fi -- ca -- tion
De -- hu -- ma -- ni -- za -- tion
while ad -- ding che -- mi -- lu -- mi -- nes -- cence
al -- so fun -- da -- men -- ta -- li -- sm
hot hot hot!
}

tenor = {
  {
    \clef "treble_8"
    \prefatoryMatter
    R1 |
    R1 |
    \lod r4.
  }
  << { \transpose c c, \goodTimesTogether } { \sh s8^\mf } >>
  \relative c {
    ees4-.^\doux^\p g-. bes4 r |
    \lo aes8 bes4 \sh g8 \lo r f4 \sh f8 |
    \lo ees8 \sh ees ees4 \lo g8 bes4 \sh aes ~ |
    aes4 r r bes |
    ees,4 \lo r \sh g bes4-. ees-. |
    \lo c \sh d \lo r \sh ees \lo r aes,4 \sh aes8 |
    \lo g \sh g g4 aes f |
    ees8. g g g g4-. |
    r2 g4-. \lo r8 \sh ees |
    \times 2/3 { g gis a } \lo bes \sh g \lo ees \sh c \lo bes \sh aes |
    \lo g' \sh f ~ f4 \lo r8 \sh ees \times 2/3 { c ees g } |
    \lo bes \sh r \lo aes \sh bes \lo g \sh ees \lo c \sh aes |
    \lo g ees'4 \sh cis8 \lo d \sh bes \lo g \sh f |
    \lo b8 c4 \sh bes8 \times 2/3 { aes c ees } \lo bes' \sh aes |
    \lo g \sh bes \lo g \sh ees \lo c \sh d \lo e \sh c |
    f4-. r \lod c'4. \sh bes8 |
    \lo aes8 \sh g \lo f \sh d ~ d2 |
  }
}

tenorWords = \lyricmode {
  \togetherWords
  Ha ha ha
  Ho ho ho
  And a cou -- ple of tra la las
  That's how we laugh the day a -- way in the
  Mer -- ry old land of Oz
  \repeat unfold 4 Hey! No?
  The Wi -- zard of Oz, he was an a -- ca -- de -- mic
  Al -- ler -- gic to work if it meant he'd lift a fin -- ger
  The Wi -- zard was a swin -- ger
  That ten -- ded to lin -- ger
  In his of -- fice mul -- ling o -- ver books

  He had all of the keys
  om -- ni -- vor -- ous -- ly read dic -- tion -- a -- ries,
  just to show off
  he liked to re -- cite six syl -- la -- ble nouns,
  es -- pe -- cial -- ly con -- cepts, you know,
}

bass = {
  \relative c {
    \prefatoryMatter
    \clef bass
    R1*10 |
    r4 g^\f gis a |
    bes r \lo r8 \sh g ~ g4 |
    \lo b \sh b r4 r2 |
    \lo r8 \sh c \lo r \sh bes \lo r \sh aes \lo r \sh g8 ~ |
    \lo g \sh g \lo r \sh g \lo bes \sh bes \lo r \sh bes |
    \lo aes \sh aes \lo r \sh aes \lo r \sh c \lo r \sh aes |
    r2 \lo r8 \sh c \lo r \sh bes |
    \lo r8 \sh bes^\> aes4 g bes |
    \lo ees,^\mp \sh ees \lo bes' \sh bes \lo g \sh g \lo ees \sh ees |
    \lo f \sh f \lo c' \sh c \lo aes \sh aes \lo f \sh f |
    \lo g \sh g \lo d' \sh d \lo bes \sh bes \lo g \sh g |
    \lo f \sh f \lo c' \sh aes \lo r aes4 \sh aes8 |
    \lo g \sh g \lo d' \sh d \lo bes \sh bes \lo g \sh g |
    \lo c \sh c \lo aes \sh aes \lo f \sh f \lo c' \sh c |
    \lo bes \sh bes \lo c \sh c \lo bes \sh aes \lo g \sh f |
    ees8. ees'^\f ees ees ees4-. |
    R1*2 |
    r4 g,^\mp f aes |
    g b bes e, |
    a aes f aes |
    g d fis f |
    b fis f a |
    aes fes r2 |
  }
}

bassWords = \lyricmode {
  \repeat unfold 82 ○
  \repeat unfold 4 Hey!
  \repeat unfold 21 ○
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzo
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
}
 <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenor
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff = "realBass" \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bass
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
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
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
%%% piano redux
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \soprano \marks >> }
      \new Voice = "2" { \voiceTwo \mezzo }
      \new Voice = "3" { \voiceThree \alto }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenor }
      \new Voice = "5" { \voiceTwo \bass }
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
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \transpose c c \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
