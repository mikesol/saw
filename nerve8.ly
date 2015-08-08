\version "2.19.0"
\include "defs-devel.ly"

marD = \markup \null
elsD = \markup \null
mikD = \markup \null
rynZ = \markup \null
desD = \markup \null

#(set-global-staff-size 15.87)
autoBeamInstruction = \autoBeamOn

solo = \markup \italic "solo"
psolo = \markup \italic "(solo)"
skat = \markup \italic "sit skat"
shoot = \markup \italic "SYT"

\header {
  title = "If I Only Had the Nerve"
  subtitle = "for Satchmo"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
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
  max-systems-per-page = #2
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}


#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
}

prefatoryMatter = {
  \key bes \major
  \autoBeamInstruction
  \time 4/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 8
}

midiPrefatoryMatter = {
  \prefatoryMatter
  r2 r4 r8
}

theme = \relative c {
  cis8-\tag #'first \mf |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8-\tag #'second \< \tag #'second { \rred } a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f d' d4 bes8 |
  \tag #'first { bes4 }
  \tag #'second { bes2 }
}

marks = {
  \tempo "Dixie" 4=96
}

beamComm = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

sopranoHocket = \relative c' {
    r8 ees8 d \rred bes'8 \rred bes8 r8 r4 |
    r4 r8 a8 r2 |
    r4 r8 des,8 c8 r8  r8 bes'8 |
    r8 \rred bes8 a8 r8 r8 des8 r8 c8 |
    r4 r8 a8 r \rred g8 r fis'8 |
    r4 g,8 r8 \rred f' r8 r g,8 |
    r b,8 r4 \rred bes'8 r8 a r8 |
    \rred g' r8 r gis,8 a \rred bes8 c cis8 |
    d bes8 g f8 d' d4 bes8 ~ |
    bes4
  }

sopranoSmooth = \relative c' {
}

soprano = {
  \transpose c c' \removeWithTag #'second \theme
  r4 r4.
  \transpose c c' \removeWithTag #'first \theme
  \relative c' {
    \times 2/3 { r8 bes c } \times 2/3 { d f g } |
    bes\f bes4 bes8 g8 bes4 r8 |
    bes8 ( c16 bes ) g8 bes8 ~ bes4. gis8 |
    a8 c8 a \rred f g4 a8 f8 ~ |
    f e8 ees d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
    c8 c4 c8 \rred a8 c4 r8 |
    c8 ( d16 c ) a8 c8 ~ c4. ais8 |
    b\> d8 b bes8 a c8 a aes8 |
    g b8 g ges8 f a8 f d8 |
    ees\mf g8 ees c8 a ges'4 r8 |o
  }
  \sopranoSmooth
  %\sopranoHocket
}

sopranoWords = \lyricmode {
  \repeat unfold 36 da
  Yeh, it's sad, be
  da
  da da da when you're da da da
  da
  da to be da da da da
  da da
  dan a da da sis -- sy da da
  da With da da da da out the
  vim and verve da But da I
  da da da da da
  could da da da da
  change da da da
  da da da my da ha -- bits
  da Ne -- ver da da da da da
  more be da scared of
  da da da da
  ra da da da da da da da
  da da da da da da da da
  da bits da da da da  
  I on -- ly had
  a
  da no de
  ing da a dy
  da on a
  da don't de
  da But could
  show ess be a li -- on
}

globalGC = {
  \repeat unfold 3 { s4.\< s8\! }
  \tag #'hiGC { s4.\< s8\! s1\< }
  \tag #'loGC { s2\< s1 }
  s1
  s1\f
}

mezzoSmooth = \relative c' {
}

mezzoHocket = \relative c'' {
  r4 r8 cis8 d8 r8 r8 c8 |
  \rred bes8 ees,8 \rred d8 \rred ees8 r2 |
  r8 c'8 bes8 r8 r8 e,8 r4 |
  r8 fis8 g8 r8 r8 \rred bes8 r8 ges8 |
  g8 r8 r8 ees8 r8 d8 r8 cis'8 |
  r8 g,8 r4 c'8 r8 r8 d,8 |
  ees8 e8 f8 r8 g8 ees8 \rred g8 r8 |
  a8 \rred f8 g8 \rred d8 fis8 g8 \rred a8 fis8 |
  \rred a8
}

