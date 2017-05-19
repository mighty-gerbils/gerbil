(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11435_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11436_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11437_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11438_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11439_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11440_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11441_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11442_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11443_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11444_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11445_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11446_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11447_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11448_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11449_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11450_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11451_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11452_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11453_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11454_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11455_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11456_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11457_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11458_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11459_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11460_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11461_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11462_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11463_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11464_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11465_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11466_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11467_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11468_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11469_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11470_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11471_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11472_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11473_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11474_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11475_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11476_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11477_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11478_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11479_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11480_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11481_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11482_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11483_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11484_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11485_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11486_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11487_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11488_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11489_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11490_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11491_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11492_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11435_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11436_|
                   (cons |gx[1]#_g11437_|
                         (cons |gx[1]#_g11438_|
                               (cons (cons |gx[1]#_g11439_|
                                           (cons |gx[1]#_g11440_|
                                                 (cons |gx[1]#_g11441_|
                                                       (cons |gx[1]#_g11442_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11443_|
                                                 (cons |gx[1]#_g11444_|
                                                       (cons |gx[1]#_g11445_|
                                                             (cons |gx[1]#_g11446_|
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
       |gx[1]#_g11447_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11448_|
                   (cons |gx[1]#_g11449_|
                         (cons |gx[1]#_g11450_|
                               (cons (cons |gx[1]#_g11451_|
                                           (cons |gx[1]#_g11452_|
                                                 (cons |gx[1]#_g11453_|
                                                       (cons |gx[1]#_g11454_|
                                                             (cons |gx[1]#_g11455_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11456_|
                                                 (cons |gx[1]#_g11457_|
                                                       (cons |gx[1]#_g11458_|
                                                             (cons |gx[1]#_g11459_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11460_| '())))))
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
       |gx[1]#_g11461_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11462_|
                   (cons |gx[1]#_g11463_|
                         (cons |gx[1]#_g11464_|
                               (cons (cons |gx[1]#_g11465_|
                                           (cons |gx[1]#_g11466_|
                                                 (cons |gx[1]#_g11467_| '())))
                                     (cons (cons |gx[1]#_g11468_|
                                                 (cons |gx[1]#_g11469_|
                                                       (cons |gx[1]#_g11470_|
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
       |gx[1]#_g11471_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11472_|
                   (cons |gx[1]#_g11473_|
                         (cons |gx[1]#_g11474_|
                               (cons (cons |gx[1]#_g11475_|
                                           (cons |gx[1]#_g11476_|
                                                 (cons |gx[1]#_g11477_| '())))
                                     (cons (cons |gx[1]#_g11478_|
                                                 (cons |gx[1]#_g11479_|
                                                       (cons |gx[1]#_g11480_|
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
       |gx[1]#_g11481_|
       'expander-identifiers:
       (cons |gx[1]#_g11482_|
             (cons |gx[1]#_g11483_|
                   (cons |gx[1]#_g11484_|
                         (cons |gx[1]#_g11485_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11486_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11487_|
       'expander-identifiers:
       (cons |gx[1]#_g11488_|
             (cons |gx[1]#_g11489_|
                   (cons |gx[1]#_g11490_|
                         (cons |gx[1]#_g11491_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11492_|
        'export-expander
        ':init!
        '()
        '())))))
