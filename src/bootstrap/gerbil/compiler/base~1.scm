(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130698_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130700_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130702_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130704_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130705_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130707_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130708_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130710_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130711_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130713_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130714_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129893%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129893%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129896%_)
        (let* ((_%g129899129923%_
                (lambda (_%g129900129919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129900129919%_))))
               (_%g129898130226%_
                (lambda (_%g129900129927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129900129927%_))
                      (let ((_%e129905129930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129900129927%_))))
                        (let ((_%hd129904129934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129905129930%_)))
                              (_%tl129903129937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129905129930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129903129937%_))
                              (let ((_%e129908129940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129903129937%_))))
                                (let ((_%hd129907129944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129908129940%_)))
                                      (_%tl129906129947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129908129940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129906129947%_))
                                      (let ((_g130689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129906129947%_
                                                '0))))
                                        (begin
                                          (let ((_g130690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130689_)
                                                       (##vector-length
                                                        _g130689_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130690_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130690_)))
                                          (let ((_%target129909129950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130689_ 0)))
                                                (_%tl129911129953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130689_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129911129953%_))
                                                (letrec ((_%loop129912129956%_
                                                          (lambda (_%hd129910129960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129916129963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129910129960%_))
                        (let ((_%e129913129966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129910129960%_))))
                          (let ((_%lp-hd129914129970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129913129966%_)))
                                (_%lp-tl129915129973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129913129966%_))))
                            (_%loop129912129956%_
                             _%lp-tl129915129973%_
                             (cons _%lp-hd129914129970%_
                                   _%clause129916129963%_))))
                        (let ((_%clause129917129976%_
                               (reverse _%clause129916129963%_)))
                          ((lambda (_%L129980%_ _%L129982%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129982%_))
                                 (let* ((_%g130001130018%_
                                         (lambda (_%g130002130014%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g130002130014%_))))
                                        (_%g130000130079%_
                                         (lambda (_%g130002130022%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g130002130022%_))
                                               (let ((_g130691_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g130002130022%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130692_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130691_)
                        (##vector-length _g130691_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130692_ 2)))
                 (error "Context expects 2 values" _g130692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target130004130025%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130691_
                                                             0)))
                                                         (_%tl130006130028%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130691_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl130006130028%_))
                                                         (letrec ((_%loop130007130031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd130005130035%_ _%clause130011130038%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd130005130035%_))
                                 (let ((_%e130008130041%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd130005130035%_))))
                                   (let ((_%lp-hd130009130045%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130008130041%_)))
                                         (_%lp-tl130010130048%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130008130041%_))))
                                     (_%loop130007130031%_
                                      _%lp-tl130010130048%_
                                      (cons _%lp-hd130009130045%_
                                            _%clause130011130038%_))))
                                 (let ((_%clause130012130051%_
                                        (reverse _%clause130011130038%_)))
                                   ((lambda (_%L130055%_)
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
                              (cons _%L129982%_
                                    (let ((__tmp130693
                                           (lambda (_%g130070130073%_
                                                    _%g130071130076%_)
                                             (cons _%g130070130073%_
                                                   _%g130071130076%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130693
                                       '()
                                       _%L130055%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause130012130051%_))))))
                   (_%loop130007130031%_ _%target130004130025%_ '()))
                 (_%g130001130018%_ _%g130002130022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g130001130018%_
                                                _%g130002130022%_)))))
                                   (_%g130000130079%_
                                    (let ((__tmp130696
                                           (lambda (_%clause130083%_)
                                             (let* ((_%__stx130615130616%_
                                                     _%clause130083%_)
                                                    (_%g130087130114%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130615130616%_)))))
                                               (let ((_%__kont130618130619%_
                                                      (lambda (_%L130199%_
                                                               _%L130201%_)
                                                        (cons _%L130201%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130199%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130620130621%_
                                                      (lambda (_%L130151%_
                                                               _%L130153%_
                                                               _%L130154%_)
                                                        (cons _%L130154%_
                                                              (cons _%L130153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130151%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130615130616%_))
                                                     (let ((_%e130093130179%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130615130616%_))))
                                                       (let ((_%tl130091130186%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130093130179%_)))
                     (_%hd130092130183%_
                      (let () (declare (not safe)) (##car _%e130093130179%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130091130186%_))
                     (let ((_%e130096130189%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130091130186%_))))
                       (let ((_%tl130094130196%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130096130189%_)))
                             (_%hd130095130193%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130096130189%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130094130196%_))
                             (_%__kont130618130619%_
                              _%hd130095130193%_
                              _%hd130092130183%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130094130196%_))
                                 (let ((_%e130108130141%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130094130196%_))))
                                   (let ((_%tl130106130148%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130108130141%_)))
                                         (_%hd130107130145%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130108130141%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130106130148%_))
                                         (_%__kont130620130621%_
                                          _%hd130107130145%_
                                          _%hd130095130193%_
                                          _%hd130092130183%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130087130114%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130087130114%_))))))
                     (let () (declare (not safe)) (_%g130087130114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130087130114%_)))))))
                                          (__tmp130694
                                           (let ((__tmp130695
                                                  (lambda (_%g130217130220%_
                                                           _%g130218130223%_)
                                                    (cons _%g130217130220%_
                                                          _%g130218130223%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130695
                                              '()
                                              _%L129980%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130696 __tmp130694))))
                                 (_%g129899129923%_ _%g129900129927%_)))
                           _%clause129917129976%_
                           _%hd129907129944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129912129956%_
                                                   _%target129909129950%_
                                                   '()))
                                                (_%g129899129923%_
                                                 _%g129900129927%_)))))
                                      (_%g129899129923%_ _%g129900129927%_))))
                              (_%g129899129923%_ _%g129900129927%_))))
                      (_%g129899129923%_ _%g129900129927%_)))))
          (_%g129898130226%_ _%stx129896%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130665
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
           __obj130665
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130665
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130665
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 ':init! '11 '#f '#f))
        (let ((__tmp130697 |gxc[1]#_g130698_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130697 '12 '#f '#f))
        (let ((__tmp130699 |gxc[1]#_g130700_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130699 '13 '#f '#f))
        (let ((__tmp130701 |gxc[1]#_g130702_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130701 '14 '#f '#f))
        (let ((__tmp130703
               (cons (cons 'gensyms |gxc[1]#_g130704_|)
                     (cons (cons 'bindings |gxc[1]#_g130705_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130703 '15 '#f '#f))
        (let ((__tmp130706
               (cons (cons 'gensyms |gxc[1]#_g130707_|)
                     (cons (cons 'bindings |gxc[1]#_g130708_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130706 '16 '#f '#f))
        (let ((__tmp130709
               (cons (cons 'gensyms |gxc[1]#_g130710_|)
                     (cons (cons 'bindings |gxc[1]#_g130711_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130709 '17 '#f '#f))
        (let ((__tmp130712
               (cons (cons 'gensyms |gxc[1]#_g130713_|)
                     (cons (cons 'bindings |gxc[1]#_g130714_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 __tmp130712 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130665 '() '20 '#f '#f))
        __obj130665))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130232%_)
        (let* ((_%g130236130250%_
                (lambda (_%g130237130246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130237130246%_))))
               (_%g130235130291%_
                (lambda (_%g130237130254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130237130254%_))
                      (let ((_%e130241130257%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130237130254%_))))
                        (let ((_%hd130240130261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130241130257%_)))
                              (_%tl130239130264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130241130257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130239130264%_))
                              (let ((_%e130244130267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130239130264%_))))
                                (let ((_%hd130243130271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130244130267%_)))
                                      (_%tl130242130274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130244130267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130242130274%_))
                                      ((lambda (_%L130277%_)
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
                         (cons '() (cons _%L130277%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130243130271%_)
                                      (_%g130236130250%_ _%g130237130254%_))))
                              (_%g130236130250%_ _%g130237130254%_))))
                      (_%g130236130250%_ _%g130237130254%_)))))
          (_%g130235130291%_ _%$stx130232%_))))))
