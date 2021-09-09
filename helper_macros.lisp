(defmacro for (initial n step &body body)
  `(do ((k ,initial (+ k ,step))) ((> k ,n)) (progn ,@body)))


(defmacro while (condition &body body)
  `(loop while ,condition do (progn ,@body)))


(defun prune (test tree)
  (labels ((rec (tree acc)
	     (cond ((null tree) (nreverse acc))
		   ((consp (car tree))
		    (rec (cdr tree)
			 (cons (rec (car tree) nil) acc)))
		   (t (rec (cdr tree)
			   (if (funcall test (car tree))
			       acc
			       (cons (car tree) acc)))))))
    (rec tree nil)))





  
(defmacro for-exp (initial n step i j &body body)
  (break)
  `(do ((k ,initial (+ k ,step))) ((> k ,n)) (progn ,@body)))



(defmacro our-when (test &body body)
  `(if ,test
       (progn ,@body)))
