(define (remdup sent)
  (if (empty? sent) 
    '()
    (let ((smaller (remdup (bf sent))))
      (if (member? (first sent) smaller) smaller
	(se (first sent) smaller)
       ))))
