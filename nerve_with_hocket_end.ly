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
  \time 12/8
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 8
}

midiPrefatoryMatter = {
  \prefatoryMatter
  \partial 8
}

theme = \relative c {
  cis8-\tag #'first \mf |
  d4 bes8 g4 f8 d'4 d8 ~ d4 bes8 ~ |
  bes2. ~ bes4. r4 fis'8 |
  g4 ees8 c4 aes8 g'4 g8 ~ g4 ees8 ~ |
  ees2. r4. ees4 e8 |
  f4-\tag #'second \< \tag #'second { \rred } a8 f4 e8 ees4 g8 ees4 cis8 |
  d4 f8 d4 des8 c4 ees8 c4 cis8 |
  d4 bes8 g4 f8 d'4 d8 ~ d4 bes8 ~ |
  \tag #'first { bes4. }
  \tag #'second { bes2. }
}

marks = {
  \tempo "Dixie" 4.=96
}

soprano = {
  \transpose c c' \removeWithTag #'second \theme
  r4. r4. r4
  \transpose c c' \removeWithTag #'first \theme
  \relative c' {
    r8 bes c d f g |
    bes4\f bes8 ~ bes4 bes8 g4 bes8 ~ bes4 r8 |
    bes4 ( c16 bes ) g4 bes8 ~ bes4. ~ bes4 gis8 |
    a4 c8 a4 \rred f8 g4. a4 f8 ~ |
    f4 e8 ees4 d8 ~ d d e fis a b |
    c4 c8 ~ c4 c8 \rred a4 c8 ~ c4 r8 |
    c4 ( d16 c ) a4 c8 ~ c4. ~ c4 ais8 |
    b4\> d8 b4 bes8 a4 c8 a4 aes8 |
    g4 b8 g4 ges8 f4 a8 f4 e8 |
    ees4\mf g8 ees4 c8 a4 ges'8 ~ ges4 r8 |
    r4 ees8 d4 \rred bes'8 \rred bes4 r8 r4. |
    r4. r4 a8 r2. |
    r4. r4 des,8 c4 r8  r4 bes'8 |
    r4 \rred bes8 a4 r8 r4 des8 r4 c8 | 
    r4. r4 a8 r4 \rred g8 r4 fis'8 |
    r4. g,4 r8 \rred f'4 r8 r4 g,8 |
    r4 b,8 r4. \rred bes'4 r8 a4 r8 |
    \rred g'4 r8 r4 gis,8 a4 \rred bes8 c4 cis8 |
    d4 bes8 g4 f8 d'4 d8 ~ d4 bes8 ~ |
    bes4
  }
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
  \repeat unfold 3 { s2\< s4\! }
  \tag #'hiGC { s2\< s4\! s1.\< }
  \tag #'loGC { s2.\< s1. }
  s1.
  s1.\f
}

mezzo = \relative c' {
  r8 |
  R1.*6 |
  r4. \Red d4\mf ees8 f4 d8 ~ \Black d4. |
  r4. \Red bes4 c8 d4 bes8 \Black r4. |
  bes'4\mp bes8 \Red bes4 c8 \Black bes4 bes8 ~ bes4 bes8 ~ |
  bes8 r4 r4. r2. |
  bes4 \rred bes8 bes4 bes8 bes4 bes8 ~ bes4 bes8 ~ |
  bes8 r4 r4. r2. |
  << { bes4 bes4 r \rred bes4 bes4 r |
       bes4 \rred bes4 r bes4 bes4 r |
       bes4 bes8 bes4 bes8 \rred bes4 bes8 ~ bes4 \rred a8 ~ |
       a4. ~ a4 aes8 ~ aes2. |
       \rred g4 g8 ~ g4. ~ g4. ~ g4 r8 |
     } \removeWithTag #'loGC \globalGC >>
  \rred g4. ~ g4 g8 ~ g4. ~ g4 e8 |
  f4 a8 f4 d8 f4 e8 \Red ees4 d8 ~ |
  \Black d4 des8 \Red c4 bes8 ~ \Black bes bes c d f g |
  \Red a4 a8 ~ \Black a4. \rred a4 a8 ~ a4 r8 |
  a4. ~ a4 a8 ~ a4. ~ a4 fis8 |
  g4 r8 r4. r2. |
  f4\mf r8 r4. r2. |
  c4 \rred ees8 c4 g8 a4. ~ a4 r8 |
  r4. r4 cis'8 d4 r8 r4 c8 |
  \rred bes4 ees,8 \rred d4 \rred ees8 r2. |
  r4 c'8 bes4 r8 r4 e,8 r4. |
  r4 fis8 g4 r8 r4 \rred bes8 r4 ges8 |
  g4 r8 r4 ees8 r4 d8 r4 cis'8 |
  r4 g,8 r4. c'4 r8 r4 d,8 |
  ees4 e8 f4 r8 g4 ees8 \rred g4 r8 |
  a4 \rred f8 g4 \rred d8 fis4 g8 \rred a4 fis8 |
  \rred a4
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


