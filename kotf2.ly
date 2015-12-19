#(set-global-staff-size 15.87)

\version "2.17.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
accel = \mark \markup \italic "accel."
moltorall = \mark \markup \italic "molto rall."

#(define (simplify-pitch p)
   (let ((note-name (ly:pitch-octave p))
         (base (ly:pitch-notename p))
         (octave (ly:pitch-octave p))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (alt (* 1 (ly:pitch-alteration p))))
    (cond 
          ((and (= base 6) (= alt 1/2)) (ly:make-pitch (+ octave 1) 0 0))
          ((and (= base 0) (= alt 1)) (ly:make-pitch octave 1 0))
          ((and (= base 1) (= alt 1/2)) (ly:make-pitch octave 2 -1/2))
          ((and (= base 2) (= alt 1/2)) (ly:make-pitch octave 3 0))
          ((and (= base 3) (= alt 1)) (ly:make-pitch octave 4 0))
          ((and (= base 4) (= alt -1/2)) (ly:make-pitch octave 3 1/2))
          ((and (= base 4) (= alt 1/2)) (ly:make-pitch octave 5 -1/2))
          ((and (= base 4) (= alt 1)) (ly:make-pitch octave 5 0))
          ((and (= base 5) (= alt 1/2)) (ly:make-pitch octave 6 -1/2))
          ((and (= base 6) (= alt -1)) (ly:make-pitch octave 5 0))
          (else p))))

#(define (simplify music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (simplify x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (simplify e)))
     (if (ly:pitch? p)
         (begin
           (set! p (simplify-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))
%{
simplifyPitch =
#(define-music-function (parser location m)
   (ly:music?)
   (simplify m))
%}
simplifyPitch =
#(define-music-function (parser location m)
   (ly:music?)
   m)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
  %%%%%%%% !
  %%%%%%%% !
  %%%%%%%% !
  %%%%%%%% !
  page-count = #4
}

%indy = #(make-music 'LaissezVibrerEvent)
indy = #(make-articulation "downbow")

\header {
  title = "If I Were King of the Forest"
  subtitle = "for Claude Debussy, Olivier Messiaen and Thelonius Monk"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

hairlenSmall = {
  \hairlen #4
}

hairlenMed = {
  \hairlen #8
}

prefatoryMatter = {
  \autoBeamOff
}

\defineBarLine "!!" #'("!!" "" "")

mblue = { }
Mred = { }
mred = { }


\defineBarLine "!!" #'("!!" "" "")
marksKOTF = {
  \partial 4
  \tempo "hors temps"
  s4
  \repeat unfold 8 { s1*3 s2.
    \bar "!!"
  s4 }
  s1*6 |
  s2. \bar "||"
}

sopranoKOTF = {
  \key fis \major
  {  } { { \once \override Hairpin.minimum-length = #8
      \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
      } } fisis'4^\fp^\< |
  \set melismaBusyProperties = #'()
  gis'16^\>[( gis' gis' gis' gis' gis' gis' gis')] r8\! << {
       \unset melismaBusyProperties
       gisis' ~ gisis'4 |
       ais' \revert NoteHead.color
       {  } fis''-- a'' {  } cis'' |
       {  } eis'' e'' {  } gis'' {  } ais' |
       bis' {  } dis''^\fermata r 
  \key a \major
      
     } {
       { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s8.^\< { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s^\> s4^\mp s2.^\p^\> s1 s2^\pp
     } >> g'4^\p^\< |
  a'^\mf r ais'2 |
  b'1 ~ |
  b'^\> ~ |
  b'2^\p^\fermata r4 
  \key cis \major
  fisis'^\< |
  ais'2^\fp b'^\< |
  bis'1\!^\mf ~ |
  bis'^\> ~ |
  bis'2^\p r4 
  \key f \major
  g'^\mf^\> |
  b'^\p r c''2^\< |
  cis''1 ~ |
  cis'' ~ |
  cis''2^\f r4 
  \key e \major
  g'^\> |
  c''2^\mf cis'' |
  d''4 fis'' a'' cis'' |
  f'' e''-- gis'' ais' |
  c'' dis''^\fermata r 
  \key aes \major
  g'^\> |
  des''2^\p^\< d''^\mf^\> |
  ees''1^\p ~ |
  ees'' ~ |
  ees''2^\fermata r4 
  \key bes \major
  g' |
  d''2^\< ees'' |
  e''1 ~ |
  e''4 fis''^\f a'' cis'' |
  f''2^\fermata r4 
  \key c \major
  g' |
  ees''2^\> e''^\< |
  f''1^\f ~ |
  f'' ~ |
  f''2^\fermata r4 
  \key ees \major
  g' |
  e''^\ff fis'' a'' cis'' |
  f'' e'' aes'' bes' |
  ges''1 ~ |
  ges'' ~ |
  ges'' ~ |
  ges'' ~ |
  ges''2.^\fermata
}


sopranoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  the chip -- munks gen -- uf -- lect to me. Though…
  I'd click my heel
  The spar -- row's wing
  His wife Queen May
  My re -- gal robes
  the chip -- munks gen -- uf -- lect to me. Though…
  The trees would kneel
  The moun -- tains bow
  the chip -- munks gen
  The bulls kow tow
  If I
  the chip -- munks gen -- uf -- lect to king.
}

