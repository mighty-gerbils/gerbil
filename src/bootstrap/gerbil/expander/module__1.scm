(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g15973_|
    (gx#make-syntax-quote
     'module-import::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15974_|
    (gx#make-syntax-quote
     'make-module-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15975_|
    (gx#make-syntax-quote
     'module-import?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15976_|
    (gx#make-syntax-quote
     'module-import-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15977_|
    (gx#make-syntax-quote
     'module-import-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15978_|
    (gx#make-syntax-quote
     'module-import-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15979_|
    (gx#make-syntax-quote
     'module-import-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15980_|
    (gx#make-syntax-quote
     'module-import-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15981_|
    (gx#make-syntax-quote
     'module-import-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15982_|
    (gx#make-syntax-quote
     'module-import-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15983_|
    (gx#make-syntax-quote
     'module-import-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15984_|
    (gx#make-syntax-quote
     'module-export::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15985_|
    (gx#make-syntax-quote
     'make-module-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15986_|
    (gx#make-syntax-quote
     'module-export?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15987_|
    (gx#make-syntax-quote
     'module-export-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15988_|
    (gx#make-syntax-quote
     'module-export-key
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15989_|
    (gx#make-syntax-quote
     'module-export-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15990_|
    (gx#make-syntax-quote
     'module-export-name
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15991_|
    (gx#make-syntax-quote
     'module-export-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15992_|
    (gx#make-syntax-quote
     'module-export-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15993_|
    (gx#make-syntax-quote
     'module-export-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15994_|
    (gx#make-syntax-quote
     'module-export-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15995_|
    (gx#make-syntax-quote
     'module-export-name-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15996_|
    (gx#make-syntax-quote
     'module-export-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15997_|
    (gx#make-syntax-quote 'import-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g15998_|
    (gx#make-syntax-quote
     'make-import-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15999_|
    (gx#make-syntax-quote 'import-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16000_|
    (gx#make-syntax-quote
     'import-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16001_|
    (gx#make-syntax-quote
     'import-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16002_|
    (gx#make-syntax-quote
     'import-set-imports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16003_|
    (gx#make-syntax-quote
     'import-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16004_|
    (gx#make-syntax-quote
     'import-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16005_|
    (gx#make-syntax-quote
     'import-set-imports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16006_|
    (gx#make-syntax-quote 'export-set::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16007_|
    (gx#make-syntax-quote
     'make-export-set
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16008_|
    (gx#make-syntax-quote 'export-set? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16009_|
    (gx#make-syntax-quote
     'export-set-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16010_|
    (gx#make-syntax-quote
     'export-set-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16011_|
    (gx#make-syntax-quote
     'export-set-exports
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16012_|
    (gx#make-syntax-quote
     'export-set-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16013_|
    (gx#make-syntax-quote
     'export-set-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16014_|
    (gx#make-syntax-quote
     'export-set-exports-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16015_|
    (gx#make-syntax-quote
     'import-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16016_|
    (gx#make-syntax-quote
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16017_|
    (gx#make-syntax-quote
     'make-import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16018_|
    (gx#make-syntax-quote
     'import-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16019_|
    (gx#make-syntax-quote 'user-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g16020_|
    (gx#make-syntax-quote
     'export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16021_|
    (gx#make-syntax-quote
     'make-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16022_|
    (gx#make-syntax-quote
     'export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16023_|
    (gx#make-syntax-quote
     'import-export-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16024_|
    (gx#make-syntax-quote
     'make-import-export-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16025_|
    (gx#make-syntax-quote
     'import-export-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16026_|
    (gx#make-syntax-quote
     'import-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g16027_|
    (gx#make-syntax-quote
     'export-expander
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g15973_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g15973_|
                   (cons |gx[1]#_g15974_|
                         (cons |gx[1]#_g15975_|
                               (cons (cons |gx[1]#_g15976_|
                                           (cons |gx[1]#_g15977_|
                                                 (cons |gx[1]#_g15978_|
                                                       (cons |gx[1]#_g15979_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g15980_|
                                                 (cons |gx[1]#_g15981_|
                                                       (cons |gx[1]#_g15982_|
                                                             (cons |gx[1]#_g15983_|
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
       |gx[1]#_g15984_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g15984_|
                   (cons |gx[1]#_g15985_|
                         (cons |gx[1]#_g15986_|
                               (cons (cons |gx[1]#_g15987_|
                                           (cons |gx[1]#_g15988_|
                                                 (cons |gx[1]#_g15989_|
                                                       (cons |gx[1]#_g15990_|
                                                             (cons |gx[1]#_g15991_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g15992_|
                                                 (cons |gx[1]#_g15993_|
                                                       (cons |gx[1]#_g15994_|
                                                             (cons |gx[1]#_g15995_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g15996_| '())))))
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
       |gx[1]#_g15997_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g15997_|
                   (cons |gx[1]#_g15998_|
                         (cons |gx[1]#_g15999_|
                               (cons (cons |gx[1]#_g16000_|
                                           (cons |gx[1]#_g16001_|
                                                 (cons |gx[1]#_g16002_| '())))
                                     (cons (cons |gx[1]#_g16003_|
                                                 (cons |gx[1]#_g16004_|
                                                       (cons |gx[1]#_g16005_|
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
       |gx[1]#_g16006_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g16006_|
                   (cons |gx[1]#_g16007_|
                         (cons |gx[1]#_g16008_|
                               (cons (cons |gx[1]#_g16009_|
                                           (cons |gx[1]#_g16010_|
                                                 (cons |gx[1]#_g16011_| '())))
                                     (cons (cons |gx[1]#_g16012_|
                                                 (cons |gx[1]#_g16013_|
                                                       (cons |gx[1]#_g16014_|
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
       |gx[1]#_g16015_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16016_| '())
             (cons |gx[1]#_g16015_|
                   (cons |gx[1]#_g16017_|
                         (cons |gx[1]#_g16018_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-expander::t
        (list |gx[1]#_g16019_|)
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g16020_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16016_| '())
             (cons |gx[1]#_g16020_|
                   (cons |gx[1]#_g16021_|
                         (cons |gx[1]#_g16022_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#export-expander::t
        (list |gx[1]#_g16019_|)
        'export-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#import-export-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gx[1]#_g16023_|
       'expander-identifiers:
       (cons (cons |gx[1]#_g16015_| (cons |gx[1]#_g16020_| '()))
             (cons |gx[1]#_g16023_|
                   (cons |gx[1]#_g16024_|
                         (cons |gx[1]#_g16025_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gx#import-export-expander::t
        (list |gx[1]#_g16026_| |gx[1]#_g16027_|)
        'import-export-expander
        ':init!
        '()
        '())))))
