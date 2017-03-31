(define (diminish sent)
  (if (empty? sent) '()
    (se sent (diminish (bf sent)))))

(define (substrings sent)
  (if (empty? sent) '()
    (se (diminish sent) (substrings (bl sent)))))
