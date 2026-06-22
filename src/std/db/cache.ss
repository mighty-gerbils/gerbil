;;; -*- Gerbil -*-
;;; © vyzo
;;; DB statement cache
(import ./interface)
(export #t)

(defstruct StatementCache
  ((db : DB)
   (table : HashTable))
  constructor: :init!
  final: #t)

(defmethod {:init! StatementCache}
  (lambda (self (db : DB))
    (set! self.db db)
    (set! self.table (make-hash-table-string))))

(def (statement-cache-get (self : StatementCache)
                          (sql  : :string))
  => Statement
  (cond
   ((self.table.ref sql #f)
    => (lambda ((stmt :- Statement))
         => Statement
         (stmt.reset!)
         stmt))
   (else
    (let (stmt (self.db.prepare sql))
      (self.table.set! sql stmt)
      stmt))))

(def (statement-cache-close (self : statement-cache))
  => :void
  (for (stmt (hash-values self.table) :- Statement)
    (stmt.close))
  (self.table.clear!))
