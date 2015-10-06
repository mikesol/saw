unfoldSwing =
#(define-music-function (parser location tp) (integer?)
#{
  \set Score.tempoWholesPerMinute = #(ly:make-moment (/ (* 3 tp) 2) 8 0 0)
  s8
  \set Score.tempoWholesPerMinute = #(ly:make-moment (* 3 tp) 8 0 0)
  s8
#})

% quarters % quarters % eighths!
unfoldChangeRobust =
#(define-music-function (parser location tp1 tp2 beats exp) (integer? integer? integer? number?)
  (define m
    (make-music
      'SequentialMusic
      'elements
        (apply
          append
          (map
            (lambda (x)
              (let* (
                 (dv (/ x beats))
                 (val (+ (* (* 2 tp2) dv) (* (* 2 tp1) (- 1 dv)))))
               (list
                (make-music
                  'ContextSpeccedMusic
                  'context-type
                  'Score
                  'element
                  (make-music
                    'PropertySet
                    'value
                    (ly:make-moment (numerator val) (* 8 (denominator val)) 0 1)
                    'symbol
                    'tempoWholesPerMinute))
                (make-music
                  'EventChord
                  'elements
                  (list (make-music
                          'SkipEvent
                          'duration
                          (ly:make-duration 3 0 1 1)))))))
          (iota beats)))))
#{
  $m %\set Score.tempoWholesPerMinute = #(ly:make-moment tp2 4 0 1)
#})

unfoldChange =
#(define-music-function (parser location tp1 tp2 beats) (integer? integer? integer?)
#{
  \unfoldChangeRobust $tp1 $tp2 $beats #1.0
#})


unfoldSwingChange =
#(define-music-function (parser location tp1 tp2 beats) (integer? integer? integer?)
  (define m
    (make-music
      'SequentialMusic
      'elements
        (apply
          append
          (map
            (lambda (x)
              (let ((val (* (if (= 0 (modulo x 2)) 2/3 4/3) (+ (* (* 2 tp2) (/ x beats)) (* (* 2 tp1) (/ (- beats x) beats))))))
              (list
                (make-music
                  'ContextSpeccedMusic
                  'context-type
                  'Score
                  'element
                  (make-music
                    'PropertySet
                    'value
                    (ly:make-moment (numerator val) (* 8 (denominator val)) 0 1)
                    'symbol
                    'tempoWholesPerMinute))
                (make-music
                  'EventChord
                  'elements
                  (list (make-music
                          'SkipEvent
                          'duration
                          (ly:make-duration 3 0 1 1)))))))
          (iota beats)))))
#{
  $m %\set Score.tempoWholesPerMinute = #(ly:make-moment $tp 4 0 1)
#})

#(define (longize d)
  (ly:make-duration 3 0 4 3))

#(define (shortize d)
  (ly:make-duration 3 0 2 3))

#(define (sshortize d)
  (ly:make-duration 4 0 2 3))

#(define (longdize d)
  (ly:make-duration 2 1 10 9))

#(define (longddize d)
  (ly:make-duration 1 2 22 21))

#(define (durize music durfun)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (d (ly:music-property music 'duration)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (durize x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (durize e)))
     (if (ly:duration? d)
         (begin
           (set! d (durfun d))
           (ly:music-set-property! music 'duration d)))
     music))

longSwung =
#(define-music-function (parser location m)
   (ly:music?)
   (durize m longize))

shortSwung =
#(define-music-function (parser location m)
   (ly:music?)
   (durize m shortize))

shortShortSwung =
#(define-music-function (parser location m)
   (ly:music?)
   (durize m sshortize))

longDottedSwung =
#(define-music-function (parser location m)
   (ly:music?)
   (durize m longdize))

longDottedDottedSwung =
#(define-music-function (parser location m)
   (ly:music?)
   (durize m longddize))

lo = #(define-music-function(parser location m)(ly:music?) #{ \longSwung $m #})
sh = #(define-music-function(parser location m)(ly:music?) #{ \shortSwung $m #})
lod = #(define-music-function(parser location m)(ly:music?) #{ \longDottedSwung $m #})
lodd = #(define-music-function(parser location m)(ly:music?) #{ \longDottedDottedSwung $m #})
ssh = #(define-music-function(parser location m)(ly:music?) #{ \shortShortSwung $m #})
quiet = { \once \set Staff.midiMinimumVolume = #0.0 \set Staff.midiMaximumVolume = #0.01 }
