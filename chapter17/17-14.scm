(define (branch index lst)
  (cond ((= (length index) 1) (list-ref lst (- (car index) 1)))
	(else (branch (cdr index) (list-ref lst (- (car index) 1))))))
