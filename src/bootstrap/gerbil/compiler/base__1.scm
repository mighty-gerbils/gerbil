(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g872_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g873_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g874_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g875_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g876_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g877_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g878_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g879_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx231_)
        (gx#macro-expand-syntax-case _stx231_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g872_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g873_|
                   (cons |gxc[1]#_g874_|
                         (cons |gxc[1]#_g875_|
                               (cons (cons |gxc[1]#_g876_|
                                           (cons |gxc[1]#_g877_| '()))
                                     (cons (cons |gxc[1]#_g878_|
                                                 (cons |gxc[1]#_g879_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
