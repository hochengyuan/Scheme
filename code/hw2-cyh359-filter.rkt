(define (filter pred L)
; deal with null
      (if (NULL? L)
          (quote())
; start filting
      (if (pred (car L))
          (cons (car L) (filter pred (cdr L))) (filter pred (cdr L)))))
;test, it should retrun (2 4 2504)
(filter even? (quote(11 2 3 4 151 12305 2504)))