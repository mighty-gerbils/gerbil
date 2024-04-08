(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712602653)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85865%_
        (let () (for-each display _%args85865%_) (newline))))
    (define display* (lambda _%args85862%_ (for-each display _%args85862%_)))
    (define file-newer?
      (lambda (_%file185837%_ _%file285838%_)
        (if (string? _%file185837%_)
            (let ((_%file185842%_ _%file185837%_))
              (if (string? _%file285838%_)
                  (let ((_%file285852%_ _%file285838%_))
                    (__file-newer? _%file185842%_ _%file285852%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                     'contract:
                     'string?
                     'value:
                     _%file285838%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file185837%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file185785%_ _%file285786%_)
        (let* ((_%file185789%_ _%file185785%_) (_%file285797%_ _%file285786%_))
          (letrec ((_%modification-time85806%_
                    (lambda (_%file85825%_)
                      (let ((_%file85828%_ _%file85825%_))
                        (_%__modification-time85807%_ _%file85828%_))))
                   (_%__modification-time85807%_
                    (lambda (_%file85809%_)
                      (let* ((_%file85812%_ _%file85809%_)
                             (__tmp87606
                              (let ((__tmp87607
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file85812%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp87607))))
                        (declare (not safe))
                        (##time->seconds __tmp87606)))))
            (let ((__tmp87609 (_%__modification-time85807%_ _%file185789%_))
                  (__tmp87608 (_%__modification-time85807%_ _%file285797%_)))
              (declare (not safe))
              (##fl> __tmp87609 __tmp87608))))))
    (define create-directory*__%
      (lambda (_%dir85750%_ _%perms85751%_)
        (if (string? _%dir85750%_)
            (let ((_%dir85755%_ _%dir85750%_))
              (if (fixnum? _%perms85751%_)
                  (let ((_%perms85765%_ _%perms85751%_))
                    (__create-directory*__% _%dir85755%_ _%perms85765%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms85751%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir85750%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir85778%_)
        (let ((_%perms85780%_ '493))
          (create-directory*__% _%dir85778%_ _%perms85780%_))))
    (define create-directory*
      (lambda _g87611_
        (let ((_g87610_ (let () (declare (not safe)) (##length _g87611_))))
          (cond ((let () (declare (not safe)) (##fx= _g87610_ 1))
                 (apply create-directory*__0 _g87611_))
                ((let () (declare (not safe)) (##fx= _g87610_ 2))
                 (apply create-directory*__% _g87611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87611_))))))
    (define __create-directory*__%
      (lambda (_%dir85674%_ _%perms85675%_)
        (let* ((_%dir85678%_ _%dir85674%_) (_%perms85686%_ _%perms85675%_))
          (letrec ((_%create185695%_
                    (lambda (_%path85727%_)
                      (let ((_%path85730%_ _%path85727%_))
                        (_%__create185696%_ _%path85730%_))))
                   (_%__create185696%_
                    (lambda (_%path85708%_)
                      (let ((_%path85711%_ _%path85708%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path85711%_))
                            (if (eq? (file-type _%path85711%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path85711%_))
                            (if _%perms85686%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path85711%_
                                             (cons 'permissions:
                                                   (cons _%perms85686%_
                                                         '())))))
                                (create-directory _%path85711%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir85678%_))
                '#!void
                (let _%lp85698%_ ((_%start85700%_ '0))
                  (let ((_%$e85702%_
                         (let ()
                           (declare (not safe))
                           (__string-index _%dir85678%_ '#\/ _%start85700%_))))
                    (if _%$e85702%_
                        ((lambda (_%x85705%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x85705%_ '0))
                               (_%__create185696%_
                                (substring _%dir85678%_ '0 _%x85705%_))
                               '#!void)
                           (_%lp85698%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x85705%_ '1))))
                         _%$e85702%_)
                        (_%__create185696%_ _%dir85678%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir85742%_)
        (let ((_%perms85744%_ '493))
          (__create-directory*__% _%dir85742%_ _%perms85744%_))))
    (define __create-directory*
      (lambda _g87613_
        (let ((_g87612_ (let () (declare (not safe)) (##length _g87613_))))
          (cond ((let () (declare (not safe)) (##fx= _g87612_ 1))
                 (apply __create-directory*__0 _g87613_))
                ((let () (declare (not safe)) (##fx= _g87612_ 2))
                 (apply __create-directory*__% _g87613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87613_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85670%_ '#t))
    (define true? (lambda (_%obj85667%_) (eq? _%obj85667%_ '#t)))
    (define false (lambda _%ignore85664%_ '#f))
    (define void (lambda _%ignore85661%_ '#!void))
    (define void? (lambda (_%obj85658%_) (eq? _%obj85658%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj85655%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj85655%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj85652%_) (eq? _%obj85652%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj85649%_) (eq? _%obj85649%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj85646%_) (eq? _%obj85646%_ '#!optional)))
    (define immediate?
      (lambda (_%obj85641%_)
        (let* ((_%t85644%_ (let () (declare (not safe)) (##type _%obj85641%_)))
               (__tmp87614
                (let () (declare (not safe)) (##fxand _%t85644%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp87614))))
    (define nonnegative-fixnum?
      (lambda (_%obj85638%_)
        (if (fixnum? _%obj85638%_)
            (let () (declare (not safe)) (##fx>= _%obj85638%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj85632%_)
        (let ((_%$e85635%_ (pair? _%obj85632%_)))
          (if _%$e85635%_ _%$e85635%_ (null? _%obj85632%_)))))
    (define values-count
      (lambda (_%obj85629%_)
        (if (let () (declare (not safe)) (##values? _%obj85629%_))
            (let () (declare (not safe)) (##vector-length _%obj85629%_))
            '1)))
    (define values-ref
      (lambda (_%obj85614%_ _%k85615%_)
        (if (fixnum? _%k85615%_)
            (let ((_%k85619%_ _%k85615%_))
              (__values-ref _%obj85614%_ _%k85619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k85615%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj85601%_ _%k85602%_)
        (let ((_%k85605%_ _%k85602%_))
          (if (let () (declare (not safe)) (##values? _%obj85601%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85601%_ _%k85605%_))
              _%obj85601%_))))
    (define values->list
      (lambda (_%obj85598%_)
        (if (let () (declare (not safe)) (##values? _%obj85598%_))
            (let () (declare (not safe)) (##vector->list _%obj85598%_))
            (list _%obj85598%_))))
    (define foldl1
      (lambda (_%f85582%_ _%iv85583%_ _%lst85584%_)
        (if (procedure? _%f85582%_)
            (let ((_%f85588%_ _%f85582%_))
              (__foldl1 _%f85588%_ _%iv85583%_ _%lst85584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f85582%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f85530%_ _%iv85531%_ _%lst85532%_)
        (let ((_%f85535%_ _%f85530%_))
          (let _%lp85544%_ ((_%rest85546%_ _%lst85532%_)
                            (_%r85547%_ _%iv85531%_))
            (let* ((_%rest8554885556%_ _%rest85546%_)
                   (_%else8555085564%_ (lambda () _%r85547%_))
                   (_%K8555285570%_
                    (lambda (_%rest85567%_ _%x85568%_)
                      (_%lp85544%_
                       _%rest85567%_
                       (let ()
                         (declare (not safe))
                         (_%f85535%_ _%x85568%_ _%r85547%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8554885556%_))
                  (let ((_%hd8555385573%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8554885556%_)))
                        (_%tl8555485575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8554885556%_))))
                    (let* ((_%x85578%_ _%hd8555385573%_)
                           (_%rest85580%_ _%tl8555485575%_))
                      (_%K8555285570%_ _%rest85580%_ _%x85578%_)))
                  (_%else8555085564%_)))))))
    (define foldl2
      (lambda (_%f85513%_ _%iv85514%_ _%lst185515%_ _%lst285516%_)
        (if (procedure? _%f85513%_)
            (let ((_%f85520%_ _%f85513%_))
              (__foldl2 _%f85520%_ _%iv85514%_ _%lst185515%_ _%lst285516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85513%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f85426%_ _%iv85427%_ _%lst185428%_ _%lst285429%_)
        (let ((_%f85432%_ _%f85426%_))
          (let _%lp85441%_ ((_%rest185443%_ _%lst185428%_)
                            (_%rest285444%_ _%lst285429%_)
                            (_%r85445%_ _%iv85427%_))
            (let* ((_%rest18544685454%_ _%rest185443%_)
                   (_%else8544885462%_ (lambda () _%r85445%_))
                   (_%K8545085501%_
                    (lambda (_%rest185465%_ _%x185466%_)
                      (let* ((_%rest28546785475%_ _%rest285444%_)
                             (_%else8546985483%_ (lambda () _%r85445%_))
                             (_%K8547185489%_
                              (lambda (_%rest285486%_ _%x285487%_)
                                (_%lp85441%_
                                 _%rest185465%_
                                 _%rest285486%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f85432%_
                                    _%x185466%_
                                    _%x285487%_
                                    _%r85445%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28546785475%_))
                            (let ((_%hd8547285492%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28546785475%_)))
                                  (_%tl8547385494%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28546785475%_))))
                              (let* ((_%x285497%_ _%hd8547285492%_)
                                     (_%rest285499%_ _%tl8547385494%_))
                                (_%K8547185489%_ _%rest285499%_ _%x285497%_)))
                            (_%else8546985483%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18544685454%_))
                  (let ((_%hd8545185504%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18544685454%_)))
                        (_%tl8545285506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18544685454%_))))
                    (let* ((_%x185509%_ _%hd8545185504%_)
                           (_%rest185511%_ _%tl8545285506%_))
                      (_%K8545085501%_ _%rest185511%_ _%x185509%_)))
                  (_%else8544885462%_)))))))
    (define foldl
      (lambda _g87616_
        (let ((_g87615_ (let () (declare (not safe)) (##length _g87616_))))
          (cond ((let () (declare (not safe)) (##fx= _g87615_ 3))
                 (apply foldl1 _g87616_))
                ((let () (declare (not safe)) (##fx= _g87615_ 4))
                 (apply foldl2 _g87616_))
                ((let () (declare (not safe)) (##fx>= _g87615_ 4))
                 (apply foldl* _g87616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87616_))))))
    (define foldl*
      (lambda (_%f85395%_ _%iv85396%_ . _%rest85397%_)
        (if (procedure? _%f85395%_)
            (let ((_%f85401%_ _%f85395%_))
              (declare (not safe))
              (##apply __foldl* _%f85401%_ _%iv85396%_ _%rest85397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85395%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f85373%_ _%iv85374%_ . _%rest85375%_)
        (let ((_%f85378%_ _%f85373%_))
          (let _%recur85387%_ ((_%iv85389%_ _%iv85374%_)
                               (_%rest85390%_ _%rest85375%_))
            (if (__andmap1 pair? _%rest85390%_)
                (_%recur85387%_
                 (let ((__tmp87617
                        (__foldr1
                         (lambda (_%xs85392%_ _%r85393%_)
                           (cons (car _%xs85392%_) _%r85393%_))
                         (list _%iv85389%_)
                         _%rest85390%_)))
                   (declare (not safe))
                   (##apply _%f85378%_ __tmp87617))
                 (map cdr _%rest85390%_))
                _%iv85389%_)))))
    (define foldr1
      (lambda (_%f85357%_ _%iv85358%_ _%lst85359%_)
        (if (procedure? _%f85357%_)
            (let ((_%f85363%_ _%f85357%_))
              (__foldr1 _%f85363%_ _%iv85358%_ _%lst85359%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f85357%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f85306%_ _%iv85307%_ _%lst85308%_)
        (let ((_%f85311%_ _%f85306%_))
          (let _%recur85320%_ ((_%rest85322%_ _%lst85308%_))
            (let* ((_%rest8532385331%_ _%rest85322%_)
                   (_%else8532585339%_ (lambda () _%iv85307%_))
                   (_%K8532785345%_
                    (lambda (_%rest85342%_ _%x85343%_)
                      (let ((__tmp87618 (_%recur85320%_ _%rest85342%_)))
                        (declare (not safe))
                        (_%f85311%_ _%x85343%_ __tmp87618)))))
              (if (let () (declare (not safe)) (##pair? _%rest8532385331%_))
                  (let ((_%hd8532885348%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8532385331%_)))
                        (_%tl8532985350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8532385331%_))))
                    (let* ((_%x85353%_ _%hd8532885348%_)
                           (_%rest85355%_ _%tl8532985350%_))
                      (_%K8532785345%_ _%rest85355%_ _%x85353%_)))
                  (_%else8532585339%_)))))))
    (define foldr2
      (lambda (_%f85289%_ _%iv85290%_ _%lst185291%_ _%lst285292%_)
        (if (procedure? _%f85289%_)
            (let ((_%f85296%_ _%f85289%_))
              (__foldr2 _%f85296%_ _%iv85290%_ _%lst185291%_ _%lst285292%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f85289%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f85203%_ _%iv85204%_ _%lst185205%_ _%lst285206%_)
        (let ((_%f85209%_ _%f85203%_))
          (let _%recur85218%_ ((_%rest185220%_ _%lst185205%_)
                               (_%rest285221%_ _%lst285206%_))
            (let* ((_%rest18522285230%_ _%rest185220%_)
                   (_%else8522485238%_ (lambda () _%iv85204%_))
                   (_%K8522685277%_
                    (lambda (_%rest185241%_ _%x185242%_)
                      (let* ((_%rest28524385251%_ _%rest285221%_)
                             (_%else8524585259%_ (lambda () _%iv85204%_))
                             (_%K8524785265%_
                              (lambda (_%rest285262%_ _%x285263%_)
                                (let ((__tmp87619
                                       (_%recur85218%_
                                        _%rest185241%_
                                        _%rest285262%_)))
                                  (declare (not safe))
                                  (_%f85209%_
                                   _%x185242%_
                                   _%x285263%_
                                   __tmp87619)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28524385251%_))
                            (let ((_%hd8524885268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28524385251%_)))
                                  (_%tl8524985270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28524385251%_))))
                              (let* ((_%x285273%_ _%hd8524885268%_)
                                     (_%rest285275%_ _%tl8524985270%_))
                                (_%K8524785265%_ _%rest285275%_ _%x285273%_)))
                            (_%else8524585259%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18522285230%_))
                  (let ((_%hd8522785280%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18522285230%_)))
                        (_%tl8522885282%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18522285230%_))))
                    (let* ((_%x185285%_ _%hd8522785280%_)
                           (_%rest185287%_ _%tl8522885282%_))
                      (_%K8522685277%_ _%rest185287%_ _%x185285%_)))
                  (_%else8522485238%_)))))))
    (define foldr
      (lambda _g87621_
        (let ((_g87620_ (let () (declare (not safe)) (##length _g87621_))))
          (cond ((let () (declare (not safe)) (##fx= _g87620_ 3))
                 (apply foldr1 _g87621_))
                ((let () (declare (not safe)) (##fx= _g87620_ 4))
                 (apply foldr2 _g87621_))
                ((let () (declare (not safe)) (##fx>= _g87620_ 4))
                 (apply foldr* _g87621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87621_))))))
    (define foldr*
      (lambda (_%f85172%_ _%iv85173%_ . _%rest85174%_)
        (if (procedure? _%f85172%_)
            (let ((_%f85178%_ _%f85172%_))
              (declare (not safe))
              (##apply __foldr* _%f85178%_ _%iv85173%_ _%rest85174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f85172%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f85151%_ _%iv85152%_ . _%rest85153%_)
        (let ((_%f85156%_ _%f85151%_))
          (let _%recur85165%_ ((_%rest85167%_ _%rest85153%_))
            (if (__andmap1 pair? _%rest85167%_)
                (let ((__tmp87622
                       (__foldr1
                        (lambda (_%xs85169%_ _%r85170%_)
                          (cons (car _%xs85169%_) _%r85170%_))
                        (list (_%recur85165%_ (map cdr _%rest85167%_)))
                        _%rest85167%_)))
                  (declare (not safe))
                  (##apply _%f85156%_ __tmp87622))
                _%iv85152%_)))))
    (define remove-nulls!
      (lambda (_%l85038%_)
        (let* ((_%l8503985052%_ _%l85038%_)
               (_%E8504385056%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8503985052%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8504885141%_
                 (lambda (_%r85139%_) (remove-nulls! _%r85139%_)))
                (_%K8504585128%_
                 (lambda (_%r85068%_)
                   (let _%loop85070%_ ((_%l85072%_ _%l85038%_)
                                       (_%r85073%_ _%r85068%_))
                     (let* ((_%r8507485087%_ _%r85073%_)
                            (_%E8507885091%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8507485087%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8508385118%_
                              (lambda (_%rr85116%_)
                                (let ((__tmp87624 _%l85072%_)
                                      (__tmp87623 (remove-nulls! _%rr85116%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87624 __tmp87623))))
                             (_%K8508085105%_
                              (lambda (_%rr85103%_)
                                (_%loop85070%_ _%r85073%_ _%rr85103%_)))
                             (_%K8507985096%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8507485087%_))
                             (let ((_%tl8508585123%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8507485087%_)))
                                   (_%hd8508485121%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8507485087%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8508485121%_))
                                   (let ((_%rr85126%_ _%tl8508585123%_))
                                     (_%K8508385118%_ _%rr85126%_))
                                   (let ((_%rr85111%_ _%tl8508585123%_))
                                     (_%K8508085105%_ _%rr85111%_))))
                             '#!void))))
                   _%l85038%_))
                (_%K8504485061%_ (lambda () _%l85038%_)))
            (if (let () (declare (not safe)) (##pair? _%l8503985052%_))
                (let ((_%tl8505085146%_
                       (let () (declare (not safe)) (##cdr _%l8503985052%_)))
                      (_%hd8504985144%_
                       (let () (declare (not safe)) (##car _%l8503985052%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8504985144%_))
                      (let ((_%r85149%_ _%tl8505085146%_))
                        (remove-nulls! _%r85149%_))
                      (let ((_%r85134%_ _%tl8505085146%_))
                        (_%K8504585128%_ _%r85134%_))))
                (_%K8504485061%_))))))
    (define append1!
      (lambda (_%l85023%_ _%x85024%_)
        (let ((_%l285027%_ (cons _%x85024%_ '())))
          (if (pair? _%l85023%_)
              (let ((_%l85029%_ _%l85023%_))
                (let ((__tmp87625
                       (let () (declare (not safe)) (##last-pair _%l85029%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87625 _%l285027%_))
                _%l85029%_)
              _%l285027%_))))
    (define append-reverse-until
      (lambda (_%pred85007%_ _%rhead85008%_ _%tail85009%_)
        (if (procedure? _%pred85007%_)
            (let ((_%pred85013%_ _%pred85007%_))
              (__append-reverse-until
               _%pred85013%_
               _%rhead85008%_
               _%tail85009%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred85007%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred84949%_ _%rhead84950%_ _%tail84951%_)
        (let ((_%pred84954%_ _%pred84949%_))
          (let _%loop84963%_ ((_%rhead84965%_ _%rhead84950%_)
                              (_%tail84966%_ _%tail84951%_))
            (let* ((_%rhead8496884977%_ _%rhead84965%_)
                   (_%E8497184981%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8496884977%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8497585004%_ (lambda () (values '() _%tail84966%_)))
                    (_%K8497284988%_
                     (lambda (_%r84985%_ _%a84986%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred84954%_ _%a84986%_))
                           (values _%rhead84965%_ _%tail84966%_)
                           (_%loop84963%_
                            _%r84985%_
                            (cons _%a84986%_ _%tail84966%_))))))
                (let ((_%try-match8497085000%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8496884977%_))
                             (let ((_%tl8497484993%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8496884977%_)))
                                   (_%hd8497384991%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8496884977%_))))
                               (let ((_%a84996%_ _%hd8497384991%_)
                                     (_%r84998%_ _%tl8497484993%_))
                                 (_%K8497284988%_ _%r84998%_ _%a84996%_)))
                             (_%E8497184981%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8496884977%_))
                      (_%K8497585004%_)
                      (_%try-match8497085000%_)))))))))
    (define andmap1
      (lambda (_%f84934%_ _%lst84935%_)
        (if (procedure? _%f84934%_)
            (let ((_%f84939%_ _%f84934%_)) (__andmap1 _%f84939%_ _%lst84935%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f84934%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f84883%_ _%lst84884%_)
        (let ((_%f84887%_ _%f84883%_))
          (let _%lp84896%_ ((_%rest84898%_ _%lst84884%_))
            (let* ((_%rest8490084908%_ _%rest84898%_)
                   (_%else8490284916%_ (lambda () '#t))
                   (_%K8490484922%_
                    (lambda (_%rest84919%_ _%x84920%_)
                      (if (let () (declare (not safe)) (_%f84887%_ _%x84920%_))
                          (_%lp84896%_ _%rest84919%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8490084908%_))
                  (let ((_%hd8490584925%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8490084908%_)))
                        (_%tl8490684927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8490084908%_))))
                    (let* ((_%x84930%_ _%hd8490584925%_)
                           (_%rest84932%_ _%tl8490684927%_))
                      (_%K8490484922%_ _%rest84932%_ _%x84930%_)))
                  (_%else8490284916%_)))))))
    (define andmap2
      (lambda (_%f84867%_ _%lst184868%_ _%lst284869%_)
        (if (procedure? _%f84867%_)
            (let ((_%f84873%_ _%f84867%_))
              (__andmap2 _%f84873%_ _%lst184868%_ _%lst284869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f84867%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f84781%_ _%lst184782%_ _%lst284783%_)
        (let ((_%f84786%_ _%f84781%_))
          (let _%lp84795%_ ((_%rest184797%_ _%lst184782%_)
                            (_%rest284798%_ _%lst284783%_))
            (let* ((_%rest18480084808%_ _%rest184797%_)
                   (_%else8480284816%_ (lambda () '#t))
                   (_%K8480484855%_
                    (lambda (_%rest184819%_ _%x184820%_)
                      (let* ((_%rest28482184829%_ _%rest284798%_)
                             (_%else8482384837%_ (lambda () '#t))
                             (_%K8482584843%_
                              (lambda (_%rest284840%_ _%x284841%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f84786%_ _%x184820%_ _%x284841%_))
                                    (_%lp84795%_ _%rest184819%_ _%rest284840%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28482184829%_))
                            (let ((_%hd8482684846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28482184829%_)))
                                  (_%tl8482784848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28482184829%_))))
                              (let* ((_%x284851%_ _%hd8482684846%_)
                                     (_%rest284853%_ _%tl8482784848%_))
                                (_%K8482584843%_ _%rest284853%_ _%x284851%_)))
                            (_%else8482384837%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18480084808%_))
                  (let ((_%hd8480584858%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18480084808%_)))
                        (_%tl8480684860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18480084808%_))))
                    (let* ((_%x184863%_ _%hd8480584858%_)
                           (_%rest184865%_ _%tl8480684860%_))
                      (_%K8480484855%_ _%rest184865%_ _%x184863%_)))
                  (_%else8480284816%_)))))))
    (define andmap
      (lambda _g87627_
        (let ((_g87626_ (let () (declare (not safe)) (##length _g87627_))))
          (cond ((let () (declare (not safe)) (##fx= _g87626_ 2))
                 (apply andmap1 _g87627_))
                ((let () (declare (not safe)) (##fx= _g87626_ 3))
                 (apply andmap2 _g87627_))
                ((let () (declare (not safe)) (##fx>= _g87626_ 3))
                 (apply andmap* _g87627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87627_))))))
    (define andmap*
      (lambda (_%f84754%_ . _%rest84755%_)
        (if (procedure? _%f84754%_)
            (let ((_%f84759%_ _%f84754%_))
              (declare (not safe))
              (##apply __andmap* _%f84759%_ _%rest84755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f84754%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f84736%_ . _%rest84737%_)
        (let ((_%f84740%_ _%f84736%_))
          (let _%recur84749%_ ((_%rest84751%_ _%rest84737%_))
            (if (__andmap1 pair? _%rest84751%_)
                (if (let ((__tmp87628 (map car _%rest84751%_)))
                      (declare (not safe))
                      (##apply _%f84740%_ __tmp87628))
                    (_%recur84749%_ (map cdr _%rest84751%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f84721%_ _%lst84722%_)
        (if (procedure? _%f84721%_)
            (let ((_%f84726%_ _%f84721%_)) (__ormap1 _%f84726%_ _%lst84722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f84721%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f84668%_ _%lst84669%_)
        (let ((_%f84672%_ _%f84668%_))
          (let _%lp84681%_ ((_%rest84683%_ _%lst84669%_))
            (let* ((_%rest8468484692%_ _%rest84683%_)
                   (_%else8468684700%_ (lambda () '#f))
                   (_%K8468884709%_
                    (lambda (_%rest84703%_ _%x84704%_)
                      (let ((_%$e84706%_
                             (let ()
                               (declare (not safe))
                               (_%f84672%_ _%x84704%_))))
                        (if _%$e84706%_
                            _%$e84706%_
                            (_%lp84681%_ _%rest84703%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8468484692%_))
                  (let ((_%hd8468984712%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8468484692%_)))
                        (_%tl8469084714%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8468484692%_))))
                    (let* ((_%x84717%_ _%hd8468984712%_)
                           (_%rest84719%_ _%tl8469084714%_))
                      (_%K8468884709%_ _%rest84719%_ _%x84717%_)))
                  (_%else8468684700%_)))))))
    (define ormap2
      (lambda (_%f84652%_ _%lst184653%_ _%lst284654%_)
        (if (procedure? _%f84652%_)
            (let ((_%f84658%_ _%f84652%_))
              (__ormap2 _%f84658%_ _%lst184653%_ _%lst284654%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f84652%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f84564%_ _%lst184565%_ _%lst284566%_)
        (let ((_%f84569%_ _%f84564%_))
          (let _%lp84578%_ ((_%rest184580%_ _%lst184565%_)
                            (_%rest284581%_ _%lst284566%_))
            (let* ((_%rest18458284590%_ _%rest184580%_)
                   (_%else8458484598%_ (lambda () '#f))
                   (_%K8458684640%_
                    (lambda (_%rest184601%_ _%x184602%_)
                      (let* ((_%rest28460384611%_ _%rest284581%_)
                             (_%else8460584619%_ (lambda () '#f))
                             (_%K8460784628%_
                              (lambda (_%rest284622%_ _%x284623%_)
                                (let ((_%$e84625%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84569%_
                                          _%x184602%_
                                          _%x284623%_))))
                                  (if _%$e84625%_
                                      _%$e84625%_
                                      (_%lp84578%_
                                       _%rest184601%_
                                       _%rest284622%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28460384611%_))
                            (let ((_%hd8460884631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28460384611%_)))
                                  (_%tl8460984633%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28460384611%_))))
                              (let* ((_%x284636%_ _%hd8460884631%_)
                                     (_%rest284638%_ _%tl8460984633%_))
                                (_%K8460784628%_ _%rest284638%_ _%x284636%_)))
                            (_%else8460584619%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18458284590%_))
                  (let ((_%hd8458784643%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18458284590%_)))
                        (_%tl8458884645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18458284590%_))))
                    (let* ((_%x184648%_ _%hd8458784643%_)
                           (_%rest184650%_ _%tl8458884645%_))
                      (_%K8458684640%_ _%rest184650%_ _%x184648%_)))
                  (_%else8458484598%_)))))))
    (define ormap
      (lambda _g87630_
        (let ((_g87629_ (let () (declare (not safe)) (##length _g87630_))))
          (cond ((let () (declare (not safe)) (##fx= _g87629_ 2))
                 (apply ormap1 _g87630_))
                ((let () (declare (not safe)) (##fx= _g87629_ 3))
                 (apply ormap2 _g87630_))
                ((let () (declare (not safe)) (##fx>= _g87629_ 3))
                 (apply ormap* _g87630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87630_))))))
    (define ormap*
      (lambda (_%f84537%_ . _%rest84538%_)
        (if (procedure? _%f84537%_)
            (let ((_%f84542%_ _%f84537%_))
              (declare (not safe))
              (##apply __ormap* _%f84542%_ _%rest84538%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84537%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f84517%_ . _%rest84518%_)
        (let ((_%f84521%_ _%f84517%_))
          (let _%recur84530%_ ((_%rest84532%_ _%rest84518%_))
            (if (__andmap1 pair? _%rest84532%_)
                (let ((_%$e84534%_
                       (let ((__tmp87631 (map car _%rest84532%_)))
                         (declare (not safe))
                         (##apply _%f84521%_ __tmp87631))))
                  (if _%$e84534%_
                      _%$e84534%_
                      (_%recur84530%_ (map cdr _%rest84532%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84502%_ _%lst84503%_)
        (if (procedure? _%f84502%_)
            (let ((_%f84507%_ _%f84502%_))
              (__filter-map1 _%f84507%_ _%lst84503%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84502%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f84445%_ _%lst84446%_)
        (let ((_%f84449%_ _%f84445%_))
          (let _%recur84458%_ ((_%rest84460%_ _%lst84446%_))
            (let* ((_%rest8446284470%_ _%rest84460%_)
                   (_%else8446484478%_ (lambda () '()))
                   (_%K8446684490%_
                    (lambda (_%rest84481%_ _%x84482%_)
                      (let ((_%$e84484%_
                             (let ()
                               (declare (not safe))
                               (_%f84449%_ _%x84482%_))))
                        (if _%$e84484%_
                            ((lambda (_%r84487%_)
                               (cons _%r84487%_
                                     (_%recur84458%_ _%rest84481%_)))
                             _%$e84484%_)
                            (_%recur84458%_ _%rest84481%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8446284470%_))
                  (let ((_%hd8446784493%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8446284470%_)))
                        (_%tl8446884495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8446284470%_))))
                    (let* ((_%x84498%_ _%hd8446784493%_)
                           (_%rest84500%_ _%tl8446884495%_))
                      (_%K8446684490%_ _%rest84500%_ _%x84498%_)))
                  (_%else8446484478%_)))))))
    (define filter-map2
      (lambda (_%f84429%_ _%lst184430%_ _%lst284431%_)
        (if (procedure? _%f84429%_)
            (let ((_%f84435%_ _%f84429%_))
              (__filter-map2 _%f84435%_ _%lst184430%_ _%lst284431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84429%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f84337%_ _%lst184338%_ _%lst284339%_)
        (let ((_%f84342%_ _%f84337%_))
          (let _%recur84351%_ ((_%rest184353%_ _%lst184338%_)
                               (_%rest284354%_ _%lst284339%_))
            (let* ((_%rest18435684364%_ _%rest184353%_)
                   (_%else8435884372%_ (lambda () '()))
                   (_%K8436084417%_
                    (lambda (_%rest184375%_ _%x184376%_)
                      (let* ((_%rest28437784385%_ _%rest284354%_)
                             (_%else8437984393%_ (lambda () '()))
                             (_%K8438184405%_
                              (lambda (_%rest284396%_ _%x284397%_)
                                (let ((_%$e84399%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84342%_
                                          _%x184376%_
                                          _%x284397%_))))
                                  (if _%$e84399%_
                                      ((lambda (_%r84402%_)
                                         (cons _%r84402%_
                                               (_%recur84351%_
                                                _%rest184375%_
                                                _%rest284396%_)))
                                       _%$e84399%_)
                                      (_%recur84351%_
                                       _%rest184375%_
                                       _%rest284396%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28437784385%_))
                            (let ((_%hd8438284408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28437784385%_)))
                                  (_%tl8438384410%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28437784385%_))))
                              (let* ((_%x284413%_ _%hd8438284408%_)
                                     (_%rest284415%_ _%tl8438384410%_))
                                (_%K8438184405%_ _%rest284415%_ _%x284413%_)))
                            (_%else8437984393%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18435684364%_))
                  (let ((_%hd8436184420%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18435684364%_)))
                        (_%tl8436284422%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18435684364%_))))
                    (let* ((_%x184425%_ _%hd8436184420%_)
                           (_%rest184427%_ _%tl8436284422%_))
                      (_%K8436084417%_ _%rest184427%_ _%x184425%_)))
                  (_%else8435884372%_)))))))
    (define filter-map
      (lambda _g87633_
        (let ((_g87632_ (let () (declare (not safe)) (##length _g87633_))))
          (cond ((let () (declare (not safe)) (##fx= _g87632_ 2))
                 (apply filter-map1 _g87633_))
                ((let () (declare (not safe)) (##fx= _g87632_ 3))
                 (apply filter-map2 _g87633_))
                ((let () (declare (not safe)) (##fx>= _g87632_ 3))
                 (apply filter-map* _g87633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87633_))))))
    (define filter-map*
      (lambda (_%f84310%_ . _%rest84311%_)
        (if (procedure? _%f84310%_)
            (let ((_%f84315%_ _%f84310%_))
              (declare (not safe))
              (##apply __filter-map* _%f84315%_ _%rest84311%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f84310%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f84286%_ . _%rest84287%_)
        (let ((_%f84290%_ _%f84286%_))
          (let _%recur84299%_ ((_%rest84301%_ _%rest84287%_))
            (if (__andmap1 pair? _%rest84301%_)
                (let ((_%$e84304%_
                       (let ((__tmp87634 (map car _%rest84301%_)))
                         (declare (not safe))
                         (##apply _%f84290%_ __tmp87634))))
                  (if _%$e84304%_
                      ((lambda (_%r84307%_)
                         (cons _%r84307%_
                               (_%recur84299%_ (map cdr _%rest84301%_))))
                       _%$e84304%_)
                      (_%recur84299%_ (map cdr _%rest84301%_))))
                '())))))
    (define agetq__%
      (lambda (_%key84262%_ _%lst84264%_ _%default84266%_)
        (let ((_%$e84269%_
               (if (pair? _%lst84264%_) (assq _%key84262%_ _%lst84264%_) '#f)))
          (if _%$e84269%_
              (cdr _%$e84269%_)
              (if (procedure? _%default84266%_)
                  (_%default84266%_ _%key84262%_)
                  _%default84266%_)))))
    (define agetq__0
      (lambda (_%key84277%_ _%lst84278%_)
        (let ((_%default84280%_ '#f))
          (agetq__% _%key84277%_ _%lst84278%_ _%default84280%_))))
    (define agetq
      (lambda _g87636_
        (let ((_g87635_ (let () (declare (not safe)) (##length _g87636_))))
          (cond ((let () (declare (not safe)) (##fx= _g87635_ 2))
                 (apply agetq__0 _g87636_))
                ((let () (declare (not safe)) (##fx= _g87635_ 3))
                 (apply agetq__% _g87636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87636_))))))
    (define agetv__%
      (lambda (_%key84237%_ _%lst84239%_ _%default84241%_)
        (let ((_%$e84244%_
               (if (pair? _%lst84239%_) (assv _%key84237%_ _%lst84239%_) '#f)))
          (if _%$e84244%_
              (cdr _%$e84244%_)
              (if (procedure? _%default84241%_)
                  (_%default84241%_ _%key84237%_)
                  _%default84241%_)))))
    (define agetv__0
      (lambda (_%key84252%_ _%lst84253%_)
        (let ((_%default84255%_ '#f))
          (agetv__% _%key84252%_ _%lst84253%_ _%default84255%_))))
    (define agetv
      (lambda _g87638_
        (let ((_g87637_ (let () (declare (not safe)) (##length _g87638_))))
          (cond ((let () (declare (not safe)) (##fx= _g87637_ 2))
                 (apply agetv__0 _g87638_))
                ((let () (declare (not safe)) (##fx= _g87637_ 3))
                 (apply agetv__% _g87638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87638_))))))
    (define aget__%
      (lambda (_%key84212%_ _%lst84214%_ _%default84216%_)
        (let ((_%$e84219%_
               (if (pair? _%lst84214%_)
                   (assoc _%key84212%_ _%lst84214%_)
                   '#f)))
          (if _%$e84219%_
              (cdr _%$e84219%_)
              (if (procedure? _%default84216%_)
                  (_%default84216%_ _%key84212%_)
                  _%default84216%_)))))
    (define aget__0
      (lambda (_%key84227%_ _%lst84228%_)
        (let ((_%default84230%_ '#f))
          (aget__% _%key84227%_ _%lst84228%_ _%default84230%_))))
    (define aget
      (lambda _g87640_
        (let ((_g87639_ (let () (declare (not safe)) (##length _g87640_))))
          (cond ((let () (declare (not safe)) (##fx= _g87639_ 2))
                 (apply aget__0 _g87640_))
                ((let () (declare (not safe)) (##fx= _g87639_ 3))
                 (apply aget__% _g87640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87640_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84141%_ _%lst84143%_ _%default84145%_)
        (let _%lp84148%_ ((_%rest84151%_ _%lst84143%_))
          (let* ((_%rest8415384163%_ _%rest84151%_)
                 (_%else8415584171%_
                  (lambda ()
                    (if (procedure? _%default84145%_)
                        (_%default84145%_ _%key84141%_)
                        _%default84145%_)))
                 (_%K8415784180%_
                  (lambda (_%rest84174%_ _%v84175%_ _%k84177%_)
                    (if (eq? _%k84177%_ _%key84141%_)
                        _%v84175%_
                        (_%lp84148%_ _%rest84174%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8415384163%_))
                (let ((_%hd8415884183%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8415384163%_)))
                      (_%tl8415984185%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8415384163%_))))
                  (let ((_%k84188%_ _%hd8415884183%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8415984185%_))
                        (let ((_%hd8416084190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8415984185%_)))
                              (_%tl8416184192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8415984185%_))))
                          (let* ((_%v84195%_ _%hd8416084190%_)
                                 (_%rest84197%_ _%tl8416184192%_))
                            (_%K8415784180%_
                             _%rest84197%_
                             _%v84195%_
                             _%k84188%_)))
                        (_%else8415584171%_))))
                (_%else8415584171%_))))))
    (define pgetq__0
      (lambda (_%key84202%_ _%lst84203%_)
        (let ((_%default84205%_ '#f))
          (pgetq__% _%key84202%_ _%lst84203%_ _%default84205%_))))
    (define pgetq
      (lambda _g87642_
        (let ((_g87641_ (let () (declare (not safe)) (##length _g87642_))))
          (cond ((let () (declare (not safe)) (##fx= _g87641_ 2))
                 (apply pgetq__0 _g87642_))
                ((let () (declare (not safe)) (##fx= _g87641_ 3))
                 (apply pgetq__% _g87642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87642_))))))
    (define pgetv__%
      (lambda (_%key84070%_ _%lst84072%_ _%default84074%_)
        (let _%lp84077%_ ((_%rest84080%_ _%lst84072%_))
          (let* ((_%rest8408284092%_ _%rest84080%_)
                 (_%else8408484100%_
                  (lambda ()
                    (if (procedure? _%default84074%_)
                        (_%default84074%_ _%key84070%_)
                        _%default84074%_)))
                 (_%K8408684109%_
                  (lambda (_%rest84103%_ _%v84104%_ _%k84106%_)
                    (if (eqv? _%k84106%_ _%key84070%_)
                        _%v84104%_
                        (_%lp84077%_ _%rest84103%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8408284092%_))
                (let ((_%hd8408784112%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8408284092%_)))
                      (_%tl8408884114%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8408284092%_))))
                  (let ((_%k84117%_ _%hd8408784112%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8408884114%_))
                        (let ((_%hd8408984119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8408884114%_)))
                              (_%tl8409084121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8408884114%_))))
                          (let* ((_%v84124%_ _%hd8408984119%_)
                                 (_%rest84126%_ _%tl8409084121%_))
                            (_%K8408684109%_
                             _%rest84126%_
                             _%v84124%_
                             _%k84117%_)))
                        (_%else8408484100%_))))
                (_%else8408484100%_))))))
    (define pgetv__0
      (lambda (_%key84131%_ _%lst84132%_)
        (let ((_%default84134%_ '#f))
          (pgetv__% _%key84131%_ _%lst84132%_ _%default84134%_))))
    (define pgetv
      (lambda _g87644_
        (let ((_g87643_ (let () (declare (not safe)) (##length _g87644_))))
          (cond ((let () (declare (not safe)) (##fx= _g87643_ 2))
                 (apply pgetv__0 _g87644_))
                ((let () (declare (not safe)) (##fx= _g87643_ 3))
                 (apply pgetv__% _g87644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87644_))))))
    (define pget__%
      (lambda (_%key83999%_ _%lst84001%_ _%default84003%_)
        (let _%lp84006%_ ((_%rest84009%_ _%lst84001%_))
          (let* ((_%rest8401184021%_ _%rest84009%_)
                 (_%else8401384029%_
                  (lambda ()
                    (if (procedure? _%default84003%_)
                        (_%default84003%_ _%key83999%_)
                        _%default84003%_)))
                 (_%K8401584038%_
                  (lambda (_%rest84032%_ _%v84033%_ _%k84035%_)
                    (if (equal? _%k84035%_ _%key83999%_)
                        _%v84033%_
                        (_%lp84006%_ _%rest84032%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8401184021%_))
                (let ((_%hd8401684041%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8401184021%_)))
                      (_%tl8401784043%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8401184021%_))))
                  (let ((_%k84046%_ _%hd8401684041%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8401784043%_))
                        (let ((_%hd8401884048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8401784043%_)))
                              (_%tl8401984050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8401784043%_))))
                          (let* ((_%v84053%_ _%hd8401884048%_)
                                 (_%rest84055%_ _%tl8401984050%_))
                            (_%K8401584038%_
                             _%rest84055%_
                             _%v84053%_
                             _%k84046%_)))
                        (_%else8401384029%_))))
                (_%else8401384029%_))))))
    (define pget__0
      (lambda (_%key84060%_ _%lst84061%_)
        (let ((_%default84063%_ '#f))
          (pget__% _%key84060%_ _%lst84061%_ _%default84063%_))))
    (define pget
      (lambda _g87646_
        (let ((_g87645_ (let () (declare (not safe)) (##length _g87646_))))
          (cond ((let () (declare (not safe)) (##fx= _g87645_ 2))
                 (apply pget__0 _g87646_))
                ((let () (declare (not safe)) (##fx= _g87645_ 3))
                 (apply pget__% _g87646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87646_))))))
    (define find
      (lambda (_%pred83983%_ _%lst83984%_)
        (if (procedure? _%pred83983%_)
            (let ((_%pred83988%_ _%pred83983%_))
              (__find _%pred83988%_ _%lst83984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred83983%_)
              '#!void))))
    (define __find
      (lambda (_%pred83966%_ _%lst83967%_)
        (let* ((_%pred83970%_ _%pred83966%_)
               (_%$e83979%_ (__memf _%pred83970%_ _%lst83967%_)))
          (if _%$e83979%_
              (let () (declare (not safe)) (##car _%$e83979%_))
              '#f))))
    (define memf
      (lambda (_%proc83951%_ _%lst83952%_)
        (if (procedure? _%proc83951%_)
            (let ((_%proc83956%_ _%proc83951%_))
              (__memf _%proc83956%_ _%lst83952%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc83951%_)
              '#!void))))
    (define __memf
      (lambda (_%proc83901%_ _%lst83902%_)
        (let ((_%proc83905%_ _%proc83901%_))
          (let _%lp83914%_ ((_%rest83916%_ _%lst83902%_))
            (let* ((_%rest8391783925%_ _%rest83916%_)
                   (_%else8391983933%_ (lambda () '#f))
                   (_%K8392183939%_
                    (lambda (_%tl83936%_ _%hd83937%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc83905%_ _%hd83937%_))
                          _%rest83916%_
                          (_%lp83914%_ _%tl83936%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8391783925%_))
                  (let ((_%hd8392283942%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8391783925%_)))
                        (_%tl8392383944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8391783925%_))))
                    (let* ((_%hd83947%_ _%hd8392283942%_)
                           (_%tl83949%_ _%tl8392383944%_))
                      (_%K8392183939%_ _%tl83949%_ _%hd83947%_)))
                  (_%else8391983933%_)))))))
    (define remove1
      (lambda (_%el83854%_ _%lst83856%_)
        (let _%lp83859%_ ((_%rest83862%_ _%lst83856%_) (_%r83864%_ '()))
          (let* ((_%rest8386683874%_ _%rest83862%_)
                 (_%else8386883882%_ (lambda () _%lst83856%_))
                 (_%K8387083889%_
                  (lambda (_%rest83885%_ _%hd83886%_)
                    (if (equal? _%el83854%_ _%hd83886%_)
                        (__foldl1 cons _%rest83885%_ _%r83864%_)
                        (_%lp83859%_
                         _%rest83885%_
                         (cons _%hd83886%_ _%r83864%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8386683874%_))
                (let ((_%hd8387183892%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8386683874%_)))
                      (_%tl8387283894%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8386683874%_))))
                  (let* ((_%hd83897%_ _%hd8387183892%_)
                         (_%rest83899%_ _%tl8387283894%_))
                    (_%K8387083889%_ _%rest83899%_ _%hd83897%_)))
                (_%else8386883882%_))))))
    (define remv1
      (lambda (_%el83807%_ _%lst83809%_)
        (let _%lp83812%_ ((_%rest83815%_ _%lst83809%_) (_%r83817%_ '()))
          (let* ((_%rest8381983827%_ _%rest83815%_)
                 (_%else8382183835%_ (lambda () _%lst83809%_))
                 (_%K8382383842%_
                  (lambda (_%rest83838%_ _%hd83839%_)
                    (if (eqv? _%el83807%_ _%hd83839%_)
                        (__foldl1 cons _%rest83838%_ _%r83817%_)
                        (_%lp83812%_
                         _%rest83838%_
                         (cons _%hd83839%_ _%r83817%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8381983827%_))
                (let ((_%hd8382483845%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8381983827%_)))
                      (_%tl8382583847%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8381983827%_))))
                  (let* ((_%hd83850%_ _%hd8382483845%_)
                         (_%rest83852%_ _%tl8382583847%_))
                    (_%K8382383842%_ _%rest83852%_ _%hd83850%_)))
                (_%else8382183835%_))))))
    (define remq1
      (lambda (_%el83760%_ _%lst83762%_)
        (let _%lp83765%_ ((_%rest83768%_ _%lst83762%_) (_%r83770%_ '()))
          (let* ((_%rest8377283780%_ _%rest83768%_)
                 (_%else8377483788%_ (lambda () _%lst83762%_))
                 (_%K8377683795%_
                  (lambda (_%rest83791%_ _%hd83792%_)
                    (if (eq? _%el83760%_ _%hd83792%_)
                        (__foldl1 cons _%rest83791%_ _%r83770%_)
                        (_%lp83765%_
                         _%rest83791%_
                         (cons _%hd83792%_ _%r83770%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8377283780%_))
                (let ((_%hd8377783798%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8377283780%_)))
                      (_%tl8377883800%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8377283780%_))))
                  (let* ((_%hd83803%_ _%hd8377783798%_)
                         (_%rest83805%_ _%tl8377883800%_))
                    (_%K8377683795%_ _%rest83805%_ _%hd83803%_)))
                (_%else8377483788%_))))))
    (define remf
      (lambda (_%proc83745%_ _%lst83746%_)
        (if (procedure? _%proc83745%_)
            (let ((_%proc83750%_ _%proc83745%_))
              (__remf _%proc83750%_ _%lst83746%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc83745%_)
              '#!void))))
    (define __remf
      (lambda (_%proc83694%_ _%lst83695%_)
        (let ((_%proc83698%_ _%proc83694%_))
          (let _%lp83707%_ ((_%rest83709%_ _%lst83695%_) (_%r83710%_ '()))
            (let* ((_%rest8371183719%_ _%rest83709%_)
                   (_%else8371383727%_ (lambda () _%lst83695%_))
                   (_%K8371583733%_
                    (lambda (_%rest83730%_ _%hd83731%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc83698%_ _%hd83731%_))
                          (__foldl1 cons _%rest83730%_ _%r83710%_)
                          (_%lp83707%_
                           _%rest83730%_
                           (cons _%hd83731%_ _%r83710%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8371183719%_))
                  (let ((_%hd8371683736%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8371183719%_)))
                        (_%tl8371783738%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8371183719%_))))
                    (let* ((_%hd83741%_ _%hd8371683736%_)
                           (_%rest83743%_ _%tl8371783738%_))
                      (_%K8371583733%_ _%rest83743%_ _%hd83741%_)))
                  (_%else8371383727%_)))))))
    (define 1+
      (lambda (_%x83680%_)
        (if (number? _%x83680%_)
            (let ((_%x83684%_ _%x83680%_)) (__1+ _%x83684%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x83680%_)
              '#!void))))
    (define __1+
      (lambda (_%x83668%_) (let ((_%x83671%_ _%x83668%_)) (+ _%x83671%_ '1))))
    (define 1-
      (lambda (_%x83654%_)
        (if (number? _%x83654%_)
            (let ((_%x83658%_ _%x83654%_)) (__1- _%x83658%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x83654%_)
              '#!void))))
    (define __1-
      (lambda (_%x83642%_) (let ((_%x83645%_ _%x83642%_)) (- _%x83645%_ '1))))
    (define fx1+
      (lambda (_%x83628%_)
        (if (fixnum? _%x83628%_)
            (let ((_%x83632%_ _%x83628%_)) (__fx1+ _%x83632%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x83628%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x83616%_)
        (let ((_%x83619%_ _%x83616%_))
          (declare (not safe))
          (##fx+ _%x83619%_ '1))))
    (define fx1-
      (lambda (_%x83602%_)
        (if (fixnum? _%x83602%_)
            (let ((_%x83606%_ _%x83602%_)) (__fx1- _%x83606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x83602%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x83590%_)
        (let ((_%x83593%_ _%x83590%_))
          (declare (not safe))
          (##fx- _%x83593%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83587%_)
        (if (fixnum? _%x83587%_)
            (let () (declare (not safe)) (##fx>= _%x83587%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x83584%_)
        (if (fixnum? _%x83584%_)
            (let () (declare (not safe)) (##fx> _%x83584%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x83581%_)
        (let () (declare (not safe)) (##fx= _%x83581%_ '0))))
    (define fx<0?
      (lambda (_%x83578%_)
        (if (fixnum? _%x83578%_)
            (let () (declare (not safe)) (##fx< _%x83578%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x83575%_)
        (if (fixnum? _%x83575%_)
            (let () (declare (not safe)) (##fx<= _%x83575%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x83572%_)
        (if (symbol? _%x83572%_) (not (uninterned-symbol? _%x83572%_)) '#f)))
    (define display-as-string
      (lambda (_%x83557%_ _%port83558%_)
        (if (output-port? _%port83558%_)
            (let ((_%port83562%_ _%port83558%_))
              (__display-as-string _%x83557%_ _%port83562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port83558%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x83514%_ _%port83515%_)
        (let ((_%port83518%_ _%port83515%_))
          (if (or (string? _%x83514%_)
                  (symbol? _%x83514%_)
                  (keyword? _%x83514%_)
                  (number? _%x83514%_)
                  (char? _%x83514%_))
              (display _%x83514%_ _%port83518%_)
              (if (pair? _%x83514%_)
                  (let ()
                    (__display-as-string (car _%x83514%_) _%port83518%_)
                    (__display-as-string (cdr _%x83514%_) _%port83518%_))
                  (if (vector? _%x83514%_)
                      (vector-for-each
                       (lambda (_%g8354183543%_)
                         (__display-as-string _%g8354183543%_ _%port83518%_))
                       _%x83514%_)
                      (if (or (null? _%x83514%_)
                              (eq? _%x83514%_ '#!void)
                              (eof-object? _%x83514%_)
                              (boolean? _%x83514%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x83514%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x83497%_)
        (if (string? _%x83497%_)
            _%x83497%_
            (if (symbol? _%x83497%_)
                (symbol->string _%x83497%_)
                (if (keyword? _%x83497%_)
                    (keyword->string _%x83497%_)
                    (if (number? _%x83497%_)
                        (number->string _%x83497%_)
                        (call-with-output-string
                         '()
                         (lambda (_%g8350383505%_)
                           (__display-as-string
                            _%x83497%_
                            _%g8350383505%_)))))))))
    (define as-string__1
      (lambda _%args83508%_
        (call-with-output-string
         '()
         (lambda (_%g8350983511%_)
           (__display-as-string _%args83508%_ _%g8350983511%_)))))
    (define as-string
      (lambda _g87648_
        (let ((_g87647_ (let () (declare (not safe)) (##length _g87648_))))
          (cond ((let () (declare (not safe)) (##fx= _g87647_ 1))
                 (apply as-string__0 _g87648_))
                (#t (apply as-string__1 _g87648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87648_))))))
    (define make-symbol__0
      (lambda (_%x83493%_)
        (if (interned-symbol? _%x83493%_)
            _%x83493%_
            (string->symbol (as-string__0 _%x83493%_)))))
    (define make-symbol__1
      (lambda _%args83495%_ (string->symbol (apply as-string _%args83495%_))))
    (define make-symbol
      (lambda _g87650_
        (let ((_g87649_ (let () (declare (not safe)) (##length _g87650_))))
          (cond ((let () (declare (not safe)) (##fx= _g87649_ 1))
                 (apply make-symbol__0 _g87650_))
                (#t (apply make-symbol__1 _g87650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87650_))))))
    (define make-keyword__0
      (lambda (_%x83489%_)
        (if (interned-keyword? _%x83489%_)
            _%x83489%_
            (string->keyword (as-string__0 _%x83489%_)))))
    (define make-keyword__1
      (lambda _%args83491%_ (string->keyword (apply as-string _%args83491%_))))
    (define make-keyword
      (lambda _g87652_
        (let ((_g87651_ (let () (declare (not safe)) (##length _g87652_))))
          (cond ((let () (declare (not safe)) (##fx= _g87651_ 1))
                 (apply make-keyword__0 _g87652_))
                (#t (apply make-keyword__1 _g87652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87652_))))))
    (define interned-keyword?
      (lambda (_%x83486%_)
        (if (keyword? _%x83486%_) (not (uninterned-keyword? _%x83486%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym83472%_)
        (if (symbol? _%sym83472%_)
            (let ((_%sym83476%_ _%sym83472%_))
              (__symbol->keyword _%sym83476%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83472%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym83460%_)
        (let ((_%sym83463%_ _%sym83460%_))
          (if (uninterned-symbol? _%sym83463%_)
              (let ((__tmp87653
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83463%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp87653))
              (let ((__tmp87654
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83463%_))))
                (declare (not safe))
                (##string->keyword __tmp87654))))))
    (define keyword->symbol
      (lambda (_%sym83446%_)
        (if (keyword? _%sym83446%_)
            (let ((_%sym83450%_ _%sym83446%_))
              (__keyword->symbol _%sym83450%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83446%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym83434%_)
        (let ((_%sym83437%_ _%sym83434%_))
          (if (uninterned-keyword? _%sym83437%_)
              (let ((__tmp87655
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83437%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp87655))
              (let ((__tmp87656
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83437%_))))
                (declare (not safe))
                (##string->symbol __tmp87656))))))
    (define bytes->string__%
      (lambda (_%bstr83399%_ _%enc83400%_)
        (if (u8vector? _%bstr83399%_)
            (let ((_%bstr83404%_ _%bstr83399%_))
              (if (symbol? _%enc83400%_)
                  (let ((_%enc83414%_ _%enc83400%_))
                    (__bytes->string__% _%bstr83404%_ _%enc83414%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc83400%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83399%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr83427%_)
        (let ((_%enc83429%_ 'UTF-8))
          (bytes->string__% _%bstr83427%_ _%enc83429%_))))
    (define bytes->string
      (lambda _g87658_
        (let ((_g87657_ (let () (declare (not safe)) (##length _g87658_))))
          (cond ((let () (declare (not safe)) (##fx= _g87657_ 1))
                 (apply bytes->string__0 _g87658_))
                ((let () (declare (not safe)) (##fx= _g87657_ 2))
                 (apply bytes->string__% _g87658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87658_))))))
    (define __bytes->string__%
      (lambda (_%bstr83358%_ _%enc83359%_)
        (let* ((_%bstr83362%_ _%bstr83358%_) (_%enc83370%_ _%enc83359%_))
          (if (eq? _%enc83370%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr83362%_))
              (let* ((_%in83379%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc83370%_
                                   (cons 'init: (cons _%bstr83362%_ '()))))))
                     (_%len83381%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr83362%_)))
                     (_%out83383%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len83381%_)))
                     (_%n83385%_
                      (read-substring
                       _%out83383%_
                       '0
                       _%len83381%_
                       _%in83379%_)))
                (string-shrink! _%out83383%_ _%n83385%_)
                _%out83383%_)))))
    (define __bytes->string__0
      (lambda (_%bstr83391%_)
        (let ((_%enc83393%_ 'UTF-8))
          (__bytes->string__% _%bstr83391%_ _%enc83393%_))))
    (define __bytes->string
      (lambda _g87660_
        (let ((_g87659_ (let () (declare (not safe)) (##length _g87660_))))
          (cond ((let () (declare (not safe)) (##fx= _g87659_ 1))
                 (apply __bytes->string__0 _g87660_))
                ((let () (declare (not safe)) (##fx= _g87659_ 2))
                 (apply __bytes->string__% _g87660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87660_))))))
    (define string->bytes__%
      (lambda (_%str83322%_ _%enc83323%_)
        (if (string? _%str83322%_)
            (let ((_%str83327%_ _%str83322%_))
              (if (symbol? _%enc83323%_)
                  (let ((_%enc83337%_ _%enc83323%_))
                    (__string->bytes__% _%str83327%_ _%enc83337%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc83323%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str83322%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str83350%_)
        (let ((_%enc83352%_ 'UTF-8))
          (string->bytes__% _%str83350%_ _%enc83352%_))))
    (define string->bytes
      (lambda _g87662_
        (let ((_g87661_ (let () (declare (not safe)) (##length _g87662_))))
          (cond ((let () (declare (not safe)) (##fx= _g87661_ 1))
                 (apply string->bytes__0 _g87662_))
                ((let () (declare (not safe)) (##fx= _g87661_ 2))
                 (apply string->bytes__% _g87662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87662_))))))
    (define __string->bytes__%
      (lambda (_%str83290%_ _%enc83291%_)
        (let* ((_%str83294%_ _%str83290%_) (_%enc83302%_ _%enc83291%_))
          (if (eq? _%enc83302%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str83294%_))
              (let ((__tmp87663
                     (let ()
                       (declare (not safe))
                       (##string-length _%str83294%_))))
                (declare (not safe))
                (__substring->bytes
                 _%str83294%_
                 '0
                 __tmp87663
                 _%enc83302%_))))))
    (define __string->bytes__0
      (lambda (_%str83314%_)
        (let ((_%enc83316%_ 'UTF-8))
          (__string->bytes__% _%str83314%_ _%enc83316%_))))
    (define __string->bytes
      (lambda _g87665_
        (let ((_g87664_ (let () (declare (not safe)) (##length _g87665_))))
          (cond ((let () (declare (not safe)) (##fx= _g87664_ 1))
                 (apply __string->bytes__0 _g87665_))
                ((let () (declare (not safe)) (##fx= _g87664_ 2))
                 (apply __string->bytes__% _g87665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87665_))))))
    (define substring->bytes__%
      (lambda (_%str83238%_ _%start83239%_ _%end83240%_ _%enc83241%_)
        (if (string? _%str83238%_)
            (let ((_%str83245%_ _%str83238%_))
              (if (nonnegative-fixnum? _%start83239%_)
                  (let ((_%start83255%_ _%start83239%_))
                    (if (nonnegative-fixnum? _%end83240%_)
                        (let ((_%end83265%_ _%end83240%_))
                          (__substring->bytes__%
                           _%str83245%_
                           _%start83255%_
                           _%end83265%_
                           _%enc83241%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end83240%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start83239%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str83238%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str83278%_ _%start83279%_ _%end83280%_)
        (let ((_%enc83282%_ 'UTF-8))
          (substring->bytes__%
           _%str83278%_
           _%start83279%_
           _%end83280%_
           _%enc83282%_))))
    (define substring->bytes
      (lambda _g87667_
        (let ((_g87666_ (let () (declare (not safe)) (##length _g87667_))))
          (cond ((let () (declare (not safe)) (##fx= _g87666_ 3))
                 (apply substring->bytes__0 _g87667_))
                ((let () (declare (not safe)) (##fx= _g87666_ 4))
                 (apply substring->bytes__% _g87667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87667_))))))
    (define __substring->bytes__%
      (lambda (_%str83190%_ _%start83191%_ _%end83192%_ _%enc83193%_)
        (let* ((_%str83196%_ _%str83190%_)
               (_%start83204%_ _%start83191%_)
               (_%end83212%_ _%end83192%_))
          (if (eq? _%enc83193%_ 'UTF-8)
              (string->utf8 _%str83196%_ _%start83204%_ _%end83212%_)
              (let ((_%out83221%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc83193%_ '())))))
                (write-substring
                 _%str83196%_
                 _%start83204%_
                 _%end83212%_
                 _%out83221%_)
                (get-output-u8vector _%out83221%_))))))
    (define __substring->bytes__0
      (lambda (_%str83226%_ _%start83227%_ _%end83228%_)
        (let ((_%enc83230%_ 'UTF-8))
          (__substring->bytes__%
           _%str83226%_
           _%start83227%_
           _%end83228%_
           _%enc83230%_))))
    (define __substring->bytes
      (lambda _g87669_
        (let ((_g87668_ (let () (declare (not safe)) (##length _g87669_))))
          (cond ((let () (declare (not safe)) (##fx= _g87668_ 3))
                 (apply __substring->bytes__0 _g87669_))
                ((let () (declare (not safe)) (##fx= _g87668_ 4))
                 (apply __substring->bytes__% _g87669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87669_))))))
    (define string-empty?
      (lambda (_%str83175%_)
        (if (string? _%str83175%_)
            (let ((_%str83179%_ _%str83175%_)) (__string-empty? _%str83179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str83175%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str83163%_)
        (let* ((_%str83166%_ _%str83163%_)
               (__tmp87670
                (let () (declare (not safe)) (##string-length _%str83166%_))))
          (declare (not safe))
          (##fxzero? __tmp87670))))
    (define string-index__%
      (lambda (_%str83115%_ _%char83116%_ _%start83117%_)
        (if (string? _%str83115%_)
            (let ((_%str83121%_ _%str83115%_))
              (if (char? _%char83116%_)
                  (let ((_%char83131%_ _%char83116%_))
                    (if (nonnegative-fixnum? _%start83117%_)
                        (let ((_%start83141%_ _%start83117%_))
                          (__string-index__%
                           _%str83121%_
                           _%char83131%_
                           _%start83141%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start83117%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                     'contract:
                     'char?
                     'value:
                     _%char83116%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str83115%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str83154%_ _%char83155%_)
        (let ((_%start83157%_ '0))
          (string-index__% _%str83154%_ _%char83155%_ _%start83157%_))))
    (define string-index
      (lambda _g87672_
        (let ((_g87671_ (let () (declare (not safe)) (##length _g87672_))))
          (cond ((let () (declare (not safe)) (##fx= _g87671_ 2))
                 (apply string-index__0 _g87672_))
                ((let () (declare (not safe)) (##fx= _g87671_ 3))
                 (apply string-index__% _g87672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87672_))))))
    (define __string-index__%
      (lambda (_%str83054%_ _%char83055%_ _%start83056%_)
        (let* ((_%str83059%_ _%str83054%_)
               (_%char83067%_ _%char83055%_)
               (_%start83075%_ _%start83056%_)
               (_%len83084%_
                (let () (declare (not safe)) (##string-length _%str83059%_))))
          (let _%lp83086%_ ((_%k83088%_ _%start83075%_))
            (let ((_%k83090%_ _%k83088%_))
              (if (let () (declare (not safe)) (##fx< _%k83090%_ _%len83084%_))
                  (if (eq? _%char83067%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str83059%_ _%k83090%_)))
                      _%k83090%_
                      (_%lp83086%_
                       (let () (declare (not safe)) (##fx+ _%k83090%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str83105%_ _%char83106%_)
        (let ((_%start83108%_ '0))
          (__string-index__% _%str83105%_ _%char83106%_ _%start83108%_))))
    (define __string-index
      (lambda _g87674_
        (let ((_g87673_ (let () (declare (not safe)) (##length _g87674_))))
          (cond ((let () (declare (not safe)) (##fx= _g87673_ 2))
                 (apply __string-index__0 _g87674_))
                ((let () (declare (not safe)) (##fx= _g87673_ 3))
                 (apply __string-index__% _g87674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87674_))))))
    (define string-rindex__%
      (lambda (_%str83015%_ _%char83016%_ _%start83017%_)
        (if (string? _%str83015%_)
            (let ((_%str83021%_ _%str83015%_))
              (if (char? _%char83016%_)
                  (let ((_%char83031%_ _%char83016%_))
                    (__string-rindex__%
                     _%str83021%_
                     _%char83031%_
                     _%start83017%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                     'contract:
                     'char?
                     'value:
                     _%char83016%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str83015%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str83044%_ _%char83045%_)
        (let ((_%start83047%_ '#f))
          (string-rindex__% _%str83044%_ _%char83045%_ _%start83047%_))))
    (define string-rindex
      (lambda _g87676_
        (let ((_g87675_ (let () (declare (not safe)) (##length _g87676_))))
          (cond ((let () (declare (not safe)) (##fx= _g87675_ 2))
                 (apply string-rindex__0 _g87676_))
                ((let () (declare (not safe)) (##fx= _g87675_ 3))
                 (apply string-rindex__% _g87676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87676_))))))
    (define __string-rindex__%
      (lambda (_%str82957%_ _%char82958%_ _%start82959%_)
        (let* ((_%str82962%_ _%str82957%_)
               (_%char82970%_ _%char82958%_)
               (_%len82979%_
                (let () (declare (not safe)) (##string-length _%str82962%_)))
               (_%start82981%_
                (if (fixnum? _%start82959%_)
                    _%start82959%_
                    (let () (declare (not safe)) (##fx- _%len82979%_ '1)))))
          (let _%lp82984%_ ((_%k82986%_ _%start82981%_))
            (let ((_%k82988%_ _%k82986%_))
              (if (let () (declare (not safe)) (##fx>= _%k82988%_ '0))
                  (if (eq? _%char82970%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str82962%_ _%k82988%_)))
                      _%k82988%_
                      (_%lp82984%_
                       (let () (declare (not safe)) (##fx- _%k82988%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str83005%_ _%char83006%_)
        (let ((_%start83008%_ '#f))
          (__string-rindex__% _%str83005%_ _%char83006%_ _%start83008%_))))
    (define __string-rindex
      (lambda _g87678_
        (let ((_g87677_ (let () (declare (not safe)) (##length _g87678_))))
          (cond ((let () (declare (not safe)) (##fx= _g87677_ 2))
                 (apply __string-rindex__0 _g87678_))
                ((let () (declare (not safe)) (##fx= _g87677_ 3))
                 (apply __string-rindex__% _g87678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87678_))))))
    (define string-split
      (lambda (_%str82931%_ _%char82932%_)
        (if (string? _%str82931%_)
            (let ((_%str82936%_ _%str82931%_))
              (if (char? _%char82932%_)
                  (let ((_%char82946%_ _%char82932%_))
                    (__string-split _%str82936%_ _%char82946%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                     'contract:
                     'char?
                     'value:
                     _%char82932%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str82931%_)
              '#!void))))
    (define __string-split
      (lambda (_%str82872%_ _%char82873%_)
        (let* ((_%str82876%_ _%str82872%_)
               (_%char82884%_ _%char82873%_)
               (_%len82893%_
                (let () (declare (not safe)) (##string-length _%str82876%_))))
          (let _%lp82895%_ ((_%start82897%_ '0) (_%r82898%_ '()))
            (let* ((_%start82901%_ _%start82897%_)
                   (_%$e82914%_
                    (let ()
                      (declare (not safe))
                      (__string-index
                       _%str82876%_
                       _%char82884%_
                       _%start82901%_))))
              (if _%$e82914%_
                  ((lambda (_%end82917%_)
                     (let ((_%end82919%_ _%end82917%_))
                       (_%lp82895%_
                        (let () (declare (not safe)) (##fx+ _%end82919%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str82876%_
                                 _%start82901%_
                                 _%end82919%_))
                              _%r82898%_))))
                   _%$e82914%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start82901%_ _%len82893%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str82876%_
                                _%start82901%_
                                _%len82893%_)))
                       _%r82898%_)
                      (reverse! _%r82898%_))))))))
    (define string-join
      (lambda (_%strs82722%_ _%join82723%_)
        (letrec ((_%join-length82726%_
                  (lambda (_%strs82810%_ _%jlen82811%_)
                    (let _%lp82813%_ ((_%rest82815%_ _%strs82810%_)
                                      (_%len82816%_ '0))
                      (let* ((_%len82818%_ _%len82816%_)
                             (_%rest8282682834%_ _%rest82815%_)
                             (_%else8282882842%_ (lambda () '0))
                             (_%K8283082860%_
                              (lambda (_%rest82845%_ _%hd82846%_)
                                (if (string? _%hd82846%_)
                                    (let ((_%hd82848%_ _%hd82846%_))
                                      (if (pair? _%rest82845%_)
                                          (_%lp82813%_
                                           _%rest82845%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd82848%_))
                                                _%jlen82811%_
                                                _%len82818%_))
                                          (let ((__tmp87679
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd82848%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp87679 _%len82818%_))))
                                    (error '"expected string" _%hd82846%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8282682834%_))
                            (let ((_%hd8283182863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8282682834%_)))
                                  (_%tl8283282865%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8282682834%_))))
                              (let* ((_%hd82868%_ _%hd8283182863%_)
                                     (_%rest82870%_ _%tl8283282865%_))
                                (_%K8283082860%_ _%rest82870%_ _%hd82868%_)))
                            (_%else8282882842%_)))))))
          (let* ((_%join82731%_
                  (if (char? _%join82723%_)
                      (let () (declare (not safe)) (##string _%join82723%_))
                      (if (string? _%join82723%_)
                          _%join82723%_
                          (error '"expected string or char" _%join82723%_))))
                 (_%jlen82733%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join82731%_)))
                 (_%olen82735%_
                  (_%join-length82726%_ _%strs82722%_ _%jlen82733%_))
                 (_%ostr82737%_
                  (let () (declare (not safe)) (##make-string _%olen82735%_))))
            (let _%lp82740%_ ((_%rest82742%_ _%strs82722%_) (_%k82743%_ '0))
              (let* ((_%k82746%_ _%k82743%_)
                     (_%rest8276282770%_ _%rest82742%_)
                     (_%else8276482778%_ (lambda () '""))
                     (_%K8276682798%_
                      (lambda (_%rest82781%_ _%hd82782%_)
                        (let* ((_%hd82784%_ _%hd82782%_)
                               (_%hdlen82796%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd82784%_))))
                          (if (pair? _%rest82781%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd82784%_
                                   '0
                                   _%hdlen82796%_
                                   _%ostr82737%_
                                   _%k82746%_))
                                (let ((__tmp87680
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k82746%_ _%hdlen82796%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join82731%_
                                   '0
                                   _%jlen82733%_
                                   _%ostr82737%_
                                   __tmp87680))
                                (_%lp82740%_
                                 _%rest82781%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k82746%_
                                          _%hdlen82796%_
                                          _%jlen82733%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd82784%_
                                   '0
                                   _%hdlen82796%_
                                   _%ostr82737%_
                                   _%k82746%_))
                                _%ostr82737%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8276282770%_))
                    (let ((_%hd8276782801%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8276282770%_)))
                          (_%tl8276882803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8276282770%_))))
                      (let* ((_%hd82806%_ _%hd8276782801%_)
                             (_%rest82808%_ _%tl8276882803%_))
                        (_%K8276682798%_ _%rest82808%_ _%hd82806%_)))
                    (_%else8276482778%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes82648%_ _%port82649%_ _%start82650%_ _%end82651%_)
        (if (u8vector? _%bytes82648%_)
            (let ((_%bytes82655%_ _%bytes82648%_))
              (if (input-port? _%port82649%_)
                  (let ((_%port82665%_ _%port82649%_))
                    (if ((lambda (_%o82674%_)
                           (and (fixnum? _%o82674%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o82674%_ '0))
                                (let ((__tmp87681
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes82655%_))))
                                  (declare (not safe))
                                  (##fx< _%o82674%_ __tmp87681))))
                         _%start82650%_)
                        (let ((_%start82678%_ _%start82650%_))
                          (if ((lambda (_%o82687%_)
                                 (and (fixnum? _%o82687%_)
                                      (fx<= _%start82678%_
                                            _%o82687%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes82655%_)))))
                               _%end82651%_)
                              (let ((_%end82691%_ _%end82651%_))
                                (__read-u8vector__%
                                 _%bytes82655%_
                                 _%port82665%_
                                 _%start82678%_
                                 _%end82691%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end82651%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start82650%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port82649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes82648%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes82704%_ _%port82705%_)
        (let* ((_%start82707%_ '0)
               (_%end82709%_ (u8vector-length _%bytes82704%_)))
          (read-u8vector__%
           _%bytes82704%_
           _%port82705%_
           _%start82707%_
           _%end82709%_))))
    (define read-u8vector__1
      (lambda (_%bytes82711%_ _%port82712%_ _%start82713%_)
        (let ((_%end82715%_ (u8vector-length _%bytes82711%_)))
          (read-u8vector__%
           _%bytes82711%_
           _%port82712%_
           _%start82713%_
           _%end82715%_))))
    (define read-u8vector
      (lambda _g87683_
        (let ((_g87682_ (let () (declare (not safe)) (##length _g87683_))))
          (cond ((let () (declare (not safe)) (##fx= _g87682_ 2))
                 (apply read-u8vector__0 _g87683_))
                ((let () (declare (not safe)) (##fx= _g87682_ 3))
                 (apply read-u8vector__1 _g87683_))
                ((let () (declare (not safe)) (##fx= _g87682_ 4))
                 (apply read-u8vector__% _g87683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87683_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82587%_ _%port82588%_ _%start82589%_ _%end82590%_)
        (let* ((_%bytes82593%_ _%bytes82587%_)
               (_%port82601%_ _%port82588%_)
               (_%start82609%_ _%start82589%_)
               (_%end82617%_ _%end82590%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes82593%_
           _%start82609%_
           _%end82617%_
           _%port82601%_))))
    (define __read-u8vector__0
      (lambda (_%bytes82629%_ _%port82630%_)
        (let* ((_%start82632%_ '0)
               (_%end82634%_ (u8vector-length _%bytes82629%_)))
          (__read-u8vector__%
           _%bytes82629%_
           _%port82630%_
           _%start82632%_
           _%end82634%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82636%_ _%port82637%_ _%start82638%_)
        (let ((_%end82640%_ (u8vector-length _%bytes82636%_)))
          (__read-u8vector__%
           _%bytes82636%_
           _%port82637%_
           _%start82638%_
           _%end82640%_))))
    (define __read-u8vector
      (lambda _g87685_
        (let ((_g87684_ (let () (declare (not safe)) (##length _g87685_))))
          (cond ((let () (declare (not safe)) (##fx= _g87684_ 2))
                 (apply __read-u8vector__0 _g87685_))
                ((let () (declare (not safe)) (##fx= _g87684_ 3))
                 (apply __read-u8vector__1 _g87685_))
                ((let () (declare (not safe)) (##fx= _g87684_ 4))
                 (apply __read-u8vector__% _g87685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87685_))))))
    (define write-u8vector__%
      (lambda (_%bytes82512%_ _%port82513%_ _%start82514%_ _%end82515%_)
        (if (u8vector? _%bytes82512%_)
            (let ((_%bytes82519%_ _%bytes82512%_))
              (if (output-port? _%port82513%_)
                  (let ((_%port82529%_ _%port82513%_))
                    (if ((lambda (_%o82538%_)
                           (and (fixnum? _%o82538%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o82538%_ '0))
                                (let ((__tmp87686
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes82519%_))))
                                  (declare (not safe))
                                  (##fx< _%o82538%_ __tmp87686))))
                         _%start82514%_)
                        (let ((_%start82542%_ _%start82514%_))
                          (if ((lambda (_%o82551%_)
                                 (and (fixnum? _%o82551%_)
                                      (fx<= _%start82542%_
                                            _%o82551%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes82519%_)))))
                               _%end82515%_)
                              (let ((_%end82555%_ _%end82515%_))
                                (__write-u8vector__%
                                 _%bytes82519%_
                                 _%port82529%_
                                 _%start82542%_
                                 _%end82555%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end82515%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start82514%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port82513%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82512%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes82568%_ _%port82569%_)
        (let* ((_%start82571%_ '0)
               (_%end82573%_ (u8vector-length _%bytes82568%_)))
          (write-u8vector__%
           _%bytes82568%_
           _%port82569%_
           _%start82571%_
           _%end82573%_))))
    (define write-u8vector__1
      (lambda (_%bytes82575%_ _%port82576%_ _%start82577%_)
        (let ((_%end82579%_ (u8vector-length _%bytes82575%_)))
          (write-u8vector__%
           _%bytes82575%_
           _%port82576%_
           _%start82577%_
           _%end82579%_))))
    (define write-u8vector
      (lambda _g87688_
        (let ((_g87687_ (let () (declare (not safe)) (##length _g87688_))))
          (cond ((let () (declare (not safe)) (##fx= _g87687_ 2))
                 (apply write-u8vector__0 _g87688_))
                ((let () (declare (not safe)) (##fx= _g87687_ 3))
                 (apply write-u8vector__1 _g87688_))
                ((let () (declare (not safe)) (##fx= _g87687_ 4))
                 (apply write-u8vector__% _g87688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87688_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82451%_ _%port82452%_ _%start82453%_ _%end82454%_)
        (let* ((_%bytes82457%_ _%bytes82451%_)
               (_%port82465%_ _%port82452%_)
               (_%start82473%_ _%start82453%_)
               (_%end82481%_ _%end82454%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes82457%_
           _%start82473%_
           _%end82481%_
           _%port82465%_))))
    (define __write-u8vector__0
      (lambda (_%bytes82493%_ _%port82494%_)
        (let* ((_%start82496%_ '0)
               (_%end82498%_ (u8vector-length _%bytes82493%_)))
          (__write-u8vector__%
           _%bytes82493%_
           _%port82494%_
           _%start82496%_
           _%end82498%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82500%_ _%port82501%_ _%start82502%_)
        (let ((_%end82504%_ (u8vector-length _%bytes82500%_)))
          (__write-u8vector__%
           _%bytes82500%_
           _%port82501%_
           _%start82502%_
           _%end82504%_))))
    (define __write-u8vector
      (lambda _g87690_
        (let ((_g87689_ (let () (declare (not safe)) (##length _g87690_))))
          (cond ((let () (declare (not safe)) (##fx= _g87689_ 2))
                 (apply __write-u8vector__0 _g87690_))
                ((let () (declare (not safe)) (##fx= _g87689_ 3))
                 (apply __write-u8vector__1 _g87690_))
                ((let () (declare (not safe)) (##fx= _g87689_ 4))
                 (apply __write-u8vector__% _g87690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87690_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82419%_
               _%dbg-exprs82420%_
               _%dbg-thunks82421%_
               _%expr82422%_
               _%thunk82423%_)
        (letrec ((_%o82425%_ (current-output-port))
                 (_%e82426%_ (current-error-port))
                 (_%p82427%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82428%_
                  (lambda ()
                    (force-output _%o82425%_)
                    (force-output _%e82426%_)))
                 (_%d82429%_
                  (lambda (_%x82436%_) (display _%x82436%_ _%e82426%_)))
                 (_%w82430%_
                  (lambda (_%x82438%_) (_%p82427%_ _%x82438%_ _%e82426%_)))
                 (_%n82431%_ (lambda () (newline _%e82426%_)))
                 (_%v82432%_
                  (lambda (_%l82441%_)
                    (for-each
                     (lambda (_%x82443%_)
                       (_%d82429%_ '" ")
                       (_%w82430%_ _%x82443%_))
                     _%l82441%_)
                    (_%n82431%_)))
                 (_%x82433%_
                  (lambda (_%expr82445%_ _%thunk82446%_)
                    (_%f82428%_)
                    (_%d82429%_ '"  ")
                    (_%w82430%_ _%expr82445%_)
                    (_%d82429%_ '" =>")
                    (call-with-values
                     _%thunk82446%_
                     (lambda _%x82448%_
                       (_%v82432%_ _%x82448%_)
                       (_%f82428%_)
                       (apply values _%x82448%_))))))
          (if _%tag82419%_
              (begin
                (if (eq? _%tag82419%_ '#!void)
                    '#!void
                    (begin
                      (_%f82428%_)
                      (_%d82429%_ _%tag82419%_)
                      (_%n82431%_)))
                (for-each _%x82433%_ _%dbg-exprs82420%_ _%dbg-thunks82421%_)
                (if _%thunk82423%_
                    (_%x82433%_ _%expr82422%_ _%thunk82423%_)
                    '#!void))
              (if _%thunk82423%_ (_%thunk82423%_) '#!void)))))))
