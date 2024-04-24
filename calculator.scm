; Calculadora básica en Scheme

; Función para sumar dos números
(define (suma a b)
  (+ a b))

; Función para restar dos números
(define (resta a b)
  (- a b))

; Función para multiplicar dos números
(define (multiplicacion a b)
  (* a b))

; Función para dividir dos números
(define (division a b)
  (if (not (= b 0))
      (/ a b)
      "Error: No se puede dividir entre cero."))

; Solicita los números al usuario
(display "Introduce el primer número: ")
(define num1 (read))
(display "Introduce el segundo número: ")
(define num2 (read))

; Muestra las opciones disponibles
(display "Operaciones disponibles:\n")
(display "1. Suma\n")
(display "2. Resta\n")
(display "3. Multiplicación\n")
(display "4. División\n")

; Elige una opción
(display "Elige una opción (1/2/3/4): ")
(define opcion (read))

; Realiza la operación seleccionada
(cond
  ((= opcion 1) (display (string-append "Resultado de la suma: " (number->string (suma num1 num2)))))
  ((= opcion 2) (display (string-append "Resultado de la resta: " (number->string (resta num1 num2)))))
  ((= opcion 3) (display (string-append "Resultado de la multiplicación: " (number->string (multiplicacion num1 num2)))))
  ((= opcion 4) (display (string-append "Resultado de la división: " (division num1 num2))))
  (else (display "Opción no válida. Introduce una opción válida (1/2/3/4).\n")))
