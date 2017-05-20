(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11372_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11373_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11374_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11375_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11376_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11377_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11378_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11379_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11380_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11381_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11382_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11383_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11384_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11385_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11386_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11387_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11388_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11389_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11390_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11391_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11392_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11393_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11394_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11395_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11396_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11397_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11398_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11399_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11400_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11401_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11402_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11403_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11404_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11405_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11406_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11407_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11408_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11409_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11410_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11411_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11412_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11413_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11414_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11415_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11416_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11417_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11418_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11419_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11420_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11421_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11422_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11423_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11424_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11425_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11426_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11427_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11428_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11429_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11372_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11373_|
                   (cons |gx[1]#_g11374_|
                         (cons |gx[1]#_g11375_|
                               (cons (cons |gx[1]#_g11376_|
                                           (cons |gx[1]#_g11377_|
                                                 (cons |gx[1]#_g11378_|
                                                       (cons |gx[1]#_g11379_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11380_|
                                                 (cons |gx[1]#_g11381_|
                                                       (cons |gx[1]#_g11382_|
                                                             (cons |gx[1]#_g11383_|
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
       |gx[1]#_g11384_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11385_|
                   (cons |gx[1]#_g11386_|
                         (cons |gx[1]#_g11387_|
                               (cons (cons |gx[1]#_g11388_|
                                           (cons |gx[1]#_g11389_|
                                                 (cons |gx[1]#_g11390_|
                                                       (cons |gx[1]#_g11391_|
                                                             (cons |gx[1]#_g11392_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11393_|
                                                 (cons |gx[1]#_g11394_|
                                                       (cons |gx[1]#_g11395_|
                                                             (cons |gx[1]#_g11396_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11397_| '())))))
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
       |gx[1]#_g11398_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11399_|
                   (cons |gx[1]#_g11400_|
                         (cons |gx[1]#_g11401_|
                               (cons (cons |gx[1]#_g11402_|
                                           (cons |gx[1]#_g11403_|
                                                 (cons |gx[1]#_g11404_| '())))
                                     (cons (cons |gx[1]#_g11405_|
                                                 (cons |gx[1]#_g11406_|
                                                       (cons |gx[1]#_g11407_|
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
       |gx[1]#_g11408_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11409_|
                   (cons |gx[1]#_g11410_|
                         (cons |gx[1]#_g11411_|
                               (cons (cons |gx[1]#_g11412_|
                                           (cons |gx[1]#_g11413_|
                                                 (cons |gx[1]#_g11414_| '())))
                                     (cons (cons |gx[1]#_g11415_|
                                                 (cons |gx[1]#_g11416_|
                                                       (cons |gx[1]#_g11417_|
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
       |gx[1]#_g11418_|
       'expander-identifiers:
       (cons |gx[1]#_g11419_|
             (cons |gx[1]#_g11420_|
                   (cons |gx[1]#_g11421_|
                         (cons |gx[1]#_g11422_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11423_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11424_|
       'expander-identifiers:
       (cons |gx[1]#_g11425_|
             (cons |gx[1]#_g11426_|
                   (cons |gx[1]#_g11427_|
                         (cons |gx[1]#_g11428_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11429_|
        'export-expander
        ':init!
        '()
        '())))))
