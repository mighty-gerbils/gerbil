(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12550_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g12551_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g12552_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g12553_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g12554_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g12555_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g12556_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g12557_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g12558_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g12559_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g12560_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g12561_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g12562_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g12563_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g12564_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g12565_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g12566_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g12567_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g12568_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g12569_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g12570_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g12571_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g12572_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g12573_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g12574_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g12575_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g12576_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g12577_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g12578_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g12579_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g12580_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g12581_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g12582_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g12583_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g12584_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g12585_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g12586_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g12587_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g12588_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g12589_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g12590_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g12591_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g12592_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g12593_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g12594_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g12595_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g12596_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g12597_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12598_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g12599_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g12600_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g12601_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g12602_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g12603_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12604_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g12605_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g12606_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g12607_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12550_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12551_|
                   (cons |gx[1]#_g12552_|
                         (cons |gx[1]#_g12553_|
                               (cons (cons |gx[1]#_g12554_|
                                           (cons |gx[1]#_g12555_|
                                                 (cons |gx[1]#_g12556_|
                                                       (cons |gx[1]#_g12557_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g12558_|
                                                 (cons |gx[1]#_g12559_|
                                                       (cons |gx[1]#_g12560_|
                                                             (cons |gx[1]#_g12561_|
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
       |gx[1]#_g12562_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12563_|
                   (cons |gx[1]#_g12564_|
                         (cons |gx[1]#_g12565_|
                               (cons (cons |gx[1]#_g12566_|
                                           (cons |gx[1]#_g12567_|
                                                 (cons |gx[1]#_g12568_|
                                                       (cons |gx[1]#_g12569_|
                                                             (cons |gx[1]#_g12570_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g12571_|
                                                 (cons |gx[1]#_g12572_|
                                                       (cons |gx[1]#_g12573_|
                                                             (cons |gx[1]#_g12574_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12575_| '())))))
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
       |gx[1]#_g12576_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12577_|
                   (cons |gx[1]#_g12578_|
                         (cons |gx[1]#_g12579_|
                               (cons (cons |gx[1]#_g12580_|
                                           (cons |gx[1]#_g12581_|
                                                 (cons |gx[1]#_g12582_| '())))
                                     (cons (cons |gx[1]#_g12583_|
                                                 (cons |gx[1]#_g12584_|
                                                       (cons |gx[1]#_g12585_|
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
       |gx[1]#_g12586_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12587_|
                   (cons |gx[1]#_g12588_|
                         (cons |gx[1]#_g12589_|
                               (cons (cons |gx[1]#_g12590_|
                                           (cons |gx[1]#_g12591_|
                                                 (cons |gx[1]#_g12592_| '())))
                                     (cons (cons |gx[1]#_g12593_|
                                                 (cons |gx[1]#_g12594_|
                                                       (cons |gx[1]#_g12595_|
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
       |gx[1]#_g12596_|
       'expander-identifiers:
       (cons |gx[1]#_g12597_|
             (cons |gx[1]#_g12598_|
                   (cons |gx[1]#_g12599_|
                         (cons |gx[1]#_g12600_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g12601_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12602_|
       'expander-identifiers:
       (cons |gx[1]#_g12603_|
             (cons |gx[1]#_g12604_|
                   (cons |gx[1]#_g12605_|
                         (cons |gx[1]#_g12606_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g12607_|
        'export-expander
        ':init!
        '()
        '())))))
