(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1713044313)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args87971%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args87971%_))
          (newline))))
    (define display*
      (lambda _%args87968%_
        (let () (declare (not safe)) (##for-each display _%args87968%_))))
    (define file-newer?
      (lambda (_%file187943%_ _%file287944%_)
        (if (string? _%file187943%_)
            (let ((_%file187948%_ _%file187943%_))
              (if (string? _%file287944%_)
                  (let ((_%file287958%_ _%file287944%_))
                    (__file-newer? _%file187948%_ _%file287958%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file287944%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file187943%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file187891%_ _%file287892%_)
        (let* ((_%file187895%_ _%file187891%_) (_%file287903%_ _%file287892%_))
          (letrec ((_%modification-time87912%_
                    (lambda (_%file87931%_)
                      (let ((_%file87934%_ _%file87931%_))
                        (_%__modification-time87913%_ _%file87934%_))))
                   (_%__modification-time87913%_
                    (lambda (_%file87915%_)
                      (let* ((_%file87918%_ _%file87915%_)
                             (__tmp89701
                              (let ((__tmp89702
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file87918%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp89702))))
                        (declare (not safe))
                        (##time->seconds __tmp89701)))))
            (let ((__tmp89704 (_%__modification-time87913%_ _%file187895%_))
                  (__tmp89703 (_%__modification-time87913%_ _%file287903%_)))
              (declare (not safe))
              (##fl> __tmp89704 __tmp89703))))))
    (define create-directory*__%
      (lambda (_%dir87856%_ _%perms87857%_)
        (if (string? _%dir87856%_)
            (let ((_%dir87861%_ _%dir87856%_))
              (if (fixnum? _%perms87857%_)
                  (let ((_%perms87871%_ _%perms87857%_))
                    (__create-directory*__% _%dir87861%_ _%perms87871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms87857%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir87856%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir87884%_)
        (let ((_%perms87886%_ '493))
          (create-directory*__% _%dir87884%_ _%perms87886%_))))
    (define create-directory*
      (lambda _g89706_
        (let ((_g89705_ (let () (declare (not safe)) (##length _g89706_))))
          (cond ((let () (declare (not safe)) (##fx= _g89705_ 1))
                 (apply create-directory*__0 _g89706_))
                ((let () (declare (not safe)) (##fx= _g89705_ 2))
                 (apply create-directory*__% _g89706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g89706_))))))
    (define __create-directory*__%
      (lambda (_%dir87780%_ _%perms87781%_)
        (let* ((_%dir87784%_ _%dir87780%_) (_%perms87792%_ _%perms87781%_))
          (letrec ((_%create187801%_
                    (lambda (_%path87833%_)
                      (let ((_%path87836%_ _%path87833%_))
                        (_%__create187802%_ _%path87836%_))))
                   (_%__create187802%_
                    (lambda (_%path87814%_)
                      (let ((_%path87817%_ _%path87814%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path87817%_))
                            (if (eq? (file-type _%path87817%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path87817%_))
                            (if _%perms87792%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path87817%_
                                             (cons 'permissions:
                                                   (cons _%perms87792%_
                                                         '())))))
                                (create-directory _%path87817%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir87784%_))
                '#!void
                (let _%lp87804%_ ((_%start87806%_ '0))
                  (let ((_%$e87808%_
                         (__string-index__% _%dir87784%_ '#\/ _%start87806%_)))
                    (if _%$e87808%_
                        ((lambda (_%x87811%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x87811%_ '0))
                               (_%__create187802%_
                                (substring _%dir87784%_ '0 _%x87811%_))
                               '#!void)
                           (_%lp87804%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x87811%_ '1))))
                         _%$e87808%_)
                        (_%__create187802%_ _%dir87784%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir87848%_)
        (let ((_%perms87850%_ '493))
          (__create-directory*__% _%dir87848%_ _%perms87850%_))))
    (define __create-directory*
      (lambda _g89708_
        (let ((_g89707_ (let () (declare (not safe)) (##length _g89708_))))
          (cond ((let () (declare (not safe)) (##fx= _g89707_ 1))
                 (apply __create-directory*__0 _g89708_))
                ((let () (declare (not safe)) (##fx= _g89707_ 2))
                 (apply __create-directory*__% _g89708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g89708_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore87776%_ '#t))
    (define true? (lambda (_%obj87773%_) (eq? _%obj87773%_ '#t)))
    (define false (lambda _%ignore87770%_ '#f))
    (define void (lambda _%ignore87767%_ '#!void))
    (define void? (lambda (_%obj87764%_) (eq? _%obj87764%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj87761%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj87761%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj87758%_) (eq? _%obj87758%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj87755%_) (eq? _%obj87755%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj87752%_) (eq? _%obj87752%_ '#!optional)))
    (define immediate?
      (lambda (_%obj87747%_)
        (let* ((_%t87750%_ (let () (declare (not safe)) (##type _%obj87747%_)))
               (__tmp89709
                (let () (declare (not safe)) (##fxand _%t87750%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp89709))))
    (define nonnegative-fixnum?
      (lambda (_%obj87744%_)
        (if (fixnum? _%obj87744%_)
            (let () (declare (not safe)) (##fx>= _%obj87744%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj87738%_)
        (let ((_%$e87741%_ (pair? _%obj87738%_)))
          (if _%$e87741%_ _%$e87741%_ (null? _%obj87738%_)))))
    (define values-count
      (lambda (_%obj87735%_)
        (if (let () (declare (not safe)) (##values? _%obj87735%_))
            (let () (declare (not safe)) (##vector-length _%obj87735%_))
            '1)))
    (define values-ref
      (lambda (_%obj87720%_ _%k87721%_)
        (if (fixnum? _%k87721%_)
            (let ((_%k87725%_ _%k87721%_))
              (__values-ref _%obj87720%_ _%k87725%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@200.23-200.24"
               'contract:
               'fixnum?
               'value:
               _%k87721%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj87707%_ _%k87708%_)
        (let ((_%k87711%_ _%k87708%_))
          (if (let () (declare (not safe)) (##values? _%obj87707%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj87707%_ _%k87711%_))
              _%obj87707%_))))
    (define values->list
      (lambda (_%obj87704%_)
        (if (let () (declare (not safe)) (##values? _%obj87704%_))
            (let () (declare (not safe)) (##vector->list _%obj87704%_))
            (list _%obj87704%_))))
    (define foldl1
      (lambda (_%f87688%_ _%iv87689%_ _%lst87690%_)
        (if (procedure? _%f87688%_)
            (let ((_%f87694%_ _%f87688%_))
              (__foldl1 _%f87694%_ _%iv87689%_ _%lst87690%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@223.15-223.16"
               'contract:
               'procedure?
               'value:
               _%f87688%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f87636%_ _%iv87637%_ _%lst87638%_)
        (let ((_%f87641%_ _%f87636%_))
          (let _%lp87650%_ ((_%rest87652%_ _%lst87638%_)
                            (_%r87653%_ _%iv87637%_))
            (let* ((_%rest8765487662%_ _%rest87652%_)
                   (_%else8765687670%_ (lambda () _%r87653%_))
                   (_%K8765887676%_
                    (lambda (_%rest87673%_ _%x87674%_)
                      (_%lp87650%_
                       _%rest87673%_
                       (let ()
                         (declare (not safe))
                         (_%f87641%_ _%x87674%_ _%r87653%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8765487662%_))
                  (let ((_%hd8765987679%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8765487662%_)))
                        (_%tl8766087681%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8765487662%_))))
                    (let* ((_%x87684%_ _%hd8765987679%_)
                           (_%rest87686%_ _%tl8766087681%_))
                      (_%K8765887676%_ _%rest87686%_ _%x87684%_)))
                  (_%else8765687670%_)))))))
    (define foldl2
      (lambda (_%f87619%_ _%iv87620%_ _%lst187621%_ _%lst287622%_)
        (if (procedure? _%f87619%_)
            (let ((_%f87626%_ _%f87619%_))
              (__foldl2 _%f87626%_ _%iv87620%_ _%lst187621%_ _%lst287622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@230.15-230.16"
               'contract:
               'procedure?
               'value:
               _%f87619%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f87532%_ _%iv87533%_ _%lst187534%_ _%lst287535%_)
        (let ((_%f87538%_ _%f87532%_))
          (let _%lp87547%_ ((_%rest187549%_ _%lst187534%_)
                            (_%rest287550%_ _%lst287535%_)
                            (_%r87551%_ _%iv87533%_))
            (let* ((_%rest18755287560%_ _%rest187549%_)
                   (_%else8755487568%_ (lambda () _%r87551%_))
                   (_%K8755687607%_
                    (lambda (_%rest187571%_ _%x187572%_)
                      (let* ((_%rest28757387581%_ _%rest287550%_)
                             (_%else8757587589%_ (lambda () _%r87551%_))
                             (_%K8757787595%_
                              (lambda (_%rest287592%_ _%x287593%_)
                                (_%lp87547%_
                                 _%rest187571%_
                                 _%rest287592%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f87538%_
                                    _%x187572%_
                                    _%x287593%_
                                    _%r87551%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28757387581%_))
                            (let ((_%hd8757887598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28757387581%_)))
                                  (_%tl8757987600%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28757387581%_))))
                              (let* ((_%x287603%_ _%hd8757887598%_)
                                     (_%rest287605%_ _%tl8757987600%_))
                                (_%K8757787595%_ _%rest287605%_ _%x287603%_)))
                            (_%else8757587589%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18755287560%_))
                  (let ((_%hd8755787610%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18755287560%_)))
                        (_%tl8755887612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18755287560%_))))
                    (let* ((_%x187615%_ _%hd8755787610%_)
                           (_%rest187617%_ _%tl8755887612%_))
                      (_%K8755687607%_ _%rest187617%_ _%x187615%_)))
                  (_%else8755487568%_)))))))
    (define foldl
      (lambda _g89711_
        (let ((_g89710_ (let () (declare (not safe)) (##length _g89711_))))
          (cond ((let () (declare (not safe)) (##fx= _g89710_ 3))
                 (apply foldl1 _g89711_))
                ((let () (declare (not safe)) (##fx= _g89710_ 4))
                 (apply foldl2 _g89711_))
                ((let () (declare (not safe)) (##fx>= _g89710_ 4))
                 (apply foldl* _g89711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g89711_))))))
    (define foldl*
      (lambda (_%f87501%_ _%iv87502%_ . _%rest87503%_)
        (if (procedure? _%f87501%_)
            (let ((_%f87507%_ _%f87501%_))
              (declare (not safe))
              (##apply __foldl* _%f87507%_ _%iv87502%_ _%rest87503%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@248.15-248.16"
               'contract:
               'procedure?
               'value:
               _%f87501%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f87479%_ _%iv87480%_ . _%rest87481%_)
        (let ((_%f87484%_ _%f87479%_))
          (let _%recur87493%_ ((_%iv87495%_ _%iv87480%_)
                               (_%rest87496%_ _%rest87481%_))
            (if (__andmap1 pair? _%rest87496%_)
                (_%recur87493%_
                 (let ((__tmp89712
                        (__foldr1
                         (lambda (_%xs87498%_ _%r87499%_)
                           (cons (car _%xs87498%_) _%r87499%_))
                         (list _%iv87495%_)
                         _%rest87496%_)))
                   (declare (not safe))
                   (##apply _%f87484%_ __tmp89712))
                 (map cdr _%rest87496%_))
                _%iv87495%_)))))
    (define foldr1
      (lambda (_%f87463%_ _%iv87464%_ _%lst87465%_)
        (if (procedure? _%f87463%_)
            (let ((_%f87469%_ _%f87463%_))
              (__foldr1 _%f87469%_ _%iv87464%_ _%lst87465%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@258.15-258.16"
               'contract:
               'procedure?
               'value:
               _%f87463%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f87412%_ _%iv87413%_ _%lst87414%_)
        (let ((_%f87417%_ _%f87412%_))
          (let _%recur87426%_ ((_%rest87428%_ _%lst87414%_))
            (let* ((_%rest8742987437%_ _%rest87428%_)
                   (_%else8743187445%_ (lambda () _%iv87413%_))
                   (_%K8743387451%_
                    (lambda (_%rest87448%_ _%x87449%_)
                      (let ((__tmp89713 (_%recur87426%_ _%rest87448%_)))
                        (declare (not safe))
                        (_%f87417%_ _%x87449%_ __tmp89713)))))
              (if (let () (declare (not safe)) (##pair? _%rest8742987437%_))
                  (let ((_%hd8743487454%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8742987437%_)))
                        (_%tl8743587456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8742987437%_))))
                    (let* ((_%x87459%_ _%hd8743487454%_)
                           (_%rest87461%_ _%tl8743587456%_))
                      (_%K8743387451%_ _%rest87461%_ _%x87459%_)))
                  (_%else8743187445%_)))))))
    (define foldr2
      (lambda (_%f87395%_ _%iv87396%_ _%lst187397%_ _%lst287398%_)
        (if (procedure? _%f87395%_)
            (let ((_%f87402%_ _%f87395%_))
              (__foldr2 _%f87402%_ _%iv87396%_ _%lst187397%_ _%lst287398%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@265.15-265.16"
               'contract:
               'procedure?
               'value:
               _%f87395%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f87309%_ _%iv87310%_ _%lst187311%_ _%lst287312%_)
        (let ((_%f87315%_ _%f87309%_))
          (let _%recur87324%_ ((_%rest187326%_ _%lst187311%_)
                               (_%rest287327%_ _%lst287312%_))
            (let* ((_%rest18732887336%_ _%rest187326%_)
                   (_%else8733087344%_ (lambda () _%iv87310%_))
                   (_%K8733287383%_
                    (lambda (_%rest187347%_ _%x187348%_)
                      (let* ((_%rest28734987357%_ _%rest287327%_)
                             (_%else8735187365%_ (lambda () _%iv87310%_))
                             (_%K8735387371%_
                              (lambda (_%rest287368%_ _%x287369%_)
                                (let ((__tmp89714
                                       (_%recur87324%_
                                        _%rest187347%_
                                        _%rest287368%_)))
                                  (declare (not safe))
                                  (_%f87315%_
                                   _%x187348%_
                                   _%x287369%_
                                   __tmp89714)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28734987357%_))
                            (let ((_%hd8735487374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28734987357%_)))
                                  (_%tl8735587376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28734987357%_))))
                              (let* ((_%x287379%_ _%hd8735487374%_)
                                     (_%rest287381%_ _%tl8735587376%_))
                                (_%K8735387371%_ _%rest287381%_ _%x287379%_)))
                            (_%else8735187365%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18732887336%_))
                  (let ((_%hd8733387386%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18732887336%_)))
                        (_%tl8733487388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18732887336%_))))
                    (let* ((_%x187391%_ _%hd8733387386%_)
                           (_%rest187393%_ _%tl8733487388%_))
                      (_%K8733287383%_ _%rest187393%_ _%x187391%_)))
                  (_%else8733087344%_)))))))
    (define foldr
      (lambda _g89716_
        (let ((_g89715_ (let () (declare (not safe)) (##length _g89716_))))
          (cond ((let () (declare (not safe)) (##fx= _g89715_ 3))
                 (apply foldr1 _g89716_))
                ((let () (declare (not safe)) (##fx= _g89715_ 4))
                 (apply foldr2 _g89716_))
                ((let () (declare (not safe)) (##fx>= _g89715_ 4))
                 (apply foldr* _g89716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g89716_))))))
    (define foldr*
      (lambda (_%f87278%_ _%iv87279%_ . _%rest87280%_)
        (if (procedure? _%f87278%_)
            (let ((_%f87284%_ _%f87278%_))
              (declare (not safe))
              (##apply __foldr* _%f87284%_ _%iv87279%_ _%rest87280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@283.15-283.16"
               'contract:
               'procedure?
               'value:
               _%f87278%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f87257%_ _%iv87258%_ . _%rest87259%_)
        (let ((_%f87262%_ _%f87257%_))
          (let _%recur87271%_ ((_%rest87273%_ _%rest87259%_))
            (if (__andmap1 pair? _%rest87273%_)
                (let ((__tmp89717
                       (__foldr1
                        (lambda (_%xs87275%_ _%r87276%_)
                          (cons (car _%xs87275%_) _%r87276%_))
                        (list (_%recur87271%_ (map cdr _%rest87273%_)))
                        _%rest87273%_)))
                  (declare (not safe))
                  (##apply _%f87262%_ __tmp89717))
                _%iv87258%_)))))
    (define remove-nulls!
      (lambda (_%l87144%_)
        (let* ((_%l8714587158%_ _%l87144%_)
               (_%E8714987162%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8714587158%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8715487247%_
                 (lambda (_%r87245%_) (remove-nulls! _%r87245%_)))
                (_%K8715187234%_
                 (lambda (_%r87174%_)
                   (let _%loop87176%_ ((_%l87178%_ _%l87144%_)
                                       (_%r87179%_ _%r87174%_))
                     (let* ((_%r8718087193%_ _%r87179%_)
                            (_%E8718487197%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8718087193%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8718987224%_
                              (lambda (_%rr87222%_)
                                (let ((__tmp89719 _%l87178%_)
                                      (__tmp89718 (remove-nulls! _%rr87222%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp89719 __tmp89718))))
                             (_%K8718687211%_
                              (lambda (_%rr87209%_)
                                (_%loop87176%_ _%r87179%_ _%rr87209%_)))
                             (_%K8718587202%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8718087193%_))
                             (let ((_%tl8719187229%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8718087193%_)))
                                   (_%hd8719087227%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8718087193%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8719087227%_))
                                   (let ((_%rr87232%_ _%tl8719187229%_))
                                     (_%K8718987224%_ _%rr87232%_))
                                   (let ((_%rr87217%_ _%tl8719187229%_))
                                     (_%K8718687211%_ _%rr87217%_))))
                             '#!void))))
                   _%l87144%_))
                (_%K8715087167%_ (lambda () _%l87144%_)))
            (if (let () (declare (not safe)) (##pair? _%l8714587158%_))
                (let ((_%tl8715687252%_
                       (let () (declare (not safe)) (##cdr _%l8714587158%_)))
                      (_%hd8715587250%_
                       (let () (declare (not safe)) (##car _%l8714587158%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8715587250%_))
                      (let ((_%r87255%_ _%tl8715687252%_))
                        (remove-nulls! _%r87255%_))
                      (let ((_%r87240%_ _%tl8715687252%_))
                        (_%K8715187234%_ _%r87240%_))))
                (_%K8715087167%_))))))
    (define append1!
      (lambda (_%l87129%_ _%x87130%_)
        (let ((_%l287133%_ (cons _%x87130%_ '())))
          (if (pair? _%l87129%_)
              (let ((_%l87135%_ _%l87129%_))
                (let ((__tmp89720
                       (let () (declare (not safe)) (##last-pair _%l87135%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp89720 _%l287133%_))
                _%l87135%_)
              _%l287133%_))))
    (define append-reverse-until
      (lambda (_%pred87113%_ _%rhead87114%_ _%tail87115%_)
        (if (procedure? _%pred87113%_)
            (let ((_%pred87119%_ _%pred87113%_))
              (__append-reverse-until
               _%pred87119%_
               _%rhead87114%_
               _%tail87115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@323.29-323.33"
               'contract:
               'procedure?
               'value:
               _%pred87113%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred87055%_ _%rhead87056%_ _%tail87057%_)
        (let ((_%pred87060%_ _%pred87055%_))
          (let _%loop87069%_ ((_%rhead87071%_ _%rhead87056%_)
                              (_%tail87072%_ _%tail87057%_))
            (let* ((_%rhead8707487083%_ _%rhead87071%_)
                   (_%E8707787087%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8707487083%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8708187110%_ (lambda () (values '() _%tail87072%_)))
                    (_%K8707887094%_
                     (lambda (_%r87091%_ _%a87092%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred87060%_ _%a87092%_))
                           (values _%rhead87071%_ _%tail87072%_)
                           (_%loop87069%_
                            _%r87091%_
                            (cons _%a87092%_ _%tail87072%_))))))
                (let ((_%try-match8707687106%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8707487083%_))
                             (let ((_%tl8708087099%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8707487083%_)))
                                   (_%hd8707987097%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8707487083%_))))
                               (let ((_%a87102%_ _%hd8707987097%_)
                                     (_%r87104%_ _%tl8708087099%_))
                                 (_%K8707887094%_ _%r87104%_ _%a87102%_)))
                             (_%E8707787087%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8707487083%_))
                      (_%K8708187110%_)
                      (_%try-match8707687106%_)))))))))
    (define andmap1
      (lambda (_%f87040%_ _%lst87041%_)
        (if (procedure? _%f87040%_)
            (let ((_%f87045%_ _%f87040%_)) (__andmap1 _%f87045%_ _%lst87041%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@334.16-334.17"
               'contract:
               'procedure?
               'value:
               _%f87040%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f86989%_ _%lst86990%_)
        (let ((_%f86993%_ _%f86989%_))
          (let _%lp87002%_ ((_%rest87004%_ _%lst86990%_))
            (let* ((_%rest8700687014%_ _%rest87004%_)
                   (_%else8700887022%_ (lambda () '#t))
                   (_%K8701087028%_
                    (lambda (_%rest87025%_ _%x87026%_)
                      (if (let () (declare (not safe)) (_%f86993%_ _%x87026%_))
                          (_%lp87002%_ _%rest87025%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8700687014%_))
                  (let ((_%hd8701187031%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8700687014%_)))
                        (_%tl8701287033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8700687014%_))))
                    (let* ((_%x87036%_ _%hd8701187031%_)
                           (_%rest87038%_ _%tl8701287033%_))
                      (_%K8701087028%_ _%rest87038%_ _%x87036%_)))
                  (_%else8700887022%_)))))))
    (define andmap2
      (lambda (_%f86973%_ _%lst186974%_ _%lst286975%_)
        (if (procedure? _%f86973%_)
            (let ((_%f86979%_ _%f86973%_))
              (__andmap2 _%f86979%_ _%lst186974%_ _%lst286975%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@343.16-343.17"
               'contract:
               'procedure?
               'value:
               _%f86973%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f86887%_ _%lst186888%_ _%lst286889%_)
        (let ((_%f86892%_ _%f86887%_))
          (let _%lp86901%_ ((_%rest186903%_ _%lst186888%_)
                            (_%rest286904%_ _%lst286889%_))
            (let* ((_%rest18690686914%_ _%rest186903%_)
                   (_%else8690886922%_ (lambda () '#t))
                   (_%K8691086961%_
                    (lambda (_%rest186925%_ _%x186926%_)
                      (let* ((_%rest28692786935%_ _%rest286904%_)
                             (_%else8692986943%_ (lambda () '#t))
                             (_%K8693186949%_
                              (lambda (_%rest286946%_ _%x286947%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f86892%_ _%x186926%_ _%x286947%_))
                                    (_%lp86901%_ _%rest186925%_ _%rest286946%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28692786935%_))
                            (let ((_%hd8693286952%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28692786935%_)))
                                  (_%tl8693386954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28692786935%_))))
                              (let* ((_%x286957%_ _%hd8693286952%_)
                                     (_%rest286959%_ _%tl8693386954%_))
                                (_%K8693186949%_ _%rest286959%_ _%x286957%_)))
                            (_%else8692986943%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18690686914%_))
                  (let ((_%hd8691186964%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18690686914%_)))
                        (_%tl8691286966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18690686914%_))))
                    (let* ((_%x186969%_ _%hd8691186964%_)
                           (_%rest186971%_ _%tl8691286966%_))
                      (_%K8691086961%_ _%rest186971%_ _%x186969%_)))
                  (_%else8690886922%_)))))))
    (define andmap
      (lambda _g89722_
        (let ((_g89721_ (let () (declare (not safe)) (##length _g89722_))))
          (cond ((let () (declare (not safe)) (##fx= _g89721_ 2))
                 (apply andmap1 _g89722_))
                ((let () (declare (not safe)) (##fx= _g89721_ 3))
                 (apply andmap2 _g89722_))
                ((let () (declare (not safe)) (##fx>= _g89721_ 3))
                 (apply andmap* _g89722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g89722_))))))
    (define andmap*
      (lambda (_%f86860%_ . _%rest86861%_)
        (if (procedure? _%f86860%_)
            (let ((_%f86865%_ _%f86860%_))
              (declare (not safe))
              (##apply __andmap* _%f86865%_ _%rest86861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@363.16-363.17"
               'contract:
               'procedure?
               'value:
               _%f86860%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f86842%_ . _%rest86843%_)
        (let ((_%f86846%_ _%f86842%_))
          (let _%recur86855%_ ((_%rest86857%_ _%rest86843%_))
            (if (__andmap1 pair? _%rest86857%_)
                (if (let ((__tmp89723 (map car _%rest86857%_)))
                      (declare (not safe))
                      (##apply _%f86846%_ __tmp89723))
                    (_%recur86855%_ (map cdr _%rest86857%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f86827%_ _%lst86828%_)
        (if (procedure? _%f86827%_)
            (let ((_%f86832%_ _%f86827%_)) (__ormap1 _%f86832%_ _%lst86828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@372.15-372.16"
               'contract:
               'procedure?
               'value:
               _%f86827%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f86774%_ _%lst86775%_)
        (let ((_%f86778%_ _%f86774%_))
          (let _%lp86787%_ ((_%rest86789%_ _%lst86775%_))
            (let* ((_%rest8679086798%_ _%rest86789%_)
                   (_%else8679286806%_ (lambda () '#f))
                   (_%K8679486815%_
                    (lambda (_%rest86809%_ _%x86810%_)
                      (let ((_%$e86812%_
                             (let ()
                               (declare (not safe))
                               (_%f86778%_ _%x86810%_))))
                        (if _%$e86812%_
                            _%$e86812%_
                            (_%lp86787%_ _%rest86809%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8679086798%_))
                  (let ((_%hd8679586818%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8679086798%_)))
                        (_%tl8679686820%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8679086798%_))))
                    (let* ((_%x86823%_ _%hd8679586818%_)
                           (_%rest86825%_ _%tl8679686820%_))
                      (_%K8679486815%_ _%rest86825%_ _%x86823%_)))
                  (_%else8679286806%_)))))))
    (define ormap2
      (lambda (_%f86758%_ _%lst186759%_ _%lst286760%_)
        (if (procedure? _%f86758%_)
            (let ((_%f86764%_ _%f86758%_))
              (__ormap2 _%f86764%_ _%lst186759%_ _%lst286760%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@379.15-379.16"
               'contract:
               'procedure?
               'value:
               _%f86758%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f86670%_ _%lst186671%_ _%lst286672%_)
        (let ((_%f86675%_ _%f86670%_))
          (let _%lp86684%_ ((_%rest186686%_ _%lst186671%_)
                            (_%rest286687%_ _%lst286672%_))
            (let* ((_%rest18668886696%_ _%rest186686%_)
                   (_%else8669086704%_ (lambda () '#f))
                   (_%K8669286746%_
                    (lambda (_%rest186707%_ _%x186708%_)
                      (let* ((_%rest28670986717%_ _%rest286687%_)
                             (_%else8671186725%_ (lambda () '#f))
                             (_%K8671386734%_
                              (lambda (_%rest286728%_ _%x286729%_)
                                (let ((_%$e86731%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86675%_
                                          _%x186708%_
                                          _%x286729%_))))
                                  (if _%$e86731%_
                                      _%$e86731%_
                                      (_%lp86684%_
                                       _%rest186707%_
                                       _%rest286728%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28670986717%_))
                            (let ((_%hd8671486737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28670986717%_)))
                                  (_%tl8671586739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28670986717%_))))
                              (let* ((_%x286742%_ _%hd8671486737%_)
                                     (_%rest286744%_ _%tl8671586739%_))
                                (_%K8671386734%_ _%rest286744%_ _%x286742%_)))
                            (_%else8671186725%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18668886696%_))
                  (let ((_%hd8669386749%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18668886696%_)))
                        (_%tl8669486751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18668886696%_))))
                    (let* ((_%x186754%_ _%hd8669386749%_)
                           (_%rest186756%_ _%tl8669486751%_))
                      (_%K8669286746%_ _%rest186756%_ _%x186754%_)))
                  (_%else8669086704%_)))))))
    (define ormap
      (lambda _g89725_
        (let ((_g89724_ (let () (declare (not safe)) (##length _g89725_))))
          (cond ((let () (declare (not safe)) (##fx= _g89724_ 2))
                 (apply ormap1 _g89725_))
                ((let () (declare (not safe)) (##fx= _g89724_ 3))
                 (apply ormap2 _g89725_))
                ((let () (declare (not safe)) (##fx>= _g89724_ 3))
                 (apply ormap* _g89725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g89725_))))))
    (define ormap*
      (lambda (_%f86643%_ . _%rest86644%_)
        (if (procedure? _%f86643%_)
            (let ((_%f86648%_ _%f86643%_))
              (declare (not safe))
              (##apply __ormap* _%f86648%_ _%rest86644%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.15-397.16"
               'contract:
               'procedure?
               'value:
               _%f86643%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f86623%_ . _%rest86624%_)
        (let ((_%f86627%_ _%f86623%_))
          (let _%recur86636%_ ((_%rest86638%_ _%rest86624%_))
            (if (__andmap1 pair? _%rest86638%_)
                (let ((_%$e86640%_
                       (let ((__tmp89726 (map car _%rest86638%_)))
                         (declare (not safe))
                         (##apply _%f86627%_ __tmp89726))))
                  (if _%$e86640%_
                      _%$e86640%_
                      (_%recur86636%_ (map cdr _%rest86638%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f86608%_ _%lst86609%_)
        (if (procedure? _%f86608%_)
            (let ((_%f86613%_ _%f86608%_))
              (__filter-map1 _%f86613%_ _%lst86609%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@404.20-404.21"
               'contract:
               'procedure?
               'value:
               _%f86608%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f86551%_ _%lst86552%_)
        (let ((_%f86555%_ _%f86551%_))
          (let _%recur86564%_ ((_%rest86566%_ _%lst86552%_))
            (let* ((_%rest8656886576%_ _%rest86566%_)
                   (_%else8657086584%_ (lambda () '()))
                   (_%K8657286596%_
                    (lambda (_%rest86587%_ _%x86588%_)
                      (let ((_%$e86590%_
                             (let ()
                               (declare (not safe))
                               (_%f86555%_ _%x86588%_))))
                        (if _%$e86590%_
                            ((lambda (_%r86593%_)
                               (cons _%r86593%_
                                     (_%recur86564%_ _%rest86587%_)))
                             _%$e86590%_)
                            (_%recur86564%_ _%rest86587%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8656886576%_))
                  (let ((_%hd8657386599%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8656886576%_)))
                        (_%tl8657486601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8656886576%_))))
                    (let* ((_%x86604%_ _%hd8657386599%_)
                           (_%rest86606%_ _%tl8657486601%_))
                      (_%K8657286596%_ _%rest86606%_ _%x86604%_)))
                  (_%else8657086584%_)))))))
    (define filter-map2
      (lambda (_%f86535%_ _%lst186536%_ _%lst286537%_)
        (if (procedure? _%f86535%_)
            (let ((_%f86541%_ _%f86535%_))
              (__filter-map2 _%f86541%_ _%lst186536%_ _%lst286537%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.20-415.21"
               'contract:
               'procedure?
               'value:
               _%f86535%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f86443%_ _%lst186444%_ _%lst286445%_)
        (let ((_%f86448%_ _%f86443%_))
          (let _%recur86457%_ ((_%rest186459%_ _%lst186444%_)
                               (_%rest286460%_ _%lst286445%_))
            (let* ((_%rest18646286470%_ _%rest186459%_)
                   (_%else8646486478%_ (lambda () '()))
                   (_%K8646686523%_
                    (lambda (_%rest186481%_ _%x186482%_)
                      (let* ((_%rest28648386491%_ _%rest286460%_)
                             (_%else8648586499%_ (lambda () '()))
                             (_%K8648786511%_
                              (lambda (_%rest286502%_ _%x286503%_)
                                (let ((_%$e86505%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86448%_
                                          _%x186482%_
                                          _%x286503%_))))
                                  (if _%$e86505%_
                                      ((lambda (_%r86508%_)
                                         (cons _%r86508%_
                                               (_%recur86457%_
                                                _%rest186481%_
                                                _%rest286502%_)))
                                       _%$e86505%_)
                                      (_%recur86457%_
                                       _%rest186481%_
                                       _%rest286502%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28648386491%_))
                            (let ((_%hd8648886514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28648386491%_)))
                                  (_%tl8648986516%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28648386491%_))))
                              (let* ((_%x286519%_ _%hd8648886514%_)
                                     (_%rest286521%_ _%tl8648986516%_))
                                (_%K8648786511%_ _%rest286521%_ _%x286519%_)))
                            (_%else8648586499%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18646286470%_))
                  (let ((_%hd8646786526%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18646286470%_)))
                        (_%tl8646886528%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18646286470%_))))
                    (let* ((_%x186531%_ _%hd8646786526%_)
                           (_%rest186533%_ _%tl8646886528%_))
                      (_%K8646686523%_ _%rest186533%_ _%x186531%_)))
                  (_%else8646486478%_)))))))
    (define filter-map
      (lambda _g89728_
        (let ((_g89727_ (let () (declare (not safe)) (##length _g89728_))))
          (cond ((let () (declare (not safe)) (##fx= _g89727_ 2))
                 (apply filter-map1 _g89728_))
                ((let () (declare (not safe)) (##fx= _g89727_ 3))
                 (apply filter-map2 _g89728_))
                ((let () (declare (not safe)) (##fx>= _g89727_ 3))
                 (apply filter-map* _g89728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g89728_))))))
    (define filter-map*
      (lambda (_%f86416%_ . _%rest86417%_)
        (if (procedure? _%f86416%_)
            (let ((_%f86421%_ _%f86416%_))
              (declare (not safe))
              (##apply __filter-map* _%f86421%_ _%rest86417%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@437.20-437.21"
               'contract:
               'procedure?
               'value:
               _%f86416%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f86392%_ . _%rest86393%_)
        (let ((_%f86396%_ _%f86392%_))
          (let _%recur86405%_ ((_%rest86407%_ _%rest86393%_))
            (if (__andmap1 pair? _%rest86407%_)
                (let ((_%$e86410%_
                       (let ((__tmp89729 (map car _%rest86407%_)))
                         (declare (not safe))
                         (##apply _%f86396%_ __tmp89729))))
                  (if _%$e86410%_
                      ((lambda (_%r86413%_)
                         (cons _%r86413%_
                               (_%recur86405%_ (map cdr _%rest86407%_))))
                       _%$e86410%_)
                      (_%recur86405%_ (map cdr _%rest86407%_))))
                '())))))
    (define agetq__%
      (lambda (_%key86368%_ _%lst86370%_ _%default86372%_)
        (let ((_%$e86375%_
               (if (pair? _%lst86370%_) (assq _%key86368%_ _%lst86370%_) '#f)))
          (if _%$e86375%_
              (cdr _%$e86375%_)
              (if (procedure? _%default86372%_)
                  (_%default86372%_ _%key86368%_)
                  _%default86372%_)))))
    (define agetq__0
      (lambda (_%key86383%_ _%lst86384%_)
        (let ((_%default86386%_ '#f))
          (agetq__% _%key86383%_ _%lst86384%_ _%default86386%_))))
    (define agetq
      (lambda _g89731_
        (let ((_g89730_ (let () (declare (not safe)) (##length _g89731_))))
          (cond ((let () (declare (not safe)) (##fx= _g89730_ 2))
                 (apply agetq__0 _g89731_))
                ((let () (declare (not safe)) (##fx= _g89730_ 3))
                 (apply agetq__% _g89731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g89731_))))))
    (define agetv__%
      (lambda (_%key86343%_ _%lst86345%_ _%default86347%_)
        (let ((_%$e86350%_
               (if (pair? _%lst86345%_) (assv _%key86343%_ _%lst86345%_) '#f)))
          (if _%$e86350%_
              (cdr _%$e86350%_)
              (if (procedure? _%default86347%_)
                  (_%default86347%_ _%key86343%_)
                  _%default86347%_)))))
    (define agetv__0
      (lambda (_%key86358%_ _%lst86359%_)
        (let ((_%default86361%_ '#f))
          (agetv__% _%key86358%_ _%lst86359%_ _%default86361%_))))
    (define agetv
      (lambda _g89733_
        (let ((_g89732_ (let () (declare (not safe)) (##length _g89733_))))
          (cond ((let () (declare (not safe)) (##fx= _g89732_ 2))
                 (apply agetv__0 _g89733_))
                ((let () (declare (not safe)) (##fx= _g89732_ 3))
                 (apply agetv__% _g89733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g89733_))))))
    (define aget__%
      (lambda (_%key86318%_ _%lst86320%_ _%default86322%_)
        (let ((_%$e86325%_
               (if (pair? _%lst86320%_)
                   (assoc _%key86318%_ _%lst86320%_)
                   '#f)))
          (if _%$e86325%_
              (cdr _%$e86325%_)
              (if (procedure? _%default86322%_)
                  (_%default86322%_ _%key86318%_)
                  _%default86322%_)))))
    (define aget__0
      (lambda (_%key86333%_ _%lst86334%_)
        (let ((_%default86336%_ '#f))
          (aget__% _%key86333%_ _%lst86334%_ _%default86336%_))))
    (define aget
      (lambda _g89735_
        (let ((_g89734_ (let () (declare (not safe)) (##length _g89735_))))
          (cond ((let () (declare (not safe)) (##fx= _g89734_ 2))
                 (apply aget__0 _g89735_))
                ((let () (declare (not safe)) (##fx= _g89734_ 3))
                 (apply aget__% _g89735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g89735_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key86247%_ _%lst86249%_ _%default86251%_)
        (let _%lp86254%_ ((_%rest86257%_ _%lst86249%_))
          (let* ((_%rest8625986269%_ _%rest86257%_)
                 (_%else8626186277%_
                  (lambda ()
                    (if (procedure? _%default86251%_)
                        (_%default86251%_ _%key86247%_)
                        _%default86251%_)))
                 (_%K8626386286%_
                  (lambda (_%rest86280%_ _%v86281%_ _%k86283%_)
                    (if (eq? _%k86283%_ _%key86247%_)
                        _%v86281%_
                        (_%lp86254%_ _%rest86280%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8625986269%_))
                (let ((_%hd8626486289%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8625986269%_)))
                      (_%tl8626586291%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8625986269%_))))
                  (let ((_%k86294%_ _%hd8626486289%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8626586291%_))
                        (let ((_%hd8626686296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8626586291%_)))
                              (_%tl8626786298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8626586291%_))))
                          (let* ((_%v86301%_ _%hd8626686296%_)
                                 (_%rest86303%_ _%tl8626786298%_))
                            (_%K8626386286%_
                             _%rest86303%_
                             _%v86301%_
                             _%k86294%_)))
                        (_%else8626186277%_))))
                (_%else8626186277%_))))))
    (define pgetq__0
      (lambda (_%key86308%_ _%lst86309%_)
        (let ((_%default86311%_ '#f))
          (pgetq__% _%key86308%_ _%lst86309%_ _%default86311%_))))
    (define pgetq
      (lambda _g89737_
        (let ((_g89736_ (let () (declare (not safe)) (##length _g89737_))))
          (cond ((let () (declare (not safe)) (##fx= _g89736_ 2))
                 (apply pgetq__0 _g89737_))
                ((let () (declare (not safe)) (##fx= _g89736_ 3))
                 (apply pgetq__% _g89737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g89737_))))))
    (define pgetv__%
      (lambda (_%key86176%_ _%lst86178%_ _%default86180%_)
        (let _%lp86183%_ ((_%rest86186%_ _%lst86178%_))
          (let* ((_%rest8618886198%_ _%rest86186%_)
                 (_%else8619086206%_
                  (lambda ()
                    (if (procedure? _%default86180%_)
                        (_%default86180%_ _%key86176%_)
                        _%default86180%_)))
                 (_%K8619286215%_
                  (lambda (_%rest86209%_ _%v86210%_ _%k86212%_)
                    (if (eqv? _%k86212%_ _%key86176%_)
                        _%v86210%_
                        (_%lp86183%_ _%rest86209%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8618886198%_))
                (let ((_%hd8619386218%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8618886198%_)))
                      (_%tl8619486220%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8618886198%_))))
                  (let ((_%k86223%_ _%hd8619386218%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8619486220%_))
                        (let ((_%hd8619586225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8619486220%_)))
                              (_%tl8619686227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8619486220%_))))
                          (let* ((_%v86230%_ _%hd8619586225%_)
                                 (_%rest86232%_ _%tl8619686227%_))
                            (_%K8619286215%_
                             _%rest86232%_
                             _%v86230%_
                             _%k86223%_)))
                        (_%else8619086206%_))))
                (_%else8619086206%_))))))
    (define pgetv__0
      (lambda (_%key86237%_ _%lst86238%_)
        (let ((_%default86240%_ '#f))
          (pgetv__% _%key86237%_ _%lst86238%_ _%default86240%_))))
    (define pgetv
      (lambda _g89739_
        (let ((_g89738_ (let () (declare (not safe)) (##length _g89739_))))
          (cond ((let () (declare (not safe)) (##fx= _g89738_ 2))
                 (apply pgetv__0 _g89739_))
                ((let () (declare (not safe)) (##fx= _g89738_ 3))
                 (apply pgetv__% _g89739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g89739_))))))
    (define pget__%
      (lambda (_%key86105%_ _%lst86107%_ _%default86109%_)
        (let _%lp86112%_ ((_%rest86115%_ _%lst86107%_))
          (let* ((_%rest8611786127%_ _%rest86115%_)
                 (_%else8611986135%_
                  (lambda ()
                    (if (procedure? _%default86109%_)
                        (_%default86109%_ _%key86105%_)
                        _%default86109%_)))
                 (_%K8612186144%_
                  (lambda (_%rest86138%_ _%v86139%_ _%k86141%_)
                    (if (equal? _%k86141%_ _%key86105%_)
                        _%v86139%_
                        (_%lp86112%_ _%rest86138%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8611786127%_))
                (let ((_%hd8612286147%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8611786127%_)))
                      (_%tl8612386149%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8611786127%_))))
                  (let ((_%k86152%_ _%hd8612286147%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8612386149%_))
                        (let ((_%hd8612486154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8612386149%_)))
                              (_%tl8612586156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8612386149%_))))
                          (let* ((_%v86159%_ _%hd8612486154%_)
                                 (_%rest86161%_ _%tl8612586156%_))
                            (_%K8612186144%_
                             _%rest86161%_
                             _%v86159%_
                             _%k86152%_)))
                        (_%else8611986135%_))))
                (_%else8611986135%_))))))
    (define pget__0
      (lambda (_%key86166%_ _%lst86167%_)
        (let ((_%default86169%_ '#f))
          (pget__% _%key86166%_ _%lst86167%_ _%default86169%_))))
    (define pget
      (lambda _g89741_
        (let ((_g89740_ (let () (declare (not safe)) (##length _g89741_))))
          (cond ((let () (declare (not safe)) (##fx= _g89740_ 2))
                 (apply pget__0 _g89741_))
                ((let () (declare (not safe)) (##fx= _g89740_ 3))
                 (apply pget__% _g89741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g89741_))))))
    (define find
      (lambda (_%pred86089%_ _%lst86090%_)
        (if (procedure? _%pred86089%_)
            (let ((_%pred86094%_ _%pred86089%_))
              (__find _%pred86094%_ _%lst86090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@483.13-483.17"
               'contract:
               'procedure?
               'value:
               _%pred86089%_)
              '#!void))))
    (define __find
      (lambda (_%pred86072%_ _%lst86073%_)
        (let* ((_%pred86076%_ _%pred86072%_)
               (_%$e86085%_ (__memf _%pred86076%_ _%lst86073%_)))
          (if _%$e86085%_
              (let () (declare (not safe)) (##car _%$e86085%_))
              '#f))))
    (define memf
      (lambda (_%proc86057%_ _%lst86058%_)
        (if (procedure? _%proc86057%_)
            (let ((_%proc86062%_ _%proc86057%_))
              (__memf _%proc86062%_ _%lst86058%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@488.13-488.17"
               'contract:
               'procedure?
               'value:
               _%proc86057%_)
              '#!void))))
    (define __memf
      (lambda (_%proc86007%_ _%lst86008%_)
        (let ((_%proc86011%_ _%proc86007%_))
          (let _%lp86020%_ ((_%rest86022%_ _%lst86008%_))
            (let* ((_%rest8602386031%_ _%rest86022%_)
                   (_%else8602586039%_ (lambda () '#f))
                   (_%K8602786045%_
                    (lambda (_%tl86042%_ _%hd86043%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc86011%_ _%hd86043%_))
                          _%rest86022%_
                          (_%lp86020%_ _%tl86042%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8602386031%_))
                  (let ((_%hd8602886048%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8602386031%_)))
                        (_%tl8602986050%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8602386031%_))))
                    (let* ((_%hd86053%_ _%hd8602886048%_)
                           (_%tl86055%_ _%tl8602986050%_))
                      (_%K8602786045%_ _%tl86055%_ _%hd86053%_)))
                  (_%else8602586039%_)))))))
    (define remove1
      (lambda (_%el85960%_ _%lst85962%_)
        (let _%lp85965%_ ((_%rest85968%_ _%lst85962%_) (_%r85970%_ '()))
          (let* ((_%rest8597285980%_ _%rest85968%_)
                 (_%else8597485988%_ (lambda () _%lst85962%_))
                 (_%K8597685995%_
                  (lambda (_%rest85991%_ _%hd85992%_)
                    (if (equal? _%el85960%_ _%hd85992%_)
                        (__foldl1 cons _%rest85991%_ _%r85970%_)
                        (_%lp85965%_
                         _%rest85991%_
                         (cons _%hd85992%_ _%r85970%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8597285980%_))
                (let ((_%hd8597785998%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8597285980%_)))
                      (_%tl8597886000%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8597285980%_))))
                  (let* ((_%hd86003%_ _%hd8597785998%_)
                         (_%rest86005%_ _%tl8597886000%_))
                    (_%K8597685995%_ _%rest86005%_ _%hd86003%_)))
                (_%else8597485988%_))))))
    (define remv1
      (lambda (_%el85913%_ _%lst85915%_)
        (let _%lp85918%_ ((_%rest85921%_ _%lst85915%_) (_%r85923%_ '()))
          (let* ((_%rest8592585933%_ _%rest85921%_)
                 (_%else8592785941%_ (lambda () _%lst85915%_))
                 (_%K8592985948%_
                  (lambda (_%rest85944%_ _%hd85945%_)
                    (if (eqv? _%el85913%_ _%hd85945%_)
                        (__foldl1 cons _%rest85944%_ _%r85923%_)
                        (_%lp85918%_
                         _%rest85944%_
                         (cons _%hd85945%_ _%r85923%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8592585933%_))
                (let ((_%hd8593085951%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8592585933%_)))
                      (_%tl8593185953%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8592585933%_))))
                  (let* ((_%hd85956%_ _%hd8593085951%_)
                         (_%rest85958%_ _%tl8593185953%_))
                    (_%K8592985948%_ _%rest85958%_ _%hd85956%_)))
                (_%else8592785941%_))))))
    (define remq1
      (lambda (_%el85866%_ _%lst85868%_)
        (let _%lp85871%_ ((_%rest85874%_ _%lst85868%_) (_%r85876%_ '()))
          (let* ((_%rest8587885886%_ _%rest85874%_)
                 (_%else8588085894%_ (lambda () _%lst85868%_))
                 (_%K8588285901%_
                  (lambda (_%rest85897%_ _%hd85898%_)
                    (if (eq? _%el85866%_ _%hd85898%_)
                        (__foldl1 cons _%rest85897%_ _%r85876%_)
                        (_%lp85871%_
                         _%rest85897%_
                         (cons _%hd85898%_ _%r85876%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8587885886%_))
                (let ((_%hd8588385904%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8587885886%_)))
                      (_%tl8588485906%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8587885886%_))))
                  (let* ((_%hd85909%_ _%hd8588385904%_)
                         (_%rest85911%_ _%tl8588485906%_))
                    (_%K8588285901%_ _%rest85911%_ _%hd85909%_)))
                (_%else8588085894%_))))))
    (define remf
      (lambda (_%proc85851%_ _%lst85852%_)
        (if (procedure? _%proc85851%_)
            (let ((_%proc85856%_ _%proc85851%_))
              (__remf _%proc85856%_ _%lst85852%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@510.13-510.17"
               'contract:
               'procedure?
               'value:
               _%proc85851%_)
              '#!void))))
    (define __remf
      (lambda (_%proc85800%_ _%lst85801%_)
        (let ((_%proc85804%_ _%proc85800%_))
          (let _%lp85813%_ ((_%rest85815%_ _%lst85801%_) (_%r85816%_ '()))
            (let* ((_%rest8581785825%_ _%rest85815%_)
                   (_%else8581985833%_ (lambda () _%lst85801%_))
                   (_%K8582185839%_
                    (lambda (_%rest85836%_ _%hd85837%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85804%_ _%hd85837%_))
                          (__foldl1 cons _%rest85836%_ _%r85816%_)
                          (_%lp85813%_
                           _%rest85836%_
                           (cons _%hd85837%_ _%r85816%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8581785825%_))
                  (let ((_%hd8582285842%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8581785825%_)))
                        (_%tl8582385844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8581785825%_))))
                    (let* ((_%hd85847%_ _%hd8582285842%_)
                           (_%rest85849%_ _%tl8582385844%_))
                      (_%K8582185839%_ _%rest85849%_ _%hd85847%_)))
                  (_%else8581985833%_)))))))
    (define 1+
      (lambda (_%x85786%_)
        (if (number? _%x85786%_)
            (let ((_%x85790%_ _%x85786%_)) (__1+ _%x85790%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@519.11-519.12"
               'contract:
               'number?
               'value:
               _%x85786%_)
              '#!void))))
    (define __1+
      (lambda (_%x85774%_) (let ((_%x85777%_ _%x85774%_)) (+ _%x85777%_ '1))))
    (define 1-
      (lambda (_%x85760%_)
        (if (number? _%x85760%_)
            (let ((_%x85764%_ _%x85760%_)) (__1- _%x85764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.11-527.12"
               'contract:
               'number?
               'value:
               _%x85760%_)
              '#!void))))
    (define __1-
      (lambda (_%x85748%_) (let ((_%x85751%_ _%x85748%_)) (- _%x85751%_ '1))))
    (define fx1+
      (lambda (_%x85734%_)
        (if (fixnum? _%x85734%_)
            (let ((_%x85738%_ _%x85734%_)) (__fx1+ _%x85738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@535.13-535.14"
               'contract:
               'fixnum?
               'value:
               _%x85734%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x85722%_)
        (let ((_%x85725%_ _%x85722%_))
          (declare (not safe))
          (##fx+ _%x85725%_ '1))))
    (define fx1-
      (lambda (_%x85708%_)
        (if (fixnum? _%x85708%_)
            (let ((_%x85712%_ _%x85708%_)) (__fx1- _%x85712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@543.13-543.14"
               'contract:
               'fixnum?
               'value:
               _%x85708%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x85696%_)
        (let ((_%x85699%_ _%x85696%_))
          (declare (not safe))
          (##fx- _%x85699%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x85693%_)
        (if (fixnum? _%x85693%_)
            (let () (declare (not safe)) (##fx>= _%x85693%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x85690%_)
        (if (fixnum? _%x85690%_)
            (let () (declare (not safe)) (##fx> _%x85690%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x85687%_)
        (let () (declare (not safe)) (##fx= _%x85687%_ '0))))
    (define fx<0?
      (lambda (_%x85684%_)
        (if (fixnum? _%x85684%_)
            (let () (declare (not safe)) (##fx< _%x85684%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x85681%_)
        (if (fixnum? _%x85681%_)
            (let () (declare (not safe)) (##fx<= _%x85681%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x85678%_)
        (if (symbol? _%x85678%_) (not (uninterned-symbol? _%x85678%_)) '#f)))
    (define display-as-string
      (lambda (_%x85663%_ _%port85664%_)
        (if (output-port? _%port85664%_)
            (let ((_%port85668%_ _%port85664%_))
              (__display-as-string _%x85663%_ _%port85668%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.28-571.32"
               'contract:
               'output-port?
               'value:
               _%port85664%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x85620%_ _%port85621%_)
        (let ((_%port85624%_ _%port85621%_))
          (if (or (string? _%x85620%_)
                  (symbol? _%x85620%_)
                  (keyword? _%x85620%_)
                  (number? _%x85620%_)
                  (char? _%x85620%_))
              (display _%x85620%_ _%port85624%_)
              (if (pair? _%x85620%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x85620%_))
                     _%port85624%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x85620%_))
                     _%port85624%_))
                  (if (vector? _%x85620%_)
                      (vector-for-each
                       (lambda (_%g8564785649%_)
                         (__display-as-string _%g8564785649%_ _%port85624%_))
                       _%x85620%_)
                      (if (or (null? _%x85620%_)
                              (eq? _%x85620%_ '#!void)
                              (eof-object? _%x85620%_)
                              (boolean? _%x85620%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x85620%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x85603%_)
        (if (string? _%x85603%_)
            _%x85603%_
            (if (symbol? _%x85603%_)
                (let () (declare (not safe)) (##symbol->string _%x85603%_))
                (if (keyword? _%x85603%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x85603%_))
                    (if (number? _%x85603%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x85603%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8560985611%_)
                           (__display-as-string
                            _%x85603%_
                            _%g8560985611%_)))))))))
    (define as-string__1
      (lambda _%args85614%_
        (call-with-output-string
         '()
         (lambda (_%g8561585617%_)
           (__display-as-string _%args85614%_ _%g8561585617%_)))))
    (define as-string
      (lambda _g89743_
        (let ((_g89742_ (let () (declare (not safe)) (##length _g89743_))))
          (cond ((let () (declare (not safe)) (##fx= _g89742_ 1))
                 (apply as-string__0 _g89743_))
                (#t
                 (apply (lambda _%args85614%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args85614%_)))
                        _g89743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g89743_))))))
    (define make-symbol__0
      (lambda (_%x85599%_)
        (if (interned-symbol? _%x85599%_)
            _%x85599%_
            (let ((__tmp89744 (as-string__0 _%x85599%_)))
              (declare (not safe))
              (##string->symbol __tmp89744)))))
    (define make-symbol__1
      (lambda _%args85601%_
        (let ((__tmp89745
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args85601%_))))
          (declare (not safe))
          (##string->symbol __tmp89745))))
    (define make-symbol
      (lambda _g89747_
        (let ((_g89746_ (let () (declare (not safe)) (##length _g89747_))))
          (cond ((let () (declare (not safe)) (##fx= _g89746_ 1))
                 (apply make-symbol__0 _g89747_))
                (#t
                 (apply (lambda _%args85601%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args85601%_)))
                        _g89747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g89747_))))))
    (define make-keyword__0
      (lambda (_%x85595%_)
        (if (interned-keyword? _%x85595%_)
            _%x85595%_
            (let ((__tmp89748 (as-string__0 _%x85595%_)))
              (declare (not safe))
              (##string->keyword __tmp89748)))))
    (define make-keyword__1
      (lambda _%args85597%_
        (let ((__tmp89749
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args85597%_))))
          (declare (not safe))
          (##string->keyword __tmp89749))))
    (define make-keyword
      (lambda _g89751_
        (let ((_g89750_ (let () (declare (not safe)) (##length _g89751_))))
          (cond ((let () (declare (not safe)) (##fx= _g89750_ 1))
                 (apply make-keyword__0 _g89751_))
                (#t
                 (apply (lambda _%args85597%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args85597%_)))
                        _g89751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g89751_))))))
    (define interned-keyword?
      (lambda (_%x85592%_)
        (if (keyword? _%x85592%_) (not (uninterned-keyword? _%x85592%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym85578%_)
        (if (symbol? _%sym85578%_)
            (let ((_%sym85582%_ _%sym85578%_))
              (__symbol->keyword _%sym85582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@614.24-614.27"
               'contract:
               'symbol?
               'value:
               _%sym85578%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym85566%_)
        (let ((_%sym85569%_ _%sym85566%_))
          (if (uninterned-symbol? _%sym85569%_)
              (let ((__tmp89752
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85569%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp89752))
              (let ((__tmp89753
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85569%_))))
                (declare (not safe))
                (##string->keyword __tmp89753))))))
    (define keyword->symbol
      (lambda (_%sym85552%_)
        (if (keyword? _%sym85552%_)
            (let ((_%sym85556%_ _%sym85552%_))
              (__keyword->symbol _%sym85556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@620.24-620.27"
               'contract:
               'keyword?
               'value:
               _%sym85552%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym85540%_)
        (let ((_%sym85543%_ _%sym85540%_))
          (if (uninterned-keyword? _%sym85543%_)
              (let ((__tmp89754
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85543%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp89754))
              (let ((__tmp89755
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85543%_))))
                (declare (not safe))
                (##string->symbol __tmp89755))))))
    (define bytes->string__%
      (lambda (_%bstr85505%_ _%enc85506%_)
        (if (u8vector? _%bstr85505%_)
            (let ((_%bstr85510%_ _%bstr85505%_))
              (if (symbol? _%enc85506%_)
                  (let ((_%enc85520%_ _%enc85506%_))
                    (__bytes->string__% _%bstr85510%_ _%enc85520%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@627.25-627.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85506%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@626.22-626.26"
               'contract:
               'u8vector?
               'value:
               _%bstr85505%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr85533%_)
        (let ((_%enc85535%_ 'UTF-8))
          (bytes->string__% _%bstr85533%_ _%enc85535%_))))
    (define bytes->string
      (lambda _g89757_
        (let ((_g89756_ (let () (declare (not safe)) (##length _g89757_))))
          (cond ((let () (declare (not safe)) (##fx= _g89756_ 1))
                 (apply bytes->string__0 _g89757_))
                ((let () (declare (not safe)) (##fx= _g89756_ 2))
                 (apply bytes->string__% _g89757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g89757_))))))
    (define __bytes->string__%
      (lambda (_%bstr85464%_ _%enc85465%_)
        (let* ((_%bstr85468%_ _%bstr85464%_) (_%enc85476%_ _%enc85465%_))
          (if (eq? _%enc85476%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr85468%_))
              (let* ((_%in85485%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc85476%_
                                   (cons 'init: (cons _%bstr85468%_ '()))))))
                     (_%len85487%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr85468%_)))
                     (_%out85489%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len85487%_)))
                     (_%n85491%_
                      (read-substring
                       _%out85489%_
                       '0
                       _%len85487%_
                       _%in85485%_)))
                (string-shrink! _%out85489%_ _%n85491%_)
                _%out85489%_)))))
    (define __bytes->string__0
      (lambda (_%bstr85497%_)
        (let ((_%enc85499%_ 'UTF-8))
          (__bytes->string__% _%bstr85497%_ _%enc85499%_))))
    (define __bytes->string
      (lambda _g89759_
        (let ((_g89758_ (let () (declare (not safe)) (##length _g89759_))))
          (cond ((let () (declare (not safe)) (##fx= _g89758_ 1))
                 (apply __bytes->string__0 _g89759_))
                ((let () (declare (not safe)) (##fx= _g89758_ 2))
                 (apply __bytes->string__% _g89759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g89759_))))))
    (define string->bytes__%
      (lambda (_%str85428%_ _%enc85429%_)
        (if (string? _%str85428%_)
            (let ((_%str85433%_ _%str85428%_))
              (if (symbol? _%enc85429%_)
                  (let ((_%enc85443%_ _%enc85429%_))
                    (__string->bytes__% _%str85433%_ _%enc85443%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@639.25-639.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85429%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@638.22-638.25"
               'contract:
               'string?
               'value:
               _%str85428%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str85456%_)
        (let ((_%enc85458%_ 'UTF-8))
          (string->bytes__% _%str85456%_ _%enc85458%_))))
    (define string->bytes
      (lambda _g89761_
        (let ((_g89760_ (let () (declare (not safe)) (##length _g89761_))))
          (cond ((let () (declare (not safe)) (##fx= _g89760_ 1))
                 (apply string->bytes__0 _g89761_))
                ((let () (declare (not safe)) (##fx= _g89760_ 2))
                 (apply string->bytes__% _g89761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g89761_))))))
    (define __string->bytes__%
      (lambda (_%str85396%_ _%enc85397%_)
        (let* ((_%str85400%_ _%str85396%_) (_%enc85408%_ _%enc85397%_))
          (if (eq? _%enc85408%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str85400%_))
              (__substring->bytes__%
               _%str85400%_
               '0
               (let () (declare (not safe)) (##string-length _%str85400%_))
               _%enc85408%_)))))
    (define __string->bytes__0
      (lambda (_%str85420%_)
        (let ((_%enc85422%_ 'UTF-8))
          (__string->bytes__% _%str85420%_ _%enc85422%_))))
    (define __string->bytes
      (lambda _g89763_
        (let ((_g89762_ (let () (declare (not safe)) (##length _g89763_))))
          (cond ((let () (declare (not safe)) (##fx= _g89762_ 1))
                 (apply __string->bytes__0 _g89763_))
                ((let () (declare (not safe)) (##fx= _g89762_ 2))
                 (apply __string->bytes__% _g89763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g89763_))))))
    (define substring->bytes__%
      (lambda (_%str85344%_ _%start85345%_ _%end85346%_ _%enc85347%_)
        (if (string? _%str85344%_)
            (let ((_%str85351%_ _%str85344%_))
              (if (nonnegative-fixnum? _%start85345%_)
                  (let ((_%start85361%_ _%start85345%_))
                    (if (nonnegative-fixnum? _%end85346%_)
                        (let ((_%end85371%_ _%end85346%_))
                          (__substring->bytes__%
                           _%str85351%_
                           _%start85361%_
                           _%end85371%_
                           _%enc85347%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@647.25-647.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end85346%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@646.25-646.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start85345%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
               'contract:
               'string?
               'value:
               _%str85344%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str85384%_ _%start85385%_ _%end85386%_)
        (let ((_%enc85388%_ 'UTF-8))
          (substring->bytes__%
           _%str85384%_
           _%start85385%_
           _%end85386%_
           _%enc85388%_))))
    (define substring->bytes
      (lambda _g89765_
        (let ((_g89764_ (let () (declare (not safe)) (##length _g89765_))))
          (cond ((let () (declare (not safe)) (##fx= _g89764_ 3))
                 (apply substring->bytes__0 _g89765_))
                ((let () (declare (not safe)) (##fx= _g89764_ 4))
                 (apply substring->bytes__% _g89765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g89765_))))))
    (define __substring->bytes__%
      (lambda (_%str85296%_ _%start85297%_ _%end85298%_ _%enc85299%_)
        (let* ((_%str85302%_ _%str85296%_)
               (_%start85310%_ _%start85297%_)
               (_%end85318%_ _%end85298%_))
          (if (eq? _%enc85299%_ 'UTF-8)
              (string->utf8 _%str85302%_ _%start85310%_ _%end85318%_)
              (let ((_%out85327%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc85299%_ '())))))
                (write-substring
                 _%str85302%_
                 _%start85310%_
                 _%end85318%_
                 _%out85327%_)
                (get-output-u8vector _%out85327%_))))))
    (define __substring->bytes__0
      (lambda (_%str85332%_ _%start85333%_ _%end85334%_)
        (let ((_%enc85336%_ 'UTF-8))
          (__substring->bytes__%
           _%str85332%_
           _%start85333%_
           _%end85334%_
           _%enc85336%_))))
    (define __substring->bytes
      (lambda _g89767_
        (let ((_g89766_ (let () (declare (not safe)) (##length _g89767_))))
          (cond ((let () (declare (not safe)) (##fx= _g89766_ 3))
                 (apply __substring->bytes__0 _g89767_))
                ((let () (declare (not safe)) (##fx= _g89766_ 4))
                 (apply __substring->bytes__% _g89767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g89767_))))))
    (define string-empty?
      (lambda (_%str85281%_)
        (if (string? _%str85281%_)
            (let ((_%str85285%_ _%str85281%_)) (__string-empty? _%str85285%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@656.22-656.25"
               'contract:
               'string?
               'value:
               _%str85281%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str85269%_)
        (let* ((_%str85272%_ _%str85269%_)
               (__tmp89768
                (let () (declare (not safe)) (##string-length _%str85272%_))))
          (declare (not safe))
          (##fxzero? __tmp89768))))
    (define string-index__%
      (lambda (_%str85221%_ _%char85222%_ _%start85223%_)
        (if (string? _%str85221%_)
            (let ((_%str85227%_ _%str85221%_))
              (if (char? _%char85222%_)
                  (let ((_%char85237%_ _%char85222%_))
                    (if (nonnegative-fixnum? _%start85223%_)
                        (let ((_%start85247%_ _%start85223%_))
                          (__string-index__%
                           _%str85227%_
                           _%char85237%_
                           _%start85247%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@662.21-662.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start85223%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.21-661.25"
                     'contract:
                     'char?
                     'value:
                     _%char85222%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.21-660.24"
               'contract:
               'string?
               'value:
               _%str85221%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str85260%_ _%char85261%_)
        (let ((_%start85263%_ '0))
          (string-index__% _%str85260%_ _%char85261%_ _%start85263%_))))
    (define string-index
      (lambda _g89770_
        (let ((_g89769_ (let () (declare (not safe)) (##length _g89770_))))
          (cond ((let () (declare (not safe)) (##fx= _g89769_ 2))
                 (apply string-index__0 _g89770_))
                ((let () (declare (not safe)) (##fx= _g89769_ 3))
                 (apply string-index__% _g89770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g89770_))))))
    (define __string-index__%
      (lambda (_%str85160%_ _%char85161%_ _%start85162%_)
        (let* ((_%str85165%_ _%str85160%_)
               (_%char85173%_ _%char85161%_)
               (_%start85181%_ _%start85162%_)
               (_%len85190%_
                (let () (declare (not safe)) (##string-length _%str85165%_))))
          (let _%lp85192%_ ((_%k85194%_ _%start85181%_))
            (let ((_%k85196%_ _%k85194%_))
              (if (let () (declare (not safe)) (##fx< _%k85196%_ _%len85190%_))
                  (if (eq? _%char85173%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85165%_ _%k85196%_)))
                      _%k85196%_
                      (_%lp85192%_
                       (let () (declare (not safe)) (##fx+ _%k85196%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str85211%_ _%char85212%_)
        (let ((_%start85214%_ '0))
          (__string-index__% _%str85211%_ _%char85212%_ _%start85214%_))))
    (define __string-index
      (lambda _g89772_
        (let ((_g89771_ (let () (declare (not safe)) (##length _g89772_))))
          (cond ((let () (declare (not safe)) (##fx= _g89771_ 2))
                 (apply __string-index__0 _g89772_))
                ((let () (declare (not safe)) (##fx= _g89771_ 3))
                 (apply __string-index__% _g89772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g89772_))))))
    (define string-rindex__%
      (lambda (_%str85121%_ _%char85122%_ _%start85123%_)
        (if (string? _%str85121%_)
            (let ((_%str85127%_ _%str85121%_))
              (if (char? _%char85122%_)
                  (let ((_%char85137%_ _%char85122%_))
                    (__string-rindex__%
                     _%str85127%_
                     _%char85137%_
                     _%start85123%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@672.25-672.29"
                     'contract:
                     'char?
                     'value:
                     _%char85122%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@671.22-671.25"
               'contract:
               'string?
               'value:
               _%str85121%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str85150%_ _%char85151%_)
        (let ((_%start85153%_ '#f))
          (string-rindex__% _%str85150%_ _%char85151%_ _%start85153%_))))
    (define string-rindex
      (lambda _g89774_
        (let ((_g89773_ (let () (declare (not safe)) (##length _g89774_))))
          (cond ((let () (declare (not safe)) (##fx= _g89773_ 2))
                 (apply string-rindex__0 _g89774_))
                ((let () (declare (not safe)) (##fx= _g89773_ 3))
                 (apply string-rindex__% _g89774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g89774_))))))
    (define __string-rindex__%
      (lambda (_%str85063%_ _%char85064%_ _%start85065%_)
        (let* ((_%str85068%_ _%str85063%_)
               (_%char85076%_ _%char85064%_)
               (_%len85085%_
                (let () (declare (not safe)) (##string-length _%str85068%_)))
               (_%start85087%_
                (if (fixnum? _%start85065%_)
                    _%start85065%_
                    (let () (declare (not safe)) (##fx- _%len85085%_ '1)))))
          (let _%lp85090%_ ((_%k85092%_ _%start85087%_))
            (let ((_%k85094%_ _%k85092%_))
              (if (let () (declare (not safe)) (##fx>= _%k85094%_ '0))
                  (if (eq? _%char85076%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85068%_ _%k85094%_)))
                      _%k85094%_
                      (_%lp85090%_
                       (let () (declare (not safe)) (##fx- _%k85094%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str85111%_ _%char85112%_)
        (let ((_%start85114%_ '#f))
          (__string-rindex__% _%str85111%_ _%char85112%_ _%start85114%_))))
    (define __string-rindex
      (lambda _g89776_
        (let ((_g89775_ (let () (declare (not safe)) (##length _g89776_))))
          (cond ((let () (declare (not safe)) (##fx= _g89775_ 2))
                 (apply __string-rindex__0 _g89776_))
                ((let () (declare (not safe)) (##fx= _g89775_ 3))
                 (apply __string-rindex__% _g89776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g89776_))))))
    (define string-split
      (lambda (_%str85037%_ _%char85038%_)
        (if (string? _%str85037%_)
            (let ((_%str85042%_ _%str85037%_))
              (if (char? _%char85038%_)
                  (let ((_%char85052%_ _%char85038%_))
                    (__string-split _%str85042%_ _%char85052%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@683.37-683.41"
                     'contract:
                     'char?
                     'value:
                     _%char85038%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.21-683.24"
               'contract:
               'string?
               'value:
               _%str85037%_)
              '#!void))))
    (define __string-split
      (lambda (_%str84978%_ _%char84979%_)
        (let* ((_%str84982%_ _%str84978%_)
               (_%char84990%_ _%char84979%_)
               (_%len84999%_
                (let () (declare (not safe)) (##string-length _%str84982%_))))
          (let _%lp85001%_ ((_%start85003%_ '0) (_%r85004%_ '()))
            (let* ((_%start85007%_ _%start85003%_)
                   (_%$e85020%_
                    (__string-index__%
                     _%str84982%_
                     _%char84990%_
                     _%start85007%_)))
              (if _%$e85020%_
                  ((lambda (_%end85023%_)
                     (let ((_%end85025%_ _%end85023%_))
                       (_%lp85001%_
                        (let () (declare (not safe)) (##fx+ _%end85025%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str84982%_
                                 _%start85007%_
                                 _%end85025%_))
                              _%r85004%_))))
                   _%$e85020%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start85007%_ _%len84999%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str84982%_
                                _%start85007%_
                                _%len84999%_)))
                       _%r85004%_)
                      (reverse! _%r85004%_))))))))
    (define string-join
      (lambda (_%strs84828%_ _%join84829%_)
        (letrec ((_%join-length84832%_
                  (lambda (_%strs84916%_ _%jlen84917%_)
                    (let _%lp84919%_ ((_%rest84921%_ _%strs84916%_)
                                      (_%len84922%_ '0))
                      (let* ((_%len84924%_ _%len84922%_)
                             (_%rest8493284940%_ _%rest84921%_)
                             (_%else8493484948%_ (lambda () '0))
                             (_%K8493684966%_
                              (lambda (_%rest84951%_ _%hd84952%_)
                                (if (string? _%hd84952%_)
                                    (let ((_%hd84954%_ _%hd84952%_))
                                      (if (pair? _%rest84951%_)
                                          (_%lp84919%_
                                           _%rest84951%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd84954%_))
                                                _%jlen84917%_
                                                _%len84924%_))
                                          (let ((__tmp89777
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd84954%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp89777 _%len84924%_))))
                                    (error '"expected string" _%hd84952%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8493284940%_))
                            (let ((_%hd8493784969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8493284940%_)))
                                  (_%tl8493884971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8493284940%_))))
                              (let* ((_%hd84974%_ _%hd8493784969%_)
                                     (_%rest84976%_ _%tl8493884971%_))
                                (_%K8493684966%_ _%rest84976%_ _%hd84974%_)))
                            (_%else8493484948%_)))))))
          (let* ((_%join84837%_
                  (if (char? _%join84829%_)
                      (let () (declare (not safe)) (##string _%join84829%_))
                      (if (string? _%join84829%_)
                          _%join84829%_
                          (error '"expected string or char" _%join84829%_))))
                 (_%jlen84839%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join84837%_)))
                 (_%olen84841%_
                  (_%join-length84832%_ _%strs84828%_ _%jlen84839%_))
                 (_%ostr84843%_
                  (let () (declare (not safe)) (##make-string _%olen84841%_))))
            (let _%lp84846%_ ((_%rest84848%_ _%strs84828%_) (_%k84849%_ '0))
              (let* ((_%k84852%_ _%k84849%_)
                     (_%rest8486884876%_ _%rest84848%_)
                     (_%else8487084884%_ (lambda () '""))
                     (_%K8487284904%_
                      (lambda (_%rest84887%_ _%hd84888%_)
                        (let* ((_%hd84890%_ _%hd84888%_)
                               (_%hdlen84902%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd84890%_))))
                          (if (pair? _%rest84887%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84890%_
                                   '0
                                   _%hdlen84902%_
                                   _%ostr84843%_
                                   _%k84852%_))
                                (let ((__tmp89778
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k84852%_ _%hdlen84902%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join84837%_
                                   '0
                                   _%jlen84839%_
                                   _%ostr84843%_
                                   __tmp89778))
                                (_%lp84846%_
                                 _%rest84887%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k84852%_
                                          _%hdlen84902%_
                                          _%jlen84839%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84890%_
                                   '0
                                   _%hdlen84902%_
                                   _%ostr84843%_
                                   _%k84852%_))
                                _%ostr84843%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8486884876%_))
                    (let ((_%hd8487384907%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8486884876%_)))
                          (_%tl8487484909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8486884876%_))))
                      (let* ((_%hd84912%_ _%hd8487384907%_)
                             (_%rest84914%_ _%tl8487484909%_))
                        (_%K8487284904%_ _%rest84914%_ _%hd84912%_)))
                    (_%else8487084884%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes84754%_ _%port84755%_ _%start84756%_ _%end84757%_)
        (if (u8vector? _%bytes84754%_)
            (let ((_%bytes84761%_ _%bytes84754%_))
              (if (input-port? _%port84755%_)
                  (let ((_%port84771%_ _%port84755%_))
                    (if ((lambda (_%o84780%_)
                           (and (fixnum? _%o84780%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84780%_ '0))
                                (let ((__tmp89779
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84761%_))))
                                  (declare (not safe))
                                  (##fx< _%o84780%_ __tmp89779))))
                         _%start84756%_)
                        (let ((_%start84784%_ _%start84756%_))
                          (if ((lambda (_%o84793%_)
                                 (and (fixnum? _%o84793%_)
                                      (let ((__tmp89780
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84761%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84784%_
                                                _%o84793%_
                                                __tmp89780))))
                               _%end84757%_)
                              (let ((_%end84797%_ _%end84757%_))
                                (__read-u8vector__%
                                 _%bytes84761%_
                                 _%port84771%_
                                 _%start84784%_
                                 _%end84797%_))
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
                                 _%end84757%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@748.22-748.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84756%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@747.22-747.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port84755%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
               'contract:
               'u8vector?
               'value:
               _%bytes84754%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes84810%_ _%port84811%_)
        (let* ((_%start84813%_ '0)
               (_%end84815%_ (u8vector-length _%bytes84810%_)))
          (read-u8vector__%
           _%bytes84810%_
           _%port84811%_
           _%start84813%_
           _%end84815%_))))
    (define read-u8vector__1
      (lambda (_%bytes84817%_ _%port84818%_ _%start84819%_)
        (let ((_%end84821%_ (u8vector-length _%bytes84817%_)))
          (read-u8vector__%
           _%bytes84817%_
           _%port84818%_
           _%start84819%_
           _%end84821%_))))
    (define read-u8vector
      (lambda _g89782_
        (let ((_g89781_ (let () (declare (not safe)) (##length _g89782_))))
          (cond ((let () (declare (not safe)) (##fx= _g89781_ 2))
                 (apply read-u8vector__0 _g89782_))
                ((let () (declare (not safe)) (##fx= _g89781_ 3))
                 (apply read-u8vector__1 _g89782_))
                ((let () (declare (not safe)) (##fx= _g89781_ 4))
                 (apply read-u8vector__% _g89782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g89782_))))))
    (define __read-u8vector__%
      (lambda (_%bytes84693%_ _%port84694%_ _%start84695%_ _%end84696%_)
        (let* ((_%bytes84699%_ _%bytes84693%_)
               (_%port84707%_ _%port84694%_)
               (_%start84715%_ _%start84695%_)
               (_%end84723%_ _%end84696%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes84699%_
           _%start84715%_
           _%end84723%_
           _%port84707%_))))
    (define __read-u8vector__0
      (lambda (_%bytes84735%_ _%port84736%_)
        (let* ((_%start84738%_ '0)
               (_%end84740%_ (u8vector-length _%bytes84735%_)))
          (__read-u8vector__%
           _%bytes84735%_
           _%port84736%_
           _%start84738%_
           _%end84740%_))))
    (define __read-u8vector__1
      (lambda (_%bytes84742%_ _%port84743%_ _%start84744%_)
        (let ((_%end84746%_ (u8vector-length _%bytes84742%_)))
          (__read-u8vector__%
           _%bytes84742%_
           _%port84743%_
           _%start84744%_
           _%end84746%_))))
    (define __read-u8vector
      (lambda _g89784_
        (let ((_g89783_ (let () (declare (not safe)) (##length _g89784_))))
          (cond ((let () (declare (not safe)) (##fx= _g89783_ 2))
                 (apply __read-u8vector__0 _g89784_))
                ((let () (declare (not safe)) (##fx= _g89783_ 3))
                 (apply __read-u8vector__1 _g89784_))
                ((let () (declare (not safe)) (##fx= _g89783_ 4))
                 (apply __read-u8vector__% _g89784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g89784_))))))
    (define write-u8vector__%
      (lambda (_%bytes84618%_ _%port84619%_ _%start84620%_ _%end84621%_)
        (if (u8vector? _%bytes84618%_)
            (let ((_%bytes84625%_ _%bytes84618%_))
              (if (output-port? _%port84619%_)
                  (let ((_%port84635%_ _%port84619%_))
                    (if ((lambda (_%o84644%_)
                           (and (fixnum? _%o84644%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84644%_ '0))
                                (let ((__tmp89785
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84625%_))))
                                  (declare (not safe))
                                  (##fx< _%o84644%_ __tmp89785))))
                         _%start84620%_)
                        (let ((_%start84648%_ _%start84620%_))
                          (if ((lambda (_%o84657%_)
                                 (and (fixnum? _%o84657%_)
                                      (let ((__tmp89786
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84625%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84648%_
                                                _%o84657%_
                                                __tmp89786))))
                               _%end84621%_)
                              (let ((_%end84661%_ _%end84621%_))
                                (__write-u8vector__%
                                 _%bytes84625%_
                                 _%port84635%_
                                 _%start84648%_
                                 _%end84661%_))
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
                                 _%end84621%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@758.23-758.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84620%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@757.23-757.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port84619%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
               'contract:
               'u8vector?
               'value:
               _%bytes84618%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes84674%_ _%port84675%_)
        (let* ((_%start84677%_ '0)
               (_%end84679%_ (u8vector-length _%bytes84674%_)))
          (write-u8vector__%
           _%bytes84674%_
           _%port84675%_
           _%start84677%_
           _%end84679%_))))
    (define write-u8vector__1
      (lambda (_%bytes84681%_ _%port84682%_ _%start84683%_)
        (let ((_%end84685%_ (u8vector-length _%bytes84681%_)))
          (write-u8vector__%
           _%bytes84681%_
           _%port84682%_
           _%start84683%_
           _%end84685%_))))
    (define write-u8vector
      (lambda _g89788_
        (let ((_g89787_ (let () (declare (not safe)) (##length _g89788_))))
          (cond ((let () (declare (not safe)) (##fx= _g89787_ 2))
                 (apply write-u8vector__0 _g89788_))
                ((let () (declare (not safe)) (##fx= _g89787_ 3))
                 (apply write-u8vector__1 _g89788_))
                ((let () (declare (not safe)) (##fx= _g89787_ 4))
                 (apply write-u8vector__% _g89788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g89788_))))))
    (define __write-u8vector__%
      (lambda (_%bytes84557%_ _%port84558%_ _%start84559%_ _%end84560%_)
        (let* ((_%bytes84563%_ _%bytes84557%_)
               (_%port84571%_ _%port84558%_)
               (_%start84579%_ _%start84559%_)
               (_%end84587%_ _%end84560%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes84563%_
           _%start84579%_
           _%end84587%_
           _%port84571%_))))
    (define __write-u8vector__0
      (lambda (_%bytes84599%_ _%port84600%_)
        (let* ((_%start84602%_ '0)
               (_%end84604%_ (u8vector-length _%bytes84599%_)))
          (__write-u8vector__%
           _%bytes84599%_
           _%port84600%_
           _%start84602%_
           _%end84604%_))))
    (define __write-u8vector__1
      (lambda (_%bytes84606%_ _%port84607%_ _%start84608%_)
        (let ((_%end84610%_ (u8vector-length _%bytes84606%_)))
          (__write-u8vector__%
           _%bytes84606%_
           _%port84607%_
           _%start84608%_
           _%end84610%_))))
    (define __write-u8vector
      (lambda _g89790_
        (let ((_g89789_ (let () (declare (not safe)) (##length _g89790_))))
          (cond ((let () (declare (not safe)) (##fx= _g89789_ 2))
                 (apply __write-u8vector__0 _g89790_))
                ((let () (declare (not safe)) (##fx= _g89789_ 3))
                 (apply __write-u8vector__1 _g89790_))
                ((let () (declare (not safe)) (##fx= _g89789_ 4))
                 (apply __write-u8vector__% _g89790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g89790_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag84525%_
               _%dbg-exprs84526%_
               _%dbg-thunks84527%_
               _%expr84528%_
               _%thunk84529%_)
        (letrec ((_%o84531%_ (current-output-port))
                 (_%e84532%_ (current-error-port))
                 (_%p84533%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f84534%_
                  (lambda ()
                    (force-output _%o84531%_)
                    (force-output _%e84532%_)))
                 (_%d84535%_
                  (lambda (_%x84542%_) (display _%x84542%_ _%e84532%_)))
                 (_%w84536%_
                  (lambda (_%x84544%_) (_%p84533%_ _%x84544%_ _%e84532%_)))
                 (_%n84537%_ (lambda () (newline _%e84532%_)))
                 (_%v84538%_
                  (lambda (_%l84547%_)
                    (for-each
                     (lambda (_%x84549%_)
                       (_%d84535%_ '" ")
                       (_%w84536%_ _%x84549%_))
                     _%l84547%_)
                    (_%n84537%_)))
                 (_%x84539%_
                  (lambda (_%expr84551%_ _%thunk84552%_)
                    (_%f84534%_)
                    (_%d84535%_ '"  ")
                    (_%w84536%_ _%expr84551%_)
                    (_%d84535%_ '" =>")
                    (call-with-values
                     _%thunk84552%_
                     (lambda _%x84554%_
                       (_%v84538%_ _%x84554%_)
                       (_%f84534%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x84554%_)))))))
          (if _%tag84525%_
              (begin
                (if (eq? _%tag84525%_ '#!void)
                    '#!void
                    (begin
                      (_%f84534%_)
                      (_%d84535%_ _%tag84525%_)
                      (_%n84537%_)))
                (for-each _%x84539%_ _%dbg-exprs84526%_ _%dbg-thunks84527%_)
                (if _%thunk84529%_
                    (_%x84539%_ _%expr84528%_ _%thunk84529%_)
                    '#!void))
              (if _%thunk84529%_ (_%thunk84529%_) '#!void)))))))
