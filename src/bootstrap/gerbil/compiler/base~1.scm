(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132025_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132027_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132029_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132031_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132032_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132034_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132035_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132037_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132038_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132040_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132041_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131108%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131108%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131111%_)
        (let* ((_%g131114131138%_
                (lambda (_%g131115131134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131115131134%_))))
               (_%g131113131441%_
                (lambda (_%g131115131142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131115131142%_))
                      (let ((_%e131118131145%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131115131142%_))))
                        (let ((_%hd131119131149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131118131145%_)))
                              (_%tl131120131152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131118131145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131120131152%_))
                              (let ((_%e131121131155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131120131152%_))))
                                (let ((_%hd131122131159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131121131155%_)))
                                      (_%tl131123131162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131121131155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131123131162%_))
                                      (let ((_g132016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131123131162%_
                                                '0))))
                                        (begin
                                          (let ((_g132017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132016_)
                                                       (##vector-length
                                                        _g132016_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132017_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132017_)))
                                          (let ((_%target131124131165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132016_ 0)))
                                                (_%tl131126131168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132016_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131126131168%_))
                                                (letrec ((_%loop131127131171%_
                                                          (lambda (_%hd131125131175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131131131178%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131125131175%_))
                        (let ((_%e131128131181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131125131175%_))))
                          (let ((_%lp-hd131129131185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131128131181%_)))
                                (_%lp-tl131130131188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131128131181%_))))
                            (_%loop131127131171%_
                             _%lp-tl131130131188%_
                             (cons _%lp-hd131129131185%_
                                   _%clause131131131178%_))))
                        (let ((_%clause131132131191%_
                               (reverse _%clause131131131178%_)))
                          ((lambda (_%L131195%_ _%L131197%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131197%_))
                                 (let* ((_%g131216131233%_
                                         (lambda (_%g131217131229%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131217131229%_))))
                                        (_%g131215131294%_
                                         (lambda (_%g131217131237%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131217131237%_))
                                               (let ((_g132018_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131217131237%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132018_)
                        (##vector-length _g132018_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132019_ 2)))
                 (error "Context expects 2 values" _g132019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131219131240%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132018_
                                                             0)))
                                                         (_%tl131221131243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132018_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131221131243%_))
                                                         (letrec ((_%loop131222131246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131220131250%_ _%clause131226131253%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131220131250%_))
                                 (let ((_%e131223131256%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131220131250%_))))
                                   (let ((_%lp-hd131224131260%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131223131256%_)))
                                         (_%lp-tl131225131263%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131223131256%_))))
                                     (_%loop131222131246%_
                                      _%lp-tl131225131263%_
                                      (cons _%lp-hd131224131260%_
                                            _%clause131226131253%_))))
                                 (let ((_%clause131227131266%_
                                        (reverse _%clause131226131253%_)))
                                   ((lambda (_%L131270%_)
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
                            (cons _%L131197%_
                                  (let ((__tmp132020
                                         (lambda (_%g131285131288%_
                                                  _%g131286131291%_)
                                           (cons _%g131285131288%_
                                                 _%g131286131291%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132020 '() _%L131270%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131227131266%_))))))
                   (_%loop131222131246%_ _%target131219131240%_ '()))
                 (_%g131216131233%_ _%g131217131237%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131216131233%_
                                                _%g131217131237%_)))))
                                   (_%g131215131294%_
                                    (let ((__tmp132023
                                           (lambda (_%clause131298%_)
                                             (let* ((_%__stx131936131937%_
                                                     _%clause131298%_)
                                                    (_%g131302131329%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx131936131937%_)))))
                                               (let ((_%__kont131939131940%_
                                                      (lambda (_%L131414%_
                                                               _%L131416%_)
                                                        (cons _%L131416%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131414%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont131941131942%_
                                                      (lambda (_%L131366%_
                                                               _%L131368%_
                                                               _%L131369%_)
                                                        (cons _%L131369%_
                                                              (cons _%L131368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131366%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx131936131937%_))
                                                     (let ((_%e131306131394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx131936131937%_))))
                                                       (let ((_%tl131308131401%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131306131394%_)))
                     (_%hd131307131398%_
                      (let () (declare (not safe)) (##car _%e131306131394%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131308131401%_))
                     (let ((_%e131309131404%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131308131401%_))))
                       (let ((_%tl131311131411%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131309131404%_)))
                             (_%hd131310131408%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131309131404%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131311131411%_))
                             (_%__kont131939131940%_
                              _%hd131310131408%_
                              _%hd131307131398%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131311131411%_))
                                 (let ((_%e131321131356%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131311131411%_))))
                                   (let ((_%tl131323131363%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131321131356%_)))
                                         (_%hd131322131360%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131321131356%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131323131363%_))
                                         (_%__kont131941131942%_
                                          _%hd131322131360%_
                                          _%hd131310131408%_
                                          _%hd131307131398%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131302131329%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131302131329%_))))))
                     (let () (declare (not safe)) (_%g131302131329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131302131329%_)))))))
                                          (__tmp132021
                                           (let ((__tmp132022
                                                  (lambda (_%g131432131435%_
                                                           _%g131433131438%_)
                                                    (cons _%g131432131435%_
                                                          _%g131433131438%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132022
                                              '()
                                              _%L131195%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132023 __tmp132021))))
                                 (_%g131114131138%_ _%g131115131142%_)))
                           _%clause131132131191%_
                           _%hd131122131159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131127131171%_
                                                   _%target131124131165%_
                                                   '()))
                                                (_%g131114131138%_
                                                 _%g131115131142%_)))))
                                      (_%g131114131138%_ _%g131115131142%_))))
                              (_%g131114131138%_ _%g131115131142%_))))
                      (_%g131114131138%_ _%g131115131142%_)))))
          (_%g131113131441%_ _%stx131111%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj131986
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
           __obj131986
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131986
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131986
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 ':init! '11 '#f '#f))
        (let ((__tmp132024 |gxc[1]#_g132025_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132024 '12 '#f '#f))
        (let ((__tmp132026 |gxc[1]#_g132027_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132026 '13 '#f '#f))
        (let ((__tmp132028 |gxc[1]#_g132029_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132028 '14 '#f '#f))
        (let ((__tmp132030
               (cons (cons 'gensyms |gxc[1]#_g132031_|)
                     (cons (cons 'bindings |gxc[1]#_g132032_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132030 '15 '#f '#f))
        (let ((__tmp132033
               (cons (cons 'gensyms |gxc[1]#_g132034_|)
                     (cons (cons 'bindings |gxc[1]#_g132035_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132033 '16 '#f '#f))
        (let ((__tmp132036
               (cons (cons 'gensyms |gxc[1]#_g132037_|)
                     (cons (cons 'bindings |gxc[1]#_g132038_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132036 '17 '#f '#f))
        (let ((__tmp132039
               (cons (cons 'gensyms |gxc[1]#_g132040_|)
                     (cons (cons 'bindings |gxc[1]#_g132041_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 __tmp132039 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131986 '() '20 '#f '#f))
        __obj131986))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131448%_)
        (let* ((_%g131452131466%_
                (lambda (_%g131453131462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131453131462%_))))
               (_%g131451131507%_
                (lambda (_%g131453131470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131453131470%_))
                      (let ((_%e131455131473%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131453131470%_))))
                        (let ((_%hd131456131477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131455131473%_)))
                              (_%tl131457131480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131455131473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131457131480%_))
                              (let ((_%e131458131483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131457131480%_))))
                                (let ((_%hd131459131487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131458131483%_)))
                                      (_%tl131460131490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131458131483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131460131490%_))
                                      ((lambda (_%L131493%_)
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
                         (cons '() (cons _%L131493%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131459131487%_)
                                      (_%g131452131466%_ _%g131453131470%_))))
                              (_%g131452131466%_ _%g131453131470%_))))
                      (_%g131452131466%_ _%g131453131470%_)))))
          (_%g131451131507%_ _%$stx131448%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131511%_)
        (let* ((_%g131515131529%_
                (lambda (_%g131516131525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131516131525%_))))
               (_%g131514131570%_
                (lambda (_%g131516131533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131516131533%_))
                      (let ((_%e131518131536%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131516131533%_))))
                        (let ((_%hd131519131540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131518131536%_)))
                              (_%tl131520131543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131518131536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131520131543%_))
                              (let ((_%e131521131546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131520131543%_))))
                                (let ((_%hd131522131550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131521131546%_)))
                                      (_%tl131523131553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131521131546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131523131553%_))
                                      ((lambda (_%L131556%_)
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
                         (cons _%L131556%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131522131550%_)
                                      (_%g131515131529%_ _%g131516131533%_))))
                              (_%g131515131529%_ _%g131516131533%_))))
                      (_%g131515131529%_ _%g131516131533%_)))))
          (_%g131514131570%_ _%$stx131511%_))))))
