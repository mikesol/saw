unfoldSwing =
#(define-music-function (parser location tp) (integer?)
#{
  \set Score.tempoWholesPerMinute = #(ly:make-moment (/ (* 3 tp) 2) 8 0 0)
  s8
  \set Score.tempoWholesPerMinute = #(ly:make-moment (* 3 tp) 8 0 0)
  s8
#})

% quarters % quarters % eighths!
unfoldChange =
#(define-music-function (parser location tp1 tp2 beats) (integer? integer? integer?)
  (define m
    (make-music
      'SequentialMusic
      'elements
        (apply
          append
          (map
            (lambda (x)
              (let ((val (+ (* (* 2 tp2) (/ x beats)) (* (* 2 tp1) (/ (- beats x) beats)))))
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

