;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; gx-gambc0: simple runtime functions that should be inlined
(declare-type*
 (true (@lambda (0) inline:
           (ast-rules (%#call %#ref)
             ((%#call _ (%#ref arg) ...)
              (%#quote #t))
             ((%#call _ arg ...)
              (%#begin arg ... (%#quote #t))))))
 (true? (@lambda 1 inline:
            (ast-rules (%#call)
              ((%#call _ arg)
               (%#call (%#ref eq?) arg (%#quote #t))))))
 (false (@lambda (0) inline:
            (ast-rules (%#call %#ref)
              ((%#call _ (%#ref arg) ...)
               (%#quote #f))
              ((%#call _ arg ...)
               (%#begin arg ... (%#quote #f))))))
 (void (@lambda (0) inline:
           (ast-rules (%#call %#ref)
             ((%#call _ (%#ref arg) ...)
              (%#quote #!void))
             ((%#call _ arg ...)
              (%#begin arg ... (%#quote #!void))))))
 (void? (@lambda 1 inline:
            (ast-rules (%#call)
              ((%#call _ arg)
               (%#call (%#ref eq?) arg (%#quote #!void))))))
 (identity (@lambda 1 inline:
               (ast-rules (%#call)
                 ((%#call _ arg)
                  arg)))))

;; gx-gambc0: simple hash-table ops
(declare-type*
 (make-hash-table (@lambda (0) make-table))
 (list->hash-table (@lambda 1 list->table))
 (hash? (@lambda 1 table?))
 (hash-table? (@lambda 1 table?))
 (hash-length (@lambda 1 table-length))
 (hash-ref (@case-lambda (2 table-ref) (3 table-ref)))
 (hash-get (@lambda 2 inline:
               (ast-rules (%#call)
                 ((%#call _ ht key)
                  (%#call (%#ref table-ref) ht key (%#quote #f))))))
 (hash-put! (@lambda 3 table-set!))
 (hash-remove! (@lambda 2 table-set!))
 (hash->list (@lambda 1 table->list))
 (hash-for-each (@lambda 2 table-for-each))
 (hash-find (@lambda 2 table-search)))

;; gx-gambc0: simple arithmetic
(declare-type*
 (1+ (@lambda 1 inline:
         (ast-rules (%#call)
           ((%#call _ arg)
            (%#call (%#ref +) arg (%#quote 1))))))
 (1- (@lambda 1 inline:
         (ast-rules (%#call)
           ((%#call _ arg)
            (%#call (%#ref -) arg (%#quote 1))))))
 (fx1+ (@lambda 1 inline:
           (ast-rules (%#call)
             ((%#call _ arg)
              (%#call (%#ref fx+) arg (%#quote 1))))))
 (fx1- (@lambda 1 inline:
           (ast-rules (%#call)
             ((%#call _ arg)
              (%#call (%#ref fx-) arg (%#quote 1))))))
 (fxshift (@lambda 2 fxarithmetic-shift)))

;; gx-gambc1: AST type for optimizing the expander
(declare-type*
 (AST::t (@struct-type gerbil#AST::t #f 2))
 (AST? (@struct-pred AST::t))
 (AST-e (@struct-getf AST::t 0))
 (AST-source (@struct-getf AST::t 1))
 (make-AST (@struct-cons AST::t)))
