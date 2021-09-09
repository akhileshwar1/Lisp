(define (player name weight position)
     (cons name (cons weight position)))


(define (assembly player1 player2 player3 player4)
  (cons player1 (cons player2 (cons player3 (cons player4 nil)))))

(define (team player1 player2)
  (cons player1 (cons player2 nil)))


(define (access-list n items)
  (if (= n 0)
      (car items)
      (access-list (- n 1) (cdr items)))
  )


(define (length items)
  (if (null? items)
      (0)
      (+  1 (length (cdr items)))
      )
  )
      
(define (weight items)
  (if (null? items)
      (0)
      (+ (car(cdr(car items))) (weight (cdr items)))
      )
  )

(define (pair_seq team1 team2)
  (cons team1 team2)
  )

(define (min_weight_pair pair)
  (let ((a (weight (car pair))) (b (weight (cdr pair))))
    (- b a)
    )
  )

(define (selector assembly)
  (if (null? assembly)
      (0)
      
  
