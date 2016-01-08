\version "2.14.0"

#(define base-note-head-coordinates
  '((56 0 109 -29 109 -91)
    (109 -163 53 -212 6 -240)
    (-30 -261 -70 -276 -111 -276)
    (-167 -276 -220 -247 -220 -185)
    (-220 -113 -164 -64 -117 -36)
    (-81 -15 -41 0 0 0)))

#(define (extend-base-note-head l)
  (let* ((bnh (paths-to-bezier base-note-head-coordinates))
         (beg (map (lambda (x) (map (lambda (y) (cons (+ l (car y)) (cdr y))) x)) (list-head bnh 3)))
         (end (list-tail bnh 3))
         (l1 (list (list (rac (rac beg)) (caar end))))
         (l2 (list (list (rac (rac end)) (caar beg)))))
    (make-connected-path-stencil
      (append (map bezier-to-path l2) (map bezier-to-path beg) (map bezier-to-path l1) (map bezier-to-path end))
      0.01 0.0040 0.0040 #f #t)))

#(define (extend-base-note-head-backwards l)
  (let* ((bnh (paths-to-bezier base-note-head-coordinates))
         (beg (list-head bnh 3))
         (end (map (lambda (x) (map (lambda (y) (cons (- (car y) l) (cdr y))) x)) (list-tail bnh 3)))
         (l1 (list (list (rac (rac beg)) (caar end))))
         (l2 (list (list (rac (rac end)) (caar beg)))))
    (make-connected-path-stencil
      (append (map bezier-to-path beg) (map bezier-to-path l1) (map bezier-to-path end) (map bezier-to-path l2))
      0.01 0.0040 0.0040 #f #t)))

% code dupey...but works!
#(define (paths-to-bezier p)
  (define (helper in out)
    (if (null? in)
        out
        (helper (cdr in) (cons (list (list-ref (car out) 3)
                                     (cons (list-ref (car in) 0) (list-ref (car in) 1))
                                     (cons (list-ref (car in) 2) (list-ref (car in) 3))
                                     (cons (list-ref (car in) 4) (list-ref (car in) 5)))
                               out))))
  (reverse (helper (cdr p) (list (list (cons 0 0)
                                       (cons (list-ref (car p) 0) (list-ref (car p) 1))
                                       (cons (list-ref (car p) 2) (list-ref (car p) 3))
                                       (cons (list-ref (car p) 4) (list-ref (car p) 5)))))))

#(define (bezier-to-path b)
  (apply append (map (lambda (x) (list (car x) (cdr x))) (cdr b))))

#(define base-note-head-stencil
  (make-connected-path-stencil
   base-note-head-coordinates
   0.01 0.0040 0.0040 #f #t))

#(define (slopexyxy x0 y0 x1 y1)
  (/ (- y1 y0) (- x1 x0)))

#(define (crude-bloat-x ls m) 
  (map (lambda (x)
         (if (list? x)
             (map (lambda (y z)
                    (if (= 0 (modulo z 2)) (* m y) y))
                  x (iota (length x)))
             (* x m)))
       ls))

#(define (crude-bloat-y ls m) 
  (map (lambda (x)
         (if (list? x)
             (map (lambda (y z)
                    (if (= 1 (modulo z 2)) (* m y) y))
                  x (iota (length x)))
             (* x m)))
       ls))

#(define (slopecons p0 p1)
  (/ (- (cdr p1) (cdr p0)) (- (car p1) (car p0))))

#(define (yo-xyxy x0 y0 x1 y1)
  (- y0 (* (/ (- y1 y0) (- x1 x0)) x0)))

#(define (yo-cons p0 p1)
  (- (cdr p0) (* (slopecons p0 p1) (car p0))))

#(define (process-two-beziers l0 l1)
  (let* ((d (car l1))
         (r (cadr (reverse l0)))
         (s (car (reverse l0)))
         (k (apply slopexyxy (list-tail l0 2)))
         (x (+ (sqrt (/ (* d d) (+ (* k k) 1))) r))
         (y (+ (* k (- x r)) s)))
   (append (list x y) (list (+ x (list-ref l1 1)) (list-ref l1 2) (+ x (list-ref l1 1) (list-ref l1 3)) (list-ref l1 4)))))

