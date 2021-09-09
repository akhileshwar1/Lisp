
(defmacro inc (x)
	   `(labels  ((incr (x)
		      (+ x 1)))
	      (incr ,x)))

(defmacro while (condition &body body)
  `(loop while ,condition do (progn ,@body)))



