(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g129991_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129993_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129995_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129997_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129998_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130000_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130001_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130003_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130004_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130006_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130007_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129077%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129077%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129080%_)
        (let* ((_%g129083129107%_
                (lambda (_%g129084129103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129084129103%_))))
               (_%g129082129410%_
                (lambda (_%g129084129111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129084129111%_))
                      (let ((_%e129087129114%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129084129111%_))))
                        (let ((_%hd129088129118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129087129114%_)))
                              (_%tl129089129121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129087129114%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129089129121%_))
                              (let ((_%e129090129124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129089129121%_))))
                                (let ((_%hd129091129128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129090129124%_)))
                                      (_%tl129092129131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129090129124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129092129131%_))
                                      (let ((_g129982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129092129131%_
                                                '0))))
                                        (begin
                                          (let ((_g129983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129982_)
                                                       (##vector-length
                                                        _g129982_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129983_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129983_)))
                                          (let ((_%target129093129134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129982_ 0)))
                                                (_%tl129095129137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129982_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129095129137%_))
                                                (letrec ((_%loop129096129140%_
                                                          (lambda (_%hd129094129144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129100129147%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129094129144%_))
                        (let ((_%e129097129150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129094129144%_))))
                          (let ((_%lp-hd129098129154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129097129150%_)))
                                (_%lp-tl129099129157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129097129150%_))))
                            (_%loop129096129140%_
                             _%lp-tl129099129157%_
                             (cons _%lp-hd129098129154%_
                                   _%clause129100129147%_))))
                        (let ((_%clause129101129160%_
                               (reverse _%clause129100129147%_)))
                          ((lambda (_%L129164%_ _%L129166%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129166%_))
                                 (let* ((_%g129185129202%_
                                         (lambda (_%g129186129198%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129186129198%_))))
                                        (_%g129184129263%_
                                         (lambda (_%g129186129206%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129186129206%_))
                                               (let ((_g129984_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129186129206%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g129985_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g129984_)
                        (##vector-length _g129984_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g129985_ 2)))
                 (error "Context expects 2 values" _g129985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129188129209%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129984_
                                                             0)))
                                                         (_%tl129190129212%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129984_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129190129212%_))
                                                         (letrec ((_%loop129191129215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129189129219%_ _%clause129195129222%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129189129219%_))
                                 (let ((_%e129192129225%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129189129219%_))))
                                   (let ((_%lp-hd129193129229%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129192129225%_)))
                                         (_%lp-tl129194129232%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129192129225%_))))
                                     (_%loop129191129215%_
                                      _%lp-tl129194129232%_
                                      (cons _%lp-hd129193129229%_
                                            _%clause129195129222%_))))
                                 (let ((_%clause129196129235%_
                                        (reverse _%clause129195129222%_)))
                                   ((lambda (_%L129239%_)
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
                            (cons _%L129166%_
                                  (let ((__tmp129986
                                         (lambda (_%g129254129257%_
                                                  _%g129255129260%_)
                                           (cons _%g129254129257%_
                                                 _%g129255129260%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp129986 '() _%L129239%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129196129235%_))))))
                   (_%loop129191129215%_ _%target129188129209%_ '()))
                 (_%g129185129202%_ _%g129186129206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129185129202%_
                                                _%g129186129206%_)))))
                                   (_%g129184129263%_
                                    (let ((__tmp129989
                                           (lambda (_%clause129267%_)
                                             (let* ((_%__stx129902129903%_
                                                     _%clause129267%_)
                                                    (_%g129271129298%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx129902129903%_)))))
                                               (let ((_%__kont129905129906%_
                                                      (lambda (_%L129383%_
                                                               _%L129385%_)
                                                        (cons _%L129385%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129383%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129907129908%_
                                                      (lambda (_%L129335%_
                                                               _%L129337%_
                                                               _%L129338%_)
                                                        (cons _%L129338%_
                                                              (cons _%L129337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129335%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx129902129903%_))
                                                     (let ((_%e129275129363%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx129902129903%_))))
                                                       (let ((_%tl129277129370%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129275129363%_)))
                     (_%hd129276129367%_
                      (let () (declare (not safe)) (##car _%e129275129363%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129277129370%_))
                     (let ((_%e129278129373%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129277129370%_))))
                       (let ((_%tl129280129380%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129278129373%_)))
                             (_%hd129279129377%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129278129373%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129280129380%_))
                             (_%__kont129905129906%_
                              _%hd129279129377%_
                              _%hd129276129367%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129280129380%_))
                                 (let ((_%e129290129325%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129280129380%_))))
                                   (let ((_%tl129292129332%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129290129325%_)))
                                         (_%hd129291129329%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129290129325%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129292129332%_))
                                         (_%__kont129907129908%_
                                          _%hd129291129329%_
                                          _%hd129279129377%_
                                          _%hd129276129367%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129271129298%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129271129298%_))))))
                     (let () (declare (not safe)) (_%g129271129298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129271129298%_)))))))
                                          (__tmp129987
                                           (let ((__tmp129988
                                                  (lambda (_%g129401129404%_
                                                           _%g129402129407%_)
                                                    (cons _%g129401129404%_
                                                          _%g129402129407%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp129988
                                              '()
                                              _%L129164%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp129989 __tmp129987))))
                                 (_%g129083129107%_ _%g129084129111%_)))
                           _%clause129101129160%_
                           _%hd129091129128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129096129140%_
                                                   _%target129093129134%_
                                                   '()))
                                                (_%g129083129107%_
                                                 _%g129084129111%_)))))
                                      (_%g129083129107%_ _%g129084129111%_))))
                              (_%g129083129107%_ _%g129084129111%_))))
                      (_%g129083129107%_ _%g129084129111%_)))))
          (_%g129082129410%_ _%stx129080%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj129952
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
           __obj129952
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129952
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129952
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 ':init! '11 '#f '#f))
        (let ((__tmp129990 |gxc[1]#_g129991_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp129990 '12 '#f '#f))
        (let ((__tmp129992 |gxc[1]#_g129993_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp129992 '13 '#f '#f))
        (let ((__tmp129994 |gxc[1]#_g129995_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp129994 '14 '#f '#f))
        (let ((__tmp129996
               (cons (cons 'gensyms |gxc[1]#_g129997_|)
                     (cons (cons 'bindings |gxc[1]#_g129998_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp129996 '15 '#f '#f))
        (let ((__tmp129999
               (cons (cons 'gensyms |gxc[1]#_g130000_|)
                     (cons (cons 'bindings |gxc[1]#_g130001_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp129999 '16 '#f '#f))
        (let ((__tmp130002
               (cons (cons 'gensyms |gxc[1]#_g130003_|)
                     (cons (cons 'bindings |gxc[1]#_g130004_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp130002 '17 '#f '#f))
        (let ((__tmp130005
               (cons (cons 'gensyms |gxc[1]#_g130006_|)
                     (cons (cons 'bindings |gxc[1]#_g130007_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 __tmp130005 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129952 '() '20 '#f '#f))
        __obj129952))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129416%_)
        (let* ((_%g129420129434%_
                (lambda (_%g129421129430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129421129430%_))))
               (_%g129419129475%_
                (lambda (_%g129421129438%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129421129438%_))
                      (let ((_%e129423129441%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129421129438%_))))
                        (let ((_%hd129424129445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129423129441%_)))
                              (_%tl129425129448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129423129441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129425129448%_))
                              (let ((_%e129426129451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129425129448%_))))
                                (let ((_%hd129427129455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129426129451%_)))
                                      (_%tl129428129458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129426129451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129428129458%_))
                                      ((lambda (_%L129461%_)
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
                         (cons '() (cons _%L129461%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129427129455%_)
                                      (_%g129420129434%_ _%g129421129438%_))))
                              (_%g129420129434%_ _%g129421129438%_))))
                      (_%g129420129434%_ _%g129421129438%_)))))
          (_%g129419129475%_ _%$stx129416%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx129479%_)
        (let* ((_%g129483129497%_
                (lambda (_%g129484129493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129484129493%_))))
               (_%g129482129538%_
                (lambda (_%g129484129501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129484129501%_))
                      (let ((_%e129486129504%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129484129501%_))))
                        (let ((_%hd129487129508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129486129504%_)))
                              (_%tl129488129511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129486129504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129488129511%_))
                              (let ((_%e129489129514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129488129511%_))))
                                (let ((_%hd129490129518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129489129514%_)))
                                      (_%tl129491129521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129489129514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129491129521%_))
                                      ((lambda (_%L129524%_)
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
                         (cons _%L129524%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd129490129518%_)
                                      (_%g129483129497%_ _%g129484129501%_))))
                              (_%g129483129497%_ _%g129484129501%_))))
                      (_%g129483129497%_ _%g129484129501%_)))))
          (_%g129482129538%_ _%$stx129479%_))))))
