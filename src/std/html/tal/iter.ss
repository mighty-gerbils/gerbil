(import :std/interface :std/contract :std/iter :std/generic ./toplevel)
(export #t)

;; Tangled from README.org

(defstruct tal:repeat (iter next-item index)
  constructor: :init! transparent: #t)

(defmethod {:init! tal:repeat}
  (lambda (self seq)
    (def itr (iter seq))
    (using (self :- tal:repeat)
      (set! self.index -1)
      (set! self.iter itr)
      (set! self.next-item (iter-next! itr)))))

(def (tal:repeat-next! self)
  (if (iterator? self) (set! self (iterator-e self))) 
  (using (self : tal:repeat)
    (def item self.next-item)
    (set! self.index (1+ self.index))
    (set! self.next-item (iter-next! self.iter))
    item))

(defmethod (:iter (self tal:repeat)) (make-iterator self tal:repeat-next!))

(interface Repeat
  (index) ;; repetition number, starting from zero.
  (number) ;; repetition number, starting from one. 
  (even? )  ;; true for even-indexed repetitions (0, 2, 4, …).
  (odd?) ;; true for odd-indexed repetitions (1, 3, 5, …).
  (start?) ;; true for the starting repetition (index 0).
  (end?)  ;; true for the ending, or final, repetition.
 ; (first?)  ;; true for the first item in a group - see note below
  ;(last?)  ;; true for the last item in a group - see note below
  ;; length- - length of the sequence, which will be the total number of repetitions "
  (letter)  ;; repetition number as a lower-case letter: “a” - “z”,
	    ;; “aa” - “az”, “ba” - “bz”, …, “za” - “zz”, “aaa” -
	    ;; “aaz”, and so forth.

  (Letter)  ;; upper-case version of - letter- .

  (roman)  ;; repetition number as a lower-case roman numeral: “i”,
	   ;; “ii”, “iii”, “iv”, “v”, etc.

  ;; upper-case version of - roman- .
  (Roman))


(defmethod {index tal:repeat} tal:repeat-index)
(defmethod {number tal:repeat} (lambda (r) (1+ (tal:repeat-index r))))
(defmethod {even? tal:repeat} (lambda (r) (even? (tal:repeat-index r)))) 
(defmethod {odd? tal:repeat} (lambda (r) (odd? (tal:repeat-index r)))) 
(defmethod {start? tal:repeat} (lambda (r) (= 0 (tal:repeat-index r))))
(defmethod {end? tal:repeat} (lambda (r) (eq? iter-end (tal:repeat-next-item r))))
(def (integer->letters number (base-char #\a))
  (def bn (char->integer base-char))
  (list->string
   (reverse 
    (let lp ((number number))
      (set! number (1- number))
      ;(displayln "Get Num:" number )
      (if (< number 0) []
	  (cons (integer->char (+ bn (modulo number 26)))
		(lp (floor (/ number 26)))))))))

(defmethod {letter tal:repeat}
  (lambda (r) (integer->letters (1+ (tal:repeat-index r)))))
    
(defmethod {Letter tal:repeat}
  (lambda (r) (integer->letters (1+ (tal:repeat-index r)) #\A)))

(def roman-decimal
  '(("M"  . 1000)
    ("CM" . 900)
    ("D"  . 500)
    ("CD" . 400)
    ("C"  . 100)
    ("XC" .  90)
    ("L"  .  50)
    ("XL" .  40)
    ("X"  .  10)
    ("IX" .   9)
    ("V"  .   5)
    ("IV" .   4)
    ("I"  .   1)))

(def (integer->roman value)
  (apply string-append
         (let loop ((v value)
                    (decode roman-decimal))
           (let ((r (caar decode))
                 (d (cdar decode)))
             (cond
              ((= v 0) '())
              ((>= v d) (cons r (loop (- v d) decode)))
              (else (loop v (cdr decode))))))))

(defmethod {roman tal:repeat} 
  (lambda (r) (string-downcase (integer->roman (1+ (tal:repeat-index r))))))

(defmethod {Roman tal:repeat}
  (lambda (r) (integer->roman (1+ (tal:repeat-index r)))))
