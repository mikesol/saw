\version "2.19.0"

#(define (noteify-pitch p s)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (format #t "\nWIZ ~a ~a ~a ~a\n" s o n a)))

#(define (is-tie e)
  (equal? 'TieEvent (ly:music-property e 'name)))

#(define (has-tie l)
  (if (pair? l)
      (if (is-tie (car l))
          #t
          (has-tie (cdr l)))
      #f))

#(define (noteify music string)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (a (ly:music-property music 'articulations))
         (p (ly:music-property music 'pitch)))
     (if (not (and (pair? a)
                   (has-tie a)))
      (begin
       (if (pair? es)
           (ly:music-set-property!
            music 'elements
            (map (lambda (x) (noteify x string)) es)))
       (if (ly:music? e)
           (ly:music-set-property!
            music 'element
            (noteify e string)))
       (if (ly:pitch? p)
           (begin
             (noteify-pitch p string)))))
     music))

noteifyMusic =
#(define-music-function (parser location s m)
   (string? ly:music?)
   (noteify m s))

%\displayMusic
\noteifyMusic #"SOPRANO" \new Staff << { \relative c' { { c d ~ d e } \relative c' { c d } d } } { s1 } >>