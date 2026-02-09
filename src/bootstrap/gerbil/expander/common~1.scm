(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g170112_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170114_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170116_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170118_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170119_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170121_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170122_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170124_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170125_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170127_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170128_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g170130_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj170108
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
          (##unchecked-structure-set! __obj170108 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '#f '12 '#f '#f))
        (let ((__tmp170111 |gx[1]#_g170112_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170111 '3 '#f '#f))
        (let ((__tmp170113 |gx[1]#_g170114_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170113 '13 '#f '#f))
        (let ((__tmp170115 |gx[1]#_g170116_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170115 '14 '#f '#f))
        (let ((__tmp170117
               (cons (cons 'e |gx[1]#_g170118_|)
                     (cons (cons 'source |gx[1]#_g170119_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170117 '15 '#f '#f))
        (let ((__tmp170120
               (cons (cons 'e |gx[1]#_g170121_|)
                     (cons (cons 'source |gx[1]#_g170122_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170120 '16 '#f '#f))
        (let ((__tmp170123
               (cons (cons 'e |gx[1]#_g170124_|)
                     (cons (cons 'source |gx[1]#_g170125_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170123 '17 '#f '#f))
        (let ((__tmp170126
               (cons (cons 'e |gx[1]#_g170127_|)
                     (cons (cons 'source |gx[1]#_g170128_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 __tmp170126 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj170108 '() '20 '#f '#f))
        __obj170108))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx168705%_)
        (let* ((_%g168709168723%_
                (lambda (_%g168710168719%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g168710168719%_)))
               (_%g168708168765%_
                (lambda (_%g168710168727%_)
                  (if (gx#stx-pair? _%g168710168727%_)
                      (let ((_%e168712168730%_
                             (gx#syntax-e _%g168710168727%_)))
                        (let ((_%hd168713168734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168712168730%_)))
                              (_%tl168714168737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168712168730%_))))
                          (if (gx#stx-pair? _%tl168714168737%_)
                              (let ((_%e168715168740%_
                                     (gx#syntax-e _%tl168714168737%_)))
                                (let ((_%hd168716168744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168715168740%_)))
                                      (_%tl168717168747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168715168740%_))))
                                  (if (gx#stx-null? _%tl168717168747%_)
                                      ((lambda (_%g168711168750%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g168711168750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g168711168750%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd168716168744%_)
                                      (_%g168709168723%_ _%g168710168727%_))))
                              (_%g168709168723%_ _%g168710168727%_))))
                      (_%g168709168723%_ _%g168710168727%_)))))
          (_%g168708168765%_ _%$stx168705%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx168769%_)
        (letrec ((_%generate168772%_
                  (lambda (_%tgt168921%_ _%kws168923%_ _%clauses168924%_)
                    (letrec ((_%generate-clause168926%_
                              (lambda (_%hd169859%_ _%E169861%_)
                                (let* ((_%__stx170011170012%_ _%hd169859%_)
                                       (_%g169865169892%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx170011170012%_))))
                                  (let ((_%__kont170014170015%_
                                         (lambda (_%g169867169988%_
                                                  _%g169868169990%_)
                                           (_%generate1168928%_
                                            _%hd169859%_
                                            _%g169868169990%_
                                            '#t
                                            _%g169867169988%_
                                            _%E169861%_)))
                                        (_%__kont170016170017%_
                                         (lambda (_%g169875169940%_
                                                  _%g169876169942%_
                                                  _%g169877169943%_)
                                           (_%generate1168928%_
                                            _%hd169859%_
                                            _%g169877169943%_
                                            _%g169876169942%_
                                            _%g169875169940%_
                                            _%E169861%_)))
                                        (_%__kont170018170019%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx168769%_
                                            _%hd169859%_))))
                                    (if (gx#stx-pair? _%__stx170011170012%_)
                                        (let ((_%e169869169968%_
                                               (gx#syntax-e
                                                _%__stx170011170012%_)))
                                          (let ((_%tl169871169975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169869169968%_)))
                                                (_%hd169870169972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169869169968%_))))
                                            (if (gx#stx-pair?
                                                 _%tl169871169975%_)
                                                (let ((_%e169872169978%_
                                                       (gx#syntax-e
                                                        _%tl169871169975%_)))
                                                  (let ((_%tl169874169985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169872169978%_)))
                                                        (_%hd169873169982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169872169978%_))))
                                                    (if (gx#stx-null?
                                                         _%tl169874169985%_)
                                                        (_%__kont170014170015%_
                                                         _%hd169873169982%_
                                                         _%hd169870169972%_)
                                                        (if (gx#stx-pair?
                                                             _%tl169874169985%_)
                                                            (let ((_%e169884169930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl169874169985%_)))
                      (let ((_%tl169886169937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169884169930%_)))
                            (_%hd169885169934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169884169930%_))))
                        (if (gx#stx-null? _%tl169886169937%_)
                            (_%__kont170016170017%_
                             _%hd169885169934%_
                             _%hd169873169982%_
                             _%hd169870169972%_)
                            (_%__kont170018170019%_))))
                    (_%__kont170018170019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170018170019%_))))
                                        (_%__kont170018170019%_))))))
                             (_%generate1168928%_
                              (lambda (_%where169312%_
                                       _%hd169314%_
                                       _%fender169315%_
                                       _%body169316%_
                                       _%E169317%_)
                                (letrec ((_%recur169319%_
                                          (lambda (_%hd169322%_
                                                   _%tgt169324%_
                                                   _%K169325%_)
                                            (let* ((_%__stx170057170058%_
                                                    _%hd169322%_)
                                                   (_%g169328169340%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170057170058%_))))
                                              (let ((_%__kont170060170061%_
                                                     (lambda (_%g169330169649%_
                                                              _%g169331169651%_)
                                                       (let* ((_%g169662169670%_
                                                               (lambda (_%g169663169666%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g169663169666%_)))
                      (_%g169661169851%_
                       (lambda (_%g169663169674%_)
                         ((lambda (_%g169664169677%_)
                            (let* ((_%g169689169697%_
                                    (lambda (_%g169690169693%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169690169693%_)))
                                   (_%g169688169847%_
                                    (lambda (_%g169690169701%_)
                                      ((lambda (_%g169691169704%_)
                                         (let* ((_%g169717169725%_
                                                 (lambda (_%g169718169721%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169718169721%_)))
                                                (_%g169716169843%_
                                                 (lambda (_%g169718169729%_)
                                                   ((lambda (_%g169719169732%_)
                                                      (let* ((_%g169745169753%_
                                                              (lambda (_%g169746169749%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g169746169749%_)))
                     (_%g169744169839%_
                      (lambda (_%g169746169757%_)
                        ((lambda (_%g169747169760%_)
                           (let* ((_%g169773169781%_
                                   (lambda (_%g169774169777%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g169774169777%_)))
                                  (_%g169772169835%_
                                   (lambda (_%g169774169785%_)
                                     ((lambda (_%g169775169788%_)
                                        (let* ((_%g169801169809%_
                                                (lambda (_%g169802169805%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g169802169805%_)))
                                               (_%g169800169831%_
                                                (lambda (_%g169802169813%_)
                                                  ((lambda (_%g169803169816%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g169664169677%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g169691169704%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g169664169677%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g169719169732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g169691169704%_ '()))
                                       '()))
                           (cons (cons _%g169747169760%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g169691169704%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g169775169788%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g169803169816%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g169802169813%_))))
                                          (_%g169800169831%_ _%E169317%_)))
                                      _%g169774169785%_))))
                             (_%g169772169835%_
                              (_%recur169319%_
                               _%g169331169651%_
                               _%g169719169732%_
                               (_%recur169319%_
                                _%g169330169649%_
                                _%g169747169760%_
                                _%K169325%_)))))
                         _%g169746169757%_))))
                (_%g169744169839%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g169718169729%_))))
                                           (_%g169716169843%_
                                            (gx#genident 'hd))))
                                       _%g169690169701%_))))
                              (_%g169688169847%_ (gx#genident 'e))))
                          _%g169663169674%_))))
                 (_%g169661169851%_ _%tgt169324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170062170063%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd169322%_)
                                                           (if (gx#underscore?
                                                                _%hd169322%_)
                                                               _%K169325%_
                                                               (if (let ((__tmp170129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g169354169356%_)
                                    (gx#bound-identifier=?
                                     _%g169354169356%_
                                     _%hd169322%_))))
                             (declare (not safe))
                             (__find __tmp170129 _%kws168923%_))
                           (let* ((_%g169362169377%_
                                   (lambda (_%g169363169373%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g169363169373%_)))
                                  (_%g169361169430%_
                                   (lambda (_%g169363169381%_)
                                     (if (gx#stx-pair? _%g169363169381%_)
                                         (let ((_%e169366169384%_
                                                (gx#syntax-e
                                                 _%g169363169381%_)))
                                           (let ((_%hd169367169388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169366169384%_)))
                                                 (_%tl169368169391%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169366169384%_))))
                                             (if (gx#stx-pair?
                                                  _%tl169368169391%_)
                                                 (let ((_%e169369169394%_
                                                        (gx#syntax-e
                                                         _%tl169368169391%_)))
                                                   (let ((_%hd169370169398%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169369169394%_)))
                                                         (_%tl169371169401%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169369169394%_))))
                                                     (if (gx#stx-null?
                                                          _%tl169371169401%_)
                                                         ((lambda (_%g169364169404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g169365169406%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g169365169406%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g169365169406%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g169364169404%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K169325%_ (cons _%E169317%_ '())))))
                  _%hd169370169398%_
                  _%hd169367169388%_)
                 (_%g169362169377%_ _%g169363169381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g169362169377%_
                                                  _%g169363169381%_))))
                                         (_%g169362169377%_
                                          _%g169363169381%_)))))
                             (_%g169361169430%_
                              (list _%tgt169324%_ _%hd169322%_)))
                           (let* ((_%g169436169451%_
                                   (lambda (_%g169437169447%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g169437169447%_)))
                                  (_%g169435169496%_
                                   (lambda (_%g169437169455%_)
                                     (if (gx#stx-pair? _%g169437169455%_)
                                         (let ((_%e169440169458%_
                                                (gx#syntax-e
                                                 _%g169437169455%_)))
                                           (let ((_%hd169441169462%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169440169458%_)))
                                                 (_%tl169442169465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169440169458%_))))
                                             (if (gx#stx-pair?
                                                  _%tl169442169465%_)
                                                 (let ((_%e169443169468%_
                                                        (gx#syntax-e
                                                         _%tl169442169465%_)))
                                                   (let ((_%hd169444169472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169443169468%_)))
                                                         (_%tl169445169475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169443169468%_))))
                                                     (if (gx#stx-null?
                                                          _%tl169445169475%_)
                                                         ((lambda (_%g169438169478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g169439169480%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g169438169478%_
                                            (cons _%g169439169480%_ '()))
                                      '())
                                (cons _%K169325%_ '()))))
                  _%hd169444169472%_
                  _%hd169441169462%_)
                 (_%g169436169451%_ _%g169437169455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g169436169451%_
                                                  _%g169437169455%_))))
                                         (_%g169436169451%_
                                          _%g169437169455%_)))))
                             (_%g169435169496%_
                              (list _%tgt169324%_ _%hd169322%_)))))
                   (if (gx#stx-null? _%hd169322%_)
                       (let* ((_%g169502169510%_
                               (lambda (_%g169503169506%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g169503169506%_)))
                              (_%g169501169529%_
                               (lambda (_%g169503169514%_)
                                 ((lambda (_%g169504169517%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g169504169517%_
                                                            '()))
                                                (cons _%K169325%_
                                                      (cons _%E169317%_
                                                            '())))))
                                  _%g169503169514%_))))
                         (_%g169501169529%_ _%tgt169324%_))
                       (if (gx#stx-datum? _%hd169322%_)
                           (let* ((_%g169535169554%_
                                   (lambda (_%g169536169550%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g169536169550%_)))
                                  (_%g169534169613%_
                                   (lambda (_%g169536169558%_)
                                     (if (gx#stx-pair? _%g169536169558%_)
                                         (let ((_%e169540169561%_
                                                (gx#syntax-e
                                                 _%g169536169558%_)))
                                           (let ((_%hd169541169565%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169540169561%_)))
                                                 (_%tl169542169568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169540169561%_))))
                                             (if (gx#stx-pair?
                                                  _%tl169542169568%_)
                                                 (let ((_%e169543169571%_
                                                        (gx#syntax-e
                                                         _%tl169542169568%_)))
                                                   (let ((_%hd169544169575%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169543169571%_)))
                                                         (_%tl169545169578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169543169571%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl169545169578%_)
                                                         (let ((_%e169546169581%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl169545169578%_)))
                   (let ((_%hd169547169585%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169546169581%_)))
                         (_%tl169548169588%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169546169581%_))))
                     (if (gx#stx-null? _%tl169548169588%_)
                         ((lambda (_%g169537169591%_
                                   _%g169538169593%_
                                   _%g169539169594%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g169537169591%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g169539169594%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g169538169593%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K169325%_
                                              (cons _%E169317%_ '())))))
                          _%hd169547169585%_
                          _%hd169544169575%_
                          _%hd169541169565%_)
                         (_%g169535169554%_ _%g169536169558%_))))
                 (_%g169535169554%_ _%g169536169558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g169535169554%_
                                                  _%g169536169558%_))))
                                         (_%g169535169554%_
                                          _%g169536169558%_)))))
                             (_%g169534169613%_
                              (list _%tgt169324%_
                                    _%hd169322%_
                                    (let ((_%e169617%_
                                           (gx#stx-e _%hd169322%_)))
                                      (if (or (keyword? _%e169617%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e169617%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e169617%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx168769%_
                            _%where169312%_
                            _%hd169322%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx170057170058%_)
                                                    (let ((_%e169332169639%_
                                                           (gx#syntax-e
                                                            _%__stx170057170058%_)))
                                                      (let ((_%tl169334169646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169332169639%_)))
                    (_%hd169333169643%_
                     (let () (declare (not safe)) (##car _%e169332169639%_))))
                (_%__kont170060170061%_
                 _%tl169334169646%_
                 _%hd169333169643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170062170063%_)))))))
                                  (_%recur169319%_
                                   _%hd169314%_
                                   _%tgt168921%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender169315%_
                                               (cons _%body169316%_
                                                     (cons _%E169317%_
                                                           '()))))))))
                             (_%generate-clauses168929%_
                              (lambda (_%clauses169050%_)
                                (let _%lp169053%_ ((_%rest169056%_
                                                    _%clauses169050%_)
                                                   (_%E169058%_
                                                    (gx#genident 'E))
                                                   (_%r169059%_ '()))
                                  (let* ((_%__stx170093170094%_ _%rest169056%_)
                                         (_%g169062169074%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx170093170094%_))))
                                    (let ((_%__kont170096170097%_
                                           (lambda (_%g169064169139%_
                                                    _%g169065169141%_)
                                             (let* ((_%__stx170073170074%_
                                                     _%g169065169141%_)
                                                    (_%g169153169164%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx170073170074%_))))
                                               (let ((_%__kont170076170077%_
                                                      (lambda (_%g169155169293%_)
                                                        (if (gx#stx-null?
                                                             _%g169064169139%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g169155169293%_)
                             (not (gx#stx-null? _%g169155169293%_)))
                        (cons (cons _%E169058%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g169155169293%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g169065169141%_))
                                          '()))
                              _%r169059%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx168769%_
                         _%g169065169141%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx168769%_
                     _%g169065169141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170078170079%_
                                                      (lambda ()
                                                        (let* ((_%g169175169183%_
                                                                (lambda (_%g169176169179%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169176169179%_)))
                       (_%g169174169272%_
                        (lambda (_%g169176169187%_)
                          ((lambda (_%g169177169190%_)
                             (let* ((_%g169206169214%_
                                     (lambda (_%g169207169210%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g169207169210%_)))
                                    (_%g169205169268%_
                                     (lambda (_%g169207169218%_)
                                       ((lambda (_%g169208169221%_)
                                          (let* ((_%g169234169242%_
                                                  (lambda (_%g169235169238%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g169235169238%_)))
                                                 (_%g169233169264%_
                                                  (lambda (_%g169235169246%_)
                                                    ((lambda (_%g169236169249%_)
                                                       (_%lp169053%_
                                                        _%g169064169139%_
                                                        _%g169177169190%_
                                                        (cons (cons _%E169058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g169236169249%_ '()))
                      _%r169059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g169235169246%_))))
                                            (_%g169233169264%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g169208169221%_
                                                                '())))
                                              (gx#stx-source
                                               _%g169065169141%_)))))
                                        _%g169207169218%_))))
                               (_%g169205169268%_
                                (_%generate-clause168926%_
                                 _%g169065169141%_
                                 (cons _%g169177169190%_ '())))))
                           _%g169176169187%_))))
                  (_%g169174169272%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx170073170074%_)
                                                     (let ((_%e169156169283%_
                                                            (gx#syntax-e
                                                             _%__stx170073170074%_)))
                                                       (let ((_%tl169158169290%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e169156169283%_)))
                     (_%hd169157169287%_
                      (let () (declare (not safe)) (##car _%e169156169283%_))))
                 (if (gx#identifier? _%hd169157169287%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g170130_|
                          _%hd169157169287%_)
                         (_%__kont170076170077%_ _%tl169158169290%_)
                         (_%__kont170078170079%_))
                     (_%__kont170078170079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170078170079%_))))))
                                          (_%__kont170098170099%_
                                           (lambda ()
                                             (let* ((_%g169085169093%_
                                                     (lambda (_%g169086169089%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g169086169089%_)))
                                                    (_%g169084169118%_
                                                     (lambda (_%g169086169097%_)
                                                       ((lambda (_%g169087169100%_)
                                                          (cons (cons _%E169058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%g169087169100%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx168769%_))
                                    '()))
                        _%r169059%_))
                _%g169086169097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169084169118%_
                                                _%tgt168921%_)))))
                                      (if (gx#stx-pair? _%__stx170093170094%_)
                                          (let ((_%e169066169129%_
                                                 (gx#syntax-e
                                                  _%__stx170093170094%_)))
                                            (let ((_%tl169068169136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169066169129%_)))
                                                  (_%hd169067169133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169066169129%_))))
                                              (_%__kont170096170097%_
                                               _%tl169068169136%_
                                               _%hd169067169133%_)))
                                          (_%__kont170098170099%_))))))))
                      (let* ((_%bind168931%_
                              (_%generate-clauses168929%_ _%clauses168924%_))
                             (_%g168934168951%_
                              (lambda (_%g168935168947%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168935168947%_)))
                             (_%g168933169046%_
                              (lambda (_%g168935168955%_)
                                (if (gx#stx-pair/null? _%g168935168955%_)
                                    (let ((_g170131_
                                           (gx#syntax-split-splice
                                            _%g168935168955%_
                                            '0)))
                                      (begin
                                        (let ((_g170132_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g170131_)
                                                     (##values-length
                                                      _g170131_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g170132_ 2)))
                                              (error "Context expects 2 values"
                                                     _g170132_)))
                                        (let ((_%target168937168958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g170131_ 0)))
                                              (_%tl168939168961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g170131_ 1))))
                                          (if (gx#stx-null? _%tl168939168961%_)
                                              (letrec ((_%loop168940168964%_
                                                        (lambda (_%hd168938168968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try168944168971%_)
                  (if (gx#stx-pair? _%hd168938168968%_)
                      (let ((_%e168941168973%_
                             (gx#syntax-e _%hd168938168968%_)))
                        (let ((_%lp-hd168942168977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168941168973%_)))
                              (_%lp-tl168943168980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168941168973%_))))
                          (_%loop168940168964%_
                           _%lp-tl168943168980%_
                           (cons _%lp-hd168942168977%_
                                 _%bind-try168944168971%_))))
                      (let ((_%bind-try168945168983%_
                             (reverse _%bind-try168944168971%_)))
                        ((lambda (_%g168936168986%_)
                           (let* ((_%g169004169012%_
                                   (lambda (_%g169005169008%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g169005169008%_)))
                                  (_%g169003169042%_
                                   (lambda (_%g169005169016%_)
                                     ((lambda (_%g169006169019%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp170133
                                                           (lambda (_%g169033169036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169034169039%_)
                     (cons _%g169033169036%_ _%g169034169039%_))))
              (declare (not safe))
              (foldr__0 __tmp170133 '() _%g168936168986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g169006169019%_
                                                                '())
                                                          '()))))
                                      _%g169005169016%_))))
                             (_%g169003169042%_ (car (last _%bind168931%_)))))
                         _%bind-try168945168983%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop168940168964%_
                                                 _%target168937168958%_
                                                 '()))
                                              (_%g168934168951%_
                                               _%g168935168955%_)))))
                                    (_%g168934168951%_ _%g168935168955%_)))))
                        (_%g168933169046%_ _%bind168931%_))))))
          (let* ((_%g168775168794%_
                  (lambda (_%g168776168790%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g168776168790%_)))
                 (_%g168774168917%_
                  (lambda (_%g168776168798%_)
                    (if (gx#stx-pair? _%g168776168798%_)
                        (let ((_%e168780168801%_
                               (gx#syntax-e _%g168776168798%_)))
                          (let ((_%hd168781168805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168780168801%_)))
                                (_%tl168782168808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168780168801%_))))
                            (if (gx#stx-pair? _%tl168782168808%_)
                                (let ((_%e168783168811%_
                                       (gx#syntax-e _%tl168782168808%_)))
                                  (let ((_%hd168784168815%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168783168811%_)))
                                        (_%tl168785168818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168783168811%_))))
                                    (if (gx#stx-pair? _%tl168785168818%_)
                                        (let ((_%e168786168821%_
                                               (gx#syntax-e
                                                _%tl168785168818%_)))
                                          (let ((_%hd168787168825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168786168821%_)))
                                                (_%tl168788168828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168786168821%_))))
                                            ((lambda (_%g168777168831%_
                                                      _%g168778168833%_
                                                      _%g168779168834%_)
                                               (if (and (gx#identifier-list?
                                                         _%g168778168833%_)
                                                        (gx#stx-list?
                                                         _%g168777168831%_))
                                                   (let* ((_%g168852168860%_
                                                           (lambda (_%g168853168856%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g168853168856%_)))
                                                          (_%g168851168913%_
                                                           (lambda (_%g168853168864%_)
                                                             ((lambda (_%g168854168867%_)
                                                                (let* ((_%g168879168887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g168880168883%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g168880168883%_)))
                               (_%g168878168909%_
                                (lambda (_%g168880168891%_)
                                  ((lambda (_%g168881168894%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g168854168867%_
                                                             (cons _%g168779168834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g168881168894%_
                                                       '()))))
                                   _%g168880168891%_))))
                          (_%g168878168909%_
                           (_%generate168772%_
                            _%g168854168867%_
                            (gx#syntax->list _%g168778168833%_)
                            _%g168777168831%_))))
                      _%g168853168864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g168851168913%_
                                                      (gx#genident 'e)))
                                                   (_%g168775168794%_
                                                    _%g168776168798%_)))
                                             _%tl168788168828%_
                                             _%hd168787168825%_
                                             _%hd168784168815%_)))
                                        (_%g168775168794%_
                                         _%g168776168798%_))))
                                (_%g168775168794%_ _%g168776168798%_))))
                        (_%g168775168794%_ _%g168776168798%_)))))
            (_%g168774168917%_ _%stx168769%_)))))))
