(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g119170_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118298%_)
       (arg . _%arg118361%_)
       (arg118273 . _%arg118273118331%_)
       (arg118274 . _%arg118274118345%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119171_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119170_|)))
  (define |[1]#_g119172_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value118377%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119173_|
    (##structure
     gx#syntax-quote::t
     '_%new-value118377%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g119172_|)))
  (define |[1]#_g119175_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119176_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119175_|)))
  (define |[1]#_g119177_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118433%_)
       (arg . _%arg118496%_)
       (arg118409 . _%arg118409118466%_)
       (arg118410 . _%arg118410118480%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119178_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119177_|)))
  (define |[1]#_g119180_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119181_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119180_|)))
  (define |[1]#_g119182_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118594%_)
       (arg . _%arg118657%_)
       (arg118571 . _%arg118571118641%_)
       (arg118570 . _%arg118570118627%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119183_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119182_|)))
  (define |[1]#_g119185_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119186_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119185_|)))
  (define |[1]#_g119187_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id118737%_)
       (arg . _%arg118800%_)
       (arg118713 . _%arg118713118770%_)
       (arg118714 . _%arg118714118784%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119188_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119187_|)))
  (define |[1]#_g119189_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value118816%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119190_|
    (##structure
     gx#syntax-quote::t
     '_%new-value118816%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g119189_|)))
  (define |[1]#_g119192_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119193_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119192_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx118255%_)
        (let* ((_%__stx119056119057%_ _%$stx118255%_)
               (_%g118260118281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119056119057%_))))
          (let ((_%__kont119059119060%_
                 (lambda (_%g118262118347%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119171_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g119173_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp119174
                                                  (lambda (_%g118362118365%_
                                                           _%g118363118368%_)
                                                    (cons _%g118362118365%_
                                                          _%g118363118368%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119174
                                              '()
                                              _%g118262118347%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119176_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g119173_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g119173_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119063119064%_
                 (lambda (_%g118275118288%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g118259118300%_
                    (lambda ()
                      (let ((_%g118275118288%_ _%__stx119056119057%_))
                        (if (gx#identifier? _%g118275118288%_)
                            (_%__kont119063119064%_ _%g118275118288%_)
                            (let ()
                              (declare (not safe))
                              (_%g118260118281%_))))))
                   (_%__match119079119080%_
                    (lambda (_%e118263118307%_
                             _%hd118264118311%_
                             _%tl118265118314%_
                             _%__splice119061119062%_
                             _%target118266118317%_
                             _%tl118268118320%_)
                      (letrec ((_%loop118269118323%_
                                (lambda (_%hd118267118327%_
                                         _%arg118273118330%_)
                                  (if (gx#stx-pair? _%hd118267118327%_)
                                      (let ((_%e118270118333%_
                                             (gx#syntax-e _%hd118267118327%_)))
                                        (let ((_%lp-tl118272118340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118270118333%_)))
                                              (_%lp-hd118271118337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118270118333%_))))
                                          (_%loop118269118323%_
                                           _%lp-tl118272118340%_
                                           (cons _%lp-hd118271118337%_
                                                 _%arg118273118330%_))))
                                      (let ((_%arg118274118343%_
                                             (reverse _%arg118273118330%_)))
                                        (_%__kont119059119060%_
                                         _%arg118274118343%_))))))
                        (_%loop118269118323%_ _%target118266118317%_ '())))))
              (if (gx#stx-pair? _%__stx119056119057%_)
                  (let ((_%e118263118307%_
                         (gx#syntax-e _%__stx119056119057%_)))
                    (let ((_%tl118265118314%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118263118307%_)))
                          (_%hd118264118311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118263118307%_))))
                      (if (gx#stx-pair/null? _%tl118265118314%_)
                          (let ((_%__splice119061119062%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118265118314%_
                                  '0)))
                            (let ((_%tl118268118320%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119061119062%_
                                      '1)))
                                  (_%target118266118317%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119061119062%_
                                      '0))))
                              (if (gx#stx-null? _%tl118268118320%_)
                                  (_%__match119079119080%_
                                   _%e118263118307%_
                                   _%hd118264118311%_
                                   _%tl118265118314%_
                                   _%__splice119061119062%_
                                   _%target118266118317%_
                                   _%tl118268118320%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118259118300%_)))))
                          (let () (declare (not safe)) (_%g118259118300%_)))))
                  (let () (declare (not safe)) (_%g118259118300%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx118391%_)
        (let* ((_%__stx119082119083%_ _%$stx118391%_)
               (_%g118396118417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119082119083%_))))
          (let ((_%__kont119085119086%_
                 (lambda (_%g118398118482%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119178_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp119179
                                                  (lambda (_%g118497118500%_
                                                           _%g118498118503%_)
                                                    (cons _%g118497118500%_
                                                          _%g118498118503%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119179
                                              '()
                                              _%g118398118482%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119181_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119089119090%_
                 (lambda (_%g118411118424%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g118395118435%_
                    (lambda ()
                      (let ((_%g118411118424%_ _%__stx119082119083%_))
                        (if (gx#identifier? _%g118411118424%_)
                            (_%__kont119089119090%_ _%g118411118424%_)
                            (let ()
                              (declare (not safe))
                              (_%g118396118417%_))))))
                   (_%__match119105119106%_
                    (lambda (_%e118399118442%_
                             _%hd118400118446%_
                             _%tl118401118449%_
                             _%__splice119087119088%_
                             _%target118402118452%_
                             _%tl118404118455%_)
                      (letrec ((_%loop118405118458%_
                                (lambda (_%hd118403118462%_
                                         _%arg118409118465%_)
                                  (if (gx#stx-pair? _%hd118403118462%_)
                                      (let ((_%e118406118468%_
                                             (gx#syntax-e _%hd118403118462%_)))
                                        (let ((_%lp-tl118408118475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118406118468%_)))
                                              (_%lp-hd118407118472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118406118468%_))))
                                          (_%loop118405118458%_
                                           _%lp-tl118408118475%_
                                           (cons _%lp-hd118407118472%_
                                                 _%arg118409118465%_))))
                                      (let ((_%arg118410118478%_
                                             (reverse _%arg118409118465%_)))
                                        (_%__kont119085119086%_
                                         _%arg118410118478%_))))))
                        (_%loop118405118458%_ _%target118402118452%_ '())))))
              (if (gx#stx-pair? _%__stx119082119083%_)
                  (let ((_%e118399118442%_
                         (gx#syntax-e _%__stx119082119083%_)))
                    (let ((_%tl118401118449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118399118442%_)))
                          (_%hd118400118446%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118399118442%_))))
                      (if (gx#stx-pair/null? _%tl118401118449%_)
                          (let ((_%__splice119087119088%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118401118449%_
                                  '0)))
                            (let ((_%tl118404118455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119087119088%_
                                      '1)))
                                  (_%target118402118452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119087119088%_
                                      '0))))
                              (if (gx#stx-null? _%tl118404118455%_)
                                  (_%__match119105119106%_
                                   _%e118399118442%_
                                   _%hd118400118446%_
                                   _%tl118401118449%_
                                   _%__splice119087119088%_
                                   _%target118402118452%_
                                   _%tl118404118455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118395118435%_)))))
                          (let () (declare (not safe)) (_%g118395118435%_)))))
                  (let () (declare (not safe)) (_%g118395118435%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx118552%_)
        (let* ((_%__stx119108119109%_ _%$stx118552%_)
               (_%g118557118578%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119108119109%_))))
          (let ((_%__kont119111119112%_
                 (lambda (_%g118559118643%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119183_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp119184
                                                  (lambda (_%g118658118661%_
                                                           _%g118659118664%_)
                                                    (cons _%g118658118661%_
                                                          _%g118659118664%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119184
                                              '()
                                              _%g118559118643%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119186_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119115119116%_
                 (lambda (_%g118572118585%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g118556118596%_
                    (lambda ()
                      (let ((_%g118572118585%_ _%__stx119108119109%_))
                        (if (gx#identifier? _%g118572118585%_)
                            (_%__kont119115119116%_ _%g118572118585%_)
                            (let ()
                              (declare (not safe))
                              (_%g118557118578%_))))))
                   (_%__match119131119132%_
                    (lambda (_%e118560118603%_
                             _%hd118561118607%_
                             _%tl118562118610%_
                             _%__splice119113119114%_
                             _%target118563118613%_
                             _%tl118565118616%_)
                      (letrec ((_%loop118566118619%_
                                (lambda (_%hd118564118623%_
                                         _%arg118570118626%_)
                                  (if (gx#stx-pair? _%hd118564118623%_)
                                      (let ((_%e118567118629%_
                                             (gx#syntax-e _%hd118564118623%_)))
                                        (let ((_%lp-tl118569118636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118567118629%_)))
                                              (_%lp-hd118568118633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118567118629%_))))
                                          (_%loop118566118619%_
                                           _%lp-tl118569118636%_
                                           (cons _%lp-hd118568118633%_
                                                 _%arg118570118626%_))))
                                      (let ((_%arg118571118639%_
                                             (reverse _%arg118570118626%_)))
                                        (_%__kont119111119112%_
                                         _%arg118571118639%_))))))
                        (_%loop118566118619%_ _%target118563118613%_ '())))))
              (if (gx#stx-pair? _%__stx119108119109%_)
                  (let ((_%e118560118603%_
                         (gx#syntax-e _%__stx119108119109%_)))
                    (let ((_%tl118562118610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118560118603%_)))
                          (_%hd118561118607%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118560118603%_))))
                      (if (gx#stx-pair/null? _%tl118562118610%_)
                          (let ((_%__splice119113119114%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118562118610%_
                                  '0)))
                            (let ((_%tl118565118616%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119113119114%_
                                      '1)))
                                  (_%target118563118613%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119113119114%_
                                      '0))))
                              (if (gx#stx-null? _%tl118565118616%_)
                                  (_%__match119131119132%_
                                   _%e118560118603%_
                                   _%hd118561118607%_
                                   _%tl118562118610%_
                                   _%__splice119113119114%_
                                   _%target118563118613%_
                                   _%tl118565118616%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118556118596%_)))))
                          (let () (declare (not safe)) (_%g118556118596%_)))))
                  (let () (declare (not safe)) (_%g118556118596%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx118695%_)
        (let* ((_%__stx119134119135%_ _%$stx118695%_)
               (_%g118700118721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119134119135%_))))
          (let ((_%__kont119137119138%_
                 (lambda (_%g118702118786%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119188_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g119190_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp119191
                                                  (lambda (_%g118801118804%_
                                                           _%g118802118807%_)
                                                    (cons _%g118801118804%_
                                                          _%g118802118807%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119191
                                              '()
                                              _%g118702118786%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119193_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g119190_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g119190_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119141119142%_
                 (lambda (_%g118715118728%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g118699118739%_
                    (lambda ()
                      (let ((_%g118715118728%_ _%__stx119134119135%_))
                        (if (gx#identifier? _%g118715118728%_)
                            (_%__kont119141119142%_ _%g118715118728%_)
                            (let ()
                              (declare (not safe))
                              (_%g118700118721%_))))))
                   (_%__match119157119158%_
                    (lambda (_%e118703118746%_
                             _%hd118704118750%_
                             _%tl118705118753%_
                             _%__splice119139119140%_
                             _%target118706118756%_
                             _%tl118708118759%_)
                      (letrec ((_%loop118709118762%_
                                (lambda (_%hd118707118766%_
                                         _%arg118713118769%_)
                                  (if (gx#stx-pair? _%hd118707118766%_)
                                      (let ((_%e118710118772%_
                                             (gx#syntax-e _%hd118707118766%_)))
                                        (let ((_%lp-tl118712118779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e118710118772%_)))
                                              (_%lp-hd118711118776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e118710118772%_))))
                                          (_%loop118709118762%_
                                           _%lp-tl118712118779%_
                                           (cons _%lp-hd118711118776%_
                                                 _%arg118713118769%_))))
                                      (let ((_%arg118714118782%_
                                             (reverse _%arg118713118769%_)))
                                        (_%__kont119137119138%_
                                         _%arg118714118782%_))))))
                        (_%loop118709118762%_ _%target118706118756%_ '())))))
              (if (gx#stx-pair? _%__stx119134119135%_)
                  (let ((_%e118703118746%_
                         (gx#syntax-e _%__stx119134119135%_)))
                    (let ((_%tl118705118753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e118703118746%_)))
                          (_%hd118704118750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e118703118746%_))))
                      (if (gx#stx-pair/null? _%tl118705118753%_)
                          (let ((_%__splice119139119140%_
                                 (gx#syntax-split-splice->vector
                                  _%tl118705118753%_
                                  '0)))
                            (let ((_%tl118708118759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119139119140%_
                                      '1)))
                                  (_%target118706118756%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119139119140%_
                                      '0))))
                              (if (gx#stx-null? _%tl118708118759%_)
                                  (_%__match119157119158%_
                                   _%e118703118746%_
                                   _%hd118704118750%_
                                   _%tl118705118753%_
                                   _%__splice119139119140%_
                                   _%target118706118756%_
                                   _%tl118708118759%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g118699118739%_)))))
                          (let () (declare (not safe)) (_%g118699118739%_)))))
                  (let () (declare (not safe)) (_%g118699118739%_))))))))))
