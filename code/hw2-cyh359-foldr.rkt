( define ( foldr f s l )
;deal with null, if null return s
   ( if ( null? l )s
        
;start to do foldr
( f ( car l ) ( foldr f s ( cdr l )))))

;test, it should return 58
( foldr + 3 (quote( 1 2 3 4 5 6 7 8 9 10 )) )