(define (mapfun FL L)
  ;deal with null
  (cond ((null? L) (quote()))
        ((null? FL) (quote()))

  ;start to mapfun
  (else (cons ((car FL)(car L))
        (mapfun (cdr FL)(cdr L))))))


; test: it should return (b c)
(mapfun (list cadr car) (quote((A B) (C D) (E F) (G H))))