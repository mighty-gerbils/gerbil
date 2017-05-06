(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g184_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g185_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g186_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g187_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g188_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g189_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g190_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g191_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx171_)
        (gx#macro-expand-syntax-case _stx171_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g184_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g185_|
                   (cons |gxc[1]#_g186_|
                         (cons |gxc[1]#_g187_|
                               (cons (cons |gxc[1]#_g188_|
                                           (cons |gxc[1]#_g189_| '()))
                                     (cons (cons |gxc[1]#_g190_|
                                                 (cons |gxc[1]#_g191_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
