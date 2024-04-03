(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130118_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130120_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130122_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130124_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130125_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130127_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130128_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130130_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130131_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130133_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130134_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129313%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129313%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129316%_)
        (let* ((_%g129319129343%_
                (lambda (_%g129320129339%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129320129339%_))))
               (_%g129318129646%_
                (lambda (_%g129320129347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129320129347%_))
                      (let ((_%e129325129350%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129320129347%_))))
                        (let ((_%hd129324129354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129325129350%_)))
                              (_%tl129323129357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129325129350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129323129357%_))
                              (let ((_%e129328129360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129323129357%_))))
                                (let ((_%hd129327129364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129328129360%_)))
                                      (_%tl129326129367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129328129360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129326129367%_))
                                      (let ((_g130109_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129326129367%_
                                                '0))))
                                        (begin
                                          (let ((_g130110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130109_)
                                                       (##vector-length
                                                        _g130109_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130110_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130110_)))
                                          (let ((_%target129329129370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130109_ 0)))
                                                (_%tl129331129373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130109_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129331129373%_))
                                                (letrec ((_%loop129332129376%_
                                                          (lambda (_%hd129330129380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129336129383%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129330129380%_))
                        (let ((_%e129333129386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129330129380%_))))
                          (let ((_%lp-hd129334129390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129333129386%_)))
                                (_%lp-tl129335129393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129333129386%_))))
                            (_%loop129332129376%_
                             _%lp-tl129335129393%_
                             (cons _%lp-hd129334129390%_
                                   _%clause129336129383%_))))
                        (let ((_%clause129337129396%_
                               (reverse _%clause129336129383%_)))
                          ((lambda (_%L129400%_ _%L129402%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129402%_))
                                 (let* ((_%g129421129438%_
                                         (lambda (_%g129422129434%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129422129434%_))))
                                        (_%g129420129499%_
                                         (lambda (_%g129422129442%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129422129442%_))
                                               (let ((_g130111_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129422129442%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130112_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130111_)
                        (##vector-length _g130111_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130112_ 2)))
                 (error "Context expects 2 values" _g130112_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129424129445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130111_
                                                             0)))
                                                         (_%tl129426129448%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130111_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129426129448%_))
                                                         (letrec ((_%loop129427129451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129425129455%_ _%clause129431129458%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129425129455%_))
                                 (let ((_%e129428129461%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129425129455%_))))
                                   (let ((_%lp-hd129429129465%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129428129461%_)))
                                         (_%lp-tl129430129468%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129428129461%_))))
                                     (_%loop129427129451%_
                                      _%lp-tl129430129468%_
                                      (cons _%lp-hd129429129465%_
                                            _%clause129431129458%_))))
                                 (let ((_%clause129432129471%_
                                        (reverse _%clause129431129458%_)))
                                   ((lambda (_%L129475%_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'lambda))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '$stx))
                                                          '())
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '$stx))
                              (cons _%L129402%_
                                    (let ((__tmp130113
                                           (lambda (_%g129490129493%_
                                                    _%g129491129496%_)
                                             (cons _%g129490129493%_
                                                   _%g129491129496%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130113
                                       '()
                                       _%L129475%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129432129471%_))))))
                   (_%loop129427129451%_ _%target129424129445%_ '()))
                 (_%g129421129438%_ _%g129422129442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129421129438%_
                                                _%g129422129442%_)))))
                                   (_%g129420129499%_
                                    (let ((__tmp130116
                                           (lambda (_%clause129503%_)
                                             (let* ((_%__stx130035130036%_
                                                     _%clause129503%_)
                                                    (_%g129507129534%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130035130036%_)))))
                                               (let ((_%__kont130038130039%_
                                                      (lambda (_%L129619%_
                                                               _%L129621%_)
                                                        (cons _%L129621%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129619%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130040130041%_
                                                      (lambda (_%L129571%_
                                                               _%L129573%_
                                                               _%L129574%_)
                                                        (cons _%L129574%_
                                                              (cons _%L129573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129571%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130035130036%_))
                                                     (let ((_%e129513129599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130035130036%_))))
                                                       (let ((_%tl129511129606%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129513129599%_)))
                     (_%hd129512129603%_
                      (let () (declare (not safe)) (##car _%e129513129599%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129511129606%_))
                     (let ((_%e129516129609%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129511129606%_))))
                       (let ((_%tl129514129616%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129516129609%_)))
                             (_%hd129515129613%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129516129609%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129514129616%_))
                             (_%__kont130038130039%_
                              _%hd129515129613%_
                              _%hd129512129603%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129514129616%_))
                                 (let ((_%e129528129561%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129514129616%_))))
                                   (let ((_%tl129526129568%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129528129561%_)))
                                         (_%hd129527129565%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129528129561%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129526129568%_))
                                         (_%__kont130040130041%_
                                          _%hd129527129565%_
                                          _%hd129515129613%_
                                          _%hd129512129603%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129507129534%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129507129534%_))))))
                     (let () (declare (not safe)) (_%g129507129534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129507129534%_)))))))
                                          (__tmp130114
                                           (let ((__tmp130115
                                                  (lambda (_%g129637129640%_
                                                           _%g129638129643%_)
                                                    (cons _%g129637129640%_
                                                          _%g129638129643%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130115
                                              '()
                                              _%L129400%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130116 __tmp130114))))
                                 (_%g129319129343%_ _%g129320129347%_)))
                           _%clause129337129396%_
                           _%hd129327129364%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129332129376%_
                                                   _%target129329129370%_
                                                   '()))
                                                (_%g129319129343%_
                                                 _%g129320129347%_)))))
                                      (_%g129319129343%_ _%g129320129347%_))))
                              (_%g129319129343%_ _%g129320129347%_))))
                      (_%g129319129343%_ _%g129320129347%_)))))
          (_%g129318129646%_ _%stx129316%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130085
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130085
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130085
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130085
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 ':init! '11 '#f '#f))
        (let ((__tmp130117 |gxc[1]#_g130118_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130117 '12 '#f '#f))
        (let ((__tmp130119 |gxc[1]#_g130120_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130119 '13 '#f '#f))
        (let ((__tmp130121 |gxc[1]#_g130122_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130121 '14 '#f '#f))
        (let ((__tmp130123
               (cons (cons 'gensyms |gxc[1]#_g130124_|)
                     (cons (cons 'bindings |gxc[1]#_g130125_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130123 '15 '#f '#f))
        (let ((__tmp130126
               (cons (cons 'gensyms |gxc[1]#_g130127_|)
                     (cons (cons 'bindings |gxc[1]#_g130128_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130126 '16 '#f '#f))
        (let ((__tmp130129
               (cons (cons 'gensyms |gxc[1]#_g130130_|)
                     (cons (cons 'bindings |gxc[1]#_g130131_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130129 '17 '#f '#f))
        (let ((__tmp130132
               (cons (cons 'gensyms |gxc[1]#_g130133_|)
                     (cons (cons 'bindings |gxc[1]#_g130134_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 __tmp130132 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130085 '() '20 '#f '#f))
        __obj130085))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129652%_)
        (let* ((_%g129656129670%_
                (lambda (_%g129657129666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129657129666%_))))
               (_%g129655129711%_
                (lambda (_%g129657129674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129657129674%_))
                      (let ((_%e129661129677%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129657129674%_))))
                        (let ((_%hd129660129681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129661129677%_)))
                              (_%tl129659129684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129661129677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129659129684%_))
                              (let ((_%e129664129687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129659129684%_))))
                                (let ((_%hd129663129691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129664129687%_)))
                                      (_%tl129662129694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129664129687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129662129694%_))
                                      ((lambda (_%L129697%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+verbose-mutex+))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L129697%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129663129691%_)
                                      (_%g129656129670%_ _%g129657129674%_))))
                              (_%g129656129670%_ _%g129657129674%_))))
                      (_%g129656129670%_ _%g129657129674%_)))))
          (_%g129655129711%_ _%$stx129652%_))))))
