#lang racket

;;Exercice 1

(define (plus a b)
  (if (zero? b)
      a
      (plus (add1 a) (sub1 b))))

;;(plus 5 3)

(define (prod-aux a b r)
  (cond
  [(zero? b) r]
  [ else   (prod-aux a (sub1 b) (plus r a))]))

(define (prod a b)
      (prod-aux a b 0))

;;(prod 6 5)

;;Exercice 2

(define (fibo n)
  (cond
    [(zero? n) 1]
    [(equal? 1 n) 1]
    [else (+ (fibo (sub1 n))(fibo (- n 2)))]))

;;(fibo 100)

(define (fibo-gen n a b)
  (cond
    [(zero? n) a]
    ;;[(equal? 1 n) b]
    [else (fibo-gen (sub1 n) b (+ a b))]))

;;(fibo-gen 100 1 1)

(let ([x 5]
      [y (sqrt 9)]
      [z (* 4 (+ 3 (sqrt 4) (sqrt 9)))])
  (+ x y (* 5 z)))


(+ (let ([a 12]) (+ a a))
   (let ([b 30]) (+ b 
                    (let ([b 20]) 
                      (+ b b)))))

(define (discriminant a b c)
  (- (* b b) (* 4 a c)))

(define (carac a b c)
  (let([d (discriminant a b c)])
    (cond
      [(> d 0) "2 racines réelles"]
      [(< d 0) "2 racines complexes"]
      [else "1 racine réelle"])))

(define x 12)
(define y 5)
(define q1 (let ([x y]  ;;5
                 [y x]) ;;12
             (- x y)))  ;;-7
(define q2 (let* ([x y] ;;5
                  [y x]) ;;5
             (- x y))) ;;0

(define q3 (let ([x y])
                 (let ([y x])
                   (- x y))))

q3
