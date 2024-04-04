(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130706_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130708_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130710_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130712_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130713_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130715_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130716_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130718_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130719_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130721_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130722_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129901%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129901%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129904%_)
        (let* ((_%g129907129931%_
                (lambda (_%g129908129927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129908129927%_))))
               (_%g129906130234%_
                (lambda (_%g129908129935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129908129935%_))
                      (let ((_%e129913129938%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129908129935%_))))
                        (let ((_%hd129912129942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129913129938%_)))
                              (_%tl129911129945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129913129938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129911129945%_))
                              (let ((_%e129916129948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129911129945%_))))
                                (let ((_%hd129915129952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129916129948%_)))
                                      (_%tl129914129955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129916129948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129914129955%_))
                                      (let ((_g130697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129914129955%_
                                                '0))))
                                        (begin
                                          (let ((_g130698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130697_)
                                                       (##vector-length
                                                        _g130697_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130698_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130698_)))
                                          (let ((_%target129917129958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130697_ 0)))
                                                (_%tl129919129961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130697_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129919129961%_))
                                                (letrec ((_%loop129920129964%_
                                                          (lambda (_%hd129918129968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129924129971%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129918129968%_))
                        (let ((_%e129921129974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129918129968%_))))
                          (let ((_%lp-hd129922129978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129921129974%_)))
                                (_%lp-tl129923129981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129921129974%_))))
                            (_%loop129920129964%_
                             _%lp-tl129923129981%_
                             (cons _%lp-hd129922129978%_
                                   _%clause129924129971%_))))
                        (let ((_%clause129925129984%_
                               (reverse _%clause129924129971%_)))
                          ((lambda (_%L129988%_ _%L129990%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129990%_))
                                 (let* ((_%g130009130026%_
                                         (lambda (_%g130010130022%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g130010130022%_))))
                                        (_%g130008130087%_
                                         (lambda (_%g130010130030%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g130010130030%_))
                                               (let ((_g130699_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g130010130030%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130699_)
                        (##vector-length _g130699_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130700_ 2)))
                 (error "Context expects 2 values" _g130700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target130012130033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130699_
                                                             0)))
                                                         (_%tl130014130036%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130699_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl130014130036%_))
                                                         (letrec ((_%loop130015130039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd130013130043%_ _%clause130019130046%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd130013130043%_))
                                 (let ((_%e130016130049%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd130013130043%_))))
                                   (let ((_%lp-hd130017130053%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130016130049%_)))
                                         (_%lp-tl130018130056%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130016130049%_))))
                                     (_%loop130015130039%_
                                      _%lp-tl130018130056%_
                                      (cons _%lp-hd130017130053%_
                                            _%clause130019130046%_))))
                                 (let ((_%clause130020130059%_
                                        (reverse _%clause130019130046%_)))
                                   ((lambda (_%L130063%_)
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
                              (cons _%L129990%_
                                    (let ((__tmp130701
                                           (lambda (_%g130078130081%_
                                                    _%g130079130084%_)
                                             (cons _%g130078130081%_
                                                   _%g130079130084%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130701
                                       '()
                                       _%L130063%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause130020130059%_))))))
                   (_%loop130015130039%_ _%target130012130033%_ '()))
                 (_%g130009130026%_ _%g130010130030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g130009130026%_
                                                _%g130010130030%_)))))
                                   (_%g130008130087%_
                                    (let ((__tmp130704
                                           (lambda (_%clause130091%_)
                                             (let* ((_%__stx130623130624%_
                                                     _%clause130091%_)
                                                    (_%g130095130122%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130623130624%_)))))
                                               (let ((_%__kont130626130627%_
                                                      (lambda (_%L130207%_
                                                               _%L130209%_)
                                                        (cons _%L130209%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130207%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130628130629%_
                                                      (lambda (_%L130159%_
                                                               _%L130161%_
                                                               _%L130162%_)
                                                        (cons _%L130162%_
                                                              (cons _%L130161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130159%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130623130624%_))
                                                     (let ((_%e130101130187%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130623130624%_))))
                                                       (let ((_%tl130099130194%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130101130187%_)))
                     (_%hd130100130191%_
                      (let () (declare (not safe)) (##car _%e130101130187%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130099130194%_))
                     (let ((_%e130104130197%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130099130194%_))))
                       (let ((_%tl130102130204%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130104130197%_)))
                             (_%hd130103130201%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130104130197%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130102130204%_))
                             (_%__kont130626130627%_
                              _%hd130103130201%_
                              _%hd130100130191%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130102130204%_))
                                 (let ((_%e130116130149%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130102130204%_))))
                                   (let ((_%tl130114130156%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130116130149%_)))
                                         (_%hd130115130153%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130116130149%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130114130156%_))
                                         (_%__kont130628130629%_
                                          _%hd130115130153%_
                                          _%hd130103130201%_
                                          _%hd130100130191%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130095130122%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130095130122%_))))))
                     (let () (declare (not safe)) (_%g130095130122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130095130122%_)))))))
                                          (__tmp130702
                                           (let ((__tmp130703
                                                  (lambda (_%g130225130228%_
                                                           _%g130226130231%_)
                                                    (cons _%g130225130228%_
                                                          _%g130226130231%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130703
                                              '()
                                              _%L129988%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130704 __tmp130702))))
                                 (_%g129907129931%_ _%g129908129935%_)))
                           _%clause129925129984%_
                           _%hd129915129952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129920129964%_
                                                   _%target129917129958%_
                                                   '()))
                                                (_%g129907129931%_
                                                 _%g129908129935%_)))))
                                      (_%g129907129931%_ _%g129908129935%_))))
                              (_%g129907129931%_ _%g129908129935%_))))
                      (_%g129907129931%_ _%g129908129935%_)))))
          (_%g129906130234%_ _%stx129904%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130673
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
           __obj130673
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130673
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130673
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 ':init! '11 '#f '#f))
        (let ((__tmp130705 |gxc[1]#_g130706_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130705 '12 '#f '#f))
        (let ((__tmp130707 |gxc[1]#_g130708_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130707 '13 '#f '#f))
        (let ((__tmp130709 |gxc[1]#_g130710_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130709 '14 '#f '#f))
        (let ((__tmp130711
               (cons (cons 'gensyms |gxc[1]#_g130712_|)
                     (cons (cons 'bindings |gxc[1]#_g130713_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130711 '15 '#f '#f))
        (let ((__tmp130714
               (cons (cons 'gensyms |gxc[1]#_g130715_|)
                     (cons (cons 'bindings |gxc[1]#_g130716_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130714 '16 '#f '#f))
        (let ((__tmp130717
               (cons (cons 'gensyms |gxc[1]#_g130718_|)
                     (cons (cons 'bindings |gxc[1]#_g130719_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130717 '17 '#f '#f))
        (let ((__tmp130720
               (cons (cons 'gensyms |gxc[1]#_g130721_|)
                     (cons (cons 'bindings |gxc[1]#_g130722_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 __tmp130720 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130673 '() '20 '#f '#f))
        __obj130673))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130240%_)
        (let* ((_%g130244130258%_
                (lambda (_%g130245130254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130245130254%_))))
               (_%g130243130299%_
                (lambda (_%g130245130262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130245130262%_))
                      (let ((_%e130249130265%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130245130262%_))))
                        (let ((_%hd130248130269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130249130265%_)))
                              (_%tl130247130272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130249130265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130247130272%_))
                              (let ((_%e130252130275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130247130272%_))))
                                (let ((_%hd130251130279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130252130275%_)))
                                      (_%tl130250130282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130252130275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130250130282%_))
                                      ((lambda (_%L130285%_)
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
                         (cons '() (cons _%L130285%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130251130279%_)
                                      (_%g130244130258%_ _%g130245130262%_))))
                              (_%g130244130258%_ _%g130245130262%_))))
                      (_%g130244130258%_ _%g130245130262%_)))))
          (_%g130243130299%_ _%$stx130240%_))))))
