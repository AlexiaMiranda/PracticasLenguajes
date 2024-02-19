;;#lang plai
#lang racket
#|
Practica 1.
Integrantes:
Alexia Rodríguez Miranda
Luis Edgar Flores Ayala
|#

;; Ejercicio 1
;; Definir la función area-total que dada la generatriz y el diámetro de la base de un cono circular recto,
;; calcular el área total del mismo.At = πrg + πr2
(define(area-total diametro generatriz)
  (define rad (/ diametro 2)) (+ (* pi rad generatriz)(* pi (* rad rad) )))

;; Ejercicio 2
(define (decremental? a b c d)
  (error "Sin implementar"))

;; Ejercicio 3
#|Definir la función area-heron que calcula el área de un triángulo a partir de la medida de cada uno de sus
lados. La fórmula de Herón es la siguiente: A = sqrt( S(S - a)(S - b)(S - c)) donde S es el semiperímetro definido por:
S = (a+b+c)/ 2
|#
(define (area-heron a b c)
  (let([S (/ (+ a b c) 2)]) (sqrt (* S (- S a) (- S b) (- S c)) )))

;; Ejercicio 4
(define (primera-letra s)
  (error "Sin implementar"))

;; Ejercicio 5
#|Define la función par?, la cual recibirá un número y devolverá verdadero si el número recibido como parámetro
es par y falso en cualquier otro caso.
|#
(define (par? n)
  (equal? (remainder n 2) 0 ))

;; Ejercicio 6
(define (impar? n)
  (error "Sin implementar"))

;; Ejercicio 7
#|Define la función en-rango-o-fuera?, la cual recibirá tres números, y devolverá verdadero si el primer
argumento es mayor o igual al segundo y menor o igual que el tercero, adicional a esto también devolverá
verdadero si el primer argumento es menor que el segundo menos 10 o si es mayor que el segundo más 10.

Modifique esto para que fuera a b c
|#
(define (en-rango-o-fuera? a b c)
  (or (and (>= a b) (<= a c)) (or (< a (- b 10)) (> a (+ b 10)))) )

;; Ejercicio 8
(define (calculadora operacion n m)
  (error "Sin implementar"))