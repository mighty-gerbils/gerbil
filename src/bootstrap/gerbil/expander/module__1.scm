(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11599_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11600_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11601_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11602_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11603_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11604_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11605_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11606_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11607_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11608_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11609_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11610_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11611_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11612_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11613_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11614_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11615_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11616_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11617_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11618_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11619_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11620_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11621_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11622_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11623_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11624_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11625_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11626_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11627_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11628_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11629_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11630_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11631_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11632_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11633_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11634_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11635_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11636_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11637_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11638_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11639_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11640_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11641_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11642_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11643_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11644_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11645_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11646_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11647_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11648_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11649_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11650_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11651_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11652_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11653_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11654_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11655_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11656_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11599_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11600_|
                   (cons |gx[1]#_g11601_|
                         (cons |gx[1]#_g11602_|
                               (cons (cons |gx[1]#_g11603_|
                                           (cons |gx[1]#_g11604_|
                                                 (cons |gx[1]#_g11605_|
                                                       (cons |gx[1]#_g11606_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11607_|
                                                 (cons |gx[1]#_g11608_|
                                                       (cons |gx[1]#_g11609_|
                                                             (cons |gx[1]#_g11610_|
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
       |gx[1]#_g11611_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11612_|
                   (cons |gx[1]#_g11613_|
                         (cons |gx[1]#_g11614_|
                               (cons (cons |gx[1]#_g11615_|
                                           (cons |gx[1]#_g11616_|
                                                 (cons |gx[1]#_g11617_|
                                                       (cons |gx[1]#_g11618_|
                                                             (cons |gx[1]#_g11619_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11620_|
                                                 (cons |gx[1]#_g11621_|
                                                       (cons |gx[1]#_g11622_|
                                                             (cons |gx[1]#_g11623_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11624_| '())))))
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
       |gx[1]#_g11625_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11626_|
                   (cons |gx[1]#_g11627_|
                         (cons |gx[1]#_g11628_|
                               (cons (cons |gx[1]#_g11629_|
                                           (cons |gx[1]#_g11630_|
                                                 (cons |gx[1]#_g11631_| '())))
                                     (cons (cons |gx[1]#_g11632_|
                                                 (cons |gx[1]#_g11633_|
                                                       (cons |gx[1]#_g11634_|
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
       |gx[1]#_g11635_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11636_|
                   (cons |gx[1]#_g11637_|
                         (cons |gx[1]#_g11638_|
                               (cons (cons |gx[1]#_g11639_|
                                           (cons |gx[1]#_g11640_|
                                                 (cons |gx[1]#_g11641_| '())))
                                     (cons (cons |gx[1]#_g11642_|
                                                 (cons |gx[1]#_g11643_|
                                                       (cons |gx[1]#_g11644_|
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
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11645_|
       'expander-identifiers:
       (cons |gx[1]#_g11646_|
             (cons |gx[1]#_g11647_|
                   (cons |gx[1]#_g11648_|
                         (cons |gx[1]#_g11649_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11650_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11651_|
       'expander-identifiers:
       (cons |gx[1]#_g11652_|
             (cons |gx[1]#_g11653_|
                   (cons |gx[1]#_g11654_|
                         (cons |gx[1]#_g11655_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11656_|
        'export-expander
        ':init!
        '()
        '())))))
