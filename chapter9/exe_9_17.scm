;9.17 Write keep in terms of every and accumulate.

(define (new-keep pred n)
  (accumulate (if (sentence? n) sentence word)
	      (every (lambda (x) (if (pred x) x '())) n)))
