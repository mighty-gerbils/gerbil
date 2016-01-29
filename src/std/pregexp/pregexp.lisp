;Portable regular expressions for Common Lisp
;Dorai Sitaram

(defparameter *pregexp-version* 20090325) ;last change

(defparameter *pregexp-comment-char* #\;)

(defparameter *pregexp-space-sensitive-p* t)

(defmacro pregexp-recur (name varvals &rest body)
  `(labels ((,name ,(mapcar #'first varvals) ,@body))
     (,name ,@(mapcar #'second varvals))))

(defun pregexp-read-pattern (s i n)
  (if (>= i n) (values `(:or (:seq)) i)
    (let ((branches '()))
      (loop
        (when (or (>= i n)
                  (char= (char s i) #\)))
          (return (values (cons :or (nreverse branches)) i)))
        (multiple-value-bind (branch1 i1)
          (pregexp-read-branch
            s (if (char= (char s i) #\|) (+ i 1) i) n)
          (push branch1 branches)
          (setq i i1))))))

(defun pregexp-read-branch (s i n)
  (let ((pieces '()))
    (loop
      (cond ((or (>= i n)
            (member (char s i) '(#\| #\))))
             (return (values (cons :seq (nreverse pieces)) i)))
            (t (multiple-value-bind (pc i-new)
                 (pregexp-read-piece s i n)
                 (push pc pieces)
                 (setq i i-new)))))))

(defun pregexp-read-piece (s i n)
  (let ((c (char s i))) (incf i)
    (case c
      (#\^ (values :bos i))
      (#\$ (values :eos i))
      (#\. (pregexp-wrap-quantifier-if-any :any s i n))
      (#\[ (let ((negp nil))
             (when (and (< i n)
                        (char= (char s i) #\^))
               (incf i)
               (setq negp t))
             (when (< i n)
               (multiple-value-bind (chars i1)
                 (pregexp-read-char-list s i n)
                 (pregexp-wrap-quantifier-if-any
                   (if negp (list :neg-char chars) chars)
                   s i1 n)))))
      (#\( (multiple-value-bind (re i1)
             (pregexp-read-subpattern s i n)
             (pregexp-wrap-quantifier-if-any
               re s i1 n)))
      (#\\ (multiple-value-bind (m i1)
             (pregexp-read-escaped-number s i n)
             (if m
               (pregexp-wrap-quantifier-if-any
                 (list :backref m) s i1 n)
               (multiple-value-bind (c i1)
                 (pregexp-read-escaped-char s i)
                 (if c
                   (pregexp-wrap-quantifier-if-any c s i1 n)
                   (error "pregexp-read-piece: backslash"))))))
      (t (if (or *pregexp-space-sensitive-p*
                 (and (not (pregexp-whitespacep c))
                      (not (char= c *pregexp-comment-char*))))
           (pregexp-wrap-quantifier-if-any c s i n)
           (let ((in-comment-p nil))
             (loop
               (cond (in-comment-p
                       (when (char= c #\newline)
                         (setq in-comment-p nil)))
                     ((pregexp-whitespacep c) t)
                     ((char= c *pregexp-comment-char*)
                      (setq in-comment-p t))
                     (t (decf i) (return (values :empty i))))
               (when (>= i n) (return (values :empty i)))
               (setq c (char s i))
               (incf i))))))))

(defun pregexp-read-escaped-number (s i n)
  (let ((r '()) (c nil))
    (loop
      (when (or (>= i n)
                (not (digit-char-p (setq c (char s i)))))
        (return r))
      (incf i)
      (push c r))
    (when r
      (values (read-from-string (concatenate 'string (nreverse r)))
              i))))

(defun pregexp-read-escaped-char (s i)
  (let ((c (char s i)))
    (values
      (case c
        (#\b :wbdry)
        (#\B :not-wbdry)
        (#\d :digit)
        (#\D (list :neg-char :digit))
        (#\n #\newline)
        (#\r #\return)
        (#\s :space)
        (#\S (list :neg-char :space))
        (#\t #\tab)
        (#\w :word)
        (#\W (list :neg-char :word))
        (t c))
      (+ i 1))))

(defun pregexp-read-posix-char-class (s i n)
  (let ((r '()) (negp nil))
    (loop
      (when (>= i n) (error "pregexp-read-posix-char-class"))
      (let ((c (char s i))) (incf i)
        (cond ((char= c #\^) (setq negp t))
              ((alpha-char-p c) (push c r))
              ((char= c #\:)
               (when (or (>= i n)
                         (not (char= (char s i) #\])))
                 (error "pregexp-read-posix-char-class"))
               (incf i)
               (return))
              (t (error "pregexp-read-posix-char-class")))))
    (let ((posix-class
            (intern (string-upcase (concatenate 'string (nreverse r)))
                    :keyword)))
      (values
        (if negp (list :neg-char posix-class) posix-class)
        i))))

(defun pregexp-read-cluster-type (s i)
  (let ((c (char s i))) (incf i)
    (case c
      (#\?
       (setq c (char s i)) (incf i)
       (case c
         (#\: (values '() i))
         (#\= (values `(:lookahead) i))
         (#\! (values `(:neg-lookahead) i))
         (#\> (values `(:no-backtrack) i))
         (#\< (setq c (char s i)) (incf i)
          (case c
            (#\= (values `(:lookbehind) i))
            (#\! (values `(:neg-lookbehind) i))
            (t (error "pregexp-read-cluster-type"))))
         (t (let ((r '()) (invp nil))
              (loop
                (case c
                  (#\- (setq invp t))
                  (#\i (push (if invp :case-sensitive
                               :case-insensitive) r)
                   (setq invp nil))
                  (#\x (setq *pregexp-space-sensitive-p* invp)
                   (setq invp nil))
                  (#\: (return (values (nreverse r) i)))
                  (t (error "pregexp-read-cluster-type")))
                (setq c (char s i))
                (incf i))))))
      (t (decf i) (values '(:sub) i)))))

(defun pregexp-read-subpattern (s i n)
  (let ((remember-space-sensitive-p *pregexp-space-sensitive-p*))
    (multiple-value-bind (ctyp i1)
      (pregexp-read-cluster-type s i)
      (multiple-value-bind (re i2)
        (pregexp-read-pattern s i1 n)
        (setq *pregexp-space-sensitive-p* remember-space-sensitive-p)
        (cond ((and (< i2 n)
                    (char= (char s i2) #\)))
               (incf i2)
               (dolist (ct ctyp)
                 (setq re (list ct re)))
               (values re i2))
              (t (error "pregexp-read-subpattern")))))))

(defun pregexp-wrap-quantifier-if-any (re s i n)
  (loop
    (when (>= i n) (return (values re i)))
    (let ((c (char s i))) (incf i)
      (if (and (pregexp-whitespacep c) (not *pregexp-space-sensitive-p*)) t
        (case c
          ((#\* #\+ #\? #\{)
           (let* ((new-re (list :between nil 1 1 re)))
             ; (:between non-greedy at-least at-most re)
             (case c
               (#\* (setf (third new-re) 0
                          (fourth new-re) nil))
               (#\+ (setf (fourth new-re) nil))
               (#\? (setf (third new-re) 0))
               (#\{ (multiple-value-bind (p q i1)
                      (pregexp-read-nums s i n)
                      (setf (third new-re) p
                            (fourth new-re) q
                            i i1))))
             (loop
               (when (>= i n) (return))
               (let ((c (char s i))) (incf i)
                 (cond ((and (pregexp-whitespacep c)
                             (not *pregexp-space-sensitive-p*)) t)
                       ((char= c #\?)
                        (setf (second new-re) t)
                        (return))
                       (t (decf i) (return)))))
             (return (values new-re i))))
          (t (decf i) (return (values re i))))))))

(defun pregexp-whitespacep (c)
  (or (char= c #\space) (char= c #\tab)
      (not (graphic-char-p c))))

(defun pregexp-read-nums (s i n)
  (let ((p '()) (q '()) (reading 1))
    (loop
      (when (>= i n) (error "pregexp-read-nums: unmatched left brace"))
      (let ((c (char s i)))
        (cond ((digit-char-p c)
               (if (= reading 1)
                 (push c p)
                 (push c q))
               (incf i))
              ((and (pregexp-whitespacep c) (not *pregexp-space-sensitive-p*))
               (incf i))
              ((and (char= c #\,) (= reading 1))
               (incf i) (incf reading))
              ((char= c #\})
               (incf i)
               (setq p (read-from-string (concatenate 'string (nreverse p)) nil)
                     q (read-from-string (concatenate 'string (nreverse q)) nil))
               (return
                 (cond ((and (not p) (= reading 1)) (values 0 nil i))
                       ((= reading 1) (values p p i))
                       (t (values p q i)))))
              (t (error "pregexp-read-nums: left brace must be followed by number")))))))

(defun pregexp-read-char-list (s i n)
  (let ((r '()))
    (loop
      (when (>= i n) (error "pregexp-read-char-list: char class ended too soon"))
      (let ((c (char s i))) (incf i)
        (case c
          (#\] (if (null r)
                 (progn (push c r) (incf i))
                 (return r)))
          (#\\ (multiple-value-bind (c2 i2)
                 (pregexp-read-escaped-char s i)
                 (when (not c2)
                   (error "pregexp-read-char-list: backslash"))
                 (push c2 r)
                 (setq i i2)))
          (#\- (if (or (null r)
                       (and (< i n)
                            (char= (char s i) #\])))
                 (push #\- r)
                 (let ((c-1 (car r)))
                   (if (characterp c-1)
                     (progn
                       (pop r)
                       (push `(:char-range ,c-1 ,(char s i)) r)
                       (incf i))
                     (push #\- r)))))
          (#\[ (if (char= (char s i) #\:)
                 (multiple-value-bind (c i1)
                   (pregexp-read-posix-char-class s (1+ i) n)
                   (push c r)
                   (setq i i1))
                 (push #\[ r)))
          (t (push c r)))))
    (values (cons :one-of-chars
                  (nreverse r))
            i)))

(defun pregexp-string-match (s1 s i n sk fk)
  (let ((n1 (length s1)))
    (if (> n1 n) (funcall fk)
      (let ((j 0) (k i) (failp nil))
        (loop
          (cond ((>= j n1) (return))
                ((>= k n) (return (setq failp t)))
                ((char= (char s1 j) (char s k))
                 (incf j) (incf k))
                (t (return (setq failp t)))))
        (if failp (funcall fk)
          (funcall sk k))))))

(defun pregexp-char-word? (c)
 (or (alpha-char-p c) (digit-char-p c) (char= c #\_)))

(defun pregexp-at-word-boundary-p (s i n)
  (or (= i 0)
      (>= i n)
      (let* ((c-i (char s i))
            (c-i-minus-1 (char s (- i 1)))
            (c-i-is-word-p (pregexp-check-if-in-char-class-p c-i :word))
            (c-i-minus-1-is-word-p (pregexp-check-if-in-char-class-p c-i-minus-1 :word)))
        (or (and c-i-is-word-p (not c-i-minus-1-is-word-p))
            (and (not c-i-is-word-p) c-i-minus-1-is-word-p)))))

(defun pregexp-check-if-in-char-class-p (c char-class) ;check thoroughly
  (case char-class
    (:any (not (char= c #\newline)))
    (:alnum (or (alpha-char-p c) (digit-char-p c)))
    (:alpha (alpha-char-p c))
    (:ascii (< (char-code c) 128))
    (:blank (or (char= c #\space) (char= c #\tab)))
    (:cntrl (< (char-code c) 32))
    (:digit (digit-char-p c))
    (:graph (and (pregexp-check-if-in-char-class-p c :print)
                 (not (pregexp-whitespacep c))))
    (:lower (lower-case-p c))
    (:print (>= (char-code c) 32))
    (:punct (and (pregexp-check-if-in-char-class-p c :print)
                 (not (or (pregexp-whitespacep c)
                          (alpha-char-p c)
                          (digit-char-p c)))))
    (:space (pregexp-whitespacep c))
    (:upper (upper-case-p c))
    (:word (or (alpha-char-p c) (digit-char-p c) (char= c #\_)))
    (:xdigit (or (digit-char-p c)
                 (member c '(#\a #\b #\c #\d #\e #\f) :test #'char-equal)))
    (t (error "pregexp-check-if-in-char-class-p"))))

(defun pregexp-make-backref-list (re)
  (if (consp re)
    (let ((re1 (car re))
          (rest-backrefs (pregexp-make-backref-list (cdr re))))
      (if (eq re1 :sub)
        (cons (cons re nil) rest-backrefs)
        (append (pregexp-make-backref-list re1) rest-backrefs)))
    '()))

(defun pregexp-match-positions-aux (re s sn start n i)
  (let* ((backrefs (pregexp-make-backref-list re))
         (case-sensitive-p t))
    (flet ((char=1 (c1 c2)
                   (if case-sensitive-p
                     (char= c1 c2)
                     (char-equal c1 c2)))
           (char<=1 (c1 c2 c3)
                    (if case-sensitive-p
                      (char<= c1 c2 c3)
                      (char-not-greaterp c1 c2 c3))))
      (pregexp-recur
        match-loop ((re re) (i i) (sk #'identity) (fk (lambda () nil)))
        (cond ((eq re :bos)
               (if (= i start) (funcall sk i) (funcall fk)))
              ((eq re :eos)
               (if (>= i n) (funcall sk i) (funcall fk)))
              ((eq re :empty) (funcall sk i))
              ((eq re :wbdry)
               (if (pregexp-at-word-boundary-p s i n)
                 (funcall sk i)
                 (funcall fk)))
              ((eq re :not-wbdry)
               (if (pregexp-at-word-boundary-p s i n)
                 (funcall fk)
                 (funcall sk i)))
              ((and (characterp re) (< i n))
               (if (char=1 (char s i) re)
                 (funcall sk (1+ i))
                 (funcall fk)))
              ((and (not (consp re)) (< i n))
               (if (pregexp-check-if-in-char-class-p (char s i) re)
                 (funcall sk (1+ i))
                 (funcall fk)))
              ((consp re)
               (case (car re)
                 (:char-range
                   (if (>= i n) (funcall fk)
                     (if (char<=1 (second re) (char s i) (third re))
                       (funcall sk (1+ i))
                       (funcall fk))))
                 (:one-of-chars
                   (if (>= i n) (funcall fk)
                     (pregexp-recur
                       one-of-chars-loop ((chars (rest re)))
                       (if (null chars) (funcall fk)
                         (match-loop (first chars) i sk
                                     (lambda ()
                                       (one-of-chars-loop (rest chars))))))))
                 (:neg-char
                   (if (>= i n) (funcall fk)
                     (match-loop (second re) i
                                 (lambda (i1)
                                   (declare (ignore i1))
                                   (funcall fk))
                                 (lambda () (funcall sk (1+ i))))))
                 (:seq
                   (pregexp-recur
                     seq-loop ((res (rest re)) (i i))
                     (if (null res) (funcall sk i)
                       (match-loop (first res) i
                                   (lambda (i1) (seq-loop (rest res) i1))
                                   fk))))
                 (:or
                   (pregexp-recur
                     or-loop ((res (rest re)))
                     (if (null res) (funcall fk)
                       (match-loop (first res) i
                                   (lambda (i1)
                                     (or (funcall sk i1)
                                         (or-loop (rest res))))
                                   (lambda ()
                                     (or-loop (cdr res)))))))
                 (:backref
                   (let* ((cell (nth (second re) backrefs))
                          (backref
                            (cond (cell (cdr cell))
                                  (t (error "pregexp-match-positions-aux: non-existent backref ~s" re)
                                     ;FIXME
                                     nil))))
                     (if backref
                       (pregexp-string-match
                         (subseq s (car backref) (cdr backref))
                         s i n sk fk)
                       (funcall sk i))))
                 (:sub
                   (match-loop (second re) i
                               (lambda (i1)
                                 (setf (cdr (assoc re backrefs)) (cons i i1))
                                 (funcall sk i1))
                               fk))
                 (:lookahead
                   (let ((found-it-p
                           (match-loop (second re) i
                                       #'identity
                                       (lambda () nil))))
                     (if found-it-p (funcall sk i) (funcall fk))))
                 (:neg-lookahead
                   (let ((found-it-p
                           (match-loop (second re) i
                                       #'identity
                                       (lambda () nil))))
                     (if found-it-p (funcall fk) (funcall sk i))))
                 (:lookbehind
                   (let ((n-actual n) (sn-actual sn))
                     (setq n i sn i)
                     (let ((found-it-p
                             (match-loop `(:seq (:between nil 0 nil :any)
                                                ,(second re) :eos)
                                         0
                                         #'identity
                                         (lambda () nil))))
                       (setq n n-actual sn sn-actual)
                       (if found-it-p (funcall sk i) (funcall fk)))))
                 (:neg-lookbehind
                   (let ((n-actual n) (sn-actual sn))
                     (setq n i sn i)
                     (let ((found-it-p
                             (match-loop `(:seq (:between nil 0 nil :any)
                                                ,(second re) :eos)
                                         0
                                         #'identity
                                         (lambda () nil))))
                       (setq n n-actual sn sn-actual)
                       (if found-it-p (funcall fk) (funcall sk i)))))
                 (:no-backtrack
                   (let ((found-it-p
                           (match-loop (second re) i #'identity (lambda () nil))))
                     (if found-it-p
                       (funcall sk found-it-p)
                       (funcall fk))))
                 ((:case-sensitive :case-insensitive)
                  (let ((old-case-sensitive-p case-sensitive-p))
                    (setq case-sensitive-p
                          (eq (first re) :case-sensitive))
                    (match-loop (second re) i
                                (lambda (i1)
                                  (setq case-sensitive-p old-case-sensitive-p)
                                  (funcall sk i1))
                                (lambda ()
                                  (setq case-sensitive-p old-case-sensitive-p)
                                  (funcall fk)))))
                 (:between
                   (let* ((non-greedy-p (second re))
                          (p (third re))
                          (q (fourth re))
                          (re (fifth re))
                          (could-loop-infinitely-p
                            (and (not non-greedy-p) (not q)))
                          (q (and q (- q p))))
                     (pregexp-recur
                       p-loop ((k 0) (i i))
                       (if (< k p)
                         (match-loop re i
                                     (lambda (i1)
                                       (if (and could-loop-infinitely-p
                                                (= i1 i))
                                         (error "pregexp-match-positions-aux: greedy quantifier operand could be empty")
                                         (p-loop (1+ k) i1)))
                                     fk)
                         (pregexp-recur
                           q-loop ((k 0) (i i))
                           (let ((fk (lambda () (funcall sk i))))
                             (if (and q (>= k q)) (funcall fk)
                               (if (not non-greedy-p)
                                 (match-loop re i
                                             (lambda (i1)
                                               (if (and could-loop-infinitely-p
                                                        (= i1 i))
                                                 (error "pregexp-match-positions-aux greedy quantifier operand could be empty"))
                                               (or (q-loop (1+ k) i1)
                                                   (funcall fk)))
                                             fk)
                                 (or (funcall fk)
                                     (match-loop re i
                                                 (lambda (i1)
                                                   (q-loop (1+ k) i1))
                                                 fk))))))))))
                 (t (error "pregexp-match-positions-aux"))))
              ((>= i n) (funcall fk))
              (t (error "pregexp-match-positions-aux")))))
    (setq backrefs (mapcar #'cdr backrefs))
    (and (car backrefs) backrefs)))

(defun pregexp-replace-aux (str ins n backrefs)
  (let ((r "") (i 0))
    (loop
      (when (>= i n) (return r))
      (let ((c (char ins i)))
        (incf i)
        (if (char= c #\\)
          (multiple-value-bind (m i1)
            (pregexp-read-escaped-number ins i n)
            (when (and (not i1) (char= (char str i) #\&))
              (setq m 0)
              (setq i1 (1+ i)))
            (cond (m (let ((backref (nth m backrefs)))
                       (when backref
                         (setq r (concatenate 'string r
                                   (subseq str (car backref) (cdr backref)))))
                       (setq i i1)))
                  (t (let ((c2 (char ins i)))
                       (incf i)
                       (unless (char= c2 #\$)
                         (setq r (concatenate 'string r (string c2))))))))
          (setq r (concatenate 'string r (string c))))))))

(defun pregexp (s)
  (setq *pregexp-space-sensitive-p* t) ;in case it got corrupted
  (list :sub (pregexp-read-pattern s 0 (length s))))

(defun pregexp-match-positions (pat str &optional start end)
  (when (stringp pat) (setq pat (pregexp pat)))
  (unless (consp pat)
    (error "pregexp-match-positions: pattern ~s must be compiled or string regexp"
           pat))
  (let ((str-len (length str)))
    (when (not start) (setq start 0))
    (when (or (not end) (> end str-len)) (setq end str-len))
    (let ((i start))
      (loop
        (unless (<= i end) (return nil))
        (let ((res (pregexp-match-positions-aux
                     pat str str-len start end i)))
          (if res (return res)
            (incf i)))))))

(defun pregexp-match (pat str &optional start end)
  (let ((index-pairs
          (pregexp-match-positions pat str start end)))
    (and index-pairs
         (mapcar
           (lambda (index-pair)
             (and index-pair
                  (subseq str (car index-pair) (cdr index-pair))))
           index-pairs))))

(defun pregexp-split (pat str)
  ;split str into substrings, using pat as delim
  (let ((r '()) (n (length str)) (i 0) (picked-up-one-undelimited-char-p nil) it)
    (loop
      (cond ((>= i n) (return (nreverse r)))
            ((setq it (car (pregexp-match-positions pat str i n)))
             (let ((j (car it)) (k (cdr it)))
               (cond ((= j k) (push (subseq str i (1+ j)) r)
                              (setq i (1+ k))
                              (setq picked-up-one-undelimited-char-p t))
                     ((and (= j i) picked-up-one-undelimited-char-p)
                      (setq i k)
                      (setq picked-up-one-undelimited-char-p nil))
                     (t (push (subseq str i j) r)
                        (setq i k)
                        (setq picked-up-one-undelimited-char-p nil)))))
            (t (push (subseq str i n) r)
               (setq i n))))))

(defun pregexp-replace (pat str ins)
  (let* ((n (length str))
         (pp (pregexp-match-positions pat str 0 n)))
    (if (not pp) str
      (let ((ins-len (length ins))
            (m-i (caar pp))
            (m-n (cdar pp)))
        (concatenate 'string
          (subseq str 0 m-i)
          (pregexp-replace-aux str ins ins-len pp)
          (subseq str m-n n))))))

(defun pregexp-replace* (pat str ins)
  ;return str with every occurrence of pat replaced by ins
  (when (stringp pat) (setq pat (pregexp pat)))
  (let ((n (length str))
        (ins-len (length ins))
        (i 0)
        (r ""))
    (loop
      ;i = index in str to start replacing from
      ;r = already calculated prefix of answer
      (when (>= i n) (return r))
      (let ((pp (pregexp-match-positions pat str i n)))
        (when (not pp)
          (return
            (if (= i 0)
              ;this implies pat didn't match str at all,
              ;so let's return original str
              str
              (concatenate 'string r (subseq str i n)))))
        (setq r (concatenate 'string r
                  (subseq str i (caar pp))
                  (pregexp-replace-aux str ins ins-len pp)))
        (setq i (cdar pp))))))

(defun pregexp-quote (s)
  (let ((i (- (length s) 1)) (r '()))
    (loop
      (when (< i 0) (return (concatenate 'string r)))
      (let ((c (char s i)))
        (push c r)
        (when (member c '(#\\ #\. #\? #\* #\+ #\| #\^ #\$
                        #\[ #\] #\{ #\} #\( #\)))
          (push #\\ r))))))

'(trace
  pregexp
  pregexp-read-pattern
  pregexp-read-subpattern
;  pregexp-read-char-list
  pregexp-read-piece
 pregexp-read-branch
;  pregexp-make-backref-list
  pregexp-read-cluster-type
;  pregexp-wrap-quantifier-if-any
;  pregexp-match-positions
  pregexp-match-positions-aux
;  pregexp-replace*
;  pregexp-read-escaped-char
;  pregexp-read-escaped-number
;  pregexp-read-posix-char-class
;  pregexp-replace pregexp-replace-aux
;  pregexp-check-if-in-char-class-p
;  pregexp-read-nums
  )
