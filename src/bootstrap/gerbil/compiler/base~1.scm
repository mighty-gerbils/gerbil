(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130769_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130771_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130773_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130775_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130776_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130778_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130779_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130781_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130782_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130784_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130785_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129853%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129853%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129856%_)
        (let* ((_%g129859129883%_
                (lambda (_%g129860129879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129860129879%_))))
               (_%g129858130186%_
                (lambda (_%g129860129887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129860129887%_))
                      (let ((_%e129865129890%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129860129887%_))))
                        (let ((_%hd129864129894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129865129890%_)))
                              (_%tl129863129897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129865129890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129863129897%_))
                              (let ((_%e129868129900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129863129897%_))))
                                (let ((_%hd129867129904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129868129900%_)))
                                      (_%tl129866129907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129868129900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129866129907%_))
                                      (let ((_g130760_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129866129907%_
                                                '0))))
                                        (begin
                                          (let ((_g130761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130760_)
                                                       (##vector-length
                                                        _g130760_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130761_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130761_)))
                                          (let ((_%target129869129910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130760_ 0)))
                                                (_%tl129871129913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130760_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129871129913%_))
                                                (letrec ((_%loop129872129916%_
                                                          (lambda (_%hd129870129920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129876129923%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129870129920%_))
                        (let ((_%e129873129926%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129870129920%_))))
                          (let ((_%lp-hd129874129930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129873129926%_)))
                                (_%lp-tl129875129933%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129873129926%_))))
                            (_%loop129872129916%_
                             _%lp-tl129875129933%_
                             (cons _%lp-hd129874129930%_
                                   _%clause129876129923%_))))
                        (let ((_%clause129877129936%_
                               (reverse _%clause129876129923%_)))
                          ((lambda (_%L129940%_ _%L129942%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129942%_))
                                 (let* ((_%g129961129978%_
                                         (lambda (_%g129962129974%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129962129974%_))))
                                        (_%g129960130039%_
                                         (lambda (_%g129962129982%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129962129982%_))
                                               (let ((_g130762_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129962129982%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130763_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130762_)
                        (##vector-length _g130762_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130763_ 2)))
                 (error "Context expects 2 values" _g130763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129964129985%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130762_
                                                             0)))
                                                         (_%tl129966129988%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130762_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129966129988%_))
                                                         (letrec ((_%loop129967129991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129965129995%_ _%clause129971129998%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129965129995%_))
                                 (let ((_%e129968130001%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129965129995%_))))
                                   (let ((_%lp-hd129969130005%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129968130001%_)))
                                         (_%lp-tl129970130008%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129968130001%_))))
                                     (_%loop129967129991%_
                                      _%lp-tl129970130008%_
                                      (cons _%lp-hd129969130005%_
                                            _%clause129971129998%_))))
                                 (let ((_%clause129972130011%_
                                        (reverse _%clause129971129998%_)))
                                   ((lambda (_%L130015%_)
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
                              (cons _%L129942%_
                                    (let ((__tmp130764
                                           (lambda (_%g130030130033%_
                                                    _%g130031130036%_)
                                             (cons _%g130030130033%_
                                                   _%g130031130036%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130764
                                       '()
                                       _%L130015%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129972130011%_))))))
                   (_%loop129967129991%_ _%target129964129985%_ '()))
                 (_%g129961129978%_ _%g129962129982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129961129978%_
                                                _%g129962129982%_)))))
                                   (_%g129960130039%_
                                    (let ((__tmp130767
                                           (lambda (_%clause130043%_)
                                             (let* ((_%__stx130678130679%_
                                                     _%clause130043%_)
                                                    (_%g130047130074%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130678130679%_)))))
                                               (let ((_%__kont130681130682%_
                                                      (lambda (_%L130159%_
                                                               _%L130161%_)
                                                        (cons _%L130161%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130159%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130683130684%_
                                                      (lambda (_%L130111%_
                                                               _%L130113%_
                                                               _%L130114%_)
                                                        (cons _%L130114%_
                                                              (cons _%L130113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130111%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130678130679%_))
                                                     (let ((_%e130053130139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130678130679%_))))
                                                       (let ((_%tl130051130146%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130053130139%_)))
                     (_%hd130052130143%_
                      (let () (declare (not safe)) (##car _%e130053130139%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130051130146%_))
                     (let ((_%e130056130149%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130051130146%_))))
                       (let ((_%tl130054130156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130056130149%_)))
                             (_%hd130055130153%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130056130149%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130054130156%_))
                             (_%__kont130681130682%_
                              _%hd130055130153%_
                              _%hd130052130143%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130054130156%_))
                                 (let ((_%e130068130101%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130054130156%_))))
                                   (let ((_%tl130066130108%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130068130101%_)))
                                         (_%hd130067130105%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130068130101%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130066130108%_))
                                         (_%__kont130683130684%_
                                          _%hd130067130105%_
                                          _%hd130055130153%_
                                          _%hd130052130143%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130047130074%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130047130074%_))))))
                     (let () (declare (not safe)) (_%g130047130074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130047130074%_)))))))
                                          (__tmp130765
                                           (let ((__tmp130766
                                                  (lambda (_%g130177130180%_
                                                           _%g130178130183%_)
                                                    (cons _%g130177130180%_
                                                          _%g130178130183%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130766
                                              '()
                                              _%L129940%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130767 __tmp130765))))
                                 (_%g129859129883%_ _%g129860129887%_)))
                           _%clause129877129936%_
                           _%hd129867129904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129872129916%_
                                                   _%target129869129910%_
                                                   '()))
                                                (_%g129859129883%_
                                                 _%g129860129887%_)))))
                                      (_%g129859129883%_ _%g129860129887%_))))
                              (_%g129859129883%_ _%g129860129887%_))))
                      (_%g129859129883%_ _%g129860129887%_)))))
          (_%g129858130186%_ _%stx129856%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130728
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
           __obj130728
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130728
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130728
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 ':init! '11 '#f '#f))
        (let ((__tmp130768 |gxc[1]#_g130769_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130768 '12 '#f '#f))
        (let ((__tmp130770 |gxc[1]#_g130771_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130770 '13 '#f '#f))
        (let ((__tmp130772 |gxc[1]#_g130773_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130772 '14 '#f '#f))
        (let ((__tmp130774
               (cons (cons 'gensyms |gxc[1]#_g130775_|)
                     (cons (cons 'bindings |gxc[1]#_g130776_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130774 '15 '#f '#f))
        (let ((__tmp130777
               (cons (cons 'gensyms |gxc[1]#_g130778_|)
                     (cons (cons 'bindings |gxc[1]#_g130779_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130777 '16 '#f '#f))
        (let ((__tmp130780
               (cons (cons 'gensyms |gxc[1]#_g130781_|)
                     (cons (cons 'bindings |gxc[1]#_g130782_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130780 '17 '#f '#f))
        (let ((__tmp130783
               (cons (cons 'gensyms |gxc[1]#_g130784_|)
                     (cons (cons 'bindings |gxc[1]#_g130785_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 __tmp130783 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130728 '() '20 '#f '#f))
        __obj130728))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130192%_)
        (let* ((_%g130196130210%_
                (lambda (_%g130197130206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130197130206%_))))
               (_%g130195130251%_
                (lambda (_%g130197130214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130197130214%_))
                      (let ((_%e130201130217%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130197130214%_))))
                        (let ((_%hd130200130221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130201130217%_)))
                              (_%tl130199130224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130201130217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130199130224%_))
                              (let ((_%e130204130227%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130199130224%_))))
                                (let ((_%hd130203130231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130204130227%_)))
                                      (_%tl130202130234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130204130227%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130202130234%_))
                                      ((lambda (_%L130237%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L130237%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130203130231%_)
                                      (_%g130196130210%_ _%g130197130214%_))))
                              (_%g130196130210%_ _%g130197130214%_))))
                      (_%g130196130210%_ _%g130197130214%_)))))
          (_%g130195130251%_ _%$stx130192%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx130255%_)
        (let* ((_%g130259130273%_
                (lambda (_%g130260130269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130260130269%_))))
               (_%g130258130314%_
                (lambda (_%g130260130277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130260130277%_))
                      (let ((_%e130264130280%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130260130277%_))))
                        (let ((_%hd130263130284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130264130280%_)))
                              (_%tl130262130287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130264130280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130262130287%_))
                              (let ((_%e130267130290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130262130287%_))))
                                (let ((_%hd130266130294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130267130290%_)))
                                      (_%tl130265130297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130267130290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130265130297%_))
                                      ((lambda (_%L130300%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L130300%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd130266130294%_)
                                      (_%g130259130273%_ _%g130260130277%_))))
                              (_%g130259130273%_ _%g130260130277%_))))
                      (_%g130259130273%_ _%g130260130277%_)))))
          (_%g130258130314%_ _%$stx130255%_))))))
