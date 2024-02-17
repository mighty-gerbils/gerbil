prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type &raw-table-table (@lambda 1 #f))
  (declare-type &raw-table-count (@lambda 1 #f))
  (declare-type &raw-table-free (@lambda 1 #f))
  (declare-type &raw-table-hash (@lambda 1 #f))
  (declare-type &raw-table-test (@lambda 1 #f))
  (declare-type &raw-table-table-set! (@lambda 2 #f))
  (declare-type &raw-table-count-set! (@lambda 2 #f))
  (declare-type &raw-table-free-set! (@lambda 2 #f))
  (declare-type &raw-table-hash-set! (@lambda 2 #f))
  (declare-type &raw-table-test-set! (@lambda 2 #f))
  (declare-type make-raw-table (@lambda 3 #f))
  (declare-type raw-table-ref (@lambda 3 #f))
  (declare-type raw-table-set! (@lambda 3 #f))
  (declare-type raw-table-delete! (@lambda 2 #f))
  (declare-type __raw-table-set! (@lambda 3 #f))
  (declare-type __raw-table-rehash! (@lambda 1 #f))
  (declare-type eq-hash (@lambda 1 #f))
  (declare-type symbolic-hash (@lambda 1 #f))
  (declare-type string-hash (@lambda 1 ##string=?-hash))
  (declare-type make-eq-table__% (@lambda 1 #f))
  (declare-type make-eq-table__0 (@lambda 0 #f))
  (declare-type
   make-eq-table
   (@case-lambda (0 make-eq-table__0) (1 make-eq-table__%)))
  (declare-type eq-table-ref (@lambda 3 #f))
  (declare-type eq-table-set! (@lambda 3 #f))
  (declare-type __eq-table-set! (@lambda 3 #f))
  (declare-type eq-table-delete! (@lambda 2 #f))
  (declare-type make-symbolic-table__% (@lambda 1 #f))
  (declare-type make-symbolic-table__0 (@lambda 0 #f))
  (declare-type
   make-symbolic-table
   (@case-lambda (0 make-symbolic-table__0) (1 make-symbolic-table__%)))
  (declare-type symbolic-table-ref (@lambda 3 #f))
  (declare-type symbolic-table-set! (@lambda 3 #f))
  (declare-type __symbolic-table-set! (@lambda 3 #f))
  (declare-type symbolic-table-delete! (@lambda 2 #f))
  (declare-type make-string-table__% (@lambda 1 #f))
  (declare-type make-string-table__0 (@lambda 0 #f))
  (declare-type
   make-string-table
   (@case-lambda (0 make-string-table__0) (1 make-string-table__%)))
  (declare-type string-table-ref (@lambda 3 #f))
  (declare-type string-table-set! (@lambda 3 #f))
  (declare-type __string-table-set! (@lambda 3 #f))
  (declare-type string-table-delete! (@lambda 2 #f)))