#lang sicp
;Exercise 1.2.  
;Translate the following expression into prefix form
;See https://mitp-content-server.mit.edu/books/content/sectbyfn/books_pres_0/6515/sicp.zip/full-text/book/book-Z-H-10.html#%_sec_1.1.6

(/ (+ 5 
    4
    (- 2 (- 3 (+ 6 (/ 4 5))))) 
  (* 3 
    (- 6 2) 
    (- 2 7)))