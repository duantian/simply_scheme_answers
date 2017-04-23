(define (append2 a b)
  (cond ((null? a) b)
	(else
	  (cons (car a) (append2 (cdr a) b))))) 

(define (append3 l . rest_l)
  (cond ((null? rest_l) l)
	(else
	  (append2 l (apply append3 rest_l)))))
