% notes piquées avec Piki
% -- accord pour clôturer
% ---- 2m to arrive to D, sounds like arrival to A but we sneak G in to round to D
% single long note D avec Ryan (Mike danse autour de ça (genre ees' cis' e' c' f' b etc.))
% ---- cute virage to G (8th reply chez tout le monde)
% telescoping duo avec Mathieu
% --
% high duo avec Marie
% --
\version "2.19.30"
\include "defs-devel.ly"



%{
  
  a' c b' ees g'
  %%%
  cis' gis, eis' b, d' cis
  fis gis'


  a d g
  fis b e
  dis gis cis
%}

%{
  Am D
  G
  Eb F
  Bb/ Bo7
  Cm C#o
  D D#o
  E
  F
  E D#
  D
  C#
  C#
%}

%{
  ees bes'
  f a'
  bes a'
  b aes'
  c g'
  cis fis'
  d a'
  dis b'
  e fis'
  b e'
  f e'
  a ees'
  e d'
  dis a'
  d g'8 ~ g'4
  cis g'8 ~ g'4
  fis e'8 ~ e'4
   
%}

\header {
  title = "It Really Was No Miracle" %(1)"
  subtitle = \markup { for Ella }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\paper {
  #(define fonts
    (set-global-fonts
    #:music "lilyjazz"
    #:brace "lilyjazz"
    #:roman "LilyJAZZText"
    #:sans "LilyJAZZChord"
    #:factor (/ staff-height pt 20)
  ))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}


#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.15)


%changeUp = { \change Staff = "up" }
%changeDown = { \change Staff = "down" }
changeUp = { \clef treble }
changeDown = { \clef bass }

scorePrefatoryMatter = {}
midiPrefatoryMatter = {}

marks = {
  \tempo "Lento"
  \numericTimeSignature
  s1*5
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  s2 \mark \markup \italic "accel." s2
  s2 \mark \markup \italic "rall." s2
  s4 \tempo "Andante" s2.
  s1
  \tempo "Moderato" 
  s1*2
  \tempo "Andante"
  s1*3
  \tempo "Larghetto"
  s1*3
  \mark \markup \italic "rall."
  s1
  \tempo "Largo"
  s1*6
  \mark \markup \italic "rall."
  s1*2 \bar "|."
}

swung = \markup \italic "swung"
straight = \markup \italic "straight"

soprano = \relative c' {
  \key fis \minor
  \clef treble
  R1*5 |
  \lo r8 \sh b^\mp-- r4 r2 |
  R1*10 |
  r8 fis'^\mp^\< gis a b^\mf a gis fis ~ |
  fis2^\subPd eis4-. r4 |
  R1 |
  r4 ais,^\p^\< ~ << { ais2 } { s4 s4^\>} >> |
  b4-.^\p r r2 |
  r4 fis'4--^\mp^\> ~ fis^\p r4 |
  gis1^\pp ~ |
  gis4. r8 eis2 |
  r2.. g8 |
  << { bis1 } { \hairtip s2..^\> s8\! } >> |
}

sopranoWords = \lyricmode {
  itch
  while dy -- ing oh so sweet -- ly
  said
  Wiz
  one
  cause
  cause
  der
  of Oz.
}

mezzo = \relative c'' {
  \key fis \minor
  \clef treble
  R1*4 |
  r4 a4:32^\mp a4:32 r |
  \lo r8 \sh cis,-- r4 r2 |
  R1*4 |\set melismaBusyProperties = #'(beamMelismaBusy)\autoBeamOff
  r8  fis16^\p [ e ] \autoBeamOn \unset melismaBusyProperties   d8 [ c ] b r r4 |
  R1*5 |
  r8 fis'^\mp^\< eis fis gis^\mf fis dis d |
  R1*2 |
  r2 r8 << { bis8 ~ bis4 } { s8.^\p^\< s8.^\> } >> |
  cis4-.^\p r r2 |
  r4 dis^\mp--^\> ~ dis^\p r |
  fis1^\pp ~ |
  fis4. r8 dis2 |
  r2 r8 dis eis4 ~ |
  << {eis1 } { \hairtip s2..^\> s8\! } >>  |
}

mezzoWords = \lyricmode {
  Witch __ _
  itch
  
  to just a stitch
  while dy -- ing oh so sweet -- ly
  Oz
  one
  cause
  cause
  der
  of Oz.
}

alto = {
  \key fis \minor
  \clef treble
  \lod fis'4.^\mp^\swung
  \changeDown
  \sh fis,8
  \changeUp
  \lo e'8
  \changeDown
  \sh cis ~ cis4 |
  \changeUp
  \lo d'8
  \changeDown
  \sh b,8
  \changeUp
  \lo e'8
  \changeDown
  \sh gis,8
  \changeUp
  \lo cis'8
  \changeDown
  \sh a,8 ~ a,4 |
  \changeUp
  \lo d'8
  \changeDown
  \sh gis,8
  \changeUp
  \lo b'8
  \changeDown
  \sh cis8
  \changeUp
  \lo a'8
  \changeDown
  \sh bis,8 ~ \lo bis,8
  \changeUp
  \sh gis'8 |
  \changeDown
  \lo cis8
  \changeUp
  \sh fis'8
  \changeDown
  \lo d8
  \changeUp
  \sh eis'8
  \changeDown
  \lo a,8
  \changeUp
  \sh cis'8
  \changeDown
  \lo gis,8
  \changeUp
  \sh b'8 |
  \changeDown
  \lo fis,8
  \changeUp
  \sh cis'' ~
  cis''4:32
  cis'':32
  r |
  \changeDown
  \lo d
  \changeUp
  \sh eis'--
  \changeDown
  r4
  cis8^\straight [
  \changeUp
  b'8 ]
  \changeDown
  fis8 [
  \changeUp
  g'8 ] |
  \changeDown
  b,8 [
  \changeUp
  ais'8 ]
  \changeDown
  e8 [
  \changeUp
  f'8 ]
  \changeDown
  a,8 [
  \changeUp
  ees'8 ]
  \changeDown
  g8 [
  \changeUp
  a'8 ] |
  \changeDown
  d8 [
  \changeUp
  cis''8 ]
  \changeDown
  r8 gis^\pp^\<
  \changeUp
  bes8 [
  \changeDown
  g ]
  \changeUp
  b [
  \changeDown
  fis ]
  \changeUp
  c' [
  \changeDown
  f ]
  \changeUp
  cis' [
  \changeDown
  e ]
  \changeUp
  d'^\mf [
  \changeDown
  ees^\subPd ~ ] ees4 |
  \changeUp
  a'8^\mf [
  \changeDown
  c8 ]
  \changeUp
  ees'4
  \changeDown
  d8 [
  \changeUp
  b' ]
  \changeDown
  fis4
  \changeUp
  g'4 r4 r2 |
  \changeDown g,8^\p^\< [ \changeUp f' ]
  \changeDown c [ \changeUp e' ]
  \changeDown a, [ \changeUp dis' ]
  \changeDown fis [ \changeUp d' ]
  \changeDown eis,^\mf  [ \changeUp cis' ]
  \changeDown e [ \changeUp bis ]
  \changeDown dis4^\> \changeUp fisis' |
  \changeDown gis,4.^\p \changeUp fis'8
  \changeDown cis8^\pp \changeUp d' ~ d'4
  r8 \changeDown a,4^\< \changeUp cis'4 \changeDown ais,4 \changeUp fis'8^\mf |
  r8 \changeDown a8 \changeUp gis'8 [ \changeDown b ] r8 \changeUp e' \changeDown g [ \changeUp dis' ] |
  \changeDown r8 a^\< \changeUp d' \changeDown g \changeUp eis'^\f \changeDown ais \changeUp eis'8 \changeDown dis |
  \changeUp r8 a'4^\mp \changeDown bis,8^\p \changeUp r8 cis'8--^\mp ~ cis'4 |
  \changeDown gis,8 \changeUp eis'4 \changeDown cis8 \changeUp d'8 \changeDown g4 \clef alto fis8^\< |
  gis'4 ~ \times 2/3 { gis'8^\mf fis' ais } eis'4.^\> dis'8 |
  e'4.^\p fis8^\mp gis4 dis' |
  cis'2^\> ( b4^\p ) r |
  gis4^\pp ais b cis' |
  gis4. r8 ais2 |
  r4. ais8 cis'2 ~ |
  << {cis'1 } { \hairtip s2..^\> s8\! } >>  |
}

altoWords = \lyricmode {
  Real -- ly was no mi -- ra -- cle what hap -- pened
  Was just this, so sud -- den
  The wind be -- gan to switch the house to pitch
  Witch __ _
  An itch
  Kit -- chen took a slitch It lan -- ded on the Wick -- ed Witch
  Oh,
  Was not a heal -- thy si -- tu -- a -- tion for the
  %{Wic -- ked%} Witch re -- duced to just a stitch
  %Thank you ve -- ry sweet -- ly for you killed her so com -- plete -- ly
  Mid -- dle of a ditch just then went fly -- ing on her broom -- stick
  Let the joy -- ous
  news be spread, oh
  you've killed her, so neat -- ly
  while dy -- ing oh so sweet -- ly
  this she.
  If ev -- er oh ev -- er the Wi -- zard of Oz is one be -- cause be -- cause
  cause of all the won -- der
  of Oz.
}

tenor = \relative c' {
  \key fis \minor
  \clef "treble_8"
  R1*5 |
  \lo r8 \sh a^\mp-- r4 r2 |
  R1 |
  r4 a4^>^\> ~ a2 ~ |
  a1^\pp |
  R1 |
  r8 c^\p b [ a ] g r r4 |
  R1*5 |
  r8 fis'^\mp^\< eis c cis^\mf d c a |
  R1 |
  r2.. fis8^\mp^\< ~ |
  << { fis1 } { s2 s2^\> } >> |
  gis4-.^\p r e2^\< |
  ais^\> ( gis4^\p ) r |
  d'1^\pp ~ |
  d4. r8 gis,2 |
  r8 cis,8 gis'4 ~ gis2 ~ |
  << { gis1 } { \hairtip s2..^\> s8\! } >>  |
}

tenorWords = \lyricmode {
  itch
  no
  to just a stitch
  while dy -- ing oh so sweet -- ly
  the
  one cause cause
  cause
  der
  of Oz.
}

bass = \relative c' {
  \key fis \minor
  \clef bass
  R1*5 |
  \lo r8 \sh gis^\mp-- r4 r2 |
  R1*4 |
  r8 g^\mf fis [ e ] d r r4 |
  R1*3 |
  fis,4 eis' e dis |
  d2 cis4.^\< c8 |
  << { b1^\> } { s2.. s8^\p } >> |
  R1*3 |
  cis4-.^\p r4 fis,2^\< |
  << { b2. } { s2^\> s4^\p } >> r4 |
  b'1^\pp ~ |
  b4. r8 cis,2 |
  fis,1 ~ |
  << { fis1 } { \hairtip s2..^\> s8\! } >>  |
}

bassWords = \lyricmode {
  itch
  to just a stitch
  news be spread oh you
  Wic -- ked Witch
  one cause cause
  cause
  der
  Oz.
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
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
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      %\consists "Metronome_mark_engraver"
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
      %\remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } \\ { \mezzo } \\ { \alto } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      } \\ \\ { \bass } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
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
      %\consists "Metronome_mark_engraver"
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
      %\remove "Metronome_mark_engraver"
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
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
