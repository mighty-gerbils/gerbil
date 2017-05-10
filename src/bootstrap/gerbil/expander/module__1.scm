(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g9942_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g9943_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g9944_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g9945_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g9946_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g9947_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g9948_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g9949_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g9950_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g9951_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g9952_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g9953_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g9954_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g9955_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g9956_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g9957_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g9958_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g9959_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g9960_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g9961_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g9962_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g9963_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g9964_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g9965_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g9966_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g9967_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g9968_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g9969_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g9970_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g9971_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g9972_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g9973_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g9974_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g9975_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g9976_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g9977_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g9978_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g9979_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g9980_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g9981_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g9982_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g9983_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g9984_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g9985_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g9986_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g9987_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g9988_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g9989_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g9990_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g9991_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g9992_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g9993_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g9994_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g9995_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g9996_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g9997_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g9998_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g9999_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9942_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9943_|
                   (cons |gx[1]#_g9944_|
                         (cons |gx[1]#_g9945_|
                               (cons (cons |gx[1]#_g9946_|
                                           (cons |gx[1]#_g9947_|
                                                 (cons |gx[1]#_g9948_|
                                                       (cons |gx[1]#_g9949_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g9950_|
                                                 (cons |gx[1]#_g9951_|
                                                       (cons |gx[1]#_g9952_|
                                                             (cons |gx[1]#_g9953_|
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
       |gx[1]#_g9954_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9955_|
                   (cons |gx[1]#_g9956_|
                         (cons |gx[1]#_g9957_|
                               (cons (cons |gx[1]#_g9958_|
                                           (cons |gx[1]#_g9959_|
                                                 (cons |gx[1]#_g9960_|
                                                       (cons |gx[1]#_g9961_|
                                                             (cons |gx[1]#_g9962_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g9963_|
                                                 (cons |gx[1]#_g9964_|
                                                       (cons |gx[1]#_g9965_|
                                                             (cons |gx[1]#_g9966_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9967_| '())))))
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
       |gx[1]#_g9968_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9969_|
                   (cons |gx[1]#_g9970_|
                         (cons |gx[1]#_g9971_|
                               (cons (cons |gx[1]#_g9972_|
                                           (cons |gx[1]#_g9973_|
                                                 (cons |gx[1]#_g9974_| '())))
                                     (cons (cons |gx[1]#_g9975_|
                                                 (cons |gx[1]#_g9976_|
                                                       (cons |gx[1]#_g9977_|
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
       |gx[1]#_g9978_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9979_|
                   (cons |gx[1]#_g9980_|
                         (cons |gx[1]#_g9981_|
                               (cons (cons |gx[1]#_g9982_|
                                           (cons |gx[1]#_g9983_|
                                                 (cons |gx[1]#_g9984_| '())))
                                     (cons (cons |gx[1]#_g9985_|
                                                 (cons |gx[1]#_g9986_|
                                                       (cons |gx[1]#_g9987_|
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
       |gx[1]#_g9988_|
       'expander-identifiers:
       (cons |gx[1]#_g9989_|
             (cons |gx[1]#_g9990_|
                   (cons |gx[1]#_g9991_|
                         (cons |gx[1]#_g9992_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g9993_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9994_|
       'expander-identifiers:
       (cons |gx[1]#_g9995_|
             (cons |gx[1]#_g9996_|
                   (cons |gx[1]#_g9997_|
                         (cons |gx[1]#_g9998_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g9999_|
        'export-expander
        ':init!
        '()
        '())))))
