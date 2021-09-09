(define (make-point x y) (cons x y))


(define (x-point z)
  (car z))

(define (y-point z)
  (cdr z))


(define (make-segment a b)
  (cons a b))

(define (start-segment z)
  (car z))

(define (end-segment z)
        (cdr z))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define (midpoint-segment z)
  (let ( (x (/ (-(cdr (cdr z)) (car (cdr z))) 2))
	 (y (/ (-(cdr (car z)) (car (car z))) 2)) )
    (let ((z (make-point x y)))
	 (print-point z)) )
  )


(define (make-rectangle x y)
  (cons x y))

(define (x-rectangle z)
  (car z))

(define (y-rectangle z)
  (cdr z))

(define (area-rectangle z)
  (let ((l (- (car(car(car z))) (car(cdr(car z)))))
	(b (- (car(car(cdr z))) (cdr(car(cdr z))))) )
    (* l b ))
  )
