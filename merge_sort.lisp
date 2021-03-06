(load "helper_macros.lisp")


(defun merge_sort (lst p r)
  (if (< p r)
      (let ((q (floor (/ (+ p r) 2))))
	 (merge_sort lst p q)
	  (merge_sort lst (+ q 1) r)
	(merger lst p q r))
      lst))
  
(defun merger (lst p q m)
  (let ((n1 (+ (- q p) 1)) (n2 (- m q)) (i 0) (j 0))
   (let ((L (loop for x from p to q collect (nth x lst)))
	 (R (loop for y from (+ q 1) to m  collect (nth y lst))))
      (append L (list 'x))
     (append R (list 'x))
     (setf i 0)
     (setf j 0)
     (break)
     (labels ((inc (k)
		  (if (<= k m) 
		      (progn (if  (<= (nth i L) (nth j R))
		              (progn (setf (nth k lst) (nth i L))
			      (setq i (+ i 1)))
		              (progn (setf (nth k lst) (nth j R))
				     (setq j (+ j 1))))
			     (inc (+ k 1)))
		      )))
		  
       (inc p))
		  
       )
    
           ))





;(loop for k from 0 to r when (< (nth i L) (nth j R)) do (progn (setf (nth k lst) (nth i L))
;								      (setq i (+ i 1)))
	     ;unless (< (nth i L) (nth j R)) do (progn (setf (nth k lst) (nth j R))
	;						(setq j (+ j 1)))

	        
