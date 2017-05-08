(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g9872_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g9873_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g9874_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g9875_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g9876_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g9877_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g9878_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g9879_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g9880_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g9881_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g9882_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g9883_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g9884_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g9885_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g9886_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g9887_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g9888_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g9889_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g9890_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g9891_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g9892_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g9893_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g9894_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g9895_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g9896_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g9897_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g9898_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g9899_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g9900_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g9901_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g9902_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g9903_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g9904_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g9905_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g9906_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g9907_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g9908_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g9909_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g9910_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g9911_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g9912_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g9913_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g9914_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g9915_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g9916_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g9917_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g9918_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g9919_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g9920_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g9921_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g9922_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g9923_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g9924_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g9925_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g9926_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g9927_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g9928_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g9929_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9872_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9873_|
                   (cons |gx[1]#_g9874_|
                         (cons |gx[1]#_g9875_|
                               (cons (cons |gx[1]#_g9876_|
                                           (cons |gx[1]#_g9877_|
                                                 (cons |gx[1]#_g9878_|
                                                       (cons |gx[1]#_g9879_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g9880_|
                                                 (cons |gx[1]#_g9881_|
                                                       (cons |gx[1]#_g9882_|
                                                             (cons |gx[1]#_g9883_|
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
       |gx[1]#_g9884_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9885_|
                   (cons |gx[1]#_g9886_|
                         (cons |gx[1]#_g9887_|
                               (cons (cons |gx[1]#_g9888_|
                                           (cons |gx[1]#_g9889_|
                                                 (cons |gx[1]#_g9890_|
                                                       (cons |gx[1]#_g9891_|
                                                             (cons |gx[1]#_g9892_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g9893_|
                                                 (cons |gx[1]#_g9894_|
                                                       (cons |gx[1]#_g9895_|
                                                             (cons |gx[1]#_g9896_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9897_| '())))))
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
       |gx[1]#_g9898_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9899_|
                   (cons |gx[1]#_g9900_|
                         (cons |gx[1]#_g9901_|
                               (cons (cons |gx[1]#_g9902_|
                                           (cons |gx[1]#_g9903_|
                                                 (cons |gx[1]#_g9904_| '())))
                                     (cons (cons |gx[1]#_g9905_|
                                                 (cons |gx[1]#_g9906_|
                                                       (cons |gx[1]#_g9907_|
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
       |gx[1]#_g9908_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9909_|
                   (cons |gx[1]#_g9910_|
                         (cons |gx[1]#_g9911_|
                               (cons (cons |gx[1]#_g9912_|
                                           (cons |gx[1]#_g9913_|
                                                 (cons |gx[1]#_g9914_| '())))
                                     (cons (cons |gx[1]#_g9915_|
                                                 (cons |gx[1]#_g9916_|
                                                       (cons |gx[1]#_g9917_|
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
       |gx[1]#_g9918_|
       'expander-identifiers:
       (cons |gx[1]#_g9919_|
             (cons |gx[1]#_g9920_|
                   (cons |gx[1]#_g9921_|
                         (cons |gx[1]#_g9922_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g9923_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9924_|
       'expander-identifiers:
       (cons |gx[1]#_g9925_|
             (cons |gx[1]#_g9926_|
                   (cons |gx[1]#_g9927_|
                         (cons |gx[1]#_g9928_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g9929_|
        'export-expander
        ':init!
        '()
        '())))))
