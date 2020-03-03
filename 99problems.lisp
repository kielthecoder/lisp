;; Ninety-Nine Lisp Problems
;; from https://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html

;; P01 - Find the last box of a list

(defun my-last (lst)
  (if (null (cdr lst))
      lst
      (my-last (cdr lst))))

;;