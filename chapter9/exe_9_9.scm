;9.9 Write a procedure common–words that takes two sentences as arguments and returns a sentence containing only
;those words that appear both in the first sentence and in the second sentence.

(define (common-words sent1 sent2)
  (keep (lambda (x)
	  (member? x sent2)) sent1))
