(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11626_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11627_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11628_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11629_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11630_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11631_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11632_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11633_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11634_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11635_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11636_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11637_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11638_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11639_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11640_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11641_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11642_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11643_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11644_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11645_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11646_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11647_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11648_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11649_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11650_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11651_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11652_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11653_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11654_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11655_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11656_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11657_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11658_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11659_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11660_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11661_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11662_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11663_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11664_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11665_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11666_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11667_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11668_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11669_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11670_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11671_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11672_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11673_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11674_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11675_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11676_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11677_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11678_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11679_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11680_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11681_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11682_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11683_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11626_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11627_|
                   (cons |gx[1]#_g11628_|
                         (cons |gx[1]#_g11629_|
                               (cons (cons |gx[1]#_g11630_|
                                           (cons |gx[1]#_g11631_|
                                                 (cons |gx[1]#_g11632_|
                                                       (cons |gx[1]#_g11633_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11634_|
                                                 (cons |gx[1]#_g11635_|
                                                       (cons |gx[1]#_g11636_|
                                                             (cons |gx[1]#_g11637_|
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
       |gx[1]#_g11638_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11639_|
                   (cons |gx[1]#_g11640_|
                         (cons |gx[1]#_g11641_|
                               (cons (cons |gx[1]#_g11642_|
                                           (cons |gx[1]#_g11643_|
                                                 (cons |gx[1]#_g11644_|
                                                       (cons |gx[1]#_g11645_|
                                                             (cons |gx[1]#_g11646_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11647_|
                                                 (cons |gx[1]#_g11648_|
                                                       (cons |gx[1]#_g11649_|
                                                             (cons |gx[1]#_g11650_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11651_| '())))))
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
       |gx[1]#_g11652_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11653_|
                   (cons |gx[1]#_g11654_|
                         (cons |gx[1]#_g11655_|
                               (cons (cons |gx[1]#_g11656_|
                                           (cons |gx[1]#_g11657_|
                                                 (cons |gx[1]#_g11658_| '())))
                                     (cons (cons |gx[1]#_g11659_|
                                                 (cons |gx[1]#_g11660_|
                                                       (cons |gx[1]#_g11661_|
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
       |gx[1]#_g11662_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11663_|
                   (cons |gx[1]#_g11664_|
                         (cons |gx[1]#_g11665_|
                               (cons (cons |gx[1]#_g11666_|
                                           (cons |gx[1]#_g11667_|
                                                 (cons |gx[1]#_g11668_| '())))
                                     (cons (cons |gx[1]#_g11669_|
                                                 (cons |gx[1]#_g11670_|
                                                       (cons |gx[1]#_g11671_|
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
       |gx[1]#_g11672_|
       'expander-identifiers:
       (cons |gx[1]#_g11673_|
             (cons |gx[1]#_g11674_|
                   (cons |gx[1]#_g11675_|
                         (cons |gx[1]#_g11676_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11677_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11678_|
       'expander-identifiers:
       (cons |gx[1]#_g11679_|
             (cons |gx[1]#_g11680_|
                   (cons |gx[1]#_g11681_|
                         (cons |gx[1]#_g11682_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11683_|
        'export-expander
        ':init!
        '()
        '())))))
