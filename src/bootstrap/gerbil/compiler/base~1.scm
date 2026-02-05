(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157890_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157892_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157894_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157896_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157897_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157899_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157900_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157902_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157903_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157905_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157906_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156902%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156902%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156905%_)
        (let* ((_%g156908156932%_
                (lambda (_%g156909156928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156909156928%_))))
               (_%g156907157231%_
                (lambda (_%g156909156936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156909156936%_))
                      (let ((_%e156912156939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156909156936%_))))
                        (let ((_%hd156913156943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156912156939%_)))
                              (_%tl156914156946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156912156939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156914156946%_))
                              (let ((_%e156915156949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156914156946%_))))
                                (let ((_%hd156916156953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156915156949%_)))
                                      (_%tl156917156956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156915156949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156917156956%_))
                                      (let ((_g157881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156917156956%_
                                                '0))))
                                        (begin
                                          (let ((_g157882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157881_)
                                                       (##values-length
                                                        _g157881_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157882_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157882_)))
                                          (let ((_%target156918156959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157881_ 0)))
                                                (_%tl156920156962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157881_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156920156962%_))
                                                (letrec ((_%loop156921156965%_
                                                          (lambda (_%hd156919156969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156925156972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156919156969%_))
                        (let ((_%e156922156974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156919156969%_))))
                          (let ((_%lp-hd156923156978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156922156974%_)))
                                (_%lp-tl156924156981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156922156974%_))))
                            (_%loop156921156965%_
                             _%lp-tl156924156981%_
                             (cons _%lp-hd156923156978%_
                                   _%clause156925156972%_))))
                        (let ((_%clause156926156984%_
                               (reverse _%clause156925156972%_)))
                          ((lambda (_%g156910156987%_ _%g156911156989%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156911156989%_))
                                 (let* ((_%g157008157025%_
                                         (lambda (_%g157009157021%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g157009157021%_))))
                                        (_%g157007157084%_
                                         (lambda (_%g157009157029%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g157009157029%_))
                                               (let ((_g157883_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g157009157029%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157884_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157883_)
                        (##values-length _g157883_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157884_ 2)))
                 (error "Context expects 2 values" _g157884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target157011157032%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157883_
                                                             0)))
                                                         (_%tl157013157035%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157883_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl157013157035%_))
                                                         (letrec ((_%loop157014157038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd157012157042%_ _%clause157018157045%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd157012157042%_))
                                 (let ((_%e157015157047%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd157012157042%_))))
                                   (let ((_%lp-hd157016157051%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157015157047%_)))
                                         (_%lp-tl157017157054%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157015157047%_))))
                                     (_%loop157014157038%_
                                      _%lp-tl157017157054%_
                                      (cons _%lp-hd157016157051%_
                                            _%clause157018157045%_))))
                                 (let ((_%clause157019157057%_
                                        (reverse _%clause157018157045%_)))
                                   ((lambda (_%g157010157060%_)
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
                            (cons _%g156911156989%_
                                  (let ((__tmp157885
                                         (lambda (_%g157075157078%_
                                                  _%g157076157081%_)
                                           (cons _%g157075157078%_
                                                 _%g157076157081%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157885
                                     '()
                                     _%g157010157060%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause157019157057%_))))))
                   (_%loop157014157038%_ _%target157011157032%_ '()))
                 (_%g157008157025%_ _%g157009157029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g157008157025%_
                                                _%g157009157029%_)))))
                                   (_%g157007157084%_
                                    (let ((__tmp157888
                                           (lambda (_%clause157088%_)
                                             (let* ((_%__stx157800157801%_
                                                     _%clause157088%_)
                                                    (_%g157092157119%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157800157801%_)))))
                                               (let ((_%__kont157803157804%_
                                                      (lambda (_%g157094157204%_
                                                               _%g157095157206%_)
                                                        (cons _%g157095157206%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g157094157204%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157805157806%_
                                                      (lambda (_%g157102157156%_
                                                               _%g157103157158%_
                                                               _%g157104157159%_)
                                                        (cons _%g157104157159%_
                                                              (cons _%g157103157158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g157102157156%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157800157801%_))
                                                     (let ((_%e157096157184%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157800157801%_))))
                                                       (let ((_%tl157098157191%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e157096157184%_)))
                     (_%hd157097157188%_
                      (let () (declare (not safe)) (##car _%e157096157184%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl157098157191%_))
                     (let ((_%e157099157194%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl157098157191%_))))
                       (let ((_%tl157101157201%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e157099157194%_)))
                             (_%hd157100157198%_
                              (let ()
                                (declare (not safe))
                                (##car _%e157099157194%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl157101157201%_))
                             (_%__kont157803157804%_
                              _%hd157100157198%_
                              _%hd157097157188%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl157101157201%_))
                                 (let ((_%e157111157146%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl157101157201%_))))
                                   (let ((_%tl157113157153%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157111157146%_)))
                                         (_%hd157112157150%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157111157146%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl157113157153%_))
                                         (_%__kont157805157806%_
                                          _%hd157112157150%_
                                          _%hd157100157198%_
                                          _%hd157097157188%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g157092157119%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g157092157119%_))))))
                     (let () (declare (not safe)) (_%g157092157119%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g157092157119%_)))))))
                                          (__tmp157886
                                           (let ((__tmp157887
                                                  (lambda (_%g157222157225%_
                                                           _%g157223157228%_)
                                                    (cons _%g157222157225%_
                                                          _%g157223157228%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157887
                                              '()
                                              _%g156910156987%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157888 __tmp157886))))
                                 (_%g156908156932%_ _%g156909156936%_)))
                           _%clause156926156984%_
                           _%hd156916156953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156921156965%_
                                                   _%target156918156959%_
                                                   '()))
                                                (_%g156908156932%_
                                                 _%g156909156936%_)))))
                                      (_%g156908156932%_ _%g156909156936%_))))
                              (_%g156908156932%_ _%g156909156936%_))))
                      (_%g156908156932%_ _%g156909156936%_)))))
          (_%g156907157231%_ _%stx156905%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157850
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
           __obj157850
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157850
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157850
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 ':init! '12 '#f '#f))
        (let ((__tmp157889 |gxc[1]#_g157890_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157889 '3 '#f '#f))
        (let ((__tmp157891 |gxc[1]#_g157892_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157891 '13 '#f '#f))
        (let ((__tmp157893 |gxc[1]#_g157894_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157893 '14 '#f '#f))
        (let ((__tmp157895
               (cons (cons 'gensyms |gxc[1]#_g157896_|)
                     (cons (cons 'bindings |gxc[1]#_g157897_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157895 '15 '#f '#f))
        (let ((__tmp157898
               (cons (cons 'gensyms |gxc[1]#_g157899_|)
                     (cons (cons 'bindings |gxc[1]#_g157900_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157898 '16 '#f '#f))
        (let ((__tmp157901
               (cons (cons 'gensyms |gxc[1]#_g157902_|)
                     (cons (cons 'bindings |gxc[1]#_g157903_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157901 '17 '#f '#f))
        (let ((__tmp157904
               (cons (cons 'gensyms |gxc[1]#_g157905_|)
                     (cons (cons 'bindings |gxc[1]#_g157906_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 __tmp157904 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157850 '() '20 '#f '#f))
        __obj157850))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157237%_)
        (let* ((_%g157241157255%_
                (lambda (_%g157242157251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157242157251%_))))
               (_%g157240157296%_
                (lambda (_%g157242157259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157242157259%_))
                      (let ((_%e157244157262%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157242157259%_))))
                        (let ((_%hd157245157266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157244157262%_)))
                              (_%tl157246157269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157244157262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157246157269%_))
                              (let ((_%e157247157272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157246157269%_))))
                                (let ((_%hd157248157276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157247157272%_)))
                                      (_%tl157249157279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157247157272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157249157279%_))
                                      ((lambda (_%g157243157282%_)
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
                         (cons '() (cons _%g157243157282%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157248157276%_)
                                      (_%g157241157255%_ _%g157242157259%_))))
                              (_%g157241157255%_ _%g157242157259%_))))
                      (_%g157241157255%_ _%g157242157259%_)))))
          (_%g157240157296%_ _%$stx157237%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157300%_)
        (let* ((_%g157304157318%_
                (lambda (_%g157305157314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157305157314%_))))
               (_%g157303157359%_
                (lambda (_%g157305157322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157305157322%_))
                      (let ((_%e157307157325%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157305157322%_))))
                        (let ((_%hd157308157329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157307157325%_)))
                              (_%tl157309157332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157307157325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157309157332%_))
                              (let ((_%e157310157335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157309157332%_))))
                                (let ((_%hd157311157339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157310157335%_)))
                                      (_%tl157312157342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157310157335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157312157342%_))
                                      ((lambda (_%g157306157345%_)
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
                         (cons _%g157306157345%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157311157339%_)
                                      (_%g157304157318%_ _%g157305157322%_))))
                              (_%g157304157318%_ _%g157305157322%_))))
                      (_%g157304157318%_ _%g157305157322%_)))))
          (_%g157303157359%_ _%$stx157300%_))))))