mezzoKOTF = {
  \key fis \major
  {  } { { \once \override Hairpin.minimum-length = #8
      \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
      } } cisis'4^\fp^\< |
  \set melismaBusyProperties = #'()
  dis'16^\>[( dis' dis' dis' dis' dis' dis' dis')] r8\! \unset melismaBusyProperties
  << {
       eis' ~ eis'4 |
       eis'1 ~ |
       eis' ~ |
       eis'2^\fermata
     } {
       { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s8.^\< { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s^\> s1^\mp s^\> s4^\p
     } >> r 
  \key a \major
  d'^\p^\< |
  f'^\mf r fis'2 |
  g'1 ~ |
  g'^\> ~ |
  g'2^\fermata^\p r4 
  \key cis \major
  cisis'^\< |
  fisis'2^\fp fis'^\< |
  gis'1^\mf ~ |
  gis'^\> ~ |
  gis'2^\p^\fermata r4 
  \key f \major
  d'^\mf^\> |
  ges'^\p r g'2 |
  g'4 fis''^\< a'' cis'' |
  f''-- e'' aes'' bes' |
  c'' ees''^\fermata^\f r 
  \key e \major
  d'^\> |
  a'2^\mf ais' |
  a'1 ~ |
  a' ~ |
  a'2^\fermata r4 
  \key aes \major
  d'^\> |
  aes'2^\p^\< beses'^\mf^\> |
  bes'4^\p fis'^\< a' cis' |
  f'^\> e' aes'-- bes |
  c'^\p ees'^\fermata r 
  \key bes \major
  d' |
  bes'2^\< a' |
  a'1 ~ |
  a' ~ |
  a'2^\f r4 
  \key c \major
  d' |
  bes'2^\> b'^\< |
  d''4^\f fis'' a'' cis'' |
  f'' e'' gis'' bes' |
  c''-- ees''^\fermata r 
  \key ees \major
  d' |
  cis''1^\ff |
  c'' |
  c''4 ees''-- ~( ees''2 |
  d'' des''4) fis'' |
  a'' cis'' f'' e'' |
  aes'' bes' c'' ees'' ~ |
  ees''2.^\fermata
}
mezzoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
  The spar -- row's wing
  His wife Queen May
  the chip -- munks gen -- uf -- lect to me. Though…
  My re -- gal robes
  The trees would kneel
  the chip -- munks gen -- uf -- lect to me. Though…
  The moun -- tains bow
  The bulls kow tow
  the chip -- munks gen -- uf -- lect to me. Though…
  If I were me though
  the chip -- munks gen -- uf -- lect to me. Though…
}

