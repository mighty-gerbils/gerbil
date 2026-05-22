;;; -*- Gerbil -*-
;;; © vyzo
;;; serde environments
(import :std/interface
	:std/io/interface
	:std/io/bio/api
	./scan)
(export #t)

(deftype @WriteTraits WriteTraits)

(defstruct WriteEnv
  ((scan     :- ScanEnv)
   ;; serialization methods
   (methods  :- @WriteTraits)
   ;; class serialize filter
   (allow-class? :- :procedure))
  final: #t)

(interface WriteTraits
  (write-delimiter (writer : BufferedWriter)
		   (env    : WriteEnv))
  => :fixnum
  (write-field-delimiter (writer : BufferedWriter)
			 (env    : WriteEnv))
  => :fixnum
  (write-pair-delimiter (writer : BufferedWriter)
			(env    : WriteEnv))
  => :fixnum
  (write-anchor-begin (writer : BufferedWriter)
		      (id     : :fixnum)
		      (env    : WriteEnv))
  => :fixnum
  (write-anchor-end (writer : BufferedWriter)
		    (env    : WriteEnv))
  => :fixnum
  (write-reference (writer : BufferedWriter)
		   (id     : :fixnum)
		   (env    : WriteEnv))
  => :fixnum
  (write-object-begin (writer : BufferedWriter)
		      (env    : WriteEnv))
  => :fixnum
  (write-object-end (writer : BufferedWriter)
		    (env    : WriteEnv))
  => :fixnum

  (write-list-begin (writer : BufferedWriter)
		    (env    : WriteEnv))
  => :fixnum
  (write-list-end (writer : BufferedWriter)
		  (env    : WriteEnv))
  => :fixnum
  (write-class (writer : BufferedWriter)
	       (klass  : class)
	       (env    : WriteEnv))
  => :fixnum
  (write-slot (writer : BufferedWriter)
	      (slot   : :symbol)
	      (env    : WriteEnv))
  => :fixnum
  (write-char (writer : BufferedWriter)
	      (char   : :char)
	      (env    : WriteEnv))
  => :fixnum
  (write-boolean (writer : BufferedWriter)
		 (bool   : :boolean)
		 (env    : WriteEnv))
  => :fixnum
  (write-special (writer : BufferedWriter)
		 (atom   : :special)
		 (env    : WriteEnv))
  => :fixnum
  (write-integer (writer : BufferedWriter)
		 (int    : :integer)
		 (env    : WriteEnv))
  => :fixnum
  (write-flonum (writer : BufferedWriter)
		 (int    : :flonum)
		 (env    : WriteEnv))
  => :fixnum
  (write-ratnum (writer : BufferedWriter)
		 (int    : :ratnum)
		 (env    : WriteEnv))
  => :fixnum
  (write-cpxnum (writer : BufferedWriter)
		(int    : :cpxnum)
		(env    : WriteEnv))
  => :fixnum
  (write-symbol (writer : BufferedWriter)
		(sym    : :symbol)
		(env    : WriteEnv))
  => :fixnum
  (write-keyword (writer : BufferedWriter)
		 (sym    : :keyword)
		 (env    : WriteEnv))
  => :fixnum
  (write-string (writer : BufferedWriter)
		(str    : :string)
		(env    : WriteEnv))
  => :fixnum
  (write-vector-begin (writer : BufferedWriter)
		      (vec    : :vector)
		      (env    : WriteEnv))
  => :fixnum
  (write-vector-end (writer : BufferedWriter)
		    (env    : WriteEnv))
  => :fixnum
  (write-hvector-begin (writer : BufferedWriter)
		       (vec    : :hvector)
		       (env    : WriteEnv))
  => :fixnum
  (write-hvector-end (writer : BufferedWriter)
		     (env    : WriteEnv))
  => :fixnum
  (write-values-begin (writer : BufferedWriter)
		      (vals   : :values)
		      (env    : WriteEnv))
  => :fixnum
  (write-values-end (writer : BufferedWriter)
		    (env    : WriteEnv))
  => :fixnum
  (write-box-begin (writer : BufferedWriter)
		   (env    : WriteEnv))
  => :fixnum
  (write-box-end (writer : BufferedWriter)
		 (env    : WriteEnv))
  => :fixnum
  (write-hash-table (writer : BufferedWriter)
		    (ht     : HashTable)
		    (env    : WriteEnv))
  => :fixnum
  )

(interface ObjectWriter
  (write (writer : BufferedWriter) (env : WriteEnv))
  => :fixnum)

(defsyntax-case defobject-writer ()
  ((_ klass (write-method writer obj env)
      body ...)
   (with-identifier (writer.write-method #'writer #'writer "." #'write-method)
     #'(begin
	 (defwriter-ext (write-method writer (obj : klass) (env : WriteEnv))
	   body ...)

	 (defmethod {write klass}
	   (lambda (self writer env)
	     (writer.write-method self env))
	   interface: ObjectWriter)
	 (@implement ObjectWriter klass)))))

(defcall-interface-method ObjectWriter write
  (__object-write obj writer env)
  :- :fixnum)
