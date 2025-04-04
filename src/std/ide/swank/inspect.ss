(import
  :gerbil/gambit
  :std/sugar
  :std/format
  :std/srfi/13
  :std/error
  :gerbil/runtime/error
  :std/misc/list
  (for-syntax :std/error)
  ./message
  ./api
  ./context
  ./debug
  ./eval)
(export #t)

(defstruct swank-inspector
  (%object values form)
  constructor: :init!)

(defmethod {:init! swank-inspector}
  (lambda (self object)
    (set! (swank-inspector-%object self)
      (make-will [object] (lambda _ #f)))))

(def (swank-inspector-object si (unavailable #f))
  (def lobj (will-testator (swank-inspector-%object si)))
  (if lobj (car lobj)
      (if (eq? unavailable error)
	(error "Inspected Object has been garbage collected")
	unavailable)))

;; This is because the *swank-inspector* is one buffer that can be `M-x slime-inspector-pop`'d

(def swank-inspected-objects [])

(def (gc-swank-inspector)
  (def sios [])
  (let loop ((objs swank-inspected-objects))
    (if (null? objs) (set! swank-inspected-objects
		       (reverse sios))
	(let (obj (car objs))
	  (when (swank-inspector-object obj #f)
	    (set! sios (cons obj sios)))
	  (loop (cdr objs))))))

(def (swank-inspect-object obj (unavailable #f))
  (def si (make-swank-inspector obj))
  (gc-swank-inspector)
  
  (set! swank-inspected-objects
    (cons si swank-inspected-objects))

  si)
  
(def (swank-inspector-value-put! si value (name #f))
  (using (si : swank-inspector)
    (def vars (if (hash-table? si.values) si.values
		  (begin (set! si.values (make-hash-table
					 weak-values: #t)))))
    (def n (1+ (hash-length si.values)))
    (hash-put! si.values n value)
    [':value (or name (format "~a" value)) n]))

(def (swank-inspector-value-ref si n)
  (using (si : swank-inspector) (hash-get si.values n)))

(def (swank-inspector-content si)
    {swank-inspector-content (swank-inspector-object si) si})

(defmethod {swank-inspector-content :t}
  (lambda (self si)
    (def class (class-of self))
    (def class-name (class-type-name class))
    (def sys? (class-type-system? class))
    (when sys? (set! class-name (format ":~a" class-name)))

    (def slots (class-type-slot-list class))

    (def slot-inspects
      (let ((smrof []))
       (def (push form) (set! smrof (cons form smrof)))
       (let loop ((slots slots))
	 (unless (null? slots) 
	   (let* ((slot (car slots))
		  (value (slot-ref self slot)))
	     
	     (push (format "~a: " slot))
	     (push (swank-inspector-value-put! si value))
	     (push "\n"))
	   (loop (cdr slots))))
       (reverse smrof)))
    ["The object is of class "
     (swank-inspector-value-put!
      si class (format "~a" class-name))".\n"
      
      slot-inspects ...
	  
    ])
  rebind: #t)

(defmethod {swank-inspector-content :pair}
  (lambda (self si)
    (def start (@next-method self si))
    (def item-inspects
      (let ((smrof []) (n -1))
       (def (push form) (set! smrof (cons form smrof)))
       (let loop ((pair self))
	 (set! n (1+ n))
	 (push (format "~a: " n))
	 (push (swank-inspector-value-put! si (if (pair? pair) (car pair) pair)))
	 (push "\n")
	 (when (pair? pair) (loop (cdr pair))))
       (reverse smrof)))
    [ start ... item-inspects ...]
    )
  rebind: #t)

(def (make-inspector-content si)
  (def clist (swank-inspector-content si))
  (def len (length clist))
  [clist len 0 500])

(def (make-content-in-bounds content start end)
  (with ([old-clist len _ __] content)
    (def pre (drop old-clist (min len start)))
    (def clist (take pre (min (length pre) (- end start))))
    [clist len start end]))

(def (swank-inspector-inspect-object
      si
      (content-start 0)
      (content-end 500))
  (def form (swank-inspector-form si))
  (unless (pair? form)
    (let (obj (swank-inspector-object si error))
      (set! form
	`(:title
	  ,(format "~s" obj) :id 0
	  :content ,(make-inspector-content si)))
      (set! (swank-inspector-form si) form)))

  (def saved-content (pget ':content form))
  (def content (make-content-in-bounds
		saved-content content-start content-end))
  (let lp ((form form))
    (if (null? form) form
	(let ((item (car form))
	      (rest (cdr form)))
	  (when (eq? item ':content)
	    (set! rest (list-copy rest))
	    (set! (car rest) content))
	  (cons item (lp rest))))))
      
	     
(def-swank (swank:inspect-frame-var frame-n var-n)
  (def sd-n (current-slime-thread))
  (def frame-var-plist
    (find-swank-debug-frame-var
     sd-n frame-n var-n identity))
  (def object (pget ':value frame-var-plist))
  (def si (swank-inspect-object object))
  (swank-inspector-inspect-object si))

(def-swank (swank:inspect-nth-part n)
  (def nsi (car swank-inspected-objects))
  (def object (hash-get (swank-inspector-values nsi) n))
  (gc-swank-inspector)
  (def si (swank-inspect-object object))
  (swank-inspector-inspect-object si))

(def-swank (swank:inspector-range start end)
  (def si (car swank-inspected-objects))
  (gc-swank-inspector)
  (def inspector (swank-inspector-inspect-object si start end))
  (pget ':content inspector))
  