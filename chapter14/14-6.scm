(define (member? pattern sent)
  (if (empty? sent) (equal? pattern '())
    (and (equal? pattern (first sent)) (member? pattern (bf sent)))))
