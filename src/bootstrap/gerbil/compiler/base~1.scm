(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g146401_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146403_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146405_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146407_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146408_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146410_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146411_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146413_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146414_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146416_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g146417_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx145492%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx145492%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx145495%_)
        (let* ((_%g145498145522%_
                (lambda (_%g145499145518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145499145518%_))))
               (_%g145497145821%_
                (lambda (_%g145499145526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145499145526%_))
                      (let ((_%e145502145529%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145499145526%_))))
                        (let ((_%hd145503145533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145502145529%_)))
                              (_%tl145504145536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145502145529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145504145536%_))
                              (let ((_%e145505145539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145504145536%_))))
                                (let ((_%hd145506145543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145505145539%_)))
                                      (_%tl145507145546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145505145539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl145507145546%_))
                                      (let ((_g146392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl145507145546%_
                                                '0))))
                                        (begin
                                          (let ((_g146393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146392_)
                                                       (##values-length
                                                        _g146392_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146393_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146393_)))
                                          (let ((_%target145508145549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146392_ 0)))
                                                (_%tl145510145552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146392_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145510145552%_))
                                                (letrec ((_%loop145511145555%_
                                                          (lambda (_%hd145509145559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause145515145562%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145509145559%_))
                        (let ((_%e145512145564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd145509145559%_))))
                          (let ((_%lp-hd145513145568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145512145564%_)))
                                (_%lp-tl145514145571%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145512145564%_))))
                            (_%loop145511145555%_
                             _%lp-tl145514145571%_
                             (cons _%lp-hd145513145568%_
                                   _%clause145515145562%_))))
                        (let ((_%clause145516145574%_
                               (reverse _%clause145515145562%_)))
                          ((lambda (_%g145500145577%_ _%g145501145579%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g145501145579%_))
                                 (let* ((_%g145598145615%_
                                         (lambda (_%g145599145611%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g145599145611%_))))
                                        (_%g145597145674%_
                                         (lambda (_%g145599145619%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g145599145619%_))
                                               (let ((_g146394_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g145599145619%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g146395_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g146394_)
                        (##values-length _g146394_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g146395_ 2)))
                 (error "Context expects 2 values" _g146395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target145601145622%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g146394_
                                                             0)))
                                                         (_%tl145603145625%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g146394_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145603145625%_))
                                                         (letrec ((_%loop145604145628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd145602145632%_ _%clause145608145635%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd145602145632%_))
                                 (let ((_%e145605145637%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd145602145632%_))))
                                   (let ((_%lp-hd145606145641%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145605145637%_)))
                                         (_%lp-tl145607145644%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145605145637%_))))
                                     (_%loop145604145628%_
                                      _%lp-tl145607145644%_
                                      (cons _%lp-hd145606145641%_
                                            _%clause145608145635%_))))
                                 (let ((_%clause145609145647%_
                                        (reverse _%clause145608145635%_)))
                                   ((lambda (_%g145600145650%_)
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
                            (cons _%g145501145579%_
                                  (let ((__tmp146396
                                         (lambda (_%g145665145668%_
                                                  _%g145666145671%_)
                                           (cons _%g145665145668%_
                                                 _%g145666145671%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp146396
                                     '()
                                     _%g145600145650%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause145609145647%_))))))
                   (_%loop145604145628%_ _%target145601145622%_ '()))
                 (_%g145598145615%_ _%g145599145619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g145598145615%_
                                                _%g145599145619%_)))))
                                   (_%g145597145674%_
                                    (let ((__tmp146399
                                           (lambda (_%clause145678%_)
                                             (let* ((_%__stx146312146313%_
                                                     _%clause145678%_)
                                                    (_%g145682145709%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx146312146313%_)))))
                                               (let ((_%__kont146315146316%_
                                                      (lambda (_%g145684145794%_
                                                               _%g145685145796%_)
                                                        (cons _%g145685145796%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g145684145794%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146317146318%_
                                                      (lambda (_%g145692145746%_
                                                               _%g145693145748%_
                                                               _%g145694145749%_)
                                                        (cons _%g145694145749%_
                                                              (cons _%g145693145748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g145692145746%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx146312146313%_))
                                                     (let ((_%e145686145774%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx146312146313%_))))
                                                       (let ((_%tl145688145781%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145686145774%_)))
                     (_%hd145687145778%_
                      (let () (declare (not safe)) (##car _%e145686145774%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145688145781%_))
                     (let ((_%e145689145784%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl145688145781%_))))
                       (let ((_%tl145691145791%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145689145784%_)))
                             (_%hd145690145788%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145689145784%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145691145791%_))
                             (_%__kont146315146316%_
                              _%hd145690145788%_
                              _%hd145687145778%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl145691145791%_))
                                 (let ((_%e145701145736%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl145691145791%_))))
                                   (let ((_%tl145703145743%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145701145736%_)))
                                         (_%hd145702145740%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145701145736%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl145703145743%_))
                                         (_%__kont146317146318%_
                                          _%hd145702145740%_
                                          _%hd145690145788%_
                                          _%hd145687145778%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g145682145709%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g145682145709%_))))))
                     (let () (declare (not safe)) (_%g145682145709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145682145709%_)))))))
                                          (__tmp146397
                                           (let ((__tmp146398
                                                  (lambda (_%g145812145815%_
                                                           _%g145813145818%_)
                                                    (cons _%g145812145815%_
                                                          _%g145813145818%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp146398
                                              '()
                                              _%g145500145577%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp146399 __tmp146397))))
                                 (_%g145498145522%_ _%g145499145526%_)))
                           _%clause145516145574%_
                           _%hd145506145543%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145511145555%_
                                                   _%target145508145549%_
                                                   '()))
                                                (_%g145498145522%_
                                                 _%g145499145526%_)))))
                                      (_%g145498145522%_ _%g145499145526%_))))
                              (_%g145498145522%_ _%g145499145526%_))))
                      (_%g145498145522%_ _%g145499145526%_)))))
          (_%g145497145821%_ _%stx145495%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj146362
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
           __obj146362
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj146362
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj146362
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 ':init! '12 '#f '#f))
        (let ((__tmp146400 |gxc[1]#_g146401_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146400 '3 '#f '#f))
        (let ((__tmp146402 |gxc[1]#_g146403_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146402 '13 '#f '#f))
        (let ((__tmp146404 |gxc[1]#_g146405_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146404 '14 '#f '#f))
        (let ((__tmp146406
               (cons (cons 'gensyms |gxc[1]#_g146407_|)
                     (cons (cons 'bindings |gxc[1]#_g146408_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146406 '15 '#f '#f))
        (let ((__tmp146409
               (cons (cons 'gensyms |gxc[1]#_g146410_|)
                     (cons (cons 'bindings |gxc[1]#_g146411_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146409 '16 '#f '#f))
        (let ((__tmp146412
               (cons (cons 'gensyms |gxc[1]#_g146413_|)
                     (cons (cons 'bindings |gxc[1]#_g146414_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146412 '17 '#f '#f))
        (let ((__tmp146415
               (cons (cons 'gensyms |gxc[1]#_g146416_|)
                     (cons (cons 'bindings |gxc[1]#_g146417_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 __tmp146415 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj146362 '() '20 '#f '#f))
        __obj146362))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx145827%_)
        (let* ((_%g145831145845%_
                (lambda (_%g145832145841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145832145841%_))))
               (_%g145830145886%_
                (lambda (_%g145832145849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145832145849%_))
                      (let ((_%e145834145852%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145832145849%_))))
                        (let ((_%hd145835145856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145834145852%_)))
                              (_%tl145836145859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145834145852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145836145859%_))
                              (let ((_%e145837145862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145836145859%_))))
                                (let ((_%hd145838145866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145837145862%_)))
                                      (_%tl145839145869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145837145862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145839145869%_))
                                      ((lambda (_%g145833145872%_)
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
                         (cons '() (cons _%g145833145872%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd145838145866%_)
                                      (_%g145831145845%_ _%g145832145849%_))))
                              (_%g145831145845%_ _%g145832145849%_))))
                      (_%g145831145845%_ _%g145832145849%_)))))
          (_%g145830145886%_ _%$stx145827%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx145890%_)
        (let* ((_%g145894145908%_
                (lambda (_%g145895145904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145895145904%_))))
               (_%g145893145949%_
                (lambda (_%g145895145912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145895145912%_))
                      (let ((_%e145897145915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145895145912%_))))
                        (let ((_%hd145898145919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145897145915%_)))
                              (_%tl145899145922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145897145915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145899145922%_))
                              (let ((_%e145900145925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145899145922%_))))
                                (let ((_%hd145901145929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145900145925%_)))
                                      (_%tl145902145932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145900145925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145902145932%_))
                                      ((lambda (_%g145896145935%_)
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
                         (cons _%g145896145935%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd145901145929%_)
                                      (_%g145894145908%_ _%g145895145912%_))))
                              (_%g145894145908%_ _%g145895145912%_))))
                      (_%g145894145908%_ _%g145895145912%_)))))
          (_%g145893145949%_ _%$stx145890%_))))))
