
(define (count2 s)
  (cond ((empty? s) 0)
	(else (+ 1 (count2 (bf s))))))

(define (count3 wd)
  (if (empty? wd)
    0
    (+ 1 (count3 (bf wd)))))
