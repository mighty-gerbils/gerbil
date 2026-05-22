;;; -*- Gerbil -*-
;;; © vyzo
;;; scanner implementation
(import :std/interface
	./scan)
(export #t)

(defrule (defscanner klass (self env path) body ...)
  (begin
    (defmethod {scan! klass}
      (lambda (self env path)
	body ...)
      interface: ObjectScanner)
    (@implement ObjectScanner klass)))

(defscanner :builtin (self env path)
  #!void)

(def (scan-object-slots klass obj (env : ScanEnv) (path : :list))
  (let (len (##structure-length obj))
    (when (fx> len 1)
      (if env.all-slots?
	(let (slots (class-type-field-list klass))
          (let loop ((rest slots) (offset 1 :- :fixnum))
	    => :void ;; TODO BUG this should be unnecessary
	    (unless (null? rest)
	      (scan-object! (##structure-ref obj offset klass #f)
			    env path)
	      (loop (##cdr rest) (fx1+ offset)))))
	(let (slots (class-type-printable-slots klass))
	  (let loop ((rest slots))
	    (match rest
	      ([[_ . offset] . rest]
	       (scan-object! (##structure-ref obj offset klass #f)
			     env path)
	       (loop rest))
	      (else (void)))))))))

(defscanner class (self env path)
  (scan-object! (##type-id self) env path))

(defscanner :object (self env path)
  (let (klass (object-class self))0
    (scan-object! klass env path)
    (scan-object-slots klass self env path)))

(defscanner interface-instance (self env path)
  (scan-object! (object-class self) env path)
  (scan-object! self.object env path))

(defscanner HashTable (self env path)
  (self.for-each
   (lambda (k v)
     (scan-object! k env path)
     (scan-object! v env path))))

(defscanner :structure (self env path)
  (let (klass (class-of self))
    (scan-object! klass env path)
    (scan-object-slots klass self env path)))

(defscanner :pair (self env path)
  (scan-object! (car self) env path)
  (scan-object! (cdr self) env path))

(defrule (do-scan-vector v env path len ref)
  (let (size (len v))
    (let loop ((i 0 :- :fixnum))
      (when (fx< i size)
	(scan-object! (ref v i) env path)
	(loop (fx1+ i))))))

(defscanner :vector (self env path)
  (do-scan-vector self env path
		  ##vector-length
		  ##vector-ref))

(defscanner :values (self env path)
  (do-scan-vector self env path
		  ##values-length
		  ##values-ref))

(defscanner :box (self env path)
  (scan-object! (unbox self) env path))

(defscanner :promise (self env path)
  (scan-object! (force self) env path))

