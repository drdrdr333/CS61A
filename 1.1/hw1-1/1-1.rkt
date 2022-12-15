#lang simply-scheme

;hw 2

;(define (squares nums)
;  (if (empty? nums)
;      '()
;      (se (square (first nums)) (squares (bf nums)))))
;
;(define (square x) (* x x))
;
;(squares '(2 4 6 7))


;hw 3

;(define (switch sent)
;  (se (changef (first sent)) (stepper (bf sent))))
;
;(define (changef w)
;  (if (equal? w 'You)
;      'I
;      w))
;
;(define (stepper sent)
;  (if (empty? sent)
;      '()
;      (se (change (first sent)) (stepper (bf sent)))))
;
;(define (change w)
;  (cond ((equal? w 'I) 'you)
;        ((equal? w 'i) 'you)
;        ((equal? w 'me) 'you)
;        ((equal? w 'Me) 'you)
;        ((equal? w 'you) 'me)
;        ((equal? w 'You) 'me)
;        (else w)))
;
;
;(switch '(You told me that I should wake you up))

;hw 4

;(define (order nums)
;  (cond ((check-if-last? nums) '#t)
;        ((equal? (check (first nums) (first (bf nums))) '#f) '#f)
;        (else (order (bf nums)))))
;
;(define (check x y)
;  (if (> x y)
;      '#f
;      '#t))
;
;(define (check-if-last? nums)
;  (equal? (bf nums) '()))

;(order '(4 3 6))

; hw 5

;(define (ends-e sent)
;  (cond ((empty? sent) '())
;        ((check (first sent)) (se (first sent) (ends-e (bf sent))))
;        (else (ends-e (bf sent)))))
;
;(define (check wd)
;  (if (equal? (last wd) 'e) '#t '#f))
;
;(ends-e '(please put the paper above the blue elephant))


; hw 6

;(define (determine sent)
;  (if (equal? (check-and-or? (first sent)) '#t)
;      (check-type-or (bf sent))
;      (check-type-and (bf sent))))
;
;(define (check-and-or? wd)
;  (if (equal? wd 'or) '#t '#f))


; logic - if one expression within the and
; evaluates to false, we know this is working
; as an ordinary function, because if this or were
; handed a true it would stop evaluating immediately
; ** this function is dependant upon the expression it is handed **
;(define (check-type-or expr)
;  (if (equal? (and ((lambda (x y) (= x y))
;  (last (bl (first expr))) (last (first expr)))
;                   ((lambda (x y) (= x y))
;  (last (bl (last expr))) (last (last expr))))
;              '#f) '(ordinary-form-or) '(special-form-or)))
; logic - similar to above
; if both of the expressions this procedure is handed
; are evaluated, we know this is not an ordinary form and
; therefore it must be a special form and, inversely
; if one of them evaluates to false, the entire combination
; within the original and expression will be evaluated via ordinary form
;(define (check-type-and expr)
;  (if (equal? (and ((lambda (x y) (= x y))
;  (last (bl (first expr))) (last (first expr)))
;                   ((lambda (x y) (= x y))
;  (last (bl (last expr))) (last (last expr))))
;              '#f) '(special-form-and) '(ordinary-form-and)))
;
;(determine '(or (= 1 1) (= 1 1)))
;(determine '(or (= 1 1) (= 2 1)))
;(determine '(and (= 1 1) (= 2 1)))
;(determine '(and (= 1 1) (= 1 1)))




























