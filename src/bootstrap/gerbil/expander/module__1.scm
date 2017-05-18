(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11169_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11170_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11171_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11172_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11173_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11174_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11175_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11176_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11177_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11178_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11179_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11180_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11181_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11182_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11183_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11184_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11185_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11186_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11187_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11188_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11189_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11190_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11191_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11192_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11193_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11194_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11195_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11196_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11197_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11198_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11199_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11200_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11201_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11202_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11203_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11204_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11205_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11206_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11207_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11208_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11209_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11210_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11211_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11212_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11213_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11214_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11215_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11216_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11217_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11218_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11219_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11220_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11221_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11222_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11223_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11224_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11225_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11226_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11169_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11170_|
                   (cons |gx[1]#_g11171_|
                         (cons |gx[1]#_g11172_|
                               (cons (cons |gx[1]#_g11173_|
                                           (cons |gx[1]#_g11174_|
                                                 (cons |gx[1]#_g11175_|
                                                       (cons |gx[1]#_g11176_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11177_|
                                                 (cons |gx[1]#_g11178_|
                                                       (cons |gx[1]#_g11179_|
                                                             (cons |gx[1]#_g11180_|
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
       |gx[1]#_g11181_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11182_|
                   (cons |gx[1]#_g11183_|
                         (cons |gx[1]#_g11184_|
                               (cons (cons |gx[1]#_g11185_|
                                           (cons |gx[1]#_g11186_|
                                                 (cons |gx[1]#_g11187_|
                                                       (cons |gx[1]#_g11188_|
                                                             (cons |gx[1]#_g11189_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11190_|
                                                 (cons |gx[1]#_g11191_|
                                                       (cons |gx[1]#_g11192_|
                                                             (cons |gx[1]#_g11193_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11194_| '())))))
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
       |gx[1]#_g11195_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11196_|
                   (cons |gx[1]#_g11197_|
                         (cons |gx[1]#_g11198_|
                               (cons (cons |gx[1]#_g11199_|
                                           (cons |gx[1]#_g11200_|
                                                 (cons |gx[1]#_g11201_| '())))
                                     (cons (cons |gx[1]#_g11202_|
                                                 (cons |gx[1]#_g11203_|
                                                       (cons |gx[1]#_g11204_|
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
       |gx[1]#_g11205_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11206_|
                   (cons |gx[1]#_g11207_|
                         (cons |gx[1]#_g11208_|
                               (cons (cons |gx[1]#_g11209_|
                                           (cons |gx[1]#_g11210_|
                                                 (cons |gx[1]#_g11211_| '())))
                                     (cons (cons |gx[1]#_g11212_|
                                                 (cons |gx[1]#_g11213_|
                                                       (cons |gx[1]#_g11214_|
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
       |gx[1]#_g11215_|
       'expander-identifiers:
       (cons |gx[1]#_g11216_|
             (cons |gx[1]#_g11217_|
                   (cons |gx[1]#_g11218_|
                         (cons |gx[1]#_g11219_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11220_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11221_|
       'expander-identifiers:
       (cons |gx[1]#_g11222_|
             (cons |gx[1]#_g11223_|
                   (cons |gx[1]#_g11224_|
                         (cons |gx[1]#_g11225_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11226_|
        'export-expander
        ':init!
        '()
        '())))))
