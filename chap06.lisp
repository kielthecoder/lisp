;; Common LISP: A Gentle Introduction to Symbolic Computation
;; Exercises from Chapter 6: List Data Structures

;; Exercise 6.21
(defun my-subsetp (x y)
  "Return T if X is a subset of Y"
  (set-difference x y))
  