mezzo = \relative c' {
  r8 |
  R1*6 |
  r4 \Red d8\mf ees8 f d8 ~ \Black d4 |
  r4 \Red bes8 c8 d bes8 \Black r4 |
  bes'8\mp bes8 \Red bes c8 \Black bes bes4 bes8 ~ |
  bes8 r r4 r2 |
  bes8 \rred bes8 bes bes8 bes bes4 bes8 ~ |
  bes8 r r4 r2 |
  << { bes8 bes4 r8 \rred bes8 bes4 r8 |
       bes8 \rred bes4 r8 bes8 bes4 r8 |
       bes8 bes8 bes bes \rred bes bes4 \rred a8 ~ |
       a4. aes8 ~ aes2 |
       \rred g8 g8 ~ g4 ~ g4. r8 |
     } \removeWithTag #'loGC \globalGC >>
  \rred g4. g8 ~ g4. e8 |
  f8 a8 f d8 f e8 \Red ees d8 ~ |
  \Black d8 des8 \Red c bes8 ~ \Black \times 2/3 { bes bes c } \times 2/3 { d f g } |
  \Red a8 a8 ~ \Black a4 \rred a8 a4 r8 |
  a4. a8 ~ a4. fis8 |
  g8 r8 r4 r2 |
  f8\mf r8 r4 r2 |
  c8 \rred ees8 c g8 a4. r8 |
  \mezzoSmooth
  %\mezzoHocket
}

mezzoWords = \lyricmode {
 Yeh, it's sad, be
  lieve me Mis -- sy
  da da when you're da da da
  da to be da da da da
  dan a
  sis -- sy
  da With
  da da
  vim and verve da But da I da
  could da
  change da da 
  da da da my da da ha -- bits
  da Ne -- ver da da da da da
  more be scared of
  da da da
  ra
  da
  da bits da da da
  ly had da
  nerve da I'm a
  there's da da
  ing da a dy
  da da on a
  I don't de
  da da serve But I could
  show my prow -- ess be a li -- on
}

altoSmooth = \relative c' {
}

altoHocket = \relative c' {
  r8 \rred c'8 \rred bes r8 r \rred bes8 a r8 |
  r4 bes8 r8 cis d8 r dis8 |
  r8 \rred d8 e8 a,8 \rred bes r8 r \rred c8 |
  \rred d r8 des \rred c8 r g'8 r ees8 |
  f ces8 \rred bes r8 r aes8 r g'8 |
  \rred f r8 des r8 bes' r r8 b,8 |
  r8 c8 r4 r8 c8 cis r8 |
  ees8 d8 \rred ees b8 \rred c cis8 d ees8 |
  fis
}

alto = \relative c'' {
  r8 |
  R1*8 |
  g8\mp g8 g g8 ges ges4 f8 ~ |
  f8 r r4 \rred d4-- r |
  g8 g8 \rred g g8 fis fis4 g8 ~ |
  g8 r8 r4 r2 |
  << { g8 g4 r8 g8 \rred g4 r8 |
       g8 g4 r8 g8 g4 r8 |
       g8 g8 g g8 ges ges4 f8 ~ |
       f1 |
       ees8 ees8 ~ ees4 ~ ees4. r8 |
     } \removeWithTag #'loGC \globalGC >>
  e4. e8 ~ e4. r8 |
  ees4. r8 c4. r8 |
  bes2 g |
  g'8 g8 ~ g4 g8 \rred g4 r8 |
  fis4. fis8 ~ fis4. r8 |
  \rred f8 r8 r4 r2 |
  d8\mf r8 r4 r2 |
  bes2 f4. r8 |
  \altoSmooth
  %\altoHocket
}

altoWords = \lyricmode {
  da da when you're da da da
  born
  da to be da da da da
  dan a
  sis -- sy
  da With
  da da
  vim and verve da But da I
  could da
  da da
  da da
  da da
  more be scared of
  da da
  ra
  da
  da da
  I on
  the da
  I'm da da da
  there's da da no de -- ny
  da I'm a dy
  da da li on a
  fate da don't de
  da da could
  show my prow -- ess be a li -- on
}

tenorSmooth = \relative c' {
}

