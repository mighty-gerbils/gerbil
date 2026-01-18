;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio writing
(import :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/scan
        ./ioutil)
(export #t)

(interface ObjectFormatter
  (format (writer : BufferedWriter) (env : FormatEnv)) => :fixnum)

(defsyntax (defformatter stx)
  (syntax-case stx ()
    ((_ klass (format-it writer obj env)
        body ...)
     (with-syntax ((writer.format-it
                    (stx-identifier #'format-it #'writer "." #'format-it)))
       #'(begin
           (defwriter-ext (format-it writer (obj : klass) (env : WriteEnv))
             body ...)
           (defmethod {format klass}
             (lambda (self writer env)
               (writer.format-it self env))
             interface: ObjectFormatter))))))

(defwriter-ext (format-raw writer obj (env : FormatEnv))
  (apply-object-formatter obj env))

(defwriter-ext (format writer obj (env : FormatEnv))
  (defrule (write-obj)
    (writer.format-raw obj env))
  (defrule (write-anchor id)
    (writer.format-anchor obj id env))
  (defrule (write-ref id)
    (writer.format-reference id env))
  (defrule (write-cycle?)
    (and env.scan.allow-cycles?
         (hash-get env.scan.cycles obj)))

  (cond
   ((or (not env.scan) (immediate? obj))
    (write-obj))
   ((hash-get env.scan.written obj)
    => (lambda ((id :- :fixnum)) => :fixnum
          (if (or env.scan.compress? (write-cycle?))
            (write-ref id)
            (write-obj))))
   ((write-cycle?)
    => (lambda ((id :- :fixunum)) => :fixnum
          (hash-put! env.scan.written obj id)
          (write-anchor id)))
   ((hash-get env.scan.scanned obj)
    => (lambda (e) => :fixnum
          (if env.scan.compress?
            (using ((e             :- :pair)
                    (id    (car e) :- :fixnum)
                    (count (cdr e) :- :fixnum))
              (hash-put! env.scan.written obj id)
              (if (fx> count 1)
                (write-anchor id)
                (write-obj)))
            (using (id :- :fixnum)
              (hash-put! env.scan.written obj id)
              (write-obj)))))
   (else
    (let (id (scan-object! obj senv))
      (if (fx> id 0)
        (begin
          (hash-put! env.scan.written obj id)
          (cond
           ((write-cycle?)
            (write-anchor id))
           (env.scan.compress?
            (using ((e     (hash-get env.scan.scanned obj) :- :pair)
                    (count (cdr e)                         :- :fixnum))
              (if (fx> count 1)
                (write-anchor id)
                (write-obj))))
           (else
            (write-obj))))
        (write-obj))))))

(defwriter-ext (format-anchor writer obj (id : :fixnum) (env : FormatEnv))
  (let* ((wr (writer.write-sharp))
         (wr (fx+ wr (writer.write-fixnum-decimal id)))
         (wr (fx+ wr (writer.write-equal)))
         (wr (fx+ wr (writer.format-raw obj env))))
    wr))

(defwriter-ext (format-reference write (id : :fixnum) (env : FormatEnv))
  (let* ((wr (writer.write-sharp))
         (wr (fx+ wr (writer.write-fixnum-decimal id)))
         (wr (fx+ wr (writer.write-sharp))))
    wr))

(def (apply-object-formatter obj (env : FormatEnv)) => :fixnum
  (:- (@call-interface-method ObjectWriter write obj env)
      :fixnum))
