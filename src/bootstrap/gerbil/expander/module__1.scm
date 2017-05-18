(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11201_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11202_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11203_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11204_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11205_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11206_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11207_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11208_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11209_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11210_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11211_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11212_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11213_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11214_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11215_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11216_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11217_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11218_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11219_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11220_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11221_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11222_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11223_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11224_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11225_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11226_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11227_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11228_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11229_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11230_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11231_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11232_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11233_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11234_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11235_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11236_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11237_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11238_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11239_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11240_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11241_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11242_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11243_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11244_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11245_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11246_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11247_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11248_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11249_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11250_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11251_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11252_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11253_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11254_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11255_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11256_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11257_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11258_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11201_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11202_|
                   (cons |gx[1]#_g11203_|
                         (cons |gx[1]#_g11204_|
                               (cons (cons |gx[1]#_g11205_|
                                           (cons |gx[1]#_g11206_|
                                                 (cons |gx[1]#_g11207_|
                                                       (cons |gx[1]#_g11208_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11209_|
                                                 (cons |gx[1]#_g11210_|
                                                       (cons |gx[1]#_g11211_|
                                                             (cons |gx[1]#_g11212_|
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
       |gx[1]#_g11213_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11214_|
                   (cons |gx[1]#_g11215_|
                         (cons |gx[1]#_g11216_|
                               (cons (cons |gx[1]#_g11217_|
                                           (cons |gx[1]#_g11218_|
                                                 (cons |gx[1]#_g11219_|
                                                       (cons |gx[1]#_g11220_|
                                                             (cons |gx[1]#_g11221_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11222_|
                                                 (cons |gx[1]#_g11223_|
                                                       (cons |gx[1]#_g11224_|
                                                             (cons |gx[1]#_g11225_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11226_| '())))))
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
       |gx[1]#_g11227_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11228_|
                   (cons |gx[1]#_g11229_|
                         (cons |gx[1]#_g11230_|
                               (cons (cons |gx[1]#_g11231_|
                                           (cons |gx[1]#_g11232_|
                                                 (cons |gx[1]#_g11233_| '())))
                                     (cons (cons |gx[1]#_g11234_|
                                                 (cons |gx[1]#_g11235_|
                                                       (cons |gx[1]#_g11236_|
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
       |gx[1]#_g11237_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11238_|
                   (cons |gx[1]#_g11239_|
                         (cons |gx[1]#_g11240_|
                               (cons (cons |gx[1]#_g11241_|
                                           (cons |gx[1]#_g11242_|
                                                 (cons |gx[1]#_g11243_| '())))
                                     (cons (cons |gx[1]#_g11244_|
                                                 (cons |gx[1]#_g11245_|
                                                       (cons |gx[1]#_g11246_|
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
       |gx[1]#_g11247_|
       'expander-identifiers:
       (cons |gx[1]#_g11248_|
             (cons |gx[1]#_g11249_|
                   (cons |gx[1]#_g11250_|
                         (cons |gx[1]#_g11251_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11252_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11253_|
       'expander-identifiers:
       (cons |gx[1]#_g11254_|
             (cons |gx[1]#_g11255_|
                   (cons |gx[1]#_g11256_|
                         (cons |gx[1]#_g11257_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11258_|
        'export-expander
        ':init!
        '()
        '())))))