tenorHocket = \relative c {
    \rred d8 r8 r4 r8 gis8 a r8 |
    r4 fis8 r8 r2 |
    r4 r8 fis8 g8 r8 r4 |
    a8 r8 r4 r8 e'8 \rred g,8 \rred a8 |
    d8 a8 g8 r8 r4 b8 \rred bes8 |
    ees8 r8 r4 ges8 d8 des8 r8 |
    a8 aes8 r8 a8 r8 \rred a8 r8 aes8 |
    c8 r8 cis8 fis,8 g8 ces8 gis8 \rred a8 |
    bes8
}

tenor = {
  \clef bass
  \removeWithTag #'second \theme
  r4 r2
  \relative c' {
    \clef "treble_8"
    ees8\mp ees8 ees ees8 ees ees4 d8 ~ |
    d8 r r4 r2 |
    ees8 ees8 ees ees8 d d4 d8 ~ |
    d8 r8 r4 r2 |
    << { bes8 bes4 r8 c8 c4 r8 |
         d8 d4 r8 ees8 ees8 \Red f f8 |
         f8 f8 f \Black f8 ees ees4 d8 ~ |
         d1 |
         c8 c8 ~ c4 ~ c4. r8 |
       } \removeWithTag #'hiGC \globalGC >>
    c4. c8 ~ c4. r8 |
    c4. gis8 a8 c8 a f8 |
    g8 a4 f8 f8 e8 ees d8 |
    ees' ees8 ~ ees4 ees8 ees4 r8 |
    d4. d8 ~ d4. r8 |
    d8 r8 r4 r2 |
    b8\mf r8 r4 r2 |
    g2 ees2 |
  }
  \tenorSmooth
  %\tenorHocket
}

tenorWords = \lyricmode {
  \repeat unfold 36 da
  Yeh, it's sad, be
  da
  da da when you're da da da
  da to be da da da da
  dan a
  sis -- sy
  da With da da out the
  vim and verve da But da I
  could da
  da da
  da my da da ha -- bits
  da da ver da da da
  more be scared of
  da da
  ra
  da
  da da
  If
  the da
  I'm
  da no
  ny a dan -- dy
  da da li da a
  fate don't da da
  da da da I da
  show my prow -- ess be a li -- on
}

bassSmooth = \relative c {
  d8 d fis,4 g gis |
  a8 d d aes g d' d, eis |
  fis d' fis,4 g gis |
  a8 d4 b8 a g fis e |
  fis8 d' fis,4 g gis |
  a8 c4 bes8 a g fis e |
  fis d' fis,4 g gis |
  a8 a fis b a g fis e |
}

bassHocket = \relative c {
  \rred d8 r8 r4 r2 |
  g,8 r8 r4 r4 \rred f8 r8 |
  e8 r8 r4 r4 c'8 r8 |
  f8 r8 r4 \rred d8 r8 a8 r8 |
  r8 ges'8 f8 r8 fis,8 r8 cis'8 r8 |
  r8 \rred f8 r8 a,8 r4 r8 \rred f'8 |
  r4 r8 fis8 r4 r8 ees8 |
  d8 aes'8 a,8 ais8 dis8 e8 fis,8 d'8 |
  g,8
}

bass = \relative c {
  \clef "bass"
  r8 |
  R1*7 |
  r4 \Red bes8\mf c8 d bes8 \Black r4 |
  c4 r f, r |
  bes8 bes8 a4 g ges |
  f r bes r |
  ees8 ees8 d4 c cis |
  d4 des c b |
  bes a aes g |
  c r f, r |
  bes1\< |
  ees8\f ees8 ~ ees4 ~ ees4. r8 |
  e4. e,8 ~ e e'4 ges8 |
  f4 f, g a |
  bes c d bes |
  a2 ~ a8 ees'8 ~ ees4 |
  d2 ~ d8 a4 aes8 |
  g8 r8 r4 r2 |
  g'8\mf r8 r4 r2 |
  c,2 f,4 c'8 cis8 |
  \bassSmooth
  %\bassHocket
}

bassWords = \lyricmode {
  lieve me Mis -- sy
  da da
  da da da born da
  da
  da
  da da da da da
  dan da born da
  da da da da
  da da
  da
  could da
  da da da da
  da da da ha
  da Ne da da
  more of
  da da da
  ra
  da da da da da
  If
  nerve fraid
  da da
  ny just dan
  da li da da
  I da de
  da da
  show my prow -- ess be a li -- on
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
%{
%}
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
      \beamComm
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
   \repeat unfold 140 \unfoldSwing #96

      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