altoKOTF = {
  \key fis \major
  { { \once \override Hairpin.minimum-length = #8
      \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
      } } bis4^\fp^\< |
  \set melismaBusyProperties = #'()
  {  } cis'16^\>[( cis' cis' cis' cis' cis' cis' cis')] r8\! << {
       \unset melismaBusyProperties
       dis' ~ dis'4 |
       dis'1 ~ |
       dis' ~ |
       dis'2^\fermata
     } {
       { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s8.^\< { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s^\> s1^\mp s^\> s4^\p
     } >> r 
  \key a \major
  c'^\p^\< |
  cis'^\mf r d'2 |
  e'4 fis' a'-- cis' |
  f'^\> e' gis' bes |
  c'^\p ees'^\fermata r 
  \key cis \major
  bis^\< |
  dis'2^\fp bis^\< |
  dis'1^\mf ~ |
  dis'^\> ~ |
  dis'2^\p^\fermata r4 
  \key f \major
  c'^\mf^\> |
  ees'^\p r e'2^\< |
  ees'1 ~ |
  ees' ~ |
  ees'2^\f r4 
  \key e \major
  c'^\> |
  fis'2^\mf fisis' |
  fis'2.^\> fis'4^\< |
  a' cis' f'^\mf e' ~ |
  e'2^\fermata r4 
  \key aes \major
  c'^\> |
  d'2^\p^\< ges'^\mf^\> |
  g'1^\p ~ |
  g' ~ |
  g'2^\fermata r4 
  \key bes \major
  c' |
  ges'2^\< g' |
  f'4 fis' a' cis' |
  f'^\f e' gis' bes-- |
  c' ees'^\fermata r 
  \key c \major
  c' |
  g'2^> a'^\< |
  bes'1^\f ~ |
  bes'4 fis' a' cis' |
  f' e'^\fermata r 
  \key ees \major
  c' |
  b'1^\ff |
  a' |
  bes' ~ |
  bes'4 fis' a' cis' |
  f' e' aes' bes |
  c' ees' ~  ees' fis' |
  a'4 cis' f'^\fermata
}

altoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
  the chip -- munks gen -- uf -- lect to me. Though…
  The spar -- row's wing
  His wife Queen May
  My re -- gal robes
  the chip -- munks gen -- u
  The trees would kneel
  The moun -- tains bow
  the chip -- munks gen -- uf -- lect to me. Though…
  The bulls kow tow
  the chip -- munks gen -- u
  If I were king
  the chip -- munks gen -- uf -- lect to me. Though…
  The chip -- munks gen
}

