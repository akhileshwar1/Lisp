;; q is how do I represent a heap in lisp.
;; i think a list in lisp is enough because the left and right relationships are abstract that are made on top of this contigious memory locations. This link between far away elements is made I guess by the numbers we use to represent. We could actually store those numbers in every element of the list. THerefore there will be value, left and right in every element.left and right mean the index positions. FOr leaf element we can use x to signal that it it a leaf node.


;;next q is do i need to make an object or anything--a model as such. I don't think so. If you start putting data in that format. then you can apply your fucntions on it.


(defun leaf (lst index str)
  (let ((element (nth index lst)))
    (if (string-equal str "left")
	(values (nth 1 element) (nth (nth 1 element) lst))
	(values (nth 2 element) (nth (nth 2 element) lst)))))


(defun left-f (lst index)
  (if (>= (+ (* 2 index) 1) (length lst))
      (values (+ (* 2 index) 1) -1)
  (let ((element (nth (+ (* 2 index) 1) lst)))
    (values (+ (* 2 index) 1) element))))

(defun right-f (lst index)
  (if (>= (+ (* 2 index) 2) (length lst))
      (values (+ (* 2 index) 2) -1)
  (let ((element (nth (+ (* 2 index) 2) lst)))
    (values (+ (* 2 index) 2) element))))


(defun parent-f (lst index)
  (let ((element (nth (/ (- index 1) 2) lst)))
    (values (/ (- index 1) 2) element)))



(defun max-heapify (lst index)
      (let ((l 0) (r 0) (left 0) (right 0))
        (setf (values l left) (left-f lst index))
        (setf (values r right) (right-f lst index))
	(if (or (= left -1) (= right -1))
	    ;;abort it, leaf reached
	    (print lst)
	    
	(let ((lar index) (largest (nth index lst)))
	  (if (>= left largest)
	      (setf lar l
		    largest left))
	  (print lar)
	  (print largest)
	  
	  (if (>= right largest)
	      (setf lar r
		    largest right))
	  (print lar)
	  (print largest)
	  ;;perform the actual swap
	  (if (/= lar index)
	      (progn (setf (nth lar lst) (nth index lst)
			   (nth index lst) largest)
		     (max-heapify lst lar))
	      (print lst))
	   ))))
		      
	         
	       
;; (multiple-value-bind (l left) (leaf index lst)
					; use q & r here
    
;; )
    