#(define (process-two-beziers-rel l0 l1)
  (let* ((d (car l1))
         (r (cadr (reverse l0)))
         (s (car (reverse l0)))
         (k (apply slopexyxy (list-tail l0 2)))
         (x (+ (sqrt (/ (* d d) (+ (* k k) 1))) r))
         (y (+ (* k (- x r)) s)))
   (append (list x y) (list (+ x (list-ref l1 1)) (+ y (list-ref l1 2)) (+ x (list-ref l1 1) (list-ref l1 3)) (+ y (list-ref l1 2) (list-ref l1 4))))))

% kludgy...
#(define (add-x l)
  (list (car l) (cadr l) (+ (car l) (caddr l)) (list-ref l 3) (+ (car l) (caddr l) (list-ref l 4)) (list-ref l 5)))

#(define (simple-to-robust-bezier l)
  (define (helper in out)
    (if (null? in)
        out
        (helper (cdr in) (cons (process-two-beziers (car out) (car in)) out))))
  (reverse (helper (cdr l) (list (add-x (car l))))))

#(define (simple-to-robust-bezier-rel l)
  (define (helper in out)
    (if (null? in)
        out
        (helper (cdr in) (cons (process-two-beziers-rel (car out) (car in)) out))))
  (reverse (helper (cdr l) (list (add-x (car l))))))

#(define tbc (simple-to-robust-bezier
     '((0.8 -10 2 0.9 2 -1)
       (1 1 -0.9 1 -1)
       (1 1 0.9 1 1)
       (1 1 -0.9 1 -1))))

#(define test-bezier-stencil
  (make-connected-path-stencil
   tbc
   0.01 1.0 1.0 #f #f))

#(define (cut-l l p keep-f)
  (let* ((good (list-head l (+ 1 (car p))))
         (split (ms-namespace-split-bezier (car (reverse good)) (cdr p))))
   (reverse (cons (keep-f split) (cdr (reverse good))))))

% l is form of spermazoid
% pL is left point
% pR is right point
% f is function from 0 to 1 and 0 to 1

#(define (extend-bezier b f v) ;(format #t "HERE'S V ~a\n" v)
  (let ((extreme (car (list-ref (car (reverse b)) 3))))
    (map
      (lambda (q)
        (map
          (lambda (pair)
            (cons (car pair) (+ (cdr pair) (* v (- 1 (f (/ (car pair) extreme)))))))
          q))
      b)))

#(define (rac x) (car (reverse x)))

#(define (rdc x) (reverse (cdr (reverse x))))

#(define (from-to v l0 r0 l1 r1)
  (+ (* (/ (- v l0) (- r0 l0)) (- r1 l1)) l1))

#(define (join repere flex) ;(format #t "REP ~a FLE ~a\n" repere flex)
  (let ((first-stab (map (lambda (x)
                           (cons (from-to (car x) 0 (car (list-ref (car flex) 3)) (car (list-ref repere 3)) (car (list-ref (car flex) 3))) (cdr x)))
                         (car flex))))
;(format #t "FIRSTSTAB ~a ~a ~a\n" first-stab repere flex)
    (cons (append (list (rac repere)
                        (cons (caadr first-stab)
                              (if (eqv? (car (list-ref repere 2)) (car (list-ref repere 3))) ; not sure if this is right...
                                  (cdr (list-ref repere 2))
                                  (+ (* (apply slopecons (list-tail repere 2)) (caadr first-stab)) (apply yo-cons (list-tail repere 2))))))
                  (cddar flex))
          (cdr flex))))

#(define (bez-rev b) ;(format #t "GOO ~a\n" (map reverse (reverse b)))
  (map reverse (reverse b)))

