(import  :std/interface :std/contract :std/srfi/13
	 (for-syntax :std/misc/ports :std/srfi/13 :std/pregexp))
(export #t)

;;* Mime Types

(defstruct mime-type (name extensions)
  transparent: #t
  constructor: :init!)

(defmethod {:init! mime-type}
  (lambda (self name . exts)
    (set! self.name name)
    (set! self.extensions exts)))

(def mime-types (make-hash-table))
(def mime-extensions (make-hash-table))

(def (add-mime-type name . exts)
  (def mt (apply make-mime-type name exts))
  (hash-put! mime-types name mt)
  (for-each (cut hash-put! mime-extensions <> mt) exts)
  ;; (displayln "Added " mt)
  mt)


(defsyntax (define-mime-types stx)
  (def (read-mime.types (path "/etc/mime.types") (make list))
    (def (tylin? line) (not (or (equal? "" line) (equal? (string-ref line 0) #\#))))
    (def (maker line)
      (with ([_ name extstrlst ...] (pregexp-match "([^\t]*)(.*)" line))

	(def exts (and (not (null? extstrlst))
		       (string-split (string-trim (car extstrlst)) #\space)))
	(apply make name exts)))


    (map maker (filter tylin? (read-file-lines path))))

  (syntax-case stx ()
    ((macro filename rest ...)
     (stx-string? #'filename)
     (let* ((file (stx-e #'filename))
  	    (locat (stx-source stx))
            (con (##locat-container locat))
  	    (path (##container->path con))
  	    (dir (if path (path-directory path) (current-directory)))
  	    (lst (read-mime.types (path-expand file dir))))
       (with-syntax ((mts lst))
	 #'(begin (for-each (cut apply add-mime-type <>)
			    'mts)
		  (macro rest ...)))))
    ((macro (name exts ...) rest ...)
     #'(begin (add-mime-type name exts ...)
	      (macro rest ...)))
    ((_) #'(void))))
