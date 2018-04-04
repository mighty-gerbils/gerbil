(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g16041_|
    (gx#make-syntax-quote
     'module-import::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16042_|
    (gx#make-syntax-quote
     'make-module-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16043_|
    (gx#make-syntax-quote
     'module-import?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16044_|
    (gx#make-syntax-quote
     'module-import-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16045_|
    (gx#make-syntax-quote
     'module-import-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16046_|
    (gx#make-syntax-quote
     'module-import-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16047_|
    (gx#make-syntax-quote
     'module-import-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16048_|
    (gx#make-syntax-quote
     'module-import-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16049_|
    (gx#make-syntax-quote
     'module-import-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16050_|
    (gx#make-syntax-quote
     'module-import-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16051_|
    (gx#make-syntax-quote
     'module-import-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16052_|
    (gx#make-syntax-quote
     'module-export::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16053_|
    (gx#make-syntax-quote
     'make-module-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16054_|
    (gx#make-syntax-quote
     'module-export?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16055_|
    (gx#make-syntax-quote
     'module-export-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16056_|
    (gx#make-syntax-quote
     'module-export-key
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16057_|
    (gx#make-syntax-quote
     'module-export-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16058_|
    (gx#make-syntax-quote
     'module-export-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16059_|
    (gx#make-syntax-quote
     'module-export-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16060_|
    (gx#make-syntax-quote
     'module-export-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16061_|
    (gx#make-syntax-quote
     'module-export-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16062_|
    (gx#make-syntax-quote
     'module-export-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16063_|
    (gx#make-syntax-quote
     'module-export-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16064_|
    (gx#make-syntax-quote
     'module-export-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16065_|
    (gx#make-syntax-quote 'import-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16066_|
    (gx#make-syntax-quote
     'make-import-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16067_|
    (gx#make-syntax-quote 'import-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16068_|
    (gx#make-syntax-quote
     'import-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16069_|
    (gx#make-syntax-quote
     'import-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16070_|
    (gx#make-syntax-quote
     'import-set-imports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16071_|
    (gx#make-syntax-quote
     'import-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16072_|
    (gx#make-syntax-quote
     'import-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16073_|
    (gx#make-syntax-quote
     'import-set-imports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16074_|
    (gx#make-syntax-quote 'export-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16075_|
    (gx#make-syntax-quote
     'make-export-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16076_|
    (gx#make-syntax-quote 'export-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16077_|
    (gx#make-syntax-quote
     'export-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16078_|
    (gx#make-syntax-quote
     'export-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16079_|
    (gx#make-syntax-quote
     'export-set-exports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16080_|
    (gx#make-syntax-quote
     'export-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16081_|
    (gx#make-syntax-quote
     'export-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16082_|
    (gx#make-syntax-quote
     'export-set-exports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16083_|
    (gx#make-syntax-quote
     'import-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16084_|
    (gx#make-syntax-quote
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16085_|
    (gx#make-syntax-quote
     'make-import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16086_|
    (gx#make-syntax-quote
     'import-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16087_|
    (gx#make-syntax-quote 'user-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16088_|
    (gx#make-syntax-quote
     'export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16089_|
    (gx#make-syntax-quote
     'make-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16090_|
    (gx#make-syntax-quote
     'export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16091_|
    (gx#make-syntax-quote
     'import-export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16092_|
    (gx#make-syntax-quote
     'make-import-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16093_|
    (gx#make-syntax-quote
     'import-export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16094_|
    (gx#make-syntax-quote
     'import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16095_|
    (gx#make-syntax-quote
     'export-expander
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g16041_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g16041_|
                   (cons |gx[1]#_g16042_|
                         (cons |gx[1]#_g16043_|
                               (cons (cons |gx[1]#_g16044_|
                                           (cons |gx[1]#_g16045_|
                                                 (cons |gx[1]#_g16046_|
                                                       (cons |gx[1]#_g16047_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g16048_|
                                                 (cons |gx[1]#_g16049_|
                                                       (cons |gx[1]#_g16050_|
                                                             (cons |gx[1]#_g16051_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-import::t
        '#f
        'module-import
        '#f
        '((final: . #t))
        '(source name phi weak?))))
    (define |gx[:0:]#module-export|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g16052_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g16052_|
                   (cons |gx[1]#_g16053_|
                         (cons |gx[1]#_g16054_|
                               (cons (cons |gx[1]#_g16055_|
                                           (cons |gx[1]#_g16056_|
                                                 (cons |gx[1]#_g16057_|
                                                       (cons |gx[1]#_g16058_|
                                                             (cons |gx[1]#_g16059_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g16060_|
                                                 (cons |gx[1]#_g16061_|
                                                       (cons |gx[1]#_g16062_|
                                                             (cons |gx[1]#_g16063_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g16064_| '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-export::t
        '#f
        'module-export
        '#f
        '((final: . #t))
        '(context key phi name weak?))))
    (define |gx[:0:]#import-set|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g16065_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g16065_|
                   (cons |gx[1]#_g16066_|
                         (cons |gx[1]#_g16067_|
                               (cons (cons |gx[1]#_g16068_|
                                           (cons |gx[1]#_g16069_|
                                                 (cons |gx[1]#_g16070_| '())))
                                     (cons (cons |gx[1]#_g16071_|
                                                 (cons |gx[1]#_g16072_|
                                                       (cons |gx[1]#_g16073_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-set::t
        '#f
        'import-set
        '#f
        '((final: . #t))
        '(source phi imports))))
    (define |gx[:0:]#export-set|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g16074_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g16074_|
                   (cons |gx[1]#_g16075_|
                         (cons |gx[1]#_g16076_|
                               (cons (cons |gx[1]#_g16077_|
                                           (cons |gx[1]#_g16078_|
                                                 (cons |gx[1]#_g16079_| '())))
                                     (cons (cons |gx[1]#_g16080_|
                                                 (cons |gx[1]#_g16081_|
                                                       (cons |gx[1]#_g16082_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-set::t
        '#f
        'export-set
        '#f
        '((final: . #t))
        '(source phi exports))))
    (define |gx[:0:]#import-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g16083_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16084_| '())
             (cons |gx[1]#_g16083_|
                   (cons |gx[1]#_g16085_|
                         (cons |gx[1]#_g16086_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-expander::t
        (list |gx[1]#_g16087_|)
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g16088_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16084_| '())
             (cons |gx[1]#_g16088_|
                   (cons |gx[1]#_g16089_|
                         (cons |gx[1]#_g16090_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#export-expander::t
        (list |gx[1]#_g16087_|)
        'export-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#import-export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g16091_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16083_| (cons |gx[1]#_g16088_| '()))
             (cons |gx[1]#_g16091_|
                   (cons |gx[1]#_g16092_|
                         (cons |gx[1]#_g16093_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-export-expander::t
        (list |gx[1]#_g16094_| |gx[1]#_g16095_|)
        'import-export-expander
        ':init!
        '()
        '())))))
