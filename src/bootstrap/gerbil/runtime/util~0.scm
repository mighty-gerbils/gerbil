(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712251109)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86186%_
        (let () (for-each display _%args86186%_) (newline))))
    (define display*
      (lambda _%args86183%_ (let () (for-each display _%args86183%_))))
    (define file-newer?
      (lambda (_%file186158%_ _%file286159%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file186158%_))
              (let ((_%file186163%_ _%file186158%_))
                (if (let () (declare (not safe)) (string? _%file286159%_))
                    (let ((_%file286173%_ _%file286159%_))
                      (declare (not safe))
                      (__file-newer? _%file186163%_ _%file286173%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file286159%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@61.20-61.25"
                 'contract:
                 'string?
                 'value:
                 _%file186158%_)
                '#!void)))))
    (define __file-newer?
      (lambda (_%file186106%_ _%file286107%_)
        (let ()
          (let* ((_%file186110%_ _%file186106%_)
                 (_%file286118%_ _%file286107%_))
            (letrec ((_%modification-time86127%_
                      (lambda (_%file86146%_)
                        (let ((_%file86149%_ _%file86146%_))
                          (declare (not safe))
                          (_%__modification-time86128%_ _%file86149%_))))
                     (_%__modification-time86128%_
                      (lambda (_%file86130%_)
                        (let ()
                          (let* ((_%file86133%_ _%file86130%_)
                                 (__tmp87927
                                  (let ((__tmp87928
                                         (let ()
                                           (declare (not safe))
                                           (##file-info _%file86133%_ '#t))))
                                    (declare (not safe))
                                    (##file-info-last-modification-time
                                     __tmp87928))))
                            (declare (not safe))
                            (##time->seconds __tmp87927))))))
              (let ((__tmp87930
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86128%_ _%file186110%_)))
                    (__tmp87929
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86128%_ _%file286118%_))))
                (declare (not safe))
                (##fl> __tmp87930 __tmp87929)))))))
    (define create-directory*__%
      (lambda (_%dir86071%_ _%perms86072%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir86071%_))
              (let ((_%dir86076%_ _%dir86071%_))
                (if (let () (declare (not safe)) (fixnum? _%perms86072%_))
                    (let ((_%perms86086%_ _%perms86072%_))
                      (declare (not safe))
                      (__create-directory*__% _%dir86076%_ _%perms86086%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms86072%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@72.26-72.29"
                 'contract:
                 'string?
                 'value:
                 _%dir86071%_)
                '#!void)))))
    (define create-directory*__0
      (lambda (_%dir86099%_)
        (let ((_%perms86101%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir86099%_ _%perms86101%_))))
    (define create-directory*
      (lambda _g87932_
        (let ((_g87931_ (let () (declare (not safe)) (##length _g87932_))))
          (cond ((let () (declare (not safe)) (##fx= _g87931_ 1))
                 (apply (lambda (_%dir86099%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir86099%_)))
                        _g87932_))
                ((let () (declare (not safe)) (##fx= _g87931_ 2))
                 (apply (lambda (_%dir86103%_ _%perms86104%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir86103%_
                             _%perms86104%_)))
                        _g87932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87932_))))))
    (define __create-directory*__%
      (lambda (_%dir85995%_ _%perms85996%_)
        (let ()
          (let* ((_%dir85999%_ _%dir85995%_) (_%perms86007%_ _%perms85996%_))
            (letrec ((_%create186016%_
                      (lambda (_%path86048%_)
                        (let ((_%path86051%_ _%path86048%_))
                          (declare (not safe))
                          (_%__create186017%_ _%path86051%_))))
                     (_%__create186017%_
                      (lambda (_%path86029%_)
                        (let ((_%path86032%_ _%path86029%_))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%path86032%_))
                              (let ()
                                (if (eq? (file-type _%path86032%_) 'directory)
                                    '#!void
                                    (error '"Path component is not a directory"
                                           _%path86032%_)))
                              (if _%perms86007%_
                                  (let ()
                                    (create-directory
                                     (cons 'path:
                                           (cons _%path86032%_
                                                 (cons 'permissions:
                                                       (cons _%perms86007%_
                                                             '()))))))
                                  (let ()
                                    (create-directory _%path86032%_))))))))
              (if (let () (declare (not safe)) (##file-exists? _%dir85999%_))
                  '#!void
                  (let _%lp86019%_ ((_%start86021%_ '0))
                    (let ((_%$e86023%_
                           (let ()
                             (declare (not safe))
                             (__string-index
                              _%dir85999%_
                              '#\/
                              _%start86021%_))))
                      (if _%$e86023%_
                          ((lambda (_%x86026%_)
                             (if (let ()
                                   (declare (not safe))
                                   (##fx> _%x86026%_ '0))
                                 (let ((__tmp87933
                                        (substring
                                         _%dir85999%_
                                         '0
                                         _%x86026%_)))
                                   (declare (not safe))
                                   (_%__create186017%_ __tmp87933))
                                 '#!void)
                             (let ((__tmp87934
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%x86026%_ '1))))
                               (declare (not safe))
                               (_%lp86019%_ __tmp87934)))
                           _%$e86023%_)
                          (let ()
                            (declare (not safe))
                            (_%__create186017%_ _%dir85999%_))))))
              '#!void)))))
    (define __create-directory*__0
      (lambda (_%dir86063%_)
        (let ((_%perms86065%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir86063%_ _%perms86065%_))))
    (define __create-directory*
      (lambda _g87936_
        (let ((_g87935_ (let () (declare (not safe)) (##length _g87936_))))
          (cond ((let () (declare (not safe)) (##fx= _g87935_ 1))
                 (apply (lambda (_%dir86063%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir86063%_)))
                        _g87936_))
                ((let () (declare (not safe)) (##fx= _g87935_ 2))
                 (apply (lambda (_%dir86067%_ _%perms86068%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir86067%_
                             _%perms86068%_)))
                        _g87936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87936_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85991%_ (let () '#t)))
    (define true? (lambda (_%obj85988%_) (let () (eq? _%obj85988%_ '#t))))
    (define false (lambda _%ignore85985%_ (let () '#f)))
    (define void (lambda _%ignore85982%_ (let () '#!void)))
    (define void? (lambda (_%obj85979%_) (let () (eq? _%obj85979%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85976%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85976%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85973%_) (let () (eq? _%obj85973%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85970%_) (let () (eq? _%obj85970%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85967%_) (let () (eq? _%obj85967%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85962%_)
        (let ()
          (let* ((_%t85965%_
                  (let () (declare (not safe)) (##type _%obj85962%_)))
                 (__tmp87937
                  (let () (declare (not safe)) (##fxand _%t85965%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87937)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85959%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85959%_))
              (let () (declare (not safe)) (##fx>= _%obj85959%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85953%_)
        (let ((_%$e85956%_ (let () (declare (not safe)) (pair? _%obj85953%_))))
          (if _%$e85956%_
              _%$e85956%_
              (let () (declare (not safe)) (null? _%obj85953%_))))))
    (define values-count
      (lambda (_%obj85950%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85950%_))
              (let () (declare (not safe)) (##vector-length _%obj85950%_))
              '1))))
    (define values-ref
      (lambda (_%obj85935%_ _%k85936%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85936%_))
              (let ((_%k85940%_ _%k85936%_))
                (declare (not safe))
                (__values-ref _%obj85935%_ _%k85940%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@198.23-198.24"
                 'contract:
                 'fixnum?
                 'value:
                 _%k85936%_)
                '#!void)))))
    (define __values-ref
      (lambda (_%obj85922%_ _%k85923%_)
        (let ((_%k85926%_ _%k85923%_))
          (if (let () (declare (not safe)) (##values? _%obj85922%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85922%_ _%k85926%_))
              _%obj85922%_))))
    (define values->list
      (lambda (_%obj85919%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85919%_))
              (let () (declare (not safe)) (##vector->list _%obj85919%_))
              (list _%obj85919%_)))))
    (define foldl1
      (lambda (_%f85903%_ _%iv85904%_ _%lst85905%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85903%_))
              (let ((_%f85909%_ _%f85903%_))
                (declare (not safe))
                (__foldl1 _%f85909%_ _%iv85904%_ _%lst85905%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@221.15-221.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85903%_)
                '#!void)))))
    (define __foldl1
      (lambda (_%f85851%_ _%iv85852%_ _%lst85853%_)
        (let ((_%f85856%_ _%f85851%_))
          (let _%lp85865%_ ((_%rest85867%_ _%lst85853%_)
                            (_%r85868%_ _%iv85852%_))
            (let* ((_%rest8586985877%_ _%rest85867%_)
                   (_%else8587185885%_ (lambda () _%r85868%_))
                   (_%K8587385891%_
                    (lambda (_%rest85888%_ _%x85889%_)
                      (let ((__tmp87938
                             (let ()
                               (declare (not safe))
                               (_%f85856%_ _%x85889%_ _%r85868%_))))
                        (declare (not safe))
                        (_%lp85865%_ _%rest85888%_ __tmp87938)))))
              (if (let () (declare (not safe)) (##pair? _%rest8586985877%_))
                  (let ((_%hd8587485894%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8586985877%_)))
                        (_%tl8587585896%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8586985877%_))))
                    (let* ((_%x85899%_ _%hd8587485894%_)
                           (_%rest85901%_ _%tl8587585896%_))
                      (declare (not safe))
                      (_%K8587385891%_ _%rest85901%_ _%x85899%_)))
                  (let () (declare (not safe)) (_%else8587185885%_))))))))
    (define foldl2
      (lambda (_%f85834%_ _%iv85835%_ _%lst185836%_ _%lst285837%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85834%_))
              (let ((_%f85841%_ _%f85834%_))
                (declare (not safe))
                (__foldl2 _%f85841%_ _%iv85835%_ _%lst185836%_ _%lst285837%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@228.15-228.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85834%_)
                '#!void)))))
    (define __foldl2
      (lambda (_%f85747%_ _%iv85748%_ _%lst185749%_ _%lst285750%_)
        (let ((_%f85753%_ _%f85747%_))
          (let _%lp85762%_ ((_%rest185764%_ _%lst185749%_)
                            (_%rest285765%_ _%lst285750%_)
                            (_%r85766%_ _%iv85748%_))
            (let* ((_%rest18576785775%_ _%rest185764%_)
                   (_%else8576985783%_ (lambda () _%r85766%_))
                   (_%K8577185822%_
                    (lambda (_%rest185786%_ _%x185787%_)
                      (let* ((_%rest28578885796%_ _%rest285765%_)
                             (_%else8579085804%_ (lambda () _%r85766%_))
                             (_%K8579285810%_
                              (lambda (_%rest285807%_ _%x285808%_)
                                (let ((__tmp87939
                                       (let ()
                                         (declare (not safe))
                                         (_%f85753%_
                                          _%x185787%_
                                          _%x285808%_
                                          _%r85766%_))))
                                  (declare (not safe))
                                  (_%lp85762%_
                                   _%rest185786%_
                                   _%rest285807%_
                                   __tmp87939)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28578885796%_))
                            (let ((_%hd8579385813%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28578885796%_)))
                                  (_%tl8579485815%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28578885796%_))))
                              (let* ((_%x285818%_ _%hd8579385813%_)
                                     (_%rest285820%_ _%tl8579485815%_))
                                (declare (not safe))
                                (_%K8579285810%_ _%rest285820%_ _%x285818%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8579085804%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18576785775%_))
                  (let ((_%hd8577285825%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18576785775%_)))
                        (_%tl8577385827%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18576785775%_))))
                    (let* ((_%x185830%_ _%hd8577285825%_)
                           (_%rest185832%_ _%tl8577385827%_))
                      (declare (not safe))
                      (_%K8577185822%_ _%rest185832%_ _%x185830%_)))
                  (let () (declare (not safe)) (_%else8576985783%_))))))))
    (define foldl
      (lambda _g87941_
        (let ((_g87940_ (let () (declare (not safe)) (##length _g87941_))))
          (cond ((let () (declare (not safe)) (##fx= _g87940_ 3))
                 (apply (lambda (_%f85732%_ _%iv85733%_ _%lst85734%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85732%_ _%iv85733%_ _%lst85734%_)))
                        _g87941_))
                ((let () (declare (not safe)) (##fx= _g87940_ 4))
                 (apply (lambda (_%f85736%_
                                 _%iv85737%_
                                 _%lst185738%_
                                 _%lst285739%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85736%_
                                    _%iv85737%_
                                    _%lst185738%_
                                    _%lst285739%_)))
                        _g87941_))
                ((let () (declare (not safe)) (##fx>= _g87940_ 4))
                 (apply foldl* _g87941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87941_))))))
    (define foldl*
      (lambda (_%f85716%_ _%iv85717%_ . _%rest85718%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85716%_))
              (let ((_%f85722%_ _%f85716%_))
                (declare (not safe))
                (##apply __foldl* _%f85722%_ _%iv85717%_ _%rest85718%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@246.15-246.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85716%_)
                '#!void)))))
    (define __foldl*
      (lambda (_%f85694%_ _%iv85695%_ . _%rest85696%_)
        (let ((_%f85699%_ _%f85694%_))
          (let _%recur85708%_ ((_%iv85710%_ _%iv85695%_)
                               (_%rest85711%_ _%rest85696%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85711%_))
                (let ((__tmp87943
                       (let ((__tmp87944
                              (let ((__tmp87946
                                     (lambda (_%xs85713%_ _%r85714%_)
                                       (cons (car _%xs85713%_) _%r85714%_)))
                                    (__tmp87945 (list _%iv85710%_)))
                                (declare (not safe))
                                (__foldr1
                                 __tmp87946
                                 __tmp87945
                                 _%rest85711%_))))
                         (declare (not safe))
                         (##apply _%f85699%_ __tmp87944)))
                      (__tmp87942 (map cdr _%rest85711%_)))
                  (declare (not safe))
                  (_%recur85708%_ __tmp87943 __tmp87942))
                _%iv85710%_)))))
    (define foldr1
      (lambda (_%f85678%_ _%iv85679%_ _%lst85680%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85678%_))
              (let ((_%f85684%_ _%f85678%_))
                (declare (not safe))
                (__foldr1 _%f85684%_ _%iv85679%_ _%lst85680%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@256.15-256.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85678%_)
                '#!void)))))
    (define __foldr1
      (lambda (_%f85627%_ _%iv85628%_ _%lst85629%_)
        (let ((_%f85632%_ _%f85627%_))
          (let _%recur85641%_ ((_%rest85643%_ _%lst85629%_))
            (let* ((_%rest8564485652%_ _%rest85643%_)
                   (_%else8564685660%_ (lambda () _%iv85628%_))
                   (_%K8564885666%_
                    (lambda (_%rest85663%_ _%x85664%_)
                      (let ((__tmp87947
                             (let ()
                               (declare (not safe))
                               (_%recur85641%_ _%rest85663%_))))
                        (declare (not safe))
                        (_%f85632%_ _%x85664%_ __tmp87947)))))
              (if (let () (declare (not safe)) (##pair? _%rest8564485652%_))
                  (let ((_%hd8564985669%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8564485652%_)))
                        (_%tl8565085671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8564485652%_))))
                    (let* ((_%x85674%_ _%hd8564985669%_)
                           (_%rest85676%_ _%tl8565085671%_))
                      (declare (not safe))
                      (_%K8564885666%_ _%rest85676%_ _%x85674%_)))
                  (let () (declare (not safe)) (_%else8564685660%_))))))))
    (define foldr2
      (lambda (_%f85610%_ _%iv85611%_ _%lst185612%_ _%lst285613%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85610%_))
              (let ((_%f85617%_ _%f85610%_))
                (declare (not safe))
                (__foldr2 _%f85617%_ _%iv85611%_ _%lst185612%_ _%lst285613%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@263.15-263.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85610%_)
                '#!void)))))
    (define __foldr2
      (lambda (_%f85524%_ _%iv85525%_ _%lst185526%_ _%lst285527%_)
        (let ((_%f85530%_ _%f85524%_))
          (let _%recur85539%_ ((_%rest185541%_ _%lst185526%_)
                               (_%rest285542%_ _%lst285527%_))
            (let* ((_%rest18554385551%_ _%rest185541%_)
                   (_%else8554585559%_ (lambda () _%iv85525%_))
                   (_%K8554785598%_
                    (lambda (_%rest185562%_ _%x185563%_)
                      (let* ((_%rest28556485572%_ _%rest285542%_)
                             (_%else8556685580%_ (lambda () _%iv85525%_))
                             (_%K8556885586%_
                              (lambda (_%rest285583%_ _%x285584%_)
                                (let ((__tmp87948
                                       (let ()
                                         (declare (not safe))
                                         (_%recur85539%_
                                          _%rest185562%_
                                          _%rest285583%_))))
                                  (declare (not safe))
                                  (_%f85530%_
                                   _%x185563%_
                                   _%x285584%_
                                   __tmp87948)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28556485572%_))
                            (let ((_%hd8556985589%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28556485572%_)))
                                  (_%tl8557085591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28556485572%_))))
                              (let* ((_%x285594%_ _%hd8556985589%_)
                                     (_%rest285596%_ _%tl8557085591%_))
                                (declare (not safe))
                                (_%K8556885586%_ _%rest285596%_ _%x285594%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8556685580%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18554385551%_))
                  (let ((_%hd8554885601%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18554385551%_)))
                        (_%tl8554985603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18554385551%_))))
                    (let* ((_%x185606%_ _%hd8554885601%_)
                           (_%rest185608%_ _%tl8554985603%_))
                      (declare (not safe))
                      (_%K8554785598%_ _%rest185608%_ _%x185606%_)))
                  (let () (declare (not safe)) (_%else8554585559%_))))))))
    (define foldr
      (lambda _g87950_
        (let ((_g87949_ (let () (declare (not safe)) (##length _g87950_))))
          (cond ((let () (declare (not safe)) (##fx= _g87949_ 3))
                 (apply (lambda (_%f85509%_ _%iv85510%_ _%lst85511%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f85509%_ _%iv85510%_ _%lst85511%_)))
                        _g87950_))
                ((let () (declare (not safe)) (##fx= _g87949_ 4))
                 (apply (lambda (_%f85513%_
                                 _%iv85514%_
                                 _%lst185515%_
                                 _%lst285516%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f85513%_
                                    _%iv85514%_
                                    _%lst185515%_
                                    _%lst285516%_)))
                        _g87950_))
                ((let () (declare (not safe)) (##fx>= _g87949_ 4))
                 (apply foldr* _g87950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87950_))))))
    (define foldr*
      (lambda (_%f85493%_ _%iv85494%_ . _%rest85495%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85493%_))
              (let ((_%f85499%_ _%f85493%_))
                (declare (not safe))
                (##apply __foldr* _%f85499%_ _%iv85494%_ _%rest85495%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@281.15-281.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85493%_)
                '#!void)))))
    (define __foldr*
      (lambda (_%f85472%_ _%iv85473%_ . _%rest85474%_)
        (let ((_%f85477%_ _%f85472%_))
          (let _%recur85486%_ ((_%rest85488%_ _%rest85474%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85488%_))
                (let ((__tmp87951
                       (let ((__tmp87954
                              (lambda (_%xs85490%_ _%r85491%_)
                                (cons (car _%xs85490%_) _%r85491%_)))
                             (__tmp87952
                              (list (let ((__tmp87953 (map cdr _%rest85488%_)))
                                      (declare (not safe))
                                      (_%recur85486%_ __tmp87953)))))
                         (declare (not safe))
                         (__foldr1 __tmp87954 __tmp87952 _%rest85488%_))))
                  (declare (not safe))
                  (##apply _%f85477%_ __tmp87951))
                _%iv85473%_)))))
    (define remove-nulls!
      (lambda (_%l85359%_)
        (let* ((_%l8536085373%_ _%l85359%_)
               (_%E8536485377%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8536085373%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8536985462%_
                 (lambda (_%r85460%_)
                   (let () (declare (not safe)) (remove-nulls! _%r85460%_))))
                (_%K8536685449%_
                 (lambda (_%r85389%_)
                   (let _%loop85391%_ ((_%l85393%_ _%l85359%_)
                                       (_%r85394%_ _%r85389%_))
                     (let* ((_%r8539585408%_ _%r85394%_)
                            (_%E8539985412%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8539585408%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8540485439%_
                              (lambda (_%rr85437%_)
                                (let ((__tmp87956 _%l85393%_)
                                      (__tmp87955
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr85437%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87956 __tmp87955))))
                             (_%K8540185426%_
                              (lambda (_%rr85424%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop85391%_ _%r85394%_ _%rr85424%_))))
                             (_%K8540085417%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8539585408%_))
                             (let ((_%tl8540685444%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8539585408%_)))
                                   (_%hd8540585442%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8539585408%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8540585442%_))
                                   (let ((_%rr85447%_ _%tl8540685444%_))
                                     (declare (not safe))
                                     (_%K8540485439%_ _%rr85447%_))
                                   (let ((_%rr85432%_ _%tl8540685444%_))
                                     (declare (not safe))
                                     (_%K8540185426%_ _%rr85432%_))))
                             '#!void))))
                   _%l85359%_))
                (_%K8536585382%_ (lambda () _%l85359%_)))
            (if (let () (declare (not safe)) (##pair? _%l8536085373%_))
                (let ((_%tl8537185467%_
                       (let () (declare (not safe)) (##cdr _%l8536085373%_)))
                      (_%hd8537085465%_
                       (let () (declare (not safe)) (##car _%l8536085373%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8537085465%_))
                      (let ((_%r85470%_ _%tl8537185467%_))
                        (declare (not safe))
                        (remove-nulls! _%r85470%_))
                      (let ((_%r85455%_ _%tl8537185467%_))
                        (declare (not safe))
                        (_%K8536685449%_ _%r85455%_))))
                (let () (declare (not safe)) (_%K8536585382%_)))))))
    (define append1!
      (lambda (_%l85344%_ _%x85345%_)
        (let ((_%l285348%_ (cons _%x85345%_ '())))
          (if (let () (declare (not safe)) (pair? _%l85344%_))
              (let ((_%l85350%_ _%l85344%_))
                (let ((__tmp87957
                       (let () (declare (not safe)) (##last-pair _%l85350%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87957 _%l285348%_))
                _%l85350%_)
              _%l285348%_))))
    (define append-reverse-until
      (lambda (_%pred85328%_ _%rhead85329%_ _%tail85330%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred85328%_))
              (let ((_%pred85334%_ _%pred85328%_))
                (declare (not safe))
                (__append-reverse-until
                 _%pred85334%_
                 _%rhead85329%_
                 _%tail85330%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@321.29-321.33"
                 'contract:
                 'procedure?
                 'value:
                 _%pred85328%_)
                '#!void)))))
    (define __append-reverse-until
      (lambda (_%pred85270%_ _%rhead85271%_ _%tail85272%_)
        (let ((_%pred85275%_ _%pred85270%_))
          (let _%loop85284%_ ((_%rhead85286%_ _%rhead85271%_)
                              (_%tail85287%_ _%tail85272%_))
            (let ()
              (let* ((_%rhead8528985298%_ _%rhead85286%_)
                     (_%E8529285302%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rhead8528985298%_
                               '([])
                               '([a :: r]))
                        '#!void)))
                (let ((_%K8529685325%_ (lambda () (values '() _%tail85287%_)))
                      (_%K8529385309%_
                       (lambda (_%r85306%_ _%a85307%_)
                         (if (let ()
                               (declare (not safe))
                               (_%pred85275%_ _%a85307%_))
                             (values _%rhead85286%_ _%tail85287%_)
                             (let ((__tmp87958
                                    (cons _%a85307%_ _%tail85287%_)))
                               (declare (not safe))
                               (_%loop85284%_ _%r85306%_ __tmp87958))))))
                  (let ((_%try-match8529185321%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rhead8528985298%_))
                               (let ((_%tl8529585314%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rhead8528985298%_)))
                                     (_%hd8529485312%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rhead8528985298%_))))
                                 (let ((_%a85317%_ _%hd8529485312%_)
                                       (_%r85319%_ _%tl8529585314%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K8529385309%_ _%r85319%_ _%a85317%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%E8529285302%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%rhead8528985298%_))
                        (let () (declare (not safe)) (_%K8529685325%_))
                        (let ()
                          (declare (not safe))
                          (_%try-match8529185321%_)))))))))))
    (define andmap1
      (lambda (_%f85255%_ _%lst85256%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85255%_))
              (let ((_%f85260%_ _%f85255%_))
                (declare (not safe))
                (__andmap1 _%f85260%_ _%lst85256%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@332.16-332.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85255%_)
                '#!void)))))
    (define __andmap1
      (lambda (_%f85204%_ _%lst85205%_)
        (let ((_%f85208%_ _%f85204%_))
          (let _%lp85217%_ ((_%rest85219%_ _%lst85205%_))
            (let ()
              (let* ((_%rest8522185229%_ _%rest85219%_)
                     (_%else8522385237%_ (lambda () '#t))
                     (_%K8522585243%_
                      (lambda (_%rest85240%_ _%x85241%_)
                        (if (let ()
                              (declare (not safe))
                              (_%f85208%_ _%x85241%_))
                            (let ()
                              (declare (not safe))
                              (_%lp85217%_ _%rest85240%_))
                            '#f))))
                (if (let () (declare (not safe)) (##pair? _%rest8522185229%_))
                    (let ((_%hd8522685246%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8522185229%_)))
                          (_%tl8522785248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8522185229%_))))
                      (let* ((_%x85251%_ _%hd8522685246%_)
                             (_%rest85253%_ _%tl8522785248%_))
                        (declare (not safe))
                        (_%K8522585243%_ _%rest85253%_ _%x85251%_)))
                    (let () (declare (not safe)) (_%else8522385237%_)))))))))
    (define andmap2
      (lambda (_%f85188%_ _%lst185189%_ _%lst285190%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85188%_))
              (let ((_%f85194%_ _%f85188%_))
                (declare (not safe))
                (__andmap2 _%f85194%_ _%lst185189%_ _%lst285190%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@341.16-341.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85188%_)
                '#!void)))))
    (define __andmap2
      (lambda (_%f85102%_ _%lst185103%_ _%lst285104%_)
        (let ((_%f85107%_ _%f85102%_))
          (let _%lp85116%_ ((_%rest185118%_ _%lst185103%_)
                            (_%rest285119%_ _%lst285104%_))
            (let ()
              (let* ((_%rest18512185129%_ _%rest185118%_)
                     (_%else8512385137%_ (lambda () '#t))
                     (_%K8512585176%_
                      (lambda (_%rest185140%_ _%x185141%_)
                        (let* ((_%rest28514285150%_ _%rest285119%_)
                               (_%else8514485158%_ (lambda () '#t))
                               (_%K8514685164%_
                                (lambda (_%rest285161%_ _%x285162%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (_%f85107%_ _%x185141%_ _%x285162%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp85116%_
                                         _%rest185140%_
                                         _%rest285161%_))
                                      '#f))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28514285150%_))
                              (let ((_%hd8514785167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28514285150%_)))
                                    (_%tl8514885169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28514285150%_))))
                                (let* ((_%x285172%_ _%hd8514785167%_)
                                       (_%rest285174%_ _%tl8514885169%_))
                                  (declare (not safe))
                                  (_%K8514685164%_
                                   _%rest285174%_
                                   _%x285172%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8514485158%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18512185129%_))
                    (let ((_%hd8512685179%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18512185129%_)))
                          (_%tl8512785181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18512185129%_))))
                      (let* ((_%x185184%_ _%hd8512685179%_)
                             (_%rest185186%_ _%tl8512785181%_))
                        (declare (not safe))
                        (_%K8512585176%_ _%rest185186%_ _%x185184%_)))
                    (let () (declare (not safe)) (_%else8512385137%_)))))))))
    (define andmap
      (lambda _g87960_
        (let ((_g87959_ (let () (declare (not safe)) (##length _g87960_))))
          (cond ((let () (declare (not safe)) (##fx= _g87959_ 2))
                 (apply (lambda (_%f85090%_ _%lst85091%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f85090%_ _%lst85091%_)))
                        _g87960_))
                ((let () (declare (not safe)) (##fx= _g87959_ 3))
                 (apply (lambda (_%f85093%_ _%lst185094%_ _%lst285095%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f85093%_ _%lst185094%_ _%lst285095%_)))
                        _g87960_))
                ((let () (declare (not safe)) (##fx>= _g87959_ 3))
                 (apply andmap* _g87960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87960_))))))
    (define andmap*
      (lambda (_%f85075%_ . _%rest85076%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85075%_))
              (let ((_%f85080%_ _%f85075%_))
                (declare (not safe))
                (##apply __andmap* _%f85080%_ _%rest85076%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@361.16-361.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85075%_)
                '#!void)))))
    (define __andmap*
      (lambda (_%f85057%_ . _%rest85058%_)
        (let ((_%f85061%_ _%f85057%_))
          (let _%recur85070%_ ((_%rest85072%_ _%rest85058%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest85072%_))
                  (if (let ((__tmp87961 (map car _%rest85072%_)))
                        (declare (not safe))
                        (##apply _%f85061%_ __tmp87961))
                      (let ((__tmp87962 (map cdr _%rest85072%_)))
                        (declare (not safe))
                        (_%recur85070%_ __tmp87962))
                      '#f)
                  '#t))))))
    (define ormap1
      (lambda (_%f85042%_ _%lst85043%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85042%_))
              (let ((_%f85047%_ _%f85042%_))
                (declare (not safe))
                (__ormap1 _%f85047%_ _%lst85043%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@370.15-370.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85042%_)
                '#!void)))))
    (define __ormap1
      (lambda (_%f84989%_ _%lst84990%_)
        (let ((_%f84993%_ _%f84989%_))
          (let _%lp85002%_ ((_%rest85004%_ _%lst84990%_))
            (let* ((_%rest8500585013%_ _%rest85004%_)
                   (_%else8500785021%_ (lambda () '#f))
                   (_%K8500985030%_
                    (lambda (_%rest85024%_ _%x85025%_)
                      (let ((_%$e85027%_
                             (let ()
                               (declare (not safe))
                               (_%f84993%_ _%x85025%_))))
                        (if _%$e85027%_
                            _%$e85027%_
                            (let ()
                              (declare (not safe))
                              (_%lp85002%_ _%rest85024%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest8500585013%_))
                  (let ((_%hd8501085033%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8500585013%_)))
                        (_%tl8501185035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8500585013%_))))
                    (let* ((_%x85038%_ _%hd8501085033%_)
                           (_%rest85040%_ _%tl8501185035%_))
                      (declare (not safe))
                      (_%K8500985030%_ _%rest85040%_ _%x85038%_)))
                  (let () (declare (not safe)) (_%else8500785021%_))))))))
    (define ormap2
      (lambda (_%f84973%_ _%lst184974%_ _%lst284975%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84973%_))
              (let ((_%f84979%_ _%f84973%_))
                (declare (not safe))
                (__ormap2 _%f84979%_ _%lst184974%_ _%lst284975%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@377.15-377.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84973%_)
                '#!void)))))
    (define __ormap2
      (lambda (_%f84885%_ _%lst184886%_ _%lst284887%_)
        (let ((_%f84890%_ _%f84885%_))
          (let _%lp84899%_ ((_%rest184901%_ _%lst184886%_)
                            (_%rest284902%_ _%lst284887%_))
            (let* ((_%rest18490384911%_ _%rest184901%_)
                   (_%else8490584919%_ (lambda () '#f))
                   (_%K8490784961%_
                    (lambda (_%rest184922%_ _%x184923%_)
                      (let* ((_%rest28492484932%_ _%rest284902%_)
                             (_%else8492684940%_ (lambda () '#f))
                             (_%K8492884949%_
                              (lambda (_%rest284943%_ _%x284944%_)
                                (let ((_%$e84946%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84890%_
                                          _%x184923%_
                                          _%x284944%_))))
                                  (if _%$e84946%_
                                      _%$e84946%_
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84899%_
                                         _%rest184922%_
                                         _%rest284943%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28492484932%_))
                            (let ((_%hd8492984952%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28492484932%_)))
                                  (_%tl8493084954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28492484932%_))))
                              (let* ((_%x284957%_ _%hd8492984952%_)
                                     (_%rest284959%_ _%tl8493084954%_))
                                (declare (not safe))
                                (_%K8492884949%_ _%rest284959%_ _%x284957%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8492684940%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18490384911%_))
                  (let ((_%hd8490884964%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18490384911%_)))
                        (_%tl8490984966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18490384911%_))))
                    (let* ((_%x184969%_ _%hd8490884964%_)
                           (_%rest184971%_ _%tl8490984966%_))
                      (declare (not safe))
                      (_%K8490784961%_ _%rest184971%_ _%x184969%_)))
                  (let () (declare (not safe)) (_%else8490584919%_))))))))
    (define ormap
      (lambda _g87964_
        (let ((_g87963_ (let () (declare (not safe)) (##length _g87964_))))
          (cond ((let () (declare (not safe)) (##fx= _g87963_ 2))
                 (apply (lambda (_%f84873%_ _%lst84874%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84873%_ _%lst84874%_)))
                        _g87964_))
                ((let () (declare (not safe)) (##fx= _g87963_ 3))
                 (apply (lambda (_%f84876%_ _%lst184877%_ _%lst284878%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84876%_ _%lst184877%_ _%lst284878%_)))
                        _g87964_))
                ((let () (declare (not safe)) (##fx>= _g87963_ 3))
                 (apply ormap* _g87964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87964_))))))
    (define ormap*
      (lambda (_%f84858%_ . _%rest84859%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84858%_))
              (let ((_%f84863%_ _%f84858%_))
                (declare (not safe))
                (##apply __ormap* _%f84863%_ _%rest84859%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@395.15-395.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84858%_)
                '#!void)))))
    (define __ormap*
      (lambda (_%f84838%_ . _%rest84839%_)
        (let ((_%f84842%_ _%f84838%_))
          (let _%recur84851%_ ((_%rest84853%_ _%rest84839%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84853%_))
                (let ((_%$e84855%_
                       (let ((__tmp87965 (map car _%rest84853%_)))
                         (declare (not safe))
                         (##apply _%f84842%_ __tmp87965))))
                  (if _%$e84855%_
                      _%$e84855%_
                      (let ((__tmp87966 (map cdr _%rest84853%_)))
                        (declare (not safe))
                        (_%recur84851%_ __tmp87966))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84823%_ _%lst84824%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84823%_))
              (let ((_%f84828%_ _%f84823%_))
                (declare (not safe))
                (__filter-map1 _%f84828%_ _%lst84824%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@402.20-402.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84823%_)
                '#!void)))))
    (define __filter-map1
      (lambda (_%f84766%_ _%lst84767%_)
        (let ((_%f84770%_ _%f84766%_))
          (let _%recur84779%_ ((_%rest84781%_ _%lst84767%_))
            (let ()
              (let* ((_%rest8478384791%_ _%rest84781%_)
                     (_%else8478584799%_ (lambda () '()))
                     (_%K8478784811%_
                      (lambda (_%rest84802%_ _%x84803%_)
                        (let ((_%$e84805%_
                               (let ()
                                 (declare (not safe))
                                 (_%f84770%_ _%x84803%_))))
                          (if _%$e84805%_
                              ((lambda (_%r84808%_)
                                 (cons _%r84808%_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84779%_ _%rest84802%_))))
                               _%$e84805%_)
                              (let ()
                                (declare (not safe))
                                (_%recur84779%_ _%rest84802%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest8478384791%_))
                    (let ((_%hd8478884814%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8478384791%_)))
                          (_%tl8478984816%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8478384791%_))))
                      (let* ((_%x84819%_ _%hd8478884814%_)
                             (_%rest84821%_ _%tl8478984816%_))
                        (declare (not safe))
                        (_%K8478784811%_ _%rest84821%_ _%x84819%_)))
                    (let () (declare (not safe)) (_%else8478584799%_)))))))))
    (define filter-map2
      (lambda (_%f84750%_ _%lst184751%_ _%lst284752%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84750%_))
              (let ((_%f84756%_ _%f84750%_))
                (declare (not safe))
                (__filter-map2 _%f84756%_ _%lst184751%_ _%lst284752%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@413.20-413.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84750%_)
                '#!void)))))
    (define __filter-map2
      (lambda (_%f84658%_ _%lst184659%_ _%lst284660%_)
        (let ((_%f84663%_ _%f84658%_))
          (let _%recur84672%_ ((_%rest184674%_ _%lst184659%_)
                               (_%rest284675%_ _%lst284660%_))
            (let ()
              (let* ((_%rest18467784685%_ _%rest184674%_)
                     (_%else8467984693%_ (lambda () '()))
                     (_%K8468184738%_
                      (lambda (_%rest184696%_ _%x184697%_)
                        (let* ((_%rest28469884706%_ _%rest284675%_)
                               (_%else8470084714%_ (lambda () '()))
                               (_%K8470284726%_
                                (lambda (_%rest284717%_ _%x284718%_)
                                  (let ((_%$e84720%_
                                         (let ()
                                           (declare (not safe))
                                           (_%f84663%_
                                            _%x184697%_
                                            _%x284718%_))))
                                    (if _%$e84720%_
                                        ((lambda (_%r84723%_)
                                           (cons _%r84723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%recur84672%_
                                                    _%rest184696%_
                                                    _%rest284717%_))))
                                         _%$e84720%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%recur84672%_
                                           _%rest184696%_
                                           _%rest284717%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28469884706%_))
                              (let ((_%hd8470384729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28469884706%_)))
                                    (_%tl8470484731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28469884706%_))))
                                (let* ((_%x284734%_ _%hd8470384729%_)
                                       (_%rest284736%_ _%tl8470484731%_))
                                  (declare (not safe))
                                  (_%K8470284726%_
                                   _%rest284736%_
                                   _%x284734%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8470084714%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18467784685%_))
                    (let ((_%hd8468284741%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18467784685%_)))
                          (_%tl8468384743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18467784685%_))))
                      (let* ((_%x184746%_ _%hd8468284741%_)
                             (_%rest184748%_ _%tl8468384743%_))
                        (declare (not safe))
                        (_%K8468184738%_ _%rest184748%_ _%x184746%_)))
                    (let () (declare (not safe)) (_%else8467984693%_)))))))))
    (define filter-map
      (lambda _g87968_
        (let ((_g87967_ (let () (declare (not safe)) (##length _g87968_))))
          (cond ((let () (declare (not safe)) (##fx= _g87967_ 2))
                 (apply (lambda (_%f84646%_ _%lst84647%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84646%_ _%lst84647%_)))
                        _g87968_))
                ((let () (declare (not safe)) (##fx= _g87967_ 3))
                 (apply (lambda (_%f84649%_ _%lst184650%_ _%lst284651%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84649%_
                             _%lst184650%_
                             _%lst284651%_)))
                        _g87968_))
                ((let () (declare (not safe)) (##fx>= _g87967_ 3))
                 (apply filter-map* _g87968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87968_))))))
    (define filter-map*
      (lambda (_%f84631%_ . _%rest84632%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84631%_))
              (let ((_%f84636%_ _%f84631%_))
                (declare (not safe))
                (##apply __filter-map* _%f84636%_ _%rest84632%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@435.20-435.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84631%_)
                '#!void)))))
    (define __filter-map*
      (lambda (_%f84607%_ . _%rest84608%_)
        (let ((_%f84611%_ _%f84607%_))
          (let _%recur84620%_ ((_%rest84622%_ _%rest84608%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84622%_))
                  (let ((_%$e84625%_
                         (let ((__tmp87969 (map car _%rest84622%_)))
                           (declare (not safe))
                           (##apply _%f84611%_ __tmp87969))))
                    (if _%$e84625%_
                        ((lambda (_%r84628%_)
                           (cons _%r84628%_
                                 (let ((__tmp87970 (map cdr _%rest84622%_)))
                                   (declare (not safe))
                                   (_%recur84620%_ __tmp87970))))
                         _%$e84625%_)
                        (let ((__tmp87971 (map cdr _%rest84622%_)))
                          (declare (not safe))
                          (_%recur84620%_ __tmp87971))))
                  '()))))))
    (define agetq__%
      (lambda (_%key84583%_ _%lst84585%_ _%default84587%_)
        (let ((_%$e84590%_
               (if (let () (declare (not safe)) (pair? _%lst84585%_))
                   (assq _%key84583%_ _%lst84585%_)
                   '#f)))
          (if _%$e84590%_
              (cdr _%$e84590%_)
              (if (let () (declare (not safe)) (procedure? _%default84587%_))
                  (let () (_%default84587%_ _%key84583%_))
                  (let () _%default84587%_))))))
    (define agetq__0
      (lambda (_%key84598%_ _%lst84599%_)
        (let ((_%default84601%_ '#f))
          (declare (not safe))
          (agetq__% _%key84598%_ _%lst84599%_ _%default84601%_))))
    (define agetq
      (lambda _g87973_
        (let ((_g87972_ (let () (declare (not safe)) (##length _g87973_))))
          (cond ((let () (declare (not safe)) (##fx= _g87972_ 2))
                 (apply (lambda (_%key84598%_ _%lst84599%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84598%_ _%lst84599%_)))
                        _g87973_))
                ((let () (declare (not safe)) (##fx= _g87972_ 3))
                 (apply (lambda (_%key84603%_ _%lst84604%_ _%default84605%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84603%_
                             _%lst84604%_
                             _%default84605%_)))
                        _g87973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87973_))))))
    (define agetv__%
      (lambda (_%key84558%_ _%lst84560%_ _%default84562%_)
        (let ((_%$e84565%_
               (if (let () (declare (not safe)) (pair? _%lst84560%_))
                   (assv _%key84558%_ _%lst84560%_)
                   '#f)))
          (if _%$e84565%_
              (cdr _%$e84565%_)
              (if (let () (declare (not safe)) (procedure? _%default84562%_))
                  (let () (_%default84562%_ _%key84558%_))
                  (let () _%default84562%_))))))
    (define agetv__0
      (lambda (_%key84573%_ _%lst84574%_)
        (let ((_%default84576%_ '#f))
          (declare (not safe))
          (agetv__% _%key84573%_ _%lst84574%_ _%default84576%_))))
    (define agetv
      (lambda _g87975_
        (let ((_g87974_ (let () (declare (not safe)) (##length _g87975_))))
          (cond ((let () (declare (not safe)) (##fx= _g87974_ 2))
                 (apply (lambda (_%key84573%_ _%lst84574%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84573%_ _%lst84574%_)))
                        _g87975_))
                ((let () (declare (not safe)) (##fx= _g87974_ 3))
                 (apply (lambda (_%key84578%_ _%lst84579%_ _%default84580%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84578%_
                             _%lst84579%_
                             _%default84580%_)))
                        _g87975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87975_))))))
    (define aget__%
      (lambda (_%key84533%_ _%lst84535%_ _%default84537%_)
        (let ((_%$e84540%_
               (if (let () (declare (not safe)) (pair? _%lst84535%_))
                   (assoc _%key84533%_ _%lst84535%_)
                   '#f)))
          (if _%$e84540%_
              (cdr _%$e84540%_)
              (if (let () (declare (not safe)) (procedure? _%default84537%_))
                  (let () (_%default84537%_ _%key84533%_))
                  (let () _%default84537%_))))))
    (define aget__0
      (lambda (_%key84548%_ _%lst84549%_)
        (let ((_%default84551%_ '#f))
          (declare (not safe))
          (aget__% _%key84548%_ _%lst84549%_ _%default84551%_))))
    (define aget
      (lambda _g87977_
        (let ((_g87976_ (let () (declare (not safe)) (##length _g87977_))))
          (cond ((let () (declare (not safe)) (##fx= _g87976_ 2))
                 (apply (lambda (_%key84548%_ _%lst84549%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key84548%_ _%lst84549%_)))
                        _g87977_))
                ((let () (declare (not safe)) (##fx= _g87976_ 3))
                 (apply (lambda (_%key84553%_ _%lst84554%_ _%default84555%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key84553%_
                                     _%lst84554%_
                                     _%default84555%_)))
                        _g87977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87977_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84462%_ _%lst84464%_ _%default84466%_)
        (let _%lp84469%_ ((_%rest84472%_ _%lst84464%_))
          (let* ((_%rest8447484484%_ _%rest84472%_)
                 (_%else8447684492%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84466%_))
                        (_%default84466%_ _%key84462%_)
                        _%default84466%_)))
                 (_%K8447884501%_
                  (lambda (_%rest84495%_ _%v84496%_ _%k84498%_)
                    (if (eq? _%k84498%_ _%key84462%_)
                        _%v84496%_
                        (let ()
                          (declare (not safe))
                          (_%lp84469%_ _%rest84495%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8447484484%_))
                (let ((_%hd8447984504%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8447484484%_)))
                      (_%tl8448084506%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8447484484%_))))
                  (let ((_%k84509%_ _%hd8447984504%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8448084506%_))
                        (let ((_%hd8448184511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8448084506%_)))
                              (_%tl8448284513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8448084506%_))))
                          (let* ((_%v84516%_ _%hd8448184511%_)
                                 (_%rest84518%_ _%tl8448284513%_))
                            (declare (not safe))
                            (_%K8447884501%_
                             _%rest84518%_
                             _%v84516%_
                             _%k84509%_)))
                        (let () (declare (not safe)) (_%else8447684492%_)))))
                (let () (declare (not safe)) (_%else8447684492%_)))))))
    (define pgetq__0
      (lambda (_%key84523%_ _%lst84524%_)
        (let ((_%default84526%_ '#f))
          (declare (not safe))
          (pgetq__% _%key84523%_ _%lst84524%_ _%default84526%_))))
    (define pgetq
      (lambda _g87979_
        (let ((_g87978_ (let () (declare (not safe)) (##length _g87979_))))
          (cond ((let () (declare (not safe)) (##fx= _g87978_ 2))
                 (apply (lambda (_%key84523%_ _%lst84524%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key84523%_ _%lst84524%_)))
                        _g87979_))
                ((let () (declare (not safe)) (##fx= _g87978_ 3))
                 (apply (lambda (_%key84528%_ _%lst84529%_ _%default84530%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key84528%_
                             _%lst84529%_
                             _%default84530%_)))
                        _g87979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87979_))))))
    (define pgetv__%
      (lambda (_%key84391%_ _%lst84393%_ _%default84395%_)
        (let _%lp84398%_ ((_%rest84401%_ _%lst84393%_))
          (let* ((_%rest8440384413%_ _%rest84401%_)
                 (_%else8440584421%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84395%_))
                        (_%default84395%_ _%key84391%_)
                        _%default84395%_)))
                 (_%K8440784430%_
                  (lambda (_%rest84424%_ _%v84425%_ _%k84427%_)
                    (if (eqv? _%k84427%_ _%key84391%_)
                        _%v84425%_
                        (let ()
                          (declare (not safe))
                          (_%lp84398%_ _%rest84424%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8440384413%_))
                (let ((_%hd8440884433%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8440384413%_)))
                      (_%tl8440984435%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8440384413%_))))
                  (let ((_%k84438%_ _%hd8440884433%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8440984435%_))
                        (let ((_%hd8441084440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8440984435%_)))
                              (_%tl8441184442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8440984435%_))))
                          (let* ((_%v84445%_ _%hd8441084440%_)
                                 (_%rest84447%_ _%tl8441184442%_))
                            (declare (not safe))
                            (_%K8440784430%_
                             _%rest84447%_
                             _%v84445%_
                             _%k84438%_)))
                        (let () (declare (not safe)) (_%else8440584421%_)))))
                (let () (declare (not safe)) (_%else8440584421%_)))))))
    (define pgetv__0
      (lambda (_%key84452%_ _%lst84453%_)
        (let ((_%default84455%_ '#f))
          (declare (not safe))
          (pgetv__% _%key84452%_ _%lst84453%_ _%default84455%_))))
    (define pgetv
      (lambda _g87981_
        (let ((_g87980_ (let () (declare (not safe)) (##length _g87981_))))
          (cond ((let () (declare (not safe)) (##fx= _g87980_ 2))
                 (apply (lambda (_%key84452%_ _%lst84453%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key84452%_ _%lst84453%_)))
                        _g87981_))
                ((let () (declare (not safe)) (##fx= _g87980_ 3))
                 (apply (lambda (_%key84457%_ _%lst84458%_ _%default84459%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key84457%_
                             _%lst84458%_
                             _%default84459%_)))
                        _g87981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87981_))))))
    (define pget__%
      (lambda (_%key84320%_ _%lst84322%_ _%default84324%_)
        (let _%lp84327%_ ((_%rest84330%_ _%lst84322%_))
          (let* ((_%rest8433284342%_ _%rest84330%_)
                 (_%else8433484350%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84324%_))
                        (_%default84324%_ _%key84320%_)
                        _%default84324%_)))
                 (_%K8433684359%_
                  (lambda (_%rest84353%_ _%v84354%_ _%k84356%_)
                    (if (equal? _%k84356%_ _%key84320%_)
                        _%v84354%_
                        (let ()
                          (declare (not safe))
                          (_%lp84327%_ _%rest84353%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8433284342%_))
                (let ((_%hd8433784362%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8433284342%_)))
                      (_%tl8433884364%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8433284342%_))))
                  (let ((_%k84367%_ _%hd8433784362%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8433884364%_))
                        (let ((_%hd8433984369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8433884364%_)))
                              (_%tl8434084371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8433884364%_))))
                          (let* ((_%v84374%_ _%hd8433984369%_)
                                 (_%rest84376%_ _%tl8434084371%_))
                            (declare (not safe))
                            (_%K8433684359%_
                             _%rest84376%_
                             _%v84374%_
                             _%k84367%_)))
                        (let () (declare (not safe)) (_%else8433484350%_)))))
                (let () (declare (not safe)) (_%else8433484350%_)))))))
    (define pget__0
      (lambda (_%key84381%_ _%lst84382%_)
        (let ((_%default84384%_ '#f))
          (declare (not safe))
          (pget__% _%key84381%_ _%lst84382%_ _%default84384%_))))
    (define pget
      (lambda _g87983_
        (let ((_g87982_ (let () (declare (not safe)) (##length _g87983_))))
          (cond ((let () (declare (not safe)) (##fx= _g87982_ 2))
                 (apply (lambda (_%key84381%_ _%lst84382%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key84381%_ _%lst84382%_)))
                        _g87983_))
                ((let () (declare (not safe)) (##fx= _g87982_ 3))
                 (apply (lambda (_%key84386%_ _%lst84387%_ _%default84388%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key84386%_
                                     _%lst84387%_
                                     _%default84388%_)))
                        _g87983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87983_))))))
    (define find
      (lambda (_%pred84304%_ _%lst84305%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84304%_))
              (let ((_%pred84309%_ _%pred84304%_))
                (declare (not safe))
                (__find _%pred84309%_ _%lst84305%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@481.13-481.17"
                 'contract:
                 'procedure?
                 'value:
                 _%pred84304%_)
                '#!void)))))
    (define __find
      (lambda (_%pred84287%_ _%lst84288%_)
        (let ()
          (let* ((_%pred84291%_ _%pred84287%_)
                 (_%$e84300%_
                  (let ()
                    (declare (not safe))
                    (__memf _%pred84291%_ _%lst84288%_))))
            (if _%$e84300%_
                (let () (declare (not safe)) (##car _%$e84300%_))
                (let () '#f))))))
    (define memf
      (lambda (_%proc84272%_ _%lst84273%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84272%_))
              (let ((_%proc84277%_ _%proc84272%_))
                (declare (not safe))
                (__memf _%proc84277%_ _%lst84273%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@486.13-486.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84272%_)
                '#!void)))))
    (define __memf
      (lambda (_%proc84222%_ _%lst84223%_)
        (let ((_%proc84226%_ _%proc84222%_))
          (let _%lp84235%_ ((_%rest84237%_ _%lst84223%_))
            (let* ((_%rest8423884246%_ _%rest84237%_)
                   (_%else8424084254%_ (lambda () '#f))
                   (_%K8424284260%_
                    (lambda (_%tl84257%_ _%hd84258%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84226%_ _%hd84258%_))
                          _%rest84237%_
                          (let ()
                            (declare (not safe))
                            (_%lp84235%_ _%tl84257%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8423884246%_))
                  (let ((_%hd8424384263%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8423884246%_)))
                        (_%tl8424484265%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8423884246%_))))
                    (let* ((_%hd84268%_ _%hd8424384263%_)
                           (_%tl84270%_ _%tl8424484265%_))
                      (declare (not safe))
                      (_%K8424284260%_ _%tl84270%_ _%hd84268%_)))
                  (let () (declare (not safe)) (_%else8424084254%_))))))))
    (define remove1
      (lambda (_%el84175%_ _%lst84177%_)
        (let _%lp84180%_ ((_%rest84183%_ _%lst84177%_) (_%r84185%_ '()))
          (let* ((_%rest8418784195%_ _%rest84183%_)
                 (_%else8418984203%_ (lambda () _%lst84177%_))
                 (_%K8419184210%_
                  (lambda (_%rest84206%_ _%hd84207%_)
                    (if (equal? _%el84175%_ _%hd84207%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84206%_ _%r84185%_))
                        (let ((__tmp87984 (cons _%hd84207%_ _%r84185%_)))
                          (declare (not safe))
                          (_%lp84180%_ _%rest84206%_ __tmp87984))))))
            (if (let () (declare (not safe)) (##pair? _%rest8418784195%_))
                (let ((_%hd8419284213%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8418784195%_)))
                      (_%tl8419384215%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8418784195%_))))
                  (let* ((_%hd84218%_ _%hd8419284213%_)
                         (_%rest84220%_ _%tl8419384215%_))
                    (declare (not safe))
                    (_%K8419184210%_ _%rest84220%_ _%hd84218%_)))
                (let () (declare (not safe)) (_%else8418984203%_)))))))
    (define remv1
      (lambda (_%el84128%_ _%lst84130%_)
        (let _%lp84133%_ ((_%rest84136%_ _%lst84130%_) (_%r84138%_ '()))
          (let* ((_%rest8414084148%_ _%rest84136%_)
                 (_%else8414284156%_ (lambda () _%lst84130%_))
                 (_%K8414484163%_
                  (lambda (_%rest84159%_ _%hd84160%_)
                    (if (eqv? _%el84128%_ _%hd84160%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84159%_ _%r84138%_))
                        (let ((__tmp87985 (cons _%hd84160%_ _%r84138%_)))
                          (declare (not safe))
                          (_%lp84133%_ _%rest84159%_ __tmp87985))))))
            (if (let () (declare (not safe)) (##pair? _%rest8414084148%_))
                (let ((_%hd8414584166%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8414084148%_)))
                      (_%tl8414684168%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8414084148%_))))
                  (let* ((_%hd84171%_ _%hd8414584166%_)
                         (_%rest84173%_ _%tl8414684168%_))
                    (declare (not safe))
                    (_%K8414484163%_ _%rest84173%_ _%hd84171%_)))
                (let () (declare (not safe)) (_%else8414284156%_)))))))
    (define remq1
      (lambda (_%el84081%_ _%lst84083%_)
        (let _%lp84086%_ ((_%rest84089%_ _%lst84083%_) (_%r84091%_ '()))
          (let* ((_%rest8409384101%_ _%rest84089%_)
                 (_%else8409584109%_ (lambda () _%lst84083%_))
                 (_%K8409784116%_
                  (lambda (_%rest84112%_ _%hd84113%_)
                    (if (eq? _%el84081%_ _%hd84113%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84112%_ _%r84091%_))
                        (let ((__tmp87986 (cons _%hd84113%_ _%r84091%_)))
                          (declare (not safe))
                          (_%lp84086%_ _%rest84112%_ __tmp87986))))))
            (if (let () (declare (not safe)) (##pair? _%rest8409384101%_))
                (let ((_%hd8409884119%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8409384101%_)))
                      (_%tl8409984121%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8409384101%_))))
                  (let* ((_%hd84124%_ _%hd8409884119%_)
                         (_%rest84126%_ _%tl8409984121%_))
                    (declare (not safe))
                    (_%K8409784116%_ _%rest84126%_ _%hd84124%_)))
                (let () (declare (not safe)) (_%else8409584109%_)))))))
    (define remf
      (lambda (_%proc84066%_ _%lst84067%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84066%_))
              (let ((_%proc84071%_ _%proc84066%_))
                (declare (not safe))
                (__remf _%proc84071%_ _%lst84067%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@508.13-508.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84066%_)
                '#!void)))))
    (define __remf
      (lambda (_%proc84015%_ _%lst84016%_)
        (let ((_%proc84019%_ _%proc84015%_))
          (let _%lp84028%_ ((_%rest84030%_ _%lst84016%_) (_%r84031%_ '()))
            (let* ((_%rest8403284040%_ _%rest84030%_)
                   (_%else8403484048%_ (lambda () _%lst84016%_))
                   (_%K8403684054%_
                    (lambda (_%rest84051%_ _%hd84052%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84019%_ _%hd84052%_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _%rest84051%_ _%r84031%_))
                          (let ((__tmp87987 (cons _%hd84052%_ _%r84031%_)))
                            (declare (not safe))
                            (_%lp84028%_ _%rest84051%_ __tmp87987))))))
              (if (let () (declare (not safe)) (##pair? _%rest8403284040%_))
                  (let ((_%hd8403784057%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8403284040%_)))
                        (_%tl8403884059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8403284040%_))))
                    (let* ((_%hd84062%_ _%hd8403784057%_)
                           (_%rest84064%_ _%tl8403884059%_))
                      (declare (not safe))
                      (_%K8403684054%_ _%rest84064%_ _%hd84062%_)))
                  (let () (declare (not safe)) (_%else8403484048%_))))))))
    (define 1+
      (lambda (_%x84001%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x84001%_))
              (let ((_%x84005%_ _%x84001%_))
                (declare (not safe))
                (__1+ _%x84005%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@517.11-517.12"
                 'contract:
                 'number?
                 'value:
                 _%x84001%_)
                '#!void)))))
    (define __1+
      (lambda (_%x83989%_) (let ((_%x83992%_ _%x83989%_)) (+ _%x83992%_ '1))))
    (define 1-
      (lambda (_%x83975%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83975%_))
              (let ((_%x83979%_ _%x83975%_))
                (declare (not safe))
                (__1- _%x83979%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@525.11-525.12"
                 'contract:
                 'number?
                 'value:
                 _%x83975%_)
                '#!void)))))
    (define __1-
      (lambda (_%x83963%_) (let ((_%x83966%_ _%x83963%_)) (- _%x83966%_ '1))))
    (define fx1+
      (lambda (_%x83949%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83949%_))
              (let ((_%x83953%_ _%x83949%_))
                (declare (not safe))
                (__fx1+ _%x83953%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@533.13-533.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83949%_)
                '#!void)))))
    (define __fx1+
      (lambda (_%x83937%_)
        (let ((_%x83940%_ _%x83937%_))
          (declare (not safe))
          (##fx+ _%x83940%_ '1))))
    (define fx1-
      (lambda (_%x83923%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83923%_))
              (let ((_%x83927%_ _%x83923%_))
                (declare (not safe))
                (__fx1- _%x83927%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@541.13-541.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83923%_)
                '#!void)))))
    (define __fx1-
      (lambda (_%x83911%_)
        (let ((_%x83914%_ _%x83911%_))
          (declare (not safe))
          (##fx- _%x83914%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83908%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83908%_))
              (let () (declare (not safe)) (##fx>= _%x83908%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83905%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83905%_))
              (let () (declare (not safe)) (##fx> _%x83905%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83902%_)
        (let () (declare (not safe)) (##fx= _%x83902%_ '0))))
    (define fx<0?
      (lambda (_%x83899%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83899%_))
              (let () (declare (not safe)) (##fx< _%x83899%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83896%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83896%_))
              (let () (declare (not safe)) (##fx<= _%x83896%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83893%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83893%_))
              (let ((__tmp87988 (uninterned-symbol? _%x83893%_)))
                (declare (not safe))
                (not __tmp87988))
              '#f))))
    (define display-as-string
      (lambda (_%x83878%_ _%port83879%_)
        (let ()
          (if (output-port? _%port83879%_)
              (let ((_%port83883%_ _%port83879%_))
                (declare (not safe))
                (__display-as-string _%x83878%_ _%port83883%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83879%_)
                '#!void)))))
    (define __display-as-string
      (lambda (_%x83833%_ _%port83834%_)
        (let ()
          (if (output-port? _%port83834%_)
              (let ((_%port83838%_ _%port83834%_))
                (if (or (let () (declare (not safe)) (string? _%x83833%_))
                        (let () (declare (not safe)) (symbol? _%x83833%_))
                        (let () (declare (not safe)) (keyword? _%x83833%_))
                        (let () (declare (not safe)) (number? _%x83833%_))
                        (let () (declare (not safe)) (char? _%x83833%_)))
                    (let () (display _%x83833%_ _%port83838%_))
                    (if (let () (declare (not safe)) (pair? _%x83833%_))
                        (let ()
                          (let ((__tmp87989 (car _%x83833%_)))
                            (declare (not safe))
                            (__display-as-string __tmp87989 _%port83838%_))
                          (let ((__tmp87990 (cdr _%x83833%_)))
                            (declare (not safe))
                            (__display-as-string __tmp87990 _%port83838%_)))
                        (if (let () (declare (not safe)) (vector? _%x83833%_))
                            (let ()
                              (vector-for-each
                               (lambda (_%g8386283864%_)
                                 (let ()
                                   (declare (not safe))
                                   (__display-as-string
                                    _%g8386283864%_
                                    _%port83838%_)))
                               _%x83833%_))
                            (if (or (let ()
                                      (declare (not safe))
                                      (null? _%x83833%_))
                                    (let ()
                                      (declare (not safe))
                                      (eq? _%x83833%_ '#!void))
                                    (let ()
                                      (declare (not safe))
                                      (eof-object? _%x83833%_))
                                    (let ()
                                      (declare (not safe))
                                      (boolean? _%x83833%_)))
                                (let () '#!void)
                                (let ()
                                  (error '"cannot convert as string"
                                         _%x83833%_)
                                  '#!void))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83834%_)
                '#!void)))))
    (define as-string__0
      (lambda (_%x83816%_)
        (if (let () (declare (not safe)) (string? _%x83816%_))
            (let () _%x83816%_)
            (if (let () (declare (not safe)) (symbol? _%x83816%_))
                (let () (symbol->string _%x83816%_))
                (if (let () (declare (not safe)) (keyword? _%x83816%_))
                    (let () (keyword->string _%x83816%_))
                    (if (let () (declare (not safe)) (number? _%x83816%_))
                        (let () (number->string _%x83816%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8382283824%_)
                             (let ()
                               (declare (not safe))
                               (__display-as-string
                                _%x83816%_
                                _%g8382283824%_)))))))))))
    (define as-string__1
      (lambda _%args83827%_
        (call-with-output-string
         '()
         (lambda (_%g8382883830%_)
           (let ()
             (declare (not safe))
             (__display-as-string _%args83827%_ _%g8382883830%_))))))
    (define as-string
      (lambda _g87992_
        (let ((_g87991_ (let () (declare (not safe)) (##length _g87992_))))
          (cond ((let () (declare (not safe)) (##fx= _g87991_ 1))
                 (apply (lambda (_%x83816%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83816%_)))
                        _g87992_))
                (#t (apply as-string__1 _g87992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87992_))))))
    (define make-symbol__0
      (lambda (_%x83812%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83812%_))
            _%x83812%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83812%_))))))
    (define make-symbol__1
      (lambda _%args83814%_ (string->symbol (apply as-string _%args83814%_))))
    (define make-symbol
      (lambda _g87994_
        (let ((_g87993_ (let () (declare (not safe)) (##length _g87994_))))
          (cond ((let () (declare (not safe)) (##fx= _g87993_ 1))
                 (apply (lambda (_%x83812%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83812%_)))
                        _g87994_))
                (#t (apply make-symbol__1 _g87994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87994_))))))
    (define make-keyword__0
      (lambda (_%x83808%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83808%_))
            _%x83808%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83808%_))))))
    (define make-keyword__1
      (lambda _%args83810%_ (string->keyword (apply as-string _%args83810%_))))
    (define make-keyword
      (lambda _g87996_
        (let ((_g87995_ (let () (declare (not safe)) (##length _g87996_))))
          (cond ((let () (declare (not safe)) (##fx= _g87995_ 1))
                 (apply (lambda (_%x83808%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83808%_)))
                        _g87996_))
                (#t (apply make-keyword__1 _g87996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87996_))))))
    (define interned-keyword?
      (lambda (_%x83805%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83805%_))
              (let ((__tmp87997 (uninterned-keyword? _%x83805%_)))
                (declare (not safe))
                (not __tmp87997))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83791%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83791%_))
              (let ((_%sym83795%_ _%sym83791%_))
                (declare (not safe))
                (__symbol->keyword _%sym83795%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@612.24-612.27"
                 'contract:
                 'symbol?
                 'value:
                 _%sym83791%_)
                '#!void)))))
    (define __symbol->keyword
      (lambda (_%sym83779%_)
        (let ((_%sym83782%_ _%sym83779%_))
          (if (uninterned-symbol? _%sym83782%_)
              (let ((__tmp87998
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83782%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp87998))
              (let ((__tmp87999
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83782%_))))
                (declare (not safe))
                (##string->keyword __tmp87999))))))
    (define keyword->symbol
      (lambda (_%sym83765%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83765%_))
              (let ((_%sym83769%_ _%sym83765%_))
                (declare (not safe))
                (__keyword->symbol _%sym83769%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@618.24-618.27"
                 'contract:
                 'keyword?
                 'value:
                 _%sym83765%_)
                '#!void)))))
    (define __keyword->symbol
      (lambda (_%sym83753%_)
        (let ((_%sym83756%_ _%sym83753%_))
          (if (uninterned-keyword? _%sym83756%_)
              (let ((__tmp88000
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83756%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88000))
              (let ((__tmp88001
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83756%_))))
                (declare (not safe))
                (##string->symbol __tmp88001))))))
    (define bytes->string__%
      (lambda (_%bstr83718%_ _%enc83719%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83718%_))
              (let ((_%bstr83723%_ _%bstr83718%_))
                (if (let () (declare (not safe)) (symbol? _%enc83719%_))
                    (let ((_%enc83733%_ _%enc83719%_))
                      (declare (not safe))
                      (__bytes->string__% _%bstr83723%_ _%enc83733%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83719%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@624.22-624.26"
                 'contract:
                 'u8vector?
                 'value:
                 _%bstr83718%_)
                '#!void)))))
    (define bytes->string__0
      (lambda (_%bstr83746%_)
        (let ((_%enc83748%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83746%_ _%enc83748%_))))
    (define bytes->string
      (lambda _g88003_
        (let ((_g88002_ (let () (declare (not safe)) (##length _g88003_))))
          (cond ((let () (declare (not safe)) (##fx= _g88002_ 1))
                 (apply (lambda (_%bstr83746%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83746%_)))
                        _g88003_))
                ((let () (declare (not safe)) (##fx= _g88002_ 2))
                 (apply (lambda (_%bstr83750%_ _%enc83751%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83750%_ _%enc83751%_)))
                        _g88003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88003_))))))
    (define __bytes->string__%
      (lambda (_%bstr83677%_ _%enc83678%_)
        (let ()
          (let* ((_%bstr83681%_ _%bstr83677%_) (_%enc83689%_ _%enc83678%_))
            (if (eq? _%enc83689%_ 'UTF-8)
                (let () (declare (not safe)) (##utf8->string _%bstr83681%_))
                (let* ((_%in83698%_
                        (open-input-u8vector
                         (cons 'char-encoding:
                               (cons _%enc83689%_
                                     (cons 'init: (cons _%bstr83681%_ '()))))))
                       (_%len83700%_
                        (let ()
                          (declare (not safe))
                          (##u8vector-length _%bstr83681%_)))
                       (_%out83702%_
                        (let ()
                          (declare (not safe))
                          (##make-string _%len83700%_)))
                       (_%n83704%_
                        (read-substring
                         _%out83702%_
                         '0
                         _%len83700%_
                         _%in83698%_)))
                  (string-shrink! _%out83702%_ _%n83704%_)
                  _%out83702%_))))))
    (define __bytes->string__0
      (lambda (_%bstr83710%_)
        (let ((_%enc83712%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83710%_ _%enc83712%_))))
    (define __bytes->string
      (lambda _g88005_
        (let ((_g88004_ (let () (declare (not safe)) (##length _g88005_))))
          (cond ((let () (declare (not safe)) (##fx= _g88004_ 1))
                 (apply (lambda (_%bstr83710%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83710%_)))
                        _g88005_))
                ((let () (declare (not safe)) (##fx= _g88004_ 2))
                 (apply (lambda (_%bstr83714%_ _%enc83715%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83714%_ _%enc83715%_)))
                        _g88005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88005_))))))
    (define string->bytes__%
      (lambda (_%str83641%_ _%enc83642%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83641%_))
              (let ((_%str83646%_ _%str83641%_))
                (if (let () (declare (not safe)) (symbol? _%enc83642%_))
                    (let ((_%enc83656%_ _%enc83642%_))
                      (declare (not safe))
                      (__string->bytes__% _%str83646%_ _%enc83656%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83642%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@636.22-636.25"
                 'contract:
                 'string?
                 'value:
                 _%str83641%_)
                '#!void)))))
    (define string->bytes__0
      (lambda (_%str83669%_)
        (let ((_%enc83671%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83669%_ _%enc83671%_))))
    (define string->bytes
      (lambda _g88007_
        (let ((_g88006_ (let () (declare (not safe)) (##length _g88007_))))
          (cond ((let () (declare (not safe)) (##fx= _g88006_ 1))
                 (apply (lambda (_%str83669%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83669%_)))
                        _g88007_))
                ((let () (declare (not safe)) (##fx= _g88006_ 2))
                 (apply (lambda (_%str83673%_ _%enc83674%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83673%_ _%enc83674%_)))
                        _g88007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88007_))))))
    (define __string->bytes__%
      (lambda (_%str83609%_ _%enc83610%_)
        (let ()
          (let* ((_%str83613%_ _%str83609%_) (_%enc83621%_ _%enc83610%_))
            (if (eq? _%enc83621%_ 'UTF-8)
                (let () (declare (not safe)) (##string->utf8 _%str83613%_))
                (let ((__tmp88008
                       (let ()
                         (declare (not safe))
                         (##string-length _%str83613%_))))
                  (declare (not safe))
                  (__substring->bytes
                   _%str83613%_
                   '0
                   __tmp88008
                   _%enc83621%_)))))))
    (define __string->bytes__0
      (lambda (_%str83633%_)
        (let ((_%enc83635%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83633%_ _%enc83635%_))))
    (define __string->bytes
      (lambda _g88010_
        (let ((_g88009_ (let () (declare (not safe)) (##length _g88010_))))
          (cond ((let () (declare (not safe)) (##fx= _g88009_ 1))
                 (apply (lambda (_%str83633%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83633%_)))
                        _g88010_))
                ((let () (declare (not safe)) (##fx= _g88009_ 2))
                 (apply (lambda (_%str83637%_ _%enc83638%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83637%_ _%enc83638%_)))
                        _g88010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88010_))))))
    (define substring->bytes__%
      (lambda (_%str83557%_ _%start83558%_ _%end83559%_ _%enc83560%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83557%_))
              (let ((_%str83564%_ _%str83557%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%start83558%_))
                    (let ((_%start83574%_ _%start83558%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%end83559%_))
                          (let ((_%end83584%_ _%end83559%_))
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83564%_
                             _%start83574%_
                             _%end83584%_
                             _%enc83560%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end83559%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start83558%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@643.25-643.28"
                 'contract:
                 'string?
                 'value:
                 _%str83557%_)
                '#!void)))))
    (define substring->bytes__0
      (lambda (_%str83597%_ _%start83598%_ _%end83599%_)
        (let ((_%enc83601%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83597%_
           _%start83598%_
           _%end83599%_
           _%enc83601%_))))
    (define substring->bytes
      (lambda _g88012_
        (let ((_g88011_ (let () (declare (not safe)) (##length _g88012_))))
          (cond ((let () (declare (not safe)) (##fx= _g88011_ 3))
                 (apply (lambda (_%str83597%_ _%start83598%_ _%end83599%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83597%_
                             _%start83598%_
                             _%end83599%_)))
                        _g88012_))
                ((let () (declare (not safe)) (##fx= _g88011_ 4))
                 (apply (lambda (_%str83603%_
                                 _%start83604%_
                                 _%end83605%_
                                 _%enc83606%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83603%_
                             _%start83604%_
                             _%end83605%_
                             _%enc83606%_)))
                        _g88012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88012_))))))
    (define __substring->bytes__%
      (lambda (_%str83505%_ _%start83506%_ _%end83507%_ _%enc83508%_)
        (let ((_%str83511%_ _%str83505%_))
          (if (let ()
                (declare (not safe))
                (nonnegative-fixnum? _%start83506%_))
              (let ((_%start83520%_ _%start83506%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%end83507%_))
                    (let ((_%end83530%_ _%end83507%_))
                      (if (eq? _%enc83508%_ 'UTF-8)
                          (string->utf8
                           _%str83511%_
                           _%start83520%_
                           _%end83530%_)
                          (let ((_%out83540%_
                                 (open-output-u8vector
                                  (cons 'char-encoding:
                                        (cons _%enc83508%_ '())))))
                            (write-substring
                             _%str83511%_
                             _%start83520%_
                             _%end83530%_
                             _%out83540%_)
                            (get-output-u8vector _%out83540%_))))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%end83507%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                 'contract:
                 'nonnegative-fixnum?
                 'value:
                 _%start83506%_)
                '#!void)))))
    (define __substring->bytes__0
      (lambda (_%str83545%_ _%start83546%_ _%end83547%_)
        (let ((_%enc83549%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str83545%_
           _%start83546%_
           _%end83547%_
           _%enc83549%_))))
    (define __substring->bytes
      (lambda _g88014_
        (let ((_g88013_ (let () (declare (not safe)) (##length _g88014_))))
          (cond ((let () (declare (not safe)) (##fx= _g88013_ 3))
                 (apply (lambda (_%str83545%_ _%start83546%_ _%end83547%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str83545%_
                             _%start83546%_
                             _%end83547%_)))
                        _g88014_))
                ((let () (declare (not safe)) (##fx= _g88013_ 4))
                 (apply (lambda (_%str83551%_
                                 _%start83552%_
                                 _%end83553%_
                                 _%enc83554%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83551%_
                             _%start83552%_
                             _%end83553%_
                             _%enc83554%_)))
                        _g88014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88014_))))))
    (define string-empty?
      (lambda (_%str83490%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83490%_))
              (let ((_%str83494%_ _%str83490%_))
                (declare (not safe))
                (__string-empty? _%str83494%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@654.22-654.25"
                 'contract:
                 'string?
                 'value:
                 _%str83490%_)
                '#!void)))))
    (define __string-empty?
      (lambda (_%str83478%_)
        (let ()
          (let* ((_%str83481%_ _%str83478%_)
                 (__tmp88015
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83481%_))))
            (declare (not safe))
            (##fxzero? __tmp88015)))))
    (define string-index__%
      (lambda (_%str83430%_ _%char83431%_ _%start83432%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83430%_))
              (let ((_%str83436%_ _%str83430%_))
                (if (let () (declare (not safe)) (char? _%char83431%_))
                    (let ((_%char83446%_ _%char83431%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%start83432%_))
                          (let ((_%start83456%_ _%start83432%_))
                            (declare (not safe))
                            (__string-index__%
                             _%str83436%_
                             _%char83446%_
                             _%start83456%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start83432%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char83431%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@658.21-658.24"
                 'contract:
                 'string?
                 'value:
                 _%str83430%_)
                '#!void)))))
    (define string-index__0
      (lambda (_%str83469%_ _%char83470%_)
        (let ((_%start83472%_ '0))
          (declare (not safe))
          (string-index__% _%str83469%_ _%char83470%_ _%start83472%_))))
    (define string-index
      (lambda _g88017_
        (let ((_g88016_ (let () (declare (not safe)) (##length _g88017_))))
          (cond ((let () (declare (not safe)) (##fx= _g88016_ 2))
                 (apply (lambda (_%str83469%_ _%char83470%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str83469%_ _%char83470%_)))
                        _g88017_))
                ((let () (declare (not safe)) (##fx= _g88016_ 3))
                 (apply (lambda (_%str83474%_ _%char83475%_ _%start83476%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str83474%_
                             _%char83475%_
                             _%start83476%_)))
                        _g88017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88017_))))))
    (define __string-index__%
      (lambda (_%str83367%_ _%char83368%_ _%start83369%_)
        (let ()
          (let* ((_%str83372%_ _%str83367%_) (_%char83380%_ _%char83368%_))
            (if (let ()
                  (declare (not safe))
                  (nonnegative-fixnum? _%start83369%_))
                (let ()
                  (let* ((_%start83389%_ _%start83369%_)
                         (_%len83399%_
                          (let ()
                            (declare (not safe))
                            (##string-length _%str83372%_))))
                    (let _%lp83401%_ ((_%k83403%_ _%start83389%_))
                      (let ((_%k83405%_ _%k83403%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k83405%_ _%len83399%_))
                            (if (eq? _%char83380%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str83372%_ _%k83405%_)))
                                _%k83405%_
                                (let ((__tmp88018
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83405%_ '1))))
                                  (declare (not safe))
                                  (_%lp83401%_ __tmp88018)))
                            '#f)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                   'contract:
                   'nonnegative-fixnum?
                   'value:
                   _%start83369%_)
                  '#!void))))))
    (define __string-index__0
      (lambda (_%str83420%_ _%char83421%_)
        (let ((_%start83423%_ '0))
          (declare (not safe))
          (__string-index__% _%str83420%_ _%char83421%_ _%start83423%_))))
    (define __string-index
      (lambda _g88020_
        (let ((_g88019_ (let () (declare (not safe)) (##length _g88020_))))
          (cond ((let () (declare (not safe)) (##fx= _g88019_ 2))
                 (apply (lambda (_%str83420%_ _%char83421%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str83420%_ _%char83421%_)))
                        _g88020_))
                ((let () (declare (not safe)) (##fx= _g88019_ 3))
                 (apply (lambda (_%str83425%_ _%char83426%_ _%start83427%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str83425%_
                             _%char83426%_
                             _%start83427%_)))
                        _g88020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88020_))))))
    (define string-rindex__%
      (lambda (_%str83328%_ _%char83329%_ _%start83330%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83328%_))
              (let ((_%str83334%_ _%str83328%_))
                (if (let () (declare (not safe)) (char? _%char83329%_))
                    (let ((_%char83344%_ _%char83329%_))
                      (declare (not safe))
                      (__string-rindex__%
                       _%str83334%_
                       _%char83344%_
                       _%start83330%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char83329%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@669.22-669.25"
                 'contract:
                 'string?
                 'value:
                 _%str83328%_)
                '#!void)))))
    (define string-rindex__0
      (lambda (_%str83357%_ _%char83358%_)
        (let ((_%start83360%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str83357%_ _%char83358%_ _%start83360%_))))
    (define string-rindex
      (lambda _g88022_
        (let ((_g88021_ (let () (declare (not safe)) (##length _g88022_))))
          (cond ((let () (declare (not safe)) (##fx= _g88021_ 2))
                 (apply (lambda (_%str83357%_ _%char83358%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str83357%_ _%char83358%_)))
                        _g88022_))
                ((let () (declare (not safe)) (##fx= _g88021_ 3))
                 (apply (lambda (_%str83362%_ _%char83363%_ _%start83364%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str83362%_
                             _%char83363%_
                             _%start83364%_)))
                        _g88022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88022_))))))
    (define __string-rindex__%
      (lambda (_%str83270%_ _%char83271%_ _%start83272%_)
        (let ()
          (let* ((_%str83275%_ _%str83270%_) (_%char83283%_ _%char83271%_))
            (let* ((_%len83292%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str83275%_)))
                   (_%start83294%_
                    (if (let () (declare (not safe)) (fixnum? _%start83272%_))
                        _%start83272%_
                        (let ()
                          (declare (not safe))
                          (##fx- _%len83292%_ '1)))))
              (let _%lp83297%_ ((_%k83299%_ _%start83294%_))
                (let ((_%k83301%_ _%k83299%_))
                  (if (let () (declare (not safe)) (##fx>= _%k83301%_ '0))
                      (if (eq? _%char83283%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str83275%_ _%k83301%_)))
                          _%k83301%_
                          (let ((__tmp88023
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%k83301%_ '1))))
                            (declare (not safe))
                            (_%lp83297%_ __tmp88023)))
                      '#f))))))))
    (define __string-rindex__0
      (lambda (_%str83318%_ _%char83319%_)
        (let ((_%start83321%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str83318%_ _%char83319%_ _%start83321%_))))
    (define __string-rindex
      (lambda _g88025_
        (let ((_g88024_ (let () (declare (not safe)) (##length _g88025_))))
          (cond ((let () (declare (not safe)) (##fx= _g88024_ 2))
                 (apply (lambda (_%str83318%_ _%char83319%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str83318%_ _%char83319%_)))
                        _g88025_))
                ((let () (declare (not safe)) (##fx= _g88024_ 3))
                 (apply (lambda (_%str83323%_ _%char83324%_ _%start83325%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str83323%_
                             _%char83324%_
                             _%start83325%_)))
                        _g88025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88025_))))))
    (define string-split
      (lambda (_%str83244%_ _%char83245%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83244%_))
              (let ((_%str83249%_ _%str83244%_))
                (if (let () (declare (not safe)) (char? _%char83245%_))
                    (let ((_%char83259%_ _%char83245%_))
                      (declare (not safe))
                      (__string-split _%str83249%_ _%char83259%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char83245%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@681.21-681.24"
                 'contract:
                 'string?
                 'value:
                 _%str83244%_)
                '#!void)))))
    (define __string-split
      (lambda (_%str83185%_ _%char83186%_)
        (let ((_%str83189%_ _%str83185%_))
          (let* ((_%char83197%_ _%char83186%_)
                 (_%len83206%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83189%_))))
            (let _%lp83208%_ ((_%start83210%_ '0) (_%r83211%_ '()))
              (let ()
                (let* ((_%start83214%_ _%start83210%_)
                       (_%$e83227%_
                        (let ()
                          (declare (not safe))
                          (__string-index
                           _%str83189%_
                           _%char83197%_
                           _%start83214%_))))
                  (if _%$e83227%_
                      ((lambda (_%end83230%_)
                         (let ((_%end83232%_ _%end83230%_))
                           (let ((__tmp88027
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%end83232%_ '1)))
                                 (__tmp88026
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _%str83189%_
                                           _%start83214%_
                                           _%end83232%_))
                                        _%r83211%_)))
                             (declare (not safe))
                             (_%lp83208%_ __tmp88027 __tmp88026))))
                       _%$e83227%_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _%start83214%_ _%len83206%_))
                          (let ((__tmp88028
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _%str83189%_
                                          _%start83214%_
                                          _%len83206%_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp88028 _%r83211%_))
                          (let () (reverse! _%r83211%_)))))))))))
    (define string-join
      (lambda (_%strs83035%_ _%join83036%_)
        (let ()
          (letrec ((_%join-length83039%_
                    (lambda (_%strs83123%_ _%jlen83124%_)
                      (let _%lp83126%_ ((_%rest83128%_ _%strs83123%_)
                                        (_%len83129%_ '0))
                        (let ((_%len83131%_ _%len83129%_))
                          (let* ((_%rest8313983147%_ _%rest83128%_)
                                 (_%else8314183155%_ (lambda () '0))
                                 (_%K8314383173%_
                                  (lambda (_%rest83158%_ _%hd83159%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd83159%_))
                                        (let ((_%hd83161%_ _%hd83159%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest83158%_))
                                              (let ((__tmp88029
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd83161%_))
                                                          _%jlen83124%_
                                                          _%len83131%_)))
                                                (declare (not safe))
                                                (_%lp83126%_
                                                 _%rest83158%_
                                                 __tmp88029))
                                              (let ((__tmp88030
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd83161%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp88030
                                                       _%len83131%_))))
                                        (error '"expected string"
                                               _%hd83159%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8313983147%_))
                                (let ((_%hd8314483176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8313983147%_)))
                                      (_%tl8314583178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8313983147%_))))
                                  (let* ((_%hd83181%_ _%hd8314483176%_)
                                         (_%rest83183%_ _%tl8314583178%_))
                                    (declare (not safe))
                                    (_%K8314383173%_
                                     _%rest83183%_
                                     _%hd83181%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8314183155%_)))))))))
            (let* ((_%join83044%_
                    (if (let () (declare (not safe)) (char? _%join83036%_))
                        (let () (declare (not safe)) (##string _%join83036%_))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join83036%_))
                            (let () _%join83036%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join83036%_)))))
                   (_%jlen83046%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join83044%_)))
                   (_%olen83048%_
                    (let ()
                      (declare (not safe))
                      (_%join-length83039%_ _%strs83035%_ _%jlen83046%_)))
                   (_%ostr83050%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen83048%_))))
              (let _%lp83053%_ ((_%rest83055%_ _%strs83035%_) (_%k83056%_ '0))
                (let ((_%k83059%_ _%k83056%_))
                  (let* ((_%rest8307583083%_ _%rest83055%_)
                         (_%else8307783091%_ (lambda () '""))
                         (_%K8307983111%_
                          (lambda (_%rest83094%_ _%hd83095%_)
                            (let* ((_%hd83097%_ _%hd83095%_)
                                   (_%hdlen83109%_
                                    (let ()
                                      (declare (not safe))
                                      (##string-length _%hd83097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%rest83094%_))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83097%_
                                       '0
                                       _%hdlen83109%_
                                       _%ostr83050%_
                                       _%k83059%_))
                                    (let ((__tmp88031
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83059%_
                                                    _%hdlen83109%_))))
                                      (declare (not safe))
                                      (##substring-move!
                                       _%join83044%_
                                       '0
                                       _%jlen83046%_
                                       _%ostr83050%_
                                       __tmp88031))
                                    (let ((__tmp88032
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83059%_
                                                    _%hdlen83109%_
                                                    _%jlen83046%_))))
                                      (declare (not safe))
                                      (_%lp83053%_ _%rest83094%_ __tmp88032)))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83097%_
                                       '0
                                       _%hdlen83109%_
                                       _%ostr83050%_
                                       _%k83059%_))
                                    _%ostr83050%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8307583083%_))
                        (let ((_%hd8308083114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8307583083%_)))
                              (_%tl8308183116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8307583083%_))))
                          (let* ((_%hd83119%_ _%hd8308083114%_)
                                 (_%rest83121%_ _%tl8308183116%_))
                            (declare (not safe))
                            (_%K8307983111%_ _%rest83121%_ _%hd83119%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8307783091%_)))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82961%_ _%port82962%_ _%start82963%_ _%end82964%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82961%_))
              (let ((_%bytes82968%_ _%bytes82961%_))
                (if (input-port? _%port82962%_)
                    (let ((_%port82978%_ _%port82962%_))
                      (if ((lambda (_%o82987%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82987%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82987%_ '0))
                                  (let ((__tmp88033
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82968%_))))
                                    (declare (not safe))
                                    (##fx< _%o82987%_ __tmp88033))))
                           _%start82963%_)
                          (let ((_%start82991%_ _%start82963%_))
                            (if ((lambda (_%o83000%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o83000%_))
                                        (fx<= _%start82991%_
                                              _%o83000%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82968%_)))))
                                 _%end82964%_)
                                (let ((_%end83004%_ _%end82964%_))
                                  (declare (not safe))
                                  (__read-u8vector__%
                                   _%bytes82968%_
                                   _%port82978%_
                                   _%start82991%_
                                   _%end83004%_))
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
                                   _%end82964%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82963%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82962%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@744.22-744.27"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82961%_)
                '#!void)))))
    (define read-u8vector__0
      (lambda (_%bytes83017%_ _%port83018%_)
        (let* ((_%start83020%_ '0)
               (_%end83022%_ (u8vector-length _%bytes83017%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83017%_
           _%port83018%_
           _%start83020%_
           _%end83022%_))))
    (define read-u8vector__1
      (lambda (_%bytes83024%_ _%port83025%_ _%start83026%_)
        (let ((_%end83028%_ (u8vector-length _%bytes83024%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83024%_
           _%port83025%_
           _%start83026%_
           _%end83028%_))))
    (define read-u8vector
      (lambda _g88035_
        (let ((_g88034_ (let () (declare (not safe)) (##length _g88035_))))
          (cond ((let () (declare (not safe)) (##fx= _g88034_ 2))
                 (apply (lambda (_%bytes83017%_ _%port83018%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes83017%_ _%port83018%_)))
                        _g88035_))
                ((let () (declare (not safe)) (##fx= _g88034_ 3))
                 (apply (lambda (_%bytes83024%_ _%port83025%_ _%start83026%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes83024%_
                             _%port83025%_
                             _%start83026%_)))
                        _g88035_))
                ((let () (declare (not safe)) (##fx= _g88034_ 4))
                 (apply (lambda (_%bytes83030%_
                                 _%port83031%_
                                 _%start83032%_
                                 _%end83033%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes83030%_
                             _%port83031%_
                             _%start83032%_
                             _%end83033%_)))
                        _g88035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88035_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82888%_ _%port82889%_ _%start82890%_ _%end82891%_)
        (let ((_%bytes82894%_ _%bytes82888%_))
          (if (input-port? _%port82889%_)
              (let ((_%port82903%_ _%port82889%_))
                (if ((lambda (_%o82912%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82912%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82912%_ '0))
                            (let ((__tmp88036
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82894%_))))
                              (declare (not safe))
                              (##fx< _%o82912%_ __tmp88036))))
                     _%start82890%_)
                    (let ((_%start82916%_ _%start82890%_))
                      (if ((lambda (_%o82925%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82925%_))
                                  (fx<= _%start82916%_
                                        _%o82925%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82894%_)))))
                           _%end82891%_)
                          (let ((_%end82929%_ _%end82891%_))
                            (declare (not safe))
                            (##read-subu8vector
                             _%bytes82894%_
                             _%start82916%_
                             _%end82929%_
                             _%port82903%_))
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
                             _%end82891%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82890%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                 'contract:
                 'input-port?
                 'value:
                 _%port82889%_)
                '#!void)))))
    (define __read-u8vector__0
      (lambda (_%bytes82942%_ _%port82943%_)
        (let* ((_%start82945%_ '0)
               (_%end82947%_ (u8vector-length _%bytes82942%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82942%_
           _%port82943%_
           _%start82945%_
           _%end82947%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82949%_ _%port82950%_ _%start82951%_)
        (let ((_%end82953%_ (u8vector-length _%bytes82949%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82949%_
           _%port82950%_
           _%start82951%_
           _%end82953%_))))
    (define __read-u8vector
      (lambda _g88038_
        (let ((_g88037_ (let () (declare (not safe)) (##length _g88038_))))
          (cond ((let () (declare (not safe)) (##fx= _g88037_ 2))
                 (apply (lambda (_%bytes82942%_ _%port82943%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82942%_ _%port82943%_)))
                        _g88038_))
                ((let () (declare (not safe)) (##fx= _g88037_ 3))
                 (apply (lambda (_%bytes82949%_ _%port82950%_ _%start82951%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82949%_
                             _%port82950%_
                             _%start82951%_)))
                        _g88038_))
                ((let () (declare (not safe)) (##fx= _g88037_ 4))
                 (apply (lambda (_%bytes82955%_
                                 _%port82956%_
                                 _%start82957%_
                                 _%end82958%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82955%_
                             _%port82956%_
                             _%start82957%_
                             _%end82958%_)))
                        _g88038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88038_))))))
    (define write-u8vector__%
      (lambda (_%bytes82813%_ _%port82814%_ _%start82815%_ _%end82816%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82813%_))
              (let ((_%bytes82820%_ _%bytes82813%_))
                (if (output-port? _%port82814%_)
                    (let ((_%port82830%_ _%port82814%_))
                      (if ((lambda (_%o82839%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82839%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82839%_ '0))
                                  (let ((__tmp88039
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82820%_))))
                                    (declare (not safe))
                                    (##fx< _%o82839%_ __tmp88039))))
                           _%start82815%_)
                          (let ((_%start82843%_ _%start82815%_))
                            (if ((lambda (_%o82852%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82852%_))
                                        (fx<= _%start82843%_
                                              _%o82852%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82820%_)))))
                                 _%end82816%_)
                                (let ((_%end82856%_ _%end82816%_))
                                  (declare (not safe))
                                  (__write-u8vector__%
                                   _%bytes82820%_
                                   _%port82830%_
                                   _%start82843%_
                                   _%end82856%_))
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
                                   _%end82816%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82815%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82814%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@754.23-754.28"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82813%_)
                '#!void)))))
    (define write-u8vector__0
      (lambda (_%bytes82869%_ _%port82870%_)
        (let* ((_%start82872%_ '0)
               (_%end82874%_ (u8vector-length _%bytes82869%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82869%_
           _%port82870%_
           _%start82872%_
           _%end82874%_))))
    (define write-u8vector__1
      (lambda (_%bytes82876%_ _%port82877%_ _%start82878%_)
        (let ((_%end82880%_ (u8vector-length _%bytes82876%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82876%_
           _%port82877%_
           _%start82878%_
           _%end82880%_))))
    (define write-u8vector
      (lambda _g88041_
        (let ((_g88040_ (let () (declare (not safe)) (##length _g88041_))))
          (cond ((let () (declare (not safe)) (##fx= _g88040_ 2))
                 (apply (lambda (_%bytes82869%_ _%port82870%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82869%_ _%port82870%_)))
                        _g88041_))
                ((let () (declare (not safe)) (##fx= _g88040_ 3))
                 (apply (lambda (_%bytes82876%_ _%port82877%_ _%start82878%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82876%_
                             _%port82877%_
                             _%start82878%_)))
                        _g88041_))
                ((let () (declare (not safe)) (##fx= _g88040_ 4))
                 (apply (lambda (_%bytes82882%_
                                 _%port82883%_
                                 _%start82884%_
                                 _%end82885%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82882%_
                             _%port82883%_
                             _%start82884%_
                             _%end82885%_)))
                        _g88041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88041_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82740%_ _%port82741%_ _%start82742%_ _%end82743%_)
        (let ((_%bytes82746%_ _%bytes82740%_))
          (if (output-port? _%port82741%_)
              (let ((_%port82755%_ _%port82741%_))
                (if ((lambda (_%o82764%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82764%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82764%_ '0))
                            (let ((__tmp88042
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82746%_))))
                              (declare (not safe))
                              (##fx< _%o82764%_ __tmp88042))))
                     _%start82742%_)
                    (let ((_%start82768%_ _%start82742%_))
                      (if ((lambda (_%o82777%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82777%_))
                                  (fx<= _%start82768%_
                                        _%o82777%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82746%_)))))
                           _%end82743%_)
                          (let ((_%end82781%_ _%end82743%_))
                            (declare (not safe))
                            (##write-subu8vector
                             _%bytes82746%_
                             _%start82768%_
                             _%end82781%_
                             _%port82755%_))
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
                             _%end82743%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82742%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                 'contract:
                 'output-port?
                 'value:
                 _%port82741%_)
                '#!void)))))
    (define __write-u8vector__0
      (lambda (_%bytes82794%_ _%port82795%_)
        (let* ((_%start82797%_ '0)
               (_%end82799%_ (u8vector-length _%bytes82794%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82794%_
           _%port82795%_
           _%start82797%_
           _%end82799%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82801%_ _%port82802%_ _%start82803%_)
        (let ((_%end82805%_ (u8vector-length _%bytes82801%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82801%_
           _%port82802%_
           _%start82803%_
           _%end82805%_))))
    (define __write-u8vector
      (lambda _g88044_
        (let ((_g88043_ (let () (declare (not safe)) (##length _g88044_))))
          (cond ((let () (declare (not safe)) (##fx= _g88043_ 2))
                 (apply (lambda (_%bytes82794%_ _%port82795%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82794%_
                             _%port82795%_)))
                        _g88044_))
                ((let () (declare (not safe)) (##fx= _g88043_ 3))
                 (apply (lambda (_%bytes82801%_ _%port82802%_ _%start82803%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82801%_
                             _%port82802%_
                             _%start82803%_)))
                        _g88044_))
                ((let () (declare (not safe)) (##fx= _g88043_ 4))
                 (apply (lambda (_%bytes82807%_
                                 _%port82808%_
                                 _%start82809%_
                                 _%end82810%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82807%_
                             _%port82808%_
                             _%start82809%_
                             _%end82810%_)))
                        _g88044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88044_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82708%_
               _%dbg-exprs82709%_
               _%dbg-thunks82710%_
               _%expr82711%_
               _%thunk82712%_)
        (letrec ((_%o82714%_ (current-output-port))
                 (_%e82715%_ (current-error-port))
                 (_%p82716%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82717%_
                  (lambda ()
                    (force-output _%o82714%_)
                    (force-output _%e82715%_)))
                 (_%d82718%_
                  (lambda (_%x82725%_) (display _%x82725%_ _%e82715%_)))
                 (_%w82719%_
                  (lambda (_%x82727%_) (_%p82716%_ _%x82727%_ _%e82715%_)))
                 (_%n82720%_ (lambda () (newline _%e82715%_)))
                 (_%v82721%_
                  (lambda (_%l82730%_)
                    (for-each
                     (lambda (_%x82732%_)
                       (let () (declare (not safe)) (_%d82718%_ '" "))
                       (let () (declare (not safe)) (_%w82719%_ _%x82732%_)))
                     _%l82730%_)
                    (let () (declare (not safe)) (_%n82720%_))))
                 (_%x82722%_
                  (lambda (_%expr82734%_ _%thunk82735%_)
                    (let () (declare (not safe)) (_%f82717%_))
                    (let () (declare (not safe)) (_%d82718%_ '"  "))
                    (let () (declare (not safe)) (_%w82719%_ _%expr82734%_))
                    (let () (declare (not safe)) (_%d82718%_ '" =>"))
                    (call-with-values
                     _%thunk82735%_
                     (lambda _%x82737%_
                       (let () (declare (not safe)) (_%v82721%_ _%x82737%_))
                       (let () (declare (not safe)) (_%f82717%_))
                       (apply values _%x82737%_))))))
          (if _%tag82708%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82708%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82717%_))
                      (let () (declare (not safe)) (_%d82718%_ _%tag82708%_))
                      (let () (declare (not safe)) (_%n82720%_))))
                (for-each _%x82722%_ _%dbg-exprs82709%_ _%dbg-thunks82710%_)
                (if _%thunk82712%_
                    (let ()
                      (declare (not safe))
                      (_%x82722%_ _%expr82711%_ _%thunk82712%_))
                    '#!void))
              (if _%thunk82712%_ (_%thunk82712%_) '#!void)))))))
