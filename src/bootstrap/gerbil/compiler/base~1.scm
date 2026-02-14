(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g373579_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373581_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373583_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373585_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373586_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373588_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373589_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373591_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373592_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373594_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g373595_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx372539%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx372539%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx372542%_)
        (let* ((_%g372545372569%_
                (lambda (_%g372546372565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g372546372565%_))))
               (_%g372544372868%_
                (lambda (_%g372546372573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g372546372573%_))
                      (let ((_%e372549372576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g372546372573%_))))
                        (let ((_%hd372550372580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e372549372576%_)))
                              (_%tl372551372583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e372549372576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl372551372583%_))
                              (let ((_%e372552372586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl372551372583%_))))
                                (let ((_%hd372553372590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e372552372586%_)))
                                      (_%tl372554372593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e372552372586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl372554372593%_))
                                      (let ((_g373570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl372554372593%_
                                                '0))))
                                        (begin
                                          (let ((_g373571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g373570_)
                                                       (##values-length
                                                        _g373570_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g373571_ 2)))
                                                (error "Context expects 2 values"
                                                       _g373571_)))
                                          (let ((_%target372555372596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g373570_ 0)))
                                                (_%tl372557372599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g373570_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl372557372599%_))
                                                (letrec ((_%loop372558372602%_
                                                          (lambda (_%hd372556372606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause372562372609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd372556372606%_))
                        (let ((_%e372559372611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd372556372606%_))))
                          (let ((_%lp-hd372560372615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e372559372611%_)))
                                (_%lp-tl372561372618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e372559372611%_))))
                            (_%loop372558372602%_
                             _%lp-tl372561372618%_
                             (cons _%lp-hd372560372615%_
                                   _%clause372562372609%_))))
                        (let ((_%clause372563372621%_
                               (reverse _%clause372562372609%_)))
                          ((lambda (_%g372547372624%_ _%g372548372626%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g372548372626%_))
                                 (let* ((_%g372645372662%_
                                         (lambda (_%g372646372658%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g372646372658%_))))
                                        (_%g372644372721%_
                                         (lambda (_%g372646372666%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g372646372666%_))
                                               (let ((_g373572_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g372646372666%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g373573_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g373572_)
                        (##values-length _g373572_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g373573_ 2)))
                 (error "Context expects 2 values" _g373573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target372648372669%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g373572_
                                                             0)))
                                                         (_%tl372650372672%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g373572_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl372650372672%_))
                                                         (letrec ((_%loop372651372675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd372649372679%_ _%clause372655372682%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd372649372679%_))
                                 (let ((_%e372652372684%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd372649372679%_))))
                                   (let ((_%lp-hd372653372688%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e372652372684%_)))
                                         (_%lp-tl372654372691%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e372652372684%_))))
                                     (_%loop372651372675%_
                                      _%lp-tl372654372691%_
                                      (cons _%lp-hd372653372688%_
                                            _%clause372655372682%_))))
                                 (let ((_%clause372656372694%_
                                        (reverse _%clause372655372682%_)))
                                   ((lambda (_%g372647372697%_)
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
                            (cons _%g372548372626%_
                                  (let ((__tmp373574
                                         (lambda (_%g372712372715%_
                                                  _%g372713372718%_)
                                           (cons _%g372712372715%_
                                                 _%g372713372718%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp373574
                                     '()
                                     _%g372647372697%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause372656372694%_))))))
                   (_%loop372651372675%_ _%target372648372669%_ '()))
                 (_%g372645372662%_ _%g372646372666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g372645372662%_
                                                _%g372646372666%_)))))
                                   (_%g372644372721%_
                                    (let ((__tmp373577
                                           (lambda (_%clause372725%_)
                                             (let* ((_%__stx373489373490%_
                                                     _%clause372725%_)
                                                    (_%g372729372756%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx373489373490%_)))))
                                               (let ((_%__kont373492373493%_
                                                      (lambda (_%g372731372841%_
                                                               _%g372732372843%_)
                                                        (cons _%g372732372843%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g372731372841%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont373494373495%_
                                                      (lambda (_%g372739372793%_
                                                               _%g372740372795%_
                                                               _%g372741372796%_)
                                                        (cons _%g372741372796%_
                                                              (cons _%g372740372795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g372739372793%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx373489373490%_))
                                                     (let ((_%e372733372821%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx373489373490%_))))
                                                       (let ((_%tl372735372828%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e372733372821%_)))
                     (_%hd372734372825%_
                      (let () (declare (not safe)) (##car _%e372733372821%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl372735372828%_))
                     (let ((_%e372736372831%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl372735372828%_))))
                       (let ((_%tl372738372838%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e372736372831%_)))
                             (_%hd372737372835%_
                              (let ()
                                (declare (not safe))
                                (##car _%e372736372831%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl372738372838%_))
                             (_%__kont373492373493%_
                              _%hd372737372835%_
                              _%hd372734372825%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl372738372838%_))
                                 (let ((_%e372748372783%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl372738372838%_))))
                                   (let ((_%tl372750372790%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e372748372783%_)))
                                         (_%hd372749372787%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e372748372783%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl372750372790%_))
                                         (_%__kont373494373495%_
                                          _%hd372749372787%_
                                          _%hd372737372835%_
                                          _%hd372734372825%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g372729372756%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g372729372756%_))))))
                     (let () (declare (not safe)) (_%g372729372756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g372729372756%_)))))))
                                          (__tmp373575
                                           (let ((__tmp373576
                                                  (lambda (_%g372859372862%_
                                                           _%g372860372865%_)
                                                    (cons _%g372859372862%_
                                                          _%g372860372865%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp373576
                                              '()
                                              _%g372547372624%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp373577 __tmp373575))))
                                 (_%g372545372569%_ _%g372546372573%_)))
                           _%clause372563372621%_
                           _%hd372553372590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop372558372602%_
                                                   _%target372555372596%_
                                                   '()))
                                                (_%g372545372569%_
                                                 _%g372546372573%_)))))
                                      (_%g372545372569%_ _%g372546372573%_))))
                              (_%g372545372569%_ _%g372546372573%_))))
                      (_%g372545372569%_ _%g372546372573%_)))))
          (_%g372544372868%_ _%stx372542%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj373539
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
           __obj373539
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj373539
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj373539
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 ':init! '12 '#f '#f))
        (let ((__tmp373578 |gxc[1]#_g373579_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373578 '3 '#f '#f))
        (let ((__tmp373580 |gxc[1]#_g373581_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373580 '13 '#f '#f))
        (let ((__tmp373582 |gxc[1]#_g373583_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373582 '14 '#f '#f))
        (let ((__tmp373584
               (cons (cons 'gensyms |gxc[1]#_g373585_|)
                     (cons (cons 'bindings |gxc[1]#_g373586_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373584 '15 '#f '#f))
        (let ((__tmp373587
               (cons (cons 'gensyms |gxc[1]#_g373588_|)
                     (cons (cons 'bindings |gxc[1]#_g373589_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373587 '16 '#f '#f))
        (let ((__tmp373590
               (cons (cons 'gensyms |gxc[1]#_g373591_|)
                     (cons (cons 'bindings |gxc[1]#_g373592_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373590 '17 '#f '#f))
        (let ((__tmp373593
               (cons (cons 'gensyms |gxc[1]#_g373594_|)
                     (cons (cons 'bindings |gxc[1]#_g373595_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 __tmp373593 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj373539 '() '20 '#f '#f))
        __obj373539))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx372874%_)
        (let* ((_%g372878372892%_
                (lambda (_%g372879372888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g372879372888%_))))
               (_%g372877372933%_
                (lambda (_%g372879372896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g372879372896%_))
                      (let ((_%e372881372899%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g372879372896%_))))
                        (let ((_%hd372882372903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e372881372899%_)))
                              (_%tl372883372906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e372881372899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl372883372906%_))
                              (let ((_%e372884372909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl372883372906%_))))
                                (let ((_%hd372885372913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e372884372909%_)))
                                      (_%tl372886372916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e372884372909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl372886372916%_))
                                      ((lambda (_%g372880372919%_)
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
                         (cons '() (cons _%g372880372919%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd372885372913%_)
                                      (_%g372878372892%_ _%g372879372896%_))))
                              (_%g372878372892%_ _%g372879372896%_))))
                      (_%g372878372892%_ _%g372879372896%_)))))
          (_%g372877372933%_ _%$stx372874%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx372937%_)
        (let* ((_%g372941372955%_
                (lambda (_%g372942372951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g372942372951%_))))
               (_%g372940372996%_
                (lambda (_%g372942372959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g372942372959%_))
                      (let ((_%e372944372962%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g372942372959%_))))
                        (let ((_%hd372945372966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e372944372962%_)))
                              (_%tl372946372969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e372944372962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl372946372969%_))
                              (let ((_%e372947372972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl372946372969%_))))
                                (let ((_%hd372948372976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e372947372972%_)))
                                      (_%tl372949372979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e372947372972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl372949372979%_))
                                      ((lambda (_%g372943372982%_)
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
                         (cons _%g372943372982%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd372948372976%_)
                                      (_%g372941372955%_ _%g372942372959%_))))
                              (_%g372941372955%_ _%g372942372959%_))))
                      (_%g372941372955%_ _%g372942372959%_)))))
          (_%g372940372996%_ _%$stx372937%_))))))