#(define (keep-till-eq haystack needle)
  (define (helper in out)
    (if (equal? (caar in) needle)
        (reverse out)
        (helper (cdr in) (cons (car in) out))))
  (helper haystack '()))

#(define (make-tip top bot l)
  (let* ((m0 (apply slopecons (list-tail top 2)))
         (m1 (apply slopecons (list-head bot 2)))
         (b0 (apply yo-cons (list-tail top 2)))
         (b1 (apply yo-cons (list-head bot 2)))) ;(format #t "m0 m1 b0 b1 l ~a ~a ~a ~a ~a\n" m0 m1 b0 b1 l)
    (list (rac top)
          (cons (+ l (car (rac top))) (+ (* m0 (+ l (car (rac top)))) b0))
          (cons (+ l (caar bot)) (+ (* m1 (+ l (caar bot))) b1))
          (car bot))))

#(define (coord-hack offset bez)
  (list
    (- (list-ref bez 0) (car offset))
    (- (list-ref bez 1) (cdr offset))
    (- (list-ref bez 2) (car offset))
    (- (list-ref bez 3) (cdr offset))
    (- (list-ref bez 4) (car offset))
    (- (list-ref bez 5) (cdr offset))))

#(define (internal-make-spermazoid l pL pR flip? f bezier-making-function)
  (let* ((tip-len (rac l))
         (l (rdc l))
         (di-loop (append base-note-head-coordinates base-note-head-coordinates))
         (first (cut-l (paths-to-bezier di-loop) pL car)) ;(q (format #t "first ~a\n\n" first))
         (last (keep-till-eq (reverse (cut-l (reverse (paths-to-bezier di-loop)) pR cdr)) (car (rac first)))) ;(q (format #t "last ~a\n\n" last))
         (robust (paths-to-bezier (bezier-making-function l))) ;(q (format #t "robust ~a\n\n" robust))
         (top (join (rac first) (extend-bezier robust f (cdr (rac (rac first)))))) ;(q (format #t "top ~a\n\n" top))
         (bottom (bez-rev (join (car last) (extend-bezier robust f (cdr (rac (car last))))))) ;(q (format #t "bottom ~a\n\n" bottom))
         (tip (list (make-tip (rac top) (car bottom) tip-len))) ;(q (format #t "tip ~a\n\n" tip))
         ;;;; kludge
         (last (cdr last))
         (x-scale 0.0040)
         (y-scale ((if flip? - values) 0.0040))
         (combined (append (map bezier-to-path top) (map bezier-to-path tip) (map bezier-to-path bottom) (map bezier-to-path last) (list (bezier-to-path (rac first))))))
;(format #t "moveto ~a combined ~a\n\n" (list (caaar top) (cdaar top)) combined)
;   (make-connected-path-stencil-with-initial-offset
;     (caar top)
;     combined
;     0.01 x-scale y-scale #f #t)))
   (ly:stencil-translate (make-connected-path-stencil
     (map (lambda (x) (coord-hack (caar top) x)) combined)
     0.01 x-scale y-scale #f #t) (coord-scale (cons x-scale y-scale) (caar top)))))

#(define (make-spermazoid l pL pR flip? f)
  (internal-make-spermazoid l pL pR flip? f simple-to-robust-bezier))

#(define (make-spermazoid-rel l pL pR flip? f)
  (internal-make-spermazoid l pL pR flip? f simple-to-robust-bezier-rel))

%{
\relative c'' {
  \stopStaff
  \override Staff . StaffSymbol #'line-positions = #'(-3 3)
  \startStaff
  \override Stem #'stencil = ##f
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 90 50 30 60 100) (140 40 20 80 70) (30 10 10 30 -100) 10) '(4 . 0.4) '(3 . 0.4) #f values)
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (30 10 210 10 215) 10) '(4 . 0.9) '(3 . 0.4) #f values)
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (60 30 210 30 200) (60 30 230 10 240) (60 20 260 20 250) (30 20 270 20 280) (30 20 300 20 290) 10) '(4 . 0.9) '(3 . 0.4) #f values)
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (60 30 210 30 200) (60 30 230 10 240) (60 20 260 20 250) (30 20 270 20 280) (30 20 300 20 290) 10) '(4 . 0.5) '(3 . 0.4) #t (lambda (x) (* x x)))
  b4
}
%}