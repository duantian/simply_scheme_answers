(define (mystery lst)
  (mystery-helper lst '()))

(define (mystery-helper lst other)
  (if (null? lst)
    other
    (mystery-helper (cdr lst) (cons (car lst) other))))