tenorKOTF = {
  \clef "treble_8"
  \key fis \major
  { { \once \override Hairpin.minimum-length = #8
      \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
      } } gis4^\fp^\< |
  \set melismaBusyProperties = #'()
  {  } a16^\>[( a a a a a a a)] r8\! << {
       \unset melismaBusyProperties
       b ~ b4 |
       cis'1 ~ |
       cis' ~ |
       cis'2^\fermata
     } {
       { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s8.^\< { { \once \override Hairpin.minimum-length = #4
           \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
           } } s^\> s1^\mp s^\> s4^\p
     } >> r 
  \key a \major
  aes^\p^\< |
  gis^\mf r gis2 |
  cis'1 ~ |
  cis'^\> ~ |
  cis'2^\p^\fermata r4 
  \key cis \major
  gis^\< |
  cis'2^\fp gis^\< |
  eis4^\mf fis a cis-- |
  f e gis bes, |
  c ees^\fermata r 
  \key f \major
  aes^\mf^\> |
  c'^\p r bes2^\< |
  a1 ~ |
  a ~ |
  a2^\f^\fermata r4 
  \key e \major
  gis^\> |
  e'2^\mf dis' |
  b1 ~ |
  b ~ |
  b2^\fermata r4 
  \key aes \major
  aes^\> |
  bes2^\p^\< ees'^\mf |
  c'2.^\p fis4^\< |
  a cis f^\> e |
  aes2^\p^\fermata r4 
  \key bes \major
  aes |
  ees'2^\< c' |
  d'2. fis4 |
  a^\f cis f2 ~ |
  f r4 
  \key c \major
  aes |
  cis'2^> f'^\< |
  e'2.^\f fis4 |
  a cis f e |
  gis2^\fermata r4 
  \key ees \major
  aes |
  g'1^\ff |
  fis' |
  g'4 fis' a' cis' |
  f' e' gis' bes |
  c' ees' ~ ees'2 ~ |
  ees'4 b4 ~ b2 ~ |
  b2.^\fermata
}

tenorKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
  The spar -- row's wing
  the chip -- munks gen -- uf -- lect to me. Though…
  His wife Queen May
  My re -- gal robes
  The trees would kneel
  the chip -- munks gen -- uf -- lect
  The moun -- tains bow
  the chip -- munks gen
  The bulls kow tow
  the chip -- munks gen -- uf -- lect
  If I were king
  the chip -- munks gen -- uf -- lect to me. Though…
  king
}

bassKOTF = 
{
  \clef "bass"
  \key fis \major
  { { \once \override Hairpin.minimum-length = #8
      \once \override Hairpin.springs-and-rods = #ly:spanner::set-spacing-rods
      } } {  } ais,4^\fp^\< |
  \set melismaBusyProperties = #'()
  b,16^\>[( b, b, b, b, b, b, b,)] r8\! \unset melismaBusyProperties
  r r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key a \major
  bes,^\p^\< |
  bes,^\mf r r2 |
  R1 |
  R |
  r2^\fermata r4 
  \key cis \major
  ais,^\p^\< |
  gisis,2.^\fp r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key f \major
  bes,^\mf^\> |
  aes,2.^\p r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key e \major
  ais,^\f^\> |
  g,2.^\mf r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key aes \major
  bes,^\> |
  ges,2.^\p r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key bes \major
  bes,^\p |
  f,2. r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key c \major
  bes,^\f |
  e,2. r4 |
  R1 |
  R |
  r2^\fermata r4 
  \key ees \major
  bes, |
  ees,1^\ff ~ |
  ees,2. r4 |
  R1*4 |
  r2.^\fermata
}
bassKOTFWords = \lyricmode {
  If I (I I I I I I I)
  I'd click
  The spa
  His wife
  My re
  The trees
  The moun
  The bulls
  If I
}


\score {
  \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \bitchName } <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\prefatoryMatter
        \simplifyPitch \sopranoKOTF
      } {
        \marksKOTF
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \dortyName } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \simplifyPitch \mezzoKOTF
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \ttoName } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \simplifyPitch \altoKOTF
      }
      \new Lyrics \lyricsto "alto" {
        \altoKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \fakbydName } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \simplifyPitch \tenorKOTF
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \wysrName } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatter
        \simplifyPitch \bassKOTF
      }
      \new Lyrics \lyricsto "bass" {
        \bassKOTFWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override HorizontalBracket.direction = #UP
      \consists "Horizontal_bracket_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override Hairpin #'minimum-length = #6
      \override Hairpin #'springs-and-rods = #ly:spanner::set-spacing-rods
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
  \midi {}
}
%{
\pageBreak

\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
        \prefatoryMatter
        \sopranoKOTF
      } \\ {         \prefatoryMatter
        \mezzoKOTF
         } \\ {         \prefatoryMatter
        \altoKOTF
         } {
        \marksKOTF
      } >> }
    }
    \new Staff  {
      \new Voice = "tenor" { << { \numericTimeSignature
        \prefatoryMatter
        \tenorKOTF
      } \\ \\ {         \prefatoryMatter
        \bassKOTF
         } {
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