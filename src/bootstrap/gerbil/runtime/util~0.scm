(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712093474)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85574%_
        (let () (for-each display _%args85574%_) (newline))))
    (define display*
      (lambda _%args85571%_ (let () (for-each display _%args85571%_))))
    (define file-newer?
      (lambda (_%file185546%_ _%file285547%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file185546%_))
              (let ()
                (let ((_%file185551%_ _%file185546%_))
                  (if (let () (declare (not safe)) (string? _%file285547%_))
                      (let ()
                        (let ((_%file285561%_ _%file285547%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__file-newer? _%file185551%_ _%file285561%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file285547%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file185546%_)))))
    (define __file-newer?
      (lambda (_%file185494%_ _%file285495%_)
        (let ()
          (let ((_%file185498%_ _%file185494%_))
            (let ((_%file285506%_ _%file285495%_))
              (let ()
                (letrec ((_%modification-time85515%_
                          (lambda (_%file85534%_)
                            (let ()
                              (let ((_%file85537%_ _%file85534%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__modification-time85516%_
                                     _%file85537%_)))))))
                         (_%__modification-time85516%_
                          (lambda (_%file85518%_)
                            (let ()
                              (let ((_%file85521%_ _%file85518%_))
                                (let ()
                                  (let ((__tmp87315
                                         (let ((__tmp87316
                                                (let ()
                                                  (declare (not safe))
                                                  (##file-info
                                                   _%file85521%_
                                                   '#t))))
                                           (declare (not safe))
                                           (##file-info-last-modification-time
                                            __tmp87316))))
                                    (declare (not safe))
                                    (##time->seconds __tmp87315))))))))
                  (let ((__tmp87318
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85516%_ _%file185498%_)))
                        (__tmp87317
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85516%_ _%file285506%_))))
                    (declare (not safe))
                    (##fl> __tmp87318 __tmp87317)))))))))
    (define create-directory*__%
      (lambda (_%dir85459%_ _%perms85460%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir85459%_))
              (let ()
                (let ((_%dir85464%_ _%dir85459%_))
                  (if (let () (declare (not safe)) (fixnum? _%perms85460%_))
                      (let ()
                        (let ((_%perms85474%_ _%perms85460%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__create-directory*__%
                               _%dir85464%_
                               _%perms85474%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms85460%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir85459%_)))))
    (define create-directory*__0
      (lambda (_%dir85487%_)
        (let ((_%perms85489%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir85487%_ _%perms85489%_))))
    (define create-directory*
      (lambda _g87320_
        (let ((_g87319_ (let () (declare (not safe)) (##length _g87320_))))
          (cond ((let () (declare (not safe)) (##fx= _g87319_ 1))
                 (apply (lambda (_%dir85487%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir85487%_)))
                        _g87320_))
                ((let () (declare (not safe)) (##fx= _g87319_ 2))
                 (apply (lambda (_%dir85491%_ _%perms85492%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir85491%_
                             _%perms85492%_)))
                        _g87320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87320_))))))
    (define __create-directory*__%
      (lambda (_%dir85383%_ _%perms85384%_)
        (let ()
          (let ((_%dir85387%_ _%dir85383%_))
            (let ((_%perms85395%_ _%perms85384%_))
              (let ()
                (letrec ((_%create185404%_
                          (lambda (_%path85436%_)
                            (let ()
                              (let ((_%path85439%_ _%path85436%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__create185405%_ _%path85439%_)))))))
                         (_%__create185405%_
                          (lambda (_%path85417%_)
                            (let ()
                              (let ((_%path85420%_ _%path85417%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (##file-exists? _%path85420%_))
                                      (let ()
                                        (if (eq? (file-type _%path85420%_)
                                                 'directory)
                                            '#!void
                                            (error '"Path component is not a directory"
                                                   _%path85420%_)))
                                      (if _%perms85395%_
                                          (let ()
                                            (create-directory
                                             (cons 'path:
                                                   (cons _%path85420%_
                                                         (cons 'permissions:
                                                               (cons _%perms85395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (create-directory
                                             _%path85420%_))))))))))
                  (if (let ()
                        (declare (not safe))
                        (##file-exists? _%dir85387%_))
                      '#!void
                      (let _%lp85407%_ ((_%start85409%_ '0))
                        (let ((_%$e85411%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%dir85387%_
                                  '#\/
                                  _%start85409%_))))
                          (if _%$e85411%_
                              ((lambda (_%x85414%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##fx> _%x85414%_ '0))
                                     (let ((__tmp87321
                                            (substring
                                             _%dir85387%_
                                             '0
                                             _%x85414%_)))
                                       (declare (not safe))
                                       (_%__create185405%_ __tmp87321))
                                     '#!void)
                                 (let ((__tmp87322
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%x85414%_ '1))))
                                   (declare (not safe))
                                   (_%lp85407%_ __tmp87322)))
                               _%$e85411%_)
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (_%__create185405%_ _%dir85387%_)))))))
                  '#!void)))))))
    (define __create-directory*__0
      (lambda (_%dir85451%_)
        (let ((_%perms85453%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir85451%_ _%perms85453%_))))
    (define __create-directory*
      (lambda _g87324_
        (let ((_g87323_ (let () (declare (not safe)) (##length _g87324_))))
          (cond ((let () (declare (not safe)) (##fx= _g87323_ 1))
                 (apply (lambda (_%dir85451%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir85451%_)))
                        _g87324_))
                ((let () (declare (not safe)) (##fx= _g87323_ 2))
                 (apply (lambda (_%dir85455%_ _%perms85456%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir85455%_
                             _%perms85456%_)))
                        _g87324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87324_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85379%_ (let () '#t)))
    (define true? (lambda (_%obj85376%_) (let () (eq? _%obj85376%_ '#t))))
    (define false (lambda _%ignore85373%_ (let () '#f)))
    (define void (lambda _%ignore85370%_ (let () '#!void)))
    (define void? (lambda (_%obj85367%_) (let () (eq? _%obj85367%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85364%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85364%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85361%_) (let () (eq? _%obj85361%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85358%_) (let () (eq? _%obj85358%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85355%_) (let () (eq? _%obj85355%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85350%_)
        (let ()
          (let* ((_%t85353%_
                  (let () (declare (not safe)) (##type _%obj85350%_)))
                 (__tmp87325
                  (let () (declare (not safe)) (##fxand _%t85353%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87325)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85347%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85347%_))
              (let () (declare (not safe)) (##fx>= _%obj85347%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85341%_)
        (let ()
          (let ((_%$e85344%_
                 (let () (declare (not safe)) (pair? _%obj85341%_))))
            (if _%$e85344%_
                _%$e85344%_
                (let () (declare (not safe)) (null? _%obj85341%_)))))))
    (define values-count
      (lambda (_%obj85338%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85338%_))
              (let () (declare (not safe)) (##vector-length _%obj85338%_))
              '1))))
    (define values-ref
      (lambda (_%obj85323%_ _%k85324%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85324%_))
              (let ()
                (let ((_%k85328%_ _%k85324%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__values-ref _%obj85323%_ _%k85328%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k85324%_)))))
    (define __values-ref
      (lambda (_%obj85310%_ _%k85311%_)
        (let ()
          (let ((_%k85314%_ _%k85311%_))
            (let ()
              (if (let () (declare (not safe)) (##values? _%obj85310%_))
                  (let ()
                    (declare (not safe))
                    (##vector-ref _%obj85310%_ _%k85314%_))
                  _%obj85310%_))))))
    (define values->list
      (lambda (_%obj85307%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85307%_))
              (let () (declare (not safe)) (##vector->list _%obj85307%_))
              (list _%obj85307%_)))))
    (define foldl1
      (lambda (_%f85291%_ _%iv85292%_ _%lst85293%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85291%_))
              (let ()
                (let ((_%f85297%_ _%f85291%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl1 _%f85297%_ _%iv85292%_ _%lst85293%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f85291%_)))))
    (define __foldl1
      (lambda (_%f85239%_ _%iv85240%_ _%lst85241%_)
        (let ()
          (let ((_%f85244%_ _%f85239%_))
            (let ()
              (let _%lp85253%_ ((_%rest85255%_ _%lst85241%_)
                                (_%r85256%_ _%iv85240%_))
                (let* ((_%rest8525785265%_ _%rest85255%_)
                       (_%else8525985273%_ (lambda () _%r85256%_))
                       (_%K8526185279%_
                        (lambda (_%rest85276%_ _%x85277%_)
                          (let ((__tmp87326
                                 (let ()
                                   (declare (not safe))
                                   (_%f85244%_ _%x85277%_ _%r85256%_))))
                            (declare (not safe))
                            (_%lp85253%_ _%rest85276%_ __tmp87326)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8525785265%_))
                      (let ((_%hd8526285282%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8525785265%_)))
                            (_%tl8526385284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8525785265%_))))
                        (let* ((_%x85287%_ _%hd8526285282%_)
                               (_%rest85289%_ _%tl8526385284%_))
                          (declare (not safe))
                          (_%K8526185279%_ _%rest85289%_ _%x85287%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8525985273%_))))))))))
    (define foldl2
      (lambda (_%f85222%_ _%iv85223%_ _%lst185224%_ _%lst285225%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85222%_))
              (let ()
                (let ((_%f85229%_ _%f85222%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl2
                       _%f85229%_
                       _%iv85223%_
                       _%lst185224%_
                       _%lst285225%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85222%_)))))
    (define __foldl2
      (lambda (_%f85135%_ _%iv85136%_ _%lst185137%_ _%lst285138%_)
        (let ()
          (let ((_%f85141%_ _%f85135%_))
            (let ()
              (let _%lp85150%_ ((_%rest185152%_ _%lst185137%_)
                                (_%rest285153%_ _%lst285138%_)
                                (_%r85154%_ _%iv85136%_))
                (let* ((_%rest18515585163%_ _%rest185152%_)
                       (_%else8515785171%_ (lambda () _%r85154%_))
                       (_%K8515985210%_
                        (lambda (_%rest185174%_ _%x185175%_)
                          (let* ((_%rest28517685184%_ _%rest285153%_)
                                 (_%else8517885192%_ (lambda () _%r85154%_))
                                 (_%K8518085198%_
                                  (lambda (_%rest285195%_ _%x285196%_)
                                    (let ((__tmp87327
                                           (let ()
                                             (declare (not safe))
                                             (_%f85141%_
                                              _%x185175%_
                                              _%x285196%_
                                              _%r85154%_))))
                                      (declare (not safe))
                                      (_%lp85150%_
                                       _%rest185174%_
                                       _%rest285195%_
                                       __tmp87327)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28517685184%_))
                                (let ((_%hd8518185201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28517685184%_)))
                                      (_%tl8518285203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28517685184%_))))
                                  (let* ((_%x285206%_ _%hd8518185201%_)
                                         (_%rest285208%_ _%tl8518285203%_))
                                    (declare (not safe))
                                    (_%K8518085198%_
                                     _%rest285208%_
                                     _%x285206%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8517885192%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18515585163%_))
                      (let ((_%hd8516085213%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18515585163%_)))
                            (_%tl8516185215%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18515585163%_))))
                        (let* ((_%x185218%_ _%hd8516085213%_)
                               (_%rest185220%_ _%tl8516185215%_))
                          (declare (not safe))
                          (_%K8515985210%_ _%rest185220%_ _%x185218%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8515785171%_))))))))))
    (define foldl
      (lambda _g87329_
        (let ((_g87328_ (let () (declare (not safe)) (##length _g87329_))))
          (cond ((let () (declare (not safe)) (##fx= _g87328_ 3))
                 (apply (lambda (_%f85120%_ _%iv85121%_ _%lst85122%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85120%_ _%iv85121%_ _%lst85122%_)))
                        _g87329_))
                ((let () (declare (not safe)) (##fx= _g87328_ 4))
                 (apply (lambda (_%f85124%_
                                 _%iv85125%_
                                 _%lst185126%_
                                 _%lst285127%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85124%_
                                    _%iv85125%_
                                    _%lst185126%_
                                    _%lst285127%_)))
                        _g87329_))
                ((let () (declare (not safe)) (##fx>= _g87328_ 4))
                 (apply foldl* _g87329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87329_))))))
    (define foldl*
      (lambda (_%f85104%_ _%iv85105%_ . _%rest85106%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85104%_))
              (let ()
                (let ((_%f85110%_ _%f85104%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldl*
                               _%f85110%_
                               _%iv85105%_
                               _%rest85106%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85104%_)))))
    (define __foldl*
      (lambda (_%f85082%_ _%iv85083%_ . _%rest85084%_)
        (let ()
          (let ((_%f85087%_ _%f85082%_))
            (let ()
              (let _%recur85096%_ ((_%iv85098%_ _%iv85083%_)
                                   (_%rest85099%_ _%rest85084%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest85099%_))
                    (let ((__tmp87331
                           (let ((__tmp87332
                                  (let ((__tmp87334
                                         (lambda (_%xs85101%_ _%r85102%_)
                                           (cons (car _%xs85101%_)
                                                 _%r85102%_)))
                                        (__tmp87333 (list _%iv85098%_)))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp87334
                                     __tmp87333
                                     _%rest85099%_))))
                             (declare (not safe))
                             (##apply _%f85087%_ __tmp87332)))
                          (__tmp87330 (map cdr _%rest85099%_)))
                      (declare (not safe))
                      (_%recur85096%_ __tmp87331 __tmp87330))
                    _%iv85098%_)))))))
    (define foldr1
      (lambda (_%f85066%_ _%iv85067%_ _%lst85068%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85066%_))
              (let ()
                (let ((_%f85072%_ _%f85066%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr1 _%f85072%_ _%iv85067%_ _%lst85068%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f85066%_)))))
    (define __foldr1
      (lambda (_%f85015%_ _%iv85016%_ _%lst85017%_)
        (let ()
          (let ((_%f85020%_ _%f85015%_))
            (let ()
              (let _%recur85029%_ ((_%rest85031%_ _%lst85017%_))
                (let* ((_%rest8503285040%_ _%rest85031%_)
                       (_%else8503485048%_ (lambda () _%iv85016%_))
                       (_%K8503685054%_
                        (lambda (_%rest85051%_ _%x85052%_)
                          (let ((__tmp87335
                                 (let ()
                                   (declare (not safe))
                                   (_%recur85029%_ _%rest85051%_))))
                            (declare (not safe))
                            (_%f85020%_ _%x85052%_ __tmp87335)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8503285040%_))
                      (let ((_%hd8503785057%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8503285040%_)))
                            (_%tl8503885059%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8503285040%_))))
                        (let* ((_%x85062%_ _%hd8503785057%_)
                               (_%rest85064%_ _%tl8503885059%_))
                          (declare (not safe))
                          (_%K8503685054%_ _%rest85064%_ _%x85062%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8503485048%_))))))))))
    (define foldr2
      (lambda (_%f84998%_ _%iv84999%_ _%lst185000%_ _%lst285001%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84998%_))
              (let ()
                (let ((_%f85005%_ _%f84998%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr2
                       _%f85005%_
                       _%iv84999%_
                       _%lst185000%_
                       _%lst285001%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f84998%_)))))
    (define __foldr2
      (lambda (_%f84912%_ _%iv84913%_ _%lst184914%_ _%lst284915%_)
        (let ()
          (let ((_%f84918%_ _%f84912%_))
            (let ()
              (let _%recur84927%_ ((_%rest184929%_ _%lst184914%_)
                                   (_%rest284930%_ _%lst284915%_))
                (let* ((_%rest18493184939%_ _%rest184929%_)
                       (_%else8493384947%_ (lambda () _%iv84913%_))
                       (_%K8493584986%_
                        (lambda (_%rest184950%_ _%x184951%_)
                          (let* ((_%rest28495284960%_ _%rest284930%_)
                                 (_%else8495484968%_ (lambda () _%iv84913%_))
                                 (_%K8495684974%_
                                  (lambda (_%rest284971%_ _%x284972%_)
                                    (let ((__tmp87336
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84927%_
                                              _%rest184950%_
                                              _%rest284971%_))))
                                      (declare (not safe))
                                      (_%f84918%_
                                       _%x184951%_
                                       _%x284972%_
                                       __tmp87336)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28495284960%_))
                                (let ((_%hd8495784977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28495284960%_)))
                                      (_%tl8495884979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28495284960%_))))
                                  (let* ((_%x284982%_ _%hd8495784977%_)
                                         (_%rest284984%_ _%tl8495884979%_))
                                    (declare (not safe))
                                    (_%K8495684974%_
                                     _%rest284984%_
                                     _%x284982%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8495484968%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18493184939%_))
                      (let ((_%hd8493684989%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18493184939%_)))
                            (_%tl8493784991%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18493184939%_))))
                        (let* ((_%x184994%_ _%hd8493684989%_)
                               (_%rest184996%_ _%tl8493784991%_))
                          (declare (not safe))
                          (_%K8493584986%_ _%rest184996%_ _%x184994%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8493384947%_))))))))))
    (define foldr
      (lambda _g87338_
        (let ((_g87337_ (let () (declare (not safe)) (##length _g87338_))))
          (cond ((let () (declare (not safe)) (##fx= _g87337_ 3))
                 (apply (lambda (_%f84897%_ _%iv84898%_ _%lst84899%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f84897%_ _%iv84898%_ _%lst84899%_)))
                        _g87338_))
                ((let () (declare (not safe)) (##fx= _g87337_ 4))
                 (apply (lambda (_%f84901%_
                                 _%iv84902%_
                                 _%lst184903%_
                                 _%lst284904%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f84901%_
                                    _%iv84902%_
                                    _%lst184903%_
                                    _%lst284904%_)))
                        _g87338_))
                ((let () (declare (not safe)) (##fx>= _g87337_ 4))
                 (apply foldr* _g87338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87338_))))))
    (define foldr*
      (lambda (_%f84881%_ _%iv84882%_ . _%rest84883%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84881%_))
              (let ()
                (let ((_%f84887%_ _%f84881%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldr*
                               _%f84887%_
                               _%iv84882%_
                               _%rest84883%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f84881%_)))))
    (define __foldr*
      (lambda (_%f84860%_ _%iv84861%_ . _%rest84862%_)
        (let ()
          (let ((_%f84865%_ _%f84860%_))
            (let ()
              (let _%recur84874%_ ((_%rest84876%_ _%rest84862%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84876%_))
                    (let ((__tmp87339
                           (let ((__tmp87342
                                  (lambda (_%xs84878%_ _%r84879%_)
                                    (cons (car _%xs84878%_) _%r84879%_)))
                                 (__tmp87340
                                  (list (let ((__tmp87341
                                               (map cdr _%rest84876%_)))
                                          (declare (not safe))
                                          (_%recur84874%_ __tmp87341)))))
                             (declare (not safe))
                             (__foldr1 __tmp87342 __tmp87340 _%rest84876%_))))
                      (declare (not safe))
                      (##apply _%f84865%_ __tmp87339))
                    _%iv84861%_)))))))
    (define remove-nulls!
      (lambda (_%l84747%_)
        (let* ((_%l8474884761%_ _%l84747%_)
               (_%E8475284765%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8474884761%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8475784850%_
                 (lambda (_%r84848%_)
                   (let () (declare (not safe)) (remove-nulls! _%r84848%_))))
                (_%K8475484837%_
                 (lambda (_%r84777%_)
                   (let _%loop84779%_ ((_%l84781%_ _%l84747%_)
                                       (_%r84782%_ _%r84777%_))
                     (let* ((_%r8478384796%_ _%r84782%_)
                            (_%E8478784800%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8478384796%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8479284827%_
                              (lambda (_%rr84825%_)
                                (let ((__tmp87344 _%l84781%_)
                                      (__tmp87343
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr84825%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87344 __tmp87343))))
                             (_%K8478984814%_
                              (lambda (_%rr84812%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop84779%_ _%r84782%_ _%rr84812%_))))
                             (_%K8478884805%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8478384796%_))
                             (let ((_%tl8479484832%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8478384796%_)))
                                   (_%hd8479384830%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8478384796%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8479384830%_))
                                   (let ((_%rr84835%_ _%tl8479484832%_))
                                     (declare (not safe))
                                     (_%K8479284827%_ _%rr84835%_))
                                   (let ((_%rr84820%_ _%tl8479484832%_))
                                     (declare (not safe))
                                     (_%K8478984814%_ _%rr84820%_))))
                             '#!void))))
                   _%l84747%_))
                (_%K8475384770%_ (lambda () _%l84747%_)))
            (if (let () (declare (not safe)) (##pair? _%l8474884761%_))
                (let ((_%tl8475984855%_
                       (let () (declare (not safe)) (##cdr _%l8474884761%_)))
                      (_%hd8475884853%_
                       (let () (declare (not safe)) (##car _%l8474884761%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8475884853%_))
                      (let ((_%r84858%_ _%tl8475984855%_))
                        (declare (not safe))
                        (remove-nulls! _%r84858%_))
                      (let ((_%r84843%_ _%tl8475984855%_))
                        (declare (not safe))
                        (_%K8475484837%_ _%r84843%_))))
                (let () (declare (not safe)) (_%K8475384770%_)))))))
    (define append1!
      (lambda (_%l84732%_ _%x84733%_)
        (let ()
          (let ((_%l284736%_ (cons _%x84733%_ '())))
            (if (let () (declare (not safe)) (pair? _%l84732%_))
                (let ((_%l84738%_ _%l84732%_))
                  (let ((__tmp87345
                         (let ()
                           (declare (not safe))
                           (##last-pair _%l84738%_))))
                    (declare (not safe))
                    (##set-cdr! __tmp87345 _%l284736%_))
                  _%l84738%_)
                _%l284736%_)))))
    (define append-reverse-until
      (lambda (_%pred84716%_ _%rhead84717%_ _%tail84718%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84716%_))
              (let ()
                (let ((_%pred84722%_ _%pred84716%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__append-reverse-until
                       _%pred84722%_
                       _%rhead84717%_
                       _%tail84718%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred84716%_)))))
    (define __append-reverse-until
      (lambda (_%pred84658%_ _%rhead84659%_ _%tail84660%_)
        (let ()
          (let ((_%pred84663%_ _%pred84658%_))
            (let ()
              (let _%loop84672%_ ((_%rhead84674%_ _%rhead84659%_)
                                  (_%tail84675%_ _%tail84660%_))
                (let ()
                  (let* ((_%rhead8467784686%_ _%rhead84674%_)
                         (_%E8468084690%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%rhead8467784686%_
                                   '([])
                                   '([a :: r]))
                            '#!void)))
                    (let ((_%K8468484713%_
                           (lambda () (values '() _%tail84675%_)))
                          (_%K8468184697%_
                           (lambda (_%r84694%_ _%a84695%_)
                             (if (let ()
                                   (declare (not safe))
                                   (_%pred84663%_ _%a84695%_))
                                 (values _%rhead84674%_ _%tail84675%_)
                                 (let ((__tmp87346
                                        (cons _%a84695%_ _%tail84675%_)))
                                   (declare (not safe))
                                   (_%loop84672%_ _%r84694%_ __tmp87346))))))
                      (let ((_%try-match8467984709%_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%rhead8467784686%_))
                                   (let ((_%tl8468384702%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%rhead8467784686%_)))
                                         (_%hd8468284700%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%rhead8467784686%_))))
                                     (let ((_%a84705%_ _%hd8468284700%_)
                                           (_%r84707%_ _%tl8468384702%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K8468184697%_
                                          _%r84707%_
                                          _%a84705%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%E8468084690%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%rhead8467784686%_))
                            (let () (declare (not safe)) (_%K8468484713%_))
                            (let ()
                              (declare (not safe))
                              (_%try-match8467984709%_)))))))))))))
    (define andmap1
      (lambda (_%f84643%_ _%lst84644%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84643%_))
              (let ()
                (let ((_%f84648%_ _%f84643%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap1 _%f84648%_ _%lst84644%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f84643%_)))))
    (define __andmap1
      (lambda (_%f84592%_ _%lst84593%_)
        (let ()
          (let ((_%f84596%_ _%f84592%_))
            (let ()
              (let _%lp84605%_ ((_%rest84607%_ _%lst84593%_))
                (let ()
                  (let* ((_%rest8460984617%_ _%rest84607%_)
                         (_%else8461184625%_ (lambda () '#t))
                         (_%K8461384631%_
                          (lambda (_%rest84628%_ _%x84629%_)
                            (if (let ()
                                  (declare (not safe))
                                  (_%f84596%_ _%x84629%_))
                                (let ()
                                  (declare (not safe))
                                  (_%lp84605%_ _%rest84628%_))
                                '#f))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8460984617%_))
                        (let ((_%hd8461484634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8460984617%_)))
                              (_%tl8461584636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8460984617%_))))
                          (let* ((_%x84639%_ _%hd8461484634%_)
                                 (_%rest84641%_ _%tl8461584636%_))
                            (declare (not safe))
                            (_%K8461384631%_ _%rest84641%_ _%x84639%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8461184625%_)))))))))))
    (define andmap2
      (lambda (_%f84576%_ _%lst184577%_ _%lst284578%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84576%_))
              (let ()
                (let ((_%f84582%_ _%f84576%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap2 _%f84582%_ _%lst184577%_ _%lst284578%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f84576%_)))))
    (define __andmap2
      (lambda (_%f84490%_ _%lst184491%_ _%lst284492%_)
        (let ()
          (let ((_%f84495%_ _%f84490%_))
            (let ()
              (let _%lp84504%_ ((_%rest184506%_ _%lst184491%_)
                                (_%rest284507%_ _%lst284492%_))
                (let ()
                  (let* ((_%rest18450984517%_ _%rest184506%_)
                         (_%else8451184525%_ (lambda () '#t))
                         (_%K8451384564%_
                          (lambda (_%rest184528%_ _%x184529%_)
                            (let* ((_%rest28453084538%_ _%rest284507%_)
                                   (_%else8453284546%_ (lambda () '#t))
                                   (_%K8453484552%_
                                    (lambda (_%rest284549%_ _%x284550%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (_%f84495%_
                                             _%x184529%_
                                             _%x284550%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84504%_
                                             _%rest184528%_
                                             _%rest284549%_))
                                          '#f))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28453084538%_))
                                  (let ((_%hd8453584555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28453084538%_)))
                                        (_%tl8453684557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28453084538%_))))
                                    (let* ((_%x284560%_ _%hd8453584555%_)
                                           (_%rest284562%_ _%tl8453684557%_))
                                      (declare (not safe))
                                      (_%K8453484552%_
                                       _%rest284562%_
                                       _%x284560%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8453284546%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18450984517%_))
                        (let ((_%hd8451484567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18450984517%_)))
                              (_%tl8451584569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18450984517%_))))
                          (let* ((_%x184572%_ _%hd8451484567%_)
                                 (_%rest184574%_ _%tl8451584569%_))
                            (declare (not safe))
                            (_%K8451384564%_ _%rest184574%_ _%x184572%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8451184525%_)))))))))))
    (define andmap
      (lambda _g87348_
        (let ((_g87347_ (let () (declare (not safe)) (##length _g87348_))))
          (cond ((let () (declare (not safe)) (##fx= _g87347_ 2))
                 (apply (lambda (_%f84478%_ _%lst84479%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f84478%_ _%lst84479%_)))
                        _g87348_))
                ((let () (declare (not safe)) (##fx= _g87347_ 3))
                 (apply (lambda (_%f84481%_ _%lst184482%_ _%lst284483%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f84481%_ _%lst184482%_ _%lst284483%_)))
                        _g87348_))
                ((let () (declare (not safe)) (##fx>= _g87347_ 3))
                 (apply andmap* _g87348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87348_))))))
    (define andmap*
      (lambda (_%f84463%_ . _%rest84464%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84463%_))
              (let ()
                (let ((_%f84468%_ _%f84463%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __andmap* _%f84468%_ _%rest84464%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f84463%_)))))
    (define __andmap*
      (lambda (_%f84445%_ . _%rest84446%_)
        (let ()
          (let ((_%f84449%_ _%f84445%_))
            (let ()
              (let _%recur84458%_ ((_%rest84460%_ _%rest84446%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84460%_))
                      (if (let ((__tmp87349 (map car _%rest84460%_)))
                            (declare (not safe))
                            (##apply _%f84449%_ __tmp87349))
                          (let ((__tmp87350 (map cdr _%rest84460%_)))
                            (declare (not safe))
                            (_%recur84458%_ __tmp87350))
                          '#f)
                      '#t))))))))
    (define ormap1
      (lambda (_%f84430%_ _%lst84431%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84430%_))
              (let ()
                (let ((_%f84435%_ _%f84430%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap1 _%f84435%_ _%lst84431%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f84430%_)))))
    (define __ormap1
      (lambda (_%f84377%_ _%lst84378%_)
        (let ()
          (let ((_%f84381%_ _%f84377%_))
            (let ()
              (let _%lp84390%_ ((_%rest84392%_ _%lst84378%_))
                (let* ((_%rest8439384401%_ _%rest84392%_)
                       (_%else8439584409%_ (lambda () '#f))
                       (_%K8439784418%_
                        (lambda (_%rest84412%_ _%x84413%_)
                          (let ((_%$e84415%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f84381%_ _%x84413%_))))
                            (if _%$e84415%_
                                _%$e84415%_
                                (let ()
                                  (declare (not safe))
                                  (_%lp84390%_ _%rest84412%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8439384401%_))
                      (let ((_%hd8439884421%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8439384401%_)))
                            (_%tl8439984423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8439384401%_))))
                        (let* ((_%x84426%_ _%hd8439884421%_)
                               (_%rest84428%_ _%tl8439984423%_))
                          (declare (not safe))
                          (_%K8439784418%_ _%rest84428%_ _%x84426%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8439584409%_))))))))))
    (define ormap2
      (lambda (_%f84361%_ _%lst184362%_ _%lst284363%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84361%_))
              (let ()
                (let ((_%f84367%_ _%f84361%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap2 _%f84367%_ _%lst184362%_ _%lst284363%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f84361%_)))))
    (define __ormap2
      (lambda (_%f84273%_ _%lst184274%_ _%lst284275%_)
        (let ()
          (let ((_%f84278%_ _%f84273%_))
            (let ()
              (let _%lp84287%_ ((_%rest184289%_ _%lst184274%_)
                                (_%rest284290%_ _%lst284275%_))
                (let* ((_%rest18429184299%_ _%rest184289%_)
                       (_%else8429384307%_ (lambda () '#f))
                       (_%K8429584349%_
                        (lambda (_%rest184310%_ _%x184311%_)
                          (let* ((_%rest28431284320%_ _%rest284290%_)
                                 (_%else8431484328%_ (lambda () '#f))
                                 (_%K8431684337%_
                                  (lambda (_%rest284331%_ _%x284332%_)
                                    (let ((_%$e84334%_
                                           (let ()
                                             (declare (not safe))
                                             (_%f84278%_
                                              _%x184311%_
                                              _%x284332%_))))
                                      (if _%$e84334%_
                                          _%$e84334%_
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84287%_
                                             _%rest184310%_
                                             _%rest284331%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28431284320%_))
                                (let ((_%hd8431784340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28431284320%_)))
                                      (_%tl8431884342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28431284320%_))))
                                  (let* ((_%x284345%_ _%hd8431784340%_)
                                         (_%rest284347%_ _%tl8431884342%_))
                                    (declare (not safe))
                                    (_%K8431684337%_
                                     _%rest284347%_
                                     _%x284345%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8431484328%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18429184299%_))
                      (let ((_%hd8429684352%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18429184299%_)))
                            (_%tl8429784354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18429184299%_))))
                        (let* ((_%x184357%_ _%hd8429684352%_)
                               (_%rest184359%_ _%tl8429784354%_))
                          (declare (not safe))
                          (_%K8429584349%_ _%rest184359%_ _%x184357%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8429384307%_))))))))))
    (define ormap
      (lambda _g87352_
        (let ((_g87351_ (let () (declare (not safe)) (##length _g87352_))))
          (cond ((let () (declare (not safe)) (##fx= _g87351_ 2))
                 (apply (lambda (_%f84261%_ _%lst84262%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84261%_ _%lst84262%_)))
                        _g87352_))
                ((let () (declare (not safe)) (##fx= _g87351_ 3))
                 (apply (lambda (_%f84264%_ _%lst184265%_ _%lst284266%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84264%_ _%lst184265%_ _%lst284266%_)))
                        _g87352_))
                ((let () (declare (not safe)) (##fx>= _g87351_ 3))
                 (apply ormap* _g87352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87352_))))))
    (define ormap*
      (lambda (_%f84246%_ . _%rest84247%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84246%_))
              (let ()
                (let ((_%f84251%_ _%f84246%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __ormap* _%f84251%_ _%rest84247%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84246%_)))))
    (define __ormap*
      (lambda (_%f84226%_ . _%rest84227%_)
        (let ()
          (let ((_%f84230%_ _%f84226%_))
            (let ()
              (let _%recur84239%_ ((_%rest84241%_ _%rest84227%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84241%_))
                    (let ((_%$e84243%_
                           (let ((__tmp87353 (map car _%rest84241%_)))
                             (declare (not safe))
                             (##apply _%f84230%_ __tmp87353))))
                      (if _%$e84243%_
                          _%$e84243%_
                          (let ((__tmp87354 (map cdr _%rest84241%_)))
                            (declare (not safe))
                            (_%recur84239%_ __tmp87354))))
                    '#f)))))))
    (define filter-map1
      (lambda (_%f84211%_ _%lst84212%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84211%_))
              (let ()
                (let ((_%f84216%_ _%f84211%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map1 _%f84216%_ _%lst84212%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84211%_)))))
    (define __filter-map1
      (lambda (_%f84154%_ _%lst84155%_)
        (let ()
          (let ((_%f84158%_ _%f84154%_))
            (let ()
              (let _%recur84167%_ ((_%rest84169%_ _%lst84155%_))
                (let ()
                  (let* ((_%rest8417184179%_ _%rest84169%_)
                         (_%else8417384187%_ (lambda () '()))
                         (_%K8417584199%_
                          (lambda (_%rest84190%_ _%x84191%_)
                            (let ((_%$e84193%_
                                   (let ()
                                     (declare (not safe))
                                     (_%f84158%_ _%x84191%_))))
                              (if _%$e84193%_
                                  ((lambda (_%r84196%_)
                                     (cons _%r84196%_
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84167%_ _%rest84190%_))))
                                   _%$e84193%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%recur84167%_ _%rest84190%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8417184179%_))
                        (let ((_%hd8417684202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8417184179%_)))
                              (_%tl8417784204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8417184179%_))))
                          (let* ((_%x84207%_ _%hd8417684202%_)
                                 (_%rest84209%_ _%tl8417784204%_))
                            (declare (not safe))
                            (_%K8417584199%_ _%rest84209%_ _%x84207%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8417384187%_)))))))))))
    (define filter-map2
      (lambda (_%f84138%_ _%lst184139%_ _%lst284140%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84138%_))
              (let ()
                (let ((_%f84144%_ _%f84138%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map2
                       _%f84144%_
                       _%lst184139%_
                       _%lst284140%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84138%_)))))
    (define __filter-map2
      (lambda (_%f84046%_ _%lst184047%_ _%lst284048%_)
        (let ()
          (let ((_%f84051%_ _%f84046%_))
            (let ()
              (let _%recur84060%_ ((_%rest184062%_ _%lst184047%_)
                                   (_%rest284063%_ _%lst284048%_))
                (let ()
                  (let* ((_%rest18406584073%_ _%rest184062%_)
                         (_%else8406784081%_ (lambda () '()))
                         (_%K8406984126%_
                          (lambda (_%rest184084%_ _%x184085%_)
                            (let* ((_%rest28408684094%_ _%rest284063%_)
                                   (_%else8408884102%_ (lambda () '()))
                                   (_%K8409084114%_
                                    (lambda (_%rest284105%_ _%x284106%_)
                                      (let ((_%$e84108%_
                                             (let ()
                                               (declare (not safe))
                                               (_%f84051%_
                                                _%x184085%_
                                                _%x284106%_))))
                                        (if _%$e84108%_
                                            ((lambda (_%r84111%_)
                                               (cons _%r84111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%recur84060%_
                                                        _%rest184084%_
                                                        _%rest284105%_))))
                                             _%$e84108%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%recur84060%_
                                                 _%rest184084%_
                                                 _%rest284105%_))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28408684094%_))
                                  (let ((_%hd8409184117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28408684094%_)))
                                        (_%tl8409284119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28408684094%_))))
                                    (let* ((_%x284122%_ _%hd8409184117%_)
                                           (_%rest284124%_ _%tl8409284119%_))
                                      (declare (not safe))
                                      (_%K8409084114%_
                                       _%rest284124%_
                                       _%x284122%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8408884102%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18406584073%_))
                        (let ((_%hd8407084129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18406584073%_)))
                              (_%tl8407184131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18406584073%_))))
                          (let* ((_%x184134%_ _%hd8407084129%_)
                                 (_%rest184136%_ _%tl8407184131%_))
                            (declare (not safe))
                            (_%K8406984126%_ _%rest184136%_ _%x184134%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8406784081%_)))))))))))
    (define filter-map
      (lambda _g87356_
        (let ((_g87355_ (let () (declare (not safe)) (##length _g87356_))))
          (cond ((let () (declare (not safe)) (##fx= _g87355_ 2))
                 (apply (lambda (_%f84034%_ _%lst84035%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84034%_ _%lst84035%_)))
                        _g87356_))
                ((let () (declare (not safe)) (##fx= _g87355_ 3))
                 (apply (lambda (_%f84037%_ _%lst184038%_ _%lst284039%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84037%_
                             _%lst184038%_
                             _%lst284039%_)))
                        _g87356_))
                ((let () (declare (not safe)) (##fx>= _g87355_ 3))
                 (apply filter-map* _g87356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87356_))))))
    (define filter-map*
      (lambda (_%f84019%_ . _%rest84020%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84019%_))
              (let ()
                (let ((_%f84024%_ _%f84019%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __filter-map* _%f84024%_ _%rest84020%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f84019%_)))))
    (define __filter-map*
      (lambda (_%f83995%_ . _%rest83996%_)
        (let ()
          (let ((_%f83999%_ _%f83995%_))
            (let ()
              (let _%recur84008%_ ((_%rest84010%_ _%rest83996%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84010%_))
                      (let ((_%$e84013%_
                             (let ((__tmp87357 (map car _%rest84010%_)))
                               (declare (not safe))
                               (##apply _%f83999%_ __tmp87357))))
                        (if _%$e84013%_
                            ((lambda (_%r84016%_)
                               (cons _%r84016%_
                                     (let ((__tmp87358
                                            (map cdr _%rest84010%_)))
                                       (declare (not safe))
                                       (_%recur84008%_ __tmp87358))))
                             _%$e84013%_)
                            (let ()
                              (let ((__tmp87359 (map cdr _%rest84010%_)))
                                (declare (not safe))
                                (_%recur84008%_ __tmp87359)))))
                      '()))))))))
    (define agetq__%
      (lambda (_%key83971%_ _%lst83973%_ _%default83975%_)
        (let ((_%$e83978%_
               (if (let () (declare (not safe)) (pair? _%lst83973%_))
                   (assq _%key83971%_ _%lst83973%_)
                   '#f)))
          (if _%$e83978%_
              (cdr _%$e83978%_)
              (if (let () (declare (not safe)) (procedure? _%default83975%_))
                  (let () (_%default83975%_ _%key83971%_))
                  (let () _%default83975%_))))))
    (define agetq__0
      (lambda (_%key83986%_ _%lst83987%_)
        (let ((_%default83989%_ '#f))
          (declare (not safe))
          (agetq__% _%key83986%_ _%lst83987%_ _%default83989%_))))
    (define agetq
      (lambda _g87361_
        (let ((_g87360_ (let () (declare (not safe)) (##length _g87361_))))
          (cond ((let () (declare (not safe)) (##fx= _g87360_ 2))
                 (apply (lambda (_%key83986%_ _%lst83987%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key83986%_ _%lst83987%_)))
                        _g87361_))
                ((let () (declare (not safe)) (##fx= _g87360_ 3))
                 (apply (lambda (_%key83991%_ _%lst83992%_ _%default83993%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key83991%_
                             _%lst83992%_
                             _%default83993%_)))
                        _g87361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87361_))))))
    (define agetv__%
      (lambda (_%key83946%_ _%lst83948%_ _%default83950%_)
        (let ((_%$e83953%_
               (if (let () (declare (not safe)) (pair? _%lst83948%_))
                   (assv _%key83946%_ _%lst83948%_)
                   '#f)))
          (if _%$e83953%_
              (cdr _%$e83953%_)
              (if (let () (declare (not safe)) (procedure? _%default83950%_))
                  (let () (_%default83950%_ _%key83946%_))
                  (let () _%default83950%_))))))
    (define agetv__0
      (lambda (_%key83961%_ _%lst83962%_)
        (let ((_%default83964%_ '#f))
          (declare (not safe))
          (agetv__% _%key83961%_ _%lst83962%_ _%default83964%_))))
    (define agetv
      (lambda _g87363_
        (let ((_g87362_ (let () (declare (not safe)) (##length _g87363_))))
          (cond ((let () (declare (not safe)) (##fx= _g87362_ 2))
                 (apply (lambda (_%key83961%_ _%lst83962%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key83961%_ _%lst83962%_)))
                        _g87363_))
                ((let () (declare (not safe)) (##fx= _g87362_ 3))
                 (apply (lambda (_%key83966%_ _%lst83967%_ _%default83968%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key83966%_
                             _%lst83967%_
                             _%default83968%_)))
                        _g87363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87363_))))))
    (define aget__%
      (lambda (_%key83921%_ _%lst83923%_ _%default83925%_)
        (let ((_%$e83928%_
               (if (let () (declare (not safe)) (pair? _%lst83923%_))
                   (assoc _%key83921%_ _%lst83923%_)
                   '#f)))
          (if _%$e83928%_
              (cdr _%$e83928%_)
              (if (let () (declare (not safe)) (procedure? _%default83925%_))
                  (let () (_%default83925%_ _%key83921%_))
                  (let () _%default83925%_))))))
    (define aget__0
      (lambda (_%key83936%_ _%lst83937%_)
        (let ((_%default83939%_ '#f))
          (declare (not safe))
          (aget__% _%key83936%_ _%lst83937%_ _%default83939%_))))
    (define aget
      (lambda _g87365_
        (let ((_g87364_ (let () (declare (not safe)) (##length _g87365_))))
          (cond ((let () (declare (not safe)) (##fx= _g87364_ 2))
                 (apply (lambda (_%key83936%_ _%lst83937%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key83936%_ _%lst83937%_)))
                        _g87365_))
                ((let () (declare (not safe)) (##fx= _g87364_ 3))
                 (apply (lambda (_%key83941%_ _%lst83942%_ _%default83943%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key83941%_
                                     _%lst83942%_
                                     _%default83943%_)))
                        _g87365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87365_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key83850%_ _%lst83852%_ _%default83854%_)
        (let _%lp83857%_ ((_%rest83860%_ _%lst83852%_))
          (let* ((_%rest8386283872%_ _%rest83860%_)
                 (_%else8386483880%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83854%_))
                        (_%default83854%_ _%key83850%_)
                        _%default83854%_)))
                 (_%K8386683889%_
                  (lambda (_%rest83883%_ _%v83884%_ _%k83886%_)
                    (if (eq? _%k83886%_ _%key83850%_)
                        _%v83884%_
                        (let ()
                          (declare (not safe))
                          (_%lp83857%_ _%rest83883%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8386283872%_))
                (let ((_%hd8386783892%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8386283872%_)))
                      (_%tl8386883894%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8386283872%_))))
                  (let ((_%k83897%_ _%hd8386783892%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8386883894%_))
                        (let ((_%hd8386983899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8386883894%_)))
                              (_%tl8387083901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8386883894%_))))
                          (let* ((_%v83904%_ _%hd8386983899%_)
                                 (_%rest83906%_ _%tl8387083901%_))
                            (declare (not safe))
                            (_%K8386683889%_
                             _%rest83906%_
                             _%v83904%_
                             _%k83897%_)))
                        (let () (declare (not safe)) (_%else8386483880%_)))))
                (let () (declare (not safe)) (_%else8386483880%_)))))))
    (define pgetq__0
      (lambda (_%key83911%_ _%lst83912%_)
        (let ((_%default83914%_ '#f))
          (declare (not safe))
          (pgetq__% _%key83911%_ _%lst83912%_ _%default83914%_))))
    (define pgetq
      (lambda _g87367_
        (let ((_g87366_ (let () (declare (not safe)) (##length _g87367_))))
          (cond ((let () (declare (not safe)) (##fx= _g87366_ 2))
                 (apply (lambda (_%key83911%_ _%lst83912%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key83911%_ _%lst83912%_)))
                        _g87367_))
                ((let () (declare (not safe)) (##fx= _g87366_ 3))
                 (apply (lambda (_%key83916%_ _%lst83917%_ _%default83918%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key83916%_
                             _%lst83917%_
                             _%default83918%_)))
                        _g87367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87367_))))))
    (define pgetv__%
      (lambda (_%key83779%_ _%lst83781%_ _%default83783%_)
        (let _%lp83786%_ ((_%rest83789%_ _%lst83781%_))
          (let* ((_%rest8379183801%_ _%rest83789%_)
                 (_%else8379383809%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83783%_))
                        (_%default83783%_ _%key83779%_)
                        _%default83783%_)))
                 (_%K8379583818%_
                  (lambda (_%rest83812%_ _%v83813%_ _%k83815%_)
                    (if (eqv? _%k83815%_ _%key83779%_)
                        _%v83813%_
                        (let ()
                          (declare (not safe))
                          (_%lp83786%_ _%rest83812%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8379183801%_))
                (let ((_%hd8379683821%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8379183801%_)))
                      (_%tl8379783823%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8379183801%_))))
                  (let ((_%k83826%_ _%hd8379683821%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8379783823%_))
                        (let ((_%hd8379883828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8379783823%_)))
                              (_%tl8379983830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8379783823%_))))
                          (let* ((_%v83833%_ _%hd8379883828%_)
                                 (_%rest83835%_ _%tl8379983830%_))
                            (declare (not safe))
                            (_%K8379583818%_
                             _%rest83835%_
                             _%v83833%_
                             _%k83826%_)))
                        (let () (declare (not safe)) (_%else8379383809%_)))))
                (let () (declare (not safe)) (_%else8379383809%_)))))))
    (define pgetv__0
      (lambda (_%key83840%_ _%lst83841%_)
        (let ((_%default83843%_ '#f))
          (declare (not safe))
          (pgetv__% _%key83840%_ _%lst83841%_ _%default83843%_))))
    (define pgetv
      (lambda _g87369_
        (let ((_g87368_ (let () (declare (not safe)) (##length _g87369_))))
          (cond ((let () (declare (not safe)) (##fx= _g87368_ 2))
                 (apply (lambda (_%key83840%_ _%lst83841%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key83840%_ _%lst83841%_)))
                        _g87369_))
                ((let () (declare (not safe)) (##fx= _g87368_ 3))
                 (apply (lambda (_%key83845%_ _%lst83846%_ _%default83847%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key83845%_
                             _%lst83846%_
                             _%default83847%_)))
                        _g87369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87369_))))))
    (define pget__%
      (lambda (_%key83708%_ _%lst83710%_ _%default83712%_)
        (let _%lp83715%_ ((_%rest83718%_ _%lst83710%_))
          (let* ((_%rest8372083730%_ _%rest83718%_)
                 (_%else8372283738%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83712%_))
                        (_%default83712%_ _%key83708%_)
                        _%default83712%_)))
                 (_%K8372483747%_
                  (lambda (_%rest83741%_ _%v83742%_ _%k83744%_)
                    (if (equal? _%k83744%_ _%key83708%_)
                        _%v83742%_
                        (let ()
                          (declare (not safe))
                          (_%lp83715%_ _%rest83741%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8372083730%_))
                (let ((_%hd8372583750%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8372083730%_)))
                      (_%tl8372683752%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8372083730%_))))
                  (let ((_%k83755%_ _%hd8372583750%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8372683752%_))
                        (let ((_%hd8372783757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8372683752%_)))
                              (_%tl8372883759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8372683752%_))))
                          (let* ((_%v83762%_ _%hd8372783757%_)
                                 (_%rest83764%_ _%tl8372883759%_))
                            (declare (not safe))
                            (_%K8372483747%_
                             _%rest83764%_
                             _%v83762%_
                             _%k83755%_)))
                        (let () (declare (not safe)) (_%else8372283738%_)))))
                (let () (declare (not safe)) (_%else8372283738%_)))))))
    (define pget__0
      (lambda (_%key83769%_ _%lst83770%_)
        (let ((_%default83772%_ '#f))
          (declare (not safe))
          (pget__% _%key83769%_ _%lst83770%_ _%default83772%_))))
    (define pget
      (lambda _g87371_
        (let ((_g87370_ (let () (declare (not safe)) (##length _g87371_))))
          (cond ((let () (declare (not safe)) (##fx= _g87370_ 2))
                 (apply (lambda (_%key83769%_ _%lst83770%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key83769%_ _%lst83770%_)))
                        _g87371_))
                ((let () (declare (not safe)) (##fx= _g87370_ 3))
                 (apply (lambda (_%key83774%_ _%lst83775%_ _%default83776%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key83774%_
                                     _%lst83775%_
                                     _%default83776%_)))
                        _g87371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87371_))))))
    (define find
      (lambda (_%pred83692%_ _%lst83693%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred83692%_))
              (let ()
                (let ((_%pred83697%_ _%pred83692%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__find _%pred83697%_ _%lst83693%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred83692%_)))))
    (define __find
      (lambda (_%pred83675%_ _%lst83676%_)
        (let ()
          (let ((_%pred83679%_ _%pred83675%_))
            (let ()
              (let ((_%$e83688%_
                     (let ()
                       (declare (not safe))
                       (__memf _%pred83679%_ _%lst83676%_))))
                (if _%$e83688%_
                    (let () (declare (not safe)) (##car _%$e83688%_))
                    (let () '#f))))))))
    (define memf
      (lambda (_%proc83660%_ _%lst83661%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83660%_))
              (let ()
                (let ((_%proc83665%_ _%proc83660%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__memf _%proc83665%_ _%lst83661%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc83660%_)))))
    (define __memf
      (lambda (_%proc83610%_ _%lst83611%_)
        (let ()
          (let ((_%proc83614%_ _%proc83610%_))
            (let ()
              (let _%lp83623%_ ((_%rest83625%_ _%lst83611%_))
                (let* ((_%rest8362683634%_ _%rest83625%_)
                       (_%else8362883642%_ (lambda () '#f))
                       (_%K8363083648%_
                        (lambda (_%tl83645%_ _%hd83646%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83614%_ _%hd83646%_))
                              _%rest83625%_
                              (let ()
                                (declare (not safe))
                                (_%lp83623%_ _%tl83645%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8362683634%_))
                      (let ((_%hd8363183651%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8362683634%_)))
                            (_%tl8363283653%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8362683634%_))))
                        (let* ((_%hd83656%_ _%hd8363183651%_)
                               (_%tl83658%_ _%tl8363283653%_))
                          (declare (not safe))
                          (_%K8363083648%_ _%tl83658%_ _%hd83656%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8362883642%_))))))))))
    (define remove1
      (lambda (_%el83563%_ _%lst83565%_)
        (let _%lp83568%_ ((_%rest83571%_ _%lst83565%_) (_%r83573%_ '()))
          (let* ((_%rest8357583583%_ _%rest83571%_)
                 (_%else8357783591%_ (lambda () _%lst83565%_))
                 (_%K8357983598%_
                  (lambda (_%rest83594%_ _%hd83595%_)
                    (if (equal? _%el83563%_ _%hd83595%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83594%_ _%r83573%_))
                        (let ((__tmp87372 (cons _%hd83595%_ _%r83573%_)))
                          (declare (not safe))
                          (_%lp83568%_ _%rest83594%_ __tmp87372))))))
            (if (let () (declare (not safe)) (##pair? _%rest8357583583%_))
                (let ((_%hd8358083601%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8357583583%_)))
                      (_%tl8358183603%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8357583583%_))))
                  (let* ((_%hd83606%_ _%hd8358083601%_)
                         (_%rest83608%_ _%tl8358183603%_))
                    (declare (not safe))
                    (_%K8357983598%_ _%rest83608%_ _%hd83606%_)))
                (let () (declare (not safe)) (_%else8357783591%_)))))))
    (define remv1
      (lambda (_%el83516%_ _%lst83518%_)
        (let _%lp83521%_ ((_%rest83524%_ _%lst83518%_) (_%r83526%_ '()))
          (let* ((_%rest8352883536%_ _%rest83524%_)
                 (_%else8353083544%_ (lambda () _%lst83518%_))
                 (_%K8353283551%_
                  (lambda (_%rest83547%_ _%hd83548%_)
                    (if (eqv? _%el83516%_ _%hd83548%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83547%_ _%r83526%_))
                        (let ((__tmp87373 (cons _%hd83548%_ _%r83526%_)))
                          (declare (not safe))
                          (_%lp83521%_ _%rest83547%_ __tmp87373))))))
            (if (let () (declare (not safe)) (##pair? _%rest8352883536%_))
                (let ((_%hd8353383554%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8352883536%_)))
                      (_%tl8353483556%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8352883536%_))))
                  (let* ((_%hd83559%_ _%hd8353383554%_)
                         (_%rest83561%_ _%tl8353483556%_))
                    (declare (not safe))
                    (_%K8353283551%_ _%rest83561%_ _%hd83559%_)))
                (let () (declare (not safe)) (_%else8353083544%_)))))))
    (define remq1
      (lambda (_%el83469%_ _%lst83471%_)
        (let _%lp83474%_ ((_%rest83477%_ _%lst83471%_) (_%r83479%_ '()))
          (let* ((_%rest8348183489%_ _%rest83477%_)
                 (_%else8348383497%_ (lambda () _%lst83471%_))
                 (_%K8348583504%_
                  (lambda (_%rest83500%_ _%hd83501%_)
                    (if (eq? _%el83469%_ _%hd83501%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83500%_ _%r83479%_))
                        (let ((__tmp87374 (cons _%hd83501%_ _%r83479%_)))
                          (declare (not safe))
                          (_%lp83474%_ _%rest83500%_ __tmp87374))))))
            (if (let () (declare (not safe)) (##pair? _%rest8348183489%_))
                (let ((_%hd8348683507%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8348183489%_)))
                      (_%tl8348783509%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8348183489%_))))
                  (let* ((_%hd83512%_ _%hd8348683507%_)
                         (_%rest83514%_ _%tl8348783509%_))
                    (declare (not safe))
                    (_%K8348583504%_ _%rest83514%_ _%hd83512%_)))
                (let () (declare (not safe)) (_%else8348383497%_)))))))
    (define remf
      (lambda (_%proc83454%_ _%lst83455%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83454%_))
              (let ()
                (let ((_%proc83459%_ _%proc83454%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__remf _%proc83459%_ _%lst83455%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc83454%_)))))
    (define __remf
      (lambda (_%proc83403%_ _%lst83404%_)
        (let ()
          (let ((_%proc83407%_ _%proc83403%_))
            (let ()
              (let _%lp83416%_ ((_%rest83418%_ _%lst83404%_) (_%r83419%_ '()))
                (let* ((_%rest8342083428%_ _%rest83418%_)
                       (_%else8342283436%_ (lambda () _%lst83404%_))
                       (_%K8342483442%_
                        (lambda (_%rest83439%_ _%hd83440%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83407%_ _%hd83440%_))
                              (let ()
                                (declare (not safe))
                                (__foldl1 cons _%rest83439%_ _%r83419%_))
                              (let ((__tmp87375 (cons _%hd83440%_ _%r83419%_)))
                                (declare (not safe))
                                (_%lp83416%_ _%rest83439%_ __tmp87375))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8342083428%_))
                      (let ((_%hd8342583445%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8342083428%_)))
                            (_%tl8342683447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8342083428%_))))
                        (let* ((_%hd83450%_ _%hd8342583445%_)
                               (_%rest83452%_ _%tl8342683447%_))
                          (declare (not safe))
                          (_%K8342483442%_ _%rest83452%_ _%hd83450%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8342283436%_))))))))))
    (define 1+
      (lambda (_%x83389%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83389%_))
              (let ()
                (let ((_%x83393%_ _%x83389%_))
                  (let () (let () (declare (not safe)) (__1+ _%x83393%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x83389%_)))))
    (define __1+
      (lambda (_%x83377%_)
        (let () (let ((_%x83380%_ _%x83377%_)) (let () (+ _%x83380%_ '1))))))
    (define 1-
      (lambda (_%x83363%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83363%_))
              (let ()
                (let ((_%x83367%_ _%x83363%_))
                  (let () (let () (declare (not safe)) (__1- _%x83367%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x83363%_)))))
    (define __1-
      (lambda (_%x83351%_)
        (let () (let ((_%x83354%_ _%x83351%_)) (let () (- _%x83354%_ '1))))))
    (define fx1+
      (lambda (_%x83337%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83337%_))
              (let ()
                (let ((_%x83341%_ _%x83337%_))
                  (let () (let () (declare (not safe)) (__fx1+ _%x83341%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x83337%_)))))
    (define __fx1+
      (lambda (_%x83325%_)
        (let ()
          (let ((_%x83328%_ _%x83325%_))
            (let () (let () (declare (not safe)) (##fx+ _%x83328%_ '1)))))))
    (define fx1-
      (lambda (_%x83311%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83311%_))
              (let ()
                (let ((_%x83315%_ _%x83311%_))
                  (let () (let () (declare (not safe)) (__fx1- _%x83315%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x83311%_)))))
    (define __fx1-
      (lambda (_%x83299%_)
        (let ()
          (let ((_%x83302%_ _%x83299%_))
            (let () (let () (declare (not safe)) (##fx- _%x83302%_ '1)))))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83296%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83296%_))
              (let () (declare (not safe)) (##fx>= _%x83296%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83293%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83293%_))
              (let () (declare (not safe)) (##fx> _%x83293%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83290%_)
        (let () (let () (declare (not safe)) (##fx= _%x83290%_ '0)))))
    (define fx<0?
      (lambda (_%x83287%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83287%_))
              (let () (declare (not safe)) (##fx< _%x83287%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83284%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83284%_))
              (let () (declare (not safe)) (##fx<= _%x83284%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83281%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83281%_))
              (let ((__tmp87376 (uninterned-symbol? _%x83281%_)))
                (declare (not safe))
                (not __tmp87376))
              '#f))))
    (define display-as-string
      (lambda (_%x83266%_ _%port83267%_)
        (let ()
          (if (output-port? _%port83267%_)
              (let ()
                (let ((_%port83271%_ _%port83267%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__display-as-string _%x83266%_ _%port83271%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port83267%_)))))
    (define __display-as-string
      (lambda (_%x83223%_ _%port83224%_)
        (let ()
          (let ((_%port83227%_ _%port83224%_))
            (let ()
              (if (or (let () (declare (not safe)) (string? _%x83223%_))
                      (let () (declare (not safe)) (symbol? _%x83223%_))
                      (let () (declare (not safe)) (keyword? _%x83223%_))
                      (let () (declare (not safe)) (number? _%x83223%_))
                      (let () (declare (not safe)) (char? _%x83223%_)))
                  (let () (display _%x83223%_ _%port83227%_))
                  (if (let () (declare (not safe)) (pair? _%x83223%_))
                      (let ()
                        (let ((__tmp87377 (car _%x83223%_)))
                          (declare (not safe))
                          (display-as-string __tmp87377 _%port83227%_))
                        (let ((__tmp87378 (cdr _%x83223%_)))
                          (declare (not safe))
                          (display-as-string __tmp87378 _%port83227%_)))
                      (if (let () (declare (not safe)) (vector? _%x83223%_))
                          (let ()
                            (vector-for-each
                             (lambda (_%g8325083252%_)
                               (let ()
                                 (declare (not safe))
                                 (display-as-string
                                  _%g8325083252%_
                                  _%port83227%_)))
                             _%x83223%_))
                          (if (or (let ()
                                    (declare (not safe))
                                    (null? _%x83223%_))
                                  (let ()
                                    (declare (not safe))
                                    (eq? _%x83223%_ '#!void))
                                  (let ()
                                    (declare (not safe))
                                    (eof-object? _%x83223%_))
                                  (let ()
                                    (declare (not safe))
                                    (boolean? _%x83223%_)))
                              (let () '#!void)
                              (let ()
                                (error '"cannot convert as string"
                                       _%x83223%_)))))))))))
    (define as-string__0
      (lambda (_%x83206%_)
        (if (let () (declare (not safe)) (string? _%x83206%_))
            (let () _%x83206%_)
            (if (let () (declare (not safe)) (symbol? _%x83206%_))
                (let () (symbol->string _%x83206%_))
                (if (let () (declare (not safe)) (keyword? _%x83206%_))
                    (let () (keyword->string _%x83206%_))
                    (if (let () (declare (not safe)) (number? _%x83206%_))
                        (let () (number->string _%x83206%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8321283214%_)
                             (let ()
                               (declare (not safe))
                               (display-as-string
                                _%x83206%_
                                _%g8321283214%_)))))))))))
    (define as-string__1
      (lambda _%args83217%_
        (call-with-output-string
         '()
         (lambda (_%g8321883220%_)
           (let ()
             (declare (not safe))
             (display-as-string _%args83217%_ _%g8321883220%_))))))
    (define as-string
      (lambda _g87380_
        (let ((_g87379_ (let () (declare (not safe)) (##length _g87380_))))
          (cond ((let () (declare (not safe)) (##fx= _g87379_ 1))
                 (apply (lambda (_%x83206%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83206%_)))
                        _g87380_))
                (#t (apply as-string__1 _g87380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87380_))))))
    (define make-symbol__0
      (lambda (_%x83202%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83202%_))
            _%x83202%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83202%_))))))
    (define make-symbol__1
      (lambda _%args83204%_ (string->symbol (apply as-string _%args83204%_))))
    (define make-symbol
      (lambda _g87382_
        (let ((_g87381_ (let () (declare (not safe)) (##length _g87382_))))
          (cond ((let () (declare (not safe)) (##fx= _g87381_ 1))
                 (apply (lambda (_%x83202%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83202%_)))
                        _g87382_))
                (#t (apply make-symbol__1 _g87382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87382_))))))
    (define make-keyword__0
      (lambda (_%x83198%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83198%_))
            _%x83198%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83198%_))))))
    (define make-keyword__1
      (lambda _%args83200%_ (string->keyword (apply as-string _%args83200%_))))
    (define make-keyword
      (lambda _g87384_
        (let ((_g87383_ (let () (declare (not safe)) (##length _g87384_))))
          (cond ((let () (declare (not safe)) (##fx= _g87383_ 1))
                 (apply (lambda (_%x83198%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83198%_)))
                        _g87384_))
                (#t (apply make-keyword__1 _g87384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87384_))))))
    (define interned-keyword?
      (lambda (_%x83195%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83195%_))
              (let ((__tmp87385 (uninterned-keyword? _%x83195%_)))
                (declare (not safe))
                (not __tmp87385))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83181%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83181%_))
              (let ()
                (let ((_%sym83185%_ _%sym83181%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__symbol->keyword _%sym83185%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83181%_)))))
    (define __symbol->keyword
      (lambda (_%sym83169%_)
        (let ()
          (let ((_%sym83172%_ _%sym83169%_))
            (let ()
              (if (uninterned-symbol? _%sym83172%_)
                  (let ((__tmp87386
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83172%_))))
                    (declare (not safe))
                    (##string->uninterned-keyword __tmp87386))
                  (let ((__tmp87387
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83172%_))))
                    (declare (not safe))
                    (##string->keyword __tmp87387))))))))
    (define keyword->symbol
      (lambda (_%sym83155%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83155%_))
              (let ()
                (let ((_%sym83159%_ _%sym83155%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__keyword->symbol _%sym83159%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83155%_)))))
    (define __keyword->symbol
      (lambda (_%sym83143%_)
        (let ()
          (let ((_%sym83146%_ _%sym83143%_))
            (let ()
              (if (uninterned-keyword? _%sym83146%_)
                  (let ((__tmp87388
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83146%_))))
                    (declare (not safe))
                    (##string->uninterned-symbol __tmp87388))
                  (let ((__tmp87389
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83146%_))))
                    (declare (not safe))
                    (##string->symbol __tmp87389))))))))
    (define bytes->string__%
      (lambda (_%bstr83108%_ _%enc83109%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83108%_))
              (let ()
                (let ((_%bstr83113%_ _%bstr83108%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83109%_))
                      (let ()
                        (let ((_%enc83123%_ _%enc83109%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bytes->string__%
                               _%bstr83113%_
                               _%enc83123%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83109%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83108%_)))))
    (define bytes->string__0
      (lambda (_%bstr83136%_)
        (let ((_%enc83138%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83136%_ _%enc83138%_))))
    (define bytes->string
      (lambda _g87391_
        (let ((_g87390_ (let () (declare (not safe)) (##length _g87391_))))
          (cond ((let () (declare (not safe)) (##fx= _g87390_ 1))
                 (apply (lambda (_%bstr83136%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83136%_)))
                        _g87391_))
                ((let () (declare (not safe)) (##fx= _g87390_ 2))
                 (apply (lambda (_%bstr83140%_ _%enc83141%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83140%_ _%enc83141%_)))
                        _g87391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87391_))))))
    (define __bytes->string__%
      (lambda (_%bstr83067%_ _%enc83068%_)
        (let ()
          (let ((_%bstr83071%_ _%bstr83067%_))
            (let ((_%enc83079%_ _%enc83068%_))
              (let ()
                (if (eq? _%enc83079%_ 'UTF-8)
                    (let ()
                      (declare (not safe))
                      (##utf8->string _%bstr83071%_))
                    (let* ((_%in83088%_
                            (open-input-u8vector
                             (cons 'char-encoding:
                                   (cons _%enc83079%_
                                         (cons 'init:
                                               (cons _%bstr83071%_ '()))))))
                           (_%len83090%_ (u8vector-length _%bstr83071%_))
                           (_%out83092%_ (make-string _%len83090%_))
                           (_%n83094%_
                            (read-substring
                             _%out83092%_
                             '0
                             _%len83090%_
                             _%in83088%_)))
                      (string-shrink! _%out83092%_ _%n83094%_)
                      _%out83092%_))))))))
    (define __bytes->string__0
      (lambda (_%bstr83100%_)
        (let ((_%enc83102%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83100%_ _%enc83102%_))))
    (define __bytes->string
      (lambda _g87393_
        (let ((_g87392_ (let () (declare (not safe)) (##length _g87393_))))
          (cond ((let () (declare (not safe)) (##fx= _g87392_ 1))
                 (apply (lambda (_%bstr83100%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83100%_)))
                        _g87393_))
                ((let () (declare (not safe)) (##fx= _g87392_ 2))
                 (apply (lambda (_%bstr83104%_ _%enc83105%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83104%_ _%enc83105%_)))
                        _g87393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87393_))))))
    (define string->bytes__%
      (lambda (_%str83031%_ _%enc83032%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83031%_))
              (let ()
                (let ((_%str83036%_ _%str83031%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83032%_))
                      (let ()
                        (let ((_%enc83046%_ _%enc83032%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string->bytes__%
                               _%str83036%_
                               _%enc83046%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83032%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str83031%_)))))
    (define string->bytes__0
      (lambda (_%str83059%_)
        (let ((_%enc83061%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83059%_ _%enc83061%_))))
    (define string->bytes
      (lambda _g87395_
        (let ((_g87394_ (let () (declare (not safe)) (##length _g87395_))))
          (cond ((let () (declare (not safe)) (##fx= _g87394_ 1))
                 (apply (lambda (_%str83059%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83059%_)))
                        _g87395_))
                ((let () (declare (not safe)) (##fx= _g87394_ 2))
                 (apply (lambda (_%str83063%_ _%enc83064%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83063%_ _%enc83064%_)))
                        _g87395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87395_))))))
    (define __string->bytes__%
      (lambda (_%str82999%_ _%enc83000%_)
        (let ()
          (let ((_%str83003%_ _%str82999%_))
            (let ((_%enc83011%_ _%enc83000%_))
              (let ()
                (if (eq? _%enc83011%_ 'UTF-8)
                    (let () (declare (not safe)) (##string->utf8 _%str83003%_))
                    (let ((__tmp87396
                           (let ()
                             (declare (not safe))
                             (##string-length _%str83003%_))))
                      (declare (not safe))
                      (substring->bytes__%
                       _%str83003%_
                       '0
                       __tmp87396
                       _%enc83011%_)))))))))
    (define __string->bytes__0
      (lambda (_%str83023%_)
        (let ((_%enc83025%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83023%_ _%enc83025%_))))
    (define __string->bytes
      (lambda _g87398_
        (let ((_g87397_ (let () (declare (not safe)) (##length _g87398_))))
          (cond ((let () (declare (not safe)) (##fx= _g87397_ 1))
                 (apply (lambda (_%str83023%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83023%_)))
                        _g87398_))
                ((let () (declare (not safe)) (##fx= _g87397_ 2))
                 (apply (lambda (_%str83027%_ _%enc83028%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83027%_ _%enc83028%_)))
                        _g87398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87398_))))))
    (define substring->bytes__%
      (lambda (_%str82947%_ _%start82948%_ _%end82949%_ _%enc82950%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82947%_))
              (let ()
                (let ((_%str82954%_ _%str82947%_))
                  (if (let ()
                        (declare (not safe))
                        (nonnegative-fixnum? _%start82948%_))
                      (let ()
                        (let ((_%start82964%_ _%start82948%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%end82949%_))
                              (let ()
                                (let ((_%end82974%_ _%end82949%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__substring->bytes__%
                                       _%str82954%_
                                       _%start82964%_
                                       _%end82974%_
                                       _%enc82950%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%end82949%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start82948%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str82947%_)))))
    (define substring->bytes__0
      (lambda (_%str82987%_ _%start82988%_ _%end82989%_)
        (let ((_%enc82991%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str82987%_
           _%start82988%_
           _%end82989%_
           _%enc82991%_))))
    (define substring->bytes
      (lambda _g87400_
        (let ((_g87399_ (let () (declare (not safe)) (##length _g87400_))))
          (cond ((let () (declare (not safe)) (##fx= _g87399_ 3))
                 (apply (lambda (_%str82987%_ _%start82988%_ _%end82989%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str82987%_
                             _%start82988%_
                             _%end82989%_)))
                        _g87400_))
                ((let () (declare (not safe)) (##fx= _g87399_ 4))
                 (apply (lambda (_%str82993%_
                                 _%start82994%_
                                 _%end82995%_
                                 _%enc82996%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str82993%_
                             _%start82994%_
                             _%end82995%_
                             _%enc82996%_)))
                        _g87400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87400_))))))
    (define __substring->bytes__%
      (lambda (_%str82899%_ _%start82900%_ _%end82901%_ _%enc82902%_)
        (let ()
          (let ((_%str82905%_ _%str82899%_))
            (let ((_%start82913%_ _%start82900%_))
              (let ((_%end82921%_ _%end82901%_))
                (let ()
                  (if (eq? _%enc82902%_ 'UTF-8)
                      (string->utf8 _%str82905%_ _%start82913%_ _%end82921%_)
                      (let ((_%out82930%_
                             (open-output-u8vector
                              (cons 'char-encoding: (cons _%enc82902%_ '())))))
                        (write-substring
                         _%str82905%_
                         _%start82913%_
                         _%end82921%_
                         _%out82930%_)
                        (get-output-u8vector _%out82930%_))))))))))
    (define __substring->bytes__0
      (lambda (_%str82935%_ _%start82936%_ _%end82937%_)
        (let ((_%enc82939%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str82935%_
           _%start82936%_
           _%end82937%_
           _%enc82939%_))))
    (define __substring->bytes
      (lambda _g87402_
        (let ((_g87401_ (let () (declare (not safe)) (##length _g87402_))))
          (cond ((let () (declare (not safe)) (##fx= _g87401_ 3))
                 (apply (lambda (_%str82935%_ _%start82936%_ _%end82937%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str82935%_
                             _%start82936%_
                             _%end82937%_)))
                        _g87402_))
                ((let () (declare (not safe)) (##fx= _g87401_ 4))
                 (apply (lambda (_%str82941%_
                                 _%start82942%_
                                 _%end82943%_
                                 _%enc82944%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str82941%_
                             _%start82942%_
                             _%end82943%_
                             _%enc82944%_)))
                        _g87402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87402_))))))
    (define string-empty?
      (lambda (_%str82884%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82884%_))
              (let ()
                (let ((_%str82888%_ _%str82884%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__string-empty? _%str82888%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str82884%_)))))
    (define __string-empty?
      (lambda (_%str82872%_)
        (let ()
          (let ((_%str82875%_ _%str82872%_))
            (let ()
              (let ((__tmp87403
                     (let ()
                       (declare (not safe))
                       (##string-length _%str82875%_))))
                (declare (not safe))
                (##fxzero? __tmp87403)))))))
    (define string-index__%
      (lambda (_%str82824%_ _%char82825%_ _%start82826%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82824%_))
              (let ()
                (let ((_%str82830%_ _%str82824%_))
                  (if (let () (declare (not safe)) (char? _%char82825%_))
                      (let ()
                        (let ((_%char82840%_ _%char82825%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%start82826%_))
                              (let ()
                                (let ((_%start82850%_ _%start82826%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__string-index__%
                                       _%str82830%_
                                       _%char82840%_
                                       _%start82850%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%start82826%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char82825%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str82824%_)))))
    (define string-index__0
      (lambda (_%str82863%_ _%char82864%_)
        (let ((_%start82866%_ '0))
          (declare (not safe))
          (string-index__% _%str82863%_ _%char82864%_ _%start82866%_))))
    (define string-index
      (lambda _g87405_
        (let ((_g87404_ (let () (declare (not safe)) (##length _g87405_))))
          (cond ((let () (declare (not safe)) (##fx= _g87404_ 2))
                 (apply (lambda (_%str82863%_ _%char82864%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str82863%_ _%char82864%_)))
                        _g87405_))
                ((let () (declare (not safe)) (##fx= _g87404_ 3))
                 (apply (lambda (_%str82868%_ _%char82869%_ _%start82870%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str82868%_
                             _%char82869%_
                             _%start82870%_)))
                        _g87405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87405_))))))
    (define __string-index__%
      (lambda (_%str82763%_ _%char82764%_ _%start82765%_)
        (let ()
          (let ((_%str82768%_ _%str82763%_))
            (let ((_%char82776%_ _%char82764%_))
              (let ((_%start82784%_ _%start82765%_))
                (let ()
                  (let ((_%len82793%_
                         (let ()
                           (declare (not safe))
                           (##string-length _%str82768%_))))
                    (let _%lp82795%_ ((_%k82797%_ _%start82784%_))
                      (let ((_%k82799%_ _%k82797%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k82799%_ _%len82793%_))
                            (if (eq? _%char82776%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str82768%_ _%k82799%_)))
                                _%k82799%_
                                (let ((__tmp87406
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k82799%_ '1))))
                                  (declare (not safe))
                                  (_%lp82795%_ __tmp87406)))
                            '#f)))))))))))
    (define __string-index__0
      (lambda (_%str82814%_ _%char82815%_)
        (let ((_%start82817%_ '0))
          (declare (not safe))
          (__string-index__% _%str82814%_ _%char82815%_ _%start82817%_))))
    (define __string-index
      (lambda _g87408_
        (let ((_g87407_ (let () (declare (not safe)) (##length _g87408_))))
          (cond ((let () (declare (not safe)) (##fx= _g87407_ 2))
                 (apply (lambda (_%str82814%_ _%char82815%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str82814%_ _%char82815%_)))
                        _g87408_))
                ((let () (declare (not safe)) (##fx= _g87407_ 3))
                 (apply (lambda (_%str82819%_ _%char82820%_ _%start82821%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str82819%_
                             _%char82820%_
                             _%start82821%_)))
                        _g87408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87408_))))))
    (define string-rindex__%
      (lambda (_%str82724%_ _%char82725%_ _%start82726%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82724%_))
              (let ()
                (let ((_%str82730%_ _%str82724%_))
                  (if (let () (declare (not safe)) (char? _%char82725%_))
                      (let ()
                        (let ((_%char82740%_ _%char82725%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-rindex__%
                               _%str82730%_
                               _%char82740%_
                               _%start82726%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char82725%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str82724%_)))))
    (define string-rindex__0
      (lambda (_%str82753%_ _%char82754%_)
        (let ((_%start82756%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str82753%_ _%char82754%_ _%start82756%_))))
    (define string-rindex
      (lambda _g87410_
        (let ((_g87409_ (let () (declare (not safe)) (##length _g87410_))))
          (cond ((let () (declare (not safe)) (##fx= _g87409_ 2))
                 (apply (lambda (_%str82753%_ _%char82754%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str82753%_ _%char82754%_)))
                        _g87410_))
                ((let () (declare (not safe)) (##fx= _g87409_ 3))
                 (apply (lambda (_%str82758%_ _%char82759%_ _%start82760%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str82758%_
                             _%char82759%_
                             _%start82760%_)))
                        _g87410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87410_))))))
    (define __string-rindex__%
      (lambda (_%str82666%_ _%char82667%_ _%start82668%_)
        (let ()
          (let ((_%str82671%_ _%str82666%_))
            (let ((_%char82679%_ _%char82667%_))
              (let ()
                (let* ((_%len82688%_
                        (let ()
                          (declare (not safe))
                          (##string-length _%str82671%_)))
                       (_%start82690%_
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _%start82668%_))
                            _%start82668%_
                            (let ()
                              (declare (not safe))
                              (##fx- _%len82688%_ '1)))))
                  (let _%lp82693%_ ((_%k82695%_ _%start82690%_))
                    (let ((_%k82697%_ _%k82695%_))
                      (if (let () (declare (not safe)) (##fx>= _%k82697%_ '0))
                          (if (eq? _%char82679%_
                                   (let ()
                                     (declare (not safe))
                                     (##string-ref _%str82671%_ _%k82697%_)))
                              _%k82697%_
                              (let ((__tmp87411
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%k82697%_ '1))))
                                (declare (not safe))
                                (_%lp82693%_ __tmp87411)))
                          '#f))))))))))
    (define __string-rindex__0
      (lambda (_%str82714%_ _%char82715%_)
        (let ((_%start82717%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str82714%_ _%char82715%_ _%start82717%_))))
    (define __string-rindex
      (lambda _g87413_
        (let ((_g87412_ (let () (declare (not safe)) (##length _g87413_))))
          (cond ((let () (declare (not safe)) (##fx= _g87412_ 2))
                 (apply (lambda (_%str82714%_ _%char82715%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str82714%_ _%char82715%_)))
                        _g87413_))
                ((let () (declare (not safe)) (##fx= _g87412_ 3))
                 (apply (lambda (_%str82719%_ _%char82720%_ _%start82721%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str82719%_
                             _%char82720%_
                             _%start82721%_)))
                        _g87413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87413_))))))
    (define string-split
      (lambda (_%str82640%_ _%char82641%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82640%_))
              (let ()
                (let ((_%str82645%_ _%str82640%_))
                  (if (let () (declare (not safe)) (char? _%char82641%_))
                      (let ()
                        (let ((_%char82655%_ _%char82641%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-split _%str82645%_ _%char82655%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char82641%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str82640%_)))))
    (define __string-split
      (lambda (_%str82581%_ _%char82582%_)
        (let ()
          (let ((_%str82585%_ _%str82581%_))
            (let ((_%char82593%_ _%char82582%_))
              (let ()
                (let ((_%len82602%_
                       (let ()
                         (declare (not safe))
                         (##string-length _%str82585%_))))
                  (let _%lp82604%_ ((_%start82606%_ '0) (_%r82607%_ '()))
                    (let ()
                      (let ((_%start82610%_ _%start82606%_))
                        (let ((_%$e82623%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%str82585%_
                                  _%char82593%_
                                  _%start82610%_))))
                          (if _%$e82623%_
                              ((lambda (_%end82626%_)
                                 (let ((_%end82628%_ _%end82626%_))
                                   (let ((__tmp87415
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%end82628%_ '1)))
                                         (__tmp87414
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##substring
                                                   _%str82585%_
                                                   _%start82610%_
                                                   _%end82628%_))
                                                _%r82607%_)))
                                     (declare (not safe))
                                     (_%lp82604%_ __tmp87415 __tmp87414))))
                               _%$e82623%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##fx< _%start82610%_ _%len82602%_))
                                  (let ()
                                    (let ((__tmp87416
                                           (list (let ()
                                                   (declare (not safe))
                                                   (##substring
                                                    _%str82585%_
                                                    _%start82610%_
                                                    _%len82602%_)))))
                                      (declare (not safe))
                                      (__foldl1 cons __tmp87416 _%r82607%_)))
                                  (let () (reverse! _%r82607%_)))))))))))))))
    (define string-join
      (lambda (_%strs82431%_ _%join82432%_)
        (let ()
          (letrec ((_%join-length82435%_
                    (lambda (_%strs82519%_ _%jlen82520%_)
                      (let _%lp82522%_ ((_%rest82524%_ _%strs82519%_)
                                        (_%len82525%_ '0))
                        (let ((_%len82527%_ _%len82525%_))
                          (let* ((_%rest8253582543%_ _%rest82524%_)
                                 (_%else8253782551%_ (lambda () '0))
                                 (_%K8253982569%_
                                  (lambda (_%rest82554%_ _%hd82555%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd82555%_))
                                        (let ((_%hd82557%_ _%hd82555%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest82554%_))
                                              (let ((__tmp87417
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd82557%_))
                                                          _%jlen82520%_
                                                          _%len82527%_)))
                                                (declare (not safe))
                                                (_%lp82522%_
                                                 _%rest82554%_
                                                 __tmp87417))
                                              (let ((__tmp87418
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd82557%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87418
                                                       _%len82527%_))))
                                        (error '"expected string"
                                               _%hd82555%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8253582543%_))
                                (let ((_%hd8254082572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8253582543%_)))
                                      (_%tl8254182574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8253582543%_))))
                                  (let* ((_%hd82577%_ _%hd8254082572%_)
                                         (_%rest82579%_ _%tl8254182574%_))
                                    (declare (not safe))
                                    (_%K8253982569%_
                                     _%rest82579%_
                                     _%hd82577%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8253782551%_)))))))))
            (let* ((_%join82440%_
                    (if (let () (declare (not safe)) (char? _%join82432%_))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (##string _%join82432%_)))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82432%_))
                            (let () _%join82432%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82432%_)))))
                   (_%jlen82442%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join82440%_)))
                   (_%olen82444%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82435%_ _%strs82431%_ _%jlen82442%_)))
                   (_%ostr82446%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen82444%_))))
              (let _%lp82449%_ ((_%rest82451%_ _%strs82431%_) (_%k82452%_ '0))
                (let ()
                  (let ((_%k82455%_ _%k82452%_))
                    (let* ((_%rest8247182479%_ _%rest82451%_)
                           (_%else8247382487%_ (lambda () '""))
                           (_%K8247582507%_
                            (lambda (_%rest82490%_ _%hd82491%_)
                              (let ((_%hd82493%_ _%hd82491%_))
                                (let ((_%hdlen82505%_
                                       (let ()
                                         (declare (not safe))
                                         (##string-length _%hd82493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (pair? _%rest82490%_))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82493%_
                                           '0
                                           _%hdlen82505%_
                                           _%ostr82446%_
                                           _%k82455%_))
                                        (let ((__tmp87419
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82455%_
                                                        _%hdlen82505%_))))
                                          (declare (not safe))
                                          (##substring-move!
                                           _%join82440%_
                                           '0
                                           _%jlen82442%_
                                           _%ostr82446%_
                                           __tmp87419))
                                        (let ((__tmp87420
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82455%_
                                                        _%hdlen82505%_
                                                        _%jlen82442%_))))
                                          (declare (not safe))
                                          (_%lp82449%_
                                           _%rest82490%_
                                           __tmp87420)))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82493%_
                                           '0
                                           _%hdlen82505%_
                                           _%ostr82446%_
                                           _%k82455%_))
                                        _%ostr82446%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%rest8247182479%_))
                          (let ((_%hd8247682510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest8247182479%_)))
                                (_%tl8247782512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest8247182479%_))))
                            (let* ((_%hd82515%_ _%hd8247682510%_)
                                   (_%rest82517%_ _%tl8247782512%_))
                              (declare (not safe))
                              (_%K8247582507%_ _%rest82517%_ _%hd82515%_)))
                          (let ()
                            (declare (not safe))
                            (_%else8247382487%_))))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82357%_ _%port82358%_ _%start82359%_ _%end82360%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82357%_))
              (let ()
                (let ((_%bytes82364%_ _%bytes82357%_))
                  (if (input-port? _%port82358%_)
                      (let ()
                        (let ((_%port82374%_ _%port82358%_))
                          (if ((lambda (_%o82383%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82383%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82383%_ '0))
                                      (fx< _%o82383%_
                                           (u8vector-length _%bytes82364%_))))
                               _%start82359%_)
                              (let ()
                                (let ((_%start82387%_ _%start82359%_))
                                  (if ((lambda (_%o82396%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82396%_))
                                              (fx<= _%start82387%_
                                                    _%o82396%_
                                                    (u8vector-length
                                                     _%bytes82364%_))))
                                       _%end82360%_)
                                      (let ()
                                        (let ((_%end82400%_ _%end82360%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__read-u8vector__%
                                               _%bytes82364%_
                                               _%port82374%_
                                               _%start82387%_
                                               _%end82400%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82360%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82359%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82358%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes82357%_)))))
    (define read-u8vector__0
      (lambda (_%bytes82413%_ _%port82414%_)
        (let* ((_%start82416%_ '0) (_%end82418%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82413%_
           _%port82414%_
           _%start82416%_
           _%end82418%_))))
    (define read-u8vector__1
      (lambda (_%bytes82420%_ _%port82421%_ _%start82422%_)
        (let ((_%end82424%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82420%_
           _%port82421%_
           _%start82422%_
           _%end82424%_))))
    (define read-u8vector
      (lambda _g87422_
        (let ((_g87421_ (let () (declare (not safe)) (##length _g87422_))))
          (cond ((let () (declare (not safe)) (##fx= _g87421_ 2))
                 (apply (lambda (_%bytes82413%_ _%port82414%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82413%_ _%port82414%_)))
                        _g87422_))
                ((let () (declare (not safe)) (##fx= _g87421_ 3))
                 (apply (lambda (_%bytes82420%_ _%port82421%_ _%start82422%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82420%_
                             _%port82421%_
                             _%start82422%_)))
                        _g87422_))
                ((let () (declare (not safe)) (##fx= _g87421_ 4))
                 (apply (lambda (_%bytes82426%_
                                 _%port82427%_
                                 _%start82428%_
                                 _%end82429%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82426%_
                             _%port82427%_
                             _%start82428%_
                             _%end82429%_)))
                        _g87422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87422_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82296%_ _%port82297%_ _%start82298%_ _%end82299%_)
        (let ()
          (let ((_%bytes82302%_ _%bytes82296%_))
            (let ((_%port82310%_ _%port82297%_))
              (let ((_%start82318%_ _%start82298%_))
                (let ((_%end82326%_ _%end82299%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##read-subu8vector
                       _%bytes82302%_
                       _%start82318%_
                       _%end82326%_
                       _%port82310%_))))))))))
    (define __read-u8vector__0
      (lambda (_%bytes82338%_ _%port82339%_)
        (let* ((_%start82341%_ '0) (_%end82343%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82338%_
           _%port82339%_
           _%start82341%_
           _%end82343%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82345%_ _%port82346%_ _%start82347%_)
        (let ((_%end82349%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82345%_
           _%port82346%_
           _%start82347%_
           _%end82349%_))))
    (define __read-u8vector
      (lambda _g87424_
        (let ((_g87423_ (let () (declare (not safe)) (##length _g87424_))))
          (cond ((let () (declare (not safe)) (##fx= _g87423_ 2))
                 (apply (lambda (_%bytes82338%_ _%port82339%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82338%_ _%port82339%_)))
                        _g87424_))
                ((let () (declare (not safe)) (##fx= _g87423_ 3))
                 (apply (lambda (_%bytes82345%_ _%port82346%_ _%start82347%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82345%_
                             _%port82346%_
                             _%start82347%_)))
                        _g87424_))
                ((let () (declare (not safe)) (##fx= _g87423_ 4))
                 (apply (lambda (_%bytes82351%_
                                 _%port82352%_
                                 _%start82353%_
                                 _%end82354%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82351%_
                             _%port82352%_
                             _%start82353%_
                             _%end82354%_)))
                        _g87424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87424_))))))
    (define write-u8vector__%
      (lambda (_%bytes82221%_ _%port82222%_ _%start82223%_ _%end82224%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82221%_))
              (let ()
                (let ((_%bytes82228%_ _%bytes82221%_))
                  (if (output-port? _%port82222%_)
                      (let ()
                        (let ((_%port82238%_ _%port82222%_))
                          (if ((lambda (_%o82247%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82247%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82247%_ '0))
                                      (fx< _%o82247%_
                                           (u8vector-length _%bytes82228%_))))
                               _%start82223%_)
                              (let ()
                                (let ((_%start82251%_ _%start82223%_))
                                  (if ((lambda (_%o82260%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82260%_))
                                              (fx<= _%start82251%_
                                                    _%o82260%_
                                                    (u8vector-length
                                                     _%bytes82228%_))))
                                       _%end82224%_)
                                      (let ()
                                        (let ((_%end82264%_ _%end82224%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__write-u8vector__%
                                               _%bytes82228%_
                                               _%port82238%_
                                               _%start82251%_
                                               _%end82264%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82224%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82223%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82222%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82221%_)))))
    (define write-u8vector__0
      (lambda (_%bytes82277%_ _%port82278%_)
        (let* ((_%start82280%_ '0) (_%end82282%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82277%_
           _%port82278%_
           _%start82280%_
           _%end82282%_))))
    (define write-u8vector__1
      (lambda (_%bytes82284%_ _%port82285%_ _%start82286%_)
        (let ((_%end82288%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82284%_
           _%port82285%_
           _%start82286%_
           _%end82288%_))))
    (define write-u8vector
      (lambda _g87426_
        (let ((_g87425_ (let () (declare (not safe)) (##length _g87426_))))
          (cond ((let () (declare (not safe)) (##fx= _g87425_ 2))
                 (apply (lambda (_%bytes82277%_ _%port82278%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82277%_ _%port82278%_)))
                        _g87426_))
                ((let () (declare (not safe)) (##fx= _g87425_ 3))
                 (apply (lambda (_%bytes82284%_ _%port82285%_ _%start82286%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82284%_
                             _%port82285%_
                             _%start82286%_)))
                        _g87426_))
                ((let () (declare (not safe)) (##fx= _g87425_ 4))
                 (apply (lambda (_%bytes82290%_
                                 _%port82291%_
                                 _%start82292%_
                                 _%end82293%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82290%_
                             _%port82291%_
                             _%start82292%_
                             _%end82293%_)))
                        _g87426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87426_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82160%_ _%port82161%_ _%start82162%_ _%end82163%_)
        (let ()
          (let ((_%bytes82166%_ _%bytes82160%_))
            (let ((_%port82174%_ _%port82161%_))
              (let ((_%start82182%_ _%start82162%_))
                (let ((_%end82190%_ _%end82163%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##write-subu8vector
                       _%bytes82166%_
                       _%start82182%_
                       _%end82190%_
                       _%port82174%_))))))))))
    (define __write-u8vector__0
      (lambda (_%bytes82202%_ _%port82203%_)
        (let* ((_%start82205%_ '0) (_%end82207%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82202%_
           _%port82203%_
           _%start82205%_
           _%end82207%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82209%_ _%port82210%_ _%start82211%_)
        (let ((_%end82213%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82209%_
           _%port82210%_
           _%start82211%_
           _%end82213%_))))
    (define __write-u8vector
      (lambda _g87428_
        (let ((_g87427_ (let () (declare (not safe)) (##length _g87428_))))
          (cond ((let () (declare (not safe)) (##fx= _g87427_ 2))
                 (apply (lambda (_%bytes82202%_ _%port82203%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82202%_
                             _%port82203%_)))
                        _g87428_))
                ((let () (declare (not safe)) (##fx= _g87427_ 3))
                 (apply (lambda (_%bytes82209%_ _%port82210%_ _%start82211%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82209%_
                             _%port82210%_
                             _%start82211%_)))
                        _g87428_))
                ((let () (declare (not safe)) (##fx= _g87427_ 4))
                 (apply (lambda (_%bytes82215%_
                                 _%port82216%_
                                 _%start82217%_
                                 _%end82218%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82215%_
                             _%port82216%_
                             _%start82217%_
                             _%end82218%_)))
                        _g87428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87428_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82128%_
               _%dbg-exprs82129%_
               _%dbg-thunks82130%_
               _%expr82131%_
               _%thunk82132%_)
        (letrec ((_%o82134%_ (current-output-port))
                 (_%e82135%_ (current-error-port))
                 (_%p82136%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82137%_
                  (lambda ()
                    (force-output _%o82134%_)
                    (force-output _%e82135%_)))
                 (_%d82138%_
                  (lambda (_%x82145%_) (display _%x82145%_ _%e82135%_)))
                 (_%w82139%_
                  (lambda (_%x82147%_) (_%p82136%_ _%x82147%_ _%e82135%_)))
                 (_%n82140%_ (lambda () (newline _%e82135%_)))
                 (_%v82141%_
                  (lambda (_%l82150%_)
                    (for-each
                     (lambda (_%x82152%_)
                       (let () (declare (not safe)) (_%d82138%_ '" "))
                       (let () (declare (not safe)) (_%w82139%_ _%x82152%_)))
                     _%l82150%_)
                    (let () (declare (not safe)) (_%n82140%_))))
                 (_%x82142%_
                  (lambda (_%expr82154%_ _%thunk82155%_)
                    (let () (declare (not safe)) (_%f82137%_))
                    (let () (declare (not safe)) (_%d82138%_ '"  "))
                    (let () (declare (not safe)) (_%w82139%_ _%expr82154%_))
                    (let () (declare (not safe)) (_%d82138%_ '" =>"))
                    (call-with-values
                     _%thunk82155%_
                     (lambda _%x82157%_
                       (let () (declare (not safe)) (_%v82141%_ _%x82157%_))
                       (let () (declare (not safe)) (_%f82137%_))
                       (apply values _%x82157%_))))))
          (if _%tag82128%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82128%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82137%_))
                      (let () (declare (not safe)) (_%d82138%_ _%tag82128%_))
                      (let () (declare (not safe)) (_%n82140%_))))
                (for-each _%x82142%_ _%dbg-exprs82129%_ _%dbg-thunks82130%_)
                (if _%thunk82132%_
                    (let ()
                      (declare (not safe))
                      (_%x82142%_ _%expr82131%_ _%thunk82132%_))
                    '#!void))
              (if _%thunk82132%_ (_%thunk82132%_) '#!void)))))))
