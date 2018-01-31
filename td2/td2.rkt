#lang racket
(require racket/trace)


(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (sub1 n)))))

;;(factorial -8)

;;exercice 2

(define (somme-inter x y )
  (if (< y x)
      0
      (+ x (somme-inter (add1 x) y))))

(define (sum2 x y)
  (if (< y x)
      0
      (+ y (sum2 x (sub1 y)))))

;;(somme-inter 1 5)
;;(sum2 0 3)

(define (somme-carres x y)
  (if (< y x)
      0
      (+ (sqr x) (somme-carres (add1 x) y))))

;;(somme-carres 1 5)


;;Exercice 3

(define (pgcd a b)
  (if (zero? (modulo b a))
      a
      (pgcd b (modulo a b))))

;;(trace pgcd)
;;(pgcd 24 32)

;;Exercice 4

(define (puissance x n)
  (if (zero? n)
      1
      (* x (puissance x (sub1 n)))))

;;(puissance 2 3)

(define (puissance2 x n)
  (if (zero? n)
      1
      (if (even? n)
          (sqr (puissance2 x(/ n 2)))
          (* x (puissance2 x (sub1 n))))))

;;(puissance2 2 3)

;;Exercice 5

(define (pair1 n)
  (if (zero? n)
      #t
      (impair1 (sub1 n))))

(define (impair1 n)
  (if (zero? n)
      #f
      (pair1 (sub1 n))))

;;(impair 5)

(define (pair2 n)
  (if (zero? n)
      #t
      (not (impair2 (sub1 n)))))

(define (impair2 n)
  (if (zero? n)
      #f
      (not (pair2 (sub1 n)))))

;;(impair 4)

(define (pair? n)
  (or (zero? n) (impair? (sub1 n))))


(define (impair? n)
  (and (not(zero? n)) (pair? (sub1 n))))

;;(trace pair?)
;;(trace impair?)
;;(pair? 4)
;;(pair? 5)
;;(impair? 4)
;;(impair? 5)

;; Exercice 7

(define (plus a b)
  (if (zero? b)
      a
      (if (< 0 b)
          (add1 (plus a (sub1 b)))
          (sub1 (plus a (add1 b))))))

;;(plus 1 -5)

(define (produit a b)
  (if (zero? b)
      0
      (if (< 0 b)
          (+ a (produit a (sub1 b)))
          (* -1 (produit a (* -1 b))))))
          
;;(produit 5 -9)

;;Exerice 8

(define (syracuse n)
  (cond
    [(= 1 n) 0]
    [(pair? n) (add1 (syracuse (/ n 2)))]
    [else (add1 (syracuse (add1 (* 3 n))))]))

(syracuse 7)

;;Exercice 9

