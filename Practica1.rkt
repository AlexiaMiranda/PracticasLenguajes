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
;; Definir la función decremental? que dados cuatro números indica si se encuentran ordenados de forma
;; decremental.
(define (decremental? a b c d)
        (decremental-list (list a b c d)))

;; Funcion que recibe un elemento y una lista y
;; regresa #t si el elemento recibido es menor que el primer
;; elemento de la lista o si la lista es vacia
(define (last-less n list)
        (or (empty? list) (> n (car list)))
        )

;; Funcion que dada una lista regresa #t si es vacia o si
;; los elementos estan en orden descendente
(define (decremental-list list)
         (or (empty? list) (and (last-less (car list)(cdr list)) (decremental-list (cdr list))
         ))
         )

;; Ejercicio 3
#|Definir la función area-heron que calcula el área de un triángulo a partir de la medida de cada uno de sus
lados. La fórmula de Herón es la siguiente: A = sqrt( S(S - a)(S - b)(S - c)) donde S es el semiperímetro definido por:
S = (a+b+c)/ 2
|#
(define (area-heron a b c)
  (let([S (/ (+ a b c) 2)]) (sqrt (* S (- S a) (- S b) (- S c)) )))

;; Ejercicio 4
;; Definir la función primer-letra la cual recibe una string, (cuyos elementos deben ser letras minúsculas),
;; y devuelve ”Vocal“ si la primera letra es una vocal y ”Consonante“ si es una consonante.
(define (primera-letra s)
        (if (vocal? (first s)) "Vocal" "Consonante"))
;; funcion que regresa #t si la letra recibida pertenece al conjunto de vocales
(define (vocal? c) (if (member c '(#\a #\A #\e #\E #\i #\I #\o #\O #\u #\U)) #t #f ))

;; funcion que obtiene la primera letra de una cadena si existe y la regresa
(define (first string)
        (if (< 0 (string-length string)) (string-ref string 0) (error "cadena vacia")))

;; Ejercicio 5
#|Define la función par?, la cual recibirá un número y devolverá verdadero si el número recibido como parámetro
es par y falso en cualquier otro caso.
|#
(define (par? n)
  (equal? (remainder n 2) 0 ))

;; Ejercicio 6
;; Define la función impar?, la cual recibirá un número y devolverá verdadero si el número recibido como
;; parámetro es impar y falso en cualquier otro caso.
(define (impar? n)
  (not (zero? (remainder n 2))))

;; Ejercicio 7
#|Define la función en-rango-o-fuera?, la cual recibirá tres números, y devolverá verdadero si el primer
argumento es mayor o igual al segundo y menor o igual que el tercero, adicional a esto también devolverá
verdadero si el primer argumento es menor que el segundo menos 10 o si es mayor que el segundo más 10.

Modifique esto para que fuera a b c
|#
(define (en-rango-o-fuera? a b c)
  (or (and (>= a b) (<= a c)) (or (< a (- b 10)) (> a (+ b 10)))) )

;; Ejercicio 8
;; Define la función calculadora, la cual recibirá tres argumentos, una string y dos números. El primer
;; argumento solo podrá tomar los siguientes valores: ”first“, ”second“, ”sum“, ”mul“, ”div-exact“ y ”div“, y
;; dependiendo de cuál de estos se reciba se hará una operación distinta.
(define (calculadora operacion n m)
    (case operacion
     [("first") n]
     [("second") m]
     [("sum")(+ n m)]
     [("mul")(* n m)]
     [("div-exact")(/ n  m)]
     [("div")(quotient n m)]))
