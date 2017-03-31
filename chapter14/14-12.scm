(define (progressive-squares? sent)
	(cond ((empty? sent) #T)
	      ((empty? (bf sent)) #T)
	      (else (and (= (square (first sent)) (first (bf sent)))
			 (progressive-squares? (bf sent))))))

(define (square num)
  (* num num))
