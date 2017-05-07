(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12387_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g12388_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g12389_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g12390_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g12391_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g12392_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g12393_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g12394_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g12395_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g12396_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g12397_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g12398_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g12399_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g12400_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g12401_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g12402_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g12403_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g12404_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g12405_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g12406_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g12407_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g12408_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g12409_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g12410_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g12411_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g12412_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g12413_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g12414_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g12415_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g12416_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g12417_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g12418_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g12419_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g12420_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g12421_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g12422_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g12423_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g12424_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g12425_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g12426_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g12427_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g12428_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g12429_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g12430_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g12431_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g12432_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g12433_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g12434_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12435_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g12436_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g12437_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g12438_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g12439_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g12440_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12441_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g12442_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g12443_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g12444_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12387_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12388_|
                   (cons |gx[1]#_g12389_|
                         (cons |gx[1]#_g12390_|
                               (cons (cons |gx[1]#_g12391_|
                                           (cons |gx[1]#_g12392_|
                                                 (cons |gx[1]#_g12393_|
                                                       (cons |gx[1]#_g12394_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g12395_|
                                                 (cons |gx[1]#_g12396_|
                                                       (cons |gx[1]#_g12397_|
                                                             (cons |gx[1]#_g12398_|
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
       |gx[1]#_g12399_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12400_|
                   (cons |gx[1]#_g12401_|
                         (cons |gx[1]#_g12402_|
                               (cons (cons |gx[1]#_g12403_|
                                           (cons |gx[1]#_g12404_|
                                                 (cons |gx[1]#_g12405_|
                                                       (cons |gx[1]#_g12406_|
                                                             (cons |gx[1]#_g12407_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g12408_|
                                                 (cons |gx[1]#_g12409_|
                                                       (cons |gx[1]#_g12410_|
                                                             (cons |gx[1]#_g12411_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12412_| '())))))
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
       |gx[1]#_g12413_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12414_|
                   (cons |gx[1]#_g12415_|
                         (cons |gx[1]#_g12416_|
                               (cons (cons |gx[1]#_g12417_|
                                           (cons |gx[1]#_g12418_|
                                                 (cons |gx[1]#_g12419_| '())))
                                     (cons (cons |gx[1]#_g12420_|
                                                 (cons |gx[1]#_g12421_|
                                                       (cons |gx[1]#_g12422_|
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
       |gx[1]#_g12423_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12424_|
                   (cons |gx[1]#_g12425_|
                         (cons |gx[1]#_g12426_|
                               (cons (cons |gx[1]#_g12427_|
                                           (cons |gx[1]#_g12428_|
                                                 (cons |gx[1]#_g12429_| '())))
                                     (cons (cons |gx[1]#_g12430_|
                                                 (cons |gx[1]#_g12431_|
                                                       (cons |gx[1]#_g12432_|
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
       |gx[1]#_g12433_|
       'expander-identifiers:
       (cons |gx[1]#_g12434_|
             (cons |gx[1]#_g12435_|
                   (cons |gx[1]#_g12436_|
                         (cons |gx[1]#_g12437_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g12438_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12439_|
       'expander-identifiers:
       (cons |gx[1]#_g12440_|
             (cons |gx[1]#_g12441_|
                   (cons |gx[1]#_g12442_|
                         (cons |gx[1]#_g12443_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g12444_|
        'export-expander
        ':init!
        '()
        '())))))
