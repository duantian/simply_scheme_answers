(define (before-in-list? l a b)
  (cond ((null? l) #F)
	((equal? a (car l)) (member b (cdr l)))
	((equal? b (car l)) #F)
	(else (before-in-list? (cdr l) a b))))
