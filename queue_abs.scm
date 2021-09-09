(define (insert-queue queue element)
  (let ((l-pair (last-pair queue)) (new-element (cons element null)))
    ((set-cdr! l-pair new-element)
     queue)
    )
 )


(define (pop-queue queue element)
    (let ((rem (cdr f-pair)))
      
       (set! queue rem)
       
      )
    )
  
     

(define (last-pair queue)
  (if (null? (cdr queue))
      queue
      (last-pair (cdr queue))
      )
  )


(define (get-pair queue pos)
  (define (get queue n)
    (cond ((null? (cdr queue))
	   (error "not found"))
	  ((= n pos)
	   (car queue))
          (else (get (cdr queue) (+ 1 n)))
	  )
    )
  (get queue 0))


(define (mod-pair queue pos value)
  (define (mod nqueue n)
    (cond ((null? (cdr queue))
	   (error "not found"))
	  ((= n pos)
	   (set-car! nqueue value))
	  (else (mod (cdr queue) (+ 1 n)))
	  )
    )
  (mod queue 0))
