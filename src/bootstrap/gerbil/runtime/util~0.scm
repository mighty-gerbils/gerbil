(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1713453197)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args88245%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args88245%_))
          (newline))))
    (define display*
      (lambda _%args88242%_
        (let () (declare (not safe)) (##for-each display _%args88242%_))))
    (define file-newer?
      (lambda (_%file188217%_ _%file288218%_)
        (if (string? _%file188217%_)
            (let ((_%file188222%_ _%file188217%_))
              (if (string? _%file288218%_)
                  (let ((_%file288232%_ _%file288218%_))
                    (__file-newer? _%file188222%_ _%file288232%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file288218%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file188217%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file188165%_ _%file288166%_)
        (let* ((_%file188169%_ _%file188165%_) (_%file288177%_ _%file288166%_))
          (letrec ((_%modification-time88186%_
                    (lambda (_%file88205%_)
                      (let ((_%file88208%_ _%file88205%_))
                        (_%__modification-time88187%_ _%file88208%_))))
                   (_%__modification-time88187%_
                    (lambda (_%file88189%_)
                      (let* ((_%file88192%_ _%file88189%_)
                             (__tmp89975
                              (let ((__tmp89976
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file88192%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp89976))))
                        (declare (not safe))
                        (##time->seconds __tmp89975)))))
            (let ((__tmp89978 (_%__modification-time88187%_ _%file188169%_))
                  (__tmp89977 (_%__modification-time88187%_ _%file288177%_)))
              (declare (not safe))
              (##fl> __tmp89978 __tmp89977))))))
    (define create-directory*__%
      (lambda (_%dir88130%_ _%perms88131%_)
        (if (string? _%dir88130%_)
            (let ((_%dir88135%_ _%dir88130%_))
              (if (fixnum? _%perms88131%_)
                  (let ((_%perms88145%_ _%perms88131%_))
                    (__create-directory*__% _%dir88135%_ _%perms88145%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms88131%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir88130%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir88158%_)
        (let ((_%perms88160%_ '493))
          (create-directory*__% _%dir88158%_ _%perms88160%_))))
    (define create-directory*
      (lambda _g89980_
        (let ((_g89979_ (let () (declare (not safe)) (##length _g89980_))))
          (cond ((let () (declare (not safe)) (##fx= _g89979_ 1))
                 (apply create-directory*__0 _g89980_))
                ((let () (declare (not safe)) (##fx= _g89979_ 2))
                 (apply create-directory*__% _g89980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g89980_))))))
    (define __create-directory*__%
      (lambda (_%dir88054%_ _%perms88055%_)
        (let* ((_%dir88058%_ _%dir88054%_) (_%perms88066%_ _%perms88055%_))
          (letrec ((_%create188075%_
                    (lambda (_%path88107%_)
                      (let ((_%path88110%_ _%path88107%_))
                        (_%__create188076%_ _%path88110%_))))
                   (_%__create188076%_
                    (lambda (_%path88088%_)
                      (let ((_%path88091%_ _%path88088%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path88091%_))
                            (if (eq? (file-type _%path88091%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path88091%_))
                            (if _%perms88066%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path88091%_
                                             (cons 'permissions:
                                                   (cons _%perms88066%_
                                                         '())))))
                                (create-directory _%path88091%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir88058%_))
                '#!void
                (let _%lp88078%_ ((_%start88080%_ '0))
                  (let ((_%$e88082%_
                         (__string-index__% _%dir88058%_ '#\/ _%start88080%_)))
                    (if _%$e88082%_
                        ((lambda (_%x88085%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x88085%_ '0))
                               (_%__create188076%_
                                (substring _%dir88058%_ '0 _%x88085%_))
                               '#!void)
                           (_%lp88078%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x88085%_ '1))))
                         _%$e88082%_)
                        (_%__create188076%_ _%dir88058%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir88122%_)
        (let ((_%perms88124%_ '493))
          (__create-directory*__% _%dir88122%_ _%perms88124%_))))
    (define __create-directory*
      (lambda _g89982_
        (let ((_g89981_ (let () (declare (not safe)) (##length _g89982_))))
          (cond ((let () (declare (not safe)) (##fx= _g89981_ 1))
                 (apply __create-directory*__0 _g89982_))
                ((let () (declare (not safe)) (##fx= _g89981_ 2))
                 (apply __create-directory*__% _g89982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g89982_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore88050%_ '#t))
    (define true? (lambda (_%obj88047%_) (eq? _%obj88047%_ '#t)))
    (define false (lambda _%ignore88044%_ '#f))
    (define void (lambda _%ignore88041%_ '#!void))
    (define void? (lambda (_%obj88038%_) (eq? _%obj88038%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj88035%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj88035%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj88032%_) (eq? _%obj88032%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj88029%_) (eq? _%obj88029%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj88026%_) (eq? _%obj88026%_ '#!optional)))
    (define immediate?
      (lambda (_%obj88021%_)
        (let* ((_%t88024%_ (let () (declare (not safe)) (##type _%obj88021%_)))
               (__tmp89983
                (let () (declare (not safe)) (##fxand _%t88024%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp89983))))
    (define nonnegative-fixnum?
      (lambda (_%obj88018%_)
        (if (fixnum? _%obj88018%_)
            (let () (declare (not safe)) (##fx>= _%obj88018%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj88012%_)
        (let ((_%$e88015%_ (pair? _%obj88012%_)))
          (if _%$e88015%_ _%$e88015%_ (null? _%obj88012%_)))))
    (define values-count
      (lambda (_%obj88009%_)
        (if (let () (declare (not safe)) (##values? _%obj88009%_))
            (let () (declare (not safe)) (##vector-length _%obj88009%_))
            '1)))
    (define values-ref
      (lambda (_%obj87994%_ _%k87995%_)
        (if (fixnum? _%k87995%_)
            (let ((_%k87999%_ _%k87995%_))
              (__values-ref _%obj87994%_ _%k87999%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@200.23-200.24"
               'contract:
               'fixnum?
               'value:
               _%k87995%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj87981%_ _%k87982%_)
        (let ((_%k87985%_ _%k87982%_))
          (if (let () (declare (not safe)) (##values? _%obj87981%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj87981%_ _%k87985%_))
              _%obj87981%_))))
    (define values->list
      (lambda (_%obj87978%_)
        (if (let () (declare (not safe)) (##values? _%obj87978%_))
            (let () (declare (not safe)) (##vector->list _%obj87978%_))
            (list _%obj87978%_))))
    (define foldl1
      (lambda (_%f87962%_ _%iv87963%_ _%lst87964%_)
        (if (procedure? _%f87962%_)
            (let ((_%f87968%_ _%f87962%_))
              (__foldl1 _%f87968%_ _%iv87963%_ _%lst87964%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@223.15-223.16"
               'contract:
               'procedure?
               'value:
               _%f87962%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f87910%_ _%iv87911%_ _%lst87912%_)
        (let ((_%f87915%_ _%f87910%_))
          (let _%lp87924%_ ((_%rest87926%_ _%lst87912%_)
                            (_%r87927%_ _%iv87911%_))
            (let* ((_%rest8792887936%_ _%rest87926%_)
                   (_%else8793087944%_ (lambda () _%r87927%_))
                   (_%K8793287950%_
                    (lambda (_%rest87947%_ _%x87948%_)
                      (_%lp87924%_
                       _%rest87947%_
                       (let ()
                         (declare (not safe))
                         (_%f87915%_ _%x87948%_ _%r87927%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8792887936%_))
                  (let ((_%hd8793387953%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8792887936%_)))
                        (_%tl8793487955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8792887936%_))))
                    (let* ((_%x87958%_ _%hd8793387953%_)
                           (_%rest87960%_ _%tl8793487955%_))
                      (_%K8793287950%_ _%rest87960%_ _%x87958%_)))
                  (_%else8793087944%_)))))))
    (define foldl2
      (lambda (_%f87893%_ _%iv87894%_ _%lst187895%_ _%lst287896%_)
        (if (procedure? _%f87893%_)
            (let ((_%f87900%_ _%f87893%_))
              (__foldl2 _%f87900%_ _%iv87894%_ _%lst187895%_ _%lst287896%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@230.15-230.16"
               'contract:
               'procedure?
               'value:
               _%f87893%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f87806%_ _%iv87807%_ _%lst187808%_ _%lst287809%_)
        (let ((_%f87812%_ _%f87806%_))
          (let _%lp87821%_ ((_%rest187823%_ _%lst187808%_)
                            (_%rest287824%_ _%lst287809%_)
                            (_%r87825%_ _%iv87807%_))
            (let* ((_%rest18782687834%_ _%rest187823%_)
                   (_%else8782887842%_ (lambda () _%r87825%_))
                   (_%K8783087881%_
                    (lambda (_%rest187845%_ _%x187846%_)
                      (let* ((_%rest28784787855%_ _%rest287824%_)
                             (_%else8784987863%_ (lambda () _%r87825%_))
                             (_%K8785187869%_
                              (lambda (_%rest287866%_ _%x287867%_)
                                (_%lp87821%_
                                 _%rest187845%_
                                 _%rest287866%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f87812%_
                                    _%x187846%_
                                    _%x287867%_
                                    _%r87825%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28784787855%_))
                            (let ((_%hd8785287872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28784787855%_)))
                                  (_%tl8785387874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28784787855%_))))
                              (let* ((_%x287877%_ _%hd8785287872%_)
                                     (_%rest287879%_ _%tl8785387874%_))
                                (_%K8785187869%_ _%rest287879%_ _%x287877%_)))
                            (_%else8784987863%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18782687834%_))
                  (let ((_%hd8783187884%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18782687834%_)))
                        (_%tl8783287886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18782687834%_))))
                    (let* ((_%x187889%_ _%hd8783187884%_)
                           (_%rest187891%_ _%tl8783287886%_))
                      (_%K8783087881%_ _%rest187891%_ _%x187889%_)))
                  (_%else8782887842%_)))))))
    (define foldl
      (lambda _g89985_
        (let ((_g89984_ (let () (declare (not safe)) (##length _g89985_))))
          (cond ((let () (declare (not safe)) (##fx= _g89984_ 3))
                 (apply foldl1 _g89985_))
                ((let () (declare (not safe)) (##fx= _g89984_ 4))
                 (apply foldl2 _g89985_))
                ((let () (declare (not safe)) (##fx>= _g89984_ 4))
                 (apply foldl* _g89985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g89985_))))))
    (define foldl*
      (lambda (_%f87775%_ _%iv87776%_ . _%rest87777%_)
        (if (procedure? _%f87775%_)
            (let ((_%f87781%_ _%f87775%_))
              (declare (not safe))
              (##apply __foldl* _%f87781%_ _%iv87776%_ _%rest87777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@248.15-248.16"
               'contract:
               'procedure?
               'value:
               _%f87775%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f87753%_ _%iv87754%_ . _%rest87755%_)
        (let ((_%f87758%_ _%f87753%_))
          (let _%recur87767%_ ((_%iv87769%_ _%iv87754%_)
                               (_%rest87770%_ _%rest87755%_))
            (if (__andmap1 pair? _%rest87770%_)
                (_%recur87767%_
                 (let ((__tmp89986
                        (__foldr1
                         (lambda (_%xs87772%_ _%r87773%_)
                           (cons (car _%xs87772%_) _%r87773%_))
                         (list _%iv87769%_)
                         _%rest87770%_)))
                   (declare (not safe))
                   (##apply _%f87758%_ __tmp89986))
                 (map cdr _%rest87770%_))
                _%iv87769%_)))))
    (define foldr1
      (lambda (_%f87737%_ _%iv87738%_ _%lst87739%_)
        (if (procedure? _%f87737%_)
            (let ((_%f87743%_ _%f87737%_))
              (__foldr1 _%f87743%_ _%iv87738%_ _%lst87739%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@258.15-258.16"
               'contract:
               'procedure?
               'value:
               _%f87737%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f87686%_ _%iv87687%_ _%lst87688%_)
        (let ((_%f87691%_ _%f87686%_))
          (let _%recur87700%_ ((_%rest87702%_ _%lst87688%_))
            (let* ((_%rest8770387711%_ _%rest87702%_)
                   (_%else8770587719%_ (lambda () _%iv87687%_))
                   (_%K8770787725%_
                    (lambda (_%rest87722%_ _%x87723%_)
                      (let ((__tmp89987 (_%recur87700%_ _%rest87722%_)))
                        (declare (not safe))
                        (_%f87691%_ _%x87723%_ __tmp89987)))))
              (if (let () (declare (not safe)) (##pair? _%rest8770387711%_))
                  (let ((_%hd8770887728%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8770387711%_)))
                        (_%tl8770987730%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8770387711%_))))
                    (let* ((_%x87733%_ _%hd8770887728%_)
                           (_%rest87735%_ _%tl8770987730%_))
                      (_%K8770787725%_ _%rest87735%_ _%x87733%_)))
                  (_%else8770587719%_)))))))
    (define foldr2
      (lambda (_%f87669%_ _%iv87670%_ _%lst187671%_ _%lst287672%_)
        (if (procedure? _%f87669%_)
            (let ((_%f87676%_ _%f87669%_))
              (__foldr2 _%f87676%_ _%iv87670%_ _%lst187671%_ _%lst287672%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@265.15-265.16"
               'contract:
               'procedure?
               'value:
               _%f87669%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f87583%_ _%iv87584%_ _%lst187585%_ _%lst287586%_)
        (let ((_%f87589%_ _%f87583%_))
          (let _%recur87598%_ ((_%rest187600%_ _%lst187585%_)
                               (_%rest287601%_ _%lst287586%_))
            (let* ((_%rest18760287610%_ _%rest187600%_)
                   (_%else8760487618%_ (lambda () _%iv87584%_))
                   (_%K8760687657%_
                    (lambda (_%rest187621%_ _%x187622%_)
                      (let* ((_%rest28762387631%_ _%rest287601%_)
                             (_%else8762587639%_ (lambda () _%iv87584%_))
                             (_%K8762787645%_
                              (lambda (_%rest287642%_ _%x287643%_)
                                (let ((__tmp89988
                                       (_%recur87598%_
                                        _%rest187621%_
                                        _%rest287642%_)))
                                  (declare (not safe))
                                  (_%f87589%_
                                   _%x187622%_
                                   _%x287643%_
                                   __tmp89988)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28762387631%_))
                            (let ((_%hd8762887648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28762387631%_)))
                                  (_%tl8762987650%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28762387631%_))))
                              (let* ((_%x287653%_ _%hd8762887648%_)
                                     (_%rest287655%_ _%tl8762987650%_))
                                (_%K8762787645%_ _%rest287655%_ _%x287653%_)))
                            (_%else8762587639%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18760287610%_))
                  (let ((_%hd8760787660%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18760287610%_)))
                        (_%tl8760887662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18760287610%_))))
                    (let* ((_%x187665%_ _%hd8760787660%_)
                           (_%rest187667%_ _%tl8760887662%_))
                      (_%K8760687657%_ _%rest187667%_ _%x187665%_)))
                  (_%else8760487618%_)))))))
    (define foldr
      (lambda _g89990_
        (let ((_g89989_ (let () (declare (not safe)) (##length _g89990_))))
          (cond ((let () (declare (not safe)) (##fx= _g89989_ 3))
                 (apply foldr1 _g89990_))
                ((let () (declare (not safe)) (##fx= _g89989_ 4))
                 (apply foldr2 _g89990_))
                ((let () (declare (not safe)) (##fx>= _g89989_ 4))
                 (apply foldr* _g89990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g89990_))))))
    (define foldr*
      (lambda (_%f87552%_ _%iv87553%_ . _%rest87554%_)
        (if (procedure? _%f87552%_)
            (let ((_%f87558%_ _%f87552%_))
              (declare (not safe))
              (##apply __foldr* _%f87558%_ _%iv87553%_ _%rest87554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@283.15-283.16"
               'contract:
               'procedure?
               'value:
               _%f87552%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f87531%_ _%iv87532%_ . _%rest87533%_)
        (let ((_%f87536%_ _%f87531%_))
          (let _%recur87545%_ ((_%rest87547%_ _%rest87533%_))
            (if (__andmap1 pair? _%rest87547%_)
                (let ((__tmp89991
                       (__foldr1
                        (lambda (_%xs87549%_ _%r87550%_)
                          (cons (car _%xs87549%_) _%r87550%_))
                        (list (_%recur87545%_ (map cdr _%rest87547%_)))
                        _%rest87547%_)))
                  (declare (not safe))
                  (##apply _%f87536%_ __tmp89991))
                _%iv87532%_)))))
    (define remove-nulls!
      (lambda (_%l87418%_)
        (let* ((_%l8741987432%_ _%l87418%_)
               (_%E8742387436%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8741987432%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8742887521%_
                 (lambda (_%r87519%_) (remove-nulls! _%r87519%_)))
                (_%K8742587508%_
                 (lambda (_%r87448%_)
                   (let _%loop87450%_ ((_%l87452%_ _%l87418%_)
                                       (_%r87453%_ _%r87448%_))
                     (let* ((_%r8745487467%_ _%r87453%_)
                            (_%E8745887471%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8745487467%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8746387498%_
                              (lambda (_%rr87496%_)
                                (let ((__tmp89993 _%l87452%_)
                                      (__tmp89992 (remove-nulls! _%rr87496%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp89993 __tmp89992))))
                             (_%K8746087485%_
                              (lambda (_%rr87483%_)
                                (_%loop87450%_ _%r87453%_ _%rr87483%_)))
                             (_%K8745987476%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8745487467%_))
                             (let ((_%tl8746587503%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8745487467%_)))
                                   (_%hd8746487501%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8745487467%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8746487501%_))
                                   (let ((_%rr87506%_ _%tl8746587503%_))
                                     (_%K8746387498%_ _%rr87506%_))
                                   (let ((_%rr87491%_ _%tl8746587503%_))
                                     (_%K8746087485%_ _%rr87491%_))))
                             '#!void))))
                   _%l87418%_))
                (_%K8742487441%_ (lambda () _%l87418%_)))
            (if (let () (declare (not safe)) (##pair? _%l8741987432%_))
                (let ((_%tl8743087526%_
                       (let () (declare (not safe)) (##cdr _%l8741987432%_)))
                      (_%hd8742987524%_
                       (let () (declare (not safe)) (##car _%l8741987432%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8742987524%_))
                      (let ((_%r87529%_ _%tl8743087526%_))
                        (remove-nulls! _%r87529%_))
                      (let ((_%r87514%_ _%tl8743087526%_))
                        (_%K8742587508%_ _%r87514%_))))
                (_%K8742487441%_))))))
    (define append1!
      (lambda (_%l87403%_ _%x87404%_)
        (let ((_%l287407%_ (cons _%x87404%_ '())))
          (if (pair? _%l87403%_)
              (let ((_%l87409%_ _%l87403%_))
                (let ((__tmp89994
                       (let () (declare (not safe)) (##last-pair _%l87409%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp89994 _%l287407%_))
                _%l87409%_)
              _%l287407%_))))
    (define append-reverse-until
      (lambda (_%pred87387%_ _%rhead87388%_ _%tail87389%_)
        (if (procedure? _%pred87387%_)
            (let ((_%pred87393%_ _%pred87387%_))
              (__append-reverse-until
               _%pred87393%_
               _%rhead87388%_
               _%tail87389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@323.29-323.33"
               'contract:
               'procedure?
               'value:
               _%pred87387%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred87329%_ _%rhead87330%_ _%tail87331%_)
        (let ((_%pred87334%_ _%pred87329%_))
          (let _%loop87343%_ ((_%rhead87345%_ _%rhead87330%_)
                              (_%tail87346%_ _%tail87331%_))
            (let* ((_%rhead8734887357%_ _%rhead87345%_)
                   (_%E8735187361%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8734887357%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8735587384%_ (lambda () (values '() _%tail87346%_)))
                    (_%K8735287368%_
                     (lambda (_%r87365%_ _%a87366%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred87334%_ _%a87366%_))
                           (values _%rhead87345%_ _%tail87346%_)
                           (_%loop87343%_
                            _%r87365%_
                            (cons _%a87366%_ _%tail87346%_))))))
                (let ((_%try-match8735087380%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8734887357%_))
                             (let ((_%tl8735487373%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8734887357%_)))
                                   (_%hd8735387371%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8734887357%_))))
                               (let ((_%a87376%_ _%hd8735387371%_)
                                     (_%r87378%_ _%tl8735487373%_))
                                 (_%K8735287368%_ _%r87378%_ _%a87376%_)))
                             (_%E8735187361%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8734887357%_))
                      (_%K8735587384%_)
                      (_%try-match8735087380%_)))))))))
    (define andmap1
      (lambda (_%f87314%_ _%lst87315%_)
        (if (procedure? _%f87314%_)
            (let ((_%f87319%_ _%f87314%_)) (__andmap1 _%f87319%_ _%lst87315%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@334.16-334.17"
               'contract:
               'procedure?
               'value:
               _%f87314%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f87263%_ _%lst87264%_)
        (let ((_%f87267%_ _%f87263%_))
          (let _%lp87276%_ ((_%rest87278%_ _%lst87264%_))
            (let* ((_%rest8728087288%_ _%rest87278%_)
                   (_%else8728287296%_ (lambda () '#t))
                   (_%K8728487302%_
                    (lambda (_%rest87299%_ _%x87300%_)
                      (if (let () (declare (not safe)) (_%f87267%_ _%x87300%_))
                          (_%lp87276%_ _%rest87299%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8728087288%_))
                  (let ((_%hd8728587305%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8728087288%_)))
                        (_%tl8728687307%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8728087288%_))))
                    (let* ((_%x87310%_ _%hd8728587305%_)
                           (_%rest87312%_ _%tl8728687307%_))
                      (_%K8728487302%_ _%rest87312%_ _%x87310%_)))
                  (_%else8728287296%_)))))))
    (define andmap2
      (lambda (_%f87247%_ _%lst187248%_ _%lst287249%_)
        (if (procedure? _%f87247%_)
            (let ((_%f87253%_ _%f87247%_))
              (__andmap2 _%f87253%_ _%lst187248%_ _%lst287249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@343.16-343.17"
               'contract:
               'procedure?
               'value:
               _%f87247%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f87161%_ _%lst187162%_ _%lst287163%_)
        (let ((_%f87166%_ _%f87161%_))
          (let _%lp87175%_ ((_%rest187177%_ _%lst187162%_)
                            (_%rest287178%_ _%lst287163%_))
            (let* ((_%rest18718087188%_ _%rest187177%_)
                   (_%else8718287196%_ (lambda () '#t))
                   (_%K8718487235%_
                    (lambda (_%rest187199%_ _%x187200%_)
                      (let* ((_%rest28720187209%_ _%rest287178%_)
                             (_%else8720387217%_ (lambda () '#t))
                             (_%K8720587223%_
                              (lambda (_%rest287220%_ _%x287221%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f87166%_ _%x187200%_ _%x287221%_))
                                    (_%lp87175%_ _%rest187199%_ _%rest287220%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28720187209%_))
                            (let ((_%hd8720687226%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28720187209%_)))
                                  (_%tl8720787228%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28720187209%_))))
                              (let* ((_%x287231%_ _%hd8720687226%_)
                                     (_%rest287233%_ _%tl8720787228%_))
                                (_%K8720587223%_ _%rest287233%_ _%x287231%_)))
                            (_%else8720387217%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18718087188%_))
                  (let ((_%hd8718587238%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18718087188%_)))
                        (_%tl8718687240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18718087188%_))))
                    (let* ((_%x187243%_ _%hd8718587238%_)
                           (_%rest187245%_ _%tl8718687240%_))
                      (_%K8718487235%_ _%rest187245%_ _%x187243%_)))
                  (_%else8718287196%_)))))))
    (define andmap
      (lambda _g89996_
        (let ((_g89995_ (let () (declare (not safe)) (##length _g89996_))))
          (cond ((let () (declare (not safe)) (##fx= _g89995_ 2))
                 (apply andmap1 _g89996_))
                ((let () (declare (not safe)) (##fx= _g89995_ 3))
                 (apply andmap2 _g89996_))
                ((let () (declare (not safe)) (##fx>= _g89995_ 3))
                 (apply andmap* _g89996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g89996_))))))
    (define andmap*
      (lambda (_%f87134%_ . _%rest87135%_)
        (if (procedure? _%f87134%_)
            (let ((_%f87139%_ _%f87134%_))
              (declare (not safe))
              (##apply __andmap* _%f87139%_ _%rest87135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@363.16-363.17"
               'contract:
               'procedure?
               'value:
               _%f87134%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f87116%_ . _%rest87117%_)
        (let ((_%f87120%_ _%f87116%_))
          (let _%recur87129%_ ((_%rest87131%_ _%rest87117%_))
            (if (__andmap1 pair? _%rest87131%_)
                (if (let ((__tmp89997 (map car _%rest87131%_)))
                      (declare (not safe))
                      (##apply _%f87120%_ __tmp89997))
                    (_%recur87129%_ (map cdr _%rest87131%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f87101%_ _%lst87102%_)
        (if (procedure? _%f87101%_)
            (let ((_%f87106%_ _%f87101%_)) (__ormap1 _%f87106%_ _%lst87102%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@372.15-372.16"
               'contract:
               'procedure?
               'value:
               _%f87101%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f87048%_ _%lst87049%_)
        (let ((_%f87052%_ _%f87048%_))
          (let _%lp87061%_ ((_%rest87063%_ _%lst87049%_))
            (let* ((_%rest8706487072%_ _%rest87063%_)
                   (_%else8706687080%_ (lambda () '#f))
                   (_%K8706887089%_
                    (lambda (_%rest87083%_ _%x87084%_)
                      (let ((_%$e87086%_
                             (let ()
                               (declare (not safe))
                               (_%f87052%_ _%x87084%_))))
                        (if _%$e87086%_
                            _%$e87086%_
                            (_%lp87061%_ _%rest87083%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8706487072%_))
                  (let ((_%hd8706987092%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8706487072%_)))
                        (_%tl8707087094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8706487072%_))))
                    (let* ((_%x87097%_ _%hd8706987092%_)
                           (_%rest87099%_ _%tl8707087094%_))
                      (_%K8706887089%_ _%rest87099%_ _%x87097%_)))
                  (_%else8706687080%_)))))))
    (define ormap2
      (lambda (_%f87032%_ _%lst187033%_ _%lst287034%_)
        (if (procedure? _%f87032%_)
            (let ((_%f87038%_ _%f87032%_))
              (__ormap2 _%f87038%_ _%lst187033%_ _%lst287034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@379.15-379.16"
               'contract:
               'procedure?
               'value:
               _%f87032%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f86944%_ _%lst186945%_ _%lst286946%_)
        (let ((_%f86949%_ _%f86944%_))
          (let _%lp86958%_ ((_%rest186960%_ _%lst186945%_)
                            (_%rest286961%_ _%lst286946%_))
            (let* ((_%rest18696286970%_ _%rest186960%_)
                   (_%else8696486978%_ (lambda () '#f))
                   (_%K8696687020%_
                    (lambda (_%rest186981%_ _%x186982%_)
                      (let* ((_%rest28698386991%_ _%rest286961%_)
                             (_%else8698586999%_ (lambda () '#f))
                             (_%K8698787008%_
                              (lambda (_%rest287002%_ _%x287003%_)
                                (let ((_%$e87005%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86949%_
                                          _%x186982%_
                                          _%x287003%_))))
                                  (if _%$e87005%_
                                      _%$e87005%_
                                      (_%lp86958%_
                                       _%rest186981%_
                                       _%rest287002%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28698386991%_))
                            (let ((_%hd8698887011%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28698386991%_)))
                                  (_%tl8698987013%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28698386991%_))))
                              (let* ((_%x287016%_ _%hd8698887011%_)
                                     (_%rest287018%_ _%tl8698987013%_))
                                (_%K8698787008%_ _%rest287018%_ _%x287016%_)))
                            (_%else8698586999%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18696286970%_))
                  (let ((_%hd8696787023%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18696286970%_)))
                        (_%tl8696887025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18696286970%_))))
                    (let* ((_%x187028%_ _%hd8696787023%_)
                           (_%rest187030%_ _%tl8696887025%_))
                      (_%K8696687020%_ _%rest187030%_ _%x187028%_)))
                  (_%else8696486978%_)))))))
    (define ormap
      (lambda _g89999_
        (let ((_g89998_ (let () (declare (not safe)) (##length _g89999_))))
          (cond ((let () (declare (not safe)) (##fx= _g89998_ 2))
                 (apply ormap1 _g89999_))
                ((let () (declare (not safe)) (##fx= _g89998_ 3))
                 (apply ormap2 _g89999_))
                ((let () (declare (not safe)) (##fx>= _g89998_ 3))
                 (apply ormap* _g89999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g89999_))))))
    (define ormap*
      (lambda (_%f86917%_ . _%rest86918%_)
        (if (procedure? _%f86917%_)
            (let ((_%f86922%_ _%f86917%_))
              (declare (not safe))
              (##apply __ormap* _%f86922%_ _%rest86918%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.15-397.16"
               'contract:
               'procedure?
               'value:
               _%f86917%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f86897%_ . _%rest86898%_)
        (let ((_%f86901%_ _%f86897%_))
          (let _%recur86910%_ ((_%rest86912%_ _%rest86898%_))
            (if (__andmap1 pair? _%rest86912%_)
                (let ((_%$e86914%_
                       (let ((__tmp90000 (map car _%rest86912%_)))
                         (declare (not safe))
                         (##apply _%f86901%_ __tmp90000))))
                  (if _%$e86914%_
                      _%$e86914%_
                      (_%recur86910%_ (map cdr _%rest86912%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f86882%_ _%lst86883%_)
        (if (procedure? _%f86882%_)
            (let ((_%f86887%_ _%f86882%_))
              (__filter-map1 _%f86887%_ _%lst86883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@404.20-404.21"
               'contract:
               'procedure?
               'value:
               _%f86882%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f86825%_ _%lst86826%_)
        (let ((_%f86829%_ _%f86825%_))
          (let _%recur86838%_ ((_%rest86840%_ _%lst86826%_))
            (let* ((_%rest8684286850%_ _%rest86840%_)
                   (_%else8684486858%_ (lambda () '()))
                   (_%K8684686870%_
                    (lambda (_%rest86861%_ _%x86862%_)
                      (let ((_%$e86864%_
                             (let ()
                               (declare (not safe))
                               (_%f86829%_ _%x86862%_))))
                        (if _%$e86864%_
                            ((lambda (_%r86867%_)
                               (cons _%r86867%_
                                     (_%recur86838%_ _%rest86861%_)))
                             _%$e86864%_)
                            (_%recur86838%_ _%rest86861%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8684286850%_))
                  (let ((_%hd8684786873%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8684286850%_)))
                        (_%tl8684886875%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8684286850%_))))
                    (let* ((_%x86878%_ _%hd8684786873%_)
                           (_%rest86880%_ _%tl8684886875%_))
                      (_%K8684686870%_ _%rest86880%_ _%x86878%_)))
                  (_%else8684486858%_)))))))
    (define filter-map2
      (lambda (_%f86809%_ _%lst186810%_ _%lst286811%_)
        (if (procedure? _%f86809%_)
            (let ((_%f86815%_ _%f86809%_))
              (__filter-map2 _%f86815%_ _%lst186810%_ _%lst286811%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.20-415.21"
               'contract:
               'procedure?
               'value:
               _%f86809%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f86717%_ _%lst186718%_ _%lst286719%_)
        (let ((_%f86722%_ _%f86717%_))
          (let _%recur86731%_ ((_%rest186733%_ _%lst186718%_)
                               (_%rest286734%_ _%lst286719%_))
            (let* ((_%rest18673686744%_ _%rest186733%_)
                   (_%else8673886752%_ (lambda () '()))
                   (_%K8674086797%_
                    (lambda (_%rest186755%_ _%x186756%_)
                      (let* ((_%rest28675786765%_ _%rest286734%_)
                             (_%else8675986773%_ (lambda () '()))
                             (_%K8676186785%_
                              (lambda (_%rest286776%_ _%x286777%_)
                                (let ((_%$e86779%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86722%_
                                          _%x186756%_
                                          _%x286777%_))))
                                  (if _%$e86779%_
                                      ((lambda (_%r86782%_)
                                         (cons _%r86782%_
                                               (_%recur86731%_
                                                _%rest186755%_
                                                _%rest286776%_)))
                                       _%$e86779%_)
                                      (_%recur86731%_
                                       _%rest186755%_
                                       _%rest286776%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28675786765%_))
                            (let ((_%hd8676286788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28675786765%_)))
                                  (_%tl8676386790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28675786765%_))))
                              (let* ((_%x286793%_ _%hd8676286788%_)
                                     (_%rest286795%_ _%tl8676386790%_))
                                (_%K8676186785%_ _%rest286795%_ _%x286793%_)))
                            (_%else8675986773%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18673686744%_))
                  (let ((_%hd8674186800%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18673686744%_)))
                        (_%tl8674286802%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18673686744%_))))
                    (let* ((_%x186805%_ _%hd8674186800%_)
                           (_%rest186807%_ _%tl8674286802%_))
                      (_%K8674086797%_ _%rest186807%_ _%x186805%_)))
                  (_%else8673886752%_)))))))
    (define filter-map
      (lambda _g90002_
        (let ((_g90001_ (let () (declare (not safe)) (##length _g90002_))))
          (cond ((let () (declare (not safe)) (##fx= _g90001_ 2))
                 (apply filter-map1 _g90002_))
                ((let () (declare (not safe)) (##fx= _g90001_ 3))
                 (apply filter-map2 _g90002_))
                ((let () (declare (not safe)) (##fx>= _g90001_ 3))
                 (apply filter-map* _g90002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g90002_))))))
    (define filter-map*
      (lambda (_%f86690%_ . _%rest86691%_)
        (if (procedure? _%f86690%_)
            (let ((_%f86695%_ _%f86690%_))
              (declare (not safe))
              (##apply __filter-map* _%f86695%_ _%rest86691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@437.20-437.21"
               'contract:
               'procedure?
               'value:
               _%f86690%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f86666%_ . _%rest86667%_)
        (let ((_%f86670%_ _%f86666%_))
          (let _%recur86679%_ ((_%rest86681%_ _%rest86667%_))
            (if (__andmap1 pair? _%rest86681%_)
                (let ((_%$e86684%_
                       (let ((__tmp90003 (map car _%rest86681%_)))
                         (declare (not safe))
                         (##apply _%f86670%_ __tmp90003))))
                  (if _%$e86684%_
                      ((lambda (_%r86687%_)
                         (cons _%r86687%_
                               (_%recur86679%_ (map cdr _%rest86681%_))))
                       _%$e86684%_)
                      (_%recur86679%_ (map cdr _%rest86681%_))))
                '())))))
    (define agetq__%
      (lambda (_%key86642%_ _%lst86644%_ _%default86646%_)
        (let ((_%$e86649%_
               (if (pair? _%lst86644%_) (assq _%key86642%_ _%lst86644%_) '#f)))
          (if _%$e86649%_
              (cdr _%$e86649%_)
              (if (procedure? _%default86646%_)
                  (_%default86646%_ _%key86642%_)
                  _%default86646%_)))))
    (define agetq__0
      (lambda (_%key86657%_ _%lst86658%_)
        (let ((_%default86660%_ '#f))
          (agetq__% _%key86657%_ _%lst86658%_ _%default86660%_))))
    (define agetq
      (lambda _g90005_
        (let ((_g90004_ (let () (declare (not safe)) (##length _g90005_))))
          (cond ((let () (declare (not safe)) (##fx= _g90004_ 2))
                 (apply agetq__0 _g90005_))
                ((let () (declare (not safe)) (##fx= _g90004_ 3))
                 (apply agetq__% _g90005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g90005_))))))
    (define agetv__%
      (lambda (_%key86617%_ _%lst86619%_ _%default86621%_)
        (let ((_%$e86624%_
               (if (pair? _%lst86619%_) (assv _%key86617%_ _%lst86619%_) '#f)))
          (if _%$e86624%_
              (cdr _%$e86624%_)
              (if (procedure? _%default86621%_)
                  (_%default86621%_ _%key86617%_)
                  _%default86621%_)))))
    (define agetv__0
      (lambda (_%key86632%_ _%lst86633%_)
        (let ((_%default86635%_ '#f))
          (agetv__% _%key86632%_ _%lst86633%_ _%default86635%_))))
    (define agetv
      (lambda _g90007_
        (let ((_g90006_ (let () (declare (not safe)) (##length _g90007_))))
          (cond ((let () (declare (not safe)) (##fx= _g90006_ 2))
                 (apply agetv__0 _g90007_))
                ((let () (declare (not safe)) (##fx= _g90006_ 3))
                 (apply agetv__% _g90007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g90007_))))))
    (define aget__%
      (lambda (_%key86592%_ _%lst86594%_ _%default86596%_)
        (let ((_%$e86599%_
               (if (pair? _%lst86594%_)
                   (assoc _%key86592%_ _%lst86594%_)
                   '#f)))
          (if _%$e86599%_
              (cdr _%$e86599%_)
              (if (procedure? _%default86596%_)
                  (_%default86596%_ _%key86592%_)
                  _%default86596%_)))))
    (define aget__0
      (lambda (_%key86607%_ _%lst86608%_)
        (let ((_%default86610%_ '#f))
          (aget__% _%key86607%_ _%lst86608%_ _%default86610%_))))
    (define aget
      (lambda _g90009_
        (let ((_g90008_ (let () (declare (not safe)) (##length _g90009_))))
          (cond ((let () (declare (not safe)) (##fx= _g90008_ 2))
                 (apply aget__0 _g90009_))
                ((let () (declare (not safe)) (##fx= _g90008_ 3))
                 (apply aget__% _g90009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g90009_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key86521%_ _%lst86523%_ _%default86525%_)
        (let _%lp86528%_ ((_%rest86531%_ _%lst86523%_))
          (let* ((_%rest8653386543%_ _%rest86531%_)
                 (_%else8653586551%_
                  (lambda ()
                    (if (procedure? _%default86525%_)
                        (_%default86525%_ _%key86521%_)
                        _%default86525%_)))
                 (_%K8653786560%_
                  (lambda (_%rest86554%_ _%v86555%_ _%k86557%_)
                    (if (eq? _%k86557%_ _%key86521%_)
                        _%v86555%_
                        (_%lp86528%_ _%rest86554%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8653386543%_))
                (let ((_%hd8653886563%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8653386543%_)))
                      (_%tl8653986565%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8653386543%_))))
                  (let ((_%k86568%_ _%hd8653886563%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8653986565%_))
                        (let ((_%hd8654086570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8653986565%_)))
                              (_%tl8654186572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8653986565%_))))
                          (let* ((_%v86575%_ _%hd8654086570%_)
                                 (_%rest86577%_ _%tl8654186572%_))
                            (_%K8653786560%_
                             _%rest86577%_
                             _%v86575%_
                             _%k86568%_)))
                        (_%else8653586551%_))))
                (_%else8653586551%_))))))
    (define pgetq__0
      (lambda (_%key86582%_ _%lst86583%_)
        (let ((_%default86585%_ '#f))
          (pgetq__% _%key86582%_ _%lst86583%_ _%default86585%_))))
    (define pgetq
      (lambda _g90011_
        (let ((_g90010_ (let () (declare (not safe)) (##length _g90011_))))
          (cond ((let () (declare (not safe)) (##fx= _g90010_ 2))
                 (apply pgetq__0 _g90011_))
                ((let () (declare (not safe)) (##fx= _g90010_ 3))
                 (apply pgetq__% _g90011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g90011_))))))
    (define pgetv__%
      (lambda (_%key86450%_ _%lst86452%_ _%default86454%_)
        (let _%lp86457%_ ((_%rest86460%_ _%lst86452%_))
          (let* ((_%rest8646286472%_ _%rest86460%_)
                 (_%else8646486480%_
                  (lambda ()
                    (if (procedure? _%default86454%_)
                        (_%default86454%_ _%key86450%_)
                        _%default86454%_)))
                 (_%K8646686489%_
                  (lambda (_%rest86483%_ _%v86484%_ _%k86486%_)
                    (if (eqv? _%k86486%_ _%key86450%_)
                        _%v86484%_
                        (_%lp86457%_ _%rest86483%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8646286472%_))
                (let ((_%hd8646786492%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8646286472%_)))
                      (_%tl8646886494%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8646286472%_))))
                  (let ((_%k86497%_ _%hd8646786492%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8646886494%_))
                        (let ((_%hd8646986499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8646886494%_)))
                              (_%tl8647086501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8646886494%_))))
                          (let* ((_%v86504%_ _%hd8646986499%_)
                                 (_%rest86506%_ _%tl8647086501%_))
                            (_%K8646686489%_
                             _%rest86506%_
                             _%v86504%_
                             _%k86497%_)))
                        (_%else8646486480%_))))
                (_%else8646486480%_))))))
    (define pgetv__0
      (lambda (_%key86511%_ _%lst86512%_)
        (let ((_%default86514%_ '#f))
          (pgetv__% _%key86511%_ _%lst86512%_ _%default86514%_))))
    (define pgetv
      (lambda _g90013_
        (let ((_g90012_ (let () (declare (not safe)) (##length _g90013_))))
          (cond ((let () (declare (not safe)) (##fx= _g90012_ 2))
                 (apply pgetv__0 _g90013_))
                ((let () (declare (not safe)) (##fx= _g90012_ 3))
                 (apply pgetv__% _g90013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g90013_))))))
    (define pget__%
      (lambda (_%key86379%_ _%lst86381%_ _%default86383%_)
        (let _%lp86386%_ ((_%rest86389%_ _%lst86381%_))
          (let* ((_%rest8639186401%_ _%rest86389%_)
                 (_%else8639386409%_
                  (lambda ()
                    (if (procedure? _%default86383%_)
                        (_%default86383%_ _%key86379%_)
                        _%default86383%_)))
                 (_%K8639586418%_
                  (lambda (_%rest86412%_ _%v86413%_ _%k86415%_)
                    (if (equal? _%k86415%_ _%key86379%_)
                        _%v86413%_
                        (_%lp86386%_ _%rest86412%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8639186401%_))
                (let ((_%hd8639686421%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8639186401%_)))
                      (_%tl8639786423%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8639186401%_))))
                  (let ((_%k86426%_ _%hd8639686421%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8639786423%_))
                        (let ((_%hd8639886428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8639786423%_)))
                              (_%tl8639986430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8639786423%_))))
                          (let* ((_%v86433%_ _%hd8639886428%_)
                                 (_%rest86435%_ _%tl8639986430%_))
                            (_%K8639586418%_
                             _%rest86435%_
                             _%v86433%_
                             _%k86426%_)))
                        (_%else8639386409%_))))
                (_%else8639386409%_))))))
    (define pget__0
      (lambda (_%key86440%_ _%lst86441%_)
        (let ((_%default86443%_ '#f))
          (pget__% _%key86440%_ _%lst86441%_ _%default86443%_))))
    (define pget
      (lambda _g90015_
        (let ((_g90014_ (let () (declare (not safe)) (##length _g90015_))))
          (cond ((let () (declare (not safe)) (##fx= _g90014_ 2))
                 (apply pget__0 _g90015_))
                ((let () (declare (not safe)) (##fx= _g90014_ 3))
                 (apply pget__% _g90015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g90015_))))))
    (define find
      (lambda (_%pred86363%_ _%lst86364%_)
        (if (procedure? _%pred86363%_)
            (let ((_%pred86368%_ _%pred86363%_))
              (__find _%pred86368%_ _%lst86364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@483.13-483.17"
               'contract:
               'procedure?
               'value:
               _%pred86363%_)
              '#!void))))
    (define __find
      (lambda (_%pred86346%_ _%lst86347%_)
        (let* ((_%pred86350%_ _%pred86346%_)
               (_%$e86359%_ (__memf _%pred86350%_ _%lst86347%_)))
          (if _%$e86359%_
              (let () (declare (not safe)) (##car _%$e86359%_))
              '#f))))
    (define memf
      (lambda (_%proc86331%_ _%lst86332%_)
        (if (procedure? _%proc86331%_)
            (let ((_%proc86336%_ _%proc86331%_))
              (__memf _%proc86336%_ _%lst86332%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@488.13-488.17"
               'contract:
               'procedure?
               'value:
               _%proc86331%_)
              '#!void))))
    (define __memf
      (lambda (_%proc86281%_ _%lst86282%_)
        (let ((_%proc86285%_ _%proc86281%_))
          (let _%lp86294%_ ((_%rest86296%_ _%lst86282%_))
            (let* ((_%rest8629786305%_ _%rest86296%_)
                   (_%else8629986313%_ (lambda () '#f))
                   (_%K8630186319%_
                    (lambda (_%tl86316%_ _%hd86317%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc86285%_ _%hd86317%_))
                          _%rest86296%_
                          (_%lp86294%_ _%tl86316%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8629786305%_))
                  (let ((_%hd8630286322%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8629786305%_)))
                        (_%tl8630386324%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8629786305%_))))
                    (let* ((_%hd86327%_ _%hd8630286322%_)
                           (_%tl86329%_ _%tl8630386324%_))
                      (_%K8630186319%_ _%tl86329%_ _%hd86327%_)))
                  (_%else8629986313%_)))))))
    (define remove1
      (lambda (_%el86234%_ _%lst86236%_)
        (let _%lp86239%_ ((_%rest86242%_ _%lst86236%_) (_%r86244%_ '()))
          (let* ((_%rest8624686254%_ _%rest86242%_)
                 (_%else8624886262%_ (lambda () _%lst86236%_))
                 (_%K8625086269%_
                  (lambda (_%rest86265%_ _%hd86266%_)
                    (if (equal? _%el86234%_ _%hd86266%_)
                        (__foldl1 cons _%rest86265%_ _%r86244%_)
                        (_%lp86239%_
                         _%rest86265%_
                         (cons _%hd86266%_ _%r86244%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8624686254%_))
                (let ((_%hd8625186272%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8624686254%_)))
                      (_%tl8625286274%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8624686254%_))))
                  (let* ((_%hd86277%_ _%hd8625186272%_)
                         (_%rest86279%_ _%tl8625286274%_))
                    (_%K8625086269%_ _%rest86279%_ _%hd86277%_)))
                (_%else8624886262%_))))))
    (define remv1
      (lambda (_%el86187%_ _%lst86189%_)
        (let _%lp86192%_ ((_%rest86195%_ _%lst86189%_) (_%r86197%_ '()))
          (let* ((_%rest8619986207%_ _%rest86195%_)
                 (_%else8620186215%_ (lambda () _%lst86189%_))
                 (_%K8620386222%_
                  (lambda (_%rest86218%_ _%hd86219%_)
                    (if (eqv? _%el86187%_ _%hd86219%_)
                        (__foldl1 cons _%rest86218%_ _%r86197%_)
                        (_%lp86192%_
                         _%rest86218%_
                         (cons _%hd86219%_ _%r86197%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8619986207%_))
                (let ((_%hd8620486225%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8619986207%_)))
                      (_%tl8620586227%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8619986207%_))))
                  (let* ((_%hd86230%_ _%hd8620486225%_)
                         (_%rest86232%_ _%tl8620586227%_))
                    (_%K8620386222%_ _%rest86232%_ _%hd86230%_)))
                (_%else8620186215%_))))))
    (define remq1
      (lambda (_%el86140%_ _%lst86142%_)
        (let _%lp86145%_ ((_%rest86148%_ _%lst86142%_) (_%r86150%_ '()))
          (let* ((_%rest8615286160%_ _%rest86148%_)
                 (_%else8615486168%_ (lambda () _%lst86142%_))
                 (_%K8615686175%_
                  (lambda (_%rest86171%_ _%hd86172%_)
                    (if (eq? _%el86140%_ _%hd86172%_)
                        (__foldl1 cons _%rest86171%_ _%r86150%_)
                        (_%lp86145%_
                         _%rest86171%_
                         (cons _%hd86172%_ _%r86150%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8615286160%_))
                (let ((_%hd8615786178%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8615286160%_)))
                      (_%tl8615886180%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8615286160%_))))
                  (let* ((_%hd86183%_ _%hd8615786178%_)
                         (_%rest86185%_ _%tl8615886180%_))
                    (_%K8615686175%_ _%rest86185%_ _%hd86183%_)))
                (_%else8615486168%_))))))
    (define remf
      (lambda (_%proc86125%_ _%lst86126%_)
        (if (procedure? _%proc86125%_)
            (let ((_%proc86130%_ _%proc86125%_))
              (__remf _%proc86130%_ _%lst86126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@510.13-510.17"
               'contract:
               'procedure?
               'value:
               _%proc86125%_)
              '#!void))))
    (define __remf
      (lambda (_%proc86074%_ _%lst86075%_)
        (let ((_%proc86078%_ _%proc86074%_))
          (let _%lp86087%_ ((_%rest86089%_ _%lst86075%_) (_%r86090%_ '()))
            (let* ((_%rest8609186099%_ _%rest86089%_)
                   (_%else8609386107%_ (lambda () _%lst86075%_))
                   (_%K8609586113%_
                    (lambda (_%rest86110%_ _%hd86111%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc86078%_ _%hd86111%_))
                          (__foldl1 cons _%rest86110%_ _%r86090%_)
                          (_%lp86087%_
                           _%rest86110%_
                           (cons _%hd86111%_ _%r86090%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8609186099%_))
                  (let ((_%hd8609686116%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8609186099%_)))
                        (_%tl8609786118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8609186099%_))))
                    (let* ((_%hd86121%_ _%hd8609686116%_)
                           (_%rest86123%_ _%tl8609786118%_))
                      (_%K8609586113%_ _%rest86123%_ _%hd86121%_)))
                  (_%else8609386107%_)))))))
    (define 1+
      (lambda (_%x86060%_)
        (if (number? _%x86060%_)
            (let ((_%x86064%_ _%x86060%_)) (__1+ _%x86064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@519.11-519.12"
               'contract:
               'number?
               'value:
               _%x86060%_)
              '#!void))))
    (define __1+
      (lambda (_%x86048%_) (let ((_%x86051%_ _%x86048%_)) (+ _%x86051%_ '1))))
    (define 1-
      (lambda (_%x86034%_)
        (if (number? _%x86034%_)
            (let ((_%x86038%_ _%x86034%_)) (__1- _%x86038%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.11-527.12"
               'contract:
               'number?
               'value:
               _%x86034%_)
              '#!void))))
    (define __1-
      (lambda (_%x86022%_) (let ((_%x86025%_ _%x86022%_)) (- _%x86025%_ '1))))
    (define fx1+
      (lambda (_%x86008%_)
        (if (fixnum? _%x86008%_)
            (let ((_%x86012%_ _%x86008%_)) (__fx1+ _%x86012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@535.13-535.14"
               'contract:
               'fixnum?
               'value:
               _%x86008%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x85996%_)
        (let ((_%x85999%_ _%x85996%_))
          (declare (not safe))
          (##fx+ _%x85999%_ '1))))
    (define fx1-
      (lambda (_%x85982%_)
        (if (fixnum? _%x85982%_)
            (let ((_%x85986%_ _%x85982%_)) (__fx1- _%x85986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@543.13-543.14"
               'contract:
               'fixnum?
               'value:
               _%x85982%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x85970%_)
        (let ((_%x85973%_ _%x85970%_))
          (declare (not safe))
          (##fx- _%x85973%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x85967%_)
        (if (fixnum? _%x85967%_)
            (let () (declare (not safe)) (##fx>= _%x85967%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x85964%_)
        (if (fixnum? _%x85964%_)
            (let () (declare (not safe)) (##fx> _%x85964%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x85961%_)
        (let () (declare (not safe)) (##fx= _%x85961%_ '0))))
    (define fx<0?
      (lambda (_%x85958%_)
        (if (fixnum? _%x85958%_)
            (let () (declare (not safe)) (##fx< _%x85958%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x85955%_)
        (if (fixnum? _%x85955%_)
            (let () (declare (not safe)) (##fx<= _%x85955%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x85952%_)
        (if (symbol? _%x85952%_) (not (uninterned-symbol? _%x85952%_)) '#f)))
    (define display-as-string
      (lambda (_%x85937%_ _%port85938%_)
        (if (output-port? _%port85938%_)
            (let ((_%port85942%_ _%port85938%_))
              (__display-as-string _%x85937%_ _%port85942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.28-571.32"
               'contract:
               'output-port?
               'value:
               _%port85938%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x85894%_ _%port85895%_)
        (let ((_%port85898%_ _%port85895%_))
          (if (or (string? _%x85894%_)
                  (symbol? _%x85894%_)
                  (keyword? _%x85894%_)
                  (number? _%x85894%_)
                  (char? _%x85894%_))
              (display _%x85894%_ _%port85898%_)
              (if (pair? _%x85894%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x85894%_))
                     _%port85898%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x85894%_))
                     _%port85898%_))
                  (if (vector? _%x85894%_)
                      (vector-for-each
                       (lambda (_%g8592185923%_)
                         (__display-as-string _%g8592185923%_ _%port85898%_))
                       _%x85894%_)
                      (if (or (null? _%x85894%_)
                              (eq? _%x85894%_ '#!void)
                              (eof-object? _%x85894%_)
                              (boolean? _%x85894%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x85894%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x85877%_)
        (if (string? _%x85877%_)
            _%x85877%_
            (if (symbol? _%x85877%_)
                (let () (declare (not safe)) (##symbol->string _%x85877%_))
                (if (keyword? _%x85877%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x85877%_))
                    (if (number? _%x85877%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x85877%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8588385885%_)
                           (__display-as-string
                            _%x85877%_
                            _%g8588385885%_)))))))))
    (define as-string__1
      (lambda _%args85888%_
        (call-with-output-string
         '()
         (lambda (_%g8588985891%_)
           (__display-as-string _%args85888%_ _%g8588985891%_)))))
    (define as-string
      (lambda _g90017_
        (let ((_g90016_ (let () (declare (not safe)) (##length _g90017_))))
          (cond ((let () (declare (not safe)) (##fx= _g90016_ 1))
                 (apply as-string__0 _g90017_))
                (#t
                 (apply (lambda _%args85888%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args85888%_)))
                        _g90017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g90017_))))))
    (define make-symbol__0
      (lambda (_%x85873%_)
        (if (interned-symbol? _%x85873%_)
            _%x85873%_
            (let ((__tmp90018 (as-string__0 _%x85873%_)))
              (declare (not safe))
              (##string->symbol __tmp90018)))))
    (define make-symbol__1
      (lambda _%args85875%_
        (let ((__tmp90019
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args85875%_))))
          (declare (not safe))
          (##string->symbol __tmp90019))))
    (define make-symbol
      (lambda _g90021_
        (let ((_g90020_ (let () (declare (not safe)) (##length _g90021_))))
          (cond ((let () (declare (not safe)) (##fx= _g90020_ 1))
                 (apply make-symbol__0 _g90021_))
                (#t
                 (apply (lambda _%args85875%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args85875%_)))
                        _g90021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g90021_))))))
    (define make-keyword__0
      (lambda (_%x85869%_)
        (if (interned-keyword? _%x85869%_)
            _%x85869%_
            (let ((__tmp90022 (as-string__0 _%x85869%_)))
              (declare (not safe))
              (##string->keyword __tmp90022)))))
    (define make-keyword__1
      (lambda _%args85871%_
        (let ((__tmp90023
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args85871%_))))
          (declare (not safe))
          (##string->keyword __tmp90023))))
    (define make-keyword
      (lambda _g90025_
        (let ((_g90024_ (let () (declare (not safe)) (##length _g90025_))))
          (cond ((let () (declare (not safe)) (##fx= _g90024_ 1))
                 (apply make-keyword__0 _g90025_))
                (#t
                 (apply (lambda _%args85871%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args85871%_)))
                        _g90025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g90025_))))))
    (define interned-keyword?
      (lambda (_%x85866%_)
        (if (keyword? _%x85866%_) (not (uninterned-keyword? _%x85866%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym85852%_)
        (if (symbol? _%sym85852%_)
            (let ((_%sym85856%_ _%sym85852%_))
              (__symbol->keyword _%sym85856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@614.24-614.27"
               'contract:
               'symbol?
               'value:
               _%sym85852%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym85840%_)
        (let ((_%sym85843%_ _%sym85840%_))
          (if (uninterned-symbol? _%sym85843%_)
              (let ((__tmp90026
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85843%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp90026))
              (let ((__tmp90027
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85843%_))))
                (declare (not safe))
                (##string->keyword __tmp90027))))))
    (define keyword->symbol
      (lambda (_%sym85826%_)
        (if (keyword? _%sym85826%_)
            (let ((_%sym85830%_ _%sym85826%_))
              (__keyword->symbol _%sym85830%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@620.24-620.27"
               'contract:
               'keyword?
               'value:
               _%sym85826%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym85814%_)
        (let ((_%sym85817%_ _%sym85814%_))
          (if (uninterned-keyword? _%sym85817%_)
              (let ((__tmp90028
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85817%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp90028))
              (let ((__tmp90029
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85817%_))))
                (declare (not safe))
                (##string->symbol __tmp90029))))))
    (define bytes->string__%
      (lambda (_%bstr85779%_ _%enc85780%_)
        (if (u8vector? _%bstr85779%_)
            (let ((_%bstr85784%_ _%bstr85779%_))
              (if (symbol? _%enc85780%_)
                  (let ((_%enc85794%_ _%enc85780%_))
                    (__bytes->string__% _%bstr85784%_ _%enc85794%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@627.25-627.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85780%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@626.22-626.26"
               'contract:
               'u8vector?
               'value:
               _%bstr85779%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr85807%_)
        (let ((_%enc85809%_ 'UTF-8))
          (bytes->string__% _%bstr85807%_ _%enc85809%_))))
    (define bytes->string
      (lambda _g90031_
        (let ((_g90030_ (let () (declare (not safe)) (##length _g90031_))))
          (cond ((let () (declare (not safe)) (##fx= _g90030_ 1))
                 (apply bytes->string__0 _g90031_))
                ((let () (declare (not safe)) (##fx= _g90030_ 2))
                 (apply bytes->string__% _g90031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g90031_))))))
    (define __bytes->string__%
      (lambda (_%bstr85738%_ _%enc85739%_)
        (let* ((_%bstr85742%_ _%bstr85738%_) (_%enc85750%_ _%enc85739%_))
          (if (eq? _%enc85750%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr85742%_))
              (let* ((_%in85759%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc85750%_
                                   (cons 'init: (cons _%bstr85742%_ '()))))))
                     (_%len85761%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr85742%_)))
                     (_%out85763%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len85761%_)))
                     (_%n85765%_
                      (read-substring
                       _%out85763%_
                       '0
                       _%len85761%_
                       _%in85759%_)))
                (string-shrink! _%out85763%_ _%n85765%_)
                _%out85763%_)))))
    (define __bytes->string__0
      (lambda (_%bstr85771%_)
        (let ((_%enc85773%_ 'UTF-8))
          (__bytes->string__% _%bstr85771%_ _%enc85773%_))))
    (define __bytes->string
      (lambda _g90033_
        (let ((_g90032_ (let () (declare (not safe)) (##length _g90033_))))
          (cond ((let () (declare (not safe)) (##fx= _g90032_ 1))
                 (apply __bytes->string__0 _g90033_))
                ((let () (declare (not safe)) (##fx= _g90032_ 2))
                 (apply __bytes->string__% _g90033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g90033_))))))
    (define string->bytes__%
      (lambda (_%str85702%_ _%enc85703%_)
        (if (string? _%str85702%_)
            (let ((_%str85707%_ _%str85702%_))
              (if (symbol? _%enc85703%_)
                  (let ((_%enc85717%_ _%enc85703%_))
                    (__string->bytes__% _%str85707%_ _%enc85717%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@639.25-639.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85703%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@638.22-638.25"
               'contract:
               'string?
               'value:
               _%str85702%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str85730%_)
        (let ((_%enc85732%_ 'UTF-8))
          (string->bytes__% _%str85730%_ _%enc85732%_))))
    (define string->bytes
      (lambda _g90035_
        (let ((_g90034_ (let () (declare (not safe)) (##length _g90035_))))
          (cond ((let () (declare (not safe)) (##fx= _g90034_ 1))
                 (apply string->bytes__0 _g90035_))
                ((let () (declare (not safe)) (##fx= _g90034_ 2))
                 (apply string->bytes__% _g90035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g90035_))))))
    (define __string->bytes__%
      (lambda (_%str85670%_ _%enc85671%_)
        (let* ((_%str85674%_ _%str85670%_) (_%enc85682%_ _%enc85671%_))
          (if (eq? _%enc85682%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str85674%_))
              (__substring->bytes__%
               _%str85674%_
               '0
               (let () (declare (not safe)) (##string-length _%str85674%_))
               _%enc85682%_)))))
    (define __string->bytes__0
      (lambda (_%str85694%_)
        (let ((_%enc85696%_ 'UTF-8))
          (__string->bytes__% _%str85694%_ _%enc85696%_))))
    (define __string->bytes
      (lambda _g90037_
        (let ((_g90036_ (let () (declare (not safe)) (##length _g90037_))))
          (cond ((let () (declare (not safe)) (##fx= _g90036_ 1))
                 (apply __string->bytes__0 _g90037_))
                ((let () (declare (not safe)) (##fx= _g90036_ 2))
                 (apply __string->bytes__% _g90037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g90037_))))))
    (define substring->bytes__%
      (lambda (_%str85618%_ _%start85619%_ _%end85620%_ _%enc85621%_)
        (if (string? _%str85618%_)
            (let ((_%str85625%_ _%str85618%_))
              (if (nonnegative-fixnum? _%start85619%_)
                  (let ((_%start85635%_ _%start85619%_))
                    (if (nonnegative-fixnum? _%end85620%_)
                        (let ((_%end85645%_ _%end85620%_))
                          (__substring->bytes__%
                           _%str85625%_
                           _%start85635%_
                           _%end85645%_
                           _%enc85621%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@647.25-647.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end85620%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@646.25-646.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start85619%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
               'contract:
               'string?
               'value:
               _%str85618%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str85658%_ _%start85659%_ _%end85660%_)
        (let ((_%enc85662%_ 'UTF-8))
          (substring->bytes__%
           _%str85658%_
           _%start85659%_
           _%end85660%_
           _%enc85662%_))))
    (define substring->bytes
      (lambda _g90039_
        (let ((_g90038_ (let () (declare (not safe)) (##length _g90039_))))
          (cond ((let () (declare (not safe)) (##fx= _g90038_ 3))
                 (apply substring->bytes__0 _g90039_))
                ((let () (declare (not safe)) (##fx= _g90038_ 4))
                 (apply substring->bytes__% _g90039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g90039_))))))
    (define __substring->bytes__%
      (lambda (_%str85570%_ _%start85571%_ _%end85572%_ _%enc85573%_)
        (let* ((_%str85576%_ _%str85570%_)
               (_%start85584%_ _%start85571%_)
               (_%end85592%_ _%end85572%_))
          (if (eq? _%enc85573%_ 'UTF-8)
              (string->utf8 _%str85576%_ _%start85584%_ _%end85592%_)
              (let ((_%out85601%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc85573%_ '())))))
                (write-substring
                 _%str85576%_
                 _%start85584%_
                 _%end85592%_
                 _%out85601%_)
                (get-output-u8vector _%out85601%_))))))
    (define __substring->bytes__0
      (lambda (_%str85606%_ _%start85607%_ _%end85608%_)
        (let ((_%enc85610%_ 'UTF-8))
          (__substring->bytes__%
           _%str85606%_
           _%start85607%_
           _%end85608%_
           _%enc85610%_))))
    (define __substring->bytes
      (lambda _g90041_
        (let ((_g90040_ (let () (declare (not safe)) (##length _g90041_))))
          (cond ((let () (declare (not safe)) (##fx= _g90040_ 3))
                 (apply __substring->bytes__0 _g90041_))
                ((let () (declare (not safe)) (##fx= _g90040_ 4))
                 (apply __substring->bytes__% _g90041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g90041_))))))
    (define string-empty?
      (lambda (_%str85555%_)
        (if (string? _%str85555%_)
            (let ((_%str85559%_ _%str85555%_)) (__string-empty? _%str85559%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@656.22-656.25"
               'contract:
               'string?
               'value:
               _%str85555%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str85543%_)
        (let* ((_%str85546%_ _%str85543%_)
               (__tmp90042
                (let () (declare (not safe)) (##string-length _%str85546%_))))
          (declare (not safe))
          (##fxzero? __tmp90042))))
    (define string-index__%
      (lambda (_%str85495%_ _%char85496%_ _%start85497%_)
        (if (string? _%str85495%_)
            (let ((_%str85501%_ _%str85495%_))
              (if (char? _%char85496%_)
                  (let ((_%char85511%_ _%char85496%_))
                    (if (nonnegative-fixnum? _%start85497%_)
                        (let ((_%start85521%_ _%start85497%_))
                          (__string-index__%
                           _%str85501%_
                           _%char85511%_
                           _%start85521%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@662.21-662.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start85497%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.21-661.25"
                     'contract:
                     'char?
                     'value:
                     _%char85496%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.21-660.24"
               'contract:
               'string?
               'value:
               _%str85495%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str85534%_ _%char85535%_)
        (let ((_%start85537%_ '0))
          (string-index__% _%str85534%_ _%char85535%_ _%start85537%_))))
    (define string-index
      (lambda _g90044_
        (let ((_g90043_ (let () (declare (not safe)) (##length _g90044_))))
          (cond ((let () (declare (not safe)) (##fx= _g90043_ 2))
                 (apply string-index__0 _g90044_))
                ((let () (declare (not safe)) (##fx= _g90043_ 3))
                 (apply string-index__% _g90044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g90044_))))))
    (define __string-index__%
      (lambda (_%str85434%_ _%char85435%_ _%start85436%_)
        (let* ((_%str85439%_ _%str85434%_)
               (_%char85447%_ _%char85435%_)
               (_%start85455%_ _%start85436%_)
               (_%len85464%_
                (let () (declare (not safe)) (##string-length _%str85439%_))))
          (let _%lp85466%_ ((_%k85468%_ _%start85455%_))
            (let ((_%k85470%_ _%k85468%_))
              (if (let () (declare (not safe)) (##fx< _%k85470%_ _%len85464%_))
                  (if (eq? _%char85447%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85439%_ _%k85470%_)))
                      _%k85470%_
                      (_%lp85466%_
                       (let () (declare (not safe)) (##fx+ _%k85470%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str85485%_ _%char85486%_)
        (let ((_%start85488%_ '0))
          (__string-index__% _%str85485%_ _%char85486%_ _%start85488%_))))
    (define __string-index
      (lambda _g90046_
        (let ((_g90045_ (let () (declare (not safe)) (##length _g90046_))))
          (cond ((let () (declare (not safe)) (##fx= _g90045_ 2))
                 (apply __string-index__0 _g90046_))
                ((let () (declare (not safe)) (##fx= _g90045_ 3))
                 (apply __string-index__% _g90046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g90046_))))))
    (define string-rindex__%
      (lambda (_%str85395%_ _%char85396%_ _%start85397%_)
        (if (string? _%str85395%_)
            (let ((_%str85401%_ _%str85395%_))
              (if (char? _%char85396%_)
                  (let ((_%char85411%_ _%char85396%_))
                    (__string-rindex__%
                     _%str85401%_
                     _%char85411%_
                     _%start85397%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@672.25-672.29"
                     'contract:
                     'char?
                     'value:
                     _%char85396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@671.22-671.25"
               'contract:
               'string?
               'value:
               _%str85395%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str85424%_ _%char85425%_)
        (let ((_%start85427%_ '#f))
          (string-rindex__% _%str85424%_ _%char85425%_ _%start85427%_))))
    (define string-rindex
      (lambda _g90048_
        (let ((_g90047_ (let () (declare (not safe)) (##length _g90048_))))
          (cond ((let () (declare (not safe)) (##fx= _g90047_ 2))
                 (apply string-rindex__0 _g90048_))
                ((let () (declare (not safe)) (##fx= _g90047_ 3))
                 (apply string-rindex__% _g90048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g90048_))))))
    (define __string-rindex__%
      (lambda (_%str85337%_ _%char85338%_ _%start85339%_)
        (let* ((_%str85342%_ _%str85337%_)
               (_%char85350%_ _%char85338%_)
               (_%len85359%_
                (let () (declare (not safe)) (##string-length _%str85342%_)))
               (_%start85361%_
                (if (fixnum? _%start85339%_)
                    _%start85339%_
                    (let () (declare (not safe)) (##fx- _%len85359%_ '1)))))
          (let _%lp85364%_ ((_%k85366%_ _%start85361%_))
            (let ((_%k85368%_ _%k85366%_))
              (if (let () (declare (not safe)) (##fx>= _%k85368%_ '0))
                  (if (eq? _%char85350%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85342%_ _%k85368%_)))
                      _%k85368%_
                      (_%lp85364%_
                       (let () (declare (not safe)) (##fx- _%k85368%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str85385%_ _%char85386%_)
        (let ((_%start85388%_ '#f))
          (__string-rindex__% _%str85385%_ _%char85386%_ _%start85388%_))))
    (define __string-rindex
      (lambda _g90050_
        (let ((_g90049_ (let () (declare (not safe)) (##length _g90050_))))
          (cond ((let () (declare (not safe)) (##fx= _g90049_ 2))
                 (apply __string-rindex__0 _g90050_))
                ((let () (declare (not safe)) (##fx= _g90049_ 3))
                 (apply __string-rindex__% _g90050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g90050_))))))
    (define string-split
      (lambda (_%str85311%_ _%char85312%_)
        (if (string? _%str85311%_)
            (let ((_%str85316%_ _%str85311%_))
              (if (char? _%char85312%_)
                  (let ((_%char85326%_ _%char85312%_))
                    (__string-split _%str85316%_ _%char85326%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@683.37-683.41"
                     'contract:
                     'char?
                     'value:
                     _%char85312%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.21-683.24"
               'contract:
               'string?
               'value:
               _%str85311%_)
              '#!void))))
    (define __string-split
      (lambda (_%str85252%_ _%char85253%_)
        (let* ((_%str85256%_ _%str85252%_)
               (_%char85264%_ _%char85253%_)
               (_%len85273%_
                (let () (declare (not safe)) (##string-length _%str85256%_))))
          (let _%lp85275%_ ((_%start85277%_ '0) (_%r85278%_ '()))
            (let* ((_%start85281%_ _%start85277%_)
                   (_%$e85294%_
                    (__string-index__%
                     _%str85256%_
                     _%char85264%_
                     _%start85281%_)))
              (if _%$e85294%_
                  ((lambda (_%end85297%_)
                     (let ((_%end85299%_ _%end85297%_))
                       (_%lp85275%_
                        (let () (declare (not safe)) (##fx+ _%end85299%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str85256%_
                                 _%start85281%_
                                 _%end85299%_))
                              _%r85278%_))))
                   _%$e85294%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start85281%_ _%len85273%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str85256%_
                                _%start85281%_
                                _%len85273%_)))
                       _%r85278%_)
                      (reverse! _%r85278%_))))))))
    (define string-join
      (lambda (_%strs85102%_ _%join85103%_)
        (letrec ((_%join-length85106%_
                  (lambda (_%strs85190%_ _%jlen85191%_)
                    (let _%lp85193%_ ((_%rest85195%_ _%strs85190%_)
                                      (_%len85196%_ '0))
                      (let* ((_%len85198%_ _%len85196%_)
                             (_%rest8520685214%_ _%rest85195%_)
                             (_%else8520885222%_ (lambda () '0))
                             (_%K8521085240%_
                              (lambda (_%rest85225%_ _%hd85226%_)
                                (if (string? _%hd85226%_)
                                    (let ((_%hd85228%_ _%hd85226%_))
                                      (if (pair? _%rest85225%_)
                                          (_%lp85193%_
                                           _%rest85225%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd85228%_))
                                                _%jlen85191%_
                                                _%len85198%_))
                                          (let ((__tmp90051
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd85228%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp90051 _%len85198%_))))
                                    (error '"expected string" _%hd85226%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8520685214%_))
                            (let ((_%hd8521185243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8520685214%_)))
                                  (_%tl8521285245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8520685214%_))))
                              (let* ((_%hd85248%_ _%hd8521185243%_)
                                     (_%rest85250%_ _%tl8521285245%_))
                                (_%K8521085240%_ _%rest85250%_ _%hd85248%_)))
                            (_%else8520885222%_)))))))
          (let* ((_%join85111%_
                  (if (char? _%join85103%_)
                      (let () (declare (not safe)) (##string _%join85103%_))
                      (if (string? _%join85103%_)
                          _%join85103%_
                          (error '"expected string or char" _%join85103%_))))
                 (_%jlen85113%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join85111%_)))
                 (_%olen85115%_
                  (_%join-length85106%_ _%strs85102%_ _%jlen85113%_))
                 (_%ostr85117%_
                  (let () (declare (not safe)) (##make-string _%olen85115%_))))
            (let _%lp85120%_ ((_%rest85122%_ _%strs85102%_) (_%k85123%_ '0))
              (let* ((_%k85126%_ _%k85123%_)
                     (_%rest8514285150%_ _%rest85122%_)
                     (_%else8514485158%_ (lambda () '""))
                     (_%K8514685178%_
                      (lambda (_%rest85161%_ _%hd85162%_)
                        (let* ((_%hd85164%_ _%hd85162%_)
                               (_%hdlen85176%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd85164%_))))
                          (if (pair? _%rest85161%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd85164%_
                                   '0
                                   _%hdlen85176%_
                                   _%ostr85117%_
                                   _%k85126%_))
                                (let ((__tmp90052
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k85126%_ _%hdlen85176%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join85111%_
                                   '0
                                   _%jlen85113%_
                                   _%ostr85117%_
                                   __tmp90052))
                                (_%lp85120%_
                                 _%rest85161%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k85126%_
                                          _%hdlen85176%_
                                          _%jlen85113%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd85164%_
                                   '0
                                   _%hdlen85176%_
                                   _%ostr85117%_
                                   _%k85126%_))
                                _%ostr85117%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8514285150%_))
                    (let ((_%hd8514785181%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8514285150%_)))
                          (_%tl8514885183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8514285150%_))))
                      (let* ((_%hd85186%_ _%hd8514785181%_)
                             (_%rest85188%_ _%tl8514885183%_))
                        (_%K8514685178%_ _%rest85188%_ _%hd85186%_)))
                    (_%else8514485158%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes85028%_ _%port85029%_ _%start85030%_ _%end85031%_)
        (if (u8vector? _%bytes85028%_)
            (let ((_%bytes85035%_ _%bytes85028%_))
              (if (input-port? _%port85029%_)
                  (let ((_%port85045%_ _%port85029%_))
                    (if ((lambda (_%o85054%_)
                           (and (fixnum? _%o85054%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o85054%_ '0))
                                (let ((__tmp90053
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes85035%_))))
                                  (declare (not safe))
                                  (##fx< _%o85054%_ __tmp90053))))
                         _%start85030%_)
                        (let ((_%start85058%_ _%start85030%_))
                          (if ((lambda (_%o85067%_)
                                 (and (fixnum? _%o85067%_)
                                      (let ((__tmp90054
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes85035%_))))
                                        (declare (not safe))
                                        (##fx<= _%start85058%_
                                                _%o85067%_
                                                __tmp90054))))
                               _%end85031%_)
                              (let ((_%end85071%_ _%end85031%_))
                                (__read-u8vector__%
                                 _%bytes85035%_
                                 _%port85045%_
                                 _%start85058%_
                                 _%end85071%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@750.22-750.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end85031%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@748.22-748.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start85030%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@747.22-747.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port85029%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
               'contract:
               'u8vector?
               'value:
               _%bytes85028%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes85084%_ _%port85085%_)
        (let* ((_%start85087%_ '0)
               (_%end85089%_ (u8vector-length _%bytes85084%_)))
          (read-u8vector__%
           _%bytes85084%_
           _%port85085%_
           _%start85087%_
           _%end85089%_))))
    (define read-u8vector__1
      (lambda (_%bytes85091%_ _%port85092%_ _%start85093%_)
        (let ((_%end85095%_ (u8vector-length _%bytes85091%_)))
          (read-u8vector__%
           _%bytes85091%_
           _%port85092%_
           _%start85093%_
           _%end85095%_))))
    (define read-u8vector
      (lambda _g90056_
        (let ((_g90055_ (let () (declare (not safe)) (##length _g90056_))))
          (cond ((let () (declare (not safe)) (##fx= _g90055_ 2))
                 (apply read-u8vector__0 _g90056_))
                ((let () (declare (not safe)) (##fx= _g90055_ 3))
                 (apply read-u8vector__1 _g90056_))
                ((let () (declare (not safe)) (##fx= _g90055_ 4))
                 (apply read-u8vector__% _g90056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g90056_))))))
    (define __read-u8vector__%
      (lambda (_%bytes84967%_ _%port84968%_ _%start84969%_ _%end84970%_)
        (let* ((_%bytes84973%_ _%bytes84967%_)
               (_%port84981%_ _%port84968%_)
               (_%start84989%_ _%start84969%_)
               (_%end84997%_ _%end84970%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes84973%_
           _%start84989%_
           _%end84997%_
           _%port84981%_))))
    (define __read-u8vector__0
      (lambda (_%bytes85009%_ _%port85010%_)
        (let* ((_%start85012%_ '0)
               (_%end85014%_ (u8vector-length _%bytes85009%_)))
          (__read-u8vector__%
           _%bytes85009%_
           _%port85010%_
           _%start85012%_
           _%end85014%_))))
    (define __read-u8vector__1
      (lambda (_%bytes85016%_ _%port85017%_ _%start85018%_)
        (let ((_%end85020%_ (u8vector-length _%bytes85016%_)))
          (__read-u8vector__%
           _%bytes85016%_
           _%port85017%_
           _%start85018%_
           _%end85020%_))))
    (define __read-u8vector
      (lambda _g90058_
        (let ((_g90057_ (let () (declare (not safe)) (##length _g90058_))))
          (cond ((let () (declare (not safe)) (##fx= _g90057_ 2))
                 (apply __read-u8vector__0 _g90058_))
                ((let () (declare (not safe)) (##fx= _g90057_ 3))
                 (apply __read-u8vector__1 _g90058_))
                ((let () (declare (not safe)) (##fx= _g90057_ 4))
                 (apply __read-u8vector__% _g90058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g90058_))))))
    (define write-u8vector__%
      (lambda (_%bytes84892%_ _%port84893%_ _%start84894%_ _%end84895%_)
        (if (u8vector? _%bytes84892%_)
            (let ((_%bytes84899%_ _%bytes84892%_))
              (if (output-port? _%port84893%_)
                  (let ((_%port84909%_ _%port84893%_))
                    (if ((lambda (_%o84918%_)
                           (and (fixnum? _%o84918%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84918%_ '0))
                                (let ((__tmp90059
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84899%_))))
                                  (declare (not safe))
                                  (##fx< _%o84918%_ __tmp90059))))
                         _%start84894%_)
                        (let ((_%start84922%_ _%start84894%_))
                          (if ((lambda (_%o84931%_)
                                 (and (fixnum? _%o84931%_)
                                      (let ((__tmp90060
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84899%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84922%_
                                                _%o84931%_
                                                __tmp90060))))
                               _%end84895%_)
                              (let ((_%end84935%_ _%end84895%_))
                                (__write-u8vector__%
                                 _%bytes84899%_
                                 _%port84909%_
                                 _%start84922%_
                                 _%end84935%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@760.23-760.26"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84895%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@758.23-758.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84894%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@757.23-757.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port84893%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
               'contract:
               'u8vector?
               'value:
               _%bytes84892%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes84948%_ _%port84949%_)
        (let* ((_%start84951%_ '0)
               (_%end84953%_ (u8vector-length _%bytes84948%_)))
          (write-u8vector__%
           _%bytes84948%_
           _%port84949%_
           _%start84951%_
           _%end84953%_))))
    (define write-u8vector__1
      (lambda (_%bytes84955%_ _%port84956%_ _%start84957%_)
        (let ((_%end84959%_ (u8vector-length _%bytes84955%_)))
          (write-u8vector__%
           _%bytes84955%_
           _%port84956%_
           _%start84957%_
           _%end84959%_))))
    (define write-u8vector
      (lambda _g90062_
        (let ((_g90061_ (let () (declare (not safe)) (##length _g90062_))))
          (cond ((let () (declare (not safe)) (##fx= _g90061_ 2))
                 (apply write-u8vector__0 _g90062_))
                ((let () (declare (not safe)) (##fx= _g90061_ 3))
                 (apply write-u8vector__1 _g90062_))
                ((let () (declare (not safe)) (##fx= _g90061_ 4))
                 (apply write-u8vector__% _g90062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g90062_))))))
    (define __write-u8vector__%
      (lambda (_%bytes84831%_ _%port84832%_ _%start84833%_ _%end84834%_)
        (let* ((_%bytes84837%_ _%bytes84831%_)
               (_%port84845%_ _%port84832%_)
               (_%start84853%_ _%start84833%_)
               (_%end84861%_ _%end84834%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes84837%_
           _%start84853%_
           _%end84861%_
           _%port84845%_))))
    (define __write-u8vector__0
      (lambda (_%bytes84873%_ _%port84874%_)
        (let* ((_%start84876%_ '0)
               (_%end84878%_ (u8vector-length _%bytes84873%_)))
          (__write-u8vector__%
           _%bytes84873%_
           _%port84874%_
           _%start84876%_
           _%end84878%_))))
    (define __write-u8vector__1
      (lambda (_%bytes84880%_ _%port84881%_ _%start84882%_)
        (let ((_%end84884%_ (u8vector-length _%bytes84880%_)))
          (__write-u8vector__%
           _%bytes84880%_
           _%port84881%_
           _%start84882%_
           _%end84884%_))))
    (define __write-u8vector
      (lambda _g90064_
        (let ((_g90063_ (let () (declare (not safe)) (##length _g90064_))))
          (cond ((let () (declare (not safe)) (##fx= _g90063_ 2))
                 (apply __write-u8vector__0 _g90064_))
                ((let () (declare (not safe)) (##fx= _g90063_ 3))
                 (apply __write-u8vector__1 _g90064_))
                ((let () (declare (not safe)) (##fx= _g90063_ 4))
                 (apply __write-u8vector__% _g90064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g90064_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag84799%_
               _%dbg-exprs84800%_
               _%dbg-thunks84801%_
               _%expr84802%_
               _%thunk84803%_)
        (letrec ((_%o84805%_ (current-output-port))
                 (_%e84806%_ (current-error-port))
                 (_%p84807%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f84808%_
                  (lambda ()
                    (force-output _%o84805%_)
                    (force-output _%e84806%_)))
                 (_%d84809%_
                  (lambda (_%x84816%_) (display _%x84816%_ _%e84806%_)))
                 (_%w84810%_
                  (lambda (_%x84818%_) (_%p84807%_ _%x84818%_ _%e84806%_)))
                 (_%n84811%_ (lambda () (newline _%e84806%_)))
                 (_%v84812%_
                  (lambda (_%l84821%_)
                    (for-each
                     (lambda (_%x84823%_)
                       (_%d84809%_ '" ")
                       (_%w84810%_ _%x84823%_))
                     _%l84821%_)
                    (_%n84811%_)))
                 (_%x84813%_
                  (lambda (_%expr84825%_ _%thunk84826%_)
                    (_%f84808%_)
                    (_%d84809%_ '"  ")
                    (_%w84810%_ _%expr84825%_)
                    (_%d84809%_ '" =>")
                    (call-with-values
                     _%thunk84826%_
                     (lambda _%x84828%_
                       (_%v84812%_ _%x84828%_)
                       (_%f84808%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x84828%_)))))))
          (if _%tag84799%_
              (begin
                (if (eq? _%tag84799%_ '#!void)
                    '#!void
                    (begin
                      (_%f84808%_)
                      (_%d84809%_ _%tag84799%_)
                      (_%n84811%_)))
                (for-each _%x84813%_ _%dbg-exprs84800%_ _%dbg-thunks84801%_)
                (if _%thunk84803%_
                    (_%x84813%_ _%expr84802%_ _%thunk84803%_)
                    '#!void))
              (if _%thunk84803%_ (_%thunk84803%_) '#!void)))))))
