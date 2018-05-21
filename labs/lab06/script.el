;;; average.el "test-drives" function average().
;;; Output: the average of a sequence of numbers.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Aaron Santucci ajs94
;;; Date: March 10, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; sum() sums the values in an array.         ;;
;;; Receive: anArray, an array of numbers,   ;;
;;;          itsSize, its size.              ;;
;;; Return: the sum of the values in anArray.;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun sum (anArray arraySize)
  (if (vectorp anArray)
      (if (<= arraySize 0)
	  0.0
	(+ (aref anArray (- arraySize 1)) (sum anArray (- arraySize 1))))
     nil)
  )
sum



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; average() computes the average of an array of numbers.;;
;;; Receive: anArray, an array of numbers.              ;;
;;; Return: the average of the numbers.                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun average (anArray)
  (if (vectorp anArray)
      (if (<= (length anArray) 0)
	  0.0
	(/ (sum anArray (length anArray)) (length anArray)))
    nil)
  )
average


;;; Test function sum
(sum [] 0)
0.0

(sum [9.0 8.0 7.0 6.0] 4)
30.0


;;; Test function average
(average [])
0.0

(average [9.0 8.0 7.0 6.0])
7.5




