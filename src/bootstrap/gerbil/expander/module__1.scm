(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g11534_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11535_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g11536_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g11537_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g11538_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g11539_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g11540_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g11541_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g11542_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g11543_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g11544_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g11545_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g11546_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11547_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g11548_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g11549_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g11550_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g11551_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g11552_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g11553_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g11554_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g11555_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g11556_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g11557_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g11558_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g11559_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g11560_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11561_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g11562_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g11563_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g11564_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g11565_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g11566_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g11567_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g11568_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g11569_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g11570_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11571_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g11572_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g11573_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g11574_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g11575_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g11576_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g11577_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g11578_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g11579_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g11580_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11581_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11582_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g11583_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g11584_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g11585_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g11586_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11587_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g11588_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g11589_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g11590_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g11591_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11534_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11535_|
                   (cons |gx[1]#_g11536_|
                         (cons |gx[1]#_g11537_|
                               (cons (cons |gx[1]#_g11538_|
                                           (cons |gx[1]#_g11539_|
                                                 (cons |gx[1]#_g11540_|
                                                       (cons |gx[1]#_g11541_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g11542_|
                                                 (cons |gx[1]#_g11543_|
                                                       (cons |gx[1]#_g11544_|
                                                             (cons |gx[1]#_g11545_|
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
       |gx[1]#_g11546_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11547_|
                   (cons |gx[1]#_g11548_|
                         (cons |gx[1]#_g11549_|
                               (cons (cons |gx[1]#_g11550_|
                                           (cons |gx[1]#_g11551_|
                                                 (cons |gx[1]#_g11552_|
                                                       (cons |gx[1]#_g11553_|
                                                             (cons |gx[1]#_g11554_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g11555_|
                                                 (cons |gx[1]#_g11556_|
                                                       (cons |gx[1]#_g11557_|
                                                             (cons |gx[1]#_g11558_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g11559_| '())))))
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
       |gx[1]#_g11560_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11561_|
                   (cons |gx[1]#_g11562_|
                         (cons |gx[1]#_g11563_|
                               (cons (cons |gx[1]#_g11564_|
                                           (cons |gx[1]#_g11565_|
                                                 (cons |gx[1]#_g11566_| '())))
                                     (cons (cons |gx[1]#_g11567_|
                                                 (cons |gx[1]#_g11568_|
                                                       (cons |gx[1]#_g11569_|
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
       |gx[1]#_g11570_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g11571_|
                   (cons |gx[1]#_g11572_|
                         (cons |gx[1]#_g11573_|
                               (cons (cons |gx[1]#_g11574_|
                                           (cons |gx[1]#_g11575_|
                                                 (cons |gx[1]#_g11576_| '())))
                                     (cons (cons |gx[1]#_g11577_|
                                                 (cons |gx[1]#_g11578_|
                                                       (cons |gx[1]#_g11579_|
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
       |gx[1]#_g11580_|
       'expander-identifiers:
       (cons |gx[1]#_g11581_|
             (cons |gx[1]#_g11582_|
                   (cons |gx[1]#_g11583_|
                         (cons |gx[1]#_g11584_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g11585_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g11586_|
       'expander-identifiers:
       (cons |gx[1]#_g11587_|
             (cons |gx[1]#_g11588_|
                   (cons |gx[1]#_g11589_|
                         (cons |gx[1]#_g11590_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g11591_|
        'export-expander
        ':init!
        '()
        '())))))
