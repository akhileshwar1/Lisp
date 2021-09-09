(def (last-pair items)
     (if (null? (cdr items))
      seq
     (last-pair (cdr items))))
  

(def (reverse items items2)
     (if (null? items)
      items2
      ((cons (car items) items2)
       (reverse (cdr items) items2))))
	 













