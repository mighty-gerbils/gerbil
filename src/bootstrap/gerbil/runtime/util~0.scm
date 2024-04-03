(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712124232)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85643%_
        (let () (for-each display _%args85643%_) (newline))))
    (define display*
      (lambda _%args85640%_ (let () (for-each display _%args85640%_))))
    (define file-newer?
      (lambda (_%file185615%_ _%file285616%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file185615%_))
              (let ()
                (let ((_%file185620%_ _%file185615%_))
                  (if (let () (declare (not safe)) (string? _%file285616%_))
                      (let ()
                        (let ((_%file285630%_ _%file285616%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__file-newer? _%file185620%_ _%file285630%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file285616%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file185615%_)))))
    (define __file-newer?
      (lambda (_%file185563%_ _%file285564%_)
        (let ()
          (let ((_%file185567%_ _%file185563%_))
            (let ((_%file285575%_ _%file285564%_))
              (let ()
                (letrec ((_%modification-time85584%_
                          (lambda (_%file85603%_)
                            (let ()
                              (let ((_%file85606%_ _%file85603%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__modification-time85585%_
                                     _%file85606%_)))))))
                         (_%__modification-time85585%_
                          (lambda (_%file85587%_)
                            (let ()
                              (let ((_%file85590%_ _%file85587%_))
                                (let ()
                                  (let ((__tmp87384
                                         (let ((__tmp87385
                                                (let ()
                                                  (declare (not safe))
                                                  (##file-info
                                                   _%file85590%_
                                                   '#t))))
                                           (declare (not safe))
                                           (##file-info-last-modification-time
                                            __tmp87385))))
                                    (declare (not safe))
                                    (##time->seconds __tmp87384))))))))
                  (let ((__tmp87387
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85585%_ _%file185567%_)))
                        (__tmp87386
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85585%_ _%file285575%_))))
                    (declare (not safe))
                    (##fl> __tmp87387 __tmp87386)))))))))
    (define create-directory*__%
      (lambda (_%dir85528%_ _%perms85529%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir85528%_))
              (let ()
                (let ((_%dir85533%_ _%dir85528%_))
                  (if (let () (declare (not safe)) (fixnum? _%perms85529%_))
                      (let ()
                        (let ((_%perms85543%_ _%perms85529%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__create-directory*__%
                               _%dir85533%_
                               _%perms85543%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms85529%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir85528%_)))))
    (define create-directory*__0
      (lambda (_%dir85556%_)
        (let ((_%perms85558%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir85556%_ _%perms85558%_))))
    (define create-directory*
      (lambda _g87389_
        (let ((_g87388_ (let () (declare (not safe)) (##length _g87389_))))
          (cond ((let () (declare (not safe)) (##fx= _g87388_ 1))
                 (apply (lambda (_%dir85556%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir85556%_)))
                        _g87389_))
                ((let () (declare (not safe)) (##fx= _g87388_ 2))
                 (apply (lambda (_%dir85560%_ _%perms85561%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir85560%_
                             _%perms85561%_)))
                        _g87389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87389_))))))
    (define __create-directory*__%
      (lambda (_%dir85452%_ _%perms85453%_)
        (let ()
          (let ((_%dir85456%_ _%dir85452%_))
            (let ((_%perms85464%_ _%perms85453%_))
              (let ()
                (letrec ((_%create185473%_
                          (lambda (_%path85505%_)
                            (let ()
                              (let ((_%path85508%_ _%path85505%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__create185474%_ _%path85508%_)))))))
                         (_%__create185474%_
                          (lambda (_%path85486%_)
                            (let ()
                              (let ((_%path85489%_ _%path85486%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (##file-exists? _%path85489%_))
                                      (let ()
                                        (if (eq? (file-type _%path85489%_)
                                                 'directory)
                                            '#!void
                                            (error '"Path component is not a directory"
                                                   _%path85489%_)))
                                      (if _%perms85464%_
                                          (let ()
                                            (create-directory
                                             (cons 'path:
                                                   (cons _%path85489%_
                                                         (cons 'permissions:
                                                               (cons _%perms85464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (create-directory
                                             _%path85489%_))))))))))
                  (if (let ()
                        (declare (not safe))
                        (##file-exists? _%dir85456%_))
                      '#!void
                      (let _%lp85476%_ ((_%start85478%_ '0))
                        (let ((_%$e85480%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%dir85456%_
                                  '#\/
                                  _%start85478%_))))
                          (if _%$e85480%_
                              ((lambda (_%x85483%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##fx> _%x85483%_ '0))
                                     (let ((__tmp87390
                                            (substring
                                             _%dir85456%_
                                             '0
                                             _%x85483%_)))
                                       (declare (not safe))
                                       (_%__create185474%_ __tmp87390))
                                     '#!void)
                                 (let ((__tmp87391
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%x85483%_ '1))))
                                   (declare (not safe))
                                   (_%lp85476%_ __tmp87391)))
                               _%$e85480%_)
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (_%__create185474%_ _%dir85456%_)))))))
                  '#!void)))))))
    (define __create-directory*__0
      (lambda (_%dir85520%_)
        (let ((_%perms85522%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir85520%_ _%perms85522%_))))
    (define __create-directory*
      (lambda _g87393_
        (let ((_g87392_ (let () (declare (not safe)) (##length _g87393_))))
          (cond ((let () (declare (not safe)) (##fx= _g87392_ 1))
                 (apply (lambda (_%dir85520%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir85520%_)))
                        _g87393_))
                ((let () (declare (not safe)) (##fx= _g87392_ 2))
                 (apply (lambda (_%dir85524%_ _%perms85525%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir85524%_
                             _%perms85525%_)))
                        _g87393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87393_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85448%_ (let () '#t)))
    (define true? (lambda (_%obj85445%_) (let () (eq? _%obj85445%_ '#t))))
    (define false (lambda _%ignore85442%_ (let () '#f)))
    (define void (lambda _%ignore85439%_ (let () '#!void)))
    (define void? (lambda (_%obj85436%_) (let () (eq? _%obj85436%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85433%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85433%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85430%_) (let () (eq? _%obj85430%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85427%_) (let () (eq? _%obj85427%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85424%_) (let () (eq? _%obj85424%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85419%_)
        (let ()
          (let* ((_%t85422%_
                  (let () (declare (not safe)) (##type _%obj85419%_)))
                 (__tmp87394
                  (let () (declare (not safe)) (##fxand _%t85422%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87394)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85416%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85416%_))
              (let () (declare (not safe)) (##fx>= _%obj85416%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85410%_)
        (let ()
          (let ((_%$e85413%_
                 (let () (declare (not safe)) (pair? _%obj85410%_))))
            (if _%$e85413%_
                _%$e85413%_
                (let () (declare (not safe)) (null? _%obj85410%_)))))))
    (define values-count
      (lambda (_%obj85407%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85407%_))
              (let () (declare (not safe)) (##vector-length _%obj85407%_))
              '1))))
    (define values-ref
      (lambda (_%obj85392%_ _%k85393%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85393%_))
              (let ()
                (let ((_%k85397%_ _%k85393%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__values-ref _%obj85392%_ _%k85397%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k85393%_)))))
    (define __values-ref
      (lambda (_%obj85379%_ _%k85380%_)
        (let ()
          (let ((_%k85383%_ _%k85380%_))
            (let ()
              (if (let () (declare (not safe)) (##values? _%obj85379%_))
                  (let ()
                    (declare (not safe))
                    (##vector-ref _%obj85379%_ _%k85383%_))
                  _%obj85379%_))))))
    (define values->list
      (lambda (_%obj85376%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85376%_))
              (let () (declare (not safe)) (##vector->list _%obj85376%_))
              (list _%obj85376%_)))))
    (define foldl1
      (lambda (_%f85360%_ _%iv85361%_ _%lst85362%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85360%_))
              (let ()
                (let ((_%f85366%_ _%f85360%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl1 _%f85366%_ _%iv85361%_ _%lst85362%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f85360%_)))))
    (define __foldl1
      (lambda (_%f85308%_ _%iv85309%_ _%lst85310%_)
        (let ()
          (let ((_%f85313%_ _%f85308%_))
            (let ()
              (let _%lp85322%_ ((_%rest85324%_ _%lst85310%_)
                                (_%r85325%_ _%iv85309%_))
                (let* ((_%rest8532685334%_ _%rest85324%_)
                       (_%else8532885342%_ (lambda () _%r85325%_))
                       (_%K8533085348%_
                        (lambda (_%rest85345%_ _%x85346%_)
                          (let ((__tmp87395
                                 (let ()
                                   (declare (not safe))
                                   (_%f85313%_ _%x85346%_ _%r85325%_))))
                            (declare (not safe))
                            (_%lp85322%_ _%rest85345%_ __tmp87395)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8532685334%_))
                      (let ((_%hd8533185351%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8532685334%_)))
                            (_%tl8533285353%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8532685334%_))))
                        (let* ((_%x85356%_ _%hd8533185351%_)
                               (_%rest85358%_ _%tl8533285353%_))
                          (declare (not safe))
                          (_%K8533085348%_ _%rest85358%_ _%x85356%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8532885342%_))))))))))
    (define foldl2
      (lambda (_%f85291%_ _%iv85292%_ _%lst185293%_ _%lst285294%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85291%_))
              (let ()
                (let ((_%f85298%_ _%f85291%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl2
                       _%f85298%_
                       _%iv85292%_
                       _%lst185293%_
                       _%lst285294%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85291%_)))))
    (define __foldl2
      (lambda (_%f85204%_ _%iv85205%_ _%lst185206%_ _%lst285207%_)
        (let ()
          (let ((_%f85210%_ _%f85204%_))
            (let ()
              (let _%lp85219%_ ((_%rest185221%_ _%lst185206%_)
                                (_%rest285222%_ _%lst285207%_)
                                (_%r85223%_ _%iv85205%_))
                (let* ((_%rest18522485232%_ _%rest185221%_)
                       (_%else8522685240%_ (lambda () _%r85223%_))
                       (_%K8522885279%_
                        (lambda (_%rest185243%_ _%x185244%_)
                          (let* ((_%rest28524585253%_ _%rest285222%_)
                                 (_%else8524785261%_ (lambda () _%r85223%_))
                                 (_%K8524985267%_
                                  (lambda (_%rest285264%_ _%x285265%_)
                                    (let ((__tmp87396
                                           (let ()
                                             (declare (not safe))
                                             (_%f85210%_
                                              _%x185244%_
                                              _%x285265%_
                                              _%r85223%_))))
                                      (declare (not safe))
                                      (_%lp85219%_
                                       _%rest185243%_
                                       _%rest285264%_
                                       __tmp87396)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28524585253%_))
                                (let ((_%hd8525085270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28524585253%_)))
                                      (_%tl8525185272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28524585253%_))))
                                  (let* ((_%x285275%_ _%hd8525085270%_)
                                         (_%rest285277%_ _%tl8525185272%_))
                                    (declare (not safe))
                                    (_%K8524985267%_
                                     _%rest285277%_
                                     _%x285275%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8524785261%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18522485232%_))
                      (let ((_%hd8522985282%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18522485232%_)))
                            (_%tl8523085284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18522485232%_))))
                        (let* ((_%x185287%_ _%hd8522985282%_)
                               (_%rest185289%_ _%tl8523085284%_))
                          (declare (not safe))
                          (_%K8522885279%_ _%rest185289%_ _%x185287%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8522685240%_))))))))))
    (define foldl
      (lambda _g87398_
        (let ((_g87397_ (let () (declare (not safe)) (##length _g87398_))))
          (cond ((let () (declare (not safe)) (##fx= _g87397_ 3))
                 (apply (lambda (_%f85189%_ _%iv85190%_ _%lst85191%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85189%_ _%iv85190%_ _%lst85191%_)))
                        _g87398_))
                ((let () (declare (not safe)) (##fx= _g87397_ 4))
                 (apply (lambda (_%f85193%_
                                 _%iv85194%_
                                 _%lst185195%_
                                 _%lst285196%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85193%_
                                    _%iv85194%_
                                    _%lst185195%_
                                    _%lst285196%_)))
                        _g87398_))
                ((let () (declare (not safe)) (##fx>= _g87397_ 4))
                 (apply foldl* _g87398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87398_))))))
    (define foldl*
      (lambda (_%f85173%_ _%iv85174%_ . _%rest85175%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85173%_))
              (let ()
                (let ((_%f85179%_ _%f85173%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldl*
                               _%f85179%_
                               _%iv85174%_
                               _%rest85175%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85173%_)))))
    (define __foldl*
      (lambda (_%f85151%_ _%iv85152%_ . _%rest85153%_)
        (let ()
          (let ((_%f85156%_ _%f85151%_))
            (let ()
              (let _%recur85165%_ ((_%iv85167%_ _%iv85152%_)
                                   (_%rest85168%_ _%rest85153%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest85168%_))
                    (let ((__tmp87400
                           (let ((__tmp87401
                                  (let ((__tmp87403
                                         (lambda (_%xs85170%_ _%r85171%_)
                                           (cons (car _%xs85170%_)
                                                 _%r85171%_)))
                                        (__tmp87402 (list _%iv85167%_)))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp87403
                                     __tmp87402
                                     _%rest85168%_))))
                             (declare (not safe))
                             (##apply _%f85156%_ __tmp87401)))
                          (__tmp87399 (map cdr _%rest85168%_)))
                      (declare (not safe))
                      (_%recur85165%_ __tmp87400 __tmp87399))
                    _%iv85167%_)))))))
    (define foldr1
      (lambda (_%f85135%_ _%iv85136%_ _%lst85137%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85135%_))
              (let ()
                (let ((_%f85141%_ _%f85135%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr1 _%f85141%_ _%iv85136%_ _%lst85137%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f85135%_)))))
    (define __foldr1
      (lambda (_%f85084%_ _%iv85085%_ _%lst85086%_)
        (let ()
          (let ((_%f85089%_ _%f85084%_))
            (let ()
              (let _%recur85098%_ ((_%rest85100%_ _%lst85086%_))
                (let* ((_%rest8510185109%_ _%rest85100%_)
                       (_%else8510385117%_ (lambda () _%iv85085%_))
                       (_%K8510585123%_
                        (lambda (_%rest85120%_ _%x85121%_)
                          (let ((__tmp87404
                                 (let ()
                                   (declare (not safe))
                                   (_%recur85098%_ _%rest85120%_))))
                            (declare (not safe))
                            (_%f85089%_ _%x85121%_ __tmp87404)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8510185109%_))
                      (let ((_%hd8510685126%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8510185109%_)))
                            (_%tl8510785128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8510185109%_))))
                        (let* ((_%x85131%_ _%hd8510685126%_)
                               (_%rest85133%_ _%tl8510785128%_))
                          (declare (not safe))
                          (_%K8510585123%_ _%rest85133%_ _%x85131%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8510385117%_))))))))))
    (define foldr2
      (lambda (_%f85067%_ _%iv85068%_ _%lst185069%_ _%lst285070%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85067%_))
              (let ()
                (let ((_%f85074%_ _%f85067%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr2
                       _%f85074%_
                       _%iv85068%_
                       _%lst185069%_
                       _%lst285070%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f85067%_)))))
    (define __foldr2
      (lambda (_%f84981%_ _%iv84982%_ _%lst184983%_ _%lst284984%_)
        (let ()
          (let ((_%f84987%_ _%f84981%_))
            (let ()
              (let _%recur84996%_ ((_%rest184998%_ _%lst184983%_)
                                   (_%rest284999%_ _%lst284984%_))
                (let* ((_%rest18500085008%_ _%rest184998%_)
                       (_%else8500285016%_ (lambda () _%iv84982%_))
                       (_%K8500485055%_
                        (lambda (_%rest185019%_ _%x185020%_)
                          (let* ((_%rest28502185029%_ _%rest284999%_)
                                 (_%else8502385037%_ (lambda () _%iv84982%_))
                                 (_%K8502585043%_
                                  (lambda (_%rest285040%_ _%x285041%_)
                                    (let ((__tmp87405
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84996%_
                                              _%rest185019%_
                                              _%rest285040%_))))
                                      (declare (not safe))
                                      (_%f84987%_
                                       _%x185020%_
                                       _%x285041%_
                                       __tmp87405)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28502185029%_))
                                (let ((_%hd8502685046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28502185029%_)))
                                      (_%tl8502785048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28502185029%_))))
                                  (let* ((_%x285051%_ _%hd8502685046%_)
                                         (_%rest285053%_ _%tl8502785048%_))
                                    (declare (not safe))
                                    (_%K8502585043%_
                                     _%rest285053%_
                                     _%x285051%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8502385037%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18500085008%_))
                      (let ((_%hd8500585058%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18500085008%_)))
                            (_%tl8500685060%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18500085008%_))))
                        (let* ((_%x185063%_ _%hd8500585058%_)
                               (_%rest185065%_ _%tl8500685060%_))
                          (declare (not safe))
                          (_%K8500485055%_ _%rest185065%_ _%x185063%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8500285016%_))))))))))
    (define foldr
      (lambda _g87407_
        (let ((_g87406_ (let () (declare (not safe)) (##length _g87407_))))
          (cond ((let () (declare (not safe)) (##fx= _g87406_ 3))
                 (apply (lambda (_%f84966%_ _%iv84967%_ _%lst84968%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f84966%_ _%iv84967%_ _%lst84968%_)))
                        _g87407_))
                ((let () (declare (not safe)) (##fx= _g87406_ 4))
                 (apply (lambda (_%f84970%_
                                 _%iv84971%_
                                 _%lst184972%_
                                 _%lst284973%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f84970%_
                                    _%iv84971%_
                                    _%lst184972%_
                                    _%lst284973%_)))
                        _g87407_))
                ((let () (declare (not safe)) (##fx>= _g87406_ 4))
                 (apply foldr* _g87407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87407_))))))
    (define foldr*
      (lambda (_%f84950%_ _%iv84951%_ . _%rest84952%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84950%_))
              (let ()
                (let ((_%f84956%_ _%f84950%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldr*
                               _%f84956%_
                               _%iv84951%_
                               _%rest84952%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f84950%_)))))
    (define __foldr*
      (lambda (_%f84929%_ _%iv84930%_ . _%rest84931%_)
        (let ()
          (let ((_%f84934%_ _%f84929%_))
            (let ()
              (let _%recur84943%_ ((_%rest84945%_ _%rest84931%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84945%_))
                    (let ((__tmp87408
                           (let ((__tmp87411
                                  (lambda (_%xs84947%_ _%r84948%_)
                                    (cons (car _%xs84947%_) _%r84948%_)))
                                 (__tmp87409
                                  (list (let ((__tmp87410
                                               (map cdr _%rest84945%_)))
                                          (declare (not safe))
                                          (_%recur84943%_ __tmp87410)))))
                             (declare (not safe))
                             (__foldr1 __tmp87411 __tmp87409 _%rest84945%_))))
                      (declare (not safe))
                      (##apply _%f84934%_ __tmp87408))
                    _%iv84930%_)))))))
    (define remove-nulls!
      (lambda (_%l84816%_)
        (let* ((_%l8481784830%_ _%l84816%_)
               (_%E8482184834%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8481784830%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8482684919%_
                 (lambda (_%r84917%_)
                   (let () (declare (not safe)) (remove-nulls! _%r84917%_))))
                (_%K8482384906%_
                 (lambda (_%r84846%_)
                   (let _%loop84848%_ ((_%l84850%_ _%l84816%_)
                                       (_%r84851%_ _%r84846%_))
                     (let* ((_%r8485284865%_ _%r84851%_)
                            (_%E8485684869%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8485284865%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8486184896%_
                              (lambda (_%rr84894%_)
                                (let ((__tmp87413 _%l84850%_)
                                      (__tmp87412
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr84894%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87413 __tmp87412))))
                             (_%K8485884883%_
                              (lambda (_%rr84881%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop84848%_ _%r84851%_ _%rr84881%_))))
                             (_%K8485784874%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8485284865%_))
                             (let ((_%tl8486384901%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8485284865%_)))
                                   (_%hd8486284899%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8485284865%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8486284899%_))
                                   (let ((_%rr84904%_ _%tl8486384901%_))
                                     (declare (not safe))
                                     (_%K8486184896%_ _%rr84904%_))
                                   (let ((_%rr84889%_ _%tl8486384901%_))
                                     (declare (not safe))
                                     (_%K8485884883%_ _%rr84889%_))))
                             '#!void))))
                   _%l84816%_))
                (_%K8482284839%_ (lambda () _%l84816%_)))
            (if (let () (declare (not safe)) (##pair? _%l8481784830%_))
                (let ((_%tl8482884924%_
                       (let () (declare (not safe)) (##cdr _%l8481784830%_)))
                      (_%hd8482784922%_
                       (let () (declare (not safe)) (##car _%l8481784830%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8482784922%_))
                      (let ((_%r84927%_ _%tl8482884924%_))
                        (declare (not safe))
                        (remove-nulls! _%r84927%_))
                      (let ((_%r84912%_ _%tl8482884924%_))
                        (declare (not safe))
                        (_%K8482384906%_ _%r84912%_))))
                (let () (declare (not safe)) (_%K8482284839%_)))))))
    (define append1!
      (lambda (_%l84801%_ _%x84802%_)
        (let ()
          (let ((_%l284805%_ (cons _%x84802%_ '())))
            (if (let () (declare (not safe)) (pair? _%l84801%_))
                (let ((_%l84807%_ _%l84801%_))
                  (let ((__tmp87414
                         (let ()
                           (declare (not safe))
                           (##last-pair _%l84807%_))))
                    (declare (not safe))
                    (##set-cdr! __tmp87414 _%l284805%_))
                  _%l84807%_)
                _%l284805%_)))))
    (define append-reverse-until
      (lambda (_%pred84785%_ _%rhead84786%_ _%tail84787%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84785%_))
              (let ()
                (let ((_%pred84791%_ _%pred84785%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__append-reverse-until
                       _%pred84791%_
                       _%rhead84786%_
                       _%tail84787%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred84785%_)))))
    (define __append-reverse-until
      (lambda (_%pred84727%_ _%rhead84728%_ _%tail84729%_)
        (let ()
          (let ((_%pred84732%_ _%pred84727%_))
            (let ()
              (let _%loop84741%_ ((_%rhead84743%_ _%rhead84728%_)
                                  (_%tail84744%_ _%tail84729%_))
                (let ()
                  (let* ((_%rhead8474684755%_ _%rhead84743%_)
                         (_%E8474984759%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%rhead8474684755%_
                                   '([])
                                   '([a :: r]))
                            '#!void)))
                    (let ((_%K8475384782%_
                           (lambda () (values '() _%tail84744%_)))
                          (_%K8475084766%_
                           (lambda (_%r84763%_ _%a84764%_)
                             (if (let ()
                                   (declare (not safe))
                                   (_%pred84732%_ _%a84764%_))
                                 (values _%rhead84743%_ _%tail84744%_)
                                 (let ((__tmp87415
                                        (cons _%a84764%_ _%tail84744%_)))
                                   (declare (not safe))
                                   (_%loop84741%_ _%r84763%_ __tmp87415))))))
                      (let ((_%try-match8474884778%_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%rhead8474684755%_))
                                   (let ((_%tl8475284771%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%rhead8474684755%_)))
                                         (_%hd8475184769%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%rhead8474684755%_))))
                                     (let ((_%a84774%_ _%hd8475184769%_)
                                           (_%r84776%_ _%tl8475284771%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K8475084766%_
                                          _%r84776%_
                                          _%a84774%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%E8474984759%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%rhead8474684755%_))
                            (let () (declare (not safe)) (_%K8475384782%_))
                            (let ()
                              (declare (not safe))
                              (_%try-match8474884778%_)))))))))))))
    (define andmap1
      (lambda (_%f84712%_ _%lst84713%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84712%_))
              (let ()
                (let ((_%f84717%_ _%f84712%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap1 _%f84717%_ _%lst84713%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f84712%_)))))
    (define __andmap1
      (lambda (_%f84661%_ _%lst84662%_)
        (let ()
          (let ((_%f84665%_ _%f84661%_))
            (let ()
              (let _%lp84674%_ ((_%rest84676%_ _%lst84662%_))
                (let ()
                  (let* ((_%rest8467884686%_ _%rest84676%_)
                         (_%else8468084694%_ (lambda () '#t))
                         (_%K8468284700%_
                          (lambda (_%rest84697%_ _%x84698%_)
                            (if (let ()
                                  (declare (not safe))
                                  (_%f84665%_ _%x84698%_))
                                (let ()
                                  (declare (not safe))
                                  (_%lp84674%_ _%rest84697%_))
                                '#f))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8467884686%_))
                        (let ((_%hd8468384703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8467884686%_)))
                              (_%tl8468484705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8467884686%_))))
                          (let* ((_%x84708%_ _%hd8468384703%_)
                                 (_%rest84710%_ _%tl8468484705%_))
                            (declare (not safe))
                            (_%K8468284700%_ _%rest84710%_ _%x84708%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8468084694%_)))))))))))
    (define andmap2
      (lambda (_%f84645%_ _%lst184646%_ _%lst284647%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84645%_))
              (let ()
                (let ((_%f84651%_ _%f84645%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap2 _%f84651%_ _%lst184646%_ _%lst284647%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f84645%_)))))
    (define __andmap2
      (lambda (_%f84559%_ _%lst184560%_ _%lst284561%_)
        (let ()
          (let ((_%f84564%_ _%f84559%_))
            (let ()
              (let _%lp84573%_ ((_%rest184575%_ _%lst184560%_)
                                (_%rest284576%_ _%lst284561%_))
                (let ()
                  (let* ((_%rest18457884586%_ _%rest184575%_)
                         (_%else8458084594%_ (lambda () '#t))
                         (_%K8458284633%_
                          (lambda (_%rest184597%_ _%x184598%_)
                            (let* ((_%rest28459984607%_ _%rest284576%_)
                                   (_%else8460184615%_ (lambda () '#t))
                                   (_%K8460384621%_
                                    (lambda (_%rest284618%_ _%x284619%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (_%f84564%_
                                             _%x184598%_
                                             _%x284619%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84573%_
                                             _%rest184597%_
                                             _%rest284618%_))
                                          '#f))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28459984607%_))
                                  (let ((_%hd8460484624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28459984607%_)))
                                        (_%tl8460584626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28459984607%_))))
                                    (let* ((_%x284629%_ _%hd8460484624%_)
                                           (_%rest284631%_ _%tl8460584626%_))
                                      (declare (not safe))
                                      (_%K8460384621%_
                                       _%rest284631%_
                                       _%x284629%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8460184615%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18457884586%_))
                        (let ((_%hd8458384636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18457884586%_)))
                              (_%tl8458484638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18457884586%_))))
                          (let* ((_%x184641%_ _%hd8458384636%_)
                                 (_%rest184643%_ _%tl8458484638%_))
                            (declare (not safe))
                            (_%K8458284633%_ _%rest184643%_ _%x184641%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8458084594%_)))))))))))
    (define andmap
      (lambda _g87417_
        (let ((_g87416_ (let () (declare (not safe)) (##length _g87417_))))
          (cond ((let () (declare (not safe)) (##fx= _g87416_ 2))
                 (apply (lambda (_%f84547%_ _%lst84548%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f84547%_ _%lst84548%_)))
                        _g87417_))
                ((let () (declare (not safe)) (##fx= _g87416_ 3))
                 (apply (lambda (_%f84550%_ _%lst184551%_ _%lst284552%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f84550%_ _%lst184551%_ _%lst284552%_)))
                        _g87417_))
                ((let () (declare (not safe)) (##fx>= _g87416_ 3))
                 (apply andmap* _g87417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87417_))))))
    (define andmap*
      (lambda (_%f84532%_ . _%rest84533%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84532%_))
              (let ()
                (let ((_%f84537%_ _%f84532%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __andmap* _%f84537%_ _%rest84533%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f84532%_)))))
    (define __andmap*
      (lambda (_%f84514%_ . _%rest84515%_)
        (let ()
          (let ((_%f84518%_ _%f84514%_))
            (let ()
              (let _%recur84527%_ ((_%rest84529%_ _%rest84515%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84529%_))
                      (if (let ((__tmp87418 (map car _%rest84529%_)))
                            (declare (not safe))
                            (##apply _%f84518%_ __tmp87418))
                          (let ((__tmp87419 (map cdr _%rest84529%_)))
                            (declare (not safe))
                            (_%recur84527%_ __tmp87419))
                          '#f)
                      '#t))))))))
    (define ormap1
      (lambda (_%f84499%_ _%lst84500%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84499%_))
              (let ()
                (let ((_%f84504%_ _%f84499%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap1 _%f84504%_ _%lst84500%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f84499%_)))))
    (define __ormap1
      (lambda (_%f84446%_ _%lst84447%_)
        (let ()
          (let ((_%f84450%_ _%f84446%_))
            (let ()
              (let _%lp84459%_ ((_%rest84461%_ _%lst84447%_))
                (let* ((_%rest8446284470%_ _%rest84461%_)
                       (_%else8446484478%_ (lambda () '#f))
                       (_%K8446684487%_
                        (lambda (_%rest84481%_ _%x84482%_)
                          (let ((_%$e84484%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f84450%_ _%x84482%_))))
                            (if _%$e84484%_
                                _%$e84484%_
                                (let ()
                                  (declare (not safe))
                                  (_%lp84459%_ _%rest84481%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8446284470%_))
                      (let ((_%hd8446784490%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8446284470%_)))
                            (_%tl8446884492%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8446284470%_))))
                        (let* ((_%x84495%_ _%hd8446784490%_)
                               (_%rest84497%_ _%tl8446884492%_))
                          (declare (not safe))
                          (_%K8446684487%_ _%rest84497%_ _%x84495%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8446484478%_))))))))))
    (define ormap2
      (lambda (_%f84430%_ _%lst184431%_ _%lst284432%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84430%_))
              (let ()
                (let ((_%f84436%_ _%f84430%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap2 _%f84436%_ _%lst184431%_ _%lst284432%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f84430%_)))))
    (define __ormap2
      (lambda (_%f84342%_ _%lst184343%_ _%lst284344%_)
        (let ()
          (let ((_%f84347%_ _%f84342%_))
            (let ()
              (let _%lp84356%_ ((_%rest184358%_ _%lst184343%_)
                                (_%rest284359%_ _%lst284344%_))
                (let* ((_%rest18436084368%_ _%rest184358%_)
                       (_%else8436284376%_ (lambda () '#f))
                       (_%K8436484418%_
                        (lambda (_%rest184379%_ _%x184380%_)
                          (let* ((_%rest28438184389%_ _%rest284359%_)
                                 (_%else8438384397%_ (lambda () '#f))
                                 (_%K8438584406%_
                                  (lambda (_%rest284400%_ _%x284401%_)
                                    (let ((_%$e84403%_
                                           (let ()
                                             (declare (not safe))
                                             (_%f84347%_
                                              _%x184380%_
                                              _%x284401%_))))
                                      (if _%$e84403%_
                                          _%$e84403%_
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84356%_
                                             _%rest184379%_
                                             _%rest284400%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28438184389%_))
                                (let ((_%hd8438684409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28438184389%_)))
                                      (_%tl8438784411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28438184389%_))))
                                  (let* ((_%x284414%_ _%hd8438684409%_)
                                         (_%rest284416%_ _%tl8438784411%_))
                                    (declare (not safe))
                                    (_%K8438584406%_
                                     _%rest284416%_
                                     _%x284414%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8438384397%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18436084368%_))
                      (let ((_%hd8436584421%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18436084368%_)))
                            (_%tl8436684423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18436084368%_))))
                        (let* ((_%x184426%_ _%hd8436584421%_)
                               (_%rest184428%_ _%tl8436684423%_))
                          (declare (not safe))
                          (_%K8436484418%_ _%rest184428%_ _%x184426%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8436284376%_))))))))))
    (define ormap
      (lambda _g87421_
        (let ((_g87420_ (let () (declare (not safe)) (##length _g87421_))))
          (cond ((let () (declare (not safe)) (##fx= _g87420_ 2))
                 (apply (lambda (_%f84330%_ _%lst84331%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84330%_ _%lst84331%_)))
                        _g87421_))
                ((let () (declare (not safe)) (##fx= _g87420_ 3))
                 (apply (lambda (_%f84333%_ _%lst184334%_ _%lst284335%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84333%_ _%lst184334%_ _%lst284335%_)))
                        _g87421_))
                ((let () (declare (not safe)) (##fx>= _g87420_ 3))
                 (apply ormap* _g87421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87421_))))))
    (define ormap*
      (lambda (_%f84315%_ . _%rest84316%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84315%_))
              (let ()
                (let ((_%f84320%_ _%f84315%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __ormap* _%f84320%_ _%rest84316%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84315%_)))))
    (define __ormap*
      (lambda (_%f84295%_ . _%rest84296%_)
        (let ()
          (let ((_%f84299%_ _%f84295%_))
            (let ()
              (let _%recur84308%_ ((_%rest84310%_ _%rest84296%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84310%_))
                    (let ((_%$e84312%_
                           (let ((__tmp87422 (map car _%rest84310%_)))
                             (declare (not safe))
                             (##apply _%f84299%_ __tmp87422))))
                      (if _%$e84312%_
                          _%$e84312%_
                          (let ((__tmp87423 (map cdr _%rest84310%_)))
                            (declare (not safe))
                            (_%recur84308%_ __tmp87423))))
                    '#f)))))))
    (define filter-map1
      (lambda (_%f84280%_ _%lst84281%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84280%_))
              (let ()
                (let ((_%f84285%_ _%f84280%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map1 _%f84285%_ _%lst84281%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84280%_)))))
    (define __filter-map1
      (lambda (_%f84223%_ _%lst84224%_)
        (let ()
          (let ((_%f84227%_ _%f84223%_))
            (let ()
              (let _%recur84236%_ ((_%rest84238%_ _%lst84224%_))
                (let ()
                  (let* ((_%rest8424084248%_ _%rest84238%_)
                         (_%else8424284256%_ (lambda () '()))
                         (_%K8424484268%_
                          (lambda (_%rest84259%_ _%x84260%_)
                            (let ((_%$e84262%_
                                   (let ()
                                     (declare (not safe))
                                     (_%f84227%_ _%x84260%_))))
                              (if _%$e84262%_
                                  ((lambda (_%r84265%_)
                                     (cons _%r84265%_
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84236%_ _%rest84259%_))))
                                   _%$e84262%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%recur84236%_ _%rest84259%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8424084248%_))
                        (let ((_%hd8424584271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8424084248%_)))
                              (_%tl8424684273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8424084248%_))))
                          (let* ((_%x84276%_ _%hd8424584271%_)
                                 (_%rest84278%_ _%tl8424684273%_))
                            (declare (not safe))
                            (_%K8424484268%_ _%rest84278%_ _%x84276%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8424284256%_)))))))))))
    (define filter-map2
      (lambda (_%f84207%_ _%lst184208%_ _%lst284209%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84207%_))
              (let ()
                (let ((_%f84213%_ _%f84207%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map2
                       _%f84213%_
                       _%lst184208%_
                       _%lst284209%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84207%_)))))
    (define __filter-map2
      (lambda (_%f84115%_ _%lst184116%_ _%lst284117%_)
        (let ()
          (let ((_%f84120%_ _%f84115%_))
            (let ()
              (let _%recur84129%_ ((_%rest184131%_ _%lst184116%_)
                                   (_%rest284132%_ _%lst284117%_))
                (let ()
                  (let* ((_%rest18413484142%_ _%rest184131%_)
                         (_%else8413684150%_ (lambda () '()))
                         (_%K8413884195%_
                          (lambda (_%rest184153%_ _%x184154%_)
                            (let* ((_%rest28415584163%_ _%rest284132%_)
                                   (_%else8415784171%_ (lambda () '()))
                                   (_%K8415984183%_
                                    (lambda (_%rest284174%_ _%x284175%_)
                                      (let ((_%$e84177%_
                                             (let ()
                                               (declare (not safe))
                                               (_%f84120%_
                                                _%x184154%_
                                                _%x284175%_))))
                                        (if _%$e84177%_
                                            ((lambda (_%r84180%_)
                                               (cons _%r84180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%recur84129%_
                                                        _%rest184153%_
                                                        _%rest284174%_))))
                                             _%$e84177%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%recur84129%_
                                                 _%rest184153%_
                                                 _%rest284174%_))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28415584163%_))
                                  (let ((_%hd8416084186%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28415584163%_)))
                                        (_%tl8416184188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28415584163%_))))
                                    (let* ((_%x284191%_ _%hd8416084186%_)
                                           (_%rest284193%_ _%tl8416184188%_))
                                      (declare (not safe))
                                      (_%K8415984183%_
                                       _%rest284193%_
                                       _%x284191%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8415784171%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18413484142%_))
                        (let ((_%hd8413984198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18413484142%_)))
                              (_%tl8414084200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18413484142%_))))
                          (let* ((_%x184203%_ _%hd8413984198%_)
                                 (_%rest184205%_ _%tl8414084200%_))
                            (declare (not safe))
                            (_%K8413884195%_ _%rest184205%_ _%x184203%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8413684150%_)))))))))))
    (define filter-map
      (lambda _g87425_
        (let ((_g87424_ (let () (declare (not safe)) (##length _g87425_))))
          (cond ((let () (declare (not safe)) (##fx= _g87424_ 2))
                 (apply (lambda (_%f84103%_ _%lst84104%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84103%_ _%lst84104%_)))
                        _g87425_))
                ((let () (declare (not safe)) (##fx= _g87424_ 3))
                 (apply (lambda (_%f84106%_ _%lst184107%_ _%lst284108%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84106%_
                             _%lst184107%_
                             _%lst284108%_)))
                        _g87425_))
                ((let () (declare (not safe)) (##fx>= _g87424_ 3))
                 (apply filter-map* _g87425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87425_))))))
    (define filter-map*
      (lambda (_%f84088%_ . _%rest84089%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84088%_))
              (let ()
                (let ((_%f84093%_ _%f84088%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __filter-map* _%f84093%_ _%rest84089%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f84088%_)))))
    (define __filter-map*
      (lambda (_%f84064%_ . _%rest84065%_)
        (let ()
          (let ((_%f84068%_ _%f84064%_))
            (let ()
              (let _%recur84077%_ ((_%rest84079%_ _%rest84065%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84079%_))
                      (let ((_%$e84082%_
                             (let ((__tmp87426 (map car _%rest84079%_)))
                               (declare (not safe))
                               (##apply _%f84068%_ __tmp87426))))
                        (if _%$e84082%_
                            ((lambda (_%r84085%_)
                               (cons _%r84085%_
                                     (let ((__tmp87427
                                            (map cdr _%rest84079%_)))
                                       (declare (not safe))
                                       (_%recur84077%_ __tmp87427))))
                             _%$e84082%_)
                            (let ()
                              (let ((__tmp87428 (map cdr _%rest84079%_)))
                                (declare (not safe))
                                (_%recur84077%_ __tmp87428)))))
                      '()))))))))
    (define agetq__%
      (lambda (_%key84040%_ _%lst84042%_ _%default84044%_)
        (let ((_%$e84047%_
               (if (let () (declare (not safe)) (pair? _%lst84042%_))
                   (assq _%key84040%_ _%lst84042%_)
                   '#f)))
          (if _%$e84047%_
              (cdr _%$e84047%_)
              (if (let () (declare (not safe)) (procedure? _%default84044%_))
                  (let () (_%default84044%_ _%key84040%_))
                  (let () _%default84044%_))))))
    (define agetq__0
      (lambda (_%key84055%_ _%lst84056%_)
        (let ((_%default84058%_ '#f))
          (declare (not safe))
          (agetq__% _%key84055%_ _%lst84056%_ _%default84058%_))))
    (define agetq
      (lambda _g87430_
        (let ((_g87429_ (let () (declare (not safe)) (##length _g87430_))))
          (cond ((let () (declare (not safe)) (##fx= _g87429_ 2))
                 (apply (lambda (_%key84055%_ _%lst84056%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84055%_ _%lst84056%_)))
                        _g87430_))
                ((let () (declare (not safe)) (##fx= _g87429_ 3))
                 (apply (lambda (_%key84060%_ _%lst84061%_ _%default84062%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84060%_
                             _%lst84061%_
                             _%default84062%_)))
                        _g87430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87430_))))))
    (define agetv__%
      (lambda (_%key84015%_ _%lst84017%_ _%default84019%_)
        (let ((_%$e84022%_
               (if (let () (declare (not safe)) (pair? _%lst84017%_))
                   (assv _%key84015%_ _%lst84017%_)
                   '#f)))
          (if _%$e84022%_
              (cdr _%$e84022%_)
              (if (let () (declare (not safe)) (procedure? _%default84019%_))
                  (let () (_%default84019%_ _%key84015%_))
                  (let () _%default84019%_))))))
    (define agetv__0
      (lambda (_%key84030%_ _%lst84031%_)
        (let ((_%default84033%_ '#f))
          (declare (not safe))
          (agetv__% _%key84030%_ _%lst84031%_ _%default84033%_))))
    (define agetv
      (lambda _g87432_
        (let ((_g87431_ (let () (declare (not safe)) (##length _g87432_))))
          (cond ((let () (declare (not safe)) (##fx= _g87431_ 2))
                 (apply (lambda (_%key84030%_ _%lst84031%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84030%_ _%lst84031%_)))
                        _g87432_))
                ((let () (declare (not safe)) (##fx= _g87431_ 3))
                 (apply (lambda (_%key84035%_ _%lst84036%_ _%default84037%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84035%_
                             _%lst84036%_
                             _%default84037%_)))
                        _g87432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87432_))))))
    (define aget__%
      (lambda (_%key83990%_ _%lst83992%_ _%default83994%_)
        (let ((_%$e83997%_
               (if (let () (declare (not safe)) (pair? _%lst83992%_))
                   (assoc _%key83990%_ _%lst83992%_)
                   '#f)))
          (if _%$e83997%_
              (cdr _%$e83997%_)
              (if (let () (declare (not safe)) (procedure? _%default83994%_))
                  (let () (_%default83994%_ _%key83990%_))
                  (let () _%default83994%_))))))
    (define aget__0
      (lambda (_%key84005%_ _%lst84006%_)
        (let ((_%default84008%_ '#f))
          (declare (not safe))
          (aget__% _%key84005%_ _%lst84006%_ _%default84008%_))))
    (define aget
      (lambda _g87434_
        (let ((_g87433_ (let () (declare (not safe)) (##length _g87434_))))
          (cond ((let () (declare (not safe)) (##fx= _g87433_ 2))
                 (apply (lambda (_%key84005%_ _%lst84006%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key84005%_ _%lst84006%_)))
                        _g87434_))
                ((let () (declare (not safe)) (##fx= _g87433_ 3))
                 (apply (lambda (_%key84010%_ _%lst84011%_ _%default84012%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key84010%_
                                     _%lst84011%_
                                     _%default84012%_)))
                        _g87434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87434_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key83919%_ _%lst83921%_ _%default83923%_)
        (let _%lp83926%_ ((_%rest83929%_ _%lst83921%_))
          (let* ((_%rest8393183941%_ _%rest83929%_)
                 (_%else8393383949%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83923%_))
                        (_%default83923%_ _%key83919%_)
                        _%default83923%_)))
                 (_%K8393583958%_
                  (lambda (_%rest83952%_ _%v83953%_ _%k83955%_)
                    (if (eq? _%k83955%_ _%key83919%_)
                        _%v83953%_
                        (let ()
                          (declare (not safe))
                          (_%lp83926%_ _%rest83952%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8393183941%_))
                (let ((_%hd8393683961%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8393183941%_)))
                      (_%tl8393783963%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8393183941%_))))
                  (let ((_%k83966%_ _%hd8393683961%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8393783963%_))
                        (let ((_%hd8393883968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8393783963%_)))
                              (_%tl8393983970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8393783963%_))))
                          (let* ((_%v83973%_ _%hd8393883968%_)
                                 (_%rest83975%_ _%tl8393983970%_))
                            (declare (not safe))
                            (_%K8393583958%_
                             _%rest83975%_
                             _%v83973%_
                             _%k83966%_)))
                        (let () (declare (not safe)) (_%else8393383949%_)))))
                (let () (declare (not safe)) (_%else8393383949%_)))))))
    (define pgetq__0
      (lambda (_%key83980%_ _%lst83981%_)
        (let ((_%default83983%_ '#f))
          (declare (not safe))
          (pgetq__% _%key83980%_ _%lst83981%_ _%default83983%_))))
    (define pgetq
      (lambda _g87436_
        (let ((_g87435_ (let () (declare (not safe)) (##length _g87436_))))
          (cond ((let () (declare (not safe)) (##fx= _g87435_ 2))
                 (apply (lambda (_%key83980%_ _%lst83981%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key83980%_ _%lst83981%_)))
                        _g87436_))
                ((let () (declare (not safe)) (##fx= _g87435_ 3))
                 (apply (lambda (_%key83985%_ _%lst83986%_ _%default83987%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key83985%_
                             _%lst83986%_
                             _%default83987%_)))
                        _g87436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87436_))))))
    (define pgetv__%
      (lambda (_%key83848%_ _%lst83850%_ _%default83852%_)
        (let _%lp83855%_ ((_%rest83858%_ _%lst83850%_))
          (let* ((_%rest8386083870%_ _%rest83858%_)
                 (_%else8386283878%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83852%_))
                        (_%default83852%_ _%key83848%_)
                        _%default83852%_)))
                 (_%K8386483887%_
                  (lambda (_%rest83881%_ _%v83882%_ _%k83884%_)
                    (if (eqv? _%k83884%_ _%key83848%_)
                        _%v83882%_
                        (let ()
                          (declare (not safe))
                          (_%lp83855%_ _%rest83881%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8386083870%_))
                (let ((_%hd8386583890%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8386083870%_)))
                      (_%tl8386683892%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8386083870%_))))
                  (let ((_%k83895%_ _%hd8386583890%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8386683892%_))
                        (let ((_%hd8386783897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8386683892%_)))
                              (_%tl8386883899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8386683892%_))))
                          (let* ((_%v83902%_ _%hd8386783897%_)
                                 (_%rest83904%_ _%tl8386883899%_))
                            (declare (not safe))
                            (_%K8386483887%_
                             _%rest83904%_
                             _%v83902%_
                             _%k83895%_)))
                        (let () (declare (not safe)) (_%else8386283878%_)))))
                (let () (declare (not safe)) (_%else8386283878%_)))))))
    (define pgetv__0
      (lambda (_%key83909%_ _%lst83910%_)
        (let ((_%default83912%_ '#f))
          (declare (not safe))
          (pgetv__% _%key83909%_ _%lst83910%_ _%default83912%_))))
    (define pgetv
      (lambda _g87438_
        (let ((_g87437_ (let () (declare (not safe)) (##length _g87438_))))
          (cond ((let () (declare (not safe)) (##fx= _g87437_ 2))
                 (apply (lambda (_%key83909%_ _%lst83910%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key83909%_ _%lst83910%_)))
                        _g87438_))
                ((let () (declare (not safe)) (##fx= _g87437_ 3))
                 (apply (lambda (_%key83914%_ _%lst83915%_ _%default83916%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key83914%_
                             _%lst83915%_
                             _%default83916%_)))
                        _g87438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87438_))))))
    (define pget__%
      (lambda (_%key83777%_ _%lst83779%_ _%default83781%_)
        (let _%lp83784%_ ((_%rest83787%_ _%lst83779%_))
          (let* ((_%rest8378983799%_ _%rest83787%_)
                 (_%else8379183807%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83781%_))
                        (_%default83781%_ _%key83777%_)
                        _%default83781%_)))
                 (_%K8379383816%_
                  (lambda (_%rest83810%_ _%v83811%_ _%k83813%_)
                    (if (equal? _%k83813%_ _%key83777%_)
                        _%v83811%_
                        (let ()
                          (declare (not safe))
                          (_%lp83784%_ _%rest83810%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8378983799%_))
                (let ((_%hd8379483819%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8378983799%_)))
                      (_%tl8379583821%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8378983799%_))))
                  (let ((_%k83824%_ _%hd8379483819%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8379583821%_))
                        (let ((_%hd8379683826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8379583821%_)))
                              (_%tl8379783828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8379583821%_))))
                          (let* ((_%v83831%_ _%hd8379683826%_)
                                 (_%rest83833%_ _%tl8379783828%_))
                            (declare (not safe))
                            (_%K8379383816%_
                             _%rest83833%_
                             _%v83831%_
                             _%k83824%_)))
                        (let () (declare (not safe)) (_%else8379183807%_)))))
                (let () (declare (not safe)) (_%else8379183807%_)))))))
    (define pget__0
      (lambda (_%key83838%_ _%lst83839%_)
        (let ((_%default83841%_ '#f))
          (declare (not safe))
          (pget__% _%key83838%_ _%lst83839%_ _%default83841%_))))
    (define pget
      (lambda _g87440_
        (let ((_g87439_ (let () (declare (not safe)) (##length _g87440_))))
          (cond ((let () (declare (not safe)) (##fx= _g87439_ 2))
                 (apply (lambda (_%key83838%_ _%lst83839%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key83838%_ _%lst83839%_)))
                        _g87440_))
                ((let () (declare (not safe)) (##fx= _g87439_ 3))
                 (apply (lambda (_%key83843%_ _%lst83844%_ _%default83845%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key83843%_
                                     _%lst83844%_
                                     _%default83845%_)))
                        _g87440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87440_))))))
    (define find
      (lambda (_%pred83761%_ _%lst83762%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred83761%_))
              (let ()
                (let ((_%pred83766%_ _%pred83761%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__find _%pred83766%_ _%lst83762%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred83761%_)))))
    (define __find
      (lambda (_%pred83744%_ _%lst83745%_)
        (let ()
          (let ((_%pred83748%_ _%pred83744%_))
            (let ()
              (let ((_%$e83757%_
                     (let ()
                       (declare (not safe))
                       (__memf _%pred83748%_ _%lst83745%_))))
                (if _%$e83757%_
                    (let () (declare (not safe)) (##car _%$e83757%_))
                    (let () '#f))))))))
    (define memf
      (lambda (_%proc83729%_ _%lst83730%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83729%_))
              (let ()
                (let ((_%proc83734%_ _%proc83729%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__memf _%proc83734%_ _%lst83730%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc83729%_)))))
    (define __memf
      (lambda (_%proc83679%_ _%lst83680%_)
        (let ()
          (let ((_%proc83683%_ _%proc83679%_))
            (let ()
              (let _%lp83692%_ ((_%rest83694%_ _%lst83680%_))
                (let* ((_%rest8369583703%_ _%rest83694%_)
                       (_%else8369783711%_ (lambda () '#f))
                       (_%K8369983717%_
                        (lambda (_%tl83714%_ _%hd83715%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83683%_ _%hd83715%_))
                              _%rest83694%_
                              (let ()
                                (declare (not safe))
                                (_%lp83692%_ _%tl83714%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8369583703%_))
                      (let ((_%hd8370083720%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8369583703%_)))
                            (_%tl8370183722%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8369583703%_))))
                        (let* ((_%hd83725%_ _%hd8370083720%_)
                               (_%tl83727%_ _%tl8370183722%_))
                          (declare (not safe))
                          (_%K8369983717%_ _%tl83727%_ _%hd83725%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8369783711%_))))))))))
    (define remove1
      (lambda (_%el83632%_ _%lst83634%_)
        (let _%lp83637%_ ((_%rest83640%_ _%lst83634%_) (_%r83642%_ '()))
          (let* ((_%rest8364483652%_ _%rest83640%_)
                 (_%else8364683660%_ (lambda () _%lst83634%_))
                 (_%K8364883667%_
                  (lambda (_%rest83663%_ _%hd83664%_)
                    (if (equal? _%el83632%_ _%hd83664%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83663%_ _%r83642%_))
                        (let ((__tmp87441 (cons _%hd83664%_ _%r83642%_)))
                          (declare (not safe))
                          (_%lp83637%_ _%rest83663%_ __tmp87441))))))
            (if (let () (declare (not safe)) (##pair? _%rest8364483652%_))
                (let ((_%hd8364983670%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8364483652%_)))
                      (_%tl8365083672%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8364483652%_))))
                  (let* ((_%hd83675%_ _%hd8364983670%_)
                         (_%rest83677%_ _%tl8365083672%_))
                    (declare (not safe))
                    (_%K8364883667%_ _%rest83677%_ _%hd83675%_)))
                (let () (declare (not safe)) (_%else8364683660%_)))))))
    (define remv1
      (lambda (_%el83585%_ _%lst83587%_)
        (let _%lp83590%_ ((_%rest83593%_ _%lst83587%_) (_%r83595%_ '()))
          (let* ((_%rest8359783605%_ _%rest83593%_)
                 (_%else8359983613%_ (lambda () _%lst83587%_))
                 (_%K8360183620%_
                  (lambda (_%rest83616%_ _%hd83617%_)
                    (if (eqv? _%el83585%_ _%hd83617%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83616%_ _%r83595%_))
                        (let ((__tmp87442 (cons _%hd83617%_ _%r83595%_)))
                          (declare (not safe))
                          (_%lp83590%_ _%rest83616%_ __tmp87442))))))
            (if (let () (declare (not safe)) (##pair? _%rest8359783605%_))
                (let ((_%hd8360283623%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8359783605%_)))
                      (_%tl8360383625%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8359783605%_))))
                  (let* ((_%hd83628%_ _%hd8360283623%_)
                         (_%rest83630%_ _%tl8360383625%_))
                    (declare (not safe))
                    (_%K8360183620%_ _%rest83630%_ _%hd83628%_)))
                (let () (declare (not safe)) (_%else8359983613%_)))))))
    (define remq1
      (lambda (_%el83538%_ _%lst83540%_)
        (let _%lp83543%_ ((_%rest83546%_ _%lst83540%_) (_%r83548%_ '()))
          (let* ((_%rest8355083558%_ _%rest83546%_)
                 (_%else8355283566%_ (lambda () _%lst83540%_))
                 (_%K8355483573%_
                  (lambda (_%rest83569%_ _%hd83570%_)
                    (if (eq? _%el83538%_ _%hd83570%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83569%_ _%r83548%_))
                        (let ((__tmp87443 (cons _%hd83570%_ _%r83548%_)))
                          (declare (not safe))
                          (_%lp83543%_ _%rest83569%_ __tmp87443))))))
            (if (let () (declare (not safe)) (##pair? _%rest8355083558%_))
                (let ((_%hd8355583576%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8355083558%_)))
                      (_%tl8355683578%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8355083558%_))))
                  (let* ((_%hd83581%_ _%hd8355583576%_)
                         (_%rest83583%_ _%tl8355683578%_))
                    (declare (not safe))
                    (_%K8355483573%_ _%rest83583%_ _%hd83581%_)))
                (let () (declare (not safe)) (_%else8355283566%_)))))))
    (define remf
      (lambda (_%proc83523%_ _%lst83524%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83523%_))
              (let ()
                (let ((_%proc83528%_ _%proc83523%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__remf _%proc83528%_ _%lst83524%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc83523%_)))))
    (define __remf
      (lambda (_%proc83472%_ _%lst83473%_)
        (let ()
          (let ((_%proc83476%_ _%proc83472%_))
            (let ()
              (let _%lp83485%_ ((_%rest83487%_ _%lst83473%_) (_%r83488%_ '()))
                (let* ((_%rest8348983497%_ _%rest83487%_)
                       (_%else8349183505%_ (lambda () _%lst83473%_))
                       (_%K8349383511%_
                        (lambda (_%rest83508%_ _%hd83509%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83476%_ _%hd83509%_))
                              (let ()
                                (declare (not safe))
                                (__foldl1 cons _%rest83508%_ _%r83488%_))
                              (let ((__tmp87444 (cons _%hd83509%_ _%r83488%_)))
                                (declare (not safe))
                                (_%lp83485%_ _%rest83508%_ __tmp87444))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8348983497%_))
                      (let ((_%hd8349483514%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8348983497%_)))
                            (_%tl8349583516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8348983497%_))))
                        (let* ((_%hd83519%_ _%hd8349483514%_)
                               (_%rest83521%_ _%tl8349583516%_))
                          (declare (not safe))
                          (_%K8349383511%_ _%rest83521%_ _%hd83519%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8349183505%_))))))))))
    (define 1+
      (lambda (_%x83458%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83458%_))
              (let ()
                (let ((_%x83462%_ _%x83458%_))
                  (let () (let () (declare (not safe)) (__1+ _%x83462%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x83458%_)))))
    (define __1+
      (lambda (_%x83446%_)
        (let () (let ((_%x83449%_ _%x83446%_)) (let () (+ _%x83449%_ '1))))))
    (define 1-
      (lambda (_%x83432%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83432%_))
              (let ()
                (let ((_%x83436%_ _%x83432%_))
                  (let () (let () (declare (not safe)) (__1- _%x83436%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x83432%_)))))
    (define __1-
      (lambda (_%x83420%_)
        (let () (let ((_%x83423%_ _%x83420%_)) (let () (- _%x83423%_ '1))))))
    (define fx1+
      (lambda (_%x83406%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83406%_))
              (let ()
                (let ((_%x83410%_ _%x83406%_))
                  (let () (let () (declare (not safe)) (__fx1+ _%x83410%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x83406%_)))))
    (define __fx1+
      (lambda (_%x83394%_)
        (let ()
          (let ((_%x83397%_ _%x83394%_))
            (let () (let () (declare (not safe)) (##fx+ _%x83397%_ '1)))))))
    (define fx1-
      (lambda (_%x83380%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83380%_))
              (let ()
                (let ((_%x83384%_ _%x83380%_))
                  (let () (let () (declare (not safe)) (__fx1- _%x83384%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x83380%_)))))
    (define __fx1-
      (lambda (_%x83368%_)
        (let ()
          (let ((_%x83371%_ _%x83368%_))
            (let () (let () (declare (not safe)) (##fx- _%x83371%_ '1)))))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83365%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83365%_))
              (let () (declare (not safe)) (##fx>= _%x83365%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83362%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83362%_))
              (let () (declare (not safe)) (##fx> _%x83362%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83359%_)
        (let () (let () (declare (not safe)) (##fx= _%x83359%_ '0)))))
    (define fx<0?
      (lambda (_%x83356%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83356%_))
              (let () (declare (not safe)) (##fx< _%x83356%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83353%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83353%_))
              (let () (declare (not safe)) (##fx<= _%x83353%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83350%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83350%_))
              (let ((__tmp87445 (uninterned-symbol? _%x83350%_)))
                (declare (not safe))
                (not __tmp87445))
              '#f))))
    (define display-as-string
      (lambda (_%x83335%_ _%port83336%_)
        (let ()
          (if (output-port? _%port83336%_)
              (let ()
                (let ((_%port83340%_ _%port83336%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__display-as-string _%x83335%_ _%port83340%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port83336%_)))))
    (define __display-as-string
      (lambda (_%x83292%_ _%port83293%_)
        (let ()
          (let ((_%port83296%_ _%port83293%_))
            (let ()
              (if (or (let () (declare (not safe)) (string? _%x83292%_))
                      (let () (declare (not safe)) (symbol? _%x83292%_))
                      (let () (declare (not safe)) (keyword? _%x83292%_))
                      (let () (declare (not safe)) (number? _%x83292%_))
                      (let () (declare (not safe)) (char? _%x83292%_)))
                  (let () (display _%x83292%_ _%port83296%_))
                  (if (let () (declare (not safe)) (pair? _%x83292%_))
                      (let ()
                        (let ((__tmp87446 (car _%x83292%_)))
                          (declare (not safe))
                          (display-as-string __tmp87446 _%port83296%_))
                        (let ((__tmp87447 (cdr _%x83292%_)))
                          (declare (not safe))
                          (display-as-string __tmp87447 _%port83296%_)))
                      (if (let () (declare (not safe)) (vector? _%x83292%_))
                          (let ()
                            (vector-for-each
                             (lambda (_%g8331983321%_)
                               (let ()
                                 (declare (not safe))
                                 (display-as-string
                                  _%g8331983321%_
                                  _%port83296%_)))
                             _%x83292%_))
                          (if (or (let ()
                                    (declare (not safe))
                                    (null? _%x83292%_))
                                  (let ()
                                    (declare (not safe))
                                    (eq? _%x83292%_ '#!void))
                                  (let ()
                                    (declare (not safe))
                                    (eof-object? _%x83292%_))
                                  (let ()
                                    (declare (not safe))
                                    (boolean? _%x83292%_)))
                              (let () '#!void)
                              (let ()
                                (error '"cannot convert as string"
                                       _%x83292%_)))))))))))
    (define as-string__0
      (lambda (_%x83275%_)
        (if (let () (declare (not safe)) (string? _%x83275%_))
            (let () _%x83275%_)
            (if (let () (declare (not safe)) (symbol? _%x83275%_))
                (let () (symbol->string _%x83275%_))
                (if (let () (declare (not safe)) (keyword? _%x83275%_))
                    (let () (keyword->string _%x83275%_))
                    (if (let () (declare (not safe)) (number? _%x83275%_))
                        (let () (number->string _%x83275%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8328183283%_)
                             (let ()
                               (declare (not safe))
                               (display-as-string
                                _%x83275%_
                                _%g8328183283%_)))))))))))
    (define as-string__1
      (lambda _%args83286%_
        (call-with-output-string
         '()
         (lambda (_%g8328783289%_)
           (let ()
             (declare (not safe))
             (display-as-string _%args83286%_ _%g8328783289%_))))))
    (define as-string
      (lambda _g87449_
        (let ((_g87448_ (let () (declare (not safe)) (##length _g87449_))))
          (cond ((let () (declare (not safe)) (##fx= _g87448_ 1))
                 (apply (lambda (_%x83275%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83275%_)))
                        _g87449_))
                (#t (apply as-string__1 _g87449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87449_))))))
    (define make-symbol__0
      (lambda (_%x83271%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83271%_))
            _%x83271%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83271%_))))))
    (define make-symbol__1
      (lambda _%args83273%_ (string->symbol (apply as-string _%args83273%_))))
    (define make-symbol
      (lambda _g87451_
        (let ((_g87450_ (let () (declare (not safe)) (##length _g87451_))))
          (cond ((let () (declare (not safe)) (##fx= _g87450_ 1))
                 (apply (lambda (_%x83271%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83271%_)))
                        _g87451_))
                (#t (apply make-symbol__1 _g87451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87451_))))))
    (define make-keyword__0
      (lambda (_%x83267%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83267%_))
            _%x83267%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83267%_))))))
    (define make-keyword__1
      (lambda _%args83269%_ (string->keyword (apply as-string _%args83269%_))))
    (define make-keyword
      (lambda _g87453_
        (let ((_g87452_ (let () (declare (not safe)) (##length _g87453_))))
          (cond ((let () (declare (not safe)) (##fx= _g87452_ 1))
                 (apply (lambda (_%x83267%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83267%_)))
                        _g87453_))
                (#t (apply make-keyword__1 _g87453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87453_))))))
    (define interned-keyword?
      (lambda (_%x83264%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83264%_))
              (let ((__tmp87454 (uninterned-keyword? _%x83264%_)))
                (declare (not safe))
                (not __tmp87454))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83250%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83250%_))
              (let ()
                (let ((_%sym83254%_ _%sym83250%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__symbol->keyword _%sym83254%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83250%_)))))
    (define __symbol->keyword
      (lambda (_%sym83238%_)
        (let ()
          (let ((_%sym83241%_ _%sym83238%_))
            (let ()
              (if (uninterned-symbol? _%sym83241%_)
                  (let ((__tmp87455
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83241%_))))
                    (declare (not safe))
                    (##string->uninterned-keyword __tmp87455))
                  (let ((__tmp87456
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83241%_))))
                    (declare (not safe))
                    (##string->keyword __tmp87456))))))))
    (define keyword->symbol
      (lambda (_%sym83224%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83224%_))
              (let ()
                (let ((_%sym83228%_ _%sym83224%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__keyword->symbol _%sym83228%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83224%_)))))
    (define __keyword->symbol
      (lambda (_%sym83212%_)
        (let ()
          (let ((_%sym83215%_ _%sym83212%_))
            (let ()
              (if (uninterned-keyword? _%sym83215%_)
                  (let ((__tmp87457
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83215%_))))
                    (declare (not safe))
                    (##string->uninterned-symbol __tmp87457))
                  (let ((__tmp87458
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83215%_))))
                    (declare (not safe))
                    (##string->symbol __tmp87458))))))))
    (define bytes->string__%
      (lambda (_%bstr83177%_ _%enc83178%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83177%_))
              (let ()
                (let ((_%bstr83182%_ _%bstr83177%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83178%_))
                      (let ()
                        (let ((_%enc83192%_ _%enc83178%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bytes->string__%
                               _%bstr83182%_
                               _%enc83192%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83178%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83177%_)))))
    (define bytes->string__0
      (lambda (_%bstr83205%_)
        (let ((_%enc83207%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83205%_ _%enc83207%_))))
    (define bytes->string
      (lambda _g87460_
        (let ((_g87459_ (let () (declare (not safe)) (##length _g87460_))))
          (cond ((let () (declare (not safe)) (##fx= _g87459_ 1))
                 (apply (lambda (_%bstr83205%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83205%_)))
                        _g87460_))
                ((let () (declare (not safe)) (##fx= _g87459_ 2))
                 (apply (lambda (_%bstr83209%_ _%enc83210%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83209%_ _%enc83210%_)))
                        _g87460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87460_))))))
    (define __bytes->string__%
      (lambda (_%bstr83136%_ _%enc83137%_)
        (let ()
          (let ((_%bstr83140%_ _%bstr83136%_))
            (let ((_%enc83148%_ _%enc83137%_))
              (let ()
                (if (eq? _%enc83148%_ 'UTF-8)
                    (let ()
                      (declare (not safe))
                      (##utf8->string _%bstr83140%_))
                    (let* ((_%in83157%_
                            (open-input-u8vector
                             (cons 'char-encoding:
                                   (cons _%enc83148%_
                                         (cons 'init:
                                               (cons _%bstr83140%_ '()))))))
                           (_%len83159%_ (u8vector-length _%bstr83140%_))
                           (_%out83161%_ (make-string _%len83159%_))
                           (_%n83163%_
                            (read-substring
                             _%out83161%_
                             '0
                             _%len83159%_
                             _%in83157%_)))
                      (string-shrink! _%out83161%_ _%n83163%_)
                      _%out83161%_))))))))
    (define __bytes->string__0
      (lambda (_%bstr83169%_)
        (let ((_%enc83171%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83169%_ _%enc83171%_))))
    (define __bytes->string
      (lambda _g87462_
        (let ((_g87461_ (let () (declare (not safe)) (##length _g87462_))))
          (cond ((let () (declare (not safe)) (##fx= _g87461_ 1))
                 (apply (lambda (_%bstr83169%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83169%_)))
                        _g87462_))
                ((let () (declare (not safe)) (##fx= _g87461_ 2))
                 (apply (lambda (_%bstr83173%_ _%enc83174%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83173%_ _%enc83174%_)))
                        _g87462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87462_))))))
    (define string->bytes__%
      (lambda (_%str83100%_ _%enc83101%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83100%_))
              (let ()
                (let ((_%str83105%_ _%str83100%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83101%_))
                      (let ()
                        (let ((_%enc83115%_ _%enc83101%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string->bytes__%
                               _%str83105%_
                               _%enc83115%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83101%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str83100%_)))))
    (define string->bytes__0
      (lambda (_%str83128%_)
        (let ((_%enc83130%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83128%_ _%enc83130%_))))
    (define string->bytes
      (lambda _g87464_
        (let ((_g87463_ (let () (declare (not safe)) (##length _g87464_))))
          (cond ((let () (declare (not safe)) (##fx= _g87463_ 1))
                 (apply (lambda (_%str83128%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83128%_)))
                        _g87464_))
                ((let () (declare (not safe)) (##fx= _g87463_ 2))
                 (apply (lambda (_%str83132%_ _%enc83133%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83132%_ _%enc83133%_)))
                        _g87464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87464_))))))
    (define __string->bytes__%
      (lambda (_%str83068%_ _%enc83069%_)
        (let ()
          (let ((_%str83072%_ _%str83068%_))
            (let ((_%enc83080%_ _%enc83069%_))
              (let ()
                (if (eq? _%enc83080%_ 'UTF-8)
                    (let () (declare (not safe)) (##string->utf8 _%str83072%_))
                    (let ((__tmp87465
                           (let ()
                             (declare (not safe))
                             (##string-length _%str83072%_))))
                      (declare (not safe))
                      (substring->bytes__%
                       _%str83072%_
                       '0
                       __tmp87465
                       _%enc83080%_)))))))))
    (define __string->bytes__0
      (lambda (_%str83092%_)
        (let ((_%enc83094%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83092%_ _%enc83094%_))))
    (define __string->bytes
      (lambda _g87467_
        (let ((_g87466_ (let () (declare (not safe)) (##length _g87467_))))
          (cond ((let () (declare (not safe)) (##fx= _g87466_ 1))
                 (apply (lambda (_%str83092%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83092%_)))
                        _g87467_))
                ((let () (declare (not safe)) (##fx= _g87466_ 2))
                 (apply (lambda (_%str83096%_ _%enc83097%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83096%_ _%enc83097%_)))
                        _g87467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87467_))))))
    (define substring->bytes__%
      (lambda (_%str83016%_ _%start83017%_ _%end83018%_ _%enc83019%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83016%_))
              (let ()
                (let ((_%str83023%_ _%str83016%_))
                  (if (let ()
                        (declare (not safe))
                        (nonnegative-fixnum? _%start83017%_))
                      (let ()
                        (let ((_%start83033%_ _%start83017%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%end83018%_))
                              (let ()
                                (let ((_%end83043%_ _%end83018%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__substring->bytes__%
                                       _%str83023%_
                                       _%start83033%_
                                       _%end83043%_
                                       _%enc83019%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%end83018%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start83017%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str83016%_)))))
    (define substring->bytes__0
      (lambda (_%str83056%_ _%start83057%_ _%end83058%_)
        (let ((_%enc83060%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83056%_
           _%start83057%_
           _%end83058%_
           _%enc83060%_))))
    (define substring->bytes
      (lambda _g87469_
        (let ((_g87468_ (let () (declare (not safe)) (##length _g87469_))))
          (cond ((let () (declare (not safe)) (##fx= _g87468_ 3))
                 (apply (lambda (_%str83056%_ _%start83057%_ _%end83058%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83056%_
                             _%start83057%_
                             _%end83058%_)))
                        _g87469_))
                ((let () (declare (not safe)) (##fx= _g87468_ 4))
                 (apply (lambda (_%str83062%_
                                 _%start83063%_
                                 _%end83064%_
                                 _%enc83065%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83062%_
                             _%start83063%_
                             _%end83064%_
                             _%enc83065%_)))
                        _g87469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87469_))))))
    (define __substring->bytes__%
      (lambda (_%str82968%_ _%start82969%_ _%end82970%_ _%enc82971%_)
        (let ()
          (let ((_%str82974%_ _%str82968%_))
            (let ((_%start82982%_ _%start82969%_))
              (let ((_%end82990%_ _%end82970%_))
                (let ()
                  (if (eq? _%enc82971%_ 'UTF-8)
                      (string->utf8 _%str82974%_ _%start82982%_ _%end82990%_)
                      (let ((_%out82999%_
                             (open-output-u8vector
                              (cons 'char-encoding: (cons _%enc82971%_ '())))))
                        (write-substring
                         _%str82974%_
                         _%start82982%_
                         _%end82990%_
                         _%out82999%_)
                        (get-output-u8vector _%out82999%_))))))))))
    (define __substring->bytes__0
      (lambda (_%str83004%_ _%start83005%_ _%end83006%_)
        (let ((_%enc83008%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str83004%_
           _%start83005%_
           _%end83006%_
           _%enc83008%_))))
    (define __substring->bytes
      (lambda _g87471_
        (let ((_g87470_ (let () (declare (not safe)) (##length _g87471_))))
          (cond ((let () (declare (not safe)) (##fx= _g87470_ 3))
                 (apply (lambda (_%str83004%_ _%start83005%_ _%end83006%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str83004%_
                             _%start83005%_
                             _%end83006%_)))
                        _g87471_))
                ((let () (declare (not safe)) (##fx= _g87470_ 4))
                 (apply (lambda (_%str83010%_
                                 _%start83011%_
                                 _%end83012%_
                                 _%enc83013%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83010%_
                             _%start83011%_
                             _%end83012%_
                             _%enc83013%_)))
                        _g87471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87471_))))))
    (define string-empty?
      (lambda (_%str82953%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82953%_))
              (let ()
                (let ((_%str82957%_ _%str82953%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__string-empty? _%str82957%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str82953%_)))))
    (define __string-empty?
      (lambda (_%str82941%_)
        (let ()
          (let ((_%str82944%_ _%str82941%_))
            (let ()
              (let ((__tmp87472
                     (let ()
                       (declare (not safe))
                       (##string-length _%str82944%_))))
                (declare (not safe))
                (##fxzero? __tmp87472)))))))
    (define string-index__%
      (lambda (_%str82893%_ _%char82894%_ _%start82895%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82893%_))
              (let ()
                (let ((_%str82899%_ _%str82893%_))
                  (if (let () (declare (not safe)) (char? _%char82894%_))
                      (let ()
                        (let ((_%char82909%_ _%char82894%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%start82895%_))
                              (let ()
                                (let ((_%start82919%_ _%start82895%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__string-index__%
                                       _%str82899%_
                                       _%char82909%_
                                       _%start82919%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%start82895%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char82894%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str82893%_)))))
    (define string-index__0
      (lambda (_%str82932%_ _%char82933%_)
        (let ((_%start82935%_ '0))
          (declare (not safe))
          (string-index__% _%str82932%_ _%char82933%_ _%start82935%_))))
    (define string-index
      (lambda _g87474_
        (let ((_g87473_ (let () (declare (not safe)) (##length _g87474_))))
          (cond ((let () (declare (not safe)) (##fx= _g87473_ 2))
                 (apply (lambda (_%str82932%_ _%char82933%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str82932%_ _%char82933%_)))
                        _g87474_))
                ((let () (declare (not safe)) (##fx= _g87473_ 3))
                 (apply (lambda (_%str82937%_ _%char82938%_ _%start82939%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str82937%_
                             _%char82938%_
                             _%start82939%_)))
                        _g87474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87474_))))))
    (define __string-index__%
      (lambda (_%str82832%_ _%char82833%_ _%start82834%_)
        (let ()
          (let ((_%str82837%_ _%str82832%_))
            (let ((_%char82845%_ _%char82833%_))
              (let ((_%start82853%_ _%start82834%_))
                (let ()
                  (let ((_%len82862%_
                         (let ()
                           (declare (not safe))
                           (##string-length _%str82837%_))))
                    (let _%lp82864%_ ((_%k82866%_ _%start82853%_))
                      (let ((_%k82868%_ _%k82866%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k82868%_ _%len82862%_))
                            (if (eq? _%char82845%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str82837%_ _%k82868%_)))
                                _%k82868%_
                                (let ((__tmp87475
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k82868%_ '1))))
                                  (declare (not safe))
                                  (_%lp82864%_ __tmp87475)))
                            '#f)))))))))))
    (define __string-index__0
      (lambda (_%str82883%_ _%char82884%_)
        (let ((_%start82886%_ '0))
          (declare (not safe))
          (__string-index__% _%str82883%_ _%char82884%_ _%start82886%_))))
    (define __string-index
      (lambda _g87477_
        (let ((_g87476_ (let () (declare (not safe)) (##length _g87477_))))
          (cond ((let () (declare (not safe)) (##fx= _g87476_ 2))
                 (apply (lambda (_%str82883%_ _%char82884%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str82883%_ _%char82884%_)))
                        _g87477_))
                ((let () (declare (not safe)) (##fx= _g87476_ 3))
                 (apply (lambda (_%str82888%_ _%char82889%_ _%start82890%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str82888%_
                             _%char82889%_
                             _%start82890%_)))
                        _g87477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87477_))))))
    (define string-rindex__%
      (lambda (_%str82793%_ _%char82794%_ _%start82795%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82793%_))
              (let ()
                (let ((_%str82799%_ _%str82793%_))
                  (if (let () (declare (not safe)) (char? _%char82794%_))
                      (let ()
                        (let ((_%char82809%_ _%char82794%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-rindex__%
                               _%str82799%_
                               _%char82809%_
                               _%start82795%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char82794%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str82793%_)))))
    (define string-rindex__0
      (lambda (_%str82822%_ _%char82823%_)
        (let ((_%start82825%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str82822%_ _%char82823%_ _%start82825%_))))
    (define string-rindex
      (lambda _g87479_
        (let ((_g87478_ (let () (declare (not safe)) (##length _g87479_))))
          (cond ((let () (declare (not safe)) (##fx= _g87478_ 2))
                 (apply (lambda (_%str82822%_ _%char82823%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str82822%_ _%char82823%_)))
                        _g87479_))
                ((let () (declare (not safe)) (##fx= _g87478_ 3))
                 (apply (lambda (_%str82827%_ _%char82828%_ _%start82829%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str82827%_
                             _%char82828%_
                             _%start82829%_)))
                        _g87479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87479_))))))
    (define __string-rindex__%
      (lambda (_%str82735%_ _%char82736%_ _%start82737%_)
        (let ()
          (let ((_%str82740%_ _%str82735%_))
            (let ((_%char82748%_ _%char82736%_))
              (let ()
                (let* ((_%len82757%_
                        (let ()
                          (declare (not safe))
                          (##string-length _%str82740%_)))
                       (_%start82759%_
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _%start82737%_))
                            _%start82737%_
                            (let ()
                              (declare (not safe))
                              (##fx- _%len82757%_ '1)))))
                  (let _%lp82762%_ ((_%k82764%_ _%start82759%_))
                    (let ((_%k82766%_ _%k82764%_))
                      (if (let () (declare (not safe)) (##fx>= _%k82766%_ '0))
                          (if (eq? _%char82748%_
                                   (let ()
                                     (declare (not safe))
                                     (##string-ref _%str82740%_ _%k82766%_)))
                              _%k82766%_
                              (let ((__tmp87480
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%k82766%_ '1))))
                                (declare (not safe))
                                (_%lp82762%_ __tmp87480)))
                          '#f))))))))))
    (define __string-rindex__0
      (lambda (_%str82783%_ _%char82784%_)
        (let ((_%start82786%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str82783%_ _%char82784%_ _%start82786%_))))
    (define __string-rindex
      (lambda _g87482_
        (let ((_g87481_ (let () (declare (not safe)) (##length _g87482_))))
          (cond ((let () (declare (not safe)) (##fx= _g87481_ 2))
                 (apply (lambda (_%str82783%_ _%char82784%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str82783%_ _%char82784%_)))
                        _g87482_))
                ((let () (declare (not safe)) (##fx= _g87481_ 3))
                 (apply (lambda (_%str82788%_ _%char82789%_ _%start82790%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str82788%_
                             _%char82789%_
                             _%start82790%_)))
                        _g87482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87482_))))))
    (define string-split
      (lambda (_%str82709%_ _%char82710%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82709%_))
              (let ()
                (let ((_%str82714%_ _%str82709%_))
                  (if (let () (declare (not safe)) (char? _%char82710%_))
                      (let ()
                        (let ((_%char82724%_ _%char82710%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-split _%str82714%_ _%char82724%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char82710%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str82709%_)))))
    (define __string-split
      (lambda (_%str82650%_ _%char82651%_)
        (let ()
          (let ((_%str82654%_ _%str82650%_))
            (let ((_%char82662%_ _%char82651%_))
              (let ()
                (let ((_%len82671%_
                       (let ()
                         (declare (not safe))
                         (##string-length _%str82654%_))))
                  (let _%lp82673%_ ((_%start82675%_ '0) (_%r82676%_ '()))
                    (let ()
                      (let ((_%start82679%_ _%start82675%_))
                        (let ((_%$e82692%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%str82654%_
                                  _%char82662%_
                                  _%start82679%_))))
                          (if _%$e82692%_
                              ((lambda (_%end82695%_)
                                 (let ((_%end82697%_ _%end82695%_))
                                   (let ((__tmp87484
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%end82697%_ '1)))
                                         (__tmp87483
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##substring
                                                   _%str82654%_
                                                   _%start82679%_
                                                   _%end82697%_))
                                                _%r82676%_)))
                                     (declare (not safe))
                                     (_%lp82673%_ __tmp87484 __tmp87483))))
                               _%$e82692%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##fx< _%start82679%_ _%len82671%_))
                                  (let ()
                                    (let ((__tmp87485
                                           (list (let ()
                                                   (declare (not safe))
                                                   (##substring
                                                    _%str82654%_
                                                    _%start82679%_
                                                    _%len82671%_)))))
                                      (declare (not safe))
                                      (__foldl1 cons __tmp87485 _%r82676%_)))
                                  (let () (reverse! _%r82676%_)))))))))))))))
    (define string-join
      (lambda (_%strs82500%_ _%join82501%_)
        (let ()
          (letrec ((_%join-length82504%_
                    (lambda (_%strs82588%_ _%jlen82589%_)
                      (let _%lp82591%_ ((_%rest82593%_ _%strs82588%_)
                                        (_%len82594%_ '0))
                        (let ((_%len82596%_ _%len82594%_))
                          (let* ((_%rest8260482612%_ _%rest82593%_)
                                 (_%else8260682620%_ (lambda () '0))
                                 (_%K8260882638%_
                                  (lambda (_%rest82623%_ _%hd82624%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd82624%_))
                                        (let ((_%hd82626%_ _%hd82624%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest82623%_))
                                              (let ((__tmp87486
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd82626%_))
                                                          _%jlen82589%_
                                                          _%len82596%_)))
                                                (declare (not safe))
                                                (_%lp82591%_
                                                 _%rest82623%_
                                                 __tmp87486))
                                              (let ((__tmp87487
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd82626%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87487
                                                       _%len82596%_))))
                                        (error '"expected string"
                                               _%hd82624%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8260482612%_))
                                (let ((_%hd8260982641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8260482612%_)))
                                      (_%tl8261082643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8260482612%_))))
                                  (let* ((_%hd82646%_ _%hd8260982641%_)
                                         (_%rest82648%_ _%tl8261082643%_))
                                    (declare (not safe))
                                    (_%K8260882638%_
                                     _%rest82648%_
                                     _%hd82646%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8260682620%_)))))))))
            (let* ((_%join82509%_
                    (if (let () (declare (not safe)) (char? _%join82501%_))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (##string _%join82501%_)))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82501%_))
                            (let () _%join82501%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82501%_)))))
                   (_%jlen82511%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join82509%_)))
                   (_%olen82513%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82504%_ _%strs82500%_ _%jlen82511%_)))
                   (_%ostr82515%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen82513%_))))
              (let _%lp82518%_ ((_%rest82520%_ _%strs82500%_) (_%k82521%_ '0))
                (let ()
                  (let ((_%k82524%_ _%k82521%_))
                    (let* ((_%rest8254082548%_ _%rest82520%_)
                           (_%else8254282556%_ (lambda () '""))
                           (_%K8254482576%_
                            (lambda (_%rest82559%_ _%hd82560%_)
                              (let ((_%hd82562%_ _%hd82560%_))
                                (let ((_%hdlen82574%_
                                       (let ()
                                         (declare (not safe))
                                         (##string-length _%hd82562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (pair? _%rest82559%_))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82562%_
                                           '0
                                           _%hdlen82574%_
                                           _%ostr82515%_
                                           _%k82524%_))
                                        (let ((__tmp87488
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82524%_
                                                        _%hdlen82574%_))))
                                          (declare (not safe))
                                          (##substring-move!
                                           _%join82509%_
                                           '0
                                           _%jlen82511%_
                                           _%ostr82515%_
                                           __tmp87488))
                                        (let ((__tmp87489
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82524%_
                                                        _%hdlen82574%_
                                                        _%jlen82511%_))))
                                          (declare (not safe))
                                          (_%lp82518%_
                                           _%rest82559%_
                                           __tmp87489)))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82562%_
                                           '0
                                           _%hdlen82574%_
                                           _%ostr82515%_
                                           _%k82524%_))
                                        _%ostr82515%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%rest8254082548%_))
                          (let ((_%hd8254582579%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest8254082548%_)))
                                (_%tl8254682581%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest8254082548%_))))
                            (let* ((_%hd82584%_ _%hd8254582579%_)
                                   (_%rest82586%_ _%tl8254682581%_))
                              (declare (not safe))
                              (_%K8254482576%_ _%rest82586%_ _%hd82584%_)))
                          (let ()
                            (declare (not safe))
                            (_%else8254282556%_))))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82426%_ _%port82427%_ _%start82428%_ _%end82429%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82426%_))
              (let ()
                (let ((_%bytes82433%_ _%bytes82426%_))
                  (if (input-port? _%port82427%_)
                      (let ()
                        (let ((_%port82443%_ _%port82427%_))
                          (if ((lambda (_%o82452%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82452%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82452%_ '0))
                                      (fx< _%o82452%_
                                           (u8vector-length _%bytes82433%_))))
                               _%start82428%_)
                              (let ()
                                (let ((_%start82456%_ _%start82428%_))
                                  (if ((lambda (_%o82465%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82465%_))
                                              (fx<= _%start82456%_
                                                    _%o82465%_
                                                    (u8vector-length
                                                     _%bytes82433%_))))
                                       _%end82429%_)
                                      (let ()
                                        (let ((_%end82469%_ _%end82429%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__read-u8vector__%
                                               _%bytes82433%_
                                               _%port82443%_
                                               _%start82456%_
                                               _%end82469%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82429%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82428%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82427%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes82426%_)))))
    (define read-u8vector__0
      (lambda (_%bytes82482%_ _%port82483%_)
        (let* ((_%start82485%_ '0) (_%end82487%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82482%_
           _%port82483%_
           _%start82485%_
           _%end82487%_))))
    (define read-u8vector__1
      (lambda (_%bytes82489%_ _%port82490%_ _%start82491%_)
        (let ((_%end82493%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82489%_
           _%port82490%_
           _%start82491%_
           _%end82493%_))))
    (define read-u8vector
      (lambda _g87491_
        (let ((_g87490_ (let () (declare (not safe)) (##length _g87491_))))
          (cond ((let () (declare (not safe)) (##fx= _g87490_ 2))
                 (apply (lambda (_%bytes82482%_ _%port82483%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82482%_ _%port82483%_)))
                        _g87491_))
                ((let () (declare (not safe)) (##fx= _g87490_ 3))
                 (apply (lambda (_%bytes82489%_ _%port82490%_ _%start82491%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82489%_
                             _%port82490%_
                             _%start82491%_)))
                        _g87491_))
                ((let () (declare (not safe)) (##fx= _g87490_ 4))
                 (apply (lambda (_%bytes82495%_
                                 _%port82496%_
                                 _%start82497%_
                                 _%end82498%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82495%_
                             _%port82496%_
                             _%start82497%_
                             _%end82498%_)))
                        _g87491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87491_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82365%_ _%port82366%_ _%start82367%_ _%end82368%_)
        (let ()
          (let ((_%bytes82371%_ _%bytes82365%_))
            (let ((_%port82379%_ _%port82366%_))
              (let ((_%start82387%_ _%start82367%_))
                (let ((_%end82395%_ _%end82368%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##read-subu8vector
                       _%bytes82371%_
                       _%start82387%_
                       _%end82395%_
                       _%port82379%_))))))))))
    (define __read-u8vector__0
      (lambda (_%bytes82407%_ _%port82408%_)
        (let* ((_%start82410%_ '0) (_%end82412%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82407%_
           _%port82408%_
           _%start82410%_
           _%end82412%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82414%_ _%port82415%_ _%start82416%_)
        (let ((_%end82418%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82414%_
           _%port82415%_
           _%start82416%_
           _%end82418%_))))
    (define __read-u8vector
      (lambda _g87493_
        (let ((_g87492_ (let () (declare (not safe)) (##length _g87493_))))
          (cond ((let () (declare (not safe)) (##fx= _g87492_ 2))
                 (apply (lambda (_%bytes82407%_ _%port82408%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82407%_ _%port82408%_)))
                        _g87493_))
                ((let () (declare (not safe)) (##fx= _g87492_ 3))
                 (apply (lambda (_%bytes82414%_ _%port82415%_ _%start82416%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82414%_
                             _%port82415%_
                             _%start82416%_)))
                        _g87493_))
                ((let () (declare (not safe)) (##fx= _g87492_ 4))
                 (apply (lambda (_%bytes82420%_
                                 _%port82421%_
                                 _%start82422%_
                                 _%end82423%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82420%_
                             _%port82421%_
                             _%start82422%_
                             _%end82423%_)))
                        _g87493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87493_))))))
    (define write-u8vector__%
      (lambda (_%bytes82290%_ _%port82291%_ _%start82292%_ _%end82293%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82290%_))
              (let ()
                (let ((_%bytes82297%_ _%bytes82290%_))
                  (if (output-port? _%port82291%_)
                      (let ()
                        (let ((_%port82307%_ _%port82291%_))
                          (if ((lambda (_%o82316%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82316%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82316%_ '0))
                                      (fx< _%o82316%_
                                           (u8vector-length _%bytes82297%_))))
                               _%start82292%_)
                              (let ()
                                (let ((_%start82320%_ _%start82292%_))
                                  (if ((lambda (_%o82329%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82329%_))
                                              (fx<= _%start82320%_
                                                    _%o82329%_
                                                    (u8vector-length
                                                     _%bytes82297%_))))
                                       _%end82293%_)
                                      (let ()
                                        (let ((_%end82333%_ _%end82293%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__write-u8vector__%
                                               _%bytes82297%_
                                               _%port82307%_
                                               _%start82320%_
                                               _%end82333%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82293%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82292%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82291%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82290%_)))))
    (define write-u8vector__0
      (lambda (_%bytes82346%_ _%port82347%_)
        (let* ((_%start82349%_ '0) (_%end82351%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82346%_
           _%port82347%_
           _%start82349%_
           _%end82351%_))))
    (define write-u8vector__1
      (lambda (_%bytes82353%_ _%port82354%_ _%start82355%_)
        (let ((_%end82357%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82353%_
           _%port82354%_
           _%start82355%_
           _%end82357%_))))
    (define write-u8vector
      (lambda _g87495_
        (let ((_g87494_ (let () (declare (not safe)) (##length _g87495_))))
          (cond ((let () (declare (not safe)) (##fx= _g87494_ 2))
                 (apply (lambda (_%bytes82346%_ _%port82347%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82346%_ _%port82347%_)))
                        _g87495_))
                ((let () (declare (not safe)) (##fx= _g87494_ 3))
                 (apply (lambda (_%bytes82353%_ _%port82354%_ _%start82355%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82353%_
                             _%port82354%_
                             _%start82355%_)))
                        _g87495_))
                ((let () (declare (not safe)) (##fx= _g87494_ 4))
                 (apply (lambda (_%bytes82359%_
                                 _%port82360%_
                                 _%start82361%_
                                 _%end82362%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82359%_
                             _%port82360%_
                             _%start82361%_
                             _%end82362%_)))
                        _g87495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87495_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82229%_ _%port82230%_ _%start82231%_ _%end82232%_)
        (let ()
          (let ((_%bytes82235%_ _%bytes82229%_))
            (let ((_%port82243%_ _%port82230%_))
              (let ((_%start82251%_ _%start82231%_))
                (let ((_%end82259%_ _%end82232%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##write-subu8vector
                       _%bytes82235%_
                       _%start82251%_
                       _%end82259%_
                       _%port82243%_))))))))))
    (define __write-u8vector__0
      (lambda (_%bytes82271%_ _%port82272%_)
        (let* ((_%start82274%_ '0) (_%end82276%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82271%_
           _%port82272%_
           _%start82274%_
           _%end82276%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82278%_ _%port82279%_ _%start82280%_)
        (let ((_%end82282%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82278%_
           _%port82279%_
           _%start82280%_
           _%end82282%_))))
    (define __write-u8vector
      (lambda _g87497_
        (let ((_g87496_ (let () (declare (not safe)) (##length _g87497_))))
          (cond ((let () (declare (not safe)) (##fx= _g87496_ 2))
                 (apply (lambda (_%bytes82271%_ _%port82272%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82271%_
                             _%port82272%_)))
                        _g87497_))
                ((let () (declare (not safe)) (##fx= _g87496_ 3))
                 (apply (lambda (_%bytes82278%_ _%port82279%_ _%start82280%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82278%_
                             _%port82279%_
                             _%start82280%_)))
                        _g87497_))
                ((let () (declare (not safe)) (##fx= _g87496_ 4))
                 (apply (lambda (_%bytes82284%_
                                 _%port82285%_
                                 _%start82286%_
                                 _%end82287%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82284%_
                             _%port82285%_
                             _%start82286%_
                             _%end82287%_)))
                        _g87497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87497_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82197%_
               _%dbg-exprs82198%_
               _%dbg-thunks82199%_
               _%expr82200%_
               _%thunk82201%_)
        (letrec ((_%o82203%_ (current-output-port))
                 (_%e82204%_ (current-error-port))
                 (_%p82205%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82206%_
                  (lambda ()
                    (force-output _%o82203%_)
                    (force-output _%e82204%_)))
                 (_%d82207%_
                  (lambda (_%x82214%_) (display _%x82214%_ _%e82204%_)))
                 (_%w82208%_
                  (lambda (_%x82216%_) (_%p82205%_ _%x82216%_ _%e82204%_)))
                 (_%n82209%_ (lambda () (newline _%e82204%_)))
                 (_%v82210%_
                  (lambda (_%l82219%_)
                    (for-each
                     (lambda (_%x82221%_)
                       (let () (declare (not safe)) (_%d82207%_ '" "))
                       (let () (declare (not safe)) (_%w82208%_ _%x82221%_)))
                     _%l82219%_)
                    (let () (declare (not safe)) (_%n82209%_))))
                 (_%x82211%_
                  (lambda (_%expr82223%_ _%thunk82224%_)
                    (let () (declare (not safe)) (_%f82206%_))
                    (let () (declare (not safe)) (_%d82207%_ '"  "))
                    (let () (declare (not safe)) (_%w82208%_ _%expr82223%_))
                    (let () (declare (not safe)) (_%d82207%_ '" =>"))
                    (call-with-values
                     _%thunk82224%_
                     (lambda _%x82226%_
                       (let () (declare (not safe)) (_%v82210%_ _%x82226%_))
                       (let () (declare (not safe)) (_%f82206%_))
                       (apply values _%x82226%_))))))
          (if _%tag82197%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82197%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82206%_))
                      (let () (declare (not safe)) (_%d82207%_ _%tag82197%_))
                      (let () (declare (not safe)) (_%n82209%_))))
                (for-each _%x82211%_ _%dbg-exprs82198%_ _%dbg-thunks82199%_)
                (if _%thunk82201%_
                    (let ()
                      (declare (not safe))
                      (_%x82211%_ _%expr82200%_ _%thunk82201%_))
                    '#!void))
              (if _%thunk82201%_ (_%thunk82201%_) '#!void)))))))
