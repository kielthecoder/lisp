;; Ninety-Nine Lisp Problems
;; from https://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html

;; P01 - Find the last box of a list

(defun my-last (lst)
  (if (null (cdr lst))
      lst
      (my-last (cdr lst))))

;; P02 - Find the last but one box of a list

(defun my-last-but-one (lst)
  (if (null (cdr (cdr lst)))
      lst
      (my-last-but-one (cdr lst))))

;; P03 - Find the K'th element of a list

(defun element-at (lst k)
  (if (null lst)
      nil
      (if (= k 1)
	  (car lst)
	  (element-at (cdr lst) (1- k)))))

;; P04 - Find the number of elements of a list

(defun my-length (lst)
  (if (null lst)
      0
      (1+ (my-length (cdr lst)))))

;; P05 - Reverse a list

(defun my-reverse (lst)
  (labels ((rec (l m)
	     (if (null l)
		 m
		 (rec (cdr l) (cons (car l) m)))))
    (rec lst nil)))
