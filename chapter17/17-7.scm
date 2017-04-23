(define (sent2 a b)
  (cond ((word? a) (sent2 (list a) b))
	((word? b) (sent2 a (list b)))
	(else
	  (append a b)))) 

(define (sent3 l . rest_l)
  (cond ((null? rest_l) l)
	(else
	  (sent2 l (apply sent3 rest_l)))))
