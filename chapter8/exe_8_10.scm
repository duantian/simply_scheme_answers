;8.10 Write a predicate true–for–all? that takes two arguments, a predicate procedure and a sentence. It should
;return #t if the predicate argument returns true for every word in the sentence.
;> (true–for–all? even? '(2 4 6 8))
;#T
;> (true–for–all? even? '(2 6 3 4))
;#F


(define (true-for-all? f s)
  (= (count s) (count (keep f s))))
