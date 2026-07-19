;;; -*- Gerbil -*-
;;; © vyzo
;;; scanner implementation
(import :std/interface
	./scan)
(export #t)

(defrule (defscanner klass (self ctx path) body ...)
  (begin
    (defmethod {scan! klass}
      (lambda (self ctx path)
	body ...)
      interface: ObjectScanner)
    (@implement ObjectScanner klass)))

(defscanner :builtin (self ctx path)
  #!void)

(def (scan-object-slots klass obj (ctx : ScanContext) (path : :list))
  (let (len (##structure-length obj))
    (when (fx> len 1)
      (if ctx.all-slots?
	(let (slots (class-type-field-list klass))
          (let loop ((rest slots) (offset 1 :- :fixnum))
	    => :void ;; TODO BUG this should be unnecessary
	    (unless (null? rest)
	      (scan-object! (##structure-ref obj offset klass #f)
			    ctx path)
	      (loop (##cdr rest) (fx1+ offset)))))
	(let (slots (class-type-printable-slots klass))
	  (let loop ((rest slots))
	    (match rest
	      ([[_ . offset] . rest]
	       (scan-object! (##structure-ref obj offset klass #f)
			     ctx path)
	       (loop rest))
	      (else (void)))))))))

(defscanner class (self ctx path)
  (scan-object! (##type-id self) ctx path))

(defscanner :object (self ctx path)
  (let (klass (object-class self))0
    (scan-object! klass ctx path)
    (scan-object-slots klass self ctx path)))

(defscanner interface-instance (self ctx path)
  (scan-object! (object-class self) ctx path)
  (scan-object! self.object ctx path))

(defscanner HashTable (self ctx path)
  (self.for-each
   (lambda (k v)
     (scan-object! k ctx path)
     (scan-object! v ctx path))))

(defscanner :structure (self ctx path)
  (let (klass (class-of self))
    (scan-object! klass ctx path)
    (scan-object-slots klass self ctx path)))

(defscanner :pair (self ctx path)
  (scan-object! (car self) ctx path)
  (scan-object! (cdr self) ctx path))

(defrule (do-scan-vector v ctx path len ref)
  (let (size (len v))
    (let loop ((i 0 :- :fixnum))
      (when (fx< i size)
	(scan-object! (ref v i) ctx path)
	(loop (fx1+ i))))))

(defscanner :vector (self ctx path)
  (do-scan-vector self ctx path
		  ##vector-length
		  ##vector-ref))

(defscanner :values (self ctx path)
  (do-scan-vector self ctx path
		  ##values-length
		  ##values-ref))

(defscanner :box (self ctx path)
  (scan-object! (unbox self) ctx path))

(defscanner :promise (self ctx path)
  (scan-object! (force self) ctx path))
