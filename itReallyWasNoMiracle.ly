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
  \tempo "Slow"
  \numericTimeSignature
  s1 |
}

swung = \markup \italic "swung"
straight = \markup \italic "straight"

soprano = \relative c' {
  \key fis \minor
  \clef treble
  R1*5 |
  \lo r8 \sh b r4 r2 |
  R1*5 |
}

sopranoWords = \lyricmode {
  ditch
}

mezzo = \relative c'' {
  \key fis \minor
  \clef treble
  R1*4 |
  r4 a4:32 a4:32 r |
  \lo r8 \sh cis, r4 r2 |
  R1*4 |
  r8 e d [ c ] b r r4 |
}

mezzoWords = \lyricmode {
  Witch __ _
  ditch
  the Wic -- ked Witch
}

alto = {
  \key fis \minor
  \clef treble
  \lod fis'4.^\swung
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
  \sh eis'
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
  r8 gis
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
  d' [
  \changeDown
  ees, ~ ] ees4 |
  \changeUp
  a'4
  \changeDown
  c
  \changeUp
  b'
  \changeDown
  d |
  \changeUp
  g'4 r4
  \changeUp
  r g' |
  \changeDown ees8 [ \changeUp bes' ]
  \changeDown f [ \changeUp a' ]
  \changeDown bes, [ \changeUp a' ]
  \changeDown aes [ \changeUp fis' ]
  \changeDown ees  [ \changeUp g' ]
  \changeDown e [ \changeUp bes' ]
  \changeDown f [ \changeUp a' ]
  \changeDown b, [ \changeUp c'' ]
  \changeDown e [ \changeUp fis' ]
  \changeDown b [ \changeUp e' ]
  %\changeDown f [ \changeUp g' ]
  %\changeDown a [ \changeUp ees' ]
  \changeDown f4 \changeUp ees'
  \changeDown e8 [ \changeUp d' ]
  \changeDown dis [ \changeUp a' ]
  \changeDown d [ \changeUp g'8 ~ ] g'4 |
  \changeDown cis8 [ \changeUp g'8 ~ ] g'4
  \changeDown fis8 [ \changeUp e'8 ~ ] e'4 |
  \changeDown r8 c8 \changeUp r cis' \changeDown r d \changeUp r dis' |
}

altoWords = \lyricmode {
  Real
  ○
  ly
  ○
  hap
  ○
  pened
  ○
  this
  ○
  mi
  ○
  ra
  ○
  cle
  ○
  switch
  ○
  pitch
  ○
  hitch
  ○
  itch
  ○
  slitch
  ○
  Witch __ _
  ○
  ditch
  ○
  wind
  ○
  house
  ○
  start
  ○
  then
  ○
  fly
  ○
  her
  ○
  broom
  Was not a heal -- thy si -- tua -- tion for the Wic -- ked
  ○
  Witch.
  ○
  No,
  ○
}

tenor = \relative c' {
  \key fis \minor
  \clef "treble_8"
  R1*5 |
  \lo r8 \sh a r4 r2 |
  R1 |
  r4 a4 ~ a2 ~ |
  a1 |
  R1 |
  r8 c b [ a ] g r r4 |
}

tenorWords = \lyricmode {
  ditch
  no...
  the Wic -- ked Witch
}

bass = \relative c' {
  \key fis \minor
  \clef bass
  R1*5 |
  \lo r8 \sh gis r4 r2 |
  R1*4 |
  r8 g fis [ e ] d r r4 |
  R1*5 |
  b4 bes a gis |
  g1 |
}

bassWords = \lyricmode {
  ditch
  the Wic -- ked Witch
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