(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g146345_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146347_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146349_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146351_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146352_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146354_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146355_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146357_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146358_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146360_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146361_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx145436%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx145436%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx145439%_)
        (let* ((_%g145442145466%_
                (lambda (_%g145443145462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145443145462%_))))
               (_%g145441145765%_
                (lambda (_%g145443145470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145443145470%_))
                      (let ((_%e145446145473%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145443145470%_))))
                        (let ((_%hd145447145477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145446145473%_)))
                              (_%tl145448145480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145446145473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145448145480%_))
                              (let ((_%e145449145483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145448145480%_))))
                                (let ((_%hd145450145487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145449145483%_)))
                                      (_%tl145451145490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145449145483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl145451145490%_))
                                      (let ((_g146336_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl145451145490%_
                                                '0))))
                                        (begin
                                          (let ((_g146337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146336_)
                                                       (##values-length
                                                        _g146336_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146337_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146337_)))
                                          (let ((_%target145452145493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146336_ 0)))
                                                (_%tl145454145496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146336_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145454145496%_))
                                                (letrec ((_%loop145455145499%_
                                                          (lambda (_%hd145453145503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause145459145506%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145453145503%_))
                        (let ((_%e145456145508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd145453145503%_))))
                          (let ((_%lp-hd145457145512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145456145508%_)))
                                (_%lp-tl145458145515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145456145508%_))))
                            (_%loop145455145499%_
                             _%lp-tl145458145515%_
                             (cons _%lp-hd145457145512%_
                                   _%clause145459145506%_))))
                        (let ((_%clause145460145518%_
                               (reverse _%clause145459145506%_)))
                          ((lambda (_%g145444145521%_ _%g145445145523%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g145445145523%_))
                                 (let* ((_%g145542145559%_
                                         (lambda (_%g145543145555%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g145543145555%_))))
                                        (_%g145541145618%_
                                         (lambda (_%g145543145563%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g145543145563%_))
                                               (let ((_g146338_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g145543145563%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g146339_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g146338_)
                        (##values-length _g146338_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g146339_ 2)))
                 (error "Context expects 2 values" _g146339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target145545145566%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g146338_
                                                             0)))
                                                         (_%tl145547145569%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g146338_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145547145569%_))
                                                         (letrec ((_%loop145548145572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd145546145576%_ _%clause145552145579%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd145546145576%_))
                                 (let ((_%e145549145581%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd145546145576%_))))
                                   (let ((_%lp-hd145550145585%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145549145581%_)))
                                         (_%lp-tl145551145588%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145549145581%_))))
                                     (_%loop145548145572%_
                                      _%lp-tl145551145588%_
                                      (cons _%lp-hd145550145585%_
                                            _%clause145552145579%_))))
                                 (let ((_%clause145553145591%_
                                        (reverse _%clause145552145579%_)))
                                   ((lambda (_%g145544145594%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g145445145523%_
                                  (let ((__tmp146340
                                         (lambda (_%g145609145612%_
                                                  _%g145610145615%_)
                                           (cons _%g145609145612%_
                                                 _%g145610145615%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp146340
                                     '()
                                     _%g145544145594%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause145553145591%_))))))
                   (_%loop145548145572%_ _%target145545145566%_ '()))
                 (_%g145542145559%_ _%g145543145563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g145542145559%_
                                                _%g145543145563%_)))))
                                   (_%g145541145618%_
                                    (let ((__tmp146343
                                           (lambda (_%clause145622%_)
                                             (let* ((_%__stx146256146257%_
                                                     _%clause145622%_)
                                                    (_%g145626145653%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx146256146257%_)))))
                                               (let ((_%__kont146259146260%_
                                                      (lambda (_%g145628145738%_
                                                               _%g145629145740%_)
                                                        (cons _%g145629145740%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g145628145738%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146261146262%_
                                                      (lambda (_%g145636145690%_
                                                               _%g145637145692%_
                                                               _%g145638145693%_)
                                                        (cons _%g145638145693%_
                                                              (cons _%g145637145692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g145636145690%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx146256146257%_))
                                                     (let ((_%e145630145718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx146256146257%_))))
                                                       (let ((_%tl145632145725%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145630145718%_)))
                     (_%hd145631145722%_
                      (let () (declare (not safe)) (##car _%e145630145718%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145632145725%_))
                     (let ((_%e145633145728%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl145632145725%_))))
                       (let ((_%tl145635145735%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145633145728%_)))
                             (_%hd145634145732%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145633145728%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145635145735%_))
                             (_%__kont146259146260%_
                              _%hd145634145732%_
                              _%hd145631145722%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl145635145735%_))
                                 (let ((_%e145645145680%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl145635145735%_))))
                                   (let ((_%tl145647145687%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145645145680%_)))
                                         (_%hd145646145684%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145645145680%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl145647145687%_))
                                         (_%__kont146261146262%_
                                          _%hd145646145684%_
                                          _%hd145634145732%_
                                          _%hd145631145722%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g145626145653%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g145626145653%_))))))
                     (let () (declare (not safe)) (_%g145626145653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145626145653%_)))))))
                                          (__tmp146341
                                           (let ((__tmp146342
                                                  (lambda (_%g145756145759%_
                                                           _%g145757145762%_)
                                                    (cons _%g145756145759%_
                                                          _%g145757145762%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp146342
                                              '()
                                              _%g145444145521%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp146343 __tmp146341))))
                                 (_%g145442145466%_ _%g145443145470%_)))
                           _%clause145460145518%_
                           _%hd145450145487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145455145499%_
                                                   _%target145452145493%_
                                                   '()))
                                                (_%g145442145466%_
                                                 _%g145443145470%_)))))
                                      (_%g145442145466%_ _%g145443145470%_))))
                              (_%g145442145466%_ _%g145443145470%_))))
                      (_%g145442145466%_ _%g145443145470%_)))))
          (_%g145441145765%_ _%stx145439%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj146306
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
           __obj146306
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj146306
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj146306
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 ':init! '12 '#f '#f))
        (let ((__tmp146344 |gxc[1]#_g146345_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146344 '3 '#f '#f))
        (let ((__tmp146346 |gxc[1]#_g146347_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146346 '13 '#f '#f))
        (let ((__tmp146348 |gxc[1]#_g146349_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146348 '14 '#f '#f))
        (let ((__tmp146350
               (cons (cons 'gensyms |gxc[1]#_g146351_|)
                     (cons (cons 'bindings |gxc[1]#_g146352_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146350 '15 '#f '#f))
        (let ((__tmp146353
               (cons (cons 'gensyms |gxc[1]#_g146354_|)
                     (cons (cons 'bindings |gxc[1]#_g146355_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146353 '16 '#f '#f))
        (let ((__tmp146356
               (cons (cons 'gensyms |gxc[1]#_g146357_|)
                     (cons (cons 'bindings |gxc[1]#_g146358_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146356 '17 '#f '#f))
        (let ((__tmp146359
               (cons (cons 'gensyms |gxc[1]#_g146360_|)
                     (cons (cons 'bindings |gxc[1]#_g146361_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 __tmp146359 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146306 '() '20 '#f '#f))
        __obj146306))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx145771%_)
        (let* ((_%g145775145789%_
                (lambda (_%g145776145785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145776145785%_))))
               (_%g145774145830%_
                (lambda (_%g145776145793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145776145793%_))
                      (let ((_%e145778145796%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145776145793%_))))
                        (let ((_%hd145779145800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145778145796%_)))
                              (_%tl145780145803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145778145796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145780145803%_))
                              (let ((_%e145781145806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145780145803%_))))
                                (let ((_%hd145782145810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145781145806%_)))
                                      (_%tl145783145813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145781145806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145783145813%_))
                                      ((lambda (_%g145777145816%_)
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
                         (cons '() (cons _%g145777145816%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd145782145810%_)
                                      (_%g145775145789%_ _%g145776145793%_))))
                              (_%g145775145789%_ _%g145776145793%_))))
                      (_%g145775145789%_ _%g145776145793%_)))))
          (_%g145774145830%_ _%$stx145771%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx145834%_)
        (let* ((_%g145838145852%_
                (lambda (_%g145839145848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145839145848%_))))
               (_%g145837145893%_
                (lambda (_%g145839145856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145839145856%_))
                      (let ((_%e145841145859%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145839145856%_))))
                        (let ((_%hd145842145863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145841145859%_)))
                              (_%tl145843145866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145841145859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145843145866%_))
                              (let ((_%e145844145869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145843145866%_))))
                                (let ((_%hd145845145873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145844145869%_)))
                                      (_%tl145846145876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145844145869%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145846145876%_))
                                      ((lambda (_%g145840145879%_)
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
                         (cons _%g145840145879%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd145845145873%_)
                                      (_%g145838145852%_ _%g145839145856%_))))
                              (_%g145838145852%_ _%g145839145856%_))))
                      (_%g145838145852%_ _%g145839145856%_)))))
          (_%g145837145893%_ _%$stx145834%_))))))
