(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g5922_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g5923_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g5924_| (gx#core-quote-syntax 'make-optimizer-info))
  (define |gxc[1]#_g5925_| (gx#core-quote-syntax 'optimizer-info?))
  (define |gxc[1]#_g5926_| (gx#core-quote-syntax 'optimizer-info-type))
  (define |gxc[1]#_g5927_| (gx#core-quote-syntax 'optimizer-info-ssxi))
  (define |gxc[1]#_g5928_| (gx#core-quote-syntax 'optimizer-info-type-set!))
  (define |gxc[1]#_g5929_| (gx#core-quote-syntax 'optimizer-info-ssxi-set!))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g5922_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g5923_|
                   (cons |gxc[1]#_g5924_|
                         (cons |gxc[1]#_g5925_|
                               (cons (cons |gxc[1]#_g5926_|
                                           (cons |gxc[1]#_g5927_| '()))
                                     (cons (cons |gxc[1]#_g5928_|
                                                 (cons |gxc[1]#_g5929_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        '#f
        'optimizer-info
        ':init!
        '()
        '(type ssxi))))))
