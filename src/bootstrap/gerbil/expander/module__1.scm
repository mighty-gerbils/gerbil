(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g40443_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g40444_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g40445_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g40446_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g40447_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g40448_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g40449_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g40450_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g40451_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g40452_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g40453_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g40454_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g40455_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g40456_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g40457_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g40458_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g40459_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g40460_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g40461_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g40462_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g40463_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g40464_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g40465_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g40466_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g40467_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g40468_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g40469_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g40470_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g40471_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g40472_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g40473_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g40474_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g40475_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g40476_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g40477_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g40478_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g40479_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g40480_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g40481_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g40482_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g40483_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g40484_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g40485_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g40486_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g40487_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g40488_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g40489_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g40490_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g40491_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g40492_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g40493_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g40494_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g40495_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g40496_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g40497_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g40498_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g40499_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g40500_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40443_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g40444_|
                   (cons |gx[1]#_g40445_|
                         (cons |gx[1]#_g40446_|
                               (cons (cons |gx[1]#_g40447_|
                                           (cons |gx[1]#_g40448_|
                                                 (cons |gx[1]#_g40449_|
                                                       (cons |gx[1]#_g40450_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g40451_|
                                                 (cons |gx[1]#_g40452_|
                                                       (cons |gx[1]#_g40453_|
                                                             (cons |gx[1]#_g40454_|
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
       |gx[1]#_g40455_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g40456_|
                   (cons |gx[1]#_g40457_|
                         (cons |gx[1]#_g40458_|
                               (cons (cons |gx[1]#_g40459_|
                                           (cons |gx[1]#_g40460_|
                                                 (cons |gx[1]#_g40461_|
                                                       (cons |gx[1]#_g40462_|
                                                             (cons |gx[1]#_g40463_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g40464_|
                                                 (cons |gx[1]#_g40465_|
                                                       (cons |gx[1]#_g40466_|
                                                             (cons |gx[1]#_g40467_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g40468_| '())))))
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
       |gx[1]#_g40469_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g40470_|
                   (cons |gx[1]#_g40471_|
                         (cons |gx[1]#_g40472_|
                               (cons (cons |gx[1]#_g40473_|
                                           (cons |gx[1]#_g40474_|
                                                 (cons |gx[1]#_g40475_| '())))
                                     (cons (cons |gx[1]#_g40476_|
                                                 (cons |gx[1]#_g40477_|
                                                       (cons |gx[1]#_g40478_|
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
       |gx[1]#_g40479_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g40480_|
                   (cons |gx[1]#_g40481_|
                         (cons |gx[1]#_g40482_|
                               (cons (cons |gx[1]#_g40483_|
                                           (cons |gx[1]#_g40484_|
                                                 (cons |gx[1]#_g40485_| '())))
                                     (cons (cons |gx[1]#_g40486_|
                                                 (cons |gx[1]#_g40487_|
                                                       (cons |gx[1]#_g40488_|
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
       |gx[1]#_g40489_|
       'expander-identifiers:
       (cons |gx[1]#_g40490_|
             (cons |gx[1]#_g40491_|
                   (cons |gx[1]#_g40492_|
                         (cons |gx[1]#_g40493_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g40494_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40495_|
       'expander-identifiers:
       (cons |gx[1]#_g40496_|
             (cons |gx[1]#_g40497_|
                   (cons |gx[1]#_g40498_|
                         (cons |gx[1]#_g40499_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g40500_|
        'export-expander
        ':init!
        '()
        '())))))
