(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712121896)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85608%_
        (let () (for-each display _%args85608%_) (newline))))
    (define display*
      (lambda _%args85605%_ (let () (for-each display _%args85605%_))))
    (define file-newer?
      (lambda (_%file185580%_ _%file285581%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file185580%_))
              (let ()
                (let ((_%file185585%_ _%file185580%_))
                  (if (let () (declare (not safe)) (string? _%file285581%_))
                      (let ()
                        (let ((_%file285595%_ _%file285581%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__file-newer? _%file185585%_ _%file285595%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file285581%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file185580%_)))))
    (define __file-newer?
      (lambda (_%file185528%_ _%file285529%_)
        (let ()
          (let ((_%file185532%_ _%file185528%_))
            (let ((_%file285540%_ _%file285529%_))
              (let ()
                (letrec ((_%modification-time85549%_
                          (lambda (_%file85568%_)
                            (let ()
                              (let ((_%file85571%_ _%file85568%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__modification-time85550%_
                                     _%file85571%_)))))))
                         (_%__modification-time85550%_
                          (lambda (_%file85552%_)
                            (let ()
                              (let ((_%file85555%_ _%file85552%_))
                                (let ()
                                  (let ((__tmp87349
                                         (let ((__tmp87350
                                                (let ()
                                                  (declare (not safe))
                                                  (##file-info
                                                   _%file85555%_
                                                   '#t))))
                                           (declare (not safe))
                                           (##file-info-last-modification-time
                                            __tmp87350))))
                                    (declare (not safe))
                                    (##time->seconds __tmp87349))))))))
                  (let ((__tmp87352
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85550%_ _%file185532%_)))
                        (__tmp87351
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85550%_ _%file285540%_))))
                    (declare (not safe))
                    (##fl> __tmp87352 __tmp87351)))))))))
    (define create-directory*__%
      (lambda (_%dir85493%_ _%perms85494%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir85493%_))
              (let ()
                (let ((_%dir85498%_ _%dir85493%_))
                  (if (let () (declare (not safe)) (fixnum? _%perms85494%_))
                      (let ()
                        (let ((_%perms85508%_ _%perms85494%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__create-directory*__%
                               _%dir85498%_
                               _%perms85508%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms85494%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir85493%_)))))
    (define create-directory*__0
      (lambda (_%dir85521%_)
        (let ((_%perms85523%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir85521%_ _%perms85523%_))))
    (define create-directory*
      (lambda _g87354_
        (let ((_g87353_ (let () (declare (not safe)) (##length _g87354_))))
          (cond ((let () (declare (not safe)) (##fx= _g87353_ 1))
                 (apply (lambda (_%dir85521%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir85521%_)))
                        _g87354_))
                ((let () (declare (not safe)) (##fx= _g87353_ 2))
                 (apply (lambda (_%dir85525%_ _%perms85526%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir85525%_
                             _%perms85526%_)))
                        _g87354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87354_))))))
    (define __create-directory*__%
      (lambda (_%dir85417%_ _%perms85418%_)
        (let ()
          (let ((_%dir85421%_ _%dir85417%_))
            (let ((_%perms85429%_ _%perms85418%_))
              (let ()
                (letrec ((_%create185438%_
                          (lambda (_%path85470%_)
                            (let ()
                              (let ((_%path85473%_ _%path85470%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__create185439%_ _%path85473%_)))))))
                         (_%__create185439%_
                          (lambda (_%path85451%_)
                            (let ()
                              (let ((_%path85454%_ _%path85451%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (##file-exists? _%path85454%_))
                                      (let ()
                                        (if (eq? (file-type _%path85454%_)
                                                 'directory)
                                            '#!void
                                            (error '"Path component is not a directory"
                                                   _%path85454%_)))
                                      (if _%perms85429%_
                                          (let ()
                                            (create-directory
                                             (cons 'path:
                                                   (cons _%path85454%_
                                                         (cons 'permissions:
                                                               (cons _%perms85429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (create-directory
                                             _%path85454%_))))))))))
                  (if (let ()
                        (declare (not safe))
                        (##file-exists? _%dir85421%_))
                      '#!void
                      (let _%lp85441%_ ((_%start85443%_ '0))
                        (let ((_%$e85445%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%dir85421%_
                                  '#\/
                                  _%start85443%_))))
                          (if _%$e85445%_
                              ((lambda (_%x85448%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##fx> _%x85448%_ '0))
                                     (let ((__tmp87355
                                            (substring
                                             _%dir85421%_
                                             '0
                                             _%x85448%_)))
                                       (declare (not safe))
                                       (_%__create185439%_ __tmp87355))
                                     '#!void)
                                 (let ((__tmp87356
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%x85448%_ '1))))
                                   (declare (not safe))
                                   (_%lp85441%_ __tmp87356)))
                               _%$e85445%_)
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (_%__create185439%_ _%dir85421%_)))))))
                  '#!void)))))))
    (define __create-directory*__0
      (lambda (_%dir85485%_)
        (let ((_%perms85487%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir85485%_ _%perms85487%_))))
    (define __create-directory*
      (lambda _g87358_
        (let ((_g87357_ (let () (declare (not safe)) (##length _g87358_))))
          (cond ((let () (declare (not safe)) (##fx= _g87357_ 1))
                 (apply (lambda (_%dir85485%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir85485%_)))
                        _g87358_))
                ((let () (declare (not safe)) (##fx= _g87357_ 2))
                 (apply (lambda (_%dir85489%_ _%perms85490%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir85489%_
                             _%perms85490%_)))
                        _g87358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87358_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85413%_ (let () '#t)))
    (define true? (lambda (_%obj85410%_) (let () (eq? _%obj85410%_ '#t))))
    (define false (lambda _%ignore85407%_ (let () '#f)))
    (define void (lambda _%ignore85404%_ (let () '#!void)))
    (define void? (lambda (_%obj85401%_) (let () (eq? _%obj85401%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85398%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85398%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85395%_) (let () (eq? _%obj85395%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85392%_) (let () (eq? _%obj85392%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85389%_) (let () (eq? _%obj85389%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85384%_)
        (let ()
          (let* ((_%t85387%_
                  (let () (declare (not safe)) (##type _%obj85384%_)))
                 (__tmp87359
                  (let () (declare (not safe)) (##fxand _%t85387%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87359)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85381%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85381%_))
              (let () (declare (not safe)) (##fx>= _%obj85381%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85375%_)
        (let ()
          (let ((_%$e85378%_
                 (let () (declare (not safe)) (pair? _%obj85375%_))))
            (if _%$e85378%_
                _%$e85378%_
                (let () (declare (not safe)) (null? _%obj85375%_)))))))
    (define values-count
      (lambda (_%obj85372%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85372%_))
              (let () (declare (not safe)) (##vector-length _%obj85372%_))
              '1))))
    (define values-ref
      (lambda (_%obj85357%_ _%k85358%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85358%_))
              (let ()
                (let ((_%k85362%_ _%k85358%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__values-ref _%obj85357%_ _%k85362%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k85358%_)))))
    (define __values-ref
      (lambda (_%obj85344%_ _%k85345%_)
        (let ()
          (let ((_%k85348%_ _%k85345%_))
            (let ()
              (if (let () (declare (not safe)) (##values? _%obj85344%_))
                  (let ()
                    (declare (not safe))
                    (##vector-ref _%obj85344%_ _%k85348%_))
                  _%obj85344%_))))))
    (define values->list
      (lambda (_%obj85341%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85341%_))
              (let () (declare (not safe)) (##vector->list _%obj85341%_))
              (list _%obj85341%_)))))
    (define foldl1
      (lambda (_%f85325%_ _%iv85326%_ _%lst85327%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85325%_))
              (let ()
                (let ((_%f85331%_ _%f85325%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl1 _%f85331%_ _%iv85326%_ _%lst85327%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f85325%_)))))
    (define __foldl1
      (lambda (_%f85273%_ _%iv85274%_ _%lst85275%_)
        (let ()
          (let ((_%f85278%_ _%f85273%_))
            (let ()
              (let _%lp85287%_ ((_%rest85289%_ _%lst85275%_)
                                (_%r85290%_ _%iv85274%_))
                (let* ((_%rest8529185299%_ _%rest85289%_)
                       (_%else8529385307%_ (lambda () _%r85290%_))
                       (_%K8529585313%_
                        (lambda (_%rest85310%_ _%x85311%_)
                          (let ((__tmp87360
                                 (let ()
                                   (declare (not safe))
                                   (_%f85278%_ _%x85311%_ _%r85290%_))))
                            (declare (not safe))
                            (_%lp85287%_ _%rest85310%_ __tmp87360)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8529185299%_))
                      (let ((_%hd8529685316%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8529185299%_)))
                            (_%tl8529785318%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8529185299%_))))
                        (let* ((_%x85321%_ _%hd8529685316%_)
                               (_%rest85323%_ _%tl8529785318%_))
                          (declare (not safe))
                          (_%K8529585313%_ _%rest85323%_ _%x85321%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8529385307%_))))))))))
    (define foldl2
      (lambda (_%f85256%_ _%iv85257%_ _%lst185258%_ _%lst285259%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85256%_))
              (let ()
                (let ((_%f85263%_ _%f85256%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl2
                       _%f85263%_
                       _%iv85257%_
                       _%lst185258%_
                       _%lst285259%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85256%_)))))
    (define __foldl2
      (lambda (_%f85169%_ _%iv85170%_ _%lst185171%_ _%lst285172%_)
        (let ()
          (let ((_%f85175%_ _%f85169%_))
            (let ()
              (let _%lp85184%_ ((_%rest185186%_ _%lst185171%_)
                                (_%rest285187%_ _%lst285172%_)
                                (_%r85188%_ _%iv85170%_))
                (let* ((_%rest18518985197%_ _%rest185186%_)
                       (_%else8519185205%_ (lambda () _%r85188%_))
                       (_%K8519385244%_
                        (lambda (_%rest185208%_ _%x185209%_)
                          (let* ((_%rest28521085218%_ _%rest285187%_)
                                 (_%else8521285226%_ (lambda () _%r85188%_))
                                 (_%K8521485232%_
                                  (lambda (_%rest285229%_ _%x285230%_)
                                    (let ((__tmp87361
                                           (let ()
                                             (declare (not safe))
                                             (_%f85175%_
                                              _%x185209%_
                                              _%x285230%_
                                              _%r85188%_))))
                                      (declare (not safe))
                                      (_%lp85184%_
                                       _%rest185208%_
                                       _%rest285229%_
                                       __tmp87361)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28521085218%_))
                                (let ((_%hd8521585235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28521085218%_)))
                                      (_%tl8521685237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28521085218%_))))
                                  (let* ((_%x285240%_ _%hd8521585235%_)
                                         (_%rest285242%_ _%tl8521685237%_))
                                    (declare (not safe))
                                    (_%K8521485232%_
                                     _%rest285242%_
                                     _%x285240%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8521285226%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18518985197%_))
                      (let ((_%hd8519485247%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18518985197%_)))
                            (_%tl8519585249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18518985197%_))))
                        (let* ((_%x185252%_ _%hd8519485247%_)
                               (_%rest185254%_ _%tl8519585249%_))
                          (declare (not safe))
                          (_%K8519385244%_ _%rest185254%_ _%x185252%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8519185205%_))))))))))
    (define foldl
      (lambda _g87363_
        (let ((_g87362_ (let () (declare (not safe)) (##length _g87363_))))
          (cond ((let () (declare (not safe)) (##fx= _g87362_ 3))
                 (apply (lambda (_%f85154%_ _%iv85155%_ _%lst85156%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85154%_ _%iv85155%_ _%lst85156%_)))
                        _g87363_))
                ((let () (declare (not safe)) (##fx= _g87362_ 4))
                 (apply (lambda (_%f85158%_
                                 _%iv85159%_
                                 _%lst185160%_
                                 _%lst285161%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85158%_
                                    _%iv85159%_
                                    _%lst185160%_
                                    _%lst285161%_)))
                        _g87363_))
                ((let () (declare (not safe)) (##fx>= _g87362_ 4))
                 (apply foldl* _g87363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87363_))))))
    (define foldl*
      (lambda (_%f85138%_ _%iv85139%_ . _%rest85140%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85138%_))
              (let ()
                (let ((_%f85144%_ _%f85138%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldl*
                               _%f85144%_
                               _%iv85139%_
                               _%rest85140%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85138%_)))))
    (define __foldl*
      (lambda (_%f85116%_ _%iv85117%_ . _%rest85118%_)
        (let ()
          (let ((_%f85121%_ _%f85116%_))
            (let ()
              (let _%recur85130%_ ((_%iv85132%_ _%iv85117%_)
                                   (_%rest85133%_ _%rest85118%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest85133%_))
                    (let ((__tmp87365
                           (let ((__tmp87366
                                  (let ((__tmp87368
                                         (lambda (_%xs85135%_ _%r85136%_)
                                           (cons (car _%xs85135%_)
                                                 _%r85136%_)))
                                        (__tmp87367 (list _%iv85132%_)))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp87368
                                     __tmp87367
                                     _%rest85133%_))))
                             (declare (not safe))
                             (##apply _%f85121%_ __tmp87366)))
                          (__tmp87364 (map cdr _%rest85133%_)))
                      (declare (not safe))
                      (_%recur85130%_ __tmp87365 __tmp87364))
                    _%iv85132%_)))))))
    (define foldr1
      (lambda (_%f85100%_ _%iv85101%_ _%lst85102%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85100%_))
              (let ()
                (let ((_%f85106%_ _%f85100%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr1 _%f85106%_ _%iv85101%_ _%lst85102%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f85100%_)))))
    (define __foldr1
      (lambda (_%f85049%_ _%iv85050%_ _%lst85051%_)
        (let ()
          (let ((_%f85054%_ _%f85049%_))
            (let ()
              (let _%recur85063%_ ((_%rest85065%_ _%lst85051%_))
                (let* ((_%rest8506685074%_ _%rest85065%_)
                       (_%else8506885082%_ (lambda () _%iv85050%_))
                       (_%K8507085088%_
                        (lambda (_%rest85085%_ _%x85086%_)
                          (let ((__tmp87369
                                 (let ()
                                   (declare (not safe))
                                   (_%recur85063%_ _%rest85085%_))))
                            (declare (not safe))
                            (_%f85054%_ _%x85086%_ __tmp87369)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8506685074%_))
                      (let ((_%hd8507185091%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8506685074%_)))
                            (_%tl8507285093%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8506685074%_))))
                        (let* ((_%x85096%_ _%hd8507185091%_)
                               (_%rest85098%_ _%tl8507285093%_))
                          (declare (not safe))
                          (_%K8507085088%_ _%rest85098%_ _%x85096%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8506885082%_))))))))))
    (define foldr2
      (lambda (_%f85032%_ _%iv85033%_ _%lst185034%_ _%lst285035%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85032%_))
              (let ()
                (let ((_%f85039%_ _%f85032%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr2
                       _%f85039%_
                       _%iv85033%_
                       _%lst185034%_
                       _%lst285035%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f85032%_)))))
    (define __foldr2
      (lambda (_%f84946%_ _%iv84947%_ _%lst184948%_ _%lst284949%_)
        (let ()
          (let ((_%f84952%_ _%f84946%_))
            (let ()
              (let _%recur84961%_ ((_%rest184963%_ _%lst184948%_)
                                   (_%rest284964%_ _%lst284949%_))
                (let* ((_%rest18496584973%_ _%rest184963%_)
                       (_%else8496784981%_ (lambda () _%iv84947%_))
                       (_%K8496985020%_
                        (lambda (_%rest184984%_ _%x184985%_)
                          (let* ((_%rest28498684994%_ _%rest284964%_)
                                 (_%else8498885002%_ (lambda () _%iv84947%_))
                                 (_%K8499085008%_
                                  (lambda (_%rest285005%_ _%x285006%_)
                                    (let ((__tmp87370
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84961%_
                                              _%rest184984%_
                                              _%rest285005%_))))
                                      (declare (not safe))
                                      (_%f84952%_
                                       _%x184985%_
                                       _%x285006%_
                                       __tmp87370)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28498684994%_))
                                (let ((_%hd8499185011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28498684994%_)))
                                      (_%tl8499285013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28498684994%_))))
                                  (let* ((_%x285016%_ _%hd8499185011%_)
                                         (_%rest285018%_ _%tl8499285013%_))
                                    (declare (not safe))
                                    (_%K8499085008%_
                                     _%rest285018%_
                                     _%x285016%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8498885002%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18496584973%_))
                      (let ((_%hd8497085023%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18496584973%_)))
                            (_%tl8497185025%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18496584973%_))))
                        (let* ((_%x185028%_ _%hd8497085023%_)
                               (_%rest185030%_ _%tl8497185025%_))
                          (declare (not safe))
                          (_%K8496985020%_ _%rest185030%_ _%x185028%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8496784981%_))))))))))
    (define foldr
      (lambda _g87372_
        (let ((_g87371_ (let () (declare (not safe)) (##length _g87372_))))
          (cond ((let () (declare (not safe)) (##fx= _g87371_ 3))
                 (apply (lambda (_%f84931%_ _%iv84932%_ _%lst84933%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f84931%_ _%iv84932%_ _%lst84933%_)))
                        _g87372_))
                ((let () (declare (not safe)) (##fx= _g87371_ 4))
                 (apply (lambda (_%f84935%_
                                 _%iv84936%_
                                 _%lst184937%_
                                 _%lst284938%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f84935%_
                                    _%iv84936%_
                                    _%lst184937%_
                                    _%lst284938%_)))
                        _g87372_))
                ((let () (declare (not safe)) (##fx>= _g87371_ 4))
                 (apply foldr* _g87372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87372_))))))
    (define foldr*
      (lambda (_%f84915%_ _%iv84916%_ . _%rest84917%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84915%_))
              (let ()
                (let ((_%f84921%_ _%f84915%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldr*
                               _%f84921%_
                               _%iv84916%_
                               _%rest84917%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f84915%_)))))
    (define __foldr*
      (lambda (_%f84894%_ _%iv84895%_ . _%rest84896%_)
        (let ()
          (let ((_%f84899%_ _%f84894%_))
            (let ()
              (let _%recur84908%_ ((_%rest84910%_ _%rest84896%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84910%_))
                    (let ((__tmp87373
                           (let ((__tmp87376
                                  (lambda (_%xs84912%_ _%r84913%_)
                                    (cons (car _%xs84912%_) _%r84913%_)))
                                 (__tmp87374
                                  (list (let ((__tmp87375
                                               (map cdr _%rest84910%_)))
                                          (declare (not safe))
                                          (_%recur84908%_ __tmp87375)))))
                             (declare (not safe))
                             (__foldr1 __tmp87376 __tmp87374 _%rest84910%_))))
                      (declare (not safe))
                      (##apply _%f84899%_ __tmp87373))
                    _%iv84895%_)))))))
    (define remove-nulls!
      (lambda (_%l84781%_)
        (let* ((_%l8478284795%_ _%l84781%_)
               (_%E8478684799%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8478284795%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8479184884%_
                 (lambda (_%r84882%_)
                   (let () (declare (not safe)) (remove-nulls! _%r84882%_))))
                (_%K8478884871%_
                 (lambda (_%r84811%_)
                   (let _%loop84813%_ ((_%l84815%_ _%l84781%_)
                                       (_%r84816%_ _%r84811%_))
                     (let* ((_%r8481784830%_ _%r84816%_)
                            (_%E8482184834%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8481784830%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8482684861%_
                              (lambda (_%rr84859%_)
                                (let ((__tmp87378 _%l84815%_)
                                      (__tmp87377
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr84859%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87378 __tmp87377))))
                             (_%K8482384848%_
                              (lambda (_%rr84846%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop84813%_ _%r84816%_ _%rr84846%_))))
                             (_%K8482284839%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8481784830%_))
                             (let ((_%tl8482884866%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8481784830%_)))
                                   (_%hd8482784864%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8481784830%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8482784864%_))
                                   (let ((_%rr84869%_ _%tl8482884866%_))
                                     (declare (not safe))
                                     (_%K8482684861%_ _%rr84869%_))
                                   (let ((_%rr84854%_ _%tl8482884866%_))
                                     (declare (not safe))
                                     (_%K8482384848%_ _%rr84854%_))))
                             '#!void))))
                   _%l84781%_))
                (_%K8478784804%_ (lambda () _%l84781%_)))
            (if (let () (declare (not safe)) (##pair? _%l8478284795%_))
                (let ((_%tl8479384889%_
                       (let () (declare (not safe)) (##cdr _%l8478284795%_)))
                      (_%hd8479284887%_
                       (let () (declare (not safe)) (##car _%l8478284795%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8479284887%_))
                      (let ((_%r84892%_ _%tl8479384889%_))
                        (declare (not safe))
                        (remove-nulls! _%r84892%_))
                      (let ((_%r84877%_ _%tl8479384889%_))
                        (declare (not safe))
                        (_%K8478884871%_ _%r84877%_))))
                (let () (declare (not safe)) (_%K8478784804%_)))))))
    (define append1!
      (lambda (_%l84766%_ _%x84767%_)
        (let ()
          (let ((_%l284770%_ (cons _%x84767%_ '())))
            (if (let () (declare (not safe)) (pair? _%l84766%_))
                (let ((_%l84772%_ _%l84766%_))
                  (let ((__tmp87379
                         (let ()
                           (declare (not safe))
                           (##last-pair _%l84772%_))))
                    (declare (not safe))
                    (##set-cdr! __tmp87379 _%l284770%_))
                  _%l84772%_)
                _%l284770%_)))))
    (define append-reverse-until
      (lambda (_%pred84750%_ _%rhead84751%_ _%tail84752%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84750%_))
              (let ()
                (let ((_%pred84756%_ _%pred84750%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__append-reverse-until
                       _%pred84756%_
                       _%rhead84751%_
                       _%tail84752%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred84750%_)))))
    (define __append-reverse-until
      (lambda (_%pred84692%_ _%rhead84693%_ _%tail84694%_)
        (let ()
          (let ((_%pred84697%_ _%pred84692%_))
            (let ()
              (let _%loop84706%_ ((_%rhead84708%_ _%rhead84693%_)
                                  (_%tail84709%_ _%tail84694%_))
                (let ()
                  (let* ((_%rhead8471184720%_ _%rhead84708%_)
                         (_%E8471484724%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%rhead8471184720%_
                                   '([])
                                   '([a :: r]))
                            '#!void)))
                    (let ((_%K8471884747%_
                           (lambda () (values '() _%tail84709%_)))
                          (_%K8471584731%_
                           (lambda (_%r84728%_ _%a84729%_)
                             (if (let ()
                                   (declare (not safe))
                                   (_%pred84697%_ _%a84729%_))
                                 (values _%rhead84708%_ _%tail84709%_)
                                 (let ((__tmp87380
                                        (cons _%a84729%_ _%tail84709%_)))
                                   (declare (not safe))
                                   (_%loop84706%_ _%r84728%_ __tmp87380))))))
                      (let ((_%try-match8471384743%_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%rhead8471184720%_))
                                   (let ((_%tl8471784736%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%rhead8471184720%_)))
                                         (_%hd8471684734%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%rhead8471184720%_))))
                                     (let ((_%a84739%_ _%hd8471684734%_)
                                           (_%r84741%_ _%tl8471784736%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K8471584731%_
                                          _%r84741%_
                                          _%a84739%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%E8471484724%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%rhead8471184720%_))
                            (let () (declare (not safe)) (_%K8471884747%_))
                            (let ()
                              (declare (not safe))
                              (_%try-match8471384743%_)))))))))))))
    (define andmap1
      (lambda (_%f84677%_ _%lst84678%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84677%_))
              (let ()
                (let ((_%f84682%_ _%f84677%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap1 _%f84682%_ _%lst84678%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f84677%_)))))
    (define __andmap1
      (lambda (_%f84626%_ _%lst84627%_)
        (let ()
          (let ((_%f84630%_ _%f84626%_))
            (let ()
              (let _%lp84639%_ ((_%rest84641%_ _%lst84627%_))
                (let ()
                  (let* ((_%rest8464384651%_ _%rest84641%_)
                         (_%else8464584659%_ (lambda () '#t))
                         (_%K8464784665%_
                          (lambda (_%rest84662%_ _%x84663%_)
                            (if (let ()
                                  (declare (not safe))
                                  (_%f84630%_ _%x84663%_))
                                (let ()
                                  (declare (not safe))
                                  (_%lp84639%_ _%rest84662%_))
                                '#f))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8464384651%_))
                        (let ((_%hd8464884668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8464384651%_)))
                              (_%tl8464984670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8464384651%_))))
                          (let* ((_%x84673%_ _%hd8464884668%_)
                                 (_%rest84675%_ _%tl8464984670%_))
                            (declare (not safe))
                            (_%K8464784665%_ _%rest84675%_ _%x84673%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8464584659%_)))))))))))
    (define andmap2
      (lambda (_%f84610%_ _%lst184611%_ _%lst284612%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84610%_))
              (let ()
                (let ((_%f84616%_ _%f84610%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap2 _%f84616%_ _%lst184611%_ _%lst284612%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f84610%_)))))
    (define __andmap2
      (lambda (_%f84524%_ _%lst184525%_ _%lst284526%_)
        (let ()
          (let ((_%f84529%_ _%f84524%_))
            (let ()
              (let _%lp84538%_ ((_%rest184540%_ _%lst184525%_)
                                (_%rest284541%_ _%lst284526%_))
                (let ()
                  (let* ((_%rest18454384551%_ _%rest184540%_)
                         (_%else8454584559%_ (lambda () '#t))
                         (_%K8454784598%_
                          (lambda (_%rest184562%_ _%x184563%_)
                            (let* ((_%rest28456484572%_ _%rest284541%_)
                                   (_%else8456684580%_ (lambda () '#t))
                                   (_%K8456884586%_
                                    (lambda (_%rest284583%_ _%x284584%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (_%f84529%_
                                             _%x184563%_
                                             _%x284584%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84538%_
                                             _%rest184562%_
                                             _%rest284583%_))
                                          '#f))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28456484572%_))
                                  (let ((_%hd8456984589%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28456484572%_)))
                                        (_%tl8457084591%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28456484572%_))))
                                    (let* ((_%x284594%_ _%hd8456984589%_)
                                           (_%rest284596%_ _%tl8457084591%_))
                                      (declare (not safe))
                                      (_%K8456884586%_
                                       _%rest284596%_
                                       _%x284594%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8456684580%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18454384551%_))
                        (let ((_%hd8454884601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18454384551%_)))
                              (_%tl8454984603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18454384551%_))))
                          (let* ((_%x184606%_ _%hd8454884601%_)
                                 (_%rest184608%_ _%tl8454984603%_))
                            (declare (not safe))
                            (_%K8454784598%_ _%rest184608%_ _%x184606%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8454584559%_)))))))))))
    (define andmap
      (lambda _g87382_
        (let ((_g87381_ (let () (declare (not safe)) (##length _g87382_))))
          (cond ((let () (declare (not safe)) (##fx= _g87381_ 2))
                 (apply (lambda (_%f84512%_ _%lst84513%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f84512%_ _%lst84513%_)))
                        _g87382_))
                ((let () (declare (not safe)) (##fx= _g87381_ 3))
                 (apply (lambda (_%f84515%_ _%lst184516%_ _%lst284517%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f84515%_ _%lst184516%_ _%lst284517%_)))
                        _g87382_))
                ((let () (declare (not safe)) (##fx>= _g87381_ 3))
                 (apply andmap* _g87382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87382_))))))
    (define andmap*
      (lambda (_%f84497%_ . _%rest84498%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84497%_))
              (let ()
                (let ((_%f84502%_ _%f84497%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __andmap* _%f84502%_ _%rest84498%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f84497%_)))))
    (define __andmap*
      (lambda (_%f84479%_ . _%rest84480%_)
        (let ()
          (let ((_%f84483%_ _%f84479%_))
            (let ()
              (let _%recur84492%_ ((_%rest84494%_ _%rest84480%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84494%_))
                      (if (let ((__tmp87383 (map car _%rest84494%_)))
                            (declare (not safe))
                            (##apply _%f84483%_ __tmp87383))
                          (let ((__tmp87384 (map cdr _%rest84494%_)))
                            (declare (not safe))
                            (_%recur84492%_ __tmp87384))
                          '#f)
                      '#t))))))))
    (define ormap1
      (lambda (_%f84464%_ _%lst84465%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84464%_))
              (let ()
                (let ((_%f84469%_ _%f84464%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap1 _%f84469%_ _%lst84465%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f84464%_)))))
    (define __ormap1
      (lambda (_%f84411%_ _%lst84412%_)
        (let ()
          (let ((_%f84415%_ _%f84411%_))
            (let ()
              (let _%lp84424%_ ((_%rest84426%_ _%lst84412%_))
                (let* ((_%rest8442784435%_ _%rest84426%_)
                       (_%else8442984443%_ (lambda () '#f))
                       (_%K8443184452%_
                        (lambda (_%rest84446%_ _%x84447%_)
                          (let ((_%$e84449%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f84415%_ _%x84447%_))))
                            (if _%$e84449%_
                                _%$e84449%_
                                (let ()
                                  (declare (not safe))
                                  (_%lp84424%_ _%rest84446%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8442784435%_))
                      (let ((_%hd8443284455%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8442784435%_)))
                            (_%tl8443384457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8442784435%_))))
                        (let* ((_%x84460%_ _%hd8443284455%_)
                               (_%rest84462%_ _%tl8443384457%_))
                          (declare (not safe))
                          (_%K8443184452%_ _%rest84462%_ _%x84460%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8442984443%_))))))))))
    (define ormap2
      (lambda (_%f84395%_ _%lst184396%_ _%lst284397%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84395%_))
              (let ()
                (let ((_%f84401%_ _%f84395%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap2 _%f84401%_ _%lst184396%_ _%lst284397%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f84395%_)))))
    (define __ormap2
      (lambda (_%f84307%_ _%lst184308%_ _%lst284309%_)
        (let ()
          (let ((_%f84312%_ _%f84307%_))
            (let ()
              (let _%lp84321%_ ((_%rest184323%_ _%lst184308%_)
                                (_%rest284324%_ _%lst284309%_))
                (let* ((_%rest18432584333%_ _%rest184323%_)
                       (_%else8432784341%_ (lambda () '#f))
                       (_%K8432984383%_
                        (lambda (_%rest184344%_ _%x184345%_)
                          (let* ((_%rest28434684354%_ _%rest284324%_)
                                 (_%else8434884362%_ (lambda () '#f))
                                 (_%K8435084371%_
                                  (lambda (_%rest284365%_ _%x284366%_)
                                    (let ((_%$e84368%_
                                           (let ()
                                             (declare (not safe))
                                             (_%f84312%_
                                              _%x184345%_
                                              _%x284366%_))))
                                      (if _%$e84368%_
                                          _%$e84368%_
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84321%_
                                             _%rest184344%_
                                             _%rest284365%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28434684354%_))
                                (let ((_%hd8435184374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28434684354%_)))
                                      (_%tl8435284376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28434684354%_))))
                                  (let* ((_%x284379%_ _%hd8435184374%_)
                                         (_%rest284381%_ _%tl8435284376%_))
                                    (declare (not safe))
                                    (_%K8435084371%_
                                     _%rest284381%_
                                     _%x284379%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8434884362%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18432584333%_))
                      (let ((_%hd8433084386%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18432584333%_)))
                            (_%tl8433184388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18432584333%_))))
                        (let* ((_%x184391%_ _%hd8433084386%_)
                               (_%rest184393%_ _%tl8433184388%_))
                          (declare (not safe))
                          (_%K8432984383%_ _%rest184393%_ _%x184391%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8432784341%_))))))))))
    (define ormap
      (lambda _g87386_
        (let ((_g87385_ (let () (declare (not safe)) (##length _g87386_))))
          (cond ((let () (declare (not safe)) (##fx= _g87385_ 2))
                 (apply (lambda (_%f84295%_ _%lst84296%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84295%_ _%lst84296%_)))
                        _g87386_))
                ((let () (declare (not safe)) (##fx= _g87385_ 3))
                 (apply (lambda (_%f84298%_ _%lst184299%_ _%lst284300%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84298%_ _%lst184299%_ _%lst284300%_)))
                        _g87386_))
                ((let () (declare (not safe)) (##fx>= _g87385_ 3))
                 (apply ormap* _g87386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87386_))))))
    (define ormap*
      (lambda (_%f84280%_ . _%rest84281%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84280%_))
              (let ()
                (let ((_%f84285%_ _%f84280%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __ormap* _%f84285%_ _%rest84281%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84280%_)))))
    (define __ormap*
      (lambda (_%f84260%_ . _%rest84261%_)
        (let ()
          (let ((_%f84264%_ _%f84260%_))
            (let ()
              (let _%recur84273%_ ((_%rest84275%_ _%rest84261%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84275%_))
                    (let ((_%$e84277%_
                           (let ((__tmp87387 (map car _%rest84275%_)))
                             (declare (not safe))
                             (##apply _%f84264%_ __tmp87387))))
                      (if _%$e84277%_
                          _%$e84277%_
                          (let ((__tmp87388 (map cdr _%rest84275%_)))
                            (declare (not safe))
                            (_%recur84273%_ __tmp87388))))
                    '#f)))))))
    (define filter-map1
      (lambda (_%f84245%_ _%lst84246%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84245%_))
              (let ()
                (let ((_%f84250%_ _%f84245%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map1 _%f84250%_ _%lst84246%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84245%_)))))
    (define __filter-map1
      (lambda (_%f84188%_ _%lst84189%_)
        (let ()
          (let ((_%f84192%_ _%f84188%_))
            (let ()
              (let _%recur84201%_ ((_%rest84203%_ _%lst84189%_))
                (let ()
                  (let* ((_%rest8420584213%_ _%rest84203%_)
                         (_%else8420784221%_ (lambda () '()))
                         (_%K8420984233%_
                          (lambda (_%rest84224%_ _%x84225%_)
                            (let ((_%$e84227%_
                                   (let ()
                                     (declare (not safe))
                                     (_%f84192%_ _%x84225%_))))
                              (if _%$e84227%_
                                  ((lambda (_%r84230%_)
                                     (cons _%r84230%_
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84201%_ _%rest84224%_))))
                                   _%$e84227%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%recur84201%_ _%rest84224%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8420584213%_))
                        (let ((_%hd8421084236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8420584213%_)))
                              (_%tl8421184238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8420584213%_))))
                          (let* ((_%x84241%_ _%hd8421084236%_)
                                 (_%rest84243%_ _%tl8421184238%_))
                            (declare (not safe))
                            (_%K8420984233%_ _%rest84243%_ _%x84241%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8420784221%_)))))))))))
    (define filter-map2
      (lambda (_%f84172%_ _%lst184173%_ _%lst284174%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84172%_))
              (let ()
                (let ((_%f84178%_ _%f84172%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map2
                       _%f84178%_
                       _%lst184173%_
                       _%lst284174%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84172%_)))))
    (define __filter-map2
      (lambda (_%f84080%_ _%lst184081%_ _%lst284082%_)
        (let ()
          (let ((_%f84085%_ _%f84080%_))
            (let ()
              (let _%recur84094%_ ((_%rest184096%_ _%lst184081%_)
                                   (_%rest284097%_ _%lst284082%_))
                (let ()
                  (let* ((_%rest18409984107%_ _%rest184096%_)
                         (_%else8410184115%_ (lambda () '()))
                         (_%K8410384160%_
                          (lambda (_%rest184118%_ _%x184119%_)
                            (let* ((_%rest28412084128%_ _%rest284097%_)
                                   (_%else8412284136%_ (lambda () '()))
                                   (_%K8412484148%_
                                    (lambda (_%rest284139%_ _%x284140%_)
                                      (let ((_%$e84142%_
                                             (let ()
                                               (declare (not safe))
                                               (_%f84085%_
                                                _%x184119%_
                                                _%x284140%_))))
                                        (if _%$e84142%_
                                            ((lambda (_%r84145%_)
                                               (cons _%r84145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%recur84094%_
                                                        _%rest184118%_
                                                        _%rest284139%_))))
                                             _%$e84142%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%recur84094%_
                                                 _%rest184118%_
                                                 _%rest284139%_))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28412084128%_))
                                  (let ((_%hd8412584151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28412084128%_)))
                                        (_%tl8412684153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28412084128%_))))
                                    (let* ((_%x284156%_ _%hd8412584151%_)
                                           (_%rest284158%_ _%tl8412684153%_))
                                      (declare (not safe))
                                      (_%K8412484148%_
                                       _%rest284158%_
                                       _%x284156%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8412284136%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18409984107%_))
                        (let ((_%hd8410484163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18409984107%_)))
                              (_%tl8410584165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18409984107%_))))
                          (let* ((_%x184168%_ _%hd8410484163%_)
                                 (_%rest184170%_ _%tl8410584165%_))
                            (declare (not safe))
                            (_%K8410384160%_ _%rest184170%_ _%x184168%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8410184115%_)))))))))))
    (define filter-map
      (lambda _g87390_
        (let ((_g87389_ (let () (declare (not safe)) (##length _g87390_))))
          (cond ((let () (declare (not safe)) (##fx= _g87389_ 2))
                 (apply (lambda (_%f84068%_ _%lst84069%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84068%_ _%lst84069%_)))
                        _g87390_))
                ((let () (declare (not safe)) (##fx= _g87389_ 3))
                 (apply (lambda (_%f84071%_ _%lst184072%_ _%lst284073%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84071%_
                             _%lst184072%_
                             _%lst284073%_)))
                        _g87390_))
                ((let () (declare (not safe)) (##fx>= _g87389_ 3))
                 (apply filter-map* _g87390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87390_))))))
    (define filter-map*
      (lambda (_%f84053%_ . _%rest84054%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84053%_))
              (let ()
                (let ((_%f84058%_ _%f84053%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __filter-map* _%f84058%_ _%rest84054%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f84053%_)))))
    (define __filter-map*
      (lambda (_%f84029%_ . _%rest84030%_)
        (let ()
          (let ((_%f84033%_ _%f84029%_))
            (let ()
              (let _%recur84042%_ ((_%rest84044%_ _%rest84030%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84044%_))
                      (let ((_%$e84047%_
                             (let ((__tmp87391 (map car _%rest84044%_)))
                               (declare (not safe))
                               (##apply _%f84033%_ __tmp87391))))
                        (if _%$e84047%_
                            ((lambda (_%r84050%_)
                               (cons _%r84050%_
                                     (let ((__tmp87392
                                            (map cdr _%rest84044%_)))
                                       (declare (not safe))
                                       (_%recur84042%_ __tmp87392))))
                             _%$e84047%_)
                            (let ()
                              (let ((__tmp87393 (map cdr _%rest84044%_)))
                                (declare (not safe))
                                (_%recur84042%_ __tmp87393)))))
                      '()))))))))
    (define agetq__%
      (lambda (_%key84005%_ _%lst84007%_ _%default84009%_)
        (let ((_%$e84012%_
               (if (let () (declare (not safe)) (pair? _%lst84007%_))
                   (assq _%key84005%_ _%lst84007%_)
                   '#f)))
          (if _%$e84012%_
              (cdr _%$e84012%_)
              (if (let () (declare (not safe)) (procedure? _%default84009%_))
                  (let () (_%default84009%_ _%key84005%_))
                  (let () _%default84009%_))))))
    (define agetq__0
      (lambda (_%key84020%_ _%lst84021%_)
        (let ((_%default84023%_ '#f))
          (declare (not safe))
          (agetq__% _%key84020%_ _%lst84021%_ _%default84023%_))))
    (define agetq
      (lambda _g87395_
        (let ((_g87394_ (let () (declare (not safe)) (##length _g87395_))))
          (cond ((let () (declare (not safe)) (##fx= _g87394_ 2))
                 (apply (lambda (_%key84020%_ _%lst84021%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84020%_ _%lst84021%_)))
                        _g87395_))
                ((let () (declare (not safe)) (##fx= _g87394_ 3))
                 (apply (lambda (_%key84025%_ _%lst84026%_ _%default84027%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84025%_
                             _%lst84026%_
                             _%default84027%_)))
                        _g87395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87395_))))))
    (define agetv__%
      (lambda (_%key83980%_ _%lst83982%_ _%default83984%_)
        (let ((_%$e83987%_
               (if (let () (declare (not safe)) (pair? _%lst83982%_))
                   (assv _%key83980%_ _%lst83982%_)
                   '#f)))
          (if _%$e83987%_
              (cdr _%$e83987%_)
              (if (let () (declare (not safe)) (procedure? _%default83984%_))
                  (let () (_%default83984%_ _%key83980%_))
                  (let () _%default83984%_))))))
    (define agetv__0
      (lambda (_%key83995%_ _%lst83996%_)
        (let ((_%default83998%_ '#f))
          (declare (not safe))
          (agetv__% _%key83995%_ _%lst83996%_ _%default83998%_))))
    (define agetv
      (lambda _g87397_
        (let ((_g87396_ (let () (declare (not safe)) (##length _g87397_))))
          (cond ((let () (declare (not safe)) (##fx= _g87396_ 2))
                 (apply (lambda (_%key83995%_ _%lst83996%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key83995%_ _%lst83996%_)))
                        _g87397_))
                ((let () (declare (not safe)) (##fx= _g87396_ 3))
                 (apply (lambda (_%key84000%_ _%lst84001%_ _%default84002%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84000%_
                             _%lst84001%_
                             _%default84002%_)))
                        _g87397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87397_))))))
    (define aget__%
      (lambda (_%key83955%_ _%lst83957%_ _%default83959%_)
        (let ((_%$e83962%_
               (if (let () (declare (not safe)) (pair? _%lst83957%_))
                   (assoc _%key83955%_ _%lst83957%_)
                   '#f)))
          (if _%$e83962%_
              (cdr _%$e83962%_)
              (if (let () (declare (not safe)) (procedure? _%default83959%_))
                  (let () (_%default83959%_ _%key83955%_))
                  (let () _%default83959%_))))))
    (define aget__0
      (lambda (_%key83970%_ _%lst83971%_)
        (let ((_%default83973%_ '#f))
          (declare (not safe))
          (aget__% _%key83970%_ _%lst83971%_ _%default83973%_))))
    (define aget
      (lambda _g87399_
        (let ((_g87398_ (let () (declare (not safe)) (##length _g87399_))))
          (cond ((let () (declare (not safe)) (##fx= _g87398_ 2))
                 (apply (lambda (_%key83970%_ _%lst83971%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key83970%_ _%lst83971%_)))
                        _g87399_))
                ((let () (declare (not safe)) (##fx= _g87398_ 3))
                 (apply (lambda (_%key83975%_ _%lst83976%_ _%default83977%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key83975%_
                                     _%lst83976%_
                                     _%default83977%_)))
                        _g87399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87399_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key83884%_ _%lst83886%_ _%default83888%_)
        (let _%lp83891%_ ((_%rest83894%_ _%lst83886%_))
          (let* ((_%rest8389683906%_ _%rest83894%_)
                 (_%else8389883914%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83888%_))
                        (_%default83888%_ _%key83884%_)
                        _%default83888%_)))
                 (_%K8390083923%_
                  (lambda (_%rest83917%_ _%v83918%_ _%k83920%_)
                    (if (eq? _%k83920%_ _%key83884%_)
                        _%v83918%_
                        (let ()
                          (declare (not safe))
                          (_%lp83891%_ _%rest83917%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8389683906%_))
                (let ((_%hd8390183926%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8389683906%_)))
                      (_%tl8390283928%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8389683906%_))))
                  (let ((_%k83931%_ _%hd8390183926%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8390283928%_))
                        (let ((_%hd8390383933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8390283928%_)))
                              (_%tl8390483935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8390283928%_))))
                          (let* ((_%v83938%_ _%hd8390383933%_)
                                 (_%rest83940%_ _%tl8390483935%_))
                            (declare (not safe))
                            (_%K8390083923%_
                             _%rest83940%_
                             _%v83938%_
                             _%k83931%_)))
                        (let () (declare (not safe)) (_%else8389883914%_)))))
                (let () (declare (not safe)) (_%else8389883914%_)))))))
    (define pgetq__0
      (lambda (_%key83945%_ _%lst83946%_)
        (let ((_%default83948%_ '#f))
          (declare (not safe))
          (pgetq__% _%key83945%_ _%lst83946%_ _%default83948%_))))
    (define pgetq
      (lambda _g87401_
        (let ((_g87400_ (let () (declare (not safe)) (##length _g87401_))))
          (cond ((let () (declare (not safe)) (##fx= _g87400_ 2))
                 (apply (lambda (_%key83945%_ _%lst83946%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key83945%_ _%lst83946%_)))
                        _g87401_))
                ((let () (declare (not safe)) (##fx= _g87400_ 3))
                 (apply (lambda (_%key83950%_ _%lst83951%_ _%default83952%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key83950%_
                             _%lst83951%_
                             _%default83952%_)))
                        _g87401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87401_))))))
    (define pgetv__%
      (lambda (_%key83813%_ _%lst83815%_ _%default83817%_)
        (let _%lp83820%_ ((_%rest83823%_ _%lst83815%_))
          (let* ((_%rest8382583835%_ _%rest83823%_)
                 (_%else8382783843%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83817%_))
                        (_%default83817%_ _%key83813%_)
                        _%default83817%_)))
                 (_%K8382983852%_
                  (lambda (_%rest83846%_ _%v83847%_ _%k83849%_)
                    (if (eqv? _%k83849%_ _%key83813%_)
                        _%v83847%_
                        (let ()
                          (declare (not safe))
                          (_%lp83820%_ _%rest83846%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8382583835%_))
                (let ((_%hd8383083855%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8382583835%_)))
                      (_%tl8383183857%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8382583835%_))))
                  (let ((_%k83860%_ _%hd8383083855%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8383183857%_))
                        (let ((_%hd8383283862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8383183857%_)))
                              (_%tl8383383864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8383183857%_))))
                          (let* ((_%v83867%_ _%hd8383283862%_)
                                 (_%rest83869%_ _%tl8383383864%_))
                            (declare (not safe))
                            (_%K8382983852%_
                             _%rest83869%_
                             _%v83867%_
                             _%k83860%_)))
                        (let () (declare (not safe)) (_%else8382783843%_)))))
                (let () (declare (not safe)) (_%else8382783843%_)))))))
    (define pgetv__0
      (lambda (_%key83874%_ _%lst83875%_)
        (let ((_%default83877%_ '#f))
          (declare (not safe))
          (pgetv__% _%key83874%_ _%lst83875%_ _%default83877%_))))
    (define pgetv
      (lambda _g87403_
        (let ((_g87402_ (let () (declare (not safe)) (##length _g87403_))))
          (cond ((let () (declare (not safe)) (##fx= _g87402_ 2))
                 (apply (lambda (_%key83874%_ _%lst83875%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key83874%_ _%lst83875%_)))
                        _g87403_))
                ((let () (declare (not safe)) (##fx= _g87402_ 3))
                 (apply (lambda (_%key83879%_ _%lst83880%_ _%default83881%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key83879%_
                             _%lst83880%_
                             _%default83881%_)))
                        _g87403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87403_))))))
    (define pget__%
      (lambda (_%key83742%_ _%lst83744%_ _%default83746%_)
        (let _%lp83749%_ ((_%rest83752%_ _%lst83744%_))
          (let* ((_%rest8375483764%_ _%rest83752%_)
                 (_%else8375683772%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83746%_))
                        (_%default83746%_ _%key83742%_)
                        _%default83746%_)))
                 (_%K8375883781%_
                  (lambda (_%rest83775%_ _%v83776%_ _%k83778%_)
                    (if (equal? _%k83778%_ _%key83742%_)
                        _%v83776%_
                        (let ()
                          (declare (not safe))
                          (_%lp83749%_ _%rest83775%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8375483764%_))
                (let ((_%hd8375983784%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8375483764%_)))
                      (_%tl8376083786%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8375483764%_))))
                  (let ((_%k83789%_ _%hd8375983784%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8376083786%_))
                        (let ((_%hd8376183791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8376083786%_)))
                              (_%tl8376283793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8376083786%_))))
                          (let* ((_%v83796%_ _%hd8376183791%_)
                                 (_%rest83798%_ _%tl8376283793%_))
                            (declare (not safe))
                            (_%K8375883781%_
                             _%rest83798%_
                             _%v83796%_
                             _%k83789%_)))
                        (let () (declare (not safe)) (_%else8375683772%_)))))
                (let () (declare (not safe)) (_%else8375683772%_)))))))
    (define pget__0
      (lambda (_%key83803%_ _%lst83804%_)
        (let ((_%default83806%_ '#f))
          (declare (not safe))
          (pget__% _%key83803%_ _%lst83804%_ _%default83806%_))))
    (define pget
      (lambda _g87405_
        (let ((_g87404_ (let () (declare (not safe)) (##length _g87405_))))
          (cond ((let () (declare (not safe)) (##fx= _g87404_ 2))
                 (apply (lambda (_%key83803%_ _%lst83804%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key83803%_ _%lst83804%_)))
                        _g87405_))
                ((let () (declare (not safe)) (##fx= _g87404_ 3))
                 (apply (lambda (_%key83808%_ _%lst83809%_ _%default83810%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key83808%_
                                     _%lst83809%_
                                     _%default83810%_)))
                        _g87405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87405_))))))
    (define find
      (lambda (_%pred83726%_ _%lst83727%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred83726%_))
              (let ()
                (let ((_%pred83731%_ _%pred83726%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__find _%pred83731%_ _%lst83727%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred83726%_)))))
    (define __find
      (lambda (_%pred83709%_ _%lst83710%_)
        (let ()
          (let ((_%pred83713%_ _%pred83709%_))
            (let ()
              (let ((_%$e83722%_
                     (let ()
                       (declare (not safe))
                       (__memf _%pred83713%_ _%lst83710%_))))
                (if _%$e83722%_
                    (let () (declare (not safe)) (##car _%$e83722%_))
                    (let () '#f))))))))
    (define memf
      (lambda (_%proc83694%_ _%lst83695%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83694%_))
              (let ()
                (let ((_%proc83699%_ _%proc83694%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__memf _%proc83699%_ _%lst83695%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc83694%_)))))
    (define __memf
      (lambda (_%proc83644%_ _%lst83645%_)
        (let ()
          (let ((_%proc83648%_ _%proc83644%_))
            (let ()
              (let _%lp83657%_ ((_%rest83659%_ _%lst83645%_))
                (let* ((_%rest8366083668%_ _%rest83659%_)
                       (_%else8366283676%_ (lambda () '#f))
                       (_%K8366483682%_
                        (lambda (_%tl83679%_ _%hd83680%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83648%_ _%hd83680%_))
                              _%rest83659%_
                              (let ()
                                (declare (not safe))
                                (_%lp83657%_ _%tl83679%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8366083668%_))
                      (let ((_%hd8366583685%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8366083668%_)))
                            (_%tl8366683687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8366083668%_))))
                        (let* ((_%hd83690%_ _%hd8366583685%_)
                               (_%tl83692%_ _%tl8366683687%_))
                          (declare (not safe))
                          (_%K8366483682%_ _%tl83692%_ _%hd83690%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8366283676%_))))))))))
    (define remove1
      (lambda (_%el83597%_ _%lst83599%_)
        (let _%lp83602%_ ((_%rest83605%_ _%lst83599%_) (_%r83607%_ '()))
          (let* ((_%rest8360983617%_ _%rest83605%_)
                 (_%else8361183625%_ (lambda () _%lst83599%_))
                 (_%K8361383632%_
                  (lambda (_%rest83628%_ _%hd83629%_)
                    (if (equal? _%el83597%_ _%hd83629%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83628%_ _%r83607%_))
                        (let ((__tmp87406 (cons _%hd83629%_ _%r83607%_)))
                          (declare (not safe))
                          (_%lp83602%_ _%rest83628%_ __tmp87406))))))
            (if (let () (declare (not safe)) (##pair? _%rest8360983617%_))
                (let ((_%hd8361483635%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8360983617%_)))
                      (_%tl8361583637%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8360983617%_))))
                  (let* ((_%hd83640%_ _%hd8361483635%_)
                         (_%rest83642%_ _%tl8361583637%_))
                    (declare (not safe))
                    (_%K8361383632%_ _%rest83642%_ _%hd83640%_)))
                (let () (declare (not safe)) (_%else8361183625%_)))))))
    (define remv1
      (lambda (_%el83550%_ _%lst83552%_)
        (let _%lp83555%_ ((_%rest83558%_ _%lst83552%_) (_%r83560%_ '()))
          (let* ((_%rest8356283570%_ _%rest83558%_)
                 (_%else8356483578%_ (lambda () _%lst83552%_))
                 (_%K8356683585%_
                  (lambda (_%rest83581%_ _%hd83582%_)
                    (if (eqv? _%el83550%_ _%hd83582%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83581%_ _%r83560%_))
                        (let ((__tmp87407 (cons _%hd83582%_ _%r83560%_)))
                          (declare (not safe))
                          (_%lp83555%_ _%rest83581%_ __tmp87407))))))
            (if (let () (declare (not safe)) (##pair? _%rest8356283570%_))
                (let ((_%hd8356783588%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8356283570%_)))
                      (_%tl8356883590%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8356283570%_))))
                  (let* ((_%hd83593%_ _%hd8356783588%_)
                         (_%rest83595%_ _%tl8356883590%_))
                    (declare (not safe))
                    (_%K8356683585%_ _%rest83595%_ _%hd83593%_)))
                (let () (declare (not safe)) (_%else8356483578%_)))))))
    (define remq1
      (lambda (_%el83503%_ _%lst83505%_)
        (let _%lp83508%_ ((_%rest83511%_ _%lst83505%_) (_%r83513%_ '()))
          (let* ((_%rest8351583523%_ _%rest83511%_)
                 (_%else8351783531%_ (lambda () _%lst83505%_))
                 (_%K8351983538%_
                  (lambda (_%rest83534%_ _%hd83535%_)
                    (if (eq? _%el83503%_ _%hd83535%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83534%_ _%r83513%_))
                        (let ((__tmp87408 (cons _%hd83535%_ _%r83513%_)))
                          (declare (not safe))
                          (_%lp83508%_ _%rest83534%_ __tmp87408))))))
            (if (let () (declare (not safe)) (##pair? _%rest8351583523%_))
                (let ((_%hd8352083541%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8351583523%_)))
                      (_%tl8352183543%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8351583523%_))))
                  (let* ((_%hd83546%_ _%hd8352083541%_)
                         (_%rest83548%_ _%tl8352183543%_))
                    (declare (not safe))
                    (_%K8351983538%_ _%rest83548%_ _%hd83546%_)))
                (let () (declare (not safe)) (_%else8351783531%_)))))))
    (define remf
      (lambda (_%proc83488%_ _%lst83489%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83488%_))
              (let ()
                (let ((_%proc83493%_ _%proc83488%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__remf _%proc83493%_ _%lst83489%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc83488%_)))))
    (define __remf
      (lambda (_%proc83437%_ _%lst83438%_)
        (let ()
          (let ((_%proc83441%_ _%proc83437%_))
            (let ()
              (let _%lp83450%_ ((_%rest83452%_ _%lst83438%_) (_%r83453%_ '()))
                (let* ((_%rest8345483462%_ _%rest83452%_)
                       (_%else8345683470%_ (lambda () _%lst83438%_))
                       (_%K8345883476%_
                        (lambda (_%rest83473%_ _%hd83474%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83441%_ _%hd83474%_))
                              (let ()
                                (declare (not safe))
                                (__foldl1 cons _%rest83473%_ _%r83453%_))
                              (let ((__tmp87409 (cons _%hd83474%_ _%r83453%_)))
                                (declare (not safe))
                                (_%lp83450%_ _%rest83473%_ __tmp87409))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8345483462%_))
                      (let ((_%hd8345983479%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8345483462%_)))
                            (_%tl8346083481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8345483462%_))))
                        (let* ((_%hd83484%_ _%hd8345983479%_)
                               (_%rest83486%_ _%tl8346083481%_))
                          (declare (not safe))
                          (_%K8345883476%_ _%rest83486%_ _%hd83484%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8345683470%_))))))))))
    (define 1+
      (lambda (_%x83423%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83423%_))
              (let ()
                (let ((_%x83427%_ _%x83423%_))
                  (let () (let () (declare (not safe)) (__1+ _%x83427%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x83423%_)))))
    (define __1+
      (lambda (_%x83411%_)
        (let () (let ((_%x83414%_ _%x83411%_)) (let () (+ _%x83414%_ '1))))))
    (define 1-
      (lambda (_%x83397%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83397%_))
              (let ()
                (let ((_%x83401%_ _%x83397%_))
                  (let () (let () (declare (not safe)) (__1- _%x83401%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x83397%_)))))
    (define __1-
      (lambda (_%x83385%_)
        (let () (let ((_%x83388%_ _%x83385%_)) (let () (- _%x83388%_ '1))))))
    (define fx1+
      (lambda (_%x83371%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83371%_))
              (let ()
                (let ((_%x83375%_ _%x83371%_))
                  (let () (let () (declare (not safe)) (__fx1+ _%x83375%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x83371%_)))))
    (define __fx1+
      (lambda (_%x83359%_)
        (let ()
          (let ((_%x83362%_ _%x83359%_))
            (let () (let () (declare (not safe)) (##fx+ _%x83362%_ '1)))))))
    (define fx1-
      (lambda (_%x83345%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83345%_))
              (let ()
                (let ((_%x83349%_ _%x83345%_))
                  (let () (let () (declare (not safe)) (__fx1- _%x83349%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x83345%_)))))
    (define __fx1-
      (lambda (_%x83333%_)
        (let ()
          (let ((_%x83336%_ _%x83333%_))
            (let () (let () (declare (not safe)) (##fx- _%x83336%_ '1)))))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83330%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83330%_))
              (let () (declare (not safe)) (##fx>= _%x83330%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83327%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83327%_))
              (let () (declare (not safe)) (##fx> _%x83327%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83324%_)
        (let () (let () (declare (not safe)) (##fx= _%x83324%_ '0)))))
    (define fx<0?
      (lambda (_%x83321%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83321%_))
              (let () (declare (not safe)) (##fx< _%x83321%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83318%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83318%_))
              (let () (declare (not safe)) (##fx<= _%x83318%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83315%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83315%_))
              (let ((__tmp87410 (uninterned-symbol? _%x83315%_)))
                (declare (not safe))
                (not __tmp87410))
              '#f))))
    (define display-as-string
      (lambda (_%x83300%_ _%port83301%_)
        (let ()
          (if (output-port? _%port83301%_)
              (let ()
                (let ((_%port83305%_ _%port83301%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__display-as-string _%x83300%_ _%port83305%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port83301%_)))))
    (define __display-as-string
      (lambda (_%x83257%_ _%port83258%_)
        (let ()
          (let ((_%port83261%_ _%port83258%_))
            (let ()
              (if (or (let () (declare (not safe)) (string? _%x83257%_))
                      (let () (declare (not safe)) (symbol? _%x83257%_))
                      (let () (declare (not safe)) (keyword? _%x83257%_))
                      (let () (declare (not safe)) (number? _%x83257%_))
                      (let () (declare (not safe)) (char? _%x83257%_)))
                  (let () (display _%x83257%_ _%port83261%_))
                  (if (let () (declare (not safe)) (pair? _%x83257%_))
                      (let ()
                        (let ((__tmp87411 (car _%x83257%_)))
                          (declare (not safe))
                          (display-as-string __tmp87411 _%port83261%_))
                        (let ((__tmp87412 (cdr _%x83257%_)))
                          (declare (not safe))
                          (display-as-string __tmp87412 _%port83261%_)))
                      (if (let () (declare (not safe)) (vector? _%x83257%_))
                          (let ()
                            (vector-for-each
                             (lambda (_%g8328483286%_)
                               (let ()
                                 (declare (not safe))
                                 (display-as-string
                                  _%g8328483286%_
                                  _%port83261%_)))
                             _%x83257%_))
                          (if (or (let ()
                                    (declare (not safe))
                                    (null? _%x83257%_))
                                  (let ()
                                    (declare (not safe))
                                    (eq? _%x83257%_ '#!void))
                                  (let ()
                                    (declare (not safe))
                                    (eof-object? _%x83257%_))
                                  (let ()
                                    (declare (not safe))
                                    (boolean? _%x83257%_)))
                              (let () '#!void)
                              (let ()
                                (error '"cannot convert as string"
                                       _%x83257%_)))))))))))
    (define as-string__0
      (lambda (_%x83240%_)
        (if (let () (declare (not safe)) (string? _%x83240%_))
            (let () _%x83240%_)
            (if (let () (declare (not safe)) (symbol? _%x83240%_))
                (let () (symbol->string _%x83240%_))
                (if (let () (declare (not safe)) (keyword? _%x83240%_))
                    (let () (keyword->string _%x83240%_))
                    (if (let () (declare (not safe)) (number? _%x83240%_))
                        (let () (number->string _%x83240%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8324683248%_)
                             (let ()
                               (declare (not safe))
                               (display-as-string
                                _%x83240%_
                                _%g8324683248%_)))))))))))
    (define as-string__1
      (lambda _%args83251%_
        (call-with-output-string
         '()
         (lambda (_%g8325283254%_)
           (let ()
             (declare (not safe))
             (display-as-string _%args83251%_ _%g8325283254%_))))))
    (define as-string
      (lambda _g87414_
        (let ((_g87413_ (let () (declare (not safe)) (##length _g87414_))))
          (cond ((let () (declare (not safe)) (##fx= _g87413_ 1))
                 (apply (lambda (_%x83240%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83240%_)))
                        _g87414_))
                (#t (apply as-string__1 _g87414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87414_))))))
    (define make-symbol__0
      (lambda (_%x83236%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83236%_))
            _%x83236%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83236%_))))))
    (define make-symbol__1
      (lambda _%args83238%_ (string->symbol (apply as-string _%args83238%_))))
    (define make-symbol
      (lambda _g87416_
        (let ((_g87415_ (let () (declare (not safe)) (##length _g87416_))))
          (cond ((let () (declare (not safe)) (##fx= _g87415_ 1))
                 (apply (lambda (_%x83236%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83236%_)))
                        _g87416_))
                (#t (apply make-symbol__1 _g87416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87416_))))))
    (define make-keyword__0
      (lambda (_%x83232%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83232%_))
            _%x83232%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83232%_))))))
    (define make-keyword__1
      (lambda _%args83234%_ (string->keyword (apply as-string _%args83234%_))))
    (define make-keyword
      (lambda _g87418_
        (let ((_g87417_ (let () (declare (not safe)) (##length _g87418_))))
          (cond ((let () (declare (not safe)) (##fx= _g87417_ 1))
                 (apply (lambda (_%x83232%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83232%_)))
                        _g87418_))
                (#t (apply make-keyword__1 _g87418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87418_))))))
    (define interned-keyword?
      (lambda (_%x83229%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83229%_))
              (let ((__tmp87419 (uninterned-keyword? _%x83229%_)))
                (declare (not safe))
                (not __tmp87419))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83215%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83215%_))
              (let ()
                (let ((_%sym83219%_ _%sym83215%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__symbol->keyword _%sym83219%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83215%_)))))
    (define __symbol->keyword
      (lambda (_%sym83203%_)
        (let ()
          (let ((_%sym83206%_ _%sym83203%_))
            (let ()
              (if (uninterned-symbol? _%sym83206%_)
                  (let ((__tmp87420
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83206%_))))
                    (declare (not safe))
                    (##string->uninterned-keyword __tmp87420))
                  (let ((__tmp87421
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83206%_))))
                    (declare (not safe))
                    (##string->keyword __tmp87421))))))))
    (define keyword->symbol
      (lambda (_%sym83189%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83189%_))
              (let ()
                (let ((_%sym83193%_ _%sym83189%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__keyword->symbol _%sym83193%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83189%_)))))
    (define __keyword->symbol
      (lambda (_%sym83177%_)
        (let ()
          (let ((_%sym83180%_ _%sym83177%_))
            (let ()
              (if (uninterned-keyword? _%sym83180%_)
                  (let ((__tmp87422
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83180%_))))
                    (declare (not safe))
                    (##string->uninterned-symbol __tmp87422))
                  (let ((__tmp87423
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83180%_))))
                    (declare (not safe))
                    (##string->symbol __tmp87423))))))))
    (define bytes->string__%
      (lambda (_%bstr83142%_ _%enc83143%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83142%_))
              (let ()
                (let ((_%bstr83147%_ _%bstr83142%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83143%_))
                      (let ()
                        (let ((_%enc83157%_ _%enc83143%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bytes->string__%
                               _%bstr83147%_
                               _%enc83157%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83143%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83142%_)))))
    (define bytes->string__0
      (lambda (_%bstr83170%_)
        (let ((_%enc83172%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83170%_ _%enc83172%_))))
    (define bytes->string
      (lambda _g87425_
        (let ((_g87424_ (let () (declare (not safe)) (##length _g87425_))))
          (cond ((let () (declare (not safe)) (##fx= _g87424_ 1))
                 (apply (lambda (_%bstr83170%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83170%_)))
                        _g87425_))
                ((let () (declare (not safe)) (##fx= _g87424_ 2))
                 (apply (lambda (_%bstr83174%_ _%enc83175%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83174%_ _%enc83175%_)))
                        _g87425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87425_))))))
    (define __bytes->string__%
      (lambda (_%bstr83101%_ _%enc83102%_)
        (let ()
          (let ((_%bstr83105%_ _%bstr83101%_))
            (let ((_%enc83113%_ _%enc83102%_))
              (let ()
                (if (eq? _%enc83113%_ 'UTF-8)
                    (let ()
                      (declare (not safe))
                      (##utf8->string _%bstr83105%_))
                    (let* ((_%in83122%_
                            (open-input-u8vector
                             (cons 'char-encoding:
                                   (cons _%enc83113%_
                                         (cons 'init:
                                               (cons _%bstr83105%_ '()))))))
                           (_%len83124%_ (u8vector-length _%bstr83105%_))
                           (_%out83126%_ (make-string _%len83124%_))
                           (_%n83128%_
                            (read-substring
                             _%out83126%_
                             '0
                             _%len83124%_
                             _%in83122%_)))
                      (string-shrink! _%out83126%_ _%n83128%_)
                      _%out83126%_))))))))
    (define __bytes->string__0
      (lambda (_%bstr83134%_)
        (let ((_%enc83136%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83134%_ _%enc83136%_))))
    (define __bytes->string
      (lambda _g87427_
        (let ((_g87426_ (let () (declare (not safe)) (##length _g87427_))))
          (cond ((let () (declare (not safe)) (##fx= _g87426_ 1))
                 (apply (lambda (_%bstr83134%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83134%_)))
                        _g87427_))
                ((let () (declare (not safe)) (##fx= _g87426_ 2))
                 (apply (lambda (_%bstr83138%_ _%enc83139%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83138%_ _%enc83139%_)))
                        _g87427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87427_))))))
    (define string->bytes__%
      (lambda (_%str83065%_ _%enc83066%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83065%_))
              (let ()
                (let ((_%str83070%_ _%str83065%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83066%_))
                      (let ()
                        (let ((_%enc83080%_ _%enc83066%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string->bytes__%
                               _%str83070%_
                               _%enc83080%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83066%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str83065%_)))))
    (define string->bytes__0
      (lambda (_%str83093%_)
        (let ((_%enc83095%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83093%_ _%enc83095%_))))
    (define string->bytes
      (lambda _g87429_
        (let ((_g87428_ (let () (declare (not safe)) (##length _g87429_))))
          (cond ((let () (declare (not safe)) (##fx= _g87428_ 1))
                 (apply (lambda (_%str83093%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83093%_)))
                        _g87429_))
                ((let () (declare (not safe)) (##fx= _g87428_ 2))
                 (apply (lambda (_%str83097%_ _%enc83098%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83097%_ _%enc83098%_)))
                        _g87429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87429_))))))
    (define __string->bytes__%
      (lambda (_%str83033%_ _%enc83034%_)
        (let ()
          (let ((_%str83037%_ _%str83033%_))
            (let ((_%enc83045%_ _%enc83034%_))
              (let ()
                (if (eq? _%enc83045%_ 'UTF-8)
                    (let () (declare (not safe)) (##string->utf8 _%str83037%_))
                    (let ((__tmp87430
                           (let ()
                             (declare (not safe))
                             (##string-length _%str83037%_))))
                      (declare (not safe))
                      (substring->bytes__%
                       _%str83037%_
                       '0
                       __tmp87430
                       _%enc83045%_)))))))))
    (define __string->bytes__0
      (lambda (_%str83057%_)
        (let ((_%enc83059%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83057%_ _%enc83059%_))))
    (define __string->bytes
      (lambda _g87432_
        (let ((_g87431_ (let () (declare (not safe)) (##length _g87432_))))
          (cond ((let () (declare (not safe)) (##fx= _g87431_ 1))
                 (apply (lambda (_%str83057%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83057%_)))
                        _g87432_))
                ((let () (declare (not safe)) (##fx= _g87431_ 2))
                 (apply (lambda (_%str83061%_ _%enc83062%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83061%_ _%enc83062%_)))
                        _g87432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87432_))))))
    (define substring->bytes__%
      (lambda (_%str82981%_ _%start82982%_ _%end82983%_ _%enc82984%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82981%_))
              (let ()
                (let ((_%str82988%_ _%str82981%_))
                  (if (let ()
                        (declare (not safe))
                        (nonnegative-fixnum? _%start82982%_))
                      (let ()
                        (let ((_%start82998%_ _%start82982%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%end82983%_))
                              (let ()
                                (let ((_%end83008%_ _%end82983%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__substring->bytes__%
                                       _%str82988%_
                                       _%start82998%_
                                       _%end83008%_
                                       _%enc82984%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%end82983%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start82982%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str82981%_)))))
    (define substring->bytes__0
      (lambda (_%str83021%_ _%start83022%_ _%end83023%_)
        (let ((_%enc83025%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83021%_
           _%start83022%_
           _%end83023%_
           _%enc83025%_))))
    (define substring->bytes
      (lambda _g87434_
        (let ((_g87433_ (let () (declare (not safe)) (##length _g87434_))))
          (cond ((let () (declare (not safe)) (##fx= _g87433_ 3))
                 (apply (lambda (_%str83021%_ _%start83022%_ _%end83023%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83021%_
                             _%start83022%_
                             _%end83023%_)))
                        _g87434_))
                ((let () (declare (not safe)) (##fx= _g87433_ 4))
                 (apply (lambda (_%str83027%_
                                 _%start83028%_
                                 _%end83029%_
                                 _%enc83030%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83027%_
                             _%start83028%_
                             _%end83029%_
                             _%enc83030%_)))
                        _g87434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87434_))))))
    (define __substring->bytes__%
      (lambda (_%str82933%_ _%start82934%_ _%end82935%_ _%enc82936%_)
        (let ()
          (let ((_%str82939%_ _%str82933%_))
            (let ((_%start82947%_ _%start82934%_))
              (let ((_%end82955%_ _%end82935%_))
                (let ()
                  (if (eq? _%enc82936%_ 'UTF-8)
                      (string->utf8 _%str82939%_ _%start82947%_ _%end82955%_)
                      (let ((_%out82964%_
                             (open-output-u8vector
                              (cons 'char-encoding: (cons _%enc82936%_ '())))))
                        (write-substring
                         _%str82939%_
                         _%start82947%_
                         _%end82955%_
                         _%out82964%_)
                        (get-output-u8vector _%out82964%_))))))))))
    (define __substring->bytes__0
      (lambda (_%str82969%_ _%start82970%_ _%end82971%_)
        (let ((_%enc82973%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str82969%_
           _%start82970%_
           _%end82971%_
           _%enc82973%_))))
    (define __substring->bytes
      (lambda _g87436_
        (let ((_g87435_ (let () (declare (not safe)) (##length _g87436_))))
          (cond ((let () (declare (not safe)) (##fx= _g87435_ 3))
                 (apply (lambda (_%str82969%_ _%start82970%_ _%end82971%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str82969%_
                             _%start82970%_
                             _%end82971%_)))
                        _g87436_))
                ((let () (declare (not safe)) (##fx= _g87435_ 4))
                 (apply (lambda (_%str82975%_
                                 _%start82976%_
                                 _%end82977%_
                                 _%enc82978%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str82975%_
                             _%start82976%_
                             _%end82977%_
                             _%enc82978%_)))
                        _g87436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87436_))))))
    (define string-empty?
      (lambda (_%str82918%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82918%_))
              (let ()
                (let ((_%str82922%_ _%str82918%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__string-empty? _%str82922%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str82918%_)))))
    (define __string-empty?
      (lambda (_%str82906%_)
        (let ()
          (let ((_%str82909%_ _%str82906%_))
            (let ()
              (let ((__tmp87437
                     (let ()
                       (declare (not safe))
                       (##string-length _%str82909%_))))
                (declare (not safe))
                (##fxzero? __tmp87437)))))))
    (define string-index__%
      (lambda (_%str82858%_ _%char82859%_ _%start82860%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82858%_))
              (let ()
                (let ((_%str82864%_ _%str82858%_))
                  (if (let () (declare (not safe)) (char? _%char82859%_))
                      (let ()
                        (let ((_%char82874%_ _%char82859%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%start82860%_))
                              (let ()
                                (let ((_%start82884%_ _%start82860%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__string-index__%
                                       _%str82864%_
                                       _%char82874%_
                                       _%start82884%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%start82860%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char82859%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str82858%_)))))
    (define string-index__0
      (lambda (_%str82897%_ _%char82898%_)
        (let ((_%start82900%_ '0))
          (declare (not safe))
          (string-index__% _%str82897%_ _%char82898%_ _%start82900%_))))
    (define string-index
      (lambda _g87439_
        (let ((_g87438_ (let () (declare (not safe)) (##length _g87439_))))
          (cond ((let () (declare (not safe)) (##fx= _g87438_ 2))
                 (apply (lambda (_%str82897%_ _%char82898%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str82897%_ _%char82898%_)))
                        _g87439_))
                ((let () (declare (not safe)) (##fx= _g87438_ 3))
                 (apply (lambda (_%str82902%_ _%char82903%_ _%start82904%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str82902%_
                             _%char82903%_
                             _%start82904%_)))
                        _g87439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87439_))))))
    (define __string-index__%
      (lambda (_%str82797%_ _%char82798%_ _%start82799%_)
        (let ()
          (let ((_%str82802%_ _%str82797%_))
            (let ((_%char82810%_ _%char82798%_))
              (let ((_%start82818%_ _%start82799%_))
                (let ()
                  (let ((_%len82827%_
                         (let ()
                           (declare (not safe))
                           (##string-length _%str82802%_))))
                    (let _%lp82829%_ ((_%k82831%_ _%start82818%_))
                      (let ((_%k82833%_ _%k82831%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k82833%_ _%len82827%_))
                            (if (eq? _%char82810%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str82802%_ _%k82833%_)))
                                _%k82833%_
                                (let ((__tmp87440
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k82833%_ '1))))
                                  (declare (not safe))
                                  (_%lp82829%_ __tmp87440)))
                            '#f)))))))))))
    (define __string-index__0
      (lambda (_%str82848%_ _%char82849%_)
        (let ((_%start82851%_ '0))
          (declare (not safe))
          (__string-index__% _%str82848%_ _%char82849%_ _%start82851%_))))
    (define __string-index
      (lambda _g87442_
        (let ((_g87441_ (let () (declare (not safe)) (##length _g87442_))))
          (cond ((let () (declare (not safe)) (##fx= _g87441_ 2))
                 (apply (lambda (_%str82848%_ _%char82849%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str82848%_ _%char82849%_)))
                        _g87442_))
                ((let () (declare (not safe)) (##fx= _g87441_ 3))
                 (apply (lambda (_%str82853%_ _%char82854%_ _%start82855%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str82853%_
                             _%char82854%_
                             _%start82855%_)))
                        _g87442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87442_))))))
    (define string-rindex__%
      (lambda (_%str82758%_ _%char82759%_ _%start82760%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82758%_))
              (let ()
                (let ((_%str82764%_ _%str82758%_))
                  (if (let () (declare (not safe)) (char? _%char82759%_))
                      (let ()
                        (let ((_%char82774%_ _%char82759%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-rindex__%
                               _%str82764%_
                               _%char82774%_
                               _%start82760%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char82759%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str82758%_)))))
    (define string-rindex__0
      (lambda (_%str82787%_ _%char82788%_)
        (let ((_%start82790%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str82787%_ _%char82788%_ _%start82790%_))))
    (define string-rindex
      (lambda _g87444_
        (let ((_g87443_ (let () (declare (not safe)) (##length _g87444_))))
          (cond ((let () (declare (not safe)) (##fx= _g87443_ 2))
                 (apply (lambda (_%str82787%_ _%char82788%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str82787%_ _%char82788%_)))
                        _g87444_))
                ((let () (declare (not safe)) (##fx= _g87443_ 3))
                 (apply (lambda (_%str82792%_ _%char82793%_ _%start82794%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str82792%_
                             _%char82793%_
                             _%start82794%_)))
                        _g87444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87444_))))))
    (define __string-rindex__%
      (lambda (_%str82700%_ _%char82701%_ _%start82702%_)
        (let ()
          (let ((_%str82705%_ _%str82700%_))
            (let ((_%char82713%_ _%char82701%_))
              (let ()
                (let* ((_%len82722%_
                        (let ()
                          (declare (not safe))
                          (##string-length _%str82705%_)))
                       (_%start82724%_
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _%start82702%_))
                            _%start82702%_
                            (let ()
                              (declare (not safe))
                              (##fx- _%len82722%_ '1)))))
                  (let _%lp82727%_ ((_%k82729%_ _%start82724%_))
                    (let ((_%k82731%_ _%k82729%_))
                      (if (let () (declare (not safe)) (##fx>= _%k82731%_ '0))
                          (if (eq? _%char82713%_
                                   (let ()
                                     (declare (not safe))
                                     (##string-ref _%str82705%_ _%k82731%_)))
                              _%k82731%_
                              (let ((__tmp87445
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%k82731%_ '1))))
                                (declare (not safe))
                                (_%lp82727%_ __tmp87445)))
                          '#f))))))))))
    (define __string-rindex__0
      (lambda (_%str82748%_ _%char82749%_)
        (let ((_%start82751%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str82748%_ _%char82749%_ _%start82751%_))))
    (define __string-rindex
      (lambda _g87447_
        (let ((_g87446_ (let () (declare (not safe)) (##length _g87447_))))
          (cond ((let () (declare (not safe)) (##fx= _g87446_ 2))
                 (apply (lambda (_%str82748%_ _%char82749%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str82748%_ _%char82749%_)))
                        _g87447_))
                ((let () (declare (not safe)) (##fx= _g87446_ 3))
                 (apply (lambda (_%str82753%_ _%char82754%_ _%start82755%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str82753%_
                             _%char82754%_
                             _%start82755%_)))
                        _g87447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87447_))))))
    (define string-split
      (lambda (_%str82674%_ _%char82675%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82674%_))
              (let ()
                (let ((_%str82679%_ _%str82674%_))
                  (if (let () (declare (not safe)) (char? _%char82675%_))
                      (let ()
                        (let ((_%char82689%_ _%char82675%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-split _%str82679%_ _%char82689%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char82675%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str82674%_)))))
    (define __string-split
      (lambda (_%str82615%_ _%char82616%_)
        (let ()
          (let ((_%str82619%_ _%str82615%_))
            (let ((_%char82627%_ _%char82616%_))
              (let ()
                (let ((_%len82636%_
                       (let ()
                         (declare (not safe))
                         (##string-length _%str82619%_))))
                  (let _%lp82638%_ ((_%start82640%_ '0) (_%r82641%_ '()))
                    (let ()
                      (let ((_%start82644%_ _%start82640%_))
                        (let ((_%$e82657%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%str82619%_
                                  _%char82627%_
                                  _%start82644%_))))
                          (if _%$e82657%_
                              ((lambda (_%end82660%_)
                                 (let ((_%end82662%_ _%end82660%_))
                                   (let ((__tmp87449
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%end82662%_ '1)))
                                         (__tmp87448
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##substring
                                                   _%str82619%_
                                                   _%start82644%_
                                                   _%end82662%_))
                                                _%r82641%_)))
                                     (declare (not safe))
                                     (_%lp82638%_ __tmp87449 __tmp87448))))
                               _%$e82657%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##fx< _%start82644%_ _%len82636%_))
                                  (let ()
                                    (let ((__tmp87450
                                           (list (let ()
                                                   (declare (not safe))
                                                   (##substring
                                                    _%str82619%_
                                                    _%start82644%_
                                                    _%len82636%_)))))
                                      (declare (not safe))
                                      (__foldl1 cons __tmp87450 _%r82641%_)))
                                  (let () (reverse! _%r82641%_)))))))))))))))
    (define string-join
      (lambda (_%strs82465%_ _%join82466%_)
        (let ()
          (letrec ((_%join-length82469%_
                    (lambda (_%strs82553%_ _%jlen82554%_)
                      (let _%lp82556%_ ((_%rest82558%_ _%strs82553%_)
                                        (_%len82559%_ '0))
                        (let ((_%len82561%_ _%len82559%_))
                          (let* ((_%rest8256982577%_ _%rest82558%_)
                                 (_%else8257182585%_ (lambda () '0))
                                 (_%K8257382603%_
                                  (lambda (_%rest82588%_ _%hd82589%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd82589%_))
                                        (let ((_%hd82591%_ _%hd82589%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest82588%_))
                                              (let ((__tmp87451
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd82591%_))
                                                          _%jlen82554%_
                                                          _%len82561%_)))
                                                (declare (not safe))
                                                (_%lp82556%_
                                                 _%rest82588%_
                                                 __tmp87451))
                                              (let ((__tmp87452
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd82591%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87452
                                                       _%len82561%_))))
                                        (error '"expected string"
                                               _%hd82589%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8256982577%_))
                                (let ((_%hd8257482606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8256982577%_)))
                                      (_%tl8257582608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8256982577%_))))
                                  (let* ((_%hd82611%_ _%hd8257482606%_)
                                         (_%rest82613%_ _%tl8257582608%_))
                                    (declare (not safe))
                                    (_%K8257382603%_
                                     _%rest82613%_
                                     _%hd82611%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8257182585%_)))))))))
            (let* ((_%join82474%_
                    (if (let () (declare (not safe)) (char? _%join82466%_))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (##string _%join82466%_)))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82466%_))
                            (let () _%join82466%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82466%_)))))
                   (_%jlen82476%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join82474%_)))
                   (_%olen82478%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82469%_ _%strs82465%_ _%jlen82476%_)))
                   (_%ostr82480%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen82478%_))))
              (let _%lp82483%_ ((_%rest82485%_ _%strs82465%_) (_%k82486%_ '0))
                (let ()
                  (let ((_%k82489%_ _%k82486%_))
                    (let* ((_%rest8250582513%_ _%rest82485%_)
                           (_%else8250782521%_ (lambda () '""))
                           (_%K8250982541%_
                            (lambda (_%rest82524%_ _%hd82525%_)
                              (let ((_%hd82527%_ _%hd82525%_))
                                (let ((_%hdlen82539%_
                                       (let ()
                                         (declare (not safe))
                                         (##string-length _%hd82527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (pair? _%rest82524%_))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82527%_
                                           '0
                                           _%hdlen82539%_
                                           _%ostr82480%_
                                           _%k82489%_))
                                        (let ((__tmp87453
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82489%_
                                                        _%hdlen82539%_))))
                                          (declare (not safe))
                                          (##substring-move!
                                           _%join82474%_
                                           '0
                                           _%jlen82476%_
                                           _%ostr82480%_
                                           __tmp87453))
                                        (let ((__tmp87454
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82489%_
                                                        _%hdlen82539%_
                                                        _%jlen82476%_))))
                                          (declare (not safe))
                                          (_%lp82483%_
                                           _%rest82524%_
                                           __tmp87454)))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82527%_
                                           '0
                                           _%hdlen82539%_
                                           _%ostr82480%_
                                           _%k82489%_))
                                        _%ostr82480%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%rest8250582513%_))
                          (let ((_%hd8251082544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest8250582513%_)))
                                (_%tl8251182546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest8250582513%_))))
                            (let* ((_%hd82549%_ _%hd8251082544%_)
                                   (_%rest82551%_ _%tl8251182546%_))
                              (declare (not safe))
                              (_%K8250982541%_ _%rest82551%_ _%hd82549%_)))
                          (let ()
                            (declare (not safe))
                            (_%else8250782521%_))))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82391%_ _%port82392%_ _%start82393%_ _%end82394%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82391%_))
              (let ()
                (let ((_%bytes82398%_ _%bytes82391%_))
                  (if (input-port? _%port82392%_)
                      (let ()
                        (let ((_%port82408%_ _%port82392%_))
                          (if ((lambda (_%o82417%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82417%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82417%_ '0))
                                      (fx< _%o82417%_
                                           (u8vector-length _%bytes82398%_))))
                               _%start82393%_)
                              (let ()
                                (let ((_%start82421%_ _%start82393%_))
                                  (if ((lambda (_%o82430%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82430%_))
                                              (fx<= _%start82421%_
                                                    _%o82430%_
                                                    (u8vector-length
                                                     _%bytes82398%_))))
                                       _%end82394%_)
                                      (let ()
                                        (let ((_%end82434%_ _%end82394%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__read-u8vector__%
                                               _%bytes82398%_
                                               _%port82408%_
                                               _%start82421%_
                                               _%end82434%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82394%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82393%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82392%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes82391%_)))))
    (define read-u8vector__0
      (lambda (_%bytes82447%_ _%port82448%_)
        (let* ((_%start82450%_ '0) (_%end82452%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82447%_
           _%port82448%_
           _%start82450%_
           _%end82452%_))))
    (define read-u8vector__1
      (lambda (_%bytes82454%_ _%port82455%_ _%start82456%_)
        (let ((_%end82458%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82454%_
           _%port82455%_
           _%start82456%_
           _%end82458%_))))
    (define read-u8vector
      (lambda _g87456_
        (let ((_g87455_ (let () (declare (not safe)) (##length _g87456_))))
          (cond ((let () (declare (not safe)) (##fx= _g87455_ 2))
                 (apply (lambda (_%bytes82447%_ _%port82448%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82447%_ _%port82448%_)))
                        _g87456_))
                ((let () (declare (not safe)) (##fx= _g87455_ 3))
                 (apply (lambda (_%bytes82454%_ _%port82455%_ _%start82456%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82454%_
                             _%port82455%_
                             _%start82456%_)))
                        _g87456_))
                ((let () (declare (not safe)) (##fx= _g87455_ 4))
                 (apply (lambda (_%bytes82460%_
                                 _%port82461%_
                                 _%start82462%_
                                 _%end82463%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82460%_
                             _%port82461%_
                             _%start82462%_
                             _%end82463%_)))
                        _g87456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87456_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82330%_ _%port82331%_ _%start82332%_ _%end82333%_)
        (let ()
          (let ((_%bytes82336%_ _%bytes82330%_))
            (let ((_%port82344%_ _%port82331%_))
              (let ((_%start82352%_ _%start82332%_))
                (let ((_%end82360%_ _%end82333%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##read-subu8vector
                       _%bytes82336%_
                       _%start82352%_
                       _%end82360%_
                       _%port82344%_))))))))))
    (define __read-u8vector__0
      (lambda (_%bytes82372%_ _%port82373%_)
        (let* ((_%start82375%_ '0) (_%end82377%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82372%_
           _%port82373%_
           _%start82375%_
           _%end82377%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82379%_ _%port82380%_ _%start82381%_)
        (let ((_%end82383%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82379%_
           _%port82380%_
           _%start82381%_
           _%end82383%_))))
    (define __read-u8vector
      (lambda _g87458_
        (let ((_g87457_ (let () (declare (not safe)) (##length _g87458_))))
          (cond ((let () (declare (not safe)) (##fx= _g87457_ 2))
                 (apply (lambda (_%bytes82372%_ _%port82373%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82372%_ _%port82373%_)))
                        _g87458_))
                ((let () (declare (not safe)) (##fx= _g87457_ 3))
                 (apply (lambda (_%bytes82379%_ _%port82380%_ _%start82381%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82379%_
                             _%port82380%_
                             _%start82381%_)))
                        _g87458_))
                ((let () (declare (not safe)) (##fx= _g87457_ 4))
                 (apply (lambda (_%bytes82385%_
                                 _%port82386%_
                                 _%start82387%_
                                 _%end82388%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82385%_
                             _%port82386%_
                             _%start82387%_
                             _%end82388%_)))
                        _g87458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87458_))))))
    (define write-u8vector__%
      (lambda (_%bytes82255%_ _%port82256%_ _%start82257%_ _%end82258%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82255%_))
              (let ()
                (let ((_%bytes82262%_ _%bytes82255%_))
                  (if (output-port? _%port82256%_)
                      (let ()
                        (let ((_%port82272%_ _%port82256%_))
                          (if ((lambda (_%o82281%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82281%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82281%_ '0))
                                      (fx< _%o82281%_
                                           (u8vector-length _%bytes82262%_))))
                               _%start82257%_)
                              (let ()
                                (let ((_%start82285%_ _%start82257%_))
                                  (if ((lambda (_%o82294%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82294%_))
                                              (fx<= _%start82285%_
                                                    _%o82294%_
                                                    (u8vector-length
                                                     _%bytes82262%_))))
                                       _%end82258%_)
                                      (let ()
                                        (let ((_%end82298%_ _%end82258%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__write-u8vector__%
                                               _%bytes82262%_
                                               _%port82272%_
                                               _%start82285%_
                                               _%end82298%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82258%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82257%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82256%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82255%_)))))
    (define write-u8vector__0
      (lambda (_%bytes82311%_ _%port82312%_)
        (let* ((_%start82314%_ '0) (_%end82316%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82311%_
           _%port82312%_
           _%start82314%_
           _%end82316%_))))
    (define write-u8vector__1
      (lambda (_%bytes82318%_ _%port82319%_ _%start82320%_)
        (let ((_%end82322%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82318%_
           _%port82319%_
           _%start82320%_
           _%end82322%_))))
    (define write-u8vector
      (lambda _g87460_
        (let ((_g87459_ (let () (declare (not safe)) (##length _g87460_))))
          (cond ((let () (declare (not safe)) (##fx= _g87459_ 2))
                 (apply (lambda (_%bytes82311%_ _%port82312%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82311%_ _%port82312%_)))
                        _g87460_))
                ((let () (declare (not safe)) (##fx= _g87459_ 3))
                 (apply (lambda (_%bytes82318%_ _%port82319%_ _%start82320%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82318%_
                             _%port82319%_
                             _%start82320%_)))
                        _g87460_))
                ((let () (declare (not safe)) (##fx= _g87459_ 4))
                 (apply (lambda (_%bytes82324%_
                                 _%port82325%_
                                 _%start82326%_
                                 _%end82327%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82324%_
                             _%port82325%_
                             _%start82326%_
                             _%end82327%_)))
                        _g87460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87460_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82194%_ _%port82195%_ _%start82196%_ _%end82197%_)
        (let ()
          (let ((_%bytes82200%_ _%bytes82194%_))
            (let ((_%port82208%_ _%port82195%_))
              (let ((_%start82216%_ _%start82196%_))
                (let ((_%end82224%_ _%end82197%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##write-subu8vector
                       _%bytes82200%_
                       _%start82216%_
                       _%end82224%_
                       _%port82208%_))))))))))
    (define __write-u8vector__0
      (lambda (_%bytes82236%_ _%port82237%_)
        (let* ((_%start82239%_ '0) (_%end82241%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82236%_
           _%port82237%_
           _%start82239%_
           _%end82241%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82243%_ _%port82244%_ _%start82245%_)
        (let ((_%end82247%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82243%_
           _%port82244%_
           _%start82245%_
           _%end82247%_))))
    (define __write-u8vector
      (lambda _g87462_
        (let ((_g87461_ (let () (declare (not safe)) (##length _g87462_))))
          (cond ((let () (declare (not safe)) (##fx= _g87461_ 2))
                 (apply (lambda (_%bytes82236%_ _%port82237%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82236%_
                             _%port82237%_)))
                        _g87462_))
                ((let () (declare (not safe)) (##fx= _g87461_ 3))
                 (apply (lambda (_%bytes82243%_ _%port82244%_ _%start82245%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82243%_
                             _%port82244%_
                             _%start82245%_)))
                        _g87462_))
                ((let () (declare (not safe)) (##fx= _g87461_ 4))
                 (apply (lambda (_%bytes82249%_
                                 _%port82250%_
                                 _%start82251%_
                                 _%end82252%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82249%_
                             _%port82250%_
                             _%start82251%_
                             _%end82252%_)))
                        _g87462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87462_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82162%_
               _%dbg-exprs82163%_
               _%dbg-thunks82164%_
               _%expr82165%_
               _%thunk82166%_)
        (letrec ((_%o82168%_ (current-output-port))
                 (_%e82169%_ (current-error-port))
                 (_%p82170%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82171%_
                  (lambda ()
                    (force-output _%o82168%_)
                    (force-output _%e82169%_)))
                 (_%d82172%_
                  (lambda (_%x82179%_) (display _%x82179%_ _%e82169%_)))
                 (_%w82173%_
                  (lambda (_%x82181%_) (_%p82170%_ _%x82181%_ _%e82169%_)))
                 (_%n82174%_ (lambda () (newline _%e82169%_)))
                 (_%v82175%_
                  (lambda (_%l82184%_)
                    (for-each
                     (lambda (_%x82186%_)
                       (let () (declare (not safe)) (_%d82172%_ '" "))
                       (let () (declare (not safe)) (_%w82173%_ _%x82186%_)))
                     _%l82184%_)
                    (let () (declare (not safe)) (_%n82174%_))))
                 (_%x82176%_
                  (lambda (_%expr82188%_ _%thunk82189%_)
                    (let () (declare (not safe)) (_%f82171%_))
                    (let () (declare (not safe)) (_%d82172%_ '"  "))
                    (let () (declare (not safe)) (_%w82173%_ _%expr82188%_))
                    (let () (declare (not safe)) (_%d82172%_ '" =>"))
                    (call-with-values
                     _%thunk82189%_
                     (lambda _%x82191%_
                       (let () (declare (not safe)) (_%v82175%_ _%x82191%_))
                       (let () (declare (not safe)) (_%f82171%_))
                       (apply values _%x82191%_))))))
          (if _%tag82162%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82162%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82171%_))
                      (let () (declare (not safe)) (_%d82172%_ _%tag82162%_))
                      (let () (declare (not safe)) (_%n82174%_))))
                (for-each _%x82176%_ _%dbg-exprs82163%_ _%dbg-thunks82164%_)
                (if _%thunk82166%_
                    (let ()
                      (declare (not safe))
                      (_%x82176%_ _%expr82165%_ _%thunk82166%_))
                    '#!void))
              (if _%thunk82166%_ (_%thunk82166%_) '#!void)))))))
