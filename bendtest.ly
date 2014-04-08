%#(use-modules (srfi srfi-1))

#(define (bezier-to-point t l)
   (+ (* 3 (expt (- 1 t) 2) t (car l))
      (* 3 (- 1 t) (expt t 2) (cadr l))
      (* (caddr l) (expt t 3))))

#(define (lcomb t x y)
  (+ (* t x) (* (- 1 t) y)))

#(define (bezier-to-slope t l)
  (let* ((lc1 (lcomb t 0 (car l)))
         (lc2 (lcomb t (car l) (cadr l)))
         (lc3 (lcomb t (cadr l) (caddr l)))
         (lc4 (lcomb t lc1 lc2))
         (lc5 (lcomb t lc2 lc3))
         (lc6 (lcomb t lc4 lc5)))
    ;lc6
    (cons lc5 lc6)))

#(define (blist-to-point t l)
  (cons (bezier-to-point t (list (car l) (caddr l) (cadr (reverse l))))
        (bezier-to-point t (list (cadr l) (cadddr l) (car (reverse l))))))

#(define (slope-me xs ys)
  (/ (- (cdr ys) (car ys)) (- (cdr xs) (car xs))))
 
#(define (blist-to-slope t l)
  (slope-me (bezier-to-slope t (list (car l) (caddr l) (cadr (reverse l))))
            (bezier-to-slope t (list (cadr l) (cadddr l) (car (reverse l))))))

#(define (rad-to-deg v) (/ (* v 180) 3.1416))

% kludge !!
#(define (fac-bez fact bezzy)
  (map (lambda (x y) (* x y)) bezzy (list (car fact) (cdr fact) (car fact) (cdr fact) (car fact) (cdr fact))))

#(define (sum l) (reduce + 0 l))

#(define (space-from-list l)
  (let* ((exts (map (lambda (x) (ly:stencil-extent x X)) l))
         (exts (map (lambda (x) (- (cdr x) (car x))) exts))
         (w 25)
         (space (/ (- w (sum exts)) (- (length l) 1))))
    (map (lambda (x) (/ (+ (sum (list-head exts x)) (* space (- (length l) 1))) w)) (iota (length exts)))))

#(define-markup-command (pleaseworktwo layout props l fact bezzy normalized) (list? pair? list? list?)
  (let* ((stencils (map (lambda (x) (ly:text-interface::interpret-string layout props x)) l))
         (bezzy (fac-bez fact bezzy))
         ;(normalized (map (lambda (x) (/ x (length l))) (iota (length l))))
         ;(normalized (space-from-list stencils))
         ;(normalized '(0 0.2 0.5 0.7 0.9))
         (mappy (map (lambda (foo) (blist-to-point foo bezzy)) normalized))
         (zzzd (map (lambda (z) (rad-to-deg (atan (blist-to-slope z bezzy)))) normalized))
         (stencils (map (lambda (x y z) (ly:stencil-rotate (ly:stencil-translate x y) z -1 -1)) stencils mappy zzzd)))
    (apply ly:stencil-add stencils)))

%\markup { \pleaseworktwo #'("ce" "n'était" "pas" "un" "accord") #'(30 . 30) #'(0.5 0.0 0.5 1.0 1.0 1.0) #'(0 0.2 0.5 0.7 0.9) }
