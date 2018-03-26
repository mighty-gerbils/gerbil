(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g14680_|
    (gx#make-syntax-quote
     'module-import::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14681_|
    (gx#make-syntax-quote
     'make-module-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14682_|
    (gx#make-syntax-quote
     'module-import?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14683_|
    (gx#make-syntax-quote
     'module-import-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14684_|
    (gx#make-syntax-quote
     'module-import-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14685_|
    (gx#make-syntax-quote
     'module-import-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14686_|
    (gx#make-syntax-quote
     'module-import-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14687_|
    (gx#make-syntax-quote
     'module-import-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14688_|
    (gx#make-syntax-quote
     'module-import-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14689_|
    (gx#make-syntax-quote
     'module-import-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14690_|
    (gx#make-syntax-quote
     'module-import-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14691_|
    (gx#make-syntax-quote
     'module-export::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14692_|
    (gx#make-syntax-quote
     'make-module-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14693_|
    (gx#make-syntax-quote
     'module-export?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14694_|
    (gx#make-syntax-quote
     'module-export-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14695_|
    (gx#make-syntax-quote
     'module-export-key
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14696_|
    (gx#make-syntax-quote
     'module-export-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14697_|
    (gx#make-syntax-quote
     'module-export-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14698_|
    (gx#make-syntax-quote
     'module-export-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14699_|
    (gx#make-syntax-quote
     'module-export-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14700_|
    (gx#make-syntax-quote
     'module-export-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14701_|
    (gx#make-syntax-quote
     'module-export-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14702_|
    (gx#make-syntax-quote
     'module-export-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14703_|
    (gx#make-syntax-quote
     'module-export-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14704_|
    (gx#make-syntax-quote 'import-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g14705_|
    (gx#make-syntax-quote
     'make-import-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14706_|
    (gx#make-syntax-quote 'import-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g14707_|
    (gx#make-syntax-quote
     'import-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14708_|
    (gx#make-syntax-quote
     'import-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14709_|
    (gx#make-syntax-quote
     'import-set-imports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14710_|
    (gx#make-syntax-quote
     'import-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14711_|
    (gx#make-syntax-quote
     'import-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14712_|
    (gx#make-syntax-quote
     'import-set-imports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14713_|
    (gx#make-syntax-quote 'export-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g14714_|
    (gx#make-syntax-quote
     'make-export-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14715_|
    (gx#make-syntax-quote 'export-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g14716_|
    (gx#make-syntax-quote
     'export-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14717_|
    (gx#make-syntax-quote
     'export-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14718_|
    (gx#make-syntax-quote
     'export-set-exports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14719_|
    (gx#make-syntax-quote
     'export-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14720_|
    (gx#make-syntax-quote
     'export-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14721_|
    (gx#make-syntax-quote
     'export-set-exports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14722_|
    (gx#make-syntax-quote
     'import-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14723_|
    (gx#make-syntax-quote
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14724_|
    (gx#make-syntax-quote
     'make-import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14725_|
    (gx#make-syntax-quote
     'import-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14726_|
    (gx#make-syntax-quote 'user-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g14727_|
    (gx#make-syntax-quote
     'export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14728_|
    (gx#make-syntax-quote
     'make-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14729_|
    (gx#make-syntax-quote
     'export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14730_|
    (gx#make-syntax-quote
     'import-export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14731_|
    (gx#make-syntax-quote
     'make-import-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14732_|
    (gx#make-syntax-quote
     'import-export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14733_|
    (gx#make-syntax-quote
     'import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g14734_|
    (gx#make-syntax-quote
     'export-expander
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g14680_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g14680_|
                   (cons |gx[1]#_g14681_|
                         (cons |gx[1]#_g14682_|
                               (cons (cons |gx[1]#_g14683_|
                                           (cons |gx[1]#_g14684_|
                                                 (cons |gx[1]#_g14685_|
                                                       (cons |gx[1]#_g14686_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g14687_|
                                                 (cons |gx[1]#_g14688_|
                                                       (cons |gx[1]#_g14689_|
                                                             (cons |gx[1]#_g14690_|
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
       |gx[1]#_g14691_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g14691_|
                   (cons |gx[1]#_g14692_|
                         (cons |gx[1]#_g14693_|
                               (cons (cons |gx[1]#_g14694_|
                                           (cons |gx[1]#_g14695_|
                                                 (cons |gx[1]#_g14696_|
                                                       (cons |gx[1]#_g14697_|
                                                             (cons |gx[1]#_g14698_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g14699_|
                                                 (cons |gx[1]#_g14700_|
                                                       (cons |gx[1]#_g14701_|
                                                             (cons |gx[1]#_g14702_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g14703_| '())))))
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
       |gx[1]#_g14704_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g14704_|
                   (cons |gx[1]#_g14705_|
                         (cons |gx[1]#_g14706_|
                               (cons (cons |gx[1]#_g14707_|
                                           (cons |gx[1]#_g14708_|
                                                 (cons |gx[1]#_g14709_| '())))
                                     (cons (cons |gx[1]#_g14710_|
                                                 (cons |gx[1]#_g14711_|
                                                       (cons |gx[1]#_g14712_|
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
       |gx[1]#_g14713_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g14713_|
                   (cons |gx[1]#_g14714_|
                         (cons |gx[1]#_g14715_|
                               (cons (cons |gx[1]#_g14716_|
                                           (cons |gx[1]#_g14717_|
                                                 (cons |gx[1]#_g14718_| '())))
                                     (cons (cons |gx[1]#_g14719_|
                                                 (cons |gx[1]#_g14720_|
                                                       (cons |gx[1]#_g14721_|
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
       |gx[1]#_g14722_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g14723_| '())
             (cons |gx[1]#_g14722_|
                   (cons |gx[1]#_g14724_|
                         (cons |gx[1]#_g14725_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-expander::t
        (list |gx[1]#_g14726_|)
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g14727_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g14723_| '())
             (cons |gx[1]#_g14727_|
                   (cons |gx[1]#_g14728_|
                         (cons |gx[1]#_g14729_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#export-expander::t
        (list |gx[1]#_g14726_|)
        'export-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#import-export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g14730_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g14722_| (cons |gx[1]#_g14727_| '()))
             (cons |gx[1]#_g14730_|
                   (cons |gx[1]#_g14731_|
                         (cons |gx[1]#_g14732_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-export-expander::t
        (list |gx[1]#_g14733_| |gx[1]#_g14734_|)
        'import-export-expander
        ':init!
        '()
        '())))))
