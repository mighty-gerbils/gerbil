(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130090_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130092_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130094_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130096_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130097_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130099_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130100_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130102_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130103_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130105_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130106_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129285%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129285%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129288%_)
        (let* ((_%g129291129315%_
                (lambda (_%g129292129311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129292129311%_))))
               (_%g129290129618%_
                (lambda (_%g129292129319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129292129319%_))
                      (let ((_%e129297129322%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129292129319%_))))
                        (let ((_%hd129296129326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129297129322%_)))
                              (_%tl129295129329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129297129322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129295129329%_))
                              (let ((_%e129300129332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129295129329%_))))
                                (let ((_%hd129299129336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129300129332%_)))
                                      (_%tl129298129339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129300129332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129298129339%_))
                                      (let ((_g130081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129298129339%_
                                                '0))))
                                        (begin
                                          (let ((_g130082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130081_)
                                                       (##vector-length
                                                        _g130081_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130082_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130082_)))
                                          (let ((_%target129301129342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130081_ 0)))
                                                (_%tl129303129345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130081_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129303129345%_))
                                                (letrec ((_%loop129304129348%_
                                                          (lambda (_%hd129302129352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129308129355%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129302129352%_))
                        (let ((_%e129305129358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129302129352%_))))
                          (let ((_%lp-hd129306129362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129305129358%_)))
                                (_%lp-tl129307129365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129305129358%_))))
                            (_%loop129304129348%_
                             _%lp-tl129307129365%_
                             (cons _%lp-hd129306129362%_
                                   _%clause129308129355%_))))
                        (let ((_%clause129309129368%_
                               (reverse _%clause129308129355%_)))
                          ((lambda (_%L129372%_ _%L129374%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129374%_))
                                 (let* ((_%g129393129410%_
                                         (lambda (_%g129394129406%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129394129406%_))))
                                        (_%g129392129471%_
                                         (lambda (_%g129394129414%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129394129414%_))
                                               (let ((_g130083_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129394129414%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130084_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130083_)
                        (##vector-length _g130083_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130084_ 2)))
                 (error "Context expects 2 values" _g130084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129396129417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130083_
                                                             0)))
                                                         (_%tl129398129420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130083_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129398129420%_))
                                                         (letrec ((_%loop129399129423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129397129427%_ _%clause129403129430%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129397129427%_))
                                 (let ((_%e129400129433%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129397129427%_))))
                                   (let ((_%lp-hd129401129437%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129400129433%_)))
                                         (_%lp-tl129402129440%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129400129433%_))))
                                     (_%loop129399129423%_
                                      _%lp-tl129402129440%_
                                      (cons _%lp-hd129401129437%_
                                            _%clause129403129430%_))))
                                 (let ((_%clause129404129443%_
                                        (reverse _%clause129403129430%_)))
                                   ((lambda (_%L129447%_)
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
                              (cons _%L129374%_
                                    (let ((__tmp130085
                                           (lambda (_%g129462129465%_
                                                    _%g129463129468%_)
                                             (cons _%g129462129465%_
                                                   _%g129463129468%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130085
                                       '()
                                       _%L129447%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129404129443%_))))))
                   (_%loop129399129423%_ _%target129396129417%_ '()))
                 (_%g129393129410%_ _%g129394129414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129393129410%_
                                                _%g129394129414%_)))))
                                   (_%g129392129471%_
                                    (let ((__tmp130088
                                           (lambda (_%clause129475%_)
                                             (let* ((_%__stx130007130008%_
                                                     _%clause129475%_)
                                                    (_%g129479129506%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130007130008%_)))))
                                               (let ((_%__kont130010130011%_
                                                      (lambda (_%L129591%_
                                                               _%L129593%_)
                                                        (cons _%L129593%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129591%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130012130013%_
                                                      (lambda (_%L129543%_
                                                               _%L129545%_
                                                               _%L129546%_)
                                                        (cons _%L129546%_
                                                              (cons _%L129545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129543%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130007130008%_))
                                                     (let ((_%e129485129571%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130007130008%_))))
                                                       (let ((_%tl129483129578%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129485129571%_)))
                     (_%hd129484129575%_
                      (let () (declare (not safe)) (##car _%e129485129571%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129483129578%_))
                     (let ((_%e129488129581%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129483129578%_))))
                       (let ((_%tl129486129588%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129488129581%_)))
                             (_%hd129487129585%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129488129581%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129486129588%_))
                             (_%__kont130010130011%_
                              _%hd129487129585%_
                              _%hd129484129575%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129486129588%_))
                                 (let ((_%e129500129533%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129486129588%_))))
                                   (let ((_%tl129498129540%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129500129533%_)))
                                         (_%hd129499129537%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129500129533%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129498129540%_))
                                         (_%__kont130012130013%_
                                          _%hd129499129537%_
                                          _%hd129487129585%_
                                          _%hd129484129575%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129479129506%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129479129506%_))))))
                     (let () (declare (not safe)) (_%g129479129506%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129479129506%_)))))))
                                          (__tmp130086
                                           (let ((__tmp130087
                                                  (lambda (_%g129609129612%_
                                                           _%g129610129615%_)
                                                    (cons _%g129609129612%_
                                                          _%g129610129615%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130087
                                              '()
                                              _%L129372%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130088 __tmp130086))))
                                 (_%g129291129315%_ _%g129292129319%_)))
                           _%clause129309129368%_
                           _%hd129299129336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129304129348%_
                                                   _%target129301129342%_
                                                   '()))
                                                (_%g129291129315%_
                                                 _%g129292129319%_)))))
                                      (_%g129291129315%_ _%g129292129319%_))))
                              (_%g129291129315%_ _%g129292129319%_))))
                      (_%g129291129315%_ _%g129292129319%_)))))
          (_%g129290129618%_ _%stx129288%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130057
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
           __obj130057
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130057
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130057
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 ':init! '11 '#f '#f))
        (let ((__tmp130089 |gxc[1]#_g130090_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130089 '12 '#f '#f))
        (let ((__tmp130091 |gxc[1]#_g130092_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130091 '13 '#f '#f))
        (let ((__tmp130093 |gxc[1]#_g130094_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130093 '14 '#f '#f))
        (let ((__tmp130095
               (cons (cons 'gensyms |gxc[1]#_g130096_|)
                     (cons (cons 'bindings |gxc[1]#_g130097_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130095 '15 '#f '#f))
        (let ((__tmp130098
               (cons (cons 'gensyms |gxc[1]#_g130099_|)
                     (cons (cons 'bindings |gxc[1]#_g130100_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130098 '16 '#f '#f))
        (let ((__tmp130101
               (cons (cons 'gensyms |gxc[1]#_g130102_|)
                     (cons (cons 'bindings |gxc[1]#_g130103_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130101 '17 '#f '#f))
        (let ((__tmp130104
               (cons (cons 'gensyms |gxc[1]#_g130105_|)
                     (cons (cons 'bindings |gxc[1]#_g130106_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 __tmp130104 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130057 '() '20 '#f '#f))
        __obj130057))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129624%_)
        (let* ((_%g129628129642%_
                (lambda (_%g129629129638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129629129638%_))))
               (_%g129627129683%_
                (lambda (_%g129629129646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129629129646%_))
                      (let ((_%e129633129649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129629129646%_))))
                        (let ((_%hd129632129653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129633129649%_)))
                              (_%tl129631129656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129633129649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129631129656%_))
                              (let ((_%e129636129659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129631129656%_))))
                                (let ((_%hd129635129663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129636129659%_)))
                                      (_%tl129634129666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129636129659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129634129666%_))
                                      ((lambda (_%L129669%_)
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
                         (cons '() (cons _%L129669%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129635129663%_)
                                      (_%g129628129642%_ _%g129629129646%_))))
                              (_%g129628129642%_ _%g129629129646%_))))
                      (_%g129628129642%_ _%g129629129646%_)))))
          (_%g129627129683%_ _%$stx129624%_))))))
