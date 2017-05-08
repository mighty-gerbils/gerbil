(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g813_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g814_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g815_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g816_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g817_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g818_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g819_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g820_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx172_)
        (gx#macro-expand-syntax-case _stx172_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g813_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g814_|
                   (cons |gxc[1]#_g815_|
                         (cons |gxc[1]#_g816_|
                               (cons (cons |gxc[1]#_g817_|
                                           (cons |gxc[1]#_g818_| '()))
                                     (cons (cons |gxc[1]#_g819_|
                                                 (cons |gxc[1]#_g820_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
