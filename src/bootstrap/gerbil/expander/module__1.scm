(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11073_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11074_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11075_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11076_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11077_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11078_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11079_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11080_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11081_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11082_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11083_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11084_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11085_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11086_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11087_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11088_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11089_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11090_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11091_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11092_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11093_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11094_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11095_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11096_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11097_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11098_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11099_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11100_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11101_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11102_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11103_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11104_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11105_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11106_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11107_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11108_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11109_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11110_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11111_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11112_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11113_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11114_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11115_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11116_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11117_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11118_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11119_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11120_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11121_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11122_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11123_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11124_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11125_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11126_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11127_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11128_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11129_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11130_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11073_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11074_|
                   (cons |gx[1]#_g11075_|
                         (cons |gx[1]#_g11076_|
                               (cons (cons |gx[1]#_g11077_|
                                           (cons |gx[1]#_g11078_|
                                                 (cons |gx[1]#_g11079_|
                                                       (cons |gx[1]#_g11080_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11081_|
                                                 (cons |gx[1]#_g11082_|
                                                       (cons |gx[1]#_g11083_|
                                                             (cons |gx[1]#_g11084_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-import::t
        '#f
        'module-import
        '#f
        '((final: . #t))
        '(source name phi weak?))))
    (define |gx[:0:]#module-export|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11085_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11086_|
                   (cons |gx[1]#_g11087_|
                         (cons |gx[1]#_g11088_|
                               (cons (cons |gx[1]#_g11089_|
                                           (cons |gx[1]#_g11090_|
                                                 (cons |gx[1]#_g11091_|
                                                       (cons |gx[1]#_g11092_|
                                                             (cons |gx[1]#_g11093_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11094_|
                                                 (cons |gx[1]#_g11095_|
                                                       (cons |gx[1]#_g11096_|
                                                             (cons |gx[1]#_g11097_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11098_| '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-export::t
        '#f
        'module-export
        '#f
        '((final: . #t))
        '(context key phi name weak?))))
    (define |gx[:0:]#import-set|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11099_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11100_|
                   (cons |gx[1]#_g11101_|
                         (cons |gx[1]#_g11102_|
                               (cons (cons |gx[1]#_g11103_|
                                           (cons |gx[1]#_g11104_|
                                                 (cons |gx[1]#_g11105_| '())))
                                     (cons (cons |gx[1]#_g11106_|
                                                 (cons |gx[1]#_g11107_|
                                                       (cons |gx[1]#_g11108_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-set::t
        '#f
        'import-set
        '#f
        '((final: . #t))
        '(source phi imports))))
    (define |gx[:0:]#export-set|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11109_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11110_|
                   (cons |gx[1]#_g11111_|
                         (cons |gx[1]#_g11112_|
                               (cons (cons |gx[1]#_g11113_|
                                           (cons |gx[1]#_g11114_|
                                                 (cons |gx[1]#_g11115_| '())))
                                     (cons (cons |gx[1]#_g11116_|
                                                 (cons |gx[1]#_g11117_|
                                                       (cons |gx[1]#_g11118_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-set::t
        '#f
        'export-set
        '#f
        '((final: . #t))
        '(source phi exports))))
    (define |gx[:0:]#import-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11119_|
       'expander-identifiers:
       (cons |gx[1]#_g11120_|
             (cons |gx[1]#_g11121_|
                   (cons |gx[1]#_g11122_|
                         (cons |gx[1]#_g11123_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11124_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11125_|
       'expander-identifiers:
       (cons |gx[1]#_g11126_|
             (cons |gx[1]#_g11127_|
                   (cons |gx[1]#_g11128_|
                         (cons |gx[1]#_g11129_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11130_|
        'export-expander
        ':init!
        '()
        '())))))
