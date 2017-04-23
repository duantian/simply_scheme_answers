(define (member2 x l)
  (cond ((null? l) #F)
	((equal? x (car l)) #T)
	(else (member2 x (cdr l)))))
