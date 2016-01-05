\include "sperm.ly"

#(define (bezier-to-path b)
  (apply append (map (lambda (x) (list (car x) (cdr x))) (cdr b))))
#(define (process-two-beziers-x-only l0 l1)
  (let* ((d (car l1))
         (r (cadr (reverse l0)))
         (s (car (reverse l0)))
         (k (apply slopexyxy (list-tail l0 2)))
         (b (apply yo-xyxy (list-tail l0 2)))
         (x (+ d r))
         (y (+ (* x k) b)))
   (append (list x y) (list (+ x (list-ref l1 1)) (+ y (list-ref l1 2)) (+ x (list-ref l1 1) (list-ref l1 3)) (+ y (list-ref l1 2) (list-ref l1 4))))))

#(define (simple-to-robust-bezier-x-only l)
  (define (helper in out)
    (if (null? in)
        out
        (helper (cdr in) (cons (process-two-beziers-x-only (car out) (car in)) out))))
  (reverse (helper (cdr l) (list (add-x (car l))))))

#(define (whittle-at-x bez-in bez-out pt head?) ;(format #t "~a ~a ~a ~a\n" bez-in bez-out pt head?)
  (if (and (>= pt (caaar bez-in))
           (<= pt (car (rac (car bez-in)))))
      (let ((chopped (ms-namespace-split-bezier (car bez-in) (/ (- pt (caaar bez-in))
                                                   (- (car (rac (car bez-in))) (caaar bez-in))))))
        (if head? (append (reverse bez-out) (list (car chopped)))
                  (append (list (cdr chopped)) (if (null? bez-in) '() (cdr bez-in)))))
      (whittle-at-x (cdr bez-in) (cons (car bez-in) bez-out) pt head?)))
      

#(define (vibster grob x-os y-scale thick l)
  (let* ((bez (paths-to-bezier (simple-to-robust-bezier-x-only l)))
         (nep (ly:grob-property grob 'normalized-endpoints))
         (last-x (car (rac (rac bez))))
         (orig (ly:grob-original grob))
         (list-of-grobs (if (ly:grob? orig) (ly:spanner-broken-into orig) (list grob)))
         (list-of-grobs (if (null? list-of-grobs) (list grob) list-of-grobs))
         (my-lb (ly:spanner-bound grob LEFT))
         (my-rb (ly:spanner-bound grob RIGHT))
         (my-com (ly:grob-common-refpoint my-lb my-rb X))
         (full-length (reduce + 0 (map (lambda (x) (let* ((lb (ly:spanner-bound x LEFT)) (rb (ly:spanner-bound x RIGHT)) (com (ly:grob-common-refpoint lb rb X))) (- (ly:grob-relative-coordinate rb com X) (ly:grob-relative-coordinate lb com X)))) list-of-grobs)))
         (bez (whittle-at-x bez '() (* (car nep) last-x) #f))
         (bez (whittle-at-x bez '() (* (cdr nep) last-x) #t))
         (x-scale (/ (- (ly:grob-relative-coordinate my-rb my-com X) (cdr (ly:grob-extent my-lb my-com X))) (- (car (rac (rac bez))) (caaar bez))))
         (semi-reduced-bez (map (lambda (x) (map (lambda (y) (cons (- (car y) (caaar bez)) (cdr y))) x)) bez))
         (reduced-bez (map bezier-to-path semi-reduced-bez)))
    (ly:stencil-translate
      (make-connected-path-stencil
       (map (lambda (x) (coord-hack (cons 0.0 (cdaar bez)) x)) reduced-bez)
         thick x-scale y-scale #f #f)
      (coord-translate (coord-scale (cons x-scale y-scale) (cons x-os (cdaar bez)))  (cons (if (eqv? grob (car list-of-grobs)) (interval-length (ly:grob-extent my-lb my-lb X)) (cdr (ly:grob-extent my-lb my-com X))) 0)))))


#(define alto-one
'((9 10 20 -10 30 10) (10 10 0 10 -10) (10 10 0 10 10)
(30 40 0 20 -10) (20 10 0 10 10)
(10 5 -3 10 -15) (10 18 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 -5 10 0)
))

