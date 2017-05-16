(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11099_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11100_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11101_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11102_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11103_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11104_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11105_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11106_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11107_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11108_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11109_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11110_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11111_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11112_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11113_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11114_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11115_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11116_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11117_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11118_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11119_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11120_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11121_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11122_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11123_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11124_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11125_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11126_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11127_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11128_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11129_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11130_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11131_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11132_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11133_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11134_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11135_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11136_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11137_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11138_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11139_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11140_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11141_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11142_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11143_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11144_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11145_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11146_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11147_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11148_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11149_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11150_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11151_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11152_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11153_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11154_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11155_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11156_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
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
                                                 (cons |gx[1]#_g11105_|
                                                       (cons |gx[1]#_g11106_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11107_|
                                                 (cons |gx[1]#_g11108_|
                                                       (cons |gx[1]#_g11109_|
                                                             (cons |gx[1]#_g11110_|
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
       |gx[1]#_g11111_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11112_|
                   (cons |gx[1]#_g11113_|
                         (cons |gx[1]#_g11114_|
                               (cons (cons |gx[1]#_g11115_|
                                           (cons |gx[1]#_g11116_|
                                                 (cons |gx[1]#_g11117_|
                                                       (cons |gx[1]#_g11118_|
                                                             (cons |gx[1]#_g11119_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11120_|
                                                 (cons |gx[1]#_g11121_|
                                                       (cons |gx[1]#_g11122_|
                                                             (cons |gx[1]#_g11123_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11124_| '())))))
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
       |gx[1]#_g11125_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11126_|
                   (cons |gx[1]#_g11127_|
                         (cons |gx[1]#_g11128_|
                               (cons (cons |gx[1]#_g11129_|
                                           (cons |gx[1]#_g11130_|
                                                 (cons |gx[1]#_g11131_| '())))
                                     (cons (cons |gx[1]#_g11132_|
                                                 (cons |gx[1]#_g11133_|
                                                       (cons |gx[1]#_g11134_|
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
       |gx[1]#_g11135_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11136_|
                   (cons |gx[1]#_g11137_|
                         (cons |gx[1]#_g11138_|
                               (cons (cons |gx[1]#_g11139_|
                                           (cons |gx[1]#_g11140_|
                                                 (cons |gx[1]#_g11141_| '())))
                                     (cons (cons |gx[1]#_g11142_|
                                                 (cons |gx[1]#_g11143_|
                                                       (cons |gx[1]#_g11144_|
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
       |gx[1]#_g11145_|
       'expander-identifiers:
       (cons |gx[1]#_g11146_|
             (cons |gx[1]#_g11147_|
                   (cons |gx[1]#_g11148_|
                         (cons |gx[1]#_g11149_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11150_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11151_|
       'expander-identifiers:
       (cons |gx[1]#_g11152_|
             (cons |gx[1]#_g11153_|
                   (cons |gx[1]#_g11154_|
                         (cons |gx[1]#_g11155_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11156_|
        'export-expander
        ':init!
        '()
        '())))))