alto = \relative c'' {
  r8 |
  R1.*8 |
  g4\mp g8 g4 g8 ges4 ges8 ~ ges4 f8 ~ |
  f8 r4 r4. \rred d4.-- r |
  g4 g8 \rred g4 g8 fis4 fis8 ~ fis4 g8 ~ |
  g8 r4 r4. r2. |
  << { g4 g4 r g4 \rred g4 r |
       g4 g4 r g4 g4 r |
       g4 g8 g4 g8 ges4 ges8 ~ ges4 f8 ~ |
       f1. |
       ees4 ees8 ~ ees4. ~ ees4. ~ ees4 r8 |
     } \removeWithTag #'loGC \globalGC >>
  e4. ~ e4 e8 ~ e4. ~ e4 r8 |
  ees4. ~ ees4 r8 c4. ~ c4 r8 |
  bes2. ~ bes4. g |
  g'4 g8 ~ g4. g4 \rred g8 ~ g4 r8 |
  fis4. ~ fis4 fis8 ~ fis4. ~ fis4 r8 |
  \rred f4 r8 r4. r2. |
  d4\mf r8 r4. r2. |
  bes2. f4. ~ f4 r8 |
  r4 \rred c'8 \rred bes4 r8 r4 \rred bes8 a4 r8 |
  r4. bes4 r8 cis4 d8 r4 dis8 |
  r4 \rred d8 e4 a,8 \rred bes4 r8 r4 \rred c8 |
  \rred d4 r8 des4 \rred c8 r4 g'8 r4 ees8 |
  f4 ces8 \rred bes4 r8 r4 aes8 r4 g'8 |
  \rred f4 r8 des4 r8 bes'4 r4 r8 b,8 |
  r4 c8 r4. r4 c8 cis4 r8 |
  ees4 d8 \rred ees4 b8 \rred c4 cis8 d4 ees8 |
  fis4
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

tenor = {
  \clef bass
  \removeWithTag #'second \theme
  r4. r2.
  \relative c' {
    \clef "treble_8"
    ees4\mp ees8 ees4 ees8 ees4 ees8 ~ ees4 d8 ~ |
    d8 r4 r4. r2. |
    ees4 ees8 ees4 ees8 d4 d8 ~ d4 d8 ~ |
    d8 r4 r4. r2. |
    << { bes4 bes r c c r |
         d d r ees ees8 \Red f4 f8 |
         f4 f8 f4 \Black f8 ees4 ees8 ~ ees4 d8 ~ |
         d1. |
         c4 c8 ~ c4. ~ c4. ~ c4 r8 |
       } \removeWithTag #'hiGC \globalGC >>
    c4. ~ c4 c8 ~ c4. ~ c4 r8 |
    c4. ~ c4 gis8 a4 c8 a4 f8 |
    g4 a8 ~ a4 f8 ~ f4 e8 ees4 d8 |
    ees'4 ees8 ~ ees4. ees4 ees8 ~ ees4 r8 |
    d4. ~ d4 d8 ~ d4. ~ d4 r8 |
    d4 r8 r4. r2. |
    b4\mf r8 r4. r2. |
    g2. ees2. |
    \rred d4 r8 r4. r4 gis8 a4 r8 |
    r4. fis4 r8 r2. |
    r4. r4 fis8 g4 r8 r4. |
    a4 r8 r4. r4 e'8 \rred g,4 \rred a8 |
    d4 a8 g4 r8 r4. b4 \rred bes8 |
    ees4 r8 r4. ges4 d8 des4 r8 |
    a4 aes8 r4 a8 r4 \rred a8 r4 aes8 |
    c4 r8 cis4 fis,8 g4 ces8 gis4 \rred a8 |
    bes4
  }
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

bass = \relative c {
  \clef "bass"
  r8 |
  R1.*7 |
  r4. \Red bes4\mf c8 d4 bes8 \Black r4. |
  c4. r f, r |
  bes4 bes8 a4. g ges |
  f r bes r |
  ees4 ees8 d4. c cis |
  d4. des c b |
  bes a aes g |
  c r f, r |
  bes1.\< |
  ees4\f ees8 ~ ees4. ~ ees4. ~ ees4 r8 |
  e4. ~ e4 e,8 ~ e4 e'8 ~ e4 ges8 |
  f4. f, g a |
  bes c d bes |
  a2. ~ a4 ees'8 ~ ees4. |
  d2. ~ d4 a8 ~ a4 aes8 |
  g4 r8 r4. r2. |
  g'4\mf r8 r4. r2. |
  c,2. f,4. c'4 cis8 |
  \rred d4 r8 r4. r2. |
  g,4 r8 r4. r4. \rred f4 r8 |
  e4 r8 r4. r4. c'4 r8 |
  f4 r8 r4. \rred d4 r8 a4 r8 |
  r4 ges'8 f4 r8 fis,4 r8 cis'4 r8 |
  r4 \rred f8 r4 a,8 r4. r4 \rred f'8 |
  r4. r4 fis8 r4. r4 ees8 |
  d4 aes'8 a,4 ais8 dis4 e8 fis,4 d'8 |
  g,4 
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
