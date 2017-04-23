(define (max2 a b)
  (if (> b a) b a))

(define (max1 num . rest_num)
  (cond ((null? rest_num) num)
	(else (max2 num (apply max1 rest_num)))))

(define (increasing? number . rest-of-numbers)
  (cond ((null? rest-of-numbers) #t)
	((> (car rest-of-numbers) number)
	 (apply increasing? rest-of-numbers))
	(else #f)))
