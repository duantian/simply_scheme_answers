;9.10 In Chapter 2 we used a function called appearances that returns the number of times its first argument appears
;as a member of its second argument. Implement appearances.

(define (appearances pattern sent)
  (count (keep (lambda (x)
		 (equal? x pattern)) sent)))
