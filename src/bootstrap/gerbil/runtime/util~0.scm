(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712084083)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args85494%_
        (let () (for-each display _%args85494%_) (newline))))
    (define display*
      (lambda _%args85491%_ (let () (for-each display _%args85491%_))))
    (define file-newer?
      (lambda (_%file185466%_ _%file285467%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file185466%_))
              (let ()
                (let ((_%file185471%_ _%file185466%_))
                  (if (let () (declare (not safe)) (string? _%file285467%_))
                      (let ()
                        (let ((_%file285481%_ _%file285467%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__file-newer? _%file185471%_ _%file285481%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file285467%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file185466%_)))))
    (define __file-newer?
      (lambda (_%file185414%_ _%file285415%_)
        (let ()
          (let ((_%file185418%_ _%file185414%_))
            (let ((_%file285426%_ _%file285415%_))
              (let ()
                (letrec ((_%modification-time85435%_
                          (lambda (_%file85454%_)
                            (let ()
                              (let ((_%file85457%_ _%file85454%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__modification-time85436%_
                                     _%file85457%_)))))))
                         (_%__modification-time85436%_
                          (lambda (_%file85438%_)
                            (let ()
                              (let ((_%file85441%_ _%file85438%_))
                                (let ()
                                  (let ((__tmp87235
                                         (let ((__tmp87236
                                                (let ()
                                                  (declare (not safe))
                                                  (##file-info
                                                   _%file85441%_
                                                   '#t))))
                                           (declare (not safe))
                                           (##file-info-last-modification-time
                                            __tmp87236))))
                                    (declare (not safe))
                                    (##time->seconds __tmp87235))))))))
                  (let ((__tmp87238
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85436%_ _%file185418%_)))
                        (__tmp87237
                         (let ()
                           (declare (not safe))
                           (_%__modification-time85436%_ _%file285426%_))))
                    (declare (not safe))
                    (##fl> __tmp87238 __tmp87237)))))))))
    (define create-directory*__%
      (lambda (_%dir85379%_ _%perms85380%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir85379%_))
              (let ()
                (let ((_%dir85384%_ _%dir85379%_))
                  (if (let () (declare (not safe)) (fixnum? _%perms85380%_))
                      (let ()
                        (let ((_%perms85394%_ _%perms85380%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__create-directory*__%
                               _%dir85384%_
                               _%perms85394%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms85380%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir85379%_)))))
    (define create-directory*__0
      (lambda (_%dir85407%_)
        (let ((_%perms85409%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir85407%_ _%perms85409%_))))
    (define create-directory*
      (lambda _g87240_
        (let ((_g87239_ (let () (declare (not safe)) (##length _g87240_))))
          (cond ((let () (declare (not safe)) (##fx= _g87239_ 1))
                 (apply (lambda (_%dir85407%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir85407%_)))
                        _g87240_))
                ((let () (declare (not safe)) (##fx= _g87239_ 2))
                 (apply (lambda (_%dir85411%_ _%perms85412%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir85411%_
                             _%perms85412%_)))
                        _g87240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87240_))))))
    (define __create-directory*__%
      (lambda (_%dir85303%_ _%perms85304%_)
        (let ()
          (let ((_%dir85307%_ _%dir85303%_))
            (let ((_%perms85315%_ _%perms85304%_))
              (let ()
                (letrec ((_%create185324%_
                          (lambda (_%path85356%_)
                            (let ()
                              (let ((_%path85359%_ _%path85356%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%__create185325%_ _%path85359%_)))))))
                         (_%__create185325%_
                          (lambda (_%path85337%_)
                            (let ()
                              (let ((_%path85340%_ _%path85337%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (##file-exists? _%path85340%_))
                                      (let ()
                                        (if (eq? (file-type _%path85340%_)
                                                 'directory)
                                            '#!void
                                            (error '"Path component is not a directory"
                                                   _%path85340%_)))
                                      (if _%perms85315%_
                                          (let ()
                                            (create-directory
                                             (cons 'path:
                                                   (cons _%path85340%_
                                                         (cons 'permissions:
                                                               (cons _%perms85315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (create-directory
                                             _%path85340%_))))))))))
                  (if (let ()
                        (declare (not safe))
                        (##file-exists? _%dir85307%_))
                      '#!void
                      (let _%lp85327%_ ((_%start85329%_ '0))
                        (let ((_%$e85331%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%dir85307%_
                                  '#\/
                                  _%start85329%_))))
                          (if _%$e85331%_
                              ((lambda (_%x85334%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##fx> _%x85334%_ '0))
                                     (let ((__tmp87241
                                            (substring
                                             _%dir85307%_
                                             '0
                                             _%x85334%_)))
                                       (declare (not safe))
                                       (_%__create185325%_ __tmp87241))
                                     '#!void)
                                 (let ((__tmp87242
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%x85334%_ '1))))
                                   (declare (not safe))
                                   (_%lp85327%_ __tmp87242)))
                               _%$e85331%_)
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (_%__create185325%_ _%dir85307%_)))))))
                  '#!void)))))))
    (define __create-directory*__0
      (lambda (_%dir85371%_)
        (let ((_%perms85373%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir85371%_ _%perms85373%_))))
    (define __create-directory*
      (lambda _g87244_
        (let ((_g87243_ (let () (declare (not safe)) (##length _g87244_))))
          (cond ((let () (declare (not safe)) (##fx= _g87243_ 1))
                 (apply (lambda (_%dir85371%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir85371%_)))
                        _g87244_))
                ((let () (declare (not safe)) (##fx= _g87243_ 2))
                 (apply (lambda (_%dir85375%_ _%perms85376%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir85375%_
                             _%perms85376%_)))
                        _g87244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87244_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85299%_ (let () '#t)))
    (define true? (lambda (_%obj85296%_) (let () (eq? _%obj85296%_ '#t))))
    (define false (lambda _%ignore85293%_ (let () '#f)))
    (define void (lambda _%ignore85290%_ (let () '#!void)))
    (define void? (lambda (_%obj85287%_) (let () (eq? _%obj85287%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85284%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85284%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85281%_) (let () (eq? _%obj85281%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85278%_) (let () (eq? _%obj85278%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85275%_) (let () (eq? _%obj85275%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85270%_)
        (let ()
          (let* ((_%t85273%_
                  (let () (declare (not safe)) (##type _%obj85270%_)))
                 (__tmp87245
                  (let () (declare (not safe)) (##fxand _%t85273%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87245)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85267%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85267%_))
              (let () (declare (not safe)) (##fx>= _%obj85267%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85261%_)
        (let ()
          (let ((_%$e85264%_
                 (let () (declare (not safe)) (pair? _%obj85261%_))))
            (if _%$e85264%_
                _%$e85264%_
                (let () (declare (not safe)) (null? _%obj85261%_)))))))
    (define values-count
      (lambda (_%obj85258%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85258%_))
              (let () (declare (not safe)) (##vector-length _%obj85258%_))
              '1))))
    (define values-ref
      (lambda (_%obj85243%_ _%k85244%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85244%_))
              (let ()
                (let ((_%k85248%_ _%k85244%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__values-ref _%obj85243%_ _%k85248%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k85244%_)))))
    (define __values-ref
      (lambda (_%obj85230%_ _%k85231%_)
        (let ()
          (let ((_%k85234%_ _%k85231%_))
            (let ()
              (if (let () (declare (not safe)) (##values? _%obj85230%_))
                  (let ()
                    (declare (not safe))
                    (##vector-ref _%obj85230%_ _%k85234%_))
                  _%obj85230%_))))))
    (define values->list
      (lambda (_%obj85227%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85227%_))
              (let () (declare (not safe)) (##vector->list _%obj85227%_))
              (list _%obj85227%_)))))
    (define foldl1
      (lambda (_%f85211%_ _%iv85212%_ _%lst85213%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85211%_))
              (let ()
                (let ((_%f85217%_ _%f85211%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl1 _%f85217%_ _%iv85212%_ _%lst85213%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f85211%_)))))
    (define __foldl1
      (lambda (_%f85159%_ _%iv85160%_ _%lst85161%_)
        (let ()
          (let ((_%f85164%_ _%f85159%_))
            (let ()
              (let _%lp85173%_ ((_%rest85175%_ _%lst85161%_)
                                (_%r85176%_ _%iv85160%_))
                (let* ((_%rest8517785185%_ _%rest85175%_)
                       (_%else8517985193%_ (lambda () _%r85176%_))
                       (_%K8518185199%_
                        (lambda (_%rest85196%_ _%x85197%_)
                          (let ((__tmp87246
                                 (let ()
                                   (declare (not safe))
                                   (_%f85164%_ _%x85197%_ _%r85176%_))))
                            (declare (not safe))
                            (_%lp85173%_ _%rest85196%_ __tmp87246)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8517785185%_))
                      (let ((_%hd8518285202%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8517785185%_)))
                            (_%tl8518385204%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8517785185%_))))
                        (let* ((_%x85207%_ _%hd8518285202%_)
                               (_%rest85209%_ _%tl8518385204%_))
                          (declare (not safe))
                          (_%K8518185199%_ _%rest85209%_ _%x85207%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8517985193%_))))))))))
    (define foldl2
      (lambda (_%f85142%_ _%iv85143%_ _%lst185144%_ _%lst285145%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85142%_))
              (let ()
                (let ((_%f85149%_ _%f85142%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldl2
                       _%f85149%_
                       _%iv85143%_
                       _%lst185144%_
                       _%lst285145%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85142%_)))))
    (define __foldl2
      (lambda (_%f85055%_ _%iv85056%_ _%lst185057%_ _%lst285058%_)
        (let ()
          (let ((_%f85061%_ _%f85055%_))
            (let ()
              (let _%lp85070%_ ((_%rest185072%_ _%lst185057%_)
                                (_%rest285073%_ _%lst285058%_)
                                (_%r85074%_ _%iv85056%_))
                (let* ((_%rest18507585083%_ _%rest185072%_)
                       (_%else8507785091%_ (lambda () _%r85074%_))
                       (_%K8507985130%_
                        (lambda (_%rest185094%_ _%x185095%_)
                          (let* ((_%rest28509685104%_ _%rest285073%_)
                                 (_%else8509885112%_ (lambda () _%r85074%_))
                                 (_%K8510085118%_
                                  (lambda (_%rest285115%_ _%x285116%_)
                                    (let ((__tmp87247
                                           (let ()
                                             (declare (not safe))
                                             (_%f85061%_
                                              _%x185095%_
                                              _%x285116%_
                                              _%r85074%_))))
                                      (declare (not safe))
                                      (_%lp85070%_
                                       _%rest185094%_
                                       _%rest285115%_
                                       __tmp87247)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28509685104%_))
                                (let ((_%hd8510185121%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28509685104%_)))
                                      (_%tl8510285123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28509685104%_))))
                                  (let* ((_%x285126%_ _%hd8510185121%_)
                                         (_%rest285128%_ _%tl8510285123%_))
                                    (declare (not safe))
                                    (_%K8510085118%_
                                     _%rest285128%_
                                     _%x285126%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8509885112%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18507585083%_))
                      (let ((_%hd8508085133%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18507585083%_)))
                            (_%tl8508185135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18507585083%_))))
                        (let* ((_%x185138%_ _%hd8508085133%_)
                               (_%rest185140%_ _%tl8508185135%_))
                          (declare (not safe))
                          (_%K8507985130%_ _%rest185140%_ _%x185138%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8507785091%_))))))))))
    (define foldl
      (lambda _g87249_
        (let ((_g87248_ (let () (declare (not safe)) (##length _g87249_))))
          (cond ((let () (declare (not safe)) (##fx= _g87248_ 3))
                 (apply (lambda (_%f85040%_ _%iv85041%_ _%lst85042%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85040%_ _%iv85041%_ _%lst85042%_)))
                        _g87249_))
                ((let () (declare (not safe)) (##fx= _g87248_ 4))
                 (apply (lambda (_%f85044%_
                                 _%iv85045%_
                                 _%lst185046%_
                                 _%lst285047%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85044%_
                                    _%iv85045%_
                                    _%lst185046%_
                                    _%lst285047%_)))
                        _g87249_))
                ((let () (declare (not safe)) (##fx>= _g87248_ 4))
                 (apply foldl* _g87249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87249_))))))
    (define foldl*
      (lambda (_%f85024%_ _%iv85025%_ . _%rest85026%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85024%_))
              (let ()
                (let ((_%f85030%_ _%f85024%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldl*
                               _%f85030%_
                               _%iv85025%_
                               _%rest85026%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85024%_)))))
    (define __foldl*
      (lambda (_%f85002%_ _%iv85003%_ . _%rest85004%_)
        (let ()
          (let ((_%f85007%_ _%f85002%_))
            (let ()
              (let _%recur85016%_ ((_%iv85018%_ _%iv85003%_)
                                   (_%rest85019%_ _%rest85004%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest85019%_))
                    (let ((__tmp87251
                           (let ((__tmp87252
                                  (let ((__tmp87254
                                         (lambda (_%xs85021%_ _%r85022%_)
                                           (cons (car _%xs85021%_)
                                                 _%r85022%_)))
                                        (__tmp87253 (list _%iv85018%_)))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp87254
                                     __tmp87253
                                     _%rest85019%_))))
                             (declare (not safe))
                             (##apply _%f85007%_ __tmp87252)))
                          (__tmp87250 (map cdr _%rest85019%_)))
                      (declare (not safe))
                      (_%recur85016%_ __tmp87251 __tmp87250))
                    _%iv85018%_)))))))
    (define foldr1
      (lambda (_%f84986%_ _%iv84987%_ _%lst84988%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84986%_))
              (let ()
                (let ((_%f84992%_ _%f84986%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr1 _%f84992%_ _%iv84987%_ _%lst84988%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f84986%_)))))
    (define __foldr1
      (lambda (_%f84935%_ _%iv84936%_ _%lst84937%_)
        (let ()
          (let ((_%f84940%_ _%f84935%_))
            (let ()
              (let _%recur84949%_ ((_%rest84951%_ _%lst84937%_))
                (let* ((_%rest8495284960%_ _%rest84951%_)
                       (_%else8495484968%_ (lambda () _%iv84936%_))
                       (_%K8495684974%_
                        (lambda (_%rest84971%_ _%x84972%_)
                          (let ((__tmp87255
                                 (let ()
                                   (declare (not safe))
                                   (_%recur84949%_ _%rest84971%_))))
                            (declare (not safe))
                            (_%f84940%_ _%x84972%_ __tmp87255)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8495284960%_))
                      (let ((_%hd8495784977%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8495284960%_)))
                            (_%tl8495884979%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8495284960%_))))
                        (let* ((_%x84982%_ _%hd8495784977%_)
                               (_%rest84984%_ _%tl8495884979%_))
                          (declare (not safe))
                          (_%K8495684974%_ _%rest84984%_ _%x84982%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8495484968%_))))))))))
    (define foldr2
      (lambda (_%f84918%_ _%iv84919%_ _%lst184920%_ _%lst284921%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84918%_))
              (let ()
                (let ((_%f84925%_ _%f84918%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__foldr2
                       _%f84925%_
                       _%iv84919%_
                       _%lst184920%_
                       _%lst284921%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f84918%_)))))
    (define __foldr2
      (lambda (_%f84832%_ _%iv84833%_ _%lst184834%_ _%lst284835%_)
        (let ()
          (let ((_%f84838%_ _%f84832%_))
            (let ()
              (let _%recur84847%_ ((_%rest184849%_ _%lst184834%_)
                                   (_%rest284850%_ _%lst284835%_))
                (let* ((_%rest18485184859%_ _%rest184849%_)
                       (_%else8485384867%_ (lambda () _%iv84833%_))
                       (_%K8485584906%_
                        (lambda (_%rest184870%_ _%x184871%_)
                          (let* ((_%rest28487284880%_ _%rest284850%_)
                                 (_%else8487484888%_ (lambda () _%iv84833%_))
                                 (_%K8487684894%_
                                  (lambda (_%rest284891%_ _%x284892%_)
                                    (let ((__tmp87256
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84847%_
                                              _%rest184870%_
                                              _%rest284891%_))))
                                      (declare (not safe))
                                      (_%f84838%_
                                       _%x184871%_
                                       _%x284892%_
                                       __tmp87256)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28487284880%_))
                                (let ((_%hd8487784897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28487284880%_)))
                                      (_%tl8487884899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28487284880%_))))
                                  (let* ((_%x284902%_ _%hd8487784897%_)
                                         (_%rest284904%_ _%tl8487884899%_))
                                    (declare (not safe))
                                    (_%K8487684894%_
                                     _%rest284904%_
                                     _%x284902%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8487484888%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18485184859%_))
                      (let ((_%hd8485684909%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18485184859%_)))
                            (_%tl8485784911%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18485184859%_))))
                        (let* ((_%x184914%_ _%hd8485684909%_)
                               (_%rest184916%_ _%tl8485784911%_))
                          (declare (not safe))
                          (_%K8485584906%_ _%rest184916%_ _%x184914%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8485384867%_))))))))))
    (define foldr
      (lambda _g87258_
        (let ((_g87257_ (let () (declare (not safe)) (##length _g87258_))))
          (cond ((let () (declare (not safe)) (##fx= _g87257_ 3))
                 (apply (lambda (_%f84817%_ _%iv84818%_ _%lst84819%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f84817%_ _%iv84818%_ _%lst84819%_)))
                        _g87258_))
                ((let () (declare (not safe)) (##fx= _g87257_ 4))
                 (apply (lambda (_%f84821%_
                                 _%iv84822%_
                                 _%lst184823%_
                                 _%lst284824%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f84821%_
                                    _%iv84822%_
                                    _%lst184823%_
                                    _%lst284824%_)))
                        _g87258_))
                ((let () (declare (not safe)) (##fx>= _g87257_ 4))
                 (apply foldr* _g87258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87258_))))))
    (define foldr*
      (lambda (_%f84801%_ _%iv84802%_ . _%rest84803%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84801%_))
              (let ()
                (let ((_%f84807%_ _%f84801%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __foldr*
                               _%f84807%_
                               _%iv84802%_
                               _%rest84803%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f84801%_)))))
    (define __foldr*
      (lambda (_%f84780%_ _%iv84781%_ . _%rest84782%_)
        (let ()
          (let ((_%f84785%_ _%f84780%_))
            (let ()
              (let _%recur84794%_ ((_%rest84796%_ _%rest84782%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84796%_))
                    (let ((__tmp87259
                           (let ((__tmp87262
                                  (lambda (_%xs84798%_ _%r84799%_)
                                    (cons (car _%xs84798%_) _%r84799%_)))
                                 (__tmp87260
                                  (list (let ((__tmp87261
                                               (map cdr _%rest84796%_)))
                                          (declare (not safe))
                                          (_%recur84794%_ __tmp87261)))))
                             (declare (not safe))
                             (__foldr1 __tmp87262 __tmp87260 _%rest84796%_))))
                      (declare (not safe))
                      (##apply _%f84785%_ __tmp87259))
                    _%iv84781%_)))))))
    (define remove-nulls!
      (lambda (_%l84667%_)
        (let* ((_%l8466884681%_ _%l84667%_)
               (_%E8467284685%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8466884681%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8467784770%_
                 (lambda (_%r84768%_)
                   (let () (declare (not safe)) (remove-nulls! _%r84768%_))))
                (_%K8467484757%_
                 (lambda (_%r84697%_)
                   (let _%loop84699%_ ((_%l84701%_ _%l84667%_)
                                       (_%r84702%_ _%r84697%_))
                     (let* ((_%r8470384716%_ _%r84702%_)
                            (_%E8470784720%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8470384716%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8471284747%_
                              (lambda (_%rr84745%_)
                                (let ((__tmp87264 _%l84701%_)
                                      (__tmp87263
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr84745%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87264 __tmp87263))))
                             (_%K8470984734%_
                              (lambda (_%rr84732%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop84699%_ _%r84702%_ _%rr84732%_))))
                             (_%K8470884725%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8470384716%_))
                             (let ((_%tl8471484752%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8470384716%_)))
                                   (_%hd8471384750%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8470384716%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8471384750%_))
                                   (let ((_%rr84755%_ _%tl8471484752%_))
                                     (declare (not safe))
                                     (_%K8471284747%_ _%rr84755%_))
                                   (let ((_%rr84740%_ _%tl8471484752%_))
                                     (declare (not safe))
                                     (_%K8470984734%_ _%rr84740%_))))
                             '#!void))))
                   _%l84667%_))
                (_%K8467384690%_ (lambda () _%l84667%_)))
            (if (let () (declare (not safe)) (##pair? _%l8466884681%_))
                (let ((_%tl8467984775%_
                       (let () (declare (not safe)) (##cdr _%l8466884681%_)))
                      (_%hd8467884773%_
                       (let () (declare (not safe)) (##car _%l8466884681%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8467884773%_))
                      (let ((_%r84778%_ _%tl8467984775%_))
                        (declare (not safe))
                        (remove-nulls! _%r84778%_))
                      (let ((_%r84763%_ _%tl8467984775%_))
                        (declare (not safe))
                        (_%K8467484757%_ _%r84763%_))))
                (let () (declare (not safe)) (_%K8467384690%_)))))))
    (define append1!
      (lambda (_%l84652%_ _%x84653%_)
        (let ()
          (let ((_%l284656%_ (cons _%x84653%_ '())))
            (if (let () (declare (not safe)) (pair? _%l84652%_))
                (let ((_%l84658%_ _%l84652%_))
                  (let ((__tmp87265
                         (let ()
                           (declare (not safe))
                           (##last-pair _%l84658%_))))
                    (declare (not safe))
                    (##set-cdr! __tmp87265 _%l284656%_))
                  _%l84658%_)
                _%l284656%_)))))
    (define append-reverse-until
      (lambda (_%pred84636%_ _%rhead84637%_ _%tail84638%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84636%_))
              (let ()
                (let ((_%pred84642%_ _%pred84636%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__append-reverse-until
                       _%pred84642%_
                       _%rhead84637%_
                       _%tail84638%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred84636%_)))))
    (define __append-reverse-until
      (lambda (_%pred84578%_ _%rhead84579%_ _%tail84580%_)
        (let ()
          (let ((_%pred84583%_ _%pred84578%_))
            (let ()
              (let _%loop84592%_ ((_%rhead84594%_ _%rhead84579%_)
                                  (_%tail84595%_ _%tail84580%_))
                (let ()
                  (let* ((_%rhead8459784606%_ _%rhead84594%_)
                         (_%E8460084610%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%rhead8459784606%_
                                   '([])
                                   '([a :: r]))
                            '#!void)))
                    (let ((_%K8460484633%_
                           (lambda () (values '() _%tail84595%_)))
                          (_%K8460184617%_
                           (lambda (_%r84614%_ _%a84615%_)
                             (if (let ()
                                   (declare (not safe))
                                   (_%pred84583%_ _%a84615%_))
                                 (values _%rhead84594%_ _%tail84595%_)
                                 (let ((__tmp87266
                                        (cons _%a84615%_ _%tail84595%_)))
                                   (declare (not safe))
                                   (_%loop84592%_ _%r84614%_ __tmp87266))))))
                      (let ((_%try-match8459984629%_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%rhead8459784606%_))
                                   (let ((_%tl8460384622%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%rhead8459784606%_)))
                                         (_%hd8460284620%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%rhead8459784606%_))))
                                     (let ((_%a84625%_ _%hd8460284620%_)
                                           (_%r84627%_ _%tl8460384622%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K8460184617%_
                                          _%r84627%_
                                          _%a84625%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%E8460084610%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%rhead8459784606%_))
                            (let () (declare (not safe)) (_%K8460484633%_))
                            (let ()
                              (declare (not safe))
                              (_%try-match8459984629%_)))))))))))))
    (define andmap1
      (lambda (_%f84563%_ _%lst84564%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84563%_))
              (let ()
                (let ((_%f84568%_ _%f84563%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap1 _%f84568%_ _%lst84564%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f84563%_)))))
    (define __andmap1
      (lambda (_%f84512%_ _%lst84513%_)
        (let ()
          (let ((_%f84516%_ _%f84512%_))
            (let ()
              (let _%lp84525%_ ((_%rest84527%_ _%lst84513%_))
                (let ()
                  (let* ((_%rest8452984537%_ _%rest84527%_)
                         (_%else8453184545%_ (lambda () '#t))
                         (_%K8453384551%_
                          (lambda (_%rest84548%_ _%x84549%_)
                            (if (let ()
                                  (declare (not safe))
                                  (_%f84516%_ _%x84549%_))
                                (let ()
                                  (declare (not safe))
                                  (_%lp84525%_ _%rest84548%_))
                                '#f))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8452984537%_))
                        (let ((_%hd8453484554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8452984537%_)))
                              (_%tl8453584556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8452984537%_))))
                          (let* ((_%x84559%_ _%hd8453484554%_)
                                 (_%rest84561%_ _%tl8453584556%_))
                            (declare (not safe))
                            (_%K8453384551%_ _%rest84561%_ _%x84559%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8453184545%_)))))))))))
    (define andmap2
      (lambda (_%f84496%_ _%lst184497%_ _%lst284498%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84496%_))
              (let ()
                (let ((_%f84502%_ _%f84496%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__andmap2 _%f84502%_ _%lst184497%_ _%lst284498%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f84496%_)))))
    (define __andmap2
      (lambda (_%f84410%_ _%lst184411%_ _%lst284412%_)
        (let ()
          (let ((_%f84415%_ _%f84410%_))
            (let ()
              (let _%lp84424%_ ((_%rest184426%_ _%lst184411%_)
                                (_%rest284427%_ _%lst284412%_))
                (let ()
                  (let* ((_%rest18442984437%_ _%rest184426%_)
                         (_%else8443184445%_ (lambda () '#t))
                         (_%K8443384484%_
                          (lambda (_%rest184448%_ _%x184449%_)
                            (let* ((_%rest28445084458%_ _%rest284427%_)
                                   (_%else8445284466%_ (lambda () '#t))
                                   (_%K8445484472%_
                                    (lambda (_%rest284469%_ _%x284470%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (_%f84415%_
                                             _%x184449%_
                                             _%x284470%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84424%_
                                             _%rest184448%_
                                             _%rest284469%_))
                                          '#f))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28445084458%_))
                                  (let ((_%hd8445584475%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28445084458%_)))
                                        (_%tl8445684477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28445084458%_))))
                                    (let* ((_%x284480%_ _%hd8445584475%_)
                                           (_%rest284482%_ _%tl8445684477%_))
                                      (declare (not safe))
                                      (_%K8445484472%_
                                       _%rest284482%_
                                       _%x284480%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8445284466%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18442984437%_))
                        (let ((_%hd8443484487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18442984437%_)))
                              (_%tl8443584489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18442984437%_))))
                          (let* ((_%x184492%_ _%hd8443484487%_)
                                 (_%rest184494%_ _%tl8443584489%_))
                            (declare (not safe))
                            (_%K8443384484%_ _%rest184494%_ _%x184492%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8443184445%_)))))))))))
    (define andmap
      (lambda _g87268_
        (let ((_g87267_ (let () (declare (not safe)) (##length _g87268_))))
          (cond ((let () (declare (not safe)) (##fx= _g87267_ 2))
                 (apply (lambda (_%f84398%_ _%lst84399%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f84398%_ _%lst84399%_)))
                        _g87268_))
                ((let () (declare (not safe)) (##fx= _g87267_ 3))
                 (apply (lambda (_%f84401%_ _%lst184402%_ _%lst284403%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f84401%_ _%lst184402%_ _%lst284403%_)))
                        _g87268_))
                ((let () (declare (not safe)) (##fx>= _g87267_ 3))
                 (apply andmap* _g87268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87268_))))))
    (define andmap*
      (lambda (_%f84383%_ . _%rest84384%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84383%_))
              (let ()
                (let ((_%f84388%_ _%f84383%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __andmap* _%f84388%_ _%rest84384%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f84383%_)))))
    (define __andmap*
      (lambda (_%f84365%_ . _%rest84366%_)
        (let ()
          (let ((_%f84369%_ _%f84365%_))
            (let ()
              (let _%recur84378%_ ((_%rest84380%_ _%rest84366%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest84380%_))
                      (if (let ((__tmp87269 (map car _%rest84380%_)))
                            (declare (not safe))
                            (##apply _%f84369%_ __tmp87269))
                          (let ((__tmp87270 (map cdr _%rest84380%_)))
                            (declare (not safe))
                            (_%recur84378%_ __tmp87270))
                          '#f)
                      '#t))))))))
    (define ormap1
      (lambda (_%f84350%_ _%lst84351%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84350%_))
              (let ()
                (let ((_%f84355%_ _%f84350%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap1 _%f84355%_ _%lst84351%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f84350%_)))))
    (define __ormap1
      (lambda (_%f84297%_ _%lst84298%_)
        (let ()
          (let ((_%f84301%_ _%f84297%_))
            (let ()
              (let _%lp84310%_ ((_%rest84312%_ _%lst84298%_))
                (let* ((_%rest8431384321%_ _%rest84312%_)
                       (_%else8431584329%_ (lambda () '#f))
                       (_%K8431784338%_
                        (lambda (_%rest84332%_ _%x84333%_)
                          (let ((_%$e84335%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f84301%_ _%x84333%_))))
                            (if _%$e84335%_
                                _%$e84335%_
                                (let ()
                                  (declare (not safe))
                                  (_%lp84310%_ _%rest84332%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8431384321%_))
                      (let ((_%hd8431884341%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8431384321%_)))
                            (_%tl8431984343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8431384321%_))))
                        (let* ((_%x84346%_ _%hd8431884341%_)
                               (_%rest84348%_ _%tl8431984343%_))
                          (declare (not safe))
                          (_%K8431784338%_ _%rest84348%_ _%x84346%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8431584329%_))))))))))
    (define ormap2
      (lambda (_%f84281%_ _%lst184282%_ _%lst284283%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84281%_))
              (let ()
                (let ((_%f84287%_ _%f84281%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__ormap2 _%f84287%_ _%lst184282%_ _%lst284283%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f84281%_)))))
    (define __ormap2
      (lambda (_%f84193%_ _%lst184194%_ _%lst284195%_)
        (let ()
          (let ((_%f84198%_ _%f84193%_))
            (let ()
              (let _%lp84207%_ ((_%rest184209%_ _%lst184194%_)
                                (_%rest284210%_ _%lst284195%_))
                (let* ((_%rest18421184219%_ _%rest184209%_)
                       (_%else8421384227%_ (lambda () '#f))
                       (_%K8421584269%_
                        (lambda (_%rest184230%_ _%x184231%_)
                          (let* ((_%rest28423284240%_ _%rest284210%_)
                                 (_%else8423484248%_ (lambda () '#f))
                                 (_%K8423684257%_
                                  (lambda (_%rest284251%_ _%x284252%_)
                                    (let ((_%$e84254%_
                                           (let ()
                                             (declare (not safe))
                                             (_%f84198%_
                                              _%x184231%_
                                              _%x284252%_))))
                                      (if _%$e84254%_
                                          _%$e84254%_
                                          (let ()
                                            (declare (not safe))
                                            (_%lp84207%_
                                             _%rest184230%_
                                             _%rest284251%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest28423284240%_))
                                (let ((_%hd8423784260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest28423284240%_)))
                                      (_%tl8423884262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest28423284240%_))))
                                  (let* ((_%x284265%_ _%hd8423784260%_)
                                         (_%rest284267%_ _%tl8423884262%_))
                                    (declare (not safe))
                                    (_%K8423684257%_
                                     _%rest284267%_
                                     _%x284265%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8423484248%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest18421184219%_))
                      (let ((_%hd8421684272%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest18421184219%_)))
                            (_%tl8421784274%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest18421184219%_))))
                        (let* ((_%x184277%_ _%hd8421684272%_)
                               (_%rest184279%_ _%tl8421784274%_))
                          (declare (not safe))
                          (_%K8421584269%_ _%rest184279%_ _%x184277%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8421384227%_))))))))))
    (define ormap
      (lambda _g87272_
        (let ((_g87271_ (let () (declare (not safe)) (##length _g87272_))))
          (cond ((let () (declare (not safe)) (##fx= _g87271_ 2))
                 (apply (lambda (_%f84181%_ _%lst84182%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84181%_ _%lst84182%_)))
                        _g87272_))
                ((let () (declare (not safe)) (##fx= _g87271_ 3))
                 (apply (lambda (_%f84184%_ _%lst184185%_ _%lst284186%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84184%_ _%lst184185%_ _%lst284186%_)))
                        _g87272_))
                ((let () (declare (not safe)) (##fx>= _g87271_ 3))
                 (apply ormap* _g87272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87272_))))))
    (define ormap*
      (lambda (_%f84166%_ . _%rest84167%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84166%_))
              (let ()
                (let ((_%f84171%_ _%f84166%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __ormap* _%f84171%_ _%rest84167%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84166%_)))))
    (define __ormap*
      (lambda (_%f84146%_ . _%rest84147%_)
        (let ()
          (let ((_%f84150%_ _%f84146%_))
            (let ()
              (let _%recur84159%_ ((_%rest84161%_ _%rest84147%_))
                (if (let ()
                      (declare (not safe))
                      (__andmap1 pair? _%rest84161%_))
                    (let ((_%$e84163%_
                           (let ((__tmp87273 (map car _%rest84161%_)))
                             (declare (not safe))
                             (##apply _%f84150%_ __tmp87273))))
                      (if _%$e84163%_
                          _%$e84163%_
                          (let ((__tmp87274 (map cdr _%rest84161%_)))
                            (declare (not safe))
                            (_%recur84159%_ __tmp87274))))
                    '#f)))))))
    (define filter-map1
      (lambda (_%f84131%_ _%lst84132%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84131%_))
              (let ()
                (let ((_%f84136%_ _%f84131%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map1 _%f84136%_ _%lst84132%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84131%_)))))
    (define __filter-map1
      (lambda (_%f84074%_ _%lst84075%_)
        (let ()
          (let ((_%f84078%_ _%f84074%_))
            (let ()
              (let _%recur84087%_ ((_%rest84089%_ _%lst84075%_))
                (let ()
                  (let* ((_%rest8409184099%_ _%rest84089%_)
                         (_%else8409384107%_ (lambda () '()))
                         (_%K8409584119%_
                          (lambda (_%rest84110%_ _%x84111%_)
                            (let ((_%$e84113%_
                                   (let ()
                                     (declare (not safe))
                                     (_%f84078%_ _%x84111%_))))
                              (if _%$e84113%_
                                  ((lambda (_%r84116%_)
                                     (cons _%r84116%_
                                           (let ()
                                             (declare (not safe))
                                             (_%recur84087%_ _%rest84110%_))))
                                   _%$e84113%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (_%recur84087%_ _%rest84110%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8409184099%_))
                        (let ((_%hd8409684122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8409184099%_)))
                              (_%tl8409784124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8409184099%_))))
                          (let* ((_%x84127%_ _%hd8409684122%_)
                                 (_%rest84129%_ _%tl8409784124%_))
                            (declare (not safe))
                            (_%K8409584119%_ _%rest84129%_ _%x84127%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8409384107%_)))))))))))
    (define filter-map2
      (lambda (_%f84058%_ _%lst184059%_ _%lst284060%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84058%_))
              (let ()
                (let ((_%f84064%_ _%f84058%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__filter-map2
                       _%f84064%_
                       _%lst184059%_
                       _%lst284060%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84058%_)))))
    (define __filter-map2
      (lambda (_%f83966%_ _%lst183967%_ _%lst283968%_)
        (let ()
          (let ((_%f83971%_ _%f83966%_))
            (let ()
              (let _%recur83980%_ ((_%rest183982%_ _%lst183967%_)
                                   (_%rest283983%_ _%lst283968%_))
                (let ()
                  (let* ((_%rest18398583993%_ _%rest183982%_)
                         (_%else8398784001%_ (lambda () '()))
                         (_%K8398984046%_
                          (lambda (_%rest184004%_ _%x184005%_)
                            (let* ((_%rest28400684014%_ _%rest283983%_)
                                   (_%else8400884022%_ (lambda () '()))
                                   (_%K8401084034%_
                                    (lambda (_%rest284025%_ _%x284026%_)
                                      (let ((_%$e84028%_
                                             (let ()
                                               (declare (not safe))
                                               (_%f83971%_
                                                _%x184005%_
                                                _%x284026%_))))
                                        (if _%$e84028%_
                                            ((lambda (_%r84031%_)
                                               (cons _%r84031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%recur83980%_
                                                        _%rest184004%_
                                                        _%rest284025%_))))
                                             _%$e84028%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (_%recur83980%_
                                                 _%rest184004%_
                                                 _%rest284025%_))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest28400684014%_))
                                  (let ((_%hd8401184037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest28400684014%_)))
                                        (_%tl8401284039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest28400684014%_))))
                                    (let* ((_%x284042%_ _%hd8401184037%_)
                                           (_%rest284044%_ _%tl8401284039%_))
                                      (declare (not safe))
                                      (_%K8401084034%_
                                       _%rest284044%_
                                       _%x284042%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else8400884022%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest18398583993%_))
                        (let ((_%hd8399084049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest18398583993%_)))
                              (_%tl8399184051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest18398583993%_))))
                          (let* ((_%x184054%_ _%hd8399084049%_)
                                 (_%rest184056%_ _%tl8399184051%_))
                            (declare (not safe))
                            (_%K8398984046%_ _%rest184056%_ _%x184054%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8398784001%_)))))))))))
    (define filter-map
      (lambda _g87276_
        (let ((_g87275_ (let () (declare (not safe)) (##length _g87276_))))
          (cond ((let () (declare (not safe)) (##fx= _g87275_ 2))
                 (apply (lambda (_%f83954%_ _%lst83955%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f83954%_ _%lst83955%_)))
                        _g87276_))
                ((let () (declare (not safe)) (##fx= _g87275_ 3))
                 (apply (lambda (_%f83957%_ _%lst183958%_ _%lst283959%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f83957%_
                             _%lst183958%_
                             _%lst283959%_)))
                        _g87276_))
                ((let () (declare (not safe)) (##fx>= _g87275_ 3))
                 (apply filter-map* _g87276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87276_))))))
    (define filter-map*
      (lambda (_%f83939%_ . _%rest83940%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f83939%_))
              (let ()
                (let ((_%f83944%_ _%f83939%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __filter-map* _%f83944%_ _%rest83940%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f83939%_)))))
    (define __filter-map*
      (lambda (_%f83915%_ . _%rest83916%_)
        (let ()
          (let ((_%f83919%_ _%f83915%_))
            (let ()
              (let _%recur83928%_ ((_%rest83930%_ _%rest83916%_))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (__andmap1 pair? _%rest83930%_))
                      (let ((_%$e83933%_
                             (let ((__tmp87277 (map car _%rest83930%_)))
                               (declare (not safe))
                               (##apply _%f83919%_ __tmp87277))))
                        (if _%$e83933%_
                            ((lambda (_%r83936%_)
                               (cons _%r83936%_
                                     (let ((__tmp87278
                                            (map cdr _%rest83930%_)))
                                       (declare (not safe))
                                       (_%recur83928%_ __tmp87278))))
                             _%$e83933%_)
                            (let ()
                              (let ((__tmp87279 (map cdr _%rest83930%_)))
                                (declare (not safe))
                                (_%recur83928%_ __tmp87279)))))
                      '()))))))))
    (define agetq__%
      (lambda (_%key83891%_ _%lst83893%_ _%default83895%_)
        (let ((_%$e83898%_
               (if (let () (declare (not safe)) (pair? _%lst83893%_))
                   (assq _%key83891%_ _%lst83893%_)
                   '#f)))
          (if _%$e83898%_
              (cdr _%$e83898%_)
              (if (let () (declare (not safe)) (procedure? _%default83895%_))
                  (let () (_%default83895%_ _%key83891%_))
                  (let () _%default83895%_))))))
    (define agetq__0
      (lambda (_%key83906%_ _%lst83907%_)
        (let ((_%default83909%_ '#f))
          (declare (not safe))
          (agetq__% _%key83906%_ _%lst83907%_ _%default83909%_))))
    (define agetq
      (lambda _g87281_
        (let ((_g87280_ (let () (declare (not safe)) (##length _g87281_))))
          (cond ((let () (declare (not safe)) (##fx= _g87280_ 2))
                 (apply (lambda (_%key83906%_ _%lst83907%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key83906%_ _%lst83907%_)))
                        _g87281_))
                ((let () (declare (not safe)) (##fx= _g87280_ 3))
                 (apply (lambda (_%key83911%_ _%lst83912%_ _%default83913%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key83911%_
                             _%lst83912%_
                             _%default83913%_)))
                        _g87281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87281_))))))
    (define agetv__%
      (lambda (_%key83866%_ _%lst83868%_ _%default83870%_)
        (let ((_%$e83873%_
               (if (let () (declare (not safe)) (pair? _%lst83868%_))
                   (assv _%key83866%_ _%lst83868%_)
                   '#f)))
          (if _%$e83873%_
              (cdr _%$e83873%_)
              (if (let () (declare (not safe)) (procedure? _%default83870%_))
                  (let () (_%default83870%_ _%key83866%_))
                  (let () _%default83870%_))))))
    (define agetv__0
      (lambda (_%key83881%_ _%lst83882%_)
        (let ((_%default83884%_ '#f))
          (declare (not safe))
          (agetv__% _%key83881%_ _%lst83882%_ _%default83884%_))))
    (define agetv
      (lambda _g87283_
        (let ((_g87282_ (let () (declare (not safe)) (##length _g87283_))))
          (cond ((let () (declare (not safe)) (##fx= _g87282_ 2))
                 (apply (lambda (_%key83881%_ _%lst83882%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key83881%_ _%lst83882%_)))
                        _g87283_))
                ((let () (declare (not safe)) (##fx= _g87282_ 3))
                 (apply (lambda (_%key83886%_ _%lst83887%_ _%default83888%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key83886%_
                             _%lst83887%_
                             _%default83888%_)))
                        _g87283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87283_))))))
    (define aget__%
      (lambda (_%key83841%_ _%lst83843%_ _%default83845%_)
        (let ((_%$e83848%_
               (if (let () (declare (not safe)) (pair? _%lst83843%_))
                   (assoc _%key83841%_ _%lst83843%_)
                   '#f)))
          (if _%$e83848%_
              (cdr _%$e83848%_)
              (if (let () (declare (not safe)) (procedure? _%default83845%_))
                  (let () (_%default83845%_ _%key83841%_))
                  (let () _%default83845%_))))))
    (define aget__0
      (lambda (_%key83856%_ _%lst83857%_)
        (let ((_%default83859%_ '#f))
          (declare (not safe))
          (aget__% _%key83856%_ _%lst83857%_ _%default83859%_))))
    (define aget
      (lambda _g87285_
        (let ((_g87284_ (let () (declare (not safe)) (##length _g87285_))))
          (cond ((let () (declare (not safe)) (##fx= _g87284_ 2))
                 (apply (lambda (_%key83856%_ _%lst83857%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key83856%_ _%lst83857%_)))
                        _g87285_))
                ((let () (declare (not safe)) (##fx= _g87284_ 3))
                 (apply (lambda (_%key83861%_ _%lst83862%_ _%default83863%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key83861%_
                                     _%lst83862%_
                                     _%default83863%_)))
                        _g87285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87285_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key83770%_ _%lst83772%_ _%default83774%_)
        (let _%lp83777%_ ((_%rest83780%_ _%lst83772%_))
          (let* ((_%rest8378283792%_ _%rest83780%_)
                 (_%else8378483800%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83774%_))
                        (_%default83774%_ _%key83770%_)
                        _%default83774%_)))
                 (_%K8378683809%_
                  (lambda (_%rest83803%_ _%v83804%_ _%k83806%_)
                    (if (eq? _%k83806%_ _%key83770%_)
                        _%v83804%_
                        (let ()
                          (declare (not safe))
                          (_%lp83777%_ _%rest83803%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8378283792%_))
                (let ((_%hd8378783812%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8378283792%_)))
                      (_%tl8378883814%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8378283792%_))))
                  (let ((_%k83817%_ _%hd8378783812%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8378883814%_))
                        (let ((_%hd8378983819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8378883814%_)))
                              (_%tl8379083821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8378883814%_))))
                          (let* ((_%v83824%_ _%hd8378983819%_)
                                 (_%rest83826%_ _%tl8379083821%_))
                            (declare (not safe))
                            (_%K8378683809%_
                             _%rest83826%_
                             _%v83824%_
                             _%k83817%_)))
                        (let () (declare (not safe)) (_%else8378483800%_)))))
                (let () (declare (not safe)) (_%else8378483800%_)))))))
    (define pgetq__0
      (lambda (_%key83831%_ _%lst83832%_)
        (let ((_%default83834%_ '#f))
          (declare (not safe))
          (pgetq__% _%key83831%_ _%lst83832%_ _%default83834%_))))
    (define pgetq
      (lambda _g87287_
        (let ((_g87286_ (let () (declare (not safe)) (##length _g87287_))))
          (cond ((let () (declare (not safe)) (##fx= _g87286_ 2))
                 (apply (lambda (_%key83831%_ _%lst83832%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key83831%_ _%lst83832%_)))
                        _g87287_))
                ((let () (declare (not safe)) (##fx= _g87286_ 3))
                 (apply (lambda (_%key83836%_ _%lst83837%_ _%default83838%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key83836%_
                             _%lst83837%_
                             _%default83838%_)))
                        _g87287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87287_))))))
    (define pgetv__%
      (lambda (_%key83699%_ _%lst83701%_ _%default83703%_)
        (let _%lp83706%_ ((_%rest83709%_ _%lst83701%_))
          (let* ((_%rest8371183721%_ _%rest83709%_)
                 (_%else8371383729%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83703%_))
                        (_%default83703%_ _%key83699%_)
                        _%default83703%_)))
                 (_%K8371583738%_
                  (lambda (_%rest83732%_ _%v83733%_ _%k83735%_)
                    (if (eqv? _%k83735%_ _%key83699%_)
                        _%v83733%_
                        (let ()
                          (declare (not safe))
                          (_%lp83706%_ _%rest83732%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8371183721%_))
                (let ((_%hd8371683741%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8371183721%_)))
                      (_%tl8371783743%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8371183721%_))))
                  (let ((_%k83746%_ _%hd8371683741%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8371783743%_))
                        (let ((_%hd8371883748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8371783743%_)))
                              (_%tl8371983750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8371783743%_))))
                          (let* ((_%v83753%_ _%hd8371883748%_)
                                 (_%rest83755%_ _%tl8371983750%_))
                            (declare (not safe))
                            (_%K8371583738%_
                             _%rest83755%_
                             _%v83753%_
                             _%k83746%_)))
                        (let () (declare (not safe)) (_%else8371383729%_)))))
                (let () (declare (not safe)) (_%else8371383729%_)))))))
    (define pgetv__0
      (lambda (_%key83760%_ _%lst83761%_)
        (let ((_%default83763%_ '#f))
          (declare (not safe))
          (pgetv__% _%key83760%_ _%lst83761%_ _%default83763%_))))
    (define pgetv
      (lambda _g87289_
        (let ((_g87288_ (let () (declare (not safe)) (##length _g87289_))))
          (cond ((let () (declare (not safe)) (##fx= _g87288_ 2))
                 (apply (lambda (_%key83760%_ _%lst83761%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key83760%_ _%lst83761%_)))
                        _g87289_))
                ((let () (declare (not safe)) (##fx= _g87288_ 3))
                 (apply (lambda (_%key83765%_ _%lst83766%_ _%default83767%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key83765%_
                             _%lst83766%_
                             _%default83767%_)))
                        _g87289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87289_))))))
    (define pget__%
      (lambda (_%key83628%_ _%lst83630%_ _%default83632%_)
        (let _%lp83635%_ ((_%rest83638%_ _%lst83630%_))
          (let* ((_%rest8364083650%_ _%rest83638%_)
                 (_%else8364283658%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default83632%_))
                        (_%default83632%_ _%key83628%_)
                        _%default83632%_)))
                 (_%K8364483667%_
                  (lambda (_%rest83661%_ _%v83662%_ _%k83664%_)
                    (if (equal? _%k83664%_ _%key83628%_)
                        _%v83662%_
                        (let ()
                          (declare (not safe))
                          (_%lp83635%_ _%rest83661%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8364083650%_))
                (let ((_%hd8364583670%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8364083650%_)))
                      (_%tl8364683672%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8364083650%_))))
                  (let ((_%k83675%_ _%hd8364583670%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8364683672%_))
                        (let ((_%hd8364783677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8364683672%_)))
                              (_%tl8364883679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8364683672%_))))
                          (let* ((_%v83682%_ _%hd8364783677%_)
                                 (_%rest83684%_ _%tl8364883679%_))
                            (declare (not safe))
                            (_%K8364483667%_
                             _%rest83684%_
                             _%v83682%_
                             _%k83675%_)))
                        (let () (declare (not safe)) (_%else8364283658%_)))))
                (let () (declare (not safe)) (_%else8364283658%_)))))))
    (define pget__0
      (lambda (_%key83689%_ _%lst83690%_)
        (let ((_%default83692%_ '#f))
          (declare (not safe))
          (pget__% _%key83689%_ _%lst83690%_ _%default83692%_))))
    (define pget
      (lambda _g87291_
        (let ((_g87290_ (let () (declare (not safe)) (##length _g87291_))))
          (cond ((let () (declare (not safe)) (##fx= _g87290_ 2))
                 (apply (lambda (_%key83689%_ _%lst83690%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key83689%_ _%lst83690%_)))
                        _g87291_))
                ((let () (declare (not safe)) (##fx= _g87290_ 3))
                 (apply (lambda (_%key83694%_ _%lst83695%_ _%default83696%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key83694%_
                                     _%lst83695%_
                                     _%default83696%_)))
                        _g87291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87291_))))))
    (define find
      (lambda (_%pred83612%_ _%lst83613%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred83612%_))
              (let ()
                (let ((_%pred83617%_ _%pred83612%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__find _%pred83617%_ _%lst83613%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred83612%_)))))
    (define __find
      (lambda (_%pred83595%_ _%lst83596%_)
        (let ()
          (let ((_%pred83599%_ _%pred83595%_))
            (let ()
              (let ((_%$e83608%_
                     (let ()
                       (declare (not safe))
                       (__memf _%pred83599%_ _%lst83596%_))))
                (if _%$e83608%_
                    (let () (declare (not safe)) (##car _%$e83608%_))
                    (let () '#f))))))))
    (define memf
      (lambda (_%proc83580%_ _%lst83581%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83580%_))
              (let ()
                (let ((_%proc83585%_ _%proc83580%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__memf _%proc83585%_ _%lst83581%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc83580%_)))))
    (define __memf
      (lambda (_%proc83530%_ _%lst83531%_)
        (let ()
          (let ((_%proc83534%_ _%proc83530%_))
            (let ()
              (let _%lp83543%_ ((_%rest83545%_ _%lst83531%_))
                (let* ((_%rest8354683554%_ _%rest83545%_)
                       (_%else8354883562%_ (lambda () '#f))
                       (_%K8355083568%_
                        (lambda (_%tl83565%_ _%hd83566%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83534%_ _%hd83566%_))
                              _%rest83545%_
                              (let ()
                                (declare (not safe))
                                (_%lp83543%_ _%tl83565%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8354683554%_))
                      (let ((_%hd8355183571%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8354683554%_)))
                            (_%tl8355283573%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8354683554%_))))
                        (let* ((_%hd83576%_ _%hd8355183571%_)
                               (_%tl83578%_ _%tl8355283573%_))
                          (declare (not safe))
                          (_%K8355083568%_ _%tl83578%_ _%hd83576%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8354883562%_))))))))))
    (define remove1
      (lambda (_%el83483%_ _%lst83485%_)
        (let _%lp83488%_ ((_%rest83491%_ _%lst83485%_) (_%r83493%_ '()))
          (let* ((_%rest8349583503%_ _%rest83491%_)
                 (_%else8349783511%_ (lambda () _%lst83485%_))
                 (_%K8349983518%_
                  (lambda (_%rest83514%_ _%hd83515%_)
                    (if (equal? _%el83483%_ _%hd83515%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83514%_ _%r83493%_))
                        (let ((__tmp87292 (cons _%hd83515%_ _%r83493%_)))
                          (declare (not safe))
                          (_%lp83488%_ _%rest83514%_ __tmp87292))))))
            (if (let () (declare (not safe)) (##pair? _%rest8349583503%_))
                (let ((_%hd8350083521%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8349583503%_)))
                      (_%tl8350183523%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8349583503%_))))
                  (let* ((_%hd83526%_ _%hd8350083521%_)
                         (_%rest83528%_ _%tl8350183523%_))
                    (declare (not safe))
                    (_%K8349983518%_ _%rest83528%_ _%hd83526%_)))
                (let () (declare (not safe)) (_%else8349783511%_)))))))
    (define remv1
      (lambda (_%el83436%_ _%lst83438%_)
        (let _%lp83441%_ ((_%rest83444%_ _%lst83438%_) (_%r83446%_ '()))
          (let* ((_%rest8344883456%_ _%rest83444%_)
                 (_%else8345083464%_ (lambda () _%lst83438%_))
                 (_%K8345283471%_
                  (lambda (_%rest83467%_ _%hd83468%_)
                    (if (eqv? _%el83436%_ _%hd83468%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83467%_ _%r83446%_))
                        (let ((__tmp87293 (cons _%hd83468%_ _%r83446%_)))
                          (declare (not safe))
                          (_%lp83441%_ _%rest83467%_ __tmp87293))))))
            (if (let () (declare (not safe)) (##pair? _%rest8344883456%_))
                (let ((_%hd8345383474%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8344883456%_)))
                      (_%tl8345483476%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8344883456%_))))
                  (let* ((_%hd83479%_ _%hd8345383474%_)
                         (_%rest83481%_ _%tl8345483476%_))
                    (declare (not safe))
                    (_%K8345283471%_ _%rest83481%_ _%hd83479%_)))
                (let () (declare (not safe)) (_%else8345083464%_)))))))
    (define remq1
      (lambda (_%el83389%_ _%lst83391%_)
        (let _%lp83394%_ ((_%rest83397%_ _%lst83391%_) (_%r83399%_ '()))
          (let* ((_%rest8340183409%_ _%rest83397%_)
                 (_%else8340383417%_ (lambda () _%lst83391%_))
                 (_%K8340583424%_
                  (lambda (_%rest83420%_ _%hd83421%_)
                    (if (eq? _%el83389%_ _%hd83421%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest83420%_ _%r83399%_))
                        (let ((__tmp87294 (cons _%hd83421%_ _%r83399%_)))
                          (declare (not safe))
                          (_%lp83394%_ _%rest83420%_ __tmp87294))))))
            (if (let () (declare (not safe)) (##pair? _%rest8340183409%_))
                (let ((_%hd8340683427%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8340183409%_)))
                      (_%tl8340783429%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8340183409%_))))
                  (let* ((_%hd83432%_ _%hd8340683427%_)
                         (_%rest83434%_ _%tl8340783429%_))
                    (declare (not safe))
                    (_%K8340583424%_ _%rest83434%_ _%hd83432%_)))
                (let () (declare (not safe)) (_%else8340383417%_)))))))
    (define remf
      (lambda (_%proc83374%_ _%lst83375%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc83374%_))
              (let ()
                (let ((_%proc83379%_ _%proc83374%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__remf _%proc83379%_ _%lst83375%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc83374%_)))))
    (define __remf
      (lambda (_%proc83323%_ _%lst83324%_)
        (let ()
          (let ((_%proc83327%_ _%proc83323%_))
            (let ()
              (let _%lp83336%_ ((_%rest83338%_ _%lst83324%_) (_%r83339%_ '()))
                (let* ((_%rest8334083348%_ _%rest83338%_)
                       (_%else8334283356%_ (lambda () _%lst83324%_))
                       (_%K8334483362%_
                        (lambda (_%rest83359%_ _%hd83360%_)
                          (if (let ()
                                (declare (not safe))
                                (_%proc83327%_ _%hd83360%_))
                              (let ()
                                (declare (not safe))
                                (__foldl1 cons _%rest83359%_ _%r83339%_))
                              (let ((__tmp87295 (cons _%hd83360%_ _%r83339%_)))
                                (declare (not safe))
                                (_%lp83336%_ _%rest83359%_ __tmp87295))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest8334083348%_))
                      (let ((_%hd8334583365%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest8334083348%_)))
                            (_%tl8334683367%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest8334083348%_))))
                        (let* ((_%hd83370%_ _%hd8334583365%_)
                               (_%rest83372%_ _%tl8334683367%_))
                          (declare (not safe))
                          (_%K8334483362%_ _%rest83372%_ _%hd83370%_)))
                      (let ()
                        (declare (not safe))
                        (_%else8334283356%_))))))))))
    (define 1+
      (lambda (_%x83309%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83309%_))
              (let ()
                (let ((_%x83313%_ _%x83309%_))
                  (let () (let () (declare (not safe)) (__1+ _%x83313%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x83309%_)))))
    (define __1+
      (lambda (_%x83297%_)
        (let () (let ((_%x83300%_ _%x83297%_)) (let () (+ _%x83300%_ '1))))))
    (define 1-
      (lambda (_%x83283%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83283%_))
              (let ()
                (let ((_%x83287%_ _%x83283%_))
                  (let () (let () (declare (not safe)) (__1- _%x83287%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x83283%_)))))
    (define __1-
      (lambda (_%x83271%_)
        (let () (let ((_%x83274%_ _%x83271%_)) (let () (- _%x83274%_ '1))))))
    (define fx1+
      (lambda (_%x83257%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83257%_))
              (let ()
                (let ((_%x83261%_ _%x83257%_))
                  (let () (let () (declare (not safe)) (__fx1+ _%x83261%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x83257%_)))))
    (define __fx1+
      (lambda (_%x83245%_)
        (let ()
          (let ((_%x83248%_ _%x83245%_))
            (let () (let () (declare (not safe)) (##fx+ _%x83248%_ '1)))))))
    (define fx1-
      (lambda (_%x83231%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83231%_))
              (let ()
                (let ((_%x83235%_ _%x83231%_))
                  (let () (let () (declare (not safe)) (__fx1- _%x83235%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x83231%_)))))
    (define __fx1-
      (lambda (_%x83219%_)
        (let ()
          (let ((_%x83222%_ _%x83219%_))
            (let () (let () (declare (not safe)) (##fx- _%x83222%_ '1)))))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83216%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83216%_))
              (let () (declare (not safe)) (##fx>= _%x83216%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83213%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83213%_))
              (let () (declare (not safe)) (##fx> _%x83213%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83210%_)
        (let () (let () (declare (not safe)) (##fx= _%x83210%_ '0)))))
    (define fx<0?
      (lambda (_%x83207%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83207%_))
              (let () (declare (not safe)) (##fx< _%x83207%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83204%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83204%_))
              (let () (declare (not safe)) (##fx<= _%x83204%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83201%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83201%_))
              (let ((__tmp87296 (uninterned-symbol? _%x83201%_)))
                (declare (not safe))
                (not __tmp87296))
              '#f))))
    (define display-as-string
      (lambda (_%x83186%_ _%port83187%_)
        (let ()
          (if (output-port? _%port83187%_)
              (let ()
                (let ((_%port83191%_ _%port83187%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__display-as-string _%x83186%_ _%port83191%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port83187%_)))))
    (define __display-as-string
      (lambda (_%x83143%_ _%port83144%_)
        (let ()
          (let ((_%port83147%_ _%port83144%_))
            (let ()
              (if (or (let () (declare (not safe)) (string? _%x83143%_))
                      (let () (declare (not safe)) (symbol? _%x83143%_))
                      (let () (declare (not safe)) (keyword? _%x83143%_))
                      (let () (declare (not safe)) (number? _%x83143%_))
                      (let () (declare (not safe)) (char? _%x83143%_)))
                  (let () (display _%x83143%_ _%port83147%_))
                  (if (let () (declare (not safe)) (pair? _%x83143%_))
                      (let ()
                        (let ((__tmp87297 (car _%x83143%_)))
                          (declare (not safe))
                          (display-as-string __tmp87297 _%port83147%_))
                        (let ((__tmp87298 (cdr _%x83143%_)))
                          (declare (not safe))
                          (display-as-string __tmp87298 _%port83147%_)))
                      (if (let () (declare (not safe)) (vector? _%x83143%_))
                          (let ()
                            (vector-for-each
                             (lambda (_%g8317083172%_)
                               (let ()
                                 (declare (not safe))
                                 (display-as-string
                                  _%g8317083172%_
                                  _%port83147%_)))
                             _%x83143%_))
                          (if (or (let ()
                                    (declare (not safe))
                                    (null? _%x83143%_))
                                  (let ()
                                    (declare (not safe))
                                    (eq? _%x83143%_ '#!void))
                                  (let ()
                                    (declare (not safe))
                                    (eof-object? _%x83143%_))
                                  (let ()
                                    (declare (not safe))
                                    (boolean? _%x83143%_)))
                              (let () '#!void)
                              (let ()
                                (error '"cannot convert as string"
                                       _%x83143%_)))))))))))
    (define as-string__0
      (lambda (_%x83126%_)
        (if (let () (declare (not safe)) (string? _%x83126%_))
            (let () _%x83126%_)
            (if (let () (declare (not safe)) (symbol? _%x83126%_))
                (let () (symbol->string _%x83126%_))
                (if (let () (declare (not safe)) (keyword? _%x83126%_))
                    (let () (keyword->string _%x83126%_))
                    (if (let () (declare (not safe)) (number? _%x83126%_))
                        (let () (number->string _%x83126%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8313283134%_)
                             (let ()
                               (declare (not safe))
                               (display-as-string
                                _%x83126%_
                                _%g8313283134%_)))))))))))
    (define as-string__1
      (lambda _%args83137%_
        (call-with-output-string
         '()
         (lambda (_%g8313883140%_)
           (let ()
             (declare (not safe))
             (display-as-string _%args83137%_ _%g8313883140%_))))))
    (define as-string
      (lambda _g87300_
        (let ((_g87299_ (let () (declare (not safe)) (##length _g87300_))))
          (cond ((let () (declare (not safe)) (##fx= _g87299_ 1))
                 (apply (lambda (_%x83126%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83126%_)))
                        _g87300_))
                (#t (apply as-string__1 _g87300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87300_))))))
    (define make-symbol__0
      (lambda (_%x83122%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83122%_))
            _%x83122%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83122%_))))))
    (define make-symbol__1
      (lambda _%args83124%_ (string->symbol (apply as-string _%args83124%_))))
    (define make-symbol
      (lambda _g87302_
        (let ((_g87301_ (let () (declare (not safe)) (##length _g87302_))))
          (cond ((let () (declare (not safe)) (##fx= _g87301_ 1))
                 (apply (lambda (_%x83122%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83122%_)))
                        _g87302_))
                (#t (apply make-symbol__1 _g87302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87302_))))))
    (define make-keyword__0
      (lambda (_%x83118%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83118%_))
            _%x83118%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83118%_))))))
    (define make-keyword__1
      (lambda _%args83120%_ (string->keyword (apply as-string _%args83120%_))))
    (define make-keyword
      (lambda _g87304_
        (let ((_g87303_ (let () (declare (not safe)) (##length _g87304_))))
          (cond ((let () (declare (not safe)) (##fx= _g87303_ 1))
                 (apply (lambda (_%x83118%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83118%_)))
                        _g87304_))
                (#t (apply make-keyword__1 _g87304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87304_))))))
    (define interned-keyword?
      (lambda (_%x83115%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83115%_))
              (let ((__tmp87305 (uninterned-keyword? _%x83115%_)))
                (declare (not safe))
                (not __tmp87305))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83101%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83101%_))
              (let ()
                (let ((_%sym83105%_ _%sym83101%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__symbol->keyword _%sym83105%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83101%_)))))
    (define __symbol->keyword
      (lambda (_%sym83089%_)
        (let ()
          (let ((_%sym83092%_ _%sym83089%_))
            (let ()
              (if (uninterned-symbol? _%sym83092%_)
                  (let ((__tmp87306
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83092%_))))
                    (declare (not safe))
                    (##string->uninterned-keyword __tmp87306))
                  (let ((__tmp87307
                         (let ()
                           (declare (not safe))
                           (##symbol->string _%sym83092%_))))
                    (declare (not safe))
                    (##string->keyword __tmp87307))))))))
    (define keyword->symbol
      (lambda (_%sym83075%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83075%_))
              (let ()
                (let ((_%sym83079%_ _%sym83075%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__keyword->symbol _%sym83079%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83075%_)))))
    (define __keyword->symbol
      (lambda (_%sym83063%_)
        (let ()
          (let ((_%sym83066%_ _%sym83063%_))
            (let ()
              (if (uninterned-keyword? _%sym83066%_)
                  (let ((__tmp87308
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83066%_))))
                    (declare (not safe))
                    (##string->uninterned-symbol __tmp87308))
                  (let ((__tmp87309
                         (let ()
                           (declare (not safe))
                           (##keyword->string _%sym83066%_))))
                    (declare (not safe))
                    (##string->symbol __tmp87309))))))))
    (define bytes->string__%
      (lambda (_%bstr83028%_ _%enc83029%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83028%_))
              (let ()
                (let ((_%bstr83033%_ _%bstr83028%_))
                  (if (let () (declare (not safe)) (symbol? _%enc83029%_))
                      (let ()
                        (let ((_%enc83043%_ _%enc83029%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bytes->string__%
                               _%bstr83033%_
                               _%enc83043%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83029%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83028%_)))))
    (define bytes->string__0
      (lambda (_%bstr83056%_)
        (let ((_%enc83058%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83056%_ _%enc83058%_))))
    (define bytes->string
      (lambda _g87311_
        (let ((_g87310_ (let () (declare (not safe)) (##length _g87311_))))
          (cond ((let () (declare (not safe)) (##fx= _g87310_ 1))
                 (apply (lambda (_%bstr83056%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83056%_)))
                        _g87311_))
                ((let () (declare (not safe)) (##fx= _g87310_ 2))
                 (apply (lambda (_%bstr83060%_ _%enc83061%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83060%_ _%enc83061%_)))
                        _g87311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87311_))))))
    (define __bytes->string__%
      (lambda (_%bstr82987%_ _%enc82988%_)
        (let ()
          (let ((_%bstr82991%_ _%bstr82987%_))
            (let ((_%enc82999%_ _%enc82988%_))
              (let ()
                (if (eq? _%enc82999%_ 'UTF-8)
                    (let ()
                      (declare (not safe))
                      (##utf8->string _%bstr82991%_))
                    (let* ((_%in83008%_
                            (open-input-u8vector
                             (cons 'char-encoding:
                                   (cons _%enc82999%_
                                         (cons 'init:
                                               (cons _%bstr82991%_ '()))))))
                           (_%len83010%_ (u8vector-length _%bstr82991%_))
                           (_%out83012%_ (make-string _%len83010%_))
                           (_%n83014%_
                            (read-substring
                             _%out83012%_
                             '0
                             _%len83010%_
                             _%in83008%_)))
                      (string-shrink! _%out83012%_ _%n83014%_)
                      _%out83012%_))))))))
    (define __bytes->string__0
      (lambda (_%bstr83020%_)
        (let ((_%enc83022%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83020%_ _%enc83022%_))))
    (define __bytes->string
      (lambda _g87313_
        (let ((_g87312_ (let () (declare (not safe)) (##length _g87313_))))
          (cond ((let () (declare (not safe)) (##fx= _g87312_ 1))
                 (apply (lambda (_%bstr83020%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83020%_)))
                        _g87313_))
                ((let () (declare (not safe)) (##fx= _g87312_ 2))
                 (apply (lambda (_%bstr83024%_ _%enc83025%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83024%_ _%enc83025%_)))
                        _g87313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87313_))))))
    (define string->bytes__%
      (lambda (_%str82951%_ _%enc82952%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82951%_))
              (let ()
                (let ((_%str82956%_ _%str82951%_))
                  (if (let () (declare (not safe)) (symbol? _%enc82952%_))
                      (let ()
                        (let ((_%enc82966%_ _%enc82952%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string->bytes__%
                               _%str82956%_
                               _%enc82966%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc82952%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str82951%_)))))
    (define string->bytes__0
      (lambda (_%str82979%_)
        (let ((_%enc82981%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str82979%_ _%enc82981%_))))
    (define string->bytes
      (lambda _g87315_
        (let ((_g87314_ (let () (declare (not safe)) (##length _g87315_))))
          (cond ((let () (declare (not safe)) (##fx= _g87314_ 1))
                 (apply (lambda (_%str82979%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str82979%_)))
                        _g87315_))
                ((let () (declare (not safe)) (##fx= _g87314_ 2))
                 (apply (lambda (_%str82983%_ _%enc82984%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str82983%_ _%enc82984%_)))
                        _g87315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87315_))))))
    (define __string->bytes__%
      (lambda (_%str82919%_ _%enc82920%_)
        (let ()
          (let ((_%str82923%_ _%str82919%_))
            (let ((_%enc82931%_ _%enc82920%_))
              (let ()
                (if (eq? _%enc82931%_ 'UTF-8)
                    (let () (declare (not safe)) (##string->utf8 _%str82923%_))
                    (let ((__tmp87316
                           (let ()
                             (declare (not safe))
                             (##string-length _%str82923%_))))
                      (declare (not safe))
                      (substring->bytes__%
                       _%str82923%_
                       '0
                       __tmp87316
                       _%enc82931%_)))))))))
    (define __string->bytes__0
      (lambda (_%str82943%_)
        (let ((_%enc82945%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str82943%_ _%enc82945%_))))
    (define __string->bytes
      (lambda _g87318_
        (let ((_g87317_ (let () (declare (not safe)) (##length _g87318_))))
          (cond ((let () (declare (not safe)) (##fx= _g87317_ 1))
                 (apply (lambda (_%str82943%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str82943%_)))
                        _g87318_))
                ((let () (declare (not safe)) (##fx= _g87317_ 2))
                 (apply (lambda (_%str82947%_ _%enc82948%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str82947%_ _%enc82948%_)))
                        _g87318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87318_))))))
    (define substring->bytes__%
      (lambda (_%str82867%_ _%start82868%_ _%end82869%_ _%enc82870%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82867%_))
              (let ()
                (let ((_%str82874%_ _%str82867%_))
                  (if (let ()
                        (declare (not safe))
                        (nonnegative-fixnum? _%start82868%_))
                      (let ()
                        (let ((_%start82884%_ _%start82868%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%end82869%_))
                              (let ()
                                (let ((_%end82894%_ _%end82869%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__substring->bytes__%
                                       _%str82874%_
                                       _%start82884%_
                                       _%end82894%_
                                       _%enc82870%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%end82869%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start82868%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str82867%_)))))
    (define substring->bytes__0
      (lambda (_%str82907%_ _%start82908%_ _%end82909%_)
        (let ((_%enc82911%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str82907%_
           _%start82908%_
           _%end82909%_
           _%enc82911%_))))
    (define substring->bytes
      (lambda _g87320_
        (let ((_g87319_ (let () (declare (not safe)) (##length _g87320_))))
          (cond ((let () (declare (not safe)) (##fx= _g87319_ 3))
                 (apply (lambda (_%str82907%_ _%start82908%_ _%end82909%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str82907%_
                             _%start82908%_
                             _%end82909%_)))
                        _g87320_))
                ((let () (declare (not safe)) (##fx= _g87319_ 4))
                 (apply (lambda (_%str82913%_
                                 _%start82914%_
                                 _%end82915%_
                                 _%enc82916%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str82913%_
                             _%start82914%_
                             _%end82915%_
                             _%enc82916%_)))
                        _g87320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87320_))))))
    (define __substring->bytes__%
      (lambda (_%str82819%_ _%start82820%_ _%end82821%_ _%enc82822%_)
        (let ()
          (let ((_%str82825%_ _%str82819%_))
            (let ((_%start82833%_ _%start82820%_))
              (let ((_%end82841%_ _%end82821%_))
                (let ()
                  (if (eq? _%enc82822%_ 'UTF-8)
                      (string->utf8 _%str82825%_ _%start82833%_ _%end82841%_)
                      (let ((_%out82850%_
                             (open-output-u8vector
                              (cons 'char-encoding: (cons _%enc82822%_ '())))))
                        (write-substring
                         _%str82825%_
                         _%start82833%_
                         _%end82841%_
                         _%out82850%_)
                        (get-output-u8vector _%out82850%_))))))))))
    (define __substring->bytes__0
      (lambda (_%str82855%_ _%start82856%_ _%end82857%_)
        (let ((_%enc82859%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str82855%_
           _%start82856%_
           _%end82857%_
           _%enc82859%_))))
    (define __substring->bytes
      (lambda _g87322_
        (let ((_g87321_ (let () (declare (not safe)) (##length _g87322_))))
          (cond ((let () (declare (not safe)) (##fx= _g87321_ 3))
                 (apply (lambda (_%str82855%_ _%start82856%_ _%end82857%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str82855%_
                             _%start82856%_
                             _%end82857%_)))
                        _g87322_))
                ((let () (declare (not safe)) (##fx= _g87321_ 4))
                 (apply (lambda (_%str82861%_
                                 _%start82862%_
                                 _%end82863%_
                                 _%enc82864%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str82861%_
                             _%start82862%_
                             _%end82863%_
                             _%enc82864%_)))
                        _g87322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87322_))))))
    (define string-empty?
      (lambda (_%str82804%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82804%_))
              (let ()
                (let ((_%str82808%_ _%str82804%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__string-empty? _%str82808%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str82804%_)))))
    (define __string-empty?
      (lambda (_%str82792%_)
        (let ()
          (let ((_%str82795%_ _%str82792%_))
            (let ()
              (let ((__tmp87323
                     (let ()
                       (declare (not safe))
                       (##string-length _%str82795%_))))
                (declare (not safe))
                (##fxzero? __tmp87323)))))))
    (define string-index__%
      (lambda (_%str82744%_ _%char82745%_ _%start82746%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82744%_))
              (let ()
                (let ((_%str82750%_ _%str82744%_))
                  (if (let () (declare (not safe)) (char? _%char82745%_))
                      (let ()
                        (let ((_%char82760%_ _%char82745%_))
                          (if (let ()
                                (declare (not safe))
                                (nonnegative-fixnum? _%start82746%_))
                              (let ()
                                (let ((_%start82770%_ _%start82746%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__string-index__%
                                       _%str82750%_
                                       _%char82760%_
                                       _%start82770%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                               'contract:
                               'nonnegative-fixnum?
                               'value:
                               _%start82746%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char82745%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str82744%_)))))
    (define string-index__0
      (lambda (_%str82783%_ _%char82784%_)
        (let ((_%start82786%_ '0))
          (declare (not safe))
          (string-index__% _%str82783%_ _%char82784%_ _%start82786%_))))
    (define string-index
      (lambda _g87325_
        (let ((_g87324_ (let () (declare (not safe)) (##length _g87325_))))
          (cond ((let () (declare (not safe)) (##fx= _g87324_ 2))
                 (apply (lambda (_%str82783%_ _%char82784%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str82783%_ _%char82784%_)))
                        _g87325_))
                ((let () (declare (not safe)) (##fx= _g87324_ 3))
                 (apply (lambda (_%str82788%_ _%char82789%_ _%start82790%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str82788%_
                             _%char82789%_
                             _%start82790%_)))
                        _g87325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87325_))))))
    (define __string-index__%
      (lambda (_%str82683%_ _%char82684%_ _%start82685%_)
        (let ()
          (let ((_%str82688%_ _%str82683%_))
            (let ((_%char82696%_ _%char82684%_))
              (let ((_%start82704%_ _%start82685%_))
                (let ()
                  (let ((_%len82713%_
                         (let ()
                           (declare (not safe))
                           (##string-length _%str82688%_))))
                    (let _%lp82715%_ ((_%k82717%_ _%start82704%_))
                      (let ((_%k82719%_ _%k82717%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k82719%_ _%len82713%_))
                            (if (eq? _%char82696%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str82688%_ _%k82719%_)))
                                _%k82719%_
                                (let ((__tmp87326
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k82719%_ '1))))
                                  (declare (not safe))
                                  (_%lp82715%_ __tmp87326)))
                            '#f)))))))))))
    (define __string-index__0
      (lambda (_%str82734%_ _%char82735%_)
        (let ((_%start82737%_ '0))
          (declare (not safe))
          (__string-index__% _%str82734%_ _%char82735%_ _%start82737%_))))
    (define __string-index
      (lambda _g87328_
        (let ((_g87327_ (let () (declare (not safe)) (##length _g87328_))))
          (cond ((let () (declare (not safe)) (##fx= _g87327_ 2))
                 (apply (lambda (_%str82734%_ _%char82735%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str82734%_ _%char82735%_)))
                        _g87328_))
                ((let () (declare (not safe)) (##fx= _g87327_ 3))
                 (apply (lambda (_%str82739%_ _%char82740%_ _%start82741%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str82739%_
                             _%char82740%_
                             _%start82741%_)))
                        _g87328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87328_))))))
    (define string-rindex__%
      (lambda (_%str82644%_ _%char82645%_ _%start82646%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82644%_))
              (let ()
                (let ((_%str82650%_ _%str82644%_))
                  (if (let () (declare (not safe)) (char? _%char82645%_))
                      (let ()
                        (let ((_%char82660%_ _%char82645%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-rindex__%
                               _%str82650%_
                               _%char82660%_
                               _%start82646%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char82645%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str82644%_)))))
    (define string-rindex__0
      (lambda (_%str82673%_ _%char82674%_)
        (let ((_%start82676%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str82673%_ _%char82674%_ _%start82676%_))))
    (define string-rindex
      (lambda _g87330_
        (let ((_g87329_ (let () (declare (not safe)) (##length _g87330_))))
          (cond ((let () (declare (not safe)) (##fx= _g87329_ 2))
                 (apply (lambda (_%str82673%_ _%char82674%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str82673%_ _%char82674%_)))
                        _g87330_))
                ((let () (declare (not safe)) (##fx= _g87329_ 3))
                 (apply (lambda (_%str82678%_ _%char82679%_ _%start82680%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str82678%_
                             _%char82679%_
                             _%start82680%_)))
                        _g87330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87330_))))))
    (define __string-rindex__%
      (lambda (_%str82586%_ _%char82587%_ _%start82588%_)
        (let ()
          (let ((_%str82591%_ _%str82586%_))
            (let ((_%char82599%_ _%char82587%_))
              (let ()
                (let* ((_%len82608%_
                        (let ()
                          (declare (not safe))
                          (##string-length _%str82591%_)))
                       (_%start82610%_
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _%start82588%_))
                            _%start82588%_
                            (let ()
                              (declare (not safe))
                              (##fx- _%len82608%_ '1)))))
                  (let _%lp82613%_ ((_%k82615%_ _%start82610%_))
                    (let ((_%k82617%_ _%k82615%_))
                      (if (let () (declare (not safe)) (##fx>= _%k82617%_ '0))
                          (if (eq? _%char82599%_
                                   (let ()
                                     (declare (not safe))
                                     (##string-ref _%str82591%_ _%k82617%_)))
                              _%k82617%_
                              (let ((__tmp87331
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%k82617%_ '1))))
                                (declare (not safe))
                                (_%lp82613%_ __tmp87331)))
                          '#f))))))))))
    (define __string-rindex__0
      (lambda (_%str82634%_ _%char82635%_)
        (let ((_%start82637%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str82634%_ _%char82635%_ _%start82637%_))))
    (define __string-rindex
      (lambda _g87333_
        (let ((_g87332_ (let () (declare (not safe)) (##length _g87333_))))
          (cond ((let () (declare (not safe)) (##fx= _g87332_ 2))
                 (apply (lambda (_%str82634%_ _%char82635%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str82634%_ _%char82635%_)))
                        _g87333_))
                ((let () (declare (not safe)) (##fx= _g87332_ 3))
                 (apply (lambda (_%str82639%_ _%char82640%_ _%start82641%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str82639%_
                             _%char82640%_
                             _%start82641%_)))
                        _g87333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87333_))))))
    (define string-split
      (lambda (_%str82560%_ _%char82561%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str82560%_))
              (let ()
                (let ((_%str82565%_ _%str82560%_))
                  (if (let () (declare (not safe)) (char? _%char82561%_))
                      (let ()
                        (let ((_%char82575%_ _%char82561%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__string-split _%str82565%_ _%char82575%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char82561%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str82560%_)))))
    (define __string-split
      (lambda (_%str82501%_ _%char82502%_)
        (let ()
          (let ((_%str82505%_ _%str82501%_))
            (let ((_%char82513%_ _%char82502%_))
              (let ()
                (let ((_%len82522%_
                       (let ()
                         (declare (not safe))
                         (##string-length _%str82505%_))))
                  (let _%lp82524%_ ((_%start82526%_ '0) (_%r82527%_ '()))
                    (let ()
                      (let ((_%start82530%_ _%start82526%_))
                        (let ((_%$e82543%_
                               (let ()
                                 (declare (not safe))
                                 (string-index__%
                                  _%str82505%_
                                  _%char82513%_
                                  _%start82530%_))))
                          (if _%$e82543%_
                              ((lambda (_%end82546%_)
                                 (let ((_%end82548%_ _%end82546%_))
                                   (let ((__tmp87335
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%end82548%_ '1)))
                                         (__tmp87334
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##substring
                                                   _%str82505%_
                                                   _%start82530%_
                                                   _%end82548%_))
                                                _%r82527%_)))
                                     (declare (not safe))
                                     (_%lp82524%_ __tmp87335 __tmp87334))))
                               _%$e82543%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##fx< _%start82530%_ _%len82522%_))
                                  (let ()
                                    (let ((__tmp87336
                                           (list (let ()
                                                   (declare (not safe))
                                                   (##substring
                                                    _%str82505%_
                                                    _%start82530%_
                                                    _%len82522%_)))))
                                      (declare (not safe))
                                      (__foldl1 cons __tmp87336 _%r82527%_)))
                                  (let () (reverse! _%r82527%_)))))))))))))))
    (define string-join
      (lambda (_%strs82351%_ _%join82352%_)
        (let ()
          (letrec ((_%join-length82355%_
                    (lambda (_%strs82439%_ _%jlen82440%_)
                      (let _%lp82442%_ ((_%rest82444%_ _%strs82439%_)
                                        (_%len82445%_ '0))
                        (let ((_%len82447%_ _%len82445%_))
                          (let* ((_%rest8245582463%_ _%rest82444%_)
                                 (_%else8245782471%_ (lambda () '0))
                                 (_%K8245982489%_
                                  (lambda (_%rest82474%_ _%hd82475%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd82475%_))
                                        (let ((_%hd82477%_ _%hd82475%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest82474%_))
                                              (let ((__tmp87337
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd82477%_))
                                                          _%jlen82440%_
                                                          _%len82447%_)))
                                                (declare (not safe))
                                                (_%lp82442%_
                                                 _%rest82474%_
                                                 __tmp87337))
                                              (let ((__tmp87338
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd82477%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87338
                                                       _%len82447%_))))
                                        (error '"expected string"
                                               _%hd82475%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8245582463%_))
                                (let ((_%hd8246082492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8245582463%_)))
                                      (_%tl8246182494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8245582463%_))))
                                  (let* ((_%hd82497%_ _%hd8246082492%_)
                                         (_%rest82499%_ _%tl8246182494%_))
                                    (declare (not safe))
                                    (_%K8245982489%_
                                     _%rest82499%_
                                     _%hd82497%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8245782471%_)))))))))
            (let* ((_%join82360%_
                    (if (let () (declare (not safe)) (char? _%join82352%_))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (##string _%join82352%_)))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82352%_))
                            (let () _%join82352%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82352%_)))))
                   (_%jlen82362%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join82360%_)))
                   (_%olen82364%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82355%_ _%strs82351%_ _%jlen82362%_)))
                   (_%ostr82366%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen82364%_))))
              (let _%lp82369%_ ((_%rest82371%_ _%strs82351%_) (_%k82372%_ '0))
                (let ()
                  (let ((_%k82375%_ _%k82372%_))
                    (let* ((_%rest8239182399%_ _%rest82371%_)
                           (_%else8239382407%_ (lambda () '""))
                           (_%K8239582427%_
                            (lambda (_%rest82410%_ _%hd82411%_)
                              (let ((_%hd82413%_ _%hd82411%_))
                                (let ((_%hdlen82425%_
                                       (let ()
                                         (declare (not safe))
                                         (##string-length _%hd82413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (pair? _%rest82410%_))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82413%_
                                           '0
                                           _%hdlen82425%_
                                           _%ostr82366%_
                                           _%k82375%_))
                                        (let ((__tmp87339
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82375%_
                                                        _%hdlen82425%_))))
                                          (declare (not safe))
                                          (##substring-move!
                                           _%join82360%_
                                           '0
                                           _%jlen82362%_
                                           _%ostr82366%_
                                           __tmp87339))
                                        (let ((__tmp87340
                                               (let ()
                                                 (declare (not safe))
                                                 (##fx+ _%k82375%_
                                                        _%hdlen82425%_
                                                        _%jlen82362%_))))
                                          (declare (not safe))
                                          (_%lp82369%_
                                           _%rest82410%_
                                           __tmp87340)))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##substring-move!
                                           _%hd82413%_
                                           '0
                                           _%hdlen82425%_
                                           _%ostr82366%_
                                           _%k82375%_))
                                        _%ostr82366%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%rest8239182399%_))
                          (let ((_%hd8239682430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest8239182399%_)))
                                (_%tl8239782432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest8239182399%_))))
                            (let* ((_%hd82435%_ _%hd8239682430%_)
                                   (_%rest82437%_ _%tl8239782432%_))
                              (declare (not safe))
                              (_%K8239582427%_ _%rest82437%_ _%hd82435%_)))
                          (let ()
                            (declare (not safe))
                            (_%else8239382407%_))))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82277%_ _%port82278%_ _%start82279%_ _%end82280%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82277%_))
              (let ()
                (let ((_%bytes82284%_ _%bytes82277%_))
                  (if (input-port? _%port82278%_)
                      (let ()
                        (let ((_%port82294%_ _%port82278%_))
                          (if ((lambda (_%o82303%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82303%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82303%_ '0))
                                      (fx< _%o82303%_
                                           (u8vector-length _%bytes82284%_))))
                               _%start82279%_)
                              (let ()
                                (let ((_%start82307%_ _%start82279%_))
                                  (if ((lambda (_%o82316%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82316%_))
                                              (fx<= _%start82307%_
                                                    _%o82316%_
                                                    (u8vector-length
                                                     _%bytes82284%_))))
                                       _%end82280%_)
                                      (let ()
                                        (let ((_%end82320%_ _%end82280%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__read-u8vector__%
                                               _%bytes82284%_
                                               _%port82294%_
                                               _%start82307%_
                                               _%end82320%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82280%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82279%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82278%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes82277%_)))))
    (define read-u8vector__0
      (lambda (_%bytes82333%_ _%port82334%_)
        (let* ((_%start82336%_ '0) (_%end82338%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82333%_
           _%port82334%_
           _%start82336%_
           _%end82338%_))))
    (define read-u8vector__1
      (lambda (_%bytes82340%_ _%port82341%_ _%start82342%_)
        (let ((_%end82344%_ (u8vector-length)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82340%_
           _%port82341%_
           _%start82342%_
           _%end82344%_))))
    (define read-u8vector
      (lambda _g87342_
        (let ((_g87341_ (let () (declare (not safe)) (##length _g87342_))))
          (cond ((let () (declare (not safe)) (##fx= _g87341_ 2))
                 (apply (lambda (_%bytes82333%_ _%port82334%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82333%_ _%port82334%_)))
                        _g87342_))
                ((let () (declare (not safe)) (##fx= _g87341_ 3))
                 (apply (lambda (_%bytes82340%_ _%port82341%_ _%start82342%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82340%_
                             _%port82341%_
                             _%start82342%_)))
                        _g87342_))
                ((let () (declare (not safe)) (##fx= _g87341_ 4))
                 (apply (lambda (_%bytes82346%_
                                 _%port82347%_
                                 _%start82348%_
                                 _%end82349%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82346%_
                             _%port82347%_
                             _%start82348%_
                             _%end82349%_)))
                        _g87342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87342_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82216%_ _%port82217%_ _%start82218%_ _%end82219%_)
        (let ()
          (let ((_%bytes82222%_ _%bytes82216%_))
            (let ((_%port82230%_ _%port82217%_))
              (let ((_%start82238%_ _%start82218%_))
                (let ((_%end82246%_ _%end82219%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##read-subu8vector
                       _%bytes82222%_
                       _%start82238%_
                       _%end82246%_
                       _%port82230%_))))))))))
    (define __read-u8vector__0
      (lambda (_%bytes82258%_ _%port82259%_)
        (let* ((_%start82261%_ '0) (_%end82263%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82258%_
           _%port82259%_
           _%start82261%_
           _%end82263%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82265%_ _%port82266%_ _%start82267%_)
        (let ((_%end82269%_ (u8vector-length)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82265%_
           _%port82266%_
           _%start82267%_
           _%end82269%_))))
    (define __read-u8vector
      (lambda _g87344_
        (let ((_g87343_ (let () (declare (not safe)) (##length _g87344_))))
          (cond ((let () (declare (not safe)) (##fx= _g87343_ 2))
                 (apply (lambda (_%bytes82258%_ _%port82259%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82258%_ _%port82259%_)))
                        _g87344_))
                ((let () (declare (not safe)) (##fx= _g87343_ 3))
                 (apply (lambda (_%bytes82265%_ _%port82266%_ _%start82267%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82265%_
                             _%port82266%_
                             _%start82267%_)))
                        _g87344_))
                ((let () (declare (not safe)) (##fx= _g87343_ 4))
                 (apply (lambda (_%bytes82271%_
                                 _%port82272%_
                                 _%start82273%_
                                 _%end82274%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82271%_
                             _%port82272%_
                             _%start82273%_
                             _%end82274%_)))
                        _g87344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87344_))))))
    (define write-u8vector__%
      (lambda (_%bytes82141%_ _%port82142%_ _%start82143%_ _%end82144%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82141%_))
              (let ()
                (let ((_%bytes82148%_ _%bytes82141%_))
                  (if (output-port? _%port82142%_)
                      (let ()
                        (let ((_%port82158%_ _%port82142%_))
                          (if ((lambda (_%o82167%_)
                                 (and (let ()
                                        (declare (not safe))
                                        (fixnum? _%o82167%_))
                                      (let ()
                                        (declare (not safe))
                                        (##fx>= _%o82167%_ '0))
                                      (fx< _%o82167%_
                                           (u8vector-length _%bytes82148%_))))
                               _%start82143%_)
                              (let ()
                                (let ((_%start82171%_ _%start82143%_))
                                  (if ((lambda (_%o82180%_)
                                         (and (let ()
                                                (declare (not safe))
                                                (fixnum? _%o82180%_))
                                              (fx<= _%start82171%_
                                                    _%o82180%_
                                                    (u8vector-length
                                                     _%bytes82148%_))))
                                       _%end82144%_)
                                      (let ()
                                        (let ((_%end82184%_ _%end82144%_))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__write-u8vector__%
                                               _%bytes82148%_
                                               _%port82158%_
                                               _%start82171%_
                                               _%end82184%_)))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                       'contract:
                                       '(in-range-inclusive?
                                         start
                                         (u8vector-length bytes))
                                       'value:
                                       _%end82144%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                               'contract:
                               '(in-range? 0 (u8vector-length bytes))
                               'value:
                               _%start82143%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82142%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82141%_)))))
    (define write-u8vector__0
      (lambda (_%bytes82197%_ _%port82198%_)
        (let* ((_%start82200%_ '0) (_%end82202%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82197%_
           _%port82198%_
           _%start82200%_
           _%end82202%_))))
    (define write-u8vector__1
      (lambda (_%bytes82204%_ _%port82205%_ _%start82206%_)
        (let ((_%end82208%_ (u8vector-length)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82204%_
           _%port82205%_
           _%start82206%_
           _%end82208%_))))
    (define write-u8vector
      (lambda _g87346_
        (let ((_g87345_ (let () (declare (not safe)) (##length _g87346_))))
          (cond ((let () (declare (not safe)) (##fx= _g87345_ 2))
                 (apply (lambda (_%bytes82197%_ _%port82198%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82197%_ _%port82198%_)))
                        _g87346_))
                ((let () (declare (not safe)) (##fx= _g87345_ 3))
                 (apply (lambda (_%bytes82204%_ _%port82205%_ _%start82206%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82204%_
                             _%port82205%_
                             _%start82206%_)))
                        _g87346_))
                ((let () (declare (not safe)) (##fx= _g87345_ 4))
                 (apply (lambda (_%bytes82210%_
                                 _%port82211%_
                                 _%start82212%_
                                 _%end82213%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82210%_
                             _%port82211%_
                             _%start82212%_
                             _%end82213%_)))
                        _g87346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87346_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82080%_ _%port82081%_ _%start82082%_ _%end82083%_)
        (let ()
          (let ((_%bytes82086%_ _%bytes82080%_))
            (let ((_%port82094%_ _%port82081%_))
              (let ((_%start82102%_ _%start82082%_))
                (let ((_%end82110%_ _%end82083%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##write-subu8vector
                       _%bytes82086%_
                       _%start82102%_
                       _%end82110%_
                       _%port82094%_))))))))))
    (define __write-u8vector__0
      (lambda (_%bytes82122%_ _%port82123%_)
        (let* ((_%start82125%_ '0) (_%end82127%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82122%_
           _%port82123%_
           _%start82125%_
           _%end82127%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82129%_ _%port82130%_ _%start82131%_)
        (let ((_%end82133%_ (u8vector-length)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82129%_
           _%port82130%_
           _%start82131%_
           _%end82133%_))))
    (define __write-u8vector
      (lambda _g87348_
        (let ((_g87347_ (let () (declare (not safe)) (##length _g87348_))))
          (cond ((let () (declare (not safe)) (##fx= _g87347_ 2))
                 (apply (lambda (_%bytes82122%_ _%port82123%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82122%_
                             _%port82123%_)))
                        _g87348_))
                ((let () (declare (not safe)) (##fx= _g87347_ 3))
                 (apply (lambda (_%bytes82129%_ _%port82130%_ _%start82131%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82129%_
                             _%port82130%_
                             _%start82131%_)))
                        _g87348_))
                ((let () (declare (not safe)) (##fx= _g87347_ 4))
                 (apply (lambda (_%bytes82135%_
                                 _%port82136%_
                                 _%start82137%_
                                 _%end82138%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82135%_
                             _%port82136%_
                             _%start82137%_
                             _%end82138%_)))
                        _g87348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87348_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82048%_
               _%dbg-exprs82049%_
               _%dbg-thunks82050%_
               _%expr82051%_
               _%thunk82052%_)
        (letrec ((_%o82054%_ (current-output-port))
                 (_%e82055%_ (current-error-port))
                 (_%p82056%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82057%_
                  (lambda ()
                    (force-output _%o82054%_)
                    (force-output _%e82055%_)))
                 (_%d82058%_
                  (lambda (_%x82065%_) (display _%x82065%_ _%e82055%_)))
                 (_%w82059%_
                  (lambda (_%x82067%_) (_%p82056%_ _%x82067%_ _%e82055%_)))
                 (_%n82060%_ (lambda () (newline _%e82055%_)))
                 (_%v82061%_
                  (lambda (_%l82070%_)
                    (for-each
                     (lambda (_%x82072%_)
                       (let () (declare (not safe)) (_%d82058%_ '" "))
                       (let () (declare (not safe)) (_%w82059%_ _%x82072%_)))
                     _%l82070%_)
                    (let () (declare (not safe)) (_%n82060%_))))
                 (_%x82062%_
                  (lambda (_%expr82074%_ _%thunk82075%_)
                    (let () (declare (not safe)) (_%f82057%_))
                    (let () (declare (not safe)) (_%d82058%_ '"  "))
                    (let () (declare (not safe)) (_%w82059%_ _%expr82074%_))
                    (let () (declare (not safe)) (_%d82058%_ '" =>"))
                    (call-with-values
                     _%thunk82075%_
                     (lambda _%x82077%_
                       (let () (declare (not safe)) (_%v82061%_ _%x82077%_))
                       (let () (declare (not safe)) (_%f82057%_))
                       (apply values _%x82077%_))))))
          (if _%tag82048%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82048%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82057%_))
                      (let () (declare (not safe)) (_%d82058%_ _%tag82048%_))
                      (let () (declare (not safe)) (_%n82060%_))))
                (for-each _%x82062%_ _%dbg-exprs82049%_ _%dbg-thunks82050%_)
                (if _%thunk82052%_
                    (let ()
                      (declare (not safe))
                      (_%x82062%_ _%expr82051%_ _%thunk82052%_))
                    '#!void))
              (if _%thunk82052%_ (_%thunk82052%_) '#!void)))))))
