(define (same-shape? s1 s2)
  (cond ((and (empty? s1) (empty? s2)) #T)
	((or (empty? s1) (empty? s2)) #F)
	(else (and (= (count (first s1)) (count (first s2))) (same-shape? (bf s1) (bf s2))))))
