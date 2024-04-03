(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712161238)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85625%_
        (let () (for-each display _%args85625%_) (newline))))
    (define display*
      (lambda _%args85622%_ (let () (for-each display _%args85622%_))))
    (define file-newer?
      (lambda (_%file185597%_ _%file285598%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file185597%_))
              (let ((_%file185602%_ _%file185597%_))
                (if (let () (declare (not safe)) (string? _%file285598%_))
                    (let ((_%file285612%_ _%file285598%_))
                      (declare (not safe))
                      (__file-newer? _%file185602%_ _%file285612%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file285598%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@61.20-61.25"
                 'contract:
                 'string?
                 'value:
                 _%file185597%_)
                '#!void)))))
    (define __file-newer?
      (lambda (_%file185545%_ _%file285546%_)
        (let ()
          (let* ((_%file185549%_ _%file185545%_)
                 (_%file285557%_ _%file285546%_))
            (letrec ((_%modification-time85566%_
                      (lambda (_%file85585%_)
                        (let ((_%file85588%_ _%file85585%_))
                          (declare (not safe))
                          (_%__modification-time85567%_ _%file85588%_))))
                     (_%__modification-time85567%_
                      (lambda (_%file85569%_)
                        (let ()
                          (let* ((_%file85572%_ _%file85569%_)
                                 (__tmp87366
                                  (let ((__tmp87367
                                         (let ()
                                           (declare (not safe))
                                           (##file-info _%file85572%_ '#t))))
                                    (declare (not safe))
                                    (##file-info-last-modification-time
                                     __tmp87367))))
                            (declare (not safe))
                            (##time->seconds __tmp87366))))))
              (let ((__tmp87369
                     (let ()
                       (declare (not safe))
                       (_%__modification-time85567%_ _%file185549%_)))
                    (__tmp87368
                     (let ()
                       (declare (not safe))
                       (_%__modification-time85567%_ _%file285557%_))))
                (declare (not safe))
                (##fl> __tmp87369 __tmp87368)))))))
    (define create-directory*__%
      (lambda (_%dir85510%_ _%perms85511%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir85510%_))
              (let ((_%dir85515%_ _%dir85510%_))
                (if (let () (declare (not safe)) (fixnum? _%perms85511%_))
                    (let ((_%perms85525%_ _%perms85511%_))
                      (declare (not safe))
                      (__create-directory*__% _%dir85515%_ _%perms85525%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms85511%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@72.26-72.29"
                 'contract:
                 'string?
                 'value:
                 _%dir85510%_)
                '#!void)))))
    (define create-directory*__0
      (lambda (_%dir85538%_)
        (let ((_%perms85540%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir85538%_ _%perms85540%_))))
    (define create-directory*
      (lambda _g87371_
        (let ((_g87370_ (let () (declare (not safe)) (##length _g87371_))))
          (cond ((let () (declare (not safe)) (##fx= _g87370_ 1))
                 (apply (lambda (_%dir85538%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir85538%_)))
                        _g87371_))
                ((let () (declare (not safe)) (##fx= _g87370_ 2))
                 (apply (lambda (_%dir85542%_ _%perms85543%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir85542%_
                             _%perms85543%_)))
                        _g87371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87371_))))))
    (define __create-directory*__%
      (lambda (_%dir85434%_ _%perms85435%_)
        (let ()
          (let* ((_%dir85438%_ _%dir85434%_) (_%perms85446%_ _%perms85435%_))
            (letrec ((_%create185455%_
                      (lambda (_%path85487%_)
                        (let ((_%path85490%_ _%path85487%_))
                          (declare (not safe))
                          (_%__create185456%_ _%path85490%_))))
                     (_%__create185456%_
                      (lambda (_%path85468%_)
                        (let ((_%path85471%_ _%path85468%_))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%path85471%_))
                              (let ()
                                (if (eq? (file-type _%path85471%_) 'directory)
                                    '#!void
                                    (error '"Path component is not a directory"
                                           _%path85471%_)))
                              (if _%perms85446%_
                                  (let ()
                                    (create-directory
                                     (cons 'path:
                                           (cons _%path85471%_
                                                 (cons 'permissions:
                                                       (cons _%perms85446%_
                                                             '()))))))
                                  (let ()
                                    (create-directory _%path85471%_))))))))
              (if (let () (declare (not safe)) (##file-exists? _%dir85438%_))
                  '#!void
                  (let _%lp85458%_ ((_%start85460%_ '0))
                    (let ((_%$e85462%_
                           (let ()
                             (declare (not safe))
                             (string-index__%
                              _%dir85438%_
                              '#\/
                              _%start85460%_))))
                      (if _%$e85462%_
                          ((lambda (_%x85465%_)
                             (if (let ()
                                   (declare (not safe))
                                   (##fx> _%x85465%_ '0))
                                 (let ((__tmp87372
                                        (substring
                                         _%dir85438%_
                                         '0
                                         _%x85465%_)))
                                   (declare (not safe))
                                   (_%__create185456%_ __tmp87372))
                                 '#!void)
                             (let ((__tmp87373
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%x85465%_ '1))))
                               (declare (not safe))
                               (_%lp85458%_ __tmp87373)))
                           _%$e85462%_)
                          (let ()
                            (declare (not safe))
                            (_%__create185456%_ _%dir85438%_))))))
              '#!void)))))
    (define __create-directory*__0
      (lambda (_%dir85502%_)
        (let ((_%perms85504%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir85502%_ _%perms85504%_))))
    (define __create-directory*
      (lambda _g87375_
        (let ((_g87374_ (let () (declare (not safe)) (##length _g87375_))))
          (cond ((let () (declare (not safe)) (##fx= _g87374_ 1))
                 (apply (lambda (_%dir85502%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir85502%_)))
                        _g87375_))
                ((let () (declare (not safe)) (##fx= _g87374_ 2))
                 (apply (lambda (_%dir85506%_ _%perms85507%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir85506%_
                             _%perms85507%_)))
                        _g87375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87375_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85430%_ (let () '#t)))
    (define true? (lambda (_%obj85427%_) (let () (eq? _%obj85427%_ '#t))))
    (define false (lambda _%ignore85424%_ (let () '#f)))
    (define void (lambda _%ignore85421%_ (let () '#!void)))
    (define void? (lambda (_%obj85418%_) (let () (eq? _%obj85418%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85415%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85415%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85412%_) (let () (eq? _%obj85412%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85409%_) (let () (eq? _%obj85409%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85406%_) (let () (eq? _%obj85406%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85401%_)
        (let ()
          (let* ((_%t85404%_
                  (let () (declare (not safe)) (##type _%obj85401%_)))
                 (__tmp87376
                  (let () (declare (not safe)) (##fxand _%t85404%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87376)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85398%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85398%_))
              (let () (declare (not safe)) (##fx>= _%obj85398%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85392%_)
        (let ((_%$e85395%_ (let () (declare (not safe)) (pair? _%obj85392%_))))
          (if _%$e85395%_
              _%$e85395%_
              (let () (declare (not safe)) (null? _%obj85392%_))))))
    (define values-count
      (lambda (_%obj85389%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85389%_))
              (let () (declare (not safe)) (##vector-length _%obj85389%_))
              '1))))
    (define values-ref
      (lambda (_%obj85374%_ _%k85375%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85375%_))
              (let ((_%k85379%_ _%k85375%_))
                (declare (not safe))
                (__values-ref _%obj85374%_ _%k85379%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@198.23-198.24"
                 'contract:
                 'fixnum?
                 'value:
                 _%k85375%_)
                '#!void)))))
    (define __values-ref
      (lambda (_%obj85361%_ _%k85362%_)
        (let ((_%k85365%_ _%k85362%_))
          (if (let () (declare (not safe)) (##values? _%obj85361%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85361%_ _%k85365%_))
              _%obj85361%_))))
    (define values->list
      (lambda (_%obj85358%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85358%_))
              (let () (declare (not safe)) (##vector->list _%obj85358%_))
              (list _%obj85358%_)))))
    (define foldl1
      (lambda (_%f85342%_ _%iv85343%_ _%lst85344%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85342%_))
              (let ((_%f85348%_ _%f85342%_))
                (declare (not safe))
                (__foldl1 _%f85348%_ _%iv85343%_ _%lst85344%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@221.15-221.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85342%_)
                '#!void)))))
    (define __foldl1
      (lambda (_%f85290%_ _%iv85291%_ _%lst85292%_)
        (let ((_%f85295%_ _%f85290%_))
          (let _%lp85304%_ ((_%rest85306%_ _%lst85292%_)
                            (_%r85307%_ _%iv85291%_))
            (let* ((_%rest8530885316%_ _%rest85306%_)
                   (_%else8531085324%_ (lambda () _%r85307%_))
                   (_%K8531285330%_
                    (lambda (_%rest85327%_ _%x85328%_)
                      (let ((__tmp87377
                             (let ()
                               (declare (not safe))
                               (_%f85295%_ _%x85328%_ _%r85307%_))))
                        (declare (not safe))
                        (_%lp85304%_ _%rest85327%_ __tmp87377)))))
              (if (let () (declare (not safe)) (##pair? _%rest8530885316%_))
                  (let ((_%hd8531385333%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8530885316%_)))
                        (_%tl8531485335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8530885316%_))))
                    (let* ((_%x85338%_ _%hd8531385333%_)
                           (_%rest85340%_ _%tl8531485335%_))
                      (declare (not safe))
                      (_%K8531285330%_ _%rest85340%_ _%x85338%_)))
                  (let () (declare (not safe)) (_%else8531085324%_))))))))
    (define foldl2
      (lambda (_%f85273%_ _%iv85274%_ _%lst185275%_ _%lst285276%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85273%_))
              (let ((_%f85280%_ _%f85273%_))
                (declare (not safe))
                (__foldl2 _%f85280%_ _%iv85274%_ _%lst185275%_ _%lst285276%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@228.15-228.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85273%_)
                '#!void)))))
    (define __foldl2
      (lambda (_%f85186%_ _%iv85187%_ _%lst185188%_ _%lst285189%_)
        (let ((_%f85192%_ _%f85186%_))
          (let _%lp85201%_ ((_%rest185203%_ _%lst185188%_)
                            (_%rest285204%_ _%lst285189%_)
                            (_%r85205%_ _%iv85187%_))
            (let* ((_%rest18520685214%_ _%rest185203%_)
                   (_%else8520885222%_ (lambda () _%r85205%_))
                   (_%K8521085261%_
                    (lambda (_%rest185225%_ _%x185226%_)
                      (let* ((_%rest28522785235%_ _%rest285204%_)
                             (_%else8522985243%_ (lambda () _%r85205%_))
                             (_%K8523185249%_
                              (lambda (_%rest285246%_ _%x285247%_)
                                (let ((__tmp87378
                                       (let ()
                                         (declare (not safe))
                                         (_%f85192%_
                                          _%x185226%_
                                          _%x285247%_
                                          _%r85205%_))))
                                  (declare (not safe))
                                  (_%lp85201%_
                                   _%rest185225%_
                                   _%rest285246%_
                                   __tmp87378)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28522785235%_))
                            (let ((_%hd8523285252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28522785235%_)))
                                  (_%tl8523385254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28522785235%_))))
                              (let* ((_%x285257%_ _%hd8523285252%_)
                                     (_%rest285259%_ _%tl8523385254%_))
                                (declare (not safe))
                                (_%K8523185249%_ _%rest285259%_ _%x285257%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8522985243%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18520685214%_))
                  (let ((_%hd8521185264%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18520685214%_)))
                        (_%tl8521285266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18520685214%_))))
                    (let* ((_%x185269%_ _%hd8521185264%_)
                           (_%rest185271%_ _%tl8521285266%_))
                      (declare (not safe))
                      (_%K8521085261%_ _%rest185271%_ _%x185269%_)))
                  (let () (declare (not safe)) (_%else8520885222%_))))))))
    (define foldl
      (lambda _g87380_
        (let ((_g87379_ (let () (declare (not safe)) (##length _g87380_))))
          (cond ((let () (declare (not safe)) (##fx= _g87379_ 3))
                 (apply (lambda (_%f85171%_ _%iv85172%_ _%lst85173%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85171%_ _%iv85172%_ _%lst85173%_)))
                        _g87380_))
                ((let () (declare (not safe)) (##fx= _g87379_ 4))
                 (apply (lambda (_%f85175%_
                                 _%iv85176%_
                                 _%lst185177%_
                                 _%lst285178%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85175%_
                                    _%iv85176%_
                                    _%lst185177%_
                                    _%lst285178%_)))
                        _g87380_))
                ((let () (declare (not safe)) (##fx>= _g87379_ 4))
                 (apply foldl* _g87380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87380_))))))
    (define foldl*
      (lambda (_%f85155%_ _%iv85156%_ . _%rest85157%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85155%_))
              (let ((_%f85161%_ _%f85155%_))
                (declare (not safe))
                (##apply __foldl* _%f85161%_ _%iv85156%_ _%rest85157%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@246.15-246.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85155%_)
                '#!void)))))
    (define __foldl*
      (lambda (_%f85133%_ _%iv85134%_ . _%rest85135%_)
        (let ((_%f85138%_ _%f85133%_))
          (let _%recur85147%_ ((_%iv85149%_ _%iv85134%_)
                               (_%rest85150%_ _%rest85135%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85150%_))
                (let ((__tmp87382
                       (let ((__tmp87383
                              (let ((__tmp87385
                                     (lambda (_%xs85152%_ _%r85153%_)
                                       (cons (car _%xs85152%_) _%r85153%_)))
                                    (__tmp87384 (list _%iv85149%_)))
                                (declare (not safe))
                                (__foldr1
                                 __tmp87385
                                 __tmp87384
                                 _%rest85150%_))))
                         (declare (not safe))
                         (##apply _%f85138%_ __tmp87383)))
                      (__tmp87381 (map cdr _%rest85150%_)))
                  (declare (not safe))
                  (_%recur85147%_ __tmp87382 __tmp87381))
                _%iv85149%_)))))
    (define foldr1
      (lambda (_%f85117%_ _%iv85118%_ _%lst85119%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85117%_))
              (let ((_%f85123%_ _%f85117%_))
                (declare (not safe))
                (__foldr1 _%f85123%_ _%iv85118%_ _%lst85119%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@256.15-256.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85117%_)
                '#!void)))))
    (define __foldr1
      (lambda (_%f85066%_ _%iv85067%_ _%lst85068%_)
        (let ((_%f85071%_ _%f85066%_))
          (let _%recur85080%_ ((_%rest85082%_ _%lst85068%_))
            (let* ((_%rest8508385091%_ _%rest85082%_)
                   (_%else8508585099%_ (lambda () _%iv85067%_))
                   (_%K8508785105%_
                    (lambda (_%rest85102%_ _%x85103%_)
                      (let ((__tmp87386
                             (let ()
                               (declare (not safe))
                               (_%recur85080%_ _%rest85102%_))))
                        (declare (not safe))
                        (_%f85071%_ _%x85103%_ __tmp87386)))))
              (if (let () (declare (not safe)) (##pair? _%rest8508385091%_))
                  (let ((_%hd8508885108%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8508385091%_)))
                        (_%tl8508985110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8508385091%_))))
                    (let* ((_%x85113%_ _%hd8508885108%_)
                           (_%rest85115%_ _%tl8508985110%_))
                      (declare (not safe))
                      (_%K8508785105%_ _%rest85115%_ _%x85113%_)))
                  (let () (declare (not safe)) (_%else8508585099%_))))))))
    (define foldr2
      (lambda (_%f85049%_ _%iv85050%_ _%lst185051%_ _%lst285052%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85049%_))
              (let ((_%f85056%_ _%f85049%_))
                (declare (not safe))
                (__foldr2 _%f85056%_ _%iv85050%_ _%lst185051%_ _%lst285052%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@263.15-263.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85049%_)
                '#!void)))))
    (define __foldr2
      (lambda (_%f84963%_ _%iv84964%_ _%lst184965%_ _%lst284966%_)
        (let ((_%f84969%_ _%f84963%_))
          (let _%recur84978%_ ((_%rest184980%_ _%lst184965%_)
                               (_%rest284981%_ _%lst284966%_))
            (let* ((_%rest18498284990%_ _%rest184980%_)
                   (_%else8498484998%_ (lambda () _%iv84964%_))
                   (_%K8498685037%_
                    (lambda (_%rest185001%_ _%x185002%_)
                      (let* ((_%rest28500385011%_ _%rest284981%_)
                             (_%else8500585019%_ (lambda () _%iv84964%_))
                             (_%K8500785025%_
                              (lambda (_%rest285022%_ _%x285023%_)
                                (let ((__tmp87387
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84978%_
                                          _%rest185001%_
                                          _%rest285022%_))))
                                  (declare (not safe))
                                  (_%f84969%_
                                   _%x185002%_
                                   _%x285023%_
                                   __tmp87387)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28500385011%_))
                            (let ((_%hd8500885028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28500385011%_)))
                                  (_%tl8500985030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28500385011%_))))
                              (let* ((_%x285033%_ _%hd8500885028%_)
                                     (_%rest285035%_ _%tl8500985030%_))
                                (declare (not safe))
                                (_%K8500785025%_ _%rest285035%_ _%x285033%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8500585019%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18498284990%_))
                  (let ((_%hd8498785040%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18498284990%_)))
                        (_%tl8498885042%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18498284990%_))))
                    (let* ((_%x185045%_ _%hd8498785040%_)
                           (_%rest185047%_ _%tl8498885042%_))
                      (declare (not safe))
                      (_%K8498685037%_ _%rest185047%_ _%x185045%_)))
                  (let () (declare (not safe)) (_%else8498484998%_))))))))
    (define foldr
      (lambda _g87389_
        (let ((_g87388_ (let () (declare (not safe)) (##length _g87389_))))
          (cond ((let () (declare (not safe)) (##fx= _g87388_ 3))
                 (apply (lambda (_%f84948%_ _%iv84949%_ _%lst84950%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f84948%_ _%iv84949%_ _%lst84950%_)))
                        _g87389_))
                ((let () (declare (not safe)) (##fx= _g87388_ 4))
                 (apply (lambda (_%f84952%_
                                 _%iv84953%_
                                 _%lst184954%_
                                 _%lst284955%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f84952%_
                                    _%iv84953%_
                                    _%lst184954%_
                                    _%lst284955%_)))
                        _g87389_))
                ((let () (declare (not safe)) (##fx>= _g87388_ 4))
                 (apply foldr* _g87389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87389_))))))
    (define foldr*
      (lambda (_%f84932%_ _%iv84933%_ . _%rest84934%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84932%_))
              (let ((_%f84938%_ _%f84932%_))
                (declare (not safe))
                (##apply __foldr* _%f84938%_ _%iv84933%_ _%rest84934%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@281.15-281.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84932%_)
                '#!void)))))
    (define __foldr*
      (lambda (_%f84911%_ _%iv84912%_ . _%rest84913%_)
        (let ((_%f84916%_ _%f84911%_))
          (let _%recur84925%_ ((_%rest84927%_ _%rest84913%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84927%_))
                (let ((__tmp87390
                       (let ((__tmp87393
                              (lambda (_%xs84929%_ _%r84930%_)
                                (cons (car _%xs84929%_) _%r84930%_)))
                             (__tmp87391
                              (list (let ((__tmp87392 (map cdr _%rest84927%_)))
                                      (declare (not safe))
                                      (_%recur84925%_ __tmp87392)))))
                         (declare (not safe))
                         (__foldr1 __tmp87393 __tmp87391 _%rest84927%_))))
                  (declare (not safe))
                  (##apply _%f84916%_ __tmp87390))
                _%iv84912%_)))))
    (define remove-nulls!
      (lambda (_%l84798%_)
        (let* ((_%l8479984812%_ _%l84798%_)
               (_%E8480384816%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8479984812%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8480884901%_
                 (lambda (_%r84899%_)
                   (let () (declare (not safe)) (remove-nulls! _%r84899%_))))
                (_%K8480584888%_
                 (lambda (_%r84828%_)
                   (let _%loop84830%_ ((_%l84832%_ _%l84798%_)
                                       (_%r84833%_ _%r84828%_))
                     (let* ((_%r8483484847%_ _%r84833%_)
                            (_%E8483884851%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8483484847%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8484384878%_
                              (lambda (_%rr84876%_)
                                (let ((__tmp87395 _%l84832%_)
                                      (__tmp87394
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr84876%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87395 __tmp87394))))
                             (_%K8484084865%_
                              (lambda (_%rr84863%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop84830%_ _%r84833%_ _%rr84863%_))))
                             (_%K8483984856%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8483484847%_))
                             (let ((_%tl8484584883%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8483484847%_)))
                                   (_%hd8484484881%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8483484847%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8484484881%_))
                                   (let ((_%rr84886%_ _%tl8484584883%_))
                                     (declare (not safe))
                                     (_%K8484384878%_ _%rr84886%_))
                                   (let ((_%rr84871%_ _%tl8484584883%_))
                                     (declare (not safe))
                                     (_%K8484084865%_ _%rr84871%_))))
                             '#!void))))
                   _%l84798%_))
                (_%K8480484821%_ (lambda () _%l84798%_)))
            (if (let () (declare (not safe)) (##pair? _%l8479984812%_))
                (let ((_%tl8481084906%_
                       (let () (declare (not safe)) (##cdr _%l8479984812%_)))
                      (_%hd8480984904%_
                       (let () (declare (not safe)) (##car _%l8479984812%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8480984904%_))
                      (let ((_%r84909%_ _%tl8481084906%_))
                        (declare (not safe))
                        (remove-nulls! _%r84909%_))
                      (let ((_%r84894%_ _%tl8481084906%_))
                        (declare (not safe))
                        (_%K8480584888%_ _%r84894%_))))
                (let () (declare (not safe)) (_%K8480484821%_)))))))
    (define append1!
      (lambda (_%l84783%_ _%x84784%_)
        (let ((_%l284787%_ (cons _%x84784%_ '())))
          (if (let () (declare (not safe)) (pair? _%l84783%_))
              (let ((_%l84789%_ _%l84783%_))
                (let ((__tmp87396
                       (let () (declare (not safe)) (##last-pair _%l84789%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87396 _%l284787%_))
                _%l84789%_)
              _%l284787%_))))
    (define append-reverse-until
      (lambda (_%pred84767%_ _%rhead84768%_ _%tail84769%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84767%_))
              (let ((_%pred84773%_ _%pred84767%_))
                (declare (not safe))
                (__append-reverse-until
                 _%pred84773%_
                 _%rhead84768%_
                 _%tail84769%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@321.29-321.33"
                 'contract:
                 'procedure?
                 'value:
                 _%pred84767%_)
                '#!void)))))
    (define __append-reverse-until
      (lambda (_%pred84709%_ _%rhead84710%_ _%tail84711%_)
        (let ((_%pred84714%_ _%pred84709%_))
          (let _%loop84723%_ ((_%rhead84725%_ _%rhead84710%_)
                              (_%tail84726%_ _%tail84711%_))
            (let ()
              (let* ((_%rhead8472884737%_ _%rhead84725%_)
                     (_%E8473184741%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rhead8472884737%_
                               '([])
                               '([a :: r]))
                        '#!void)))
                (let ((_%K8473584764%_ (lambda () (values '() _%tail84726%_)))
                      (_%K8473284748%_
                       (lambda (_%r84745%_ _%a84746%_)
                         (if (let ()
                               (declare (not safe))
                               (_%pred84714%_ _%a84746%_))
                             (values _%rhead84725%_ _%tail84726%_)
                             (let ((__tmp87397
                                    (cons _%a84746%_ _%tail84726%_)))
                               (declare (not safe))
                               (_%loop84723%_ _%r84745%_ __tmp87397))))))
                  (let ((_%try-match8473084760%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rhead8472884737%_))
                               (let ((_%tl8473484753%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rhead8472884737%_)))
                                     (_%hd8473384751%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rhead8472884737%_))))
                                 (let ((_%a84756%_ _%hd8473384751%_)
                                       (_%r84758%_ _%tl8473484753%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K8473284748%_ _%r84758%_ _%a84756%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%E8473184741%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%rhead8472884737%_))
                        (let () (declare (not safe)) (_%K8473584764%_))
                        (let ()
                          (declare (not safe))
                          (_%try-match8473084760%_)))))))))))
    (define andmap1
      (lambda (_%f84694%_ _%lst84695%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84694%_))
              (let ((_%f84699%_ _%f84694%_))
                (declare (not safe))
                (__andmap1 _%f84699%_ _%lst84695%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@332.16-332.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f84694%_)
                '#!void)))))
    (define __andmap1
      (lambda (_%f84643%_ _%lst84644%_)
        (let ((_%f84647%_ _%f84643%_))
          (let _%lp84656%_ ((_%rest84658%_ _%lst84644%_))
            (let ()
              (let* ((_%rest8466084668%_ _%rest84658%_)
                     (_%else8466284676%_ (lambda () '#t))
                     (_%K8466484682%_
                      (lambda (_%rest84679%_ _%x84680%_)
                        (if (let ()
                              (declare (not safe))
                              (_%f84647%_ _%x84680%_))
                            (let ()
                              (declare (not safe))
                              (_%lp84656%_ _%rest84679%_))
                            '#f))))
                (if (let () (declare (not safe)) (##pair? _%rest8466084668%_))
                    (let ((_%hd8466584685%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8466084668%_)))
                          (_%tl8466684687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8466084668%_))))
                      (let* ((_%x84690%_ _%hd8466584685%_)
                             (_%rest84692%_ _%tl8466684687%_))
                        (declare (not safe))
                        (_%K8466484682%_ _%rest84692%_ _%x84690%_)))
                    (let () (declare (not safe)) (_%else8466284676%_)))))))))
    (define andmap2
      (lambda (_%f84627%_ _%lst184628%_ _%lst284629%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84627%_))
              (let ((_%f84633%_ _%f84627%_))
                (declare (not safe))
                (__andmap2 _%f84633%_ _%lst184628%_ _%lst284629%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@341.16-341.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f84627%_)
                '#!void)))))
    (define __andmap2
      (lambda (_%f84541%_ _%lst184542%_ _%lst284543%_)
        (let ((_%f84546%_ _%f84541%_))
          (let _%lp84555%_ ((_%rest184557%_ _%lst184542%_)
                            (_%rest284558%_ _%lst284543%_))
            (let ()
              (let* ((_%rest18456084568%_ _%rest184557%_)
                     (_%else8456284576%_ (lambda () '#t))
                     (_%K8456484615%_
                      (lambda (_%rest184579%_ _%x184580%_)
                        (let* ((_%rest28458184589%_ _%rest284558%_)
                               (_%else8458384597%_ (lambda () '#t))
                               (_%K8458584603%_
                                (lambda (_%rest284600%_ _%x284601%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (_%f84546%_ _%x184580%_ _%x284601%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84555%_
                                         _%rest184579%_
                                         _%rest284600%_))
                                      '#f))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28458184589%_))
                              (let ((_%hd8458684606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28458184589%_)))
                                    (_%tl8458784608%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28458184589%_))))
                                (let* ((_%x284611%_ _%hd8458684606%_)
                                       (_%rest284613%_ _%tl8458784608%_))
                                  (declare (not safe))
                                  (_%K8458584603%_
                                   _%rest284613%_
                                   _%x284611%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8458384597%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18456084568%_))
                    (let ((_%hd8456584618%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18456084568%_)))
                          (_%tl8456684620%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18456084568%_))))
                      (let* ((_%x184623%_ _%hd8456584618%_)
                             (_%rest184625%_ _%tl8456684620%_))
                        (declare (not safe))
                        (_%K8456484615%_ _%rest184625%_ _%x184623%_)))
                    (let () (declare (not safe)) (_%else8456284576%_)))))))))
    (define andmap
      (lambda _g87399_
        (let ((_g87398_ (let () (declare (not safe)) (##length _g87399_))))
          (cond ((let () (declare (not safe)) (##fx= _g87398_ 2))
                 (apply (lambda (_%f84529%_ _%lst84530%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f84529%_ _%lst84530%_)))
                        _g87399_))
                ((let () (declare (not safe)) (##fx= _g87398_ 3))
                 (apply (lambda (_%f84532%_ _%lst184533%_ _%lst284534%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f84532%_ _%lst184533%_ _%lst284534%_)))
                        _g87399_))
                ((let () (declare (not safe)) (##fx>= _g87398_ 3))
                 (apply andmap* _g87399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87399_))))))
    (define andmap*
      (lambda (_%f84514%_ . _%rest84515%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84514%_))
              (let ((_%f84519%_ _%f84514%_))
                (declare (not safe))
                (##apply __andmap* _%f84519%_ _%rest84515%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@361.16-361.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f84514%_)
                '#!void)))))
    (define __andmap*
      (lambda (_%f84496%_ . _%rest84497%_)
        (let ((_%f84500%_ _%f84496%_))
          (let _%recur84509%_ ((_%rest84511%_ _%rest84497%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84511%_))
                  (if (let ((__tmp87400 (map car _%rest84511%_)))
                        (declare (not safe))
                        (##apply _%f84500%_ __tmp87400))
                      (let ((__tmp87401 (map cdr _%rest84511%_)))
                        (declare (not safe))
                        (_%recur84509%_ __tmp87401))
                      '#f)
                  '#t))))))
    (define ormap1
      (lambda (_%f84481%_ _%lst84482%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84481%_))
              (let ((_%f84486%_ _%f84481%_))
                (declare (not safe))
                (__ormap1 _%f84486%_ _%lst84482%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@370.15-370.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84481%_)
                '#!void)))))
    (define __ormap1
      (lambda (_%f84428%_ _%lst84429%_)
        (let ((_%f84432%_ _%f84428%_))
          (let _%lp84441%_ ((_%rest84443%_ _%lst84429%_))
            (let* ((_%rest8444484452%_ _%rest84443%_)
                   (_%else8444684460%_ (lambda () '#f))
                   (_%K8444884469%_
                    (lambda (_%rest84463%_ _%x84464%_)
                      (let ((_%$e84466%_
                             (let ()
                               (declare (not safe))
                               (_%f84432%_ _%x84464%_))))
                        (if _%$e84466%_
                            _%$e84466%_
                            (let ()
                              (declare (not safe))
                              (_%lp84441%_ _%rest84463%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest8444484452%_))
                  (let ((_%hd8444984472%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8444484452%_)))
                        (_%tl8445084474%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8444484452%_))))
                    (let* ((_%x84477%_ _%hd8444984472%_)
                           (_%rest84479%_ _%tl8445084474%_))
                      (declare (not safe))
                      (_%K8444884469%_ _%rest84479%_ _%x84477%_)))
                  (let () (declare (not safe)) (_%else8444684460%_))))))))
    (define ormap2
      (lambda (_%f84412%_ _%lst184413%_ _%lst284414%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84412%_))
              (let ((_%f84418%_ _%f84412%_))
                (declare (not safe))
                (__ormap2 _%f84418%_ _%lst184413%_ _%lst284414%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@377.15-377.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84412%_)
                '#!void)))))
    (define __ormap2
      (lambda (_%f84324%_ _%lst184325%_ _%lst284326%_)
        (let ((_%f84329%_ _%f84324%_))
          (let _%lp84338%_ ((_%rest184340%_ _%lst184325%_)
                            (_%rest284341%_ _%lst284326%_))
            (let* ((_%rest18434284350%_ _%rest184340%_)
                   (_%else8434484358%_ (lambda () '#f))
                   (_%K8434684400%_
                    (lambda (_%rest184361%_ _%x184362%_)
                      (let* ((_%rest28436384371%_ _%rest284341%_)
                             (_%else8436584379%_ (lambda () '#f))
                             (_%K8436784388%_
                              (lambda (_%rest284382%_ _%x284383%_)
                                (let ((_%$e84385%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84329%_
                                          _%x184362%_
                                          _%x284383%_))))
                                  (if _%$e84385%_
                                      _%$e84385%_
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84338%_
                                         _%rest184361%_
                                         _%rest284382%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28436384371%_))
                            (let ((_%hd8436884391%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28436384371%_)))
                                  (_%tl8436984393%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28436384371%_))))
                              (let* ((_%x284396%_ _%hd8436884391%_)
                                     (_%rest284398%_ _%tl8436984393%_))
                                (declare (not safe))
                                (_%K8436784388%_ _%rest284398%_ _%x284396%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8436584379%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18434284350%_))
                  (let ((_%hd8434784403%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18434284350%_)))
                        (_%tl8434884405%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18434284350%_))))
                    (let* ((_%x184408%_ _%hd8434784403%_)
                           (_%rest184410%_ _%tl8434884405%_))
                      (declare (not safe))
                      (_%K8434684400%_ _%rest184410%_ _%x184408%_)))
                  (let () (declare (not safe)) (_%else8434484358%_))))))))
    (define ormap
      (lambda _g87403_
        (let ((_g87402_ (let () (declare (not safe)) (##length _g87403_))))
          (cond ((let () (declare (not safe)) (##fx= _g87402_ 2))
                 (apply (lambda (_%f84312%_ _%lst84313%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84312%_ _%lst84313%_)))
                        _g87403_))
                ((let () (declare (not safe)) (##fx= _g87402_ 3))
                 (apply (lambda (_%f84315%_ _%lst184316%_ _%lst284317%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84315%_ _%lst184316%_ _%lst284317%_)))
                        _g87403_))
                ((let () (declare (not safe)) (##fx>= _g87402_ 3))
                 (apply ormap* _g87403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87403_))))))
    (define ormap*
      (lambda (_%f84297%_ . _%rest84298%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84297%_))
              (let ((_%f84302%_ _%f84297%_))
                (declare (not safe))
                (##apply __ormap* _%f84302%_ _%rest84298%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@395.15-395.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84297%_)
                '#!void)))))
    (define __ormap*
      (lambda (_%f84277%_ . _%rest84278%_)
        (let ((_%f84281%_ _%f84277%_))
          (let _%recur84290%_ ((_%rest84292%_ _%rest84278%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84292%_))
                (let ((_%$e84294%_
                       (let ((__tmp87404 (map car _%rest84292%_)))
                         (declare (not safe))
                         (##apply _%f84281%_ __tmp87404))))
                  (if _%$e84294%_
                      _%$e84294%_
                      (let ((__tmp87405 (map cdr _%rest84292%_)))
                        (declare (not safe))
                        (_%recur84290%_ __tmp87405))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84262%_ _%lst84263%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84262%_))
              (let ((_%f84267%_ _%f84262%_))
                (declare (not safe))
                (__filter-map1 _%f84267%_ _%lst84263%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@402.20-402.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84262%_)
                '#!void)))))
    (define __filter-map1
      (lambda (_%f84205%_ _%lst84206%_)
        (let ((_%f84209%_ _%f84205%_))
          (let _%recur84218%_ ((_%rest84220%_ _%lst84206%_))
            (let ()
              (let* ((_%rest8422284230%_ _%rest84220%_)
                     (_%else8422484238%_ (lambda () '()))
                     (_%K8422684250%_
                      (lambda (_%rest84241%_ _%x84242%_)
                        (let ((_%$e84244%_
                               (let ()
                                 (declare (not safe))
                                 (_%f84209%_ _%x84242%_))))
                          (if _%$e84244%_
                              ((lambda (_%r84247%_)
                                 (cons _%r84247%_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84218%_ _%rest84241%_))))
                               _%$e84244%_)
                              (let ()
                                (declare (not safe))
                                (_%recur84218%_ _%rest84241%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest8422284230%_))
                    (let ((_%hd8422784253%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8422284230%_)))
                          (_%tl8422884255%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8422284230%_))))
                      (let* ((_%x84258%_ _%hd8422784253%_)
                             (_%rest84260%_ _%tl8422884255%_))
                        (declare (not safe))
                        (_%K8422684250%_ _%rest84260%_ _%x84258%_)))
                    (let () (declare (not safe)) (_%else8422484238%_)))))))))
    (define filter-map2
      (lambda (_%f84189%_ _%lst184190%_ _%lst284191%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84189%_))
              (let ((_%f84195%_ _%f84189%_))
                (declare (not safe))
                (__filter-map2 _%f84195%_ _%lst184190%_ _%lst284191%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@413.20-413.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84189%_)
                '#!void)))))
    (define __filter-map2
      (lambda (_%f84097%_ _%lst184098%_ _%lst284099%_)
        (let ((_%f84102%_ _%f84097%_))
          (let _%recur84111%_ ((_%rest184113%_ _%lst184098%_)
                               (_%rest284114%_ _%lst284099%_))
            (let ()
              (let* ((_%rest18411684124%_ _%rest184113%_)
                     (_%else8411884132%_ (lambda () '()))
                     (_%K8412084177%_
                      (lambda (_%rest184135%_ _%x184136%_)
                        (let* ((_%rest28413784145%_ _%rest284114%_)
                               (_%else8413984153%_ (lambda () '()))
                               (_%K8414184165%_
                                (lambda (_%rest284156%_ _%x284157%_)
                                  (let ((_%$e84159%_
                                         (let ()
                                           (declare (not safe))
                                           (_%f84102%_
                                            _%x184136%_
                                            _%x284157%_))))
                                    (if _%$e84159%_
                                        ((lambda (_%r84162%_)
                                           (cons _%r84162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%recur84111%_
                                                    _%rest184135%_
                                                    _%rest284156%_))))
                                         _%$e84159%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%recur84111%_
                                           _%rest184135%_
                                           _%rest284156%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28413784145%_))
                              (let ((_%hd8414284168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28413784145%_)))
                                    (_%tl8414384170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28413784145%_))))
                                (let* ((_%x284173%_ _%hd8414284168%_)
                                       (_%rest284175%_ _%tl8414384170%_))
                                  (declare (not safe))
                                  (_%K8414184165%_
                                   _%rest284175%_
                                   _%x284173%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8413984153%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18411684124%_))
                    (let ((_%hd8412184180%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18411684124%_)))
                          (_%tl8412284182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18411684124%_))))
                      (let* ((_%x184185%_ _%hd8412184180%_)
                             (_%rest184187%_ _%tl8412284182%_))
                        (declare (not safe))
                        (_%K8412084177%_ _%rest184187%_ _%x184185%_)))
                    (let () (declare (not safe)) (_%else8411884132%_)))))))))
    (define filter-map
      (lambda _g87407_
        (let ((_g87406_ (let () (declare (not safe)) (##length _g87407_))))
          (cond ((let () (declare (not safe)) (##fx= _g87406_ 2))
                 (apply (lambda (_%f84085%_ _%lst84086%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84085%_ _%lst84086%_)))
                        _g87407_))
                ((let () (declare (not safe)) (##fx= _g87406_ 3))
                 (apply (lambda (_%f84088%_ _%lst184089%_ _%lst284090%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84088%_
                             _%lst184089%_
                             _%lst284090%_)))
                        _g87407_))
                ((let () (declare (not safe)) (##fx>= _g87406_ 3))
                 (apply filter-map* _g87407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87407_))))))
    (define filter-map*
      (lambda (_%f84070%_ . _%rest84071%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84070%_))
              (let ((_%f84075%_ _%f84070%_))
                (declare (not safe))
                (##apply __filter-map* _%f84075%_ _%rest84071%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@435.20-435.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84070%_)
                '#!void)))))
    (define __filter-map*
      (lambda (_%f84046%_ . _%rest84047%_)
        (let ((_%f84050%_ _%f84046%_))
          (let _%recur84059%_ ((_%rest84061%_ _%rest84047%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84061%_))
                  (let ((_%$e84064%_
                         (let ((__tmp87408 (map car _%rest84061%_)))
                           (declare (not safe))
                           (##apply _%f84050%_ __tmp87408))))
                    (if _%$e84064%_
                        ((lambda (_%r84067%_)
                           (cons _%r84067%_
                                 (let ((__tmp87409 (map cdr _%rest84061%_)))
                                   (declare (not safe))
                                   (_%recur84059%_ __tmp87409))))
                         _%$e84064%_)
                        (let ((__tmp87410 (map cdr _%rest84061%_)))
                          (declare (not safe))
                          (_%recur84059%_ __tmp87410))))
                  '()))))))
    (define agetq__%
      (lambda (_%key84022%_ _%lst84024%_ _%default84026%_)
        (let ((_%$e84029%_
               (if (let () (declare (not safe)) (pair? _%lst84024%_))
                   (assq _%key84022%_ _%lst84024%_)
                   '#f)))
          (if _%$e84029%_
              (cdr _%$e84029%_)
              (if (let () (declare (not safe)) (procedure? _%default84026%_))
                  (let () (_%default84026%_ _%key84022%_))
                  (let () _%default84026%_))))))
    (define agetq__0
      (lambda (_%key84037%_ _%lst84038%_)
        (let ((_%default84040%_ '#f))
          (declare (not safe))
          (agetq__% _%key84037%_ _%lst84038%_ _%default84040%_))))
    (define agetq
      (lambda _g87412_
        (let ((_g87411_ (let () (declare (not safe)) (##length _g87412_))))
          (cond ((let () (declare (not safe)) (##fx= _g87411_ 2))
                 (apply (lambda (_%key84037%_ _%lst84038%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84037%_ _%lst84038%_)))
                        _g87412_))
                ((let () (declare (not safe)) (##fx= _g87411_ 3))
                 (apply (lambda (_%key84042%_ _%lst84043%_ _%default84044%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84042%_
                             _%lst84043%_
                             _%default84044%_)))
                        _g87412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87412_))))))
    (define agetv__%
      (lambda (_%key83997%_ _%lst83999%_ _%default84001%_)
        (let ((_%$e84004%_
               (if (let () (declare (not safe)) (pair? _%lst83999%_))
                   (assv _%key83997%_ _%lst83999%_)
                   '#f)))
          (if _%$e84004%_
              (cdr _%$e84004%_)
              (if (let () (declare (not safe)) (procedure? _%default84001%_))
                  (let () (_%default84001%_ _%key83997%_))
                  (let () _%default84001%_))))))
    (define agetv__0
      (lambda (_%key84012%_ _%lst84013%_)
        (let ((_%default84015%_ '#f))
          (declare (not safe))
          (agetv__% _%key84012%_ _%lst84013%_ _%default84015%_))))
    (define agetv
      (lambda _g87414_
        (let ((_g87413_ (let () (declare (not safe)) (##length _g87414_))))
          (cond ((let () (declare (not safe)) (##fx= _g87413_ 2))
                 (apply (lambda (_%key84012%_ _%lst84013%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84012%_ _%lst84013%_)))
                        _g87414_))
                ((let () (declare (not safe)) (##fx= _g87413_ 3))
                 (apply (lambda (_%key84017%_ _%lst84018%_ _%default84019%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84017%_
                             _%lst84018%_
                             _%default84019%_)))
                        _g87414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87414_))))))
    (define aget__%
      (lambda (_%key83972%_ _%lst83974%_ _%default83976%_)
        (let ((_%$e83979%_
               (if (let () (declare (not safe)) (pair? _%lst83974%_))
                   (assoc _%key83972%_ _%lst83974%_)
                   '#f)))
          (if _%$e83979%_
              (cdr _%$e83979%_)
              (if (let () (declare (not safe)) (procedure? _%default83976%_))
                  (let () (_%default83976%_ _%key83972%_))
                  (let () _%default83976%_))))))
    (define aget__0
      (lambda (_%key83987%_ _%lst83988%_)
        (let ((_%default83990%_ '#f))
          (declare (not safe))
          (aget__% _%key83987%_ _%lst83988%_ _%default83990%_))))
    (define aget
      (lambda _g87416_
        (let ((_g87415_ (let () (declare (not safe)) (##length _g87416_))))
          (cond ((let () (declare (not safe)) (##fx= _g87415_ 2))
                 (apply (lambda (_%key83987%_ _%lst83988%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key83987%_ _%lst83988%_)))
                        _g87416_))
                ((let () (declare (not safe)) (##fx= _g87415_ 3))
                 (apply (lambda (_%key83992%_ _%lst83993%_ _%default83994%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key83992%_
                                     _%lst83993%_
                                     _%default83994%_)))
                        _g87416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87416_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key83901%_ _%lst83903%_ _%default83905%_)
        (let _%lp83908%_ ((_%rest83911%_ _%lst83903%_))
          (let* ((_%rest8391383923%_ _%rest83911%_)
                 (_%else8391583931%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83905%_))
                        (_%default83905%_ _%key83901%_)
                        _%default83905%_)))
                 (_%K8391783940%_
                  (lambda (_%rest83934%_ _%v83935%_ _%k83937%_)
                    (if (eq? _%k83937%_ _%key83901%_)
                        _%v83935%_
                        (let ()
                          (declare (not safe))
                          (_%lp83908%_ _%rest83934%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8391383923%_))
                (let ((_%hd8391883943%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8391383923%_)))
                      (_%tl8391983945%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8391383923%_))))
                  (let ((_%k83948%_ _%hd8391883943%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8391983945%_))
                        (let ((_%hd8392083950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8391983945%_)))
                              (_%tl8392183952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8391983945%_))))
                          (let* ((_%v83955%_ _%hd8392083950%_)
                                 (_%rest83957%_ _%tl8392183952%_))
                            (declare (not safe))
                            (_%K8391783940%_
                             _%rest83957%_
                             _%v83955%_
                             _%k83948%_)))
                        (let () (declare (not safe)) (_%else8391583931%_)))))
                (let () (declare (not safe)) (_%else8391583931%_)))))))
    (define pgetq__0
      (lambda (_%key83962%_ _%lst83963%_)
        (let ((_%default83965%_ '#f))
          (declare (not safe))
          (pgetq__% _%key83962%_ _%lst83963%_ _%default83965%_))))
    (define pgetq
      (lambda _g87418_
        (let ((_g87417_ (let () (declare (not safe)) (##length _g87418_))))
          (cond ((let () (declare (not safe)) (##fx= _g87417_ 2))
                 (apply (lambda (_%key83962%_ _%lst83963%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key83962%_ _%lst83963%_)))
                        _g87418_))
                ((let () (declare (not safe)) (##fx= _g87417_ 3))
                 (apply (lambda (_%key83967%_ _%lst83968%_ _%default83969%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key83967%_
                             _%lst83968%_
                             _%default83969%_)))
                        _g87418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87418_))))))
    (define pgetv__%
      (lambda (_%key83830%_ _%lst83832%_ _%default83834%_)
        (let _%lp83837%_ ((_%rest83840%_ _%lst83832%_))
          (let* ((_%rest8384283852%_ _%rest83840%_)
                 (_%else8384483860%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83834%_))
                        (_%default83834%_ _%key83830%_)
                        _%default83834%_)))
                 (_%K8384683869%_
                  (lambda (_%rest83863%_ _%v83864%_ _%k83866%_)
                    (if (eqv? _%k83866%_ _%key83830%_)
                        _%v83864%_
                        (let ()
                          (declare (not safe))
                          (_%lp83837%_ _%rest83863%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8384283852%_))
                (let ((_%hd8384783872%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8384283852%_)))
                      (_%tl8384883874%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8384283852%_))))
                  (let ((_%k83877%_ _%hd8384783872%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8384883874%_))
                        (let ((_%hd8384983879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8384883874%_)))
                              (_%tl8385083881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8384883874%_))))
                          (let* ((_%v83884%_ _%hd8384983879%_)
                                 (_%rest83886%_ _%tl8385083881%_))
                            (declare (not safe))
                            (_%K8384683869%_
                             _%rest83886%_
                             _%v83884%_
                             _%k83877%_)))
                        (let () (declare (not safe)) (_%else8384483860%_)))))
                (let () (declare (not safe)) (_%else8384483860%_)))))))
    (define pgetv__0
      (lambda (_%key83891%_ _%lst83892%_)
        (let ((_%default83894%_ '#f))
          (declare (not safe))
          (pgetv__% _%key83891%_ _%lst83892%_ _%default83894%_))))
    (define pgetv
      (lambda _g87420_
        (let ((_g87419_ (let () (declare (not safe)) (##length _g87420_))))
          (cond ((let () (declare (not safe)) (##fx= _g87419_ 2))
                 (apply (lambda (_%key83891%_ _%lst83892%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key83891%_ _%lst83892%_)))
                        _g87420_))
                ((let () (declare (not safe)) (##fx= _g87419_ 3))
                 (apply (lambda (_%key83896%_ _%lst83897%_ _%default83898%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key83896%_
                             _%lst83897%_
                             _%default83898%_)))
                        _g87420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87420_))))))
    (define pget__%
      (lambda (_%key83759%_ _%lst83761%_ _%default83763%_)
        (let _%lp83766%_ ((_%rest83769%_ _%lst83761%_))
          (let* ((_%rest8377183781%_ _%rest83769%_)
                 (_%else8377383789%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83763%_))
                        (_%default83763%_ _%key83759%_)
                        _%default83763%_)))
                 (_%K8377583798%_
                  (lambda (_%rest83792%_ _%v83793%_ _%k83795%_)
                    (if (equal? _%k83795%_ _%key83759%_)
                        _%v83793%_
                        (let ()
                          (declare (not safe))
                          (_%lp83766%_ _%rest83792%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8377183781%_))
                (let ((_%hd8377683801%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8377183781%_)))
                      (_%tl8377783803%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8377183781%_))))
                  (let ((_%k83806%_ _%hd8377683801%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8377783803%_))
                        (let ((_%hd8377883808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8377783803%_)))
                              (_%tl8377983810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8377783803%_))))
                          (let* ((_%v83813%_ _%hd8377883808%_)
                                 (_%rest83815%_ _%tl8377983810%_))
                            (declare (not safe))
                            (_%K8377583798%_
                             _%rest83815%_
                             _%v83813%_
                             _%k83806%_)))
                        (let () (declare (not safe)) (_%else8377383789%_)))))
                (let () (declare (not safe)) (_%else8377383789%_)))))))
    (define pget__0
      (lambda (_%key83820%_ _%lst83821%_)
        (let ((_%default83823%_ '#f))
          (declare (not safe))
          (pget__% _%key83820%_ _%lst83821%_ _%default83823%_))))
    (define pget
      (lambda _g87422_
        (let ((_g87421_ (let () (declare (not safe)) (##length _g87422_))))
          (cond ((let () (declare (not safe)) (##fx= _g87421_ 2))
                 (apply (lambda (_%key83820%_ _%lst83821%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key83820%_ _%lst83821%_)))
                        _g87422_))
                ((let () (declare (not safe)) (##fx= _g87421_ 3))
                 (apply (lambda (_%key83825%_ _%lst83826%_ _%default83827%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key83825%_
                                     _%lst83826%_
                                     _%default83827%_)))
                        _g87422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87422_))))))
    (define find
      (lambda (_%pred83743%_ _%lst83744%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred83743%_))
              (let ((_%pred83748%_ _%pred83743%_))
                (declare (not safe))
                (__find _%pred83748%_ _%lst83744%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@481.13-481.17"
                 'contract:
                 'procedure?
                 'value:
                 _%pred83743%_)
                '#!void)))))
    (define __find
      (lambda (_%pred83726%_ _%lst83727%_)
        (let ()
          (let* ((_%pred83730%_ _%pred83726%_)
                 (_%$e83739%_
                  (let ()
                    (declare (not safe))
                    (__memf _%pred83730%_ _%lst83727%_))))
            (if _%$e83739%_
                (let () (declare (not safe)) (##car _%$e83739%_))
                (let () '#f))))))
    (define memf
      (lambda (_%proc83711%_ _%lst83712%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83711%_))
              (let ((_%proc83716%_ _%proc83711%_))
                (declare (not safe))
                (__memf _%proc83716%_ _%lst83712%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@486.13-486.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc83711%_)
                '#!void)))))
    (define __memf
      (lambda (_%proc83661%_ _%lst83662%_)
        (let ((_%proc83665%_ _%proc83661%_))
          (let _%lp83674%_ ((_%rest83676%_ _%lst83662%_))
            (let* ((_%rest8367783685%_ _%rest83676%_)
                   (_%else8367983693%_ (lambda () '#f))
                   (_%K8368183699%_
                    (lambda (_%tl83696%_ _%hd83697%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc83665%_ _%hd83697%_))
                          _%rest83676%_
                          (let ()
                            (declare (not safe))
                            (_%lp83674%_ _%tl83696%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8367783685%_))
                  (let ((_%hd8368283702%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8367783685%_)))
                        (_%tl8368383704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8367783685%_))))
                    (let* ((_%hd83707%_ _%hd8368283702%_)
                           (_%tl83709%_ _%tl8368383704%_))
                      (declare (not safe))
                      (_%K8368183699%_ _%tl83709%_ _%hd83707%_)))
                  (let () (declare (not safe)) (_%else8367983693%_))))))))
    (define remove1
      (lambda (_%el83614%_ _%lst83616%_)
        (let _%lp83619%_ ((_%rest83622%_ _%lst83616%_) (_%r83624%_ '()))
          (let* ((_%rest8362683634%_ _%rest83622%_)
                 (_%else8362883642%_ (lambda () _%lst83616%_))
                 (_%K8363083649%_
                  (lambda (_%rest83645%_ _%hd83646%_)
                    (if (equal? _%el83614%_ _%hd83646%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83645%_ _%r83624%_))
                        (let ((__tmp87423 (cons _%hd83646%_ _%r83624%_)))
                          (declare (not safe))
                          (_%lp83619%_ _%rest83645%_ __tmp87423))))))
            (if (let () (declare (not safe)) (##pair? _%rest8362683634%_))
                (let ((_%hd8363183652%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8362683634%_)))
                      (_%tl8363283654%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8362683634%_))))
                  (let* ((_%hd83657%_ _%hd8363183652%_)
                         (_%rest83659%_ _%tl8363283654%_))
                    (declare (not safe))
                    (_%K8363083649%_ _%rest83659%_ _%hd83657%_)))
                (let () (declare (not safe)) (_%else8362883642%_)))))))
    (define remv1
      (lambda (_%el83567%_ _%lst83569%_)
        (let _%lp83572%_ ((_%rest83575%_ _%lst83569%_) (_%r83577%_ '()))
          (let* ((_%rest8357983587%_ _%rest83575%_)
                 (_%else8358183595%_ (lambda () _%lst83569%_))
                 (_%K8358383602%_
                  (lambda (_%rest83598%_ _%hd83599%_)
                    (if (eqv? _%el83567%_ _%hd83599%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83598%_ _%r83577%_))
                        (let ((__tmp87424 (cons _%hd83599%_ _%r83577%_)))
                          (declare (not safe))
                          (_%lp83572%_ _%rest83598%_ __tmp87424))))))
            (if (let () (declare (not safe)) (##pair? _%rest8357983587%_))
                (let ((_%hd8358483605%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8357983587%_)))
                      (_%tl8358583607%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8357983587%_))))
                  (let* ((_%hd83610%_ _%hd8358483605%_)
                         (_%rest83612%_ _%tl8358583607%_))
                    (declare (not safe))
                    (_%K8358383602%_ _%rest83612%_ _%hd83610%_)))
                (let () (declare (not safe)) (_%else8358183595%_)))))))
    (define remq1
      (lambda (_%el83520%_ _%lst83522%_)
        (let _%lp83525%_ ((_%rest83528%_ _%lst83522%_) (_%r83530%_ '()))
          (let* ((_%rest8353283540%_ _%rest83528%_)
                 (_%else8353483548%_ (lambda () _%lst83522%_))
                 (_%K8353683555%_
                  (lambda (_%rest83551%_ _%hd83552%_)
                    (if (eq? _%el83520%_ _%hd83552%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83551%_ _%r83530%_))
                        (let ((__tmp87425 (cons _%hd83552%_ _%r83530%_)))
                          (declare (not safe))
                          (_%lp83525%_ _%rest83551%_ __tmp87425))))))
            (if (let () (declare (not safe)) (##pair? _%rest8353283540%_))
                (let ((_%hd8353783558%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8353283540%_)))
                      (_%tl8353883560%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8353283540%_))))
                  (let* ((_%hd83563%_ _%hd8353783558%_)
                         (_%rest83565%_ _%tl8353883560%_))
                    (declare (not safe))
                    (_%K8353683555%_ _%rest83565%_ _%hd83563%_)))
                (let () (declare (not safe)) (_%else8353483548%_)))))))
    (define remf
      (lambda (_%proc83505%_ _%lst83506%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83505%_))
              (let ((_%proc83510%_ _%proc83505%_))
                (declare (not safe))
                (__remf _%proc83510%_ _%lst83506%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@508.13-508.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc83505%_)
                '#!void)))))
    (define __remf
      (lambda (_%proc83454%_ _%lst83455%_)
        (let ((_%proc83458%_ _%proc83454%_))
          (let _%lp83467%_ ((_%rest83469%_ _%lst83455%_) (_%r83470%_ '()))
            (let* ((_%rest8347183479%_ _%rest83469%_)
                   (_%else8347383487%_ (lambda () _%lst83455%_))
                   (_%K8347583493%_
                    (lambda (_%rest83490%_ _%hd83491%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc83458%_ _%hd83491%_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _%rest83490%_ _%r83470%_))
                          (let ((__tmp87426 (cons _%hd83491%_ _%r83470%_)))
                            (declare (not safe))
                            (_%lp83467%_ _%rest83490%_ __tmp87426))))))
              (if (let () (declare (not safe)) (##pair? _%rest8347183479%_))
                  (let ((_%hd8347683496%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8347183479%_)))
                        (_%tl8347783498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8347183479%_))))
                    (let* ((_%hd83501%_ _%hd8347683496%_)
                           (_%rest83503%_ _%tl8347783498%_))
                      (declare (not safe))
                      (_%K8347583493%_ _%rest83503%_ _%hd83501%_)))
                  (let () (declare (not safe)) (_%else8347383487%_))))))))
    (define 1+
      (lambda (_%x83440%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83440%_))
              (let ((_%x83444%_ _%x83440%_))
                (declare (not safe))
                (__1+ _%x83444%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@517.11-517.12"
                 'contract:
                 'number?
                 'value:
                 _%x83440%_)
                '#!void)))))
    (define __1+
      (lambda (_%x83428%_) (let ((_%x83431%_ _%x83428%_)) (+ _%x83431%_ '1))))
    (define 1-
      (lambda (_%x83414%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83414%_))
              (let ((_%x83418%_ _%x83414%_))
                (declare (not safe))
                (__1- _%x83418%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@525.11-525.12"
                 'contract:
                 'number?
                 'value:
                 _%x83414%_)
                '#!void)))))
    (define __1-
      (lambda (_%x83402%_) (let ((_%x83405%_ _%x83402%_)) (- _%x83405%_ '1))))
    (define fx1+
      (lambda (_%x83388%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83388%_))
              (let ((_%x83392%_ _%x83388%_))
                (declare (not safe))
                (__fx1+ _%x83392%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@533.13-533.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83388%_)
                '#!void)))))
    (define __fx1+
      (lambda (_%x83376%_)
        (let ((_%x83379%_ _%x83376%_))
          (declare (not safe))
          (##fx+ _%x83379%_ '1))))
    (define fx1-
      (lambda (_%x83362%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83362%_))
              (let ((_%x83366%_ _%x83362%_))
                (declare (not safe))
                (__fx1- _%x83366%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@541.13-541.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83362%_)
                '#!void)))))
    (define __fx1-
      (lambda (_%x83350%_)
        (let ((_%x83353%_ _%x83350%_))
          (declare (not safe))
          (##fx- _%x83353%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83347%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83347%_))
              (let () (declare (not safe)) (##fx>= _%x83347%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83344%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83344%_))
              (let () (declare (not safe)) (##fx> _%x83344%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83341%_)
        (let () (declare (not safe)) (##fx= _%x83341%_ '0))))
    (define fx<0?
      (lambda (_%x83338%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83338%_))
              (let () (declare (not safe)) (##fx< _%x83338%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83335%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83335%_))
              (let () (declare (not safe)) (##fx<= _%x83335%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83332%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83332%_))
              (let ((__tmp87427 (uninterned-symbol? _%x83332%_)))
                (declare (not safe))
                (not __tmp87427))
              '#f))))
    (define display-as-string
      (lambda (_%x83317%_ _%port83318%_)
        (let ()
          (if (output-port? _%port83318%_)
              (let ((_%port83322%_ _%port83318%_))
                (declare (not safe))
                (__display-as-string _%x83317%_ _%port83322%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83318%_)
                '#!void)))))
    (define __display-as-string
      (lambda (_%x83274%_ _%port83275%_)
        (let ((_%port83278%_ _%port83275%_))
          (if (or (let () (declare (not safe)) (string? _%x83274%_))
                  (let () (declare (not safe)) (symbol? _%x83274%_))
                  (let () (declare (not safe)) (keyword? _%x83274%_))
                  (let () (declare (not safe)) (number? _%x83274%_))
                  (let () (declare (not safe)) (char? _%x83274%_)))
              (let () (display _%x83274%_ _%port83278%_))
              (if (let () (declare (not safe)) (pair? _%x83274%_))
                  (let ()
                    (let ((__tmp87428 (car _%x83274%_)))
                      (declare (not safe))
                      (display-as-string __tmp87428 _%port83278%_))
                    (let ((__tmp87429 (cdr _%x83274%_)))
                      (declare (not safe))
                      (display-as-string __tmp87429 _%port83278%_)))
                  (if (let () (declare (not safe)) (vector? _%x83274%_))
                      (let ()
                        (vector-for-each
                         (lambda (_%g8330183303%_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _%g8330183303%_
                              _%port83278%_)))
                         _%x83274%_))
                      (if (or (let () (declare (not safe)) (null? _%x83274%_))
                              (let ()
                                (declare (not safe))
                                (eq? _%x83274%_ '#!void))
                              (let ()
                                (declare (not safe))
                                (eof-object? _%x83274%_))
                              (let ()
                                (declare (not safe))
                                (boolean? _%x83274%_)))
                          (let () '#!void)
                          (let ()
                            (error '"cannot convert as string" _%x83274%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x83257%_)
        (if (let () (declare (not safe)) (string? _%x83257%_))
            (let () _%x83257%_)
            (if (let () (declare (not safe)) (symbol? _%x83257%_))
                (let () (symbol->string _%x83257%_))
                (if (let () (declare (not safe)) (keyword? _%x83257%_))
                    (let () (keyword->string _%x83257%_))
                    (if (let () (declare (not safe)) (number? _%x83257%_))
                        (let () (number->string _%x83257%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8326383265%_)
                             (let ()
                               (declare (not safe))
                               (display-as-string
                                _%x83257%_
                                _%g8326383265%_)))))))))))
    (define as-string__1
      (lambda _%args83268%_
        (call-with-output-string
         '()
         (lambda (_%g8326983271%_)
           (let ()
             (declare (not safe))
             (display-as-string _%args83268%_ _%g8326983271%_))))))
    (define as-string
      (lambda _g87431_
        (let ((_g87430_ (let () (declare (not safe)) (##length _g87431_))))
          (cond ((let () (declare (not safe)) (##fx= _g87430_ 1))
                 (apply (lambda (_%x83257%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83257%_)))
                        _g87431_))
                (#t (apply as-string__1 _g87431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87431_))))))
    (define make-symbol__0
      (lambda (_%x83253%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83253%_))
            _%x83253%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83253%_))))))
    (define make-symbol__1
      (lambda _%args83255%_ (string->symbol (apply as-string _%args83255%_))))
    (define make-symbol
      (lambda _g87433_
        (let ((_g87432_ (let () (declare (not safe)) (##length _g87433_))))
          (cond ((let () (declare (not safe)) (##fx= _g87432_ 1))
                 (apply (lambda (_%x83253%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83253%_)))
                        _g87433_))
                (#t (apply make-symbol__1 _g87433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87433_))))))
    (define make-keyword__0
      (lambda (_%x83249%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83249%_))
            _%x83249%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83249%_))))))
    (define make-keyword__1
      (lambda _%args83251%_ (string->keyword (apply as-string _%args83251%_))))
    (define make-keyword
      (lambda _g87435_
        (let ((_g87434_ (let () (declare (not safe)) (##length _g87435_))))
          (cond ((let () (declare (not safe)) (##fx= _g87434_ 1))
                 (apply (lambda (_%x83249%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83249%_)))
                        _g87435_))
                (#t (apply make-keyword__1 _g87435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87435_))))))
    (define interned-keyword?
      (lambda (_%x83246%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83246%_))
              (let ((__tmp87436 (uninterned-keyword? _%x83246%_)))
                (declare (not safe))
                (not __tmp87436))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83232%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83232%_))
              (let ((_%sym83236%_ _%sym83232%_))
                (declare (not safe))
                (__symbol->keyword _%sym83236%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@612.24-612.27"
                 'contract:
                 'symbol?
                 'value:
                 _%sym83232%_)
                '#!void)))))
    (define __symbol->keyword
      (lambda (_%sym83220%_)
        (let ((_%sym83223%_ _%sym83220%_))
          (if (uninterned-symbol? _%sym83223%_)
              (let ((__tmp87437
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83223%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp87437))
              (let ((__tmp87438
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83223%_))))
                (declare (not safe))
                (##string->keyword __tmp87438))))))
    (define keyword->symbol
      (lambda (_%sym83206%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83206%_))
              (let ((_%sym83210%_ _%sym83206%_))
                (declare (not safe))
                (__keyword->symbol _%sym83210%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@618.24-618.27"
                 'contract:
                 'keyword?
                 'value:
                 _%sym83206%_)
                '#!void)))))
    (define __keyword->symbol
      (lambda (_%sym83194%_)
        (let ((_%sym83197%_ _%sym83194%_))
          (if (uninterned-keyword? _%sym83197%_)
              (let ((__tmp87439
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83197%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp87439))
              (let ((__tmp87440
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83197%_))))
                (declare (not safe))
                (##string->symbol __tmp87440))))))
    (define bytes->string__%
      (lambda (_%bstr83159%_ _%enc83160%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83159%_))
              (let ((_%bstr83164%_ _%bstr83159%_))
                (if (let () (declare (not safe)) (symbol? _%enc83160%_))
                    (let ((_%enc83174%_ _%enc83160%_))
                      (declare (not safe))
                      (__bytes->string__% _%bstr83164%_ _%enc83174%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83160%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@624.22-624.26"
                 'contract:
                 'u8vector?
                 'value:
                 _%bstr83159%_)
                '#!void)))))
    (define bytes->string__0
      (lambda (_%bstr83187%_)
        (let ((_%enc83189%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83187%_ _%enc83189%_))))
    (define bytes->string
      (lambda _g87442_
        (let ((_g87441_ (let () (declare (not safe)) (##length _g87442_))))
          (cond ((let () (declare (not safe)) (##fx= _g87441_ 1))
                 (apply (lambda (_%bstr83187%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83187%_)))
                        _g87442_))
                ((let () (declare (not safe)) (##fx= _g87441_ 2))
                 (apply (lambda (_%bstr83191%_ _%enc83192%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83191%_ _%enc83192%_)))
                        _g87442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87442_))))))
    (define __bytes->string__%
      (lambda (_%bstr83118%_ _%enc83119%_)
        (let ()
          (let* ((_%bstr83122%_ _%bstr83118%_) (_%enc83130%_ _%enc83119%_))
            (if (eq? _%enc83130%_ 'UTF-8)
                (let () (declare (not safe)) (##utf8->string _%bstr83122%_))
                (let* ((_%in83139%_
                        (open-input-u8vector
                         (cons 'char-encoding:
                               (cons _%enc83130%_
                                     (cons 'init: (cons _%bstr83122%_ '()))))))
                       (_%len83141%_ (u8vector-length _%bstr83122%_))
                       (_%out83143%_ (make-string _%len83141%_))
                       (_%n83145%_
                        (read-substring
                         _%out83143%_
                         '0
                         _%len83141%_
                         _%in83139%_)))
                  (string-shrink! _%out83143%_ _%n83145%_)
                  _%out83143%_))))))
    (define __bytes->string__0
      (lambda (_%bstr83151%_)
        (let ((_%enc83153%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83151%_ _%enc83153%_))))
    (define __bytes->string
      (lambda _g87444_
        (let ((_g87443_ (let () (declare (not safe)) (##length _g87444_))))
          (cond ((let () (declare (not safe)) (##fx= _g87443_ 1))
                 (apply (lambda (_%bstr83151%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83151%_)))
                        _g87444_))
                ((let () (declare (not safe)) (##fx= _g87443_ 2))
                 (apply (lambda (_%bstr83155%_ _%enc83156%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83155%_ _%enc83156%_)))
                        _g87444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87444_))))))
    (define string->bytes__%
      (lambda (_%str83082%_ _%enc83083%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83082%_))
              (let ((_%str83087%_ _%str83082%_))
                (if (let () (declare (not safe)) (symbol? _%enc83083%_))
                    (let ((_%enc83097%_ _%enc83083%_))
                      (declare (not safe))
                      (__string->bytes__% _%str83087%_ _%enc83097%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83083%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@636.22-636.25"
                 'contract:
                 'string?
                 'value:
                 _%str83082%_)
                '#!void)))))
    (define string->bytes__0
      (lambda (_%str83110%_)
        (let ((_%enc83112%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83110%_ _%enc83112%_))))
    (define string->bytes
      (lambda _g87446_
        (let ((_g87445_ (let () (declare (not safe)) (##length _g87446_))))
          (cond ((let () (declare (not safe)) (##fx= _g87445_ 1))
                 (apply (lambda (_%str83110%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83110%_)))
                        _g87446_))
                ((let () (declare (not safe)) (##fx= _g87445_ 2))
                 (apply (lambda (_%str83114%_ _%enc83115%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83114%_ _%enc83115%_)))
                        _g87446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87446_))))))
    (define __string->bytes__%
      (lambda (_%str83050%_ _%enc83051%_)
        (let ()
          (let* ((_%str83054%_ _%str83050%_) (_%enc83062%_ _%enc83051%_))
            (if (eq? _%enc83062%_ 'UTF-8)
                (let () (declare (not safe)) (##string->utf8 _%str83054%_))
                (let ((__tmp87447
                       (let ()
                         (declare (not safe))
                         (##string-length _%str83054%_))))
                  (declare (not safe))
                  (substring->bytes__%
                   _%str83054%_
                   '0
                   __tmp87447
                   _%enc83062%_)))))))
    (define __string->bytes__0
      (lambda (_%str83074%_)
        (let ((_%enc83076%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83074%_ _%enc83076%_))))
    (define __string->bytes
      (lambda _g87449_
        (let ((_g87448_ (let () (declare (not safe)) (##length _g87449_))))
          (cond ((let () (declare (not safe)) (##fx= _g87448_ 1))
                 (apply (lambda (_%str83074%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83074%_)))
                        _g87449_))
                ((let () (declare (not safe)) (##fx= _g87448_ 2))
                 (apply (lambda (_%str83078%_ _%enc83079%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83078%_ _%enc83079%_)))
                        _g87449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87449_))))))
    (define substring->bytes__%
      (lambda (_%str82998%_ _%start82999%_ _%end83000%_ _%enc83001%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82998%_))
              (let ((_%str83005%_ _%str82998%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%start82999%_))
                    (let ((_%start83015%_ _%start82999%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%end83000%_))
                          (let ((_%end83025%_ _%end83000%_))
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83005%_
                             _%start83015%_
                             _%end83025%_
                             _%enc83001%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end83000%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start82999%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@643.25-643.28"
                 'contract:
                 'string?
                 'value:
                 _%str82998%_)
                '#!void)))))
    (define substring->bytes__0
      (lambda (_%str83038%_ _%start83039%_ _%end83040%_)
        (let ((_%enc83042%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83038%_
           _%start83039%_
           _%end83040%_
           _%enc83042%_))))
    (define substring->bytes
      (lambda _g87451_
        (let ((_g87450_ (let () (declare (not safe)) (##length _g87451_))))
          (cond ((let () (declare (not safe)) (##fx= _g87450_ 3))
                 (apply (lambda (_%str83038%_ _%start83039%_ _%end83040%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83038%_
                             _%start83039%_
                             _%end83040%_)))
                        _g87451_))
                ((let () (declare (not safe)) (##fx= _g87450_ 4))
                 (apply (lambda (_%str83044%_
                                 _%start83045%_
                                 _%end83046%_
                                 _%enc83047%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83044%_
                             _%start83045%_
                             _%end83046%_
                             _%enc83047%_)))
                        _g87451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87451_))))))
    (define __substring->bytes__%
      (lambda (_%str82950%_ _%start82951%_ _%end82952%_ _%enc82953%_)
        (let ((_%str82956%_ _%str82950%_))
          (let* ((_%start82964%_ _%start82951%_) (_%end82972%_ _%end82952%_))
            (if (eq? _%enc82953%_ 'UTF-8)
                (string->utf8 _%str82956%_ _%start82964%_ _%end82972%_)
                (let ((_%out82981%_
                       (open-output-u8vector
                        (cons 'char-encoding: (cons _%enc82953%_ '())))))
                  (write-substring
                   _%str82956%_
                   _%start82964%_
                   _%end82972%_
                   _%out82981%_)
                  (get-output-u8vector _%out82981%_)))))))
    (define __substring->bytes__0
      (lambda (_%str82986%_ _%start82987%_ _%end82988%_)
        (let ((_%enc82990%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str82986%_
           _%start82987%_
           _%end82988%_
           _%enc82990%_))))
    (define __substring->bytes
      (lambda _g87453_
        (let ((_g87452_ (let () (declare (not safe)) (##length _g87453_))))
          (cond ((let () (declare (not safe)) (##fx= _g87452_ 3))
                 (apply (lambda (_%str82986%_ _%start82987%_ _%end82988%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str82986%_
                             _%start82987%_
                             _%end82988%_)))
                        _g87453_))
                ((let () (declare (not safe)) (##fx= _g87452_ 4))
                 (apply (lambda (_%str82992%_
                                 _%start82993%_
                                 _%end82994%_
                                 _%enc82995%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str82992%_
                             _%start82993%_
                             _%end82994%_
                             _%enc82995%_)))
                        _g87453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87453_))))))
    (define string-empty?
      (lambda (_%str82935%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82935%_))
              (let ((_%str82939%_ _%str82935%_))
                (declare (not safe))
                (__string-empty? _%str82939%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@654.22-654.25"
                 'contract:
                 'string?
                 'value:
                 _%str82935%_)
                '#!void)))))
    (define __string-empty?
      (lambda (_%str82923%_)
        (let ()
          (let* ((_%str82926%_ _%str82923%_)
                 (__tmp87454
                  (let ()
                    (declare (not safe))
                    (##string-length _%str82926%_))))
            (declare (not safe))
            (##fxzero? __tmp87454)))))
    (define string-index__%
      (lambda (_%str82875%_ _%char82876%_ _%start82877%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82875%_))
              (let ((_%str82881%_ _%str82875%_))
                (if (let () (declare (not safe)) (char? _%char82876%_))
                    (let ((_%char82891%_ _%char82876%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%start82877%_))
                          (let ((_%start82901%_ _%start82877%_))
                            (declare (not safe))
                            (__string-index__%
                             _%str82881%_
                             _%char82891%_
                             _%start82901%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start82877%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char82876%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@658.21-658.24"
                 'contract:
                 'string?
                 'value:
                 _%str82875%_)
                '#!void)))))
    (define string-index__0
      (lambda (_%str82914%_ _%char82915%_)
        (let ((_%start82917%_ '0))
          (declare (not safe))
          (string-index__% _%str82914%_ _%char82915%_ _%start82917%_))))
    (define string-index
      (lambda _g87456_
        (let ((_g87455_ (let () (declare (not safe)) (##length _g87456_))))
          (cond ((let () (declare (not safe)) (##fx= _g87455_ 2))
                 (apply (lambda (_%str82914%_ _%char82915%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str82914%_ _%char82915%_)))
                        _g87456_))
                ((let () (declare (not safe)) (##fx= _g87455_ 3))
                 (apply (lambda (_%str82919%_ _%char82920%_ _%start82921%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str82919%_
                             _%char82920%_
                             _%start82921%_)))
                        _g87456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87456_))))))
    (define __string-index__%
      (lambda (_%str82814%_ _%char82815%_ _%start82816%_)
        (let ()
          (let* ((_%str82819%_ _%str82814%_) (_%char82827%_ _%char82815%_))
            (let* ((_%start82835%_ _%start82816%_)
                   (_%len82844%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str82819%_))))
              (let _%lp82846%_ ((_%k82848%_ _%start82835%_))
                (let ((_%k82850%_ _%k82848%_))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%k82850%_ _%len82844%_))
                      (if (eq? _%char82827%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str82819%_ _%k82850%_)))
                          _%k82850%_
                          (let ((__tmp87457
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k82850%_ '1))))
                            (declare (not safe))
                            (_%lp82846%_ __tmp87457)))
                      '#f))))))))
    (define __string-index__0
      (lambda (_%str82865%_ _%char82866%_)
        (let ((_%start82868%_ '0))
          (declare (not safe))
          (__string-index__% _%str82865%_ _%char82866%_ _%start82868%_))))
    (define __string-index
      (lambda _g87459_
        (let ((_g87458_ (let () (declare (not safe)) (##length _g87459_))))
          (cond ((let () (declare (not safe)) (##fx= _g87458_ 2))
                 (apply (lambda (_%str82865%_ _%char82866%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str82865%_ _%char82866%_)))
                        _g87459_))
                ((let () (declare (not safe)) (##fx= _g87458_ 3))
                 (apply (lambda (_%str82870%_ _%char82871%_ _%start82872%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str82870%_
                             _%char82871%_
                             _%start82872%_)))
                        _g87459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87459_))))))
    (define string-rindex__%
      (lambda (_%str82775%_ _%char82776%_ _%start82777%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82775%_))
              (let ((_%str82781%_ _%str82775%_))
                (if (let () (declare (not safe)) (char? _%char82776%_))
                    (let ((_%char82791%_ _%char82776%_))
                      (declare (not safe))
                      (__string-rindex__%
                       _%str82781%_
                       _%char82791%_
                       _%start82777%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char82776%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@669.22-669.25"
                 'contract:
                 'string?
                 'value:
                 _%str82775%_)
                '#!void)))))
    (define string-rindex__0
      (lambda (_%str82804%_ _%char82805%_)
        (let ((_%start82807%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str82804%_ _%char82805%_ _%start82807%_))))
    (define string-rindex
      (lambda _g87461_
        (let ((_g87460_ (let () (declare (not safe)) (##length _g87461_))))
          (cond ((let () (declare (not safe)) (##fx= _g87460_ 2))
                 (apply (lambda (_%str82804%_ _%char82805%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str82804%_ _%char82805%_)))
                        _g87461_))
                ((let () (declare (not safe)) (##fx= _g87460_ 3))
                 (apply (lambda (_%str82809%_ _%char82810%_ _%start82811%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str82809%_
                             _%char82810%_
                             _%start82811%_)))
                        _g87461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87461_))))))
    (define __string-rindex__%
      (lambda (_%str82717%_ _%char82718%_ _%start82719%_)
        (let ()
          (let* ((_%str82722%_ _%str82717%_) (_%char82730%_ _%char82718%_))
            (let* ((_%len82739%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str82722%_)))
                   (_%start82741%_
                    (if (let () (declare (not safe)) (fixnum? _%start82719%_))
                        _%start82719%_
                        (let ()
                          (declare (not safe))
                          (##fx- _%len82739%_ '1)))))
              (let _%lp82744%_ ((_%k82746%_ _%start82741%_))
                (let ((_%k82748%_ _%k82746%_))
                  (if (let () (declare (not safe)) (##fx>= _%k82748%_ '0))
                      (if (eq? _%char82730%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str82722%_ _%k82748%_)))
                          _%k82748%_
                          (let ((__tmp87462
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%k82748%_ '1))))
                            (declare (not safe))
                            (_%lp82744%_ __tmp87462)))
                      '#f))))))))
    (define __string-rindex__0
      (lambda (_%str82765%_ _%char82766%_)
        (let ((_%start82768%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str82765%_ _%char82766%_ _%start82768%_))))
    (define __string-rindex
      (lambda _g87464_
        (let ((_g87463_ (let () (declare (not safe)) (##length _g87464_))))
          (cond ((let () (declare (not safe)) (##fx= _g87463_ 2))
                 (apply (lambda (_%str82765%_ _%char82766%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str82765%_ _%char82766%_)))
                        _g87464_))
                ((let () (declare (not safe)) (##fx= _g87463_ 3))
                 (apply (lambda (_%str82770%_ _%char82771%_ _%start82772%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str82770%_
                             _%char82771%_
                             _%start82772%_)))
                        _g87464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87464_))))))
    (define string-split
      (lambda (_%str82691%_ _%char82692%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82691%_))
              (let ((_%str82696%_ _%str82691%_))
                (if (let () (declare (not safe)) (char? _%char82692%_))
                    (let ((_%char82706%_ _%char82692%_))
                      (declare (not safe))
                      (__string-split _%str82696%_ _%char82706%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char82692%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@681.21-681.24"
                 'contract:
                 'string?
                 'value:
                 _%str82691%_)
                '#!void)))))
    (define __string-split
      (lambda (_%str82632%_ _%char82633%_)
        (let ((_%str82636%_ _%str82632%_))
          (let* ((_%char82644%_ _%char82633%_)
                 (_%len82653%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str82636%_))))
            (let _%lp82655%_ ((_%start82657%_ '0) (_%r82658%_ '()))
              (let ()
                (let* ((_%start82661%_ _%start82657%_)
                       (_%$e82674%_
                        (let ()
                          (declare (not safe))
                          (string-index__%
                           _%str82636%_
                           _%char82644%_
                           _%start82661%_))))
                  (if _%$e82674%_
                      ((lambda (_%end82677%_)
                         (let ((_%end82679%_ _%end82677%_))
                           (let ((__tmp87466
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%end82679%_ '1)))
                                 (__tmp87465
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _%str82636%_
                                           _%start82661%_
                                           _%end82679%_))
                                        _%r82658%_)))
                             (declare (not safe))
                             (_%lp82655%_ __tmp87466 __tmp87465))))
                       _%$e82674%_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _%start82661%_ _%len82653%_))
                          (let ((__tmp87467
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _%str82636%_
                                          _%start82661%_
                                          _%len82653%_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp87467 _%r82658%_))
                          (let () (reverse! _%r82658%_)))))))))))
    (define string-join
      (lambda (_%strs82482%_ _%join82483%_)
        (let ()
          (letrec ((_%join-length82486%_
                    (lambda (_%strs82570%_ _%jlen82571%_)
                      (let _%lp82573%_ ((_%rest82575%_ _%strs82570%_)
                                        (_%len82576%_ '0))
                        (let ((_%len82578%_ _%len82576%_))
                          (let* ((_%rest8258682594%_ _%rest82575%_)
                                 (_%else8258882602%_ (lambda () '0))
                                 (_%K8259082620%_
                                  (lambda (_%rest82605%_ _%hd82606%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd82606%_))
                                        (let ((_%hd82608%_ _%hd82606%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest82605%_))
                                              (let ((__tmp87468
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd82608%_))
                                                          _%jlen82571%_
                                                          _%len82578%_)))
                                                (declare (not safe))
                                                (_%lp82573%_
                                                 _%rest82605%_
                                                 __tmp87468))
                                              (let ((__tmp87469
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd82608%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87469
                                                       _%len82578%_))))
                                        (error '"expected string"
                                               _%hd82606%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8258682594%_))
                                (let ((_%hd8259182623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8258682594%_)))
                                      (_%tl8259282625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8258682594%_))))
                                  (let* ((_%hd82628%_ _%hd8259182623%_)
                                         (_%rest82630%_ _%tl8259282625%_))
                                    (declare (not safe))
                                    (_%K8259082620%_
                                     _%rest82630%_
                                     _%hd82628%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8258882602%_)))))))))
            (let* ((_%join82491%_
                    (if (let () (declare (not safe)) (char? _%join82483%_))
                        (let () (declare (not safe)) (##string _%join82483%_))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82483%_))
                            (let () _%join82483%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82483%_)))))
                   (_%jlen82493%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join82491%_)))
                   (_%olen82495%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82486%_ _%strs82482%_ _%jlen82493%_)))
                   (_%ostr82497%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen82495%_))))
              (let _%lp82500%_ ((_%rest82502%_ _%strs82482%_) (_%k82503%_ '0))
                (let ((_%k82506%_ _%k82503%_))
                  (let* ((_%rest8252282530%_ _%rest82502%_)
                         (_%else8252482538%_ (lambda () '""))
                         (_%K8252682558%_
                          (lambda (_%rest82541%_ _%hd82542%_)
                            (let* ((_%hd82544%_ _%hd82542%_)
                                   (_%hdlen82556%_
                                    (let ()
                                      (declare (not safe))
                                      (##string-length _%hd82544%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%rest82541%_))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd82544%_
                                       '0
                                       _%hdlen82556%_
                                       _%ostr82497%_
                                       _%k82506%_))
                                    (let ((__tmp87470
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k82506%_
                                                    _%hdlen82556%_))))
                                      (declare (not safe))
                                      (##substring-move!
                                       _%join82491%_
                                       '0
                                       _%jlen82493%_
                                       _%ostr82497%_
                                       __tmp87470))
                                    (let ((__tmp87471
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k82506%_
                                                    _%hdlen82556%_
                                                    _%jlen82493%_))))
                                      (declare (not safe))
                                      (_%lp82500%_ _%rest82541%_ __tmp87471)))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd82544%_
                                       '0
                                       _%hdlen82556%_
                                       _%ostr82497%_
                                       _%k82506%_))
                                    _%ostr82497%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8252282530%_))
                        (let ((_%hd8252782561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8252282530%_)))
                              (_%tl8252882563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8252282530%_))))
                          (let* ((_%hd82566%_ _%hd8252782561%_)
                                 (_%rest82568%_ _%tl8252882563%_))
                            (declare (not safe))
                            (_%K8252682558%_ _%rest82568%_ _%hd82566%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8252482538%_)))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82408%_ _%port82409%_ _%start82410%_ _%end82411%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82408%_))
              (let ((_%bytes82415%_ _%bytes82408%_))
                (if (input-port? _%port82409%_)
                    (let ((_%port82425%_ _%port82409%_))
                      (if ((lambda (_%o82434%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82434%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82434%_ '0))
                                  (fx< _%o82434%_
                                       (u8vector-length _%bytes82415%_))))
                           _%start82410%_)
                          (let ((_%start82438%_ _%start82410%_))
                            (if ((lambda (_%o82447%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82447%_))
                                        (fx<= _%start82438%_
                                              _%o82447%_
                                              (u8vector-length
                                               _%bytes82415%_))))
                                 _%end82411%_)
                                (let ((_%end82451%_ _%end82411%_))
                                  (declare (not safe))
                                  (__read-u8vector__%
                                   _%bytes82415%_
                                   _%port82425%_
                                   _%start82438%_
                                   _%end82451%_))
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
                                   _%end82411%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82410%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82409%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@744.22-744.27"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82408%_)
                '#!void)))))
    (define read-u8vector__0
      (lambda (_%bytes82464%_ _%port82465%_)
        (let* ((_%start82467%_ '0) (_%end82469%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82464%_
           _%port82465%_
           _%start82467%_
           _%end82469%_))))
    (define read-u8vector__1
      (lambda (_%bytes82471%_ _%port82472%_ _%start82473%_)
        (let ((_%end82475%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82471%_
           _%port82472%_
           _%start82473%_
           _%end82475%_))))
    (define read-u8vector
      (lambda _g87473_
        (let ((_g87472_ (let () (declare (not safe)) (##length _g87473_))))
          (cond ((let () (declare (not safe)) (##fx= _g87472_ 2))
                 (apply (lambda (_%bytes82464%_ _%port82465%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82464%_ _%port82465%_)))
                        _g87473_))
                ((let () (declare (not safe)) (##fx= _g87472_ 3))
                 (apply (lambda (_%bytes82471%_ _%port82472%_ _%start82473%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82471%_
                             _%port82472%_
                             _%start82473%_)))
                        _g87473_))
                ((let () (declare (not safe)) (##fx= _g87472_ 4))
                 (apply (lambda (_%bytes82477%_
                                 _%port82478%_
                                 _%start82479%_
                                 _%end82480%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82477%_
                             _%port82478%_
                             _%start82479%_
                             _%end82480%_)))
                        _g87473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87473_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82347%_ _%port82348%_ _%start82349%_ _%end82350%_)
        (let ()
          (let* ((_%bytes82353%_ _%bytes82347%_) (_%port82361%_ _%port82348%_))
            (let* ((_%start82369%_ _%start82349%_) (_%end82377%_ _%end82350%_))
              (declare (not safe))
              (##read-subu8vector
               _%bytes82353%_
               _%start82369%_
               _%end82377%_
               _%port82361%_))))))
    (define __read-u8vector__0
      (lambda (_%bytes82389%_ _%port82390%_)
        (let* ((_%start82392%_ '0) (_%end82394%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82389%_
           _%port82390%_
           _%start82392%_
           _%end82394%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82396%_ _%port82397%_ _%start82398%_)
        (let ((_%end82400%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82396%_
           _%port82397%_
           _%start82398%_
           _%end82400%_))))
    (define __read-u8vector
      (lambda _g87475_
        (let ((_g87474_ (let () (declare (not safe)) (##length _g87475_))))
          (cond ((let () (declare (not safe)) (##fx= _g87474_ 2))
                 (apply (lambda (_%bytes82389%_ _%port82390%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82389%_ _%port82390%_)))
                        _g87475_))
                ((let () (declare (not safe)) (##fx= _g87474_ 3))
                 (apply (lambda (_%bytes82396%_ _%port82397%_ _%start82398%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82396%_
                             _%port82397%_
                             _%start82398%_)))
                        _g87475_))
                ((let () (declare (not safe)) (##fx= _g87474_ 4))
                 (apply (lambda (_%bytes82402%_
                                 _%port82403%_
                                 _%start82404%_
                                 _%end82405%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82402%_
                             _%port82403%_
                             _%start82404%_
                             _%end82405%_)))
                        _g87475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87475_))))))
    (define write-u8vector__%
      (lambda (_%bytes82272%_ _%port82273%_ _%start82274%_ _%end82275%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82272%_))
              (let ((_%bytes82279%_ _%bytes82272%_))
                (if (output-port? _%port82273%_)
                    (let ((_%port82289%_ _%port82273%_))
                      (if ((lambda (_%o82298%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82298%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82298%_ '0))
                                  (fx< _%o82298%_
                                       (u8vector-length _%bytes82279%_))))
                           _%start82274%_)
                          (let ((_%start82302%_ _%start82274%_))
                            (if ((lambda (_%o82311%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82311%_))
                                        (fx<= _%start82302%_
                                              _%o82311%_
                                              (u8vector-length
                                               _%bytes82279%_))))
                                 _%end82275%_)
                                (let ((_%end82315%_ _%end82275%_))
                                  (declare (not safe))
                                  (__write-u8vector__%
                                   _%bytes82279%_
                                   _%port82289%_
                                   _%start82302%_
                                   _%end82315%_))
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
                                   _%end82275%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82274%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82273%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@754.23-754.28"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82272%_)
                '#!void)))))
    (define write-u8vector__0
      (lambda (_%bytes82328%_ _%port82329%_)
        (let* ((_%start82331%_ '0) (_%end82333%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82328%_
           _%port82329%_
           _%start82331%_
           _%end82333%_))))
    (define write-u8vector__1
      (lambda (_%bytes82335%_ _%port82336%_ _%start82337%_)
        (let ((_%end82339%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82335%_
           _%port82336%_
           _%start82337%_
           _%end82339%_))))
    (define write-u8vector
      (lambda _g87477_
        (let ((_g87476_ (let () (declare (not safe)) (##length _g87477_))))
          (cond ((let () (declare (not safe)) (##fx= _g87476_ 2))
                 (apply (lambda (_%bytes82328%_ _%port82329%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82328%_ _%port82329%_)))
                        _g87477_))
                ((let () (declare (not safe)) (##fx= _g87476_ 3))
                 (apply (lambda (_%bytes82335%_ _%port82336%_ _%start82337%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82335%_
                             _%port82336%_
                             _%start82337%_)))
                        _g87477_))
                ((let () (declare (not safe)) (##fx= _g87476_ 4))
                 (apply (lambda (_%bytes82341%_
                                 _%port82342%_
                                 _%start82343%_
                                 _%end82344%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82341%_
                             _%port82342%_
                             _%start82343%_
                             _%end82344%_)))
                        _g87477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87477_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82211%_ _%port82212%_ _%start82213%_ _%end82214%_)
        (let ()
          (let* ((_%bytes82217%_ _%bytes82211%_) (_%port82225%_ _%port82212%_))
            (let* ((_%start82233%_ _%start82213%_) (_%end82241%_ _%end82214%_))
              (declare (not safe))
              (##write-subu8vector
               _%bytes82217%_
               _%start82233%_
               _%end82241%_
               _%port82225%_))))))
    (define __write-u8vector__0
      (lambda (_%bytes82253%_ _%port82254%_)
        (let* ((_%start82256%_ '0) (_%end82258%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82253%_
           _%port82254%_
           _%start82256%_
           _%end82258%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82260%_ _%port82261%_ _%start82262%_)
        (let ((_%end82264%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82260%_
           _%port82261%_
           _%start82262%_
           _%end82264%_))))
    (define __write-u8vector
      (lambda _g87479_
        (let ((_g87478_ (let () (declare (not safe)) (##length _g87479_))))
          (cond ((let () (declare (not safe)) (##fx= _g87478_ 2))
                 (apply (lambda (_%bytes82253%_ _%port82254%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82253%_
                             _%port82254%_)))
                        _g87479_))
                ((let () (declare (not safe)) (##fx= _g87478_ 3))
                 (apply (lambda (_%bytes82260%_ _%port82261%_ _%start82262%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82260%_
                             _%port82261%_
                             _%start82262%_)))
                        _g87479_))
                ((let () (declare (not safe)) (##fx= _g87478_ 4))
                 (apply (lambda (_%bytes82266%_
                                 _%port82267%_
                                 _%start82268%_
                                 _%end82269%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82266%_
                             _%port82267%_
                             _%start82268%_
                             _%end82269%_)))
                        _g87479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87479_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82179%_
               _%dbg-exprs82180%_
               _%dbg-thunks82181%_
               _%expr82182%_
               _%thunk82183%_)
        (letrec ((_%o82185%_ (current-output-port))
                 (_%e82186%_ (current-error-port))
                 (_%p82187%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82188%_
                  (lambda ()
                    (force-output _%o82185%_)
                    (force-output _%e82186%_)))
                 (_%d82189%_
                  (lambda (_%x82196%_) (display _%x82196%_ _%e82186%_)))
                 (_%w82190%_
                  (lambda (_%x82198%_) (_%p82187%_ _%x82198%_ _%e82186%_)))
                 (_%n82191%_ (lambda () (newline _%e82186%_)))
                 (_%v82192%_
                  (lambda (_%l82201%_)
                    (for-each
                     (lambda (_%x82203%_)
                       (let () (declare (not safe)) (_%d82189%_ '" "))
                       (let () (declare (not safe)) (_%w82190%_ _%x82203%_)))
                     _%l82201%_)
                    (let () (declare (not safe)) (_%n82191%_))))
                 (_%x82193%_
                  (lambda (_%expr82205%_ _%thunk82206%_)
                    (let () (declare (not safe)) (_%f82188%_))
                    (let () (declare (not safe)) (_%d82189%_ '"  "))
                    (let () (declare (not safe)) (_%w82190%_ _%expr82205%_))
                    (let () (declare (not safe)) (_%d82189%_ '" =>"))
                    (call-with-values
                     _%thunk82206%_
                     (lambda _%x82208%_
                       (let () (declare (not safe)) (_%v82192%_ _%x82208%_))
                       (let () (declare (not safe)) (_%f82188%_))
                       (apply values _%x82208%_))))))
          (if _%tag82179%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82179%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82188%_))
                      (let () (declare (not safe)) (_%d82189%_ _%tag82179%_))
                      (let () (declare (not safe)) (_%n82191%_))))
                (for-each _%x82193%_ _%dbg-exprs82180%_ _%dbg-thunks82181%_)
                (if _%thunk82183%_
                    (let ()
                      (declare (not safe))
                      (_%x82193%_ _%expr82182%_ _%thunk82183%_))
                    '#!void))
              (if _%thunk82183%_ (_%thunk82183%_) '#!void)))))))
