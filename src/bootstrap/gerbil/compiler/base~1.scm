(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g129818_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129820_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129822_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129824_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129825_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129827_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129828_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129830_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129831_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129833_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129834_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129015%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129015%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129018%_)
        (let* ((_%g129021129045%_
                (lambda (_%g129022129041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129022129041%_))))
               (_%g129020129348%_
                (lambda (_%g129022129049%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129022129049%_))
                      (let ((_%e129027129052%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129022129049%_))))
                        (let ((_%hd129026129056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129027129052%_)))
                              (_%tl129025129059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129027129052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129025129059%_))
                              (let ((_%e129030129062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129025129059%_))))
                                (let ((_%hd129029129066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129030129062%_)))
                                      (_%tl129028129069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129030129062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129028129069%_))
                                      (let ((_g129809_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129028129069%_
                                                '0))))
                                        (begin
                                          (let ((_g129810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129809_)
                                                       (##vector-length
                                                        _g129809_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129810_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129810_)))
                                          (let ((_%target129031129072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129809_ 0)))
                                                (_%tl129033129075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129809_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129033129075%_))
                                                (letrec ((_%loop129034129078%_
                                                          (lambda (_%hd129032129082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129038129085%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129032129082%_))
                        (let ((_%e129035129088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129032129082%_))))
                          (let ((_%lp-hd129036129092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129035129088%_)))
                                (_%lp-tl129037129095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129035129088%_))))
                            (_%loop129034129078%_
                             _%lp-tl129037129095%_
                             (cons _%lp-hd129036129092%_
                                   _%clause129038129085%_))))
                        (let ((_%clause129039129098%_
                               (reverse _%clause129038129085%_)))
                          ((lambda (_%L129102%_ _%L129104%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129104%_))
                                 (let* ((_%g129123129140%_
                                         (lambda (_%g129124129136%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129124129136%_))))
                                        (_%g129122129201%_
                                         (lambda (_%g129124129144%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129124129144%_))
                                               (let ((_g129811_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129124129144%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g129812_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g129811_)
                        (##vector-length _g129811_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g129812_ 2)))
                 (error "Context expects 2 values" _g129812_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129126129147%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129811_
                                                             0)))
                                                         (_%tl129128129150%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129811_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129128129150%_))
                                                         (letrec ((_%loop129129129153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129127129157%_ _%clause129133129160%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129127129157%_))
                                 (let ((_%e129130129163%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129127129157%_))))
                                   (let ((_%lp-hd129131129167%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129130129163%_)))
                                         (_%lp-tl129132129170%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129130129163%_))))
                                     (_%loop129129129153%_
                                      _%lp-tl129132129170%_
                                      (cons _%lp-hd129131129167%_
                                            _%clause129133129160%_))))
                                 (let ((_%clause129134129173%_
                                        (reverse _%clause129133129160%_)))
                                   ((lambda (_%L129177%_)
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
                            (cons _%L129104%_
                                  (let ((__tmp129813
                                         (lambda (_%g129192129195%_
                                                  _%g129193129198%_)
                                           (cons _%g129192129195%_
                                                 _%g129193129198%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp129813 '() _%L129177%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129134129173%_))))))
                   (_%loop129129129153%_ _%target129126129147%_ '()))
                 (_%g129123129140%_ _%g129124129144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129123129140%_
                                                _%g129124129144%_)))))
                                   (_%g129122129201%_
                                    (let ((__tmp129816
                                           (lambda (_%clause129205%_)
                                             (let* ((_%__stx129737129738%_
                                                     _%clause129205%_)
                                                    (_%g129209129236%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx129737129738%_)))))
                                               (let ((_%__kont129740129741%_
                                                      (lambda (_%L129321%_
                                                               _%L129323%_)
                                                        (cons _%L129323%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129321%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129742129743%_
                                                      (lambda (_%L129273%_
                                                               _%L129275%_
                                                               _%L129276%_)
                                                        (cons _%L129276%_
                                                              (cons _%L129275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129273%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx129737129738%_))
                                                     (let ((_%e129215129301%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx129737129738%_))))
                                                       (let ((_%tl129213129308%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129215129301%_)))
                     (_%hd129214129305%_
                      (let () (declare (not safe)) (##car _%e129215129301%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129213129308%_))
                     (let ((_%e129218129311%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129213129308%_))))
                       (let ((_%tl129216129318%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129218129311%_)))
                             (_%hd129217129315%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129218129311%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129216129318%_))
                             (_%__kont129740129741%_
                              _%hd129217129315%_
                              _%hd129214129305%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129216129318%_))
                                 (let ((_%e129230129263%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129216129318%_))))
                                   (let ((_%tl129228129270%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129230129263%_)))
                                         (_%hd129229129267%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129230129263%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129228129270%_))
                                         (_%__kont129742129743%_
                                          _%hd129229129267%_
                                          _%hd129217129315%_
                                          _%hd129214129305%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129209129236%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129209129236%_))))))
                     (let () (declare (not safe)) (_%g129209129236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129209129236%_)))))))
                                          (__tmp129814
                                           (let ((__tmp129815
                                                  (lambda (_%g129339129342%_
                                                           _%g129340129345%_)
                                                    (cons _%g129339129342%_
                                                          _%g129340129345%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp129815
                                              '()
                                              _%L129102%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp129816 __tmp129814))))
                                 (_%g129021129045%_ _%g129022129049%_)))
                           _%clause129039129098%_
                           _%hd129029129066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129034129078%_
                                                   _%target129031129072%_
                                                   '()))
                                                (_%g129021129045%_
                                                 _%g129022129049%_)))))
                                      (_%g129021129045%_ _%g129022129049%_))))
                              (_%g129021129045%_ _%g129022129049%_))))
                      (_%g129021129045%_ _%g129022129049%_)))))
          (_%g129020129348%_ _%stx129018%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj129787
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
           __obj129787
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129787
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129787
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 ':init! '11 '#f '#f))
        (let ((__tmp129817 |gxc[1]#_g129818_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129817 '12 '#f '#f))
        (let ((__tmp129819 |gxc[1]#_g129820_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129819 '13 '#f '#f))
        (let ((__tmp129821 |gxc[1]#_g129822_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129821 '14 '#f '#f))
        (let ((__tmp129823
               (cons (cons 'gensyms |gxc[1]#_g129824_|)
                     (cons (cons 'bindings |gxc[1]#_g129825_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129823 '15 '#f '#f))
        (let ((__tmp129826
               (cons (cons 'gensyms |gxc[1]#_g129827_|)
                     (cons (cons 'bindings |gxc[1]#_g129828_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129826 '16 '#f '#f))
        (let ((__tmp129829
               (cons (cons 'gensyms |gxc[1]#_g129830_|)
                     (cons (cons 'bindings |gxc[1]#_g129831_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129829 '17 '#f '#f))
        (let ((__tmp129832
               (cons (cons 'gensyms |gxc[1]#_g129833_|)
                     (cons (cons 'bindings |gxc[1]#_g129834_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 __tmp129832 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129787 '() '20 '#f '#f))
        __obj129787))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129354%_)
        (let* ((_%g129358129372%_
                (lambda (_%g129359129368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129359129368%_))))
               (_%g129357129413%_
                (lambda (_%g129359129376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129359129376%_))
                      (let ((_%e129363129379%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129359129376%_))))
                        (let ((_%hd129362129383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129363129379%_)))
                              (_%tl129361129386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129363129379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129361129386%_))
                              (let ((_%e129366129389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129361129386%_))))
                                (let ((_%hd129365129393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129366129389%_)))
                                      (_%tl129364129396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129366129389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129364129396%_))
                                      ((lambda (_%L129399%_)
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
                         (cons '() (cons _%L129399%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129365129393%_)
                                      (_%g129358129372%_ _%g129359129376%_))))
                              (_%g129358129372%_ _%g129359129376%_))))
                      (_%g129358129372%_ _%g129359129376%_)))))
          (_%g129357129413%_ _%$stx129354%_))))))
