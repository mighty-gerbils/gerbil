(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g10752_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g10753_| (gx#core-quote-syntax 'module-import::t))
  (define |gx[1]#_g10754_| (gx#core-quote-syntax 'make-module-import))
  (define |gx[1]#_g10755_| (gx#core-quote-syntax 'module-import?))
  (define |gx[1]#_g10756_| (gx#core-quote-syntax 'module-import-source))
  (define |gx[1]#_g10757_| (gx#core-quote-syntax 'module-import-name))
  (define |gx[1]#_g10758_| (gx#core-quote-syntax 'module-import-phi))
  (define |gx[1]#_g10759_| (gx#core-quote-syntax 'module-import-weak?))
  (define |gx[1]#_g10760_| (gx#core-quote-syntax 'module-import-source-set!))
  (define |gx[1]#_g10761_| (gx#core-quote-syntax 'module-import-name-set!))
  (define |gx[1]#_g10762_| (gx#core-quote-syntax 'module-import-phi-set!))
  (define |gx[1]#_g10763_| (gx#core-quote-syntax 'module-import-weak?-set!))
  (define |gx[1]#_g10764_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g10765_| (gx#core-quote-syntax 'module-export::t))
  (define |gx[1]#_g10766_| (gx#core-quote-syntax 'make-module-export))
  (define |gx[1]#_g10767_| (gx#core-quote-syntax 'module-export?))
  (define |gx[1]#_g10768_| (gx#core-quote-syntax 'module-export-context))
  (define |gx[1]#_g10769_| (gx#core-quote-syntax 'module-export-key))
  (define |gx[1]#_g10770_| (gx#core-quote-syntax 'module-export-phi))
  (define |gx[1]#_g10771_| (gx#core-quote-syntax 'module-export-name))
  (define |gx[1]#_g10772_| (gx#core-quote-syntax 'module-export-weak?))
  (define |gx[1]#_g10773_| (gx#core-quote-syntax 'module-export-context-set!))
  (define |gx[1]#_g10774_| (gx#core-quote-syntax 'module-export-key-set!))
  (define |gx[1]#_g10775_| (gx#core-quote-syntax 'module-export-phi-set!))
  (define |gx[1]#_g10776_| (gx#core-quote-syntax 'module-export-name-set!))
  (define |gx[1]#_g10777_| (gx#core-quote-syntax 'module-export-weak?-set!))
  (define |gx[1]#_g10778_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g10779_| (gx#core-quote-syntax 'import-set::t))
  (define |gx[1]#_g10780_| (gx#core-quote-syntax 'make-import-set))
  (define |gx[1]#_g10781_| (gx#core-quote-syntax 'import-set?))
  (define |gx[1]#_g10782_| (gx#core-quote-syntax 'import-set-source))
  (define |gx[1]#_g10783_| (gx#core-quote-syntax 'import-set-phi))
  (define |gx[1]#_g10784_| (gx#core-quote-syntax 'import-set-imports))
  (define |gx[1]#_g10785_| (gx#core-quote-syntax 'import-set-source-set!))
  (define |gx[1]#_g10786_| (gx#core-quote-syntax 'import-set-phi-set!))
  (define |gx[1]#_g10787_| (gx#core-quote-syntax 'import-set-imports-set!))
  (define |gx[1]#_g10788_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g10789_| (gx#core-quote-syntax 'export-set::t))
  (define |gx[1]#_g10790_| (gx#core-quote-syntax 'make-export-set))
  (define |gx[1]#_g10791_| (gx#core-quote-syntax 'export-set?))
  (define |gx[1]#_g10792_| (gx#core-quote-syntax 'export-set-source))
  (define |gx[1]#_g10793_| (gx#core-quote-syntax 'export-set-phi))
  (define |gx[1]#_g10794_| (gx#core-quote-syntax 'export-set-exports))
  (define |gx[1]#_g10795_| (gx#core-quote-syntax 'export-set-source-set!))
  (define |gx[1]#_g10796_| (gx#core-quote-syntax 'export-set-phi-set!))
  (define |gx[1]#_g10797_| (gx#core-quote-syntax 'export-set-exports-set!))
  (define |gx[1]#_g10798_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g10799_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g10800_| (gx#core-quote-syntax 'import-expander::t))
  (define |gx[1]#_g10801_| (gx#core-quote-syntax 'make-import-expander))
  (define |gx[1]#_g10802_| (gx#core-quote-syntax 'import-expander?))
  (define |gx[1]#_g10803_| (gx#core-quote-syntax 'user-expander))
  (define |gx[1]#_g10804_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g10805_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g10806_| (gx#core-quote-syntax 'export-expander::t))
  (define |gx[1]#_g10807_| (gx#core-quote-syntax 'make-export-expander))
  (define |gx[1]#_g10808_| (gx#core-quote-syntax 'export-expander?))
  (define |gx[1]#_g10809_| (gx#core-quote-syntax 'user-expander))
  (begin
    (define |gx[:0:]#module-import|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g10752_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g10753_|
                   (cons |gx[1]#_g10754_|
                         (cons |gx[1]#_g10755_|
                               (cons (cons |gx[1]#_g10756_|
                                           (cons |gx[1]#_g10757_|
                                                 (cons |gx[1]#_g10758_|
                                                       (cons |gx[1]#_g10759_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g10760_|
                                                 (cons |gx[1]#_g10761_|
                                                       (cons |gx[1]#_g10762_|
                                                             (cons |gx[1]#_g10763_|
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
       |gx[1]#_g10764_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g10765_|
                   (cons |gx[1]#_g10766_|
                         (cons |gx[1]#_g10767_|
                               (cons (cons |gx[1]#_g10768_|
                                           (cons |gx[1]#_g10769_|
                                                 (cons |gx[1]#_g10770_|
                                                       (cons |gx[1]#_g10771_|
                                                             (cons |gx[1]#_g10772_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g10773_|
                                                 (cons |gx[1]#_g10774_|
                                                       (cons |gx[1]#_g10775_|
                                                             (cons |gx[1]#_g10776_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g10777_| '())))))
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
       |gx[1]#_g10778_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g10779_|
                   (cons |gx[1]#_g10780_|
                         (cons |gx[1]#_g10781_|
                               (cons (cons |gx[1]#_g10782_|
                                           (cons |gx[1]#_g10783_|
                                                 (cons |gx[1]#_g10784_| '())))
                                     (cons (cons |gx[1]#_g10785_|
                                                 (cons |gx[1]#_g10786_|
                                                       (cons |gx[1]#_g10787_|
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
       |gx[1]#_g10788_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g10789_|
                   (cons |gx[1]#_g10790_|
                         (cons |gx[1]#_g10791_|
                               (cons (cons |gx[1]#_g10792_|
                                           (cons |gx[1]#_g10793_|
                                                 (cons |gx[1]#_g10794_| '())))
                                     (cons (cons |gx[1]#_g10795_|
                                                 (cons |gx[1]#_g10796_|
                                                       (cons |gx[1]#_g10797_|
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
       |gx[1]#_g10798_|
       'expander-identifiers:
       (cons |gx[1]#_g10799_|
             (cons |gx[1]#_g10800_|
                   (cons |gx[1]#_g10801_|
                         (cons |gx[1]#_g10802_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-expander::t
        |gx[1]#_g10803_|
        'import-expander
        ':init!
        '()
        '())))
    (define |gx[:0:]#export-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g10804_|
       'expander-identifiers:
       (cons |gx[1]#_g10805_|
             (cons |gx[1]#_g10806_|
                   (cons |gx[1]#_g10807_|
                         (cons |gx[1]#_g10808_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#export-expander::t
        |gx[1]#_g10809_|
        'export-expander
        ':init!
        '()
        '())))))
