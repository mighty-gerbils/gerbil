(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712262511)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86194%_
        (let () (for-each display _%args86194%_) (newline))))
    (define display*
      (lambda _%args86191%_ (let () (for-each display _%args86191%_))))
    (define file-newer?
      (lambda (_%file186166%_ _%file286167%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file186166%_))
              (let ((_%file186171%_ _%file186166%_))
                (if (let () (declare (not safe)) (string? _%file286167%_))
                    (let ((_%file286181%_ _%file286167%_))
                      (declare (not safe))
                      (__file-newer? _%file186171%_ _%file286181%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file286167%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@61.20-61.25"
                 'contract:
                 'string?
                 'value:
                 _%file186166%_)
                '#!void)))))
    (define __file-newer?
      (lambda (_%file186114%_ _%file286115%_)
        (let ()
          (let* ((_%file186118%_ _%file186114%_)
                 (_%file286126%_ _%file286115%_))
            (letrec ((_%modification-time86135%_
                      (lambda (_%file86154%_)
                        (let ((_%file86157%_ _%file86154%_))
                          (declare (not safe))
                          (_%__modification-time86136%_ _%file86157%_))))
                     (_%__modification-time86136%_
                      (lambda (_%file86138%_)
                        (let ()
                          (let* ((_%file86141%_ _%file86138%_)
                                 (__tmp87935
                                  (let ((__tmp87936
                                         (let ()
                                           (declare (not safe))
                                           (##file-info _%file86141%_ '#t))))
                                    (declare (not safe))
                                    (##file-info-last-modification-time
                                     __tmp87936))))
                            (declare (not safe))
                            (##time->seconds __tmp87935))))))
              (let ((__tmp87938
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86136%_ _%file186118%_)))
                    (__tmp87937
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86136%_ _%file286126%_))))
                (declare (not safe))
                (##fl> __tmp87938 __tmp87937)))))))
    (define create-directory*__%
      (lambda (_%dir86079%_ _%perms86080%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir86079%_))
              (let ((_%dir86084%_ _%dir86079%_))
                (if (let () (declare (not safe)) (fixnum? _%perms86080%_))
                    (let ((_%perms86094%_ _%perms86080%_))
                      (declare (not safe))
                      (__create-directory*__% _%dir86084%_ _%perms86094%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms86080%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@72.26-72.29"
                 'contract:
                 'string?
                 'value:
                 _%dir86079%_)
                '#!void)))))
    (define create-directory*__0
      (lambda (_%dir86107%_)
        (let ((_%perms86109%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir86107%_ _%perms86109%_))))
    (define create-directory*
      (lambda _g87940_
        (let ((_g87939_ (let () (declare (not safe)) (##length _g87940_))))
          (cond ((let () (declare (not safe)) (##fx= _g87939_ 1))
                 (apply (lambda (_%dir86107%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir86107%_)))
                        _g87940_))
                ((let () (declare (not safe)) (##fx= _g87939_ 2))
                 (apply (lambda (_%dir86111%_ _%perms86112%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir86111%_
                             _%perms86112%_)))
                        _g87940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87940_))))))
    (define __create-directory*__%
      (lambda (_%dir86003%_ _%perms86004%_)
        (let ()
          (let* ((_%dir86007%_ _%dir86003%_) (_%perms86015%_ _%perms86004%_))
            (letrec ((_%create186024%_
                      (lambda (_%path86056%_)
                        (let ((_%path86059%_ _%path86056%_))
                          (declare (not safe))
                          (_%__create186025%_ _%path86059%_))))
                     (_%__create186025%_
                      (lambda (_%path86037%_)
                        (let ((_%path86040%_ _%path86037%_))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%path86040%_))
                              (let ()
                                (if (eq? (file-type _%path86040%_) 'directory)
                                    '#!void
                                    (error '"Path component is not a directory"
                                           _%path86040%_)))
                              (if _%perms86015%_
                                  (let ()
                                    (create-directory
                                     (cons 'path:
                                           (cons _%path86040%_
                                                 (cons 'permissions:
                                                       (cons _%perms86015%_
                                                             '()))))))
                                  (let ()
                                    (create-directory _%path86040%_))))))))
              (if (let () (declare (not safe)) (##file-exists? _%dir86007%_))
                  '#!void
                  (let _%lp86027%_ ((_%start86029%_ '0))
                    (let ((_%$e86031%_
                           (let ()
                             (declare (not safe))
                             (__string-index
                              _%dir86007%_
                              '#\/
                              _%start86029%_))))
                      (if _%$e86031%_
                          ((lambda (_%x86034%_)
                             (if (let ()
                                   (declare (not safe))
                                   (##fx> _%x86034%_ '0))
                                 (let ((__tmp87941
                                        (substring
                                         _%dir86007%_
                                         '0
                                         _%x86034%_)))
                                   (declare (not safe))
                                   (_%__create186025%_ __tmp87941))
                                 '#!void)
                             (let ((__tmp87942
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%x86034%_ '1))))
                               (declare (not safe))
                               (_%lp86027%_ __tmp87942)))
                           _%$e86031%_)
                          (let ()
                            (declare (not safe))
                            (_%__create186025%_ _%dir86007%_))))))
              '#!void)))))
    (define __create-directory*__0
      (lambda (_%dir86071%_)
        (let ((_%perms86073%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir86071%_ _%perms86073%_))))
    (define __create-directory*
      (lambda _g87944_
        (let ((_g87943_ (let () (declare (not safe)) (##length _g87944_))))
          (cond ((let () (declare (not safe)) (##fx= _g87943_ 1))
                 (apply (lambda (_%dir86071%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir86071%_)))
                        _g87944_))
                ((let () (declare (not safe)) (##fx= _g87943_ 2))
                 (apply (lambda (_%dir86075%_ _%perms86076%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir86075%_
                             _%perms86076%_)))
                        _g87944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87944_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85999%_ (let () '#t)))
    (define true? (lambda (_%obj85996%_) (let () (eq? _%obj85996%_ '#t))))
    (define false (lambda _%ignore85993%_ (let () '#f)))
    (define void (lambda _%ignore85990%_ (let () '#!void)))
    (define void? (lambda (_%obj85987%_) (let () (eq? _%obj85987%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85984%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85984%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85981%_) (let () (eq? _%obj85981%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85978%_) (let () (eq? _%obj85978%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85975%_) (let () (eq? _%obj85975%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85970%_)
        (let ()
          (let* ((_%t85973%_
                  (let () (declare (not safe)) (##type _%obj85970%_)))
                 (__tmp87945
                  (let () (declare (not safe)) (##fxand _%t85973%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87945)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85967%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85967%_))
              (let () (declare (not safe)) (##fx>= _%obj85967%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85961%_)
        (let ((_%$e85964%_ (let () (declare (not safe)) (pair? _%obj85961%_))))
          (if _%$e85964%_
              _%$e85964%_
              (let () (declare (not safe)) (null? _%obj85961%_))))))
    (define values-count
      (lambda (_%obj85958%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85958%_))
              (let () (declare (not safe)) (##vector-length _%obj85958%_))
              '1))))
    (define values-ref
      (lambda (_%obj85943%_ _%k85944%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85944%_))
              (let ((_%k85948%_ _%k85944%_))
                (declare (not safe))
                (__values-ref _%obj85943%_ _%k85948%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@198.23-198.24"
                 'contract:
                 'fixnum?
                 'value:
                 _%k85944%_)
                '#!void)))))
    (define __values-ref
      (lambda (_%obj85930%_ _%k85931%_)
        (let ((_%k85934%_ _%k85931%_))
          (if (let () (declare (not safe)) (##values? _%obj85930%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85930%_ _%k85934%_))
              _%obj85930%_))))
    (define values->list
      (lambda (_%obj85927%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85927%_))
              (let () (declare (not safe)) (##vector->list _%obj85927%_))
              (list _%obj85927%_)))))
    (define foldl1
      (lambda (_%f85911%_ _%iv85912%_ _%lst85913%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85911%_))
              (let ((_%f85917%_ _%f85911%_))
                (declare (not safe))
                (__foldl1 _%f85917%_ _%iv85912%_ _%lst85913%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@221.15-221.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85911%_)
                '#!void)))))
    (define __foldl1
      (lambda (_%f85859%_ _%iv85860%_ _%lst85861%_)
        (let ((_%f85864%_ _%f85859%_))
          (let _%lp85873%_ ((_%rest85875%_ _%lst85861%_)
                            (_%r85876%_ _%iv85860%_))
            (let* ((_%rest8587785885%_ _%rest85875%_)
                   (_%else8587985893%_ (lambda () _%r85876%_))
                   (_%K8588185899%_
                    (lambda (_%rest85896%_ _%x85897%_)
                      (let ((__tmp87946
                             (let ()
                               (declare (not safe))
                               (_%f85864%_ _%x85897%_ _%r85876%_))))
                        (declare (not safe))
                        (_%lp85873%_ _%rest85896%_ __tmp87946)))))
              (if (let () (declare (not safe)) (##pair? _%rest8587785885%_))
                  (let ((_%hd8588285902%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8587785885%_)))
                        (_%tl8588385904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8587785885%_))))
                    (let* ((_%x85907%_ _%hd8588285902%_)
                           (_%rest85909%_ _%tl8588385904%_))
                      (declare (not safe))
                      (_%K8588185899%_ _%rest85909%_ _%x85907%_)))
                  (let () (declare (not safe)) (_%else8587985893%_))))))))
    (define foldl2
      (lambda (_%f85842%_ _%iv85843%_ _%lst185844%_ _%lst285845%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85842%_))
              (let ((_%f85849%_ _%f85842%_))
                (declare (not safe))
                (__foldl2 _%f85849%_ _%iv85843%_ _%lst185844%_ _%lst285845%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@228.15-228.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85842%_)
                '#!void)))))
    (define __foldl2
      (lambda (_%f85755%_ _%iv85756%_ _%lst185757%_ _%lst285758%_)
        (let ((_%f85761%_ _%f85755%_))
          (let _%lp85770%_ ((_%rest185772%_ _%lst185757%_)
                            (_%rest285773%_ _%lst285758%_)
                            (_%r85774%_ _%iv85756%_))
            (let* ((_%rest18577585783%_ _%rest185772%_)
                   (_%else8577785791%_ (lambda () _%r85774%_))
                   (_%K8577985830%_
                    (lambda (_%rest185794%_ _%x185795%_)
                      (let* ((_%rest28579685804%_ _%rest285773%_)
                             (_%else8579885812%_ (lambda () _%r85774%_))
                             (_%K8580085818%_
                              (lambda (_%rest285815%_ _%x285816%_)
                                (let ((__tmp87947
                                       (let ()
                                         (declare (not safe))
                                         (_%f85761%_
                                          _%x185795%_
                                          _%x285816%_
                                          _%r85774%_))))
                                  (declare (not safe))
                                  (_%lp85770%_
                                   _%rest185794%_
                                   _%rest285815%_
                                   __tmp87947)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28579685804%_))
                            (let ((_%hd8580185821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28579685804%_)))
                                  (_%tl8580285823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28579685804%_))))
                              (let* ((_%x285826%_ _%hd8580185821%_)
                                     (_%rest285828%_ _%tl8580285823%_))
                                (declare (not safe))
                                (_%K8580085818%_ _%rest285828%_ _%x285826%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8579885812%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18577585783%_))
                  (let ((_%hd8578085833%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18577585783%_)))
                        (_%tl8578185835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18577585783%_))))
                    (let* ((_%x185838%_ _%hd8578085833%_)
                           (_%rest185840%_ _%tl8578185835%_))
                      (declare (not safe))
                      (_%K8577985830%_ _%rest185840%_ _%x185838%_)))
                  (let () (declare (not safe)) (_%else8577785791%_))))))))
    (define foldl
      (lambda _g87949_
        (let ((_g87948_ (let () (declare (not safe)) (##length _g87949_))))
          (cond ((let () (declare (not safe)) (##fx= _g87948_ 3))
                 (apply (lambda (_%f85740%_ _%iv85741%_ _%lst85742%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85740%_ _%iv85741%_ _%lst85742%_)))
                        _g87949_))
                ((let () (declare (not safe)) (##fx= _g87948_ 4))
                 (apply (lambda (_%f85744%_
                                 _%iv85745%_
                                 _%lst185746%_
                                 _%lst285747%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85744%_
                                    _%iv85745%_
                                    _%lst185746%_
                                    _%lst285747%_)))
                        _g87949_))
                ((let () (declare (not safe)) (##fx>= _g87948_ 4))
                 (apply foldl* _g87949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87949_))))))
    (define foldl*
      (lambda (_%f85724%_ _%iv85725%_ . _%rest85726%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85724%_))
              (let ((_%f85730%_ _%f85724%_))
                (declare (not safe))
                (##apply __foldl* _%f85730%_ _%iv85725%_ _%rest85726%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@246.15-246.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85724%_)
                '#!void)))))
    (define __foldl*
      (lambda (_%f85702%_ _%iv85703%_ . _%rest85704%_)
        (let ((_%f85707%_ _%f85702%_))
          (let _%recur85716%_ ((_%iv85718%_ _%iv85703%_)
                               (_%rest85719%_ _%rest85704%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85719%_))
                (let ((__tmp87951
                       (let ((__tmp87952
                              (let ((__tmp87954
                                     (lambda (_%xs85721%_ _%r85722%_)
                                       (cons (car _%xs85721%_) _%r85722%_)))
                                    (__tmp87953 (list _%iv85718%_)))
                                (declare (not safe))
                                (__foldr1
                                 __tmp87954
                                 __tmp87953
                                 _%rest85719%_))))
                         (declare (not safe))
                         (##apply _%f85707%_ __tmp87952)))
                      (__tmp87950 (map cdr _%rest85719%_)))
                  (declare (not safe))
                  (_%recur85716%_ __tmp87951 __tmp87950))
                _%iv85718%_)))))
    (define foldr1
      (lambda (_%f85686%_ _%iv85687%_ _%lst85688%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85686%_))
              (let ((_%f85692%_ _%f85686%_))
                (declare (not safe))
                (__foldr1 _%f85692%_ _%iv85687%_ _%lst85688%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@256.15-256.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85686%_)
                '#!void)))))
    (define __foldr1
      (lambda (_%f85635%_ _%iv85636%_ _%lst85637%_)
        (let ((_%f85640%_ _%f85635%_))
          (let _%recur85649%_ ((_%rest85651%_ _%lst85637%_))
            (let* ((_%rest8565285660%_ _%rest85651%_)
                   (_%else8565485668%_ (lambda () _%iv85636%_))
                   (_%K8565685674%_
                    (lambda (_%rest85671%_ _%x85672%_)
                      (let ((__tmp87955
                             (let ()
                               (declare (not safe))
                               (_%recur85649%_ _%rest85671%_))))
                        (declare (not safe))
                        (_%f85640%_ _%x85672%_ __tmp87955)))))
              (if (let () (declare (not safe)) (##pair? _%rest8565285660%_))
                  (let ((_%hd8565785677%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8565285660%_)))
                        (_%tl8565885679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8565285660%_))))
                    (let* ((_%x85682%_ _%hd8565785677%_)
                           (_%rest85684%_ _%tl8565885679%_))
                      (declare (not safe))
                      (_%K8565685674%_ _%rest85684%_ _%x85682%_)))
                  (let () (declare (not safe)) (_%else8565485668%_))))))))
    (define foldr2
      (lambda (_%f85618%_ _%iv85619%_ _%lst185620%_ _%lst285621%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85618%_))
              (let ((_%f85625%_ _%f85618%_))
                (declare (not safe))
                (__foldr2 _%f85625%_ _%iv85619%_ _%lst185620%_ _%lst285621%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@263.15-263.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85618%_)
                '#!void)))))
    (define __foldr2
      (lambda (_%f85532%_ _%iv85533%_ _%lst185534%_ _%lst285535%_)
        (let ((_%f85538%_ _%f85532%_))
          (let _%recur85547%_ ((_%rest185549%_ _%lst185534%_)
                               (_%rest285550%_ _%lst285535%_))
            (let* ((_%rest18555185559%_ _%rest185549%_)
                   (_%else8555385567%_ (lambda () _%iv85533%_))
                   (_%K8555585606%_
                    (lambda (_%rest185570%_ _%x185571%_)
                      (let* ((_%rest28557285580%_ _%rest285550%_)
                             (_%else8557485588%_ (lambda () _%iv85533%_))
                             (_%K8557685594%_
                              (lambda (_%rest285591%_ _%x285592%_)
                                (let ((__tmp87956
                                       (let ()
                                         (declare (not safe))
                                         (_%recur85547%_
                                          _%rest185570%_
                                          _%rest285591%_))))
                                  (declare (not safe))
                                  (_%f85538%_
                                   _%x185571%_
                                   _%x285592%_
                                   __tmp87956)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28557285580%_))
                            (let ((_%hd8557785597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28557285580%_)))
                                  (_%tl8557885599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28557285580%_))))
                              (let* ((_%x285602%_ _%hd8557785597%_)
                                     (_%rest285604%_ _%tl8557885599%_))
                                (declare (not safe))
                                (_%K8557685594%_ _%rest285604%_ _%x285602%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8557485588%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18555185559%_))
                  (let ((_%hd8555685609%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18555185559%_)))
                        (_%tl8555785611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18555185559%_))))
                    (let* ((_%x185614%_ _%hd8555685609%_)
                           (_%rest185616%_ _%tl8555785611%_))
                      (declare (not safe))
                      (_%K8555585606%_ _%rest185616%_ _%x185614%_)))
                  (let () (declare (not safe)) (_%else8555385567%_))))))))
    (define foldr
      (lambda _g87958_
        (let ((_g87957_ (let () (declare (not safe)) (##length _g87958_))))
          (cond ((let () (declare (not safe)) (##fx= _g87957_ 3))
                 (apply (lambda (_%f85517%_ _%iv85518%_ _%lst85519%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f85517%_ _%iv85518%_ _%lst85519%_)))
                        _g87958_))
                ((let () (declare (not safe)) (##fx= _g87957_ 4))
                 (apply (lambda (_%f85521%_
                                 _%iv85522%_
                                 _%lst185523%_
                                 _%lst285524%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f85521%_
                                    _%iv85522%_
                                    _%lst185523%_
                                    _%lst285524%_)))
                        _g87958_))
                ((let () (declare (not safe)) (##fx>= _g87957_ 4))
                 (apply foldr* _g87958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87958_))))))
    (define foldr*
      (lambda (_%f85501%_ _%iv85502%_ . _%rest85503%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85501%_))
              (let ((_%f85507%_ _%f85501%_))
                (declare (not safe))
                (##apply __foldr* _%f85507%_ _%iv85502%_ _%rest85503%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@281.15-281.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85501%_)
                '#!void)))))
    (define __foldr*
      (lambda (_%f85480%_ _%iv85481%_ . _%rest85482%_)
        (let ((_%f85485%_ _%f85480%_))
          (let _%recur85494%_ ((_%rest85496%_ _%rest85482%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85496%_))
                (let ((__tmp87959
                       (let ((__tmp87962
                              (lambda (_%xs85498%_ _%r85499%_)
                                (cons (car _%xs85498%_) _%r85499%_)))
                             (__tmp87960
                              (list (let ((__tmp87961 (map cdr _%rest85496%_)))
                                      (declare (not safe))
                                      (_%recur85494%_ __tmp87961)))))
                         (declare (not safe))
                         (__foldr1 __tmp87962 __tmp87960 _%rest85496%_))))
                  (declare (not safe))
                  (##apply _%f85485%_ __tmp87959))
                _%iv85481%_)))))
    (define remove-nulls!
      (lambda (_%l85367%_)
        (let* ((_%l8536885381%_ _%l85367%_)
               (_%E8537285385%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8536885381%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8537785470%_
                 (lambda (_%r85468%_)
                   (let () (declare (not safe)) (remove-nulls! _%r85468%_))))
                (_%K8537485457%_
                 (lambda (_%r85397%_)
                   (let _%loop85399%_ ((_%l85401%_ _%l85367%_)
                                       (_%r85402%_ _%r85397%_))
                     (let* ((_%r8540385416%_ _%r85402%_)
                            (_%E8540785420%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8540385416%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8541285447%_
                              (lambda (_%rr85445%_)
                                (let ((__tmp87964 _%l85401%_)
                                      (__tmp87963
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr85445%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87964 __tmp87963))))
                             (_%K8540985434%_
                              (lambda (_%rr85432%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop85399%_ _%r85402%_ _%rr85432%_))))
                             (_%K8540885425%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8540385416%_))
                             (let ((_%tl8541485452%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8540385416%_)))
                                   (_%hd8541385450%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8540385416%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8541385450%_))
                                   (let ((_%rr85455%_ _%tl8541485452%_))
                                     (declare (not safe))
                                     (_%K8541285447%_ _%rr85455%_))
                                   (let ((_%rr85440%_ _%tl8541485452%_))
                                     (declare (not safe))
                                     (_%K8540985434%_ _%rr85440%_))))
                             '#!void))))
                   _%l85367%_))
                (_%K8537385390%_ (lambda () _%l85367%_)))
            (if (let () (declare (not safe)) (##pair? _%l8536885381%_))
                (let ((_%tl8537985475%_
                       (let () (declare (not safe)) (##cdr _%l8536885381%_)))
                      (_%hd8537885473%_
                       (let () (declare (not safe)) (##car _%l8536885381%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8537885473%_))
                      (let ((_%r85478%_ _%tl8537985475%_))
                        (declare (not safe))
                        (remove-nulls! _%r85478%_))
                      (let ((_%r85463%_ _%tl8537985475%_))
                        (declare (not safe))
                        (_%K8537485457%_ _%r85463%_))))
                (let () (declare (not safe)) (_%K8537385390%_)))))))
    (define append1!
      (lambda (_%l85352%_ _%x85353%_)
        (let ((_%l285356%_ (cons _%x85353%_ '())))
          (if (let () (declare (not safe)) (pair? _%l85352%_))
              (let ((_%l85358%_ _%l85352%_))
                (let ((__tmp87965
                       (let () (declare (not safe)) (##last-pair _%l85358%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87965 _%l285356%_))
                _%l85358%_)
              _%l285356%_))))
    (define append-reverse-until
      (lambda (_%pred85336%_ _%rhead85337%_ _%tail85338%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred85336%_))
              (let ((_%pred85342%_ _%pred85336%_))
                (declare (not safe))
                (__append-reverse-until
                 _%pred85342%_
                 _%rhead85337%_
                 _%tail85338%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@321.29-321.33"
                 'contract:
                 'procedure?
                 'value:
                 _%pred85336%_)
                '#!void)))))
    (define __append-reverse-until
      (lambda (_%pred85278%_ _%rhead85279%_ _%tail85280%_)
        (let ((_%pred85283%_ _%pred85278%_))
          (let _%loop85292%_ ((_%rhead85294%_ _%rhead85279%_)
                              (_%tail85295%_ _%tail85280%_))
            (let ()
              (let* ((_%rhead8529785306%_ _%rhead85294%_)
                     (_%E8530085310%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rhead8529785306%_
                               '([])
                               '([a :: r]))
                        '#!void)))
                (let ((_%K8530485333%_ (lambda () (values '() _%tail85295%_)))
                      (_%K8530185317%_
                       (lambda (_%r85314%_ _%a85315%_)
                         (if (let ()
                               (declare (not safe))
                               (_%pred85283%_ _%a85315%_))
                             (values _%rhead85294%_ _%tail85295%_)
                             (let ((__tmp87966
                                    (cons _%a85315%_ _%tail85295%_)))
                               (declare (not safe))
                               (_%loop85292%_ _%r85314%_ __tmp87966))))))
                  (let ((_%try-match8529985329%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rhead8529785306%_))
                               (let ((_%tl8530385322%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rhead8529785306%_)))
                                     (_%hd8530285320%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rhead8529785306%_))))
                                 (let ((_%a85325%_ _%hd8530285320%_)
                                       (_%r85327%_ _%tl8530385322%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K8530185317%_ _%r85327%_ _%a85325%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%E8530085310%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%rhead8529785306%_))
                        (let () (declare (not safe)) (_%K8530485333%_))
                        (let ()
                          (declare (not safe))
                          (_%try-match8529985329%_)))))))))))
    (define andmap1
      (lambda (_%f85263%_ _%lst85264%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85263%_))
              (let ((_%f85268%_ _%f85263%_))
                (declare (not safe))
                (__andmap1 _%f85268%_ _%lst85264%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@332.16-332.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85263%_)
                '#!void)))))
    (define __andmap1
      (lambda (_%f85212%_ _%lst85213%_)
        (let ((_%f85216%_ _%f85212%_))
          (let _%lp85225%_ ((_%rest85227%_ _%lst85213%_))
            (let ()
              (let* ((_%rest8522985237%_ _%rest85227%_)
                     (_%else8523185245%_ (lambda () '#t))
                     (_%K8523385251%_
                      (lambda (_%rest85248%_ _%x85249%_)
                        (if (let ()
                              (declare (not safe))
                              (_%f85216%_ _%x85249%_))
                            (let ()
                              (declare (not safe))
                              (_%lp85225%_ _%rest85248%_))
                            '#f))))
                (if (let () (declare (not safe)) (##pair? _%rest8522985237%_))
                    (let ((_%hd8523485254%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8522985237%_)))
                          (_%tl8523585256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8522985237%_))))
                      (let* ((_%x85259%_ _%hd8523485254%_)
                             (_%rest85261%_ _%tl8523585256%_))
                        (declare (not safe))
                        (_%K8523385251%_ _%rest85261%_ _%x85259%_)))
                    (let () (declare (not safe)) (_%else8523185245%_)))))))))
    (define andmap2
      (lambda (_%f85196%_ _%lst185197%_ _%lst285198%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85196%_))
              (let ((_%f85202%_ _%f85196%_))
                (declare (not safe))
                (__andmap2 _%f85202%_ _%lst185197%_ _%lst285198%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@341.16-341.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85196%_)
                '#!void)))))
    (define __andmap2
      (lambda (_%f85110%_ _%lst185111%_ _%lst285112%_)
        (let ((_%f85115%_ _%f85110%_))
          (let _%lp85124%_ ((_%rest185126%_ _%lst185111%_)
                            (_%rest285127%_ _%lst285112%_))
            (let ()
              (let* ((_%rest18512985137%_ _%rest185126%_)
                     (_%else8513185145%_ (lambda () '#t))
                     (_%K8513385184%_
                      (lambda (_%rest185148%_ _%x185149%_)
                        (let* ((_%rest28515085158%_ _%rest285127%_)
                               (_%else8515285166%_ (lambda () '#t))
                               (_%K8515485172%_
                                (lambda (_%rest285169%_ _%x285170%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (_%f85115%_ _%x185149%_ _%x285170%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp85124%_
                                         _%rest185148%_
                                         _%rest285169%_))
                                      '#f))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28515085158%_))
                              (let ((_%hd8515585175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28515085158%_)))
                                    (_%tl8515685177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28515085158%_))))
                                (let* ((_%x285180%_ _%hd8515585175%_)
                                       (_%rest285182%_ _%tl8515685177%_))
                                  (declare (not safe))
                                  (_%K8515485172%_
                                   _%rest285182%_
                                   _%x285180%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8515285166%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18512985137%_))
                    (let ((_%hd8513485187%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18512985137%_)))
                          (_%tl8513585189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18512985137%_))))
                      (let* ((_%x185192%_ _%hd8513485187%_)
                             (_%rest185194%_ _%tl8513585189%_))
                        (declare (not safe))
                        (_%K8513385184%_ _%rest185194%_ _%x185192%_)))
                    (let () (declare (not safe)) (_%else8513185145%_)))))))))
    (define andmap
      (lambda _g87968_
        (let ((_g87967_ (let () (declare (not safe)) (##length _g87968_))))
          (cond ((let () (declare (not safe)) (##fx= _g87967_ 2))
                 (apply (lambda (_%f85098%_ _%lst85099%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f85098%_ _%lst85099%_)))
                        _g87968_))
                ((let () (declare (not safe)) (##fx= _g87967_ 3))
                 (apply (lambda (_%f85101%_ _%lst185102%_ _%lst285103%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f85101%_ _%lst185102%_ _%lst285103%_)))
                        _g87968_))
                ((let () (declare (not safe)) (##fx>= _g87967_ 3))
                 (apply andmap* _g87968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87968_))))))
    (define andmap*
      (lambda (_%f85083%_ . _%rest85084%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85083%_))
              (let ((_%f85088%_ _%f85083%_))
                (declare (not safe))
                (##apply __andmap* _%f85088%_ _%rest85084%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@361.16-361.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85083%_)
                '#!void)))))
    (define __andmap*
      (lambda (_%f85065%_ . _%rest85066%_)
        (let ((_%f85069%_ _%f85065%_))
          (let _%recur85078%_ ((_%rest85080%_ _%rest85066%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest85080%_))
                  (if (let ((__tmp87969 (map car _%rest85080%_)))
                        (declare (not safe))
                        (##apply _%f85069%_ __tmp87969))
                      (let ((__tmp87970 (map cdr _%rest85080%_)))
                        (declare (not safe))
                        (_%recur85078%_ __tmp87970))
                      '#f)
                  '#t))))))
    (define ormap1
      (lambda (_%f85050%_ _%lst85051%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85050%_))
              (let ((_%f85055%_ _%f85050%_))
                (declare (not safe))
                (__ormap1 _%f85055%_ _%lst85051%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@370.15-370.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85050%_)
                '#!void)))))
    (define __ormap1
      (lambda (_%f84997%_ _%lst84998%_)
        (let ((_%f85001%_ _%f84997%_))
          (let _%lp85010%_ ((_%rest85012%_ _%lst84998%_))
            (let* ((_%rest8501385021%_ _%rest85012%_)
                   (_%else8501585029%_ (lambda () '#f))
                   (_%K8501785038%_
                    (lambda (_%rest85032%_ _%x85033%_)
                      (let ((_%$e85035%_
                             (let ()
                               (declare (not safe))
                               (_%f85001%_ _%x85033%_))))
                        (if _%$e85035%_
                            _%$e85035%_
                            (let ()
                              (declare (not safe))
                              (_%lp85010%_ _%rest85032%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest8501385021%_))
                  (let ((_%hd8501885041%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8501385021%_)))
                        (_%tl8501985043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8501385021%_))))
                    (let* ((_%x85046%_ _%hd8501885041%_)
                           (_%rest85048%_ _%tl8501985043%_))
                      (declare (not safe))
                      (_%K8501785038%_ _%rest85048%_ _%x85046%_)))
                  (let () (declare (not safe)) (_%else8501585029%_))))))))
    (define ormap2
      (lambda (_%f84981%_ _%lst184982%_ _%lst284983%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84981%_))
              (let ((_%f84987%_ _%f84981%_))
                (declare (not safe))
                (__ormap2 _%f84987%_ _%lst184982%_ _%lst284983%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@377.15-377.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84981%_)
                '#!void)))))
    (define __ormap2
      (lambda (_%f84893%_ _%lst184894%_ _%lst284895%_)
        (let ((_%f84898%_ _%f84893%_))
          (let _%lp84907%_ ((_%rest184909%_ _%lst184894%_)
                            (_%rest284910%_ _%lst284895%_))
            (let* ((_%rest18491184919%_ _%rest184909%_)
                   (_%else8491384927%_ (lambda () '#f))
                   (_%K8491584969%_
                    (lambda (_%rest184930%_ _%x184931%_)
                      (let* ((_%rest28493284940%_ _%rest284910%_)
                             (_%else8493484948%_ (lambda () '#f))
                             (_%K8493684957%_
                              (lambda (_%rest284951%_ _%x284952%_)
                                (let ((_%$e84954%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84898%_
                                          _%x184931%_
                                          _%x284952%_))))
                                  (if _%$e84954%_
                                      _%$e84954%_
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84907%_
                                         _%rest184930%_
                                         _%rest284951%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28493284940%_))
                            (let ((_%hd8493784960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28493284940%_)))
                                  (_%tl8493884962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28493284940%_))))
                              (let* ((_%x284965%_ _%hd8493784960%_)
                                     (_%rest284967%_ _%tl8493884962%_))
                                (declare (not safe))
                                (_%K8493684957%_ _%rest284967%_ _%x284965%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8493484948%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18491184919%_))
                  (let ((_%hd8491684972%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18491184919%_)))
                        (_%tl8491784974%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18491184919%_))))
                    (let* ((_%x184977%_ _%hd8491684972%_)
                           (_%rest184979%_ _%tl8491784974%_))
                      (declare (not safe))
                      (_%K8491584969%_ _%rest184979%_ _%x184977%_)))
                  (let () (declare (not safe)) (_%else8491384927%_))))))))
    (define ormap
      (lambda _g87972_
        (let ((_g87971_ (let () (declare (not safe)) (##length _g87972_))))
          (cond ((let () (declare (not safe)) (##fx= _g87971_ 2))
                 (apply (lambda (_%f84881%_ _%lst84882%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84881%_ _%lst84882%_)))
                        _g87972_))
                ((let () (declare (not safe)) (##fx= _g87971_ 3))
                 (apply (lambda (_%f84884%_ _%lst184885%_ _%lst284886%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84884%_ _%lst184885%_ _%lst284886%_)))
                        _g87972_))
                ((let () (declare (not safe)) (##fx>= _g87971_ 3))
                 (apply ormap* _g87972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87972_))))))
    (define ormap*
      (lambda (_%f84866%_ . _%rest84867%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84866%_))
              (let ((_%f84871%_ _%f84866%_))
                (declare (not safe))
                (##apply __ormap* _%f84871%_ _%rest84867%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@395.15-395.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84866%_)
                '#!void)))))
    (define __ormap*
      (lambda (_%f84846%_ . _%rest84847%_)
        (let ((_%f84850%_ _%f84846%_))
          (let _%recur84859%_ ((_%rest84861%_ _%rest84847%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84861%_))
                (let ((_%$e84863%_
                       (let ((__tmp87973 (map car _%rest84861%_)))
                         (declare (not safe))
                         (##apply _%f84850%_ __tmp87973))))
                  (if _%$e84863%_
                      _%$e84863%_
                      (let ((__tmp87974 (map cdr _%rest84861%_)))
                        (declare (not safe))
                        (_%recur84859%_ __tmp87974))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84831%_ _%lst84832%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84831%_))
              (let ((_%f84836%_ _%f84831%_))
                (declare (not safe))
                (__filter-map1 _%f84836%_ _%lst84832%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@402.20-402.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84831%_)
                '#!void)))))
    (define __filter-map1
      (lambda (_%f84774%_ _%lst84775%_)
        (let ((_%f84778%_ _%f84774%_))
          (let _%recur84787%_ ((_%rest84789%_ _%lst84775%_))
            (let ()
              (let* ((_%rest8479184799%_ _%rest84789%_)
                     (_%else8479384807%_ (lambda () '()))
                     (_%K8479584819%_
                      (lambda (_%rest84810%_ _%x84811%_)
                        (let ((_%$e84813%_
                               (let ()
                                 (declare (not safe))
                                 (_%f84778%_ _%x84811%_))))
                          (if _%$e84813%_
                              ((lambda (_%r84816%_)
                                 (cons _%r84816%_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84787%_ _%rest84810%_))))
                               _%$e84813%_)
                              (let ()
                                (declare (not safe))
                                (_%recur84787%_ _%rest84810%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest8479184799%_))
                    (let ((_%hd8479684822%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8479184799%_)))
                          (_%tl8479784824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8479184799%_))))
                      (let* ((_%x84827%_ _%hd8479684822%_)
                             (_%rest84829%_ _%tl8479784824%_))
                        (declare (not safe))
                        (_%K8479584819%_ _%rest84829%_ _%x84827%_)))
                    (let () (declare (not safe)) (_%else8479384807%_)))))))))
    (define filter-map2
      (lambda (_%f84758%_ _%lst184759%_ _%lst284760%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84758%_))
              (let ((_%f84764%_ _%f84758%_))
                (declare (not safe))
                (__filter-map2 _%f84764%_ _%lst184759%_ _%lst284760%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@413.20-413.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84758%_)
                '#!void)))))
    (define __filter-map2
      (lambda (_%f84666%_ _%lst184667%_ _%lst284668%_)
        (let ((_%f84671%_ _%f84666%_))
          (let _%recur84680%_ ((_%rest184682%_ _%lst184667%_)
                               (_%rest284683%_ _%lst284668%_))
            (let ()
              (let* ((_%rest18468584693%_ _%rest184682%_)
                     (_%else8468784701%_ (lambda () '()))
                     (_%K8468984746%_
                      (lambda (_%rest184704%_ _%x184705%_)
                        (let* ((_%rest28470684714%_ _%rest284683%_)
                               (_%else8470884722%_ (lambda () '()))
                               (_%K8471084734%_
                                (lambda (_%rest284725%_ _%x284726%_)
                                  (let ((_%$e84728%_
                                         (let ()
                                           (declare (not safe))
                                           (_%f84671%_
                                            _%x184705%_
                                            _%x284726%_))))
                                    (if _%$e84728%_
                                        ((lambda (_%r84731%_)
                                           (cons _%r84731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%recur84680%_
                                                    _%rest184704%_
                                                    _%rest284725%_))))
                                         _%$e84728%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%recur84680%_
                                           _%rest184704%_
                                           _%rest284725%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28470684714%_))
                              (let ((_%hd8471184737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28470684714%_)))
                                    (_%tl8471284739%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28470684714%_))))
                                (let* ((_%x284742%_ _%hd8471184737%_)
                                       (_%rest284744%_ _%tl8471284739%_))
                                  (declare (not safe))
                                  (_%K8471084734%_
                                   _%rest284744%_
                                   _%x284742%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8470884722%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18468584693%_))
                    (let ((_%hd8469084749%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18468584693%_)))
                          (_%tl8469184751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18468584693%_))))
                      (let* ((_%x184754%_ _%hd8469084749%_)
                             (_%rest184756%_ _%tl8469184751%_))
                        (declare (not safe))
                        (_%K8468984746%_ _%rest184756%_ _%x184754%_)))
                    (let () (declare (not safe)) (_%else8468784701%_)))))))))
    (define filter-map
      (lambda _g87976_
        (let ((_g87975_ (let () (declare (not safe)) (##length _g87976_))))
          (cond ((let () (declare (not safe)) (##fx= _g87975_ 2))
                 (apply (lambda (_%f84654%_ _%lst84655%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84654%_ _%lst84655%_)))
                        _g87976_))
                ((let () (declare (not safe)) (##fx= _g87975_ 3))
                 (apply (lambda (_%f84657%_ _%lst184658%_ _%lst284659%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84657%_
                             _%lst184658%_
                             _%lst284659%_)))
                        _g87976_))
                ((let () (declare (not safe)) (##fx>= _g87975_ 3))
                 (apply filter-map* _g87976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87976_))))))
    (define filter-map*
      (lambda (_%f84639%_ . _%rest84640%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84639%_))
              (let ((_%f84644%_ _%f84639%_))
                (declare (not safe))
                (##apply __filter-map* _%f84644%_ _%rest84640%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@435.20-435.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84639%_)
                '#!void)))))
    (define __filter-map*
      (lambda (_%f84615%_ . _%rest84616%_)
        (let ((_%f84619%_ _%f84615%_))
          (let _%recur84628%_ ((_%rest84630%_ _%rest84616%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84630%_))
                  (let ((_%$e84633%_
                         (let ((__tmp87977 (map car _%rest84630%_)))
                           (declare (not safe))
                           (##apply _%f84619%_ __tmp87977))))
                    (if _%$e84633%_
                        ((lambda (_%r84636%_)
                           (cons _%r84636%_
                                 (let ((__tmp87978 (map cdr _%rest84630%_)))
                                   (declare (not safe))
                                   (_%recur84628%_ __tmp87978))))
                         _%$e84633%_)
                        (let ((__tmp87979 (map cdr _%rest84630%_)))
                          (declare (not safe))
                          (_%recur84628%_ __tmp87979))))
                  '()))))))
    (define agetq__%
      (lambda (_%key84591%_ _%lst84593%_ _%default84595%_)
        (let ((_%$e84598%_
               (if (let () (declare (not safe)) (pair? _%lst84593%_))
                   (assq _%key84591%_ _%lst84593%_)
                   '#f)))
          (if _%$e84598%_
              (cdr _%$e84598%_)
              (if (let () (declare (not safe)) (procedure? _%default84595%_))
                  (let () (_%default84595%_ _%key84591%_))
                  (let () _%default84595%_))))))
    (define agetq__0
      (lambda (_%key84606%_ _%lst84607%_)
        (let ((_%default84609%_ '#f))
          (declare (not safe))
          (agetq__% _%key84606%_ _%lst84607%_ _%default84609%_))))
    (define agetq
      (lambda _g87981_
        (let ((_g87980_ (let () (declare (not safe)) (##length _g87981_))))
          (cond ((let () (declare (not safe)) (##fx= _g87980_ 2))
                 (apply (lambda (_%key84606%_ _%lst84607%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84606%_ _%lst84607%_)))
                        _g87981_))
                ((let () (declare (not safe)) (##fx= _g87980_ 3))
                 (apply (lambda (_%key84611%_ _%lst84612%_ _%default84613%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84611%_
                             _%lst84612%_
                             _%default84613%_)))
                        _g87981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87981_))))))
    (define agetv__%
      (lambda (_%key84566%_ _%lst84568%_ _%default84570%_)
        (let ((_%$e84573%_
               (if (let () (declare (not safe)) (pair? _%lst84568%_))
                   (assv _%key84566%_ _%lst84568%_)
                   '#f)))
          (if _%$e84573%_
              (cdr _%$e84573%_)
              (if (let () (declare (not safe)) (procedure? _%default84570%_))
                  (let () (_%default84570%_ _%key84566%_))
                  (let () _%default84570%_))))))
    (define agetv__0
      (lambda (_%key84581%_ _%lst84582%_)
        (let ((_%default84584%_ '#f))
          (declare (not safe))
          (agetv__% _%key84581%_ _%lst84582%_ _%default84584%_))))
    (define agetv
      (lambda _g87983_
        (let ((_g87982_ (let () (declare (not safe)) (##length _g87983_))))
          (cond ((let () (declare (not safe)) (##fx= _g87982_ 2))
                 (apply (lambda (_%key84581%_ _%lst84582%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84581%_ _%lst84582%_)))
                        _g87983_))
                ((let () (declare (not safe)) (##fx= _g87982_ 3))
                 (apply (lambda (_%key84586%_ _%lst84587%_ _%default84588%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84586%_
                             _%lst84587%_
                             _%default84588%_)))
                        _g87983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87983_))))))
    (define aget__%
      (lambda (_%key84541%_ _%lst84543%_ _%default84545%_)
        (let ((_%$e84548%_
               (if (let () (declare (not safe)) (pair? _%lst84543%_))
                   (assoc _%key84541%_ _%lst84543%_)
                   '#f)))
          (if _%$e84548%_
              (cdr _%$e84548%_)
              (if (let () (declare (not safe)) (procedure? _%default84545%_))
                  (let () (_%default84545%_ _%key84541%_))
                  (let () _%default84545%_))))))
    (define aget__0
      (lambda (_%key84556%_ _%lst84557%_)
        (let ((_%default84559%_ '#f))
          (declare (not safe))
          (aget__% _%key84556%_ _%lst84557%_ _%default84559%_))))
    (define aget
      (lambda _g87985_
        (let ((_g87984_ (let () (declare (not safe)) (##length _g87985_))))
          (cond ((let () (declare (not safe)) (##fx= _g87984_ 2))
                 (apply (lambda (_%key84556%_ _%lst84557%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key84556%_ _%lst84557%_)))
                        _g87985_))
                ((let () (declare (not safe)) (##fx= _g87984_ 3))
                 (apply (lambda (_%key84561%_ _%lst84562%_ _%default84563%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key84561%_
                                     _%lst84562%_
                                     _%default84563%_)))
                        _g87985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87985_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84470%_ _%lst84472%_ _%default84474%_)
        (let _%lp84477%_ ((_%rest84480%_ _%lst84472%_))
          (let* ((_%rest8448284492%_ _%rest84480%_)
                 (_%else8448484500%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84474%_))
                        (_%default84474%_ _%key84470%_)
                        _%default84474%_)))
                 (_%K8448684509%_
                  (lambda (_%rest84503%_ _%v84504%_ _%k84506%_)
                    (if (eq? _%k84506%_ _%key84470%_)
                        _%v84504%_
                        (let ()
                          (declare (not safe))
                          (_%lp84477%_ _%rest84503%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8448284492%_))
                (let ((_%hd8448784512%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8448284492%_)))
                      (_%tl8448884514%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8448284492%_))))
                  (let ((_%k84517%_ _%hd8448784512%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8448884514%_))
                        (let ((_%hd8448984519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8448884514%_)))
                              (_%tl8449084521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8448884514%_))))
                          (let* ((_%v84524%_ _%hd8448984519%_)
                                 (_%rest84526%_ _%tl8449084521%_))
                            (declare (not safe))
                            (_%K8448684509%_
                             _%rest84526%_
                             _%v84524%_
                             _%k84517%_)))
                        (let () (declare (not safe)) (_%else8448484500%_)))))
                (let () (declare (not safe)) (_%else8448484500%_)))))))
    (define pgetq__0
      (lambda (_%key84531%_ _%lst84532%_)
        (let ((_%default84534%_ '#f))
          (declare (not safe))
          (pgetq__% _%key84531%_ _%lst84532%_ _%default84534%_))))
    (define pgetq
      (lambda _g87987_
        (let ((_g87986_ (let () (declare (not safe)) (##length _g87987_))))
          (cond ((let () (declare (not safe)) (##fx= _g87986_ 2))
                 (apply (lambda (_%key84531%_ _%lst84532%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key84531%_ _%lst84532%_)))
                        _g87987_))
                ((let () (declare (not safe)) (##fx= _g87986_ 3))
                 (apply (lambda (_%key84536%_ _%lst84537%_ _%default84538%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key84536%_
                             _%lst84537%_
                             _%default84538%_)))
                        _g87987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87987_))))))
    (define pgetv__%
      (lambda (_%key84399%_ _%lst84401%_ _%default84403%_)
        (let _%lp84406%_ ((_%rest84409%_ _%lst84401%_))
          (let* ((_%rest8441184421%_ _%rest84409%_)
                 (_%else8441384429%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84403%_))
                        (_%default84403%_ _%key84399%_)
                        _%default84403%_)))
                 (_%K8441584438%_
                  (lambda (_%rest84432%_ _%v84433%_ _%k84435%_)
                    (if (eqv? _%k84435%_ _%key84399%_)
                        _%v84433%_
                        (let ()
                          (declare (not safe))
                          (_%lp84406%_ _%rest84432%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8441184421%_))
                (let ((_%hd8441684441%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8441184421%_)))
                      (_%tl8441784443%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8441184421%_))))
                  (let ((_%k84446%_ _%hd8441684441%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8441784443%_))
                        (let ((_%hd8441884448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8441784443%_)))
                              (_%tl8441984450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8441784443%_))))
                          (let* ((_%v84453%_ _%hd8441884448%_)
                                 (_%rest84455%_ _%tl8441984450%_))
                            (declare (not safe))
                            (_%K8441584438%_
                             _%rest84455%_
                             _%v84453%_
                             _%k84446%_)))
                        (let () (declare (not safe)) (_%else8441384429%_)))))
                (let () (declare (not safe)) (_%else8441384429%_)))))))
    (define pgetv__0
      (lambda (_%key84460%_ _%lst84461%_)
        (let ((_%default84463%_ '#f))
          (declare (not safe))
          (pgetv__% _%key84460%_ _%lst84461%_ _%default84463%_))))
    (define pgetv
      (lambda _g87989_
        (let ((_g87988_ (let () (declare (not safe)) (##length _g87989_))))
          (cond ((let () (declare (not safe)) (##fx= _g87988_ 2))
                 (apply (lambda (_%key84460%_ _%lst84461%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key84460%_ _%lst84461%_)))
                        _g87989_))
                ((let () (declare (not safe)) (##fx= _g87988_ 3))
                 (apply (lambda (_%key84465%_ _%lst84466%_ _%default84467%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key84465%_
                             _%lst84466%_
                             _%default84467%_)))
                        _g87989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87989_))))))
    (define pget__%
      (lambda (_%key84328%_ _%lst84330%_ _%default84332%_)
        (let _%lp84335%_ ((_%rest84338%_ _%lst84330%_))
          (let* ((_%rest8434084350%_ _%rest84338%_)
                 (_%else8434284358%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84332%_))
                        (_%default84332%_ _%key84328%_)
                        _%default84332%_)))
                 (_%K8434484367%_
                  (lambda (_%rest84361%_ _%v84362%_ _%k84364%_)
                    (if (equal? _%k84364%_ _%key84328%_)
                        _%v84362%_
                        (let ()
                          (declare (not safe))
                          (_%lp84335%_ _%rest84361%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8434084350%_))
                (let ((_%hd8434584370%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8434084350%_)))
                      (_%tl8434684372%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8434084350%_))))
                  (let ((_%k84375%_ _%hd8434584370%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8434684372%_))
                        (let ((_%hd8434784377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8434684372%_)))
                              (_%tl8434884379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8434684372%_))))
                          (let* ((_%v84382%_ _%hd8434784377%_)
                                 (_%rest84384%_ _%tl8434884379%_))
                            (declare (not safe))
                            (_%K8434484367%_
                             _%rest84384%_
                             _%v84382%_
                             _%k84375%_)))
                        (let () (declare (not safe)) (_%else8434284358%_)))))
                (let () (declare (not safe)) (_%else8434284358%_)))))))
    (define pget__0
      (lambda (_%key84389%_ _%lst84390%_)
        (let ((_%default84392%_ '#f))
          (declare (not safe))
          (pget__% _%key84389%_ _%lst84390%_ _%default84392%_))))
    (define pget
      (lambda _g87991_
        (let ((_g87990_ (let () (declare (not safe)) (##length _g87991_))))
          (cond ((let () (declare (not safe)) (##fx= _g87990_ 2))
                 (apply (lambda (_%key84389%_ _%lst84390%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key84389%_ _%lst84390%_)))
                        _g87991_))
                ((let () (declare (not safe)) (##fx= _g87990_ 3))
                 (apply (lambda (_%key84394%_ _%lst84395%_ _%default84396%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key84394%_
                                     _%lst84395%_
                                     _%default84396%_)))
                        _g87991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87991_))))))
    (define find
      (lambda (_%pred84312%_ _%lst84313%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84312%_))
              (let ((_%pred84317%_ _%pred84312%_))
                (declare (not safe))
                (__find _%pred84317%_ _%lst84313%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@481.13-481.17"
                 'contract:
                 'procedure?
                 'value:
                 _%pred84312%_)
                '#!void)))))
    (define __find
      (lambda (_%pred84295%_ _%lst84296%_)
        (let ()
          (let* ((_%pred84299%_ _%pred84295%_)
                 (_%$e84308%_
                  (let ()
                    (declare (not safe))
                    (__memf _%pred84299%_ _%lst84296%_))))
            (if _%$e84308%_
                (let () (declare (not safe)) (##car _%$e84308%_))
                (let () '#f))))))
    (define memf
      (lambda (_%proc84280%_ _%lst84281%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84280%_))
              (let ((_%proc84285%_ _%proc84280%_))
                (declare (not safe))
                (__memf _%proc84285%_ _%lst84281%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@486.13-486.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84280%_)
                '#!void)))))
    (define __memf
      (lambda (_%proc84230%_ _%lst84231%_)
        (let ((_%proc84234%_ _%proc84230%_))
          (let _%lp84243%_ ((_%rest84245%_ _%lst84231%_))
            (let* ((_%rest8424684254%_ _%rest84245%_)
                   (_%else8424884262%_ (lambda () '#f))
                   (_%K8425084268%_
                    (lambda (_%tl84265%_ _%hd84266%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84234%_ _%hd84266%_))
                          _%rest84245%_
                          (let ()
                            (declare (not safe))
                            (_%lp84243%_ _%tl84265%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8424684254%_))
                  (let ((_%hd8425184271%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8424684254%_)))
                        (_%tl8425284273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8424684254%_))))
                    (let* ((_%hd84276%_ _%hd8425184271%_)
                           (_%tl84278%_ _%tl8425284273%_))
                      (declare (not safe))
                      (_%K8425084268%_ _%tl84278%_ _%hd84276%_)))
                  (let () (declare (not safe)) (_%else8424884262%_))))))))
    (define remove1
      (lambda (_%el84183%_ _%lst84185%_)
        (let _%lp84188%_ ((_%rest84191%_ _%lst84185%_) (_%r84193%_ '()))
          (let* ((_%rest8419584203%_ _%rest84191%_)
                 (_%else8419784211%_ (lambda () _%lst84185%_))
                 (_%K8419984218%_
                  (lambda (_%rest84214%_ _%hd84215%_)
                    (if (equal? _%el84183%_ _%hd84215%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84214%_ _%r84193%_))
                        (let ((__tmp87992 (cons _%hd84215%_ _%r84193%_)))
                          (declare (not safe))
                          (_%lp84188%_ _%rest84214%_ __tmp87992))))))
            (if (let () (declare (not safe)) (##pair? _%rest8419584203%_))
                (let ((_%hd8420084221%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8419584203%_)))
                      (_%tl8420184223%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8419584203%_))))
                  (let* ((_%hd84226%_ _%hd8420084221%_)
                         (_%rest84228%_ _%tl8420184223%_))
                    (declare (not safe))
                    (_%K8419984218%_ _%rest84228%_ _%hd84226%_)))
                (let () (declare (not safe)) (_%else8419784211%_)))))))
    (define remv1
      (lambda (_%el84136%_ _%lst84138%_)
        (let _%lp84141%_ ((_%rest84144%_ _%lst84138%_) (_%r84146%_ '()))
          (let* ((_%rest8414884156%_ _%rest84144%_)
                 (_%else8415084164%_ (lambda () _%lst84138%_))
                 (_%K8415284171%_
                  (lambda (_%rest84167%_ _%hd84168%_)
                    (if (eqv? _%el84136%_ _%hd84168%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84167%_ _%r84146%_))
                        (let ((__tmp87993 (cons _%hd84168%_ _%r84146%_)))
                          (declare (not safe))
                          (_%lp84141%_ _%rest84167%_ __tmp87993))))))
            (if (let () (declare (not safe)) (##pair? _%rest8414884156%_))
                (let ((_%hd8415384174%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8414884156%_)))
                      (_%tl8415484176%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8414884156%_))))
                  (let* ((_%hd84179%_ _%hd8415384174%_)
                         (_%rest84181%_ _%tl8415484176%_))
                    (declare (not safe))
                    (_%K8415284171%_ _%rest84181%_ _%hd84179%_)))
                (let () (declare (not safe)) (_%else8415084164%_)))))))
    (define remq1
      (lambda (_%el84089%_ _%lst84091%_)
        (let _%lp84094%_ ((_%rest84097%_ _%lst84091%_) (_%r84099%_ '()))
          (let* ((_%rest8410184109%_ _%rest84097%_)
                 (_%else8410384117%_ (lambda () _%lst84091%_))
                 (_%K8410584124%_
                  (lambda (_%rest84120%_ _%hd84121%_)
                    (if (eq? _%el84089%_ _%hd84121%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84120%_ _%r84099%_))
                        (let ((__tmp87994 (cons _%hd84121%_ _%r84099%_)))
                          (declare (not safe))
                          (_%lp84094%_ _%rest84120%_ __tmp87994))))))
            (if (let () (declare (not safe)) (##pair? _%rest8410184109%_))
                (let ((_%hd8410684127%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8410184109%_)))
                      (_%tl8410784129%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8410184109%_))))
                  (let* ((_%hd84132%_ _%hd8410684127%_)
                         (_%rest84134%_ _%tl8410784129%_))
                    (declare (not safe))
                    (_%K8410584124%_ _%rest84134%_ _%hd84132%_)))
                (let () (declare (not safe)) (_%else8410384117%_)))))))
    (define remf
      (lambda (_%proc84074%_ _%lst84075%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84074%_))
              (let ((_%proc84079%_ _%proc84074%_))
                (declare (not safe))
                (__remf _%proc84079%_ _%lst84075%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@508.13-508.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84074%_)
                '#!void)))))
    (define __remf
      (lambda (_%proc84023%_ _%lst84024%_)
        (let ((_%proc84027%_ _%proc84023%_))
          (let _%lp84036%_ ((_%rest84038%_ _%lst84024%_) (_%r84039%_ '()))
            (let* ((_%rest8404084048%_ _%rest84038%_)
                   (_%else8404284056%_ (lambda () _%lst84024%_))
                   (_%K8404484062%_
                    (lambda (_%rest84059%_ _%hd84060%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84027%_ _%hd84060%_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _%rest84059%_ _%r84039%_))
                          (let ((__tmp87995 (cons _%hd84060%_ _%r84039%_)))
                            (declare (not safe))
                            (_%lp84036%_ _%rest84059%_ __tmp87995))))))
              (if (let () (declare (not safe)) (##pair? _%rest8404084048%_))
                  (let ((_%hd8404584065%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8404084048%_)))
                        (_%tl8404684067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8404084048%_))))
                    (let* ((_%hd84070%_ _%hd8404584065%_)
                           (_%rest84072%_ _%tl8404684067%_))
                      (declare (not safe))
                      (_%K8404484062%_ _%rest84072%_ _%hd84070%_)))
                  (let () (declare (not safe)) (_%else8404284056%_))))))))
    (define 1+
      (lambda (_%x84009%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x84009%_))
              (let ((_%x84013%_ _%x84009%_))
                (declare (not safe))
                (__1+ _%x84013%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@517.11-517.12"
                 'contract:
                 'number?
                 'value:
                 _%x84009%_)
                '#!void)))))
    (define __1+
      (lambda (_%x83997%_) (let ((_%x84000%_ _%x83997%_)) (+ _%x84000%_ '1))))
    (define 1-
      (lambda (_%x83983%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83983%_))
              (let ((_%x83987%_ _%x83983%_))
                (declare (not safe))
                (__1- _%x83987%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@525.11-525.12"
                 'contract:
                 'number?
                 'value:
                 _%x83983%_)
                '#!void)))))
    (define __1-
      (lambda (_%x83971%_) (let ((_%x83974%_ _%x83971%_)) (- _%x83974%_ '1))))
    (define fx1+
      (lambda (_%x83957%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83957%_))
              (let ((_%x83961%_ _%x83957%_))
                (declare (not safe))
                (__fx1+ _%x83961%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@533.13-533.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83957%_)
                '#!void)))))
    (define __fx1+
      (lambda (_%x83945%_)
        (let ((_%x83948%_ _%x83945%_))
          (declare (not safe))
          (##fx+ _%x83948%_ '1))))
    (define fx1-
      (lambda (_%x83931%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83931%_))
              (let ((_%x83935%_ _%x83931%_))
                (declare (not safe))
                (__fx1- _%x83935%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@541.13-541.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83931%_)
                '#!void)))))
    (define __fx1-
      (lambda (_%x83919%_)
        (let ((_%x83922%_ _%x83919%_))
          (declare (not safe))
          (##fx- _%x83922%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83916%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83916%_))
              (let () (declare (not safe)) (##fx>= _%x83916%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83913%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83913%_))
              (let () (declare (not safe)) (##fx> _%x83913%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83910%_)
        (let () (declare (not safe)) (##fx= _%x83910%_ '0))))
    (define fx<0?
      (lambda (_%x83907%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83907%_))
              (let () (declare (not safe)) (##fx< _%x83907%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83904%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83904%_))
              (let () (declare (not safe)) (##fx<= _%x83904%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83901%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83901%_))
              (let ((__tmp87996 (uninterned-symbol? _%x83901%_)))
                (declare (not safe))
                (not __tmp87996))
              '#f))))
    (define display-as-string
      (lambda (_%x83886%_ _%port83887%_)
        (let ()
          (if (output-port? _%port83887%_)
              (let ((_%port83891%_ _%port83887%_))
                (declare (not safe))
                (__display-as-string _%x83886%_ _%port83891%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83887%_)
                '#!void)))))
    (define __display-as-string
      (lambda (_%x83841%_ _%port83842%_)
        (let ()
          (if (output-port? _%port83842%_)
              (let ((_%port83846%_ _%port83842%_))
                (if (or (let () (declare (not safe)) (string? _%x83841%_))
                        (let () (declare (not safe)) (symbol? _%x83841%_))
                        (let () (declare (not safe)) (keyword? _%x83841%_))
                        (let () (declare (not safe)) (number? _%x83841%_))
                        (let () (declare (not safe)) (char? _%x83841%_)))
                    (let () (display _%x83841%_ _%port83846%_))
                    (if (let () (declare (not safe)) (pair? _%x83841%_))
                        (let ()
                          (let ((__tmp87997 (car _%x83841%_)))
                            (declare (not safe))
                            (__display-as-string __tmp87997 _%port83846%_))
                          (let ((__tmp87998 (cdr _%x83841%_)))
                            (declare (not safe))
                            (__display-as-string __tmp87998 _%port83846%_)))
                        (if (let () (declare (not safe)) (vector? _%x83841%_))
                            (let ()
                              (vector-for-each
                               (lambda (_%g8387083872%_)
                                 (let ()
                                   (declare (not safe))
                                   (__display-as-string
                                    _%g8387083872%_
                                    _%port83846%_)))
                               _%x83841%_))
                            (if (or (let ()
                                      (declare (not safe))
                                      (null? _%x83841%_))
                                    (let ()
                                      (declare (not safe))
                                      (eq? _%x83841%_ '#!void))
                                    (let ()
                                      (declare (not safe))
                                      (eof-object? _%x83841%_))
                                    (let ()
                                      (declare (not safe))
                                      (boolean? _%x83841%_)))
                                (let () '#!void)
                                (let ()
                                  (error '"cannot convert as string"
                                         _%x83841%_)
                                  '#!void))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83842%_)
                '#!void)))))
    (define as-string__0
      (lambda (_%x83824%_)
        (if (let () (declare (not safe)) (string? _%x83824%_))
            (let () _%x83824%_)
            (if (let () (declare (not safe)) (symbol? _%x83824%_))
                (let () (symbol->string _%x83824%_))
                (if (let () (declare (not safe)) (keyword? _%x83824%_))
                    (let () (keyword->string _%x83824%_))
                    (if (let () (declare (not safe)) (number? _%x83824%_))
                        (let () (number->string _%x83824%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8383083832%_)
                             (let ()
                               (declare (not safe))
                               (__display-as-string
                                _%x83824%_
                                _%g8383083832%_)))))))))))
    (define as-string__1
      (lambda _%args83835%_
        (call-with-output-string
         '()
         (lambda (_%g8383683838%_)
           (let ()
             (declare (not safe))
             (__display-as-string _%args83835%_ _%g8383683838%_))))))
    (define as-string
      (lambda _g88000_
        (let ((_g87999_ (let () (declare (not safe)) (##length _g88000_))))
          (cond ((let () (declare (not safe)) (##fx= _g87999_ 1))
                 (apply (lambda (_%x83824%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83824%_)))
                        _g88000_))
                (#t (apply as-string__1 _g88000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g88000_))))))
    (define make-symbol__0
      (lambda (_%x83820%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83820%_))
            _%x83820%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83820%_))))))
    (define make-symbol__1
      (lambda _%args83822%_ (string->symbol (apply as-string _%args83822%_))))
    (define make-symbol
      (lambda _g88002_
        (let ((_g88001_ (let () (declare (not safe)) (##length _g88002_))))
          (cond ((let () (declare (not safe)) (##fx= _g88001_ 1))
                 (apply (lambda (_%x83820%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83820%_)))
                        _g88002_))
                (#t (apply make-symbol__1 _g88002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g88002_))))))
    (define make-keyword__0
      (lambda (_%x83816%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83816%_))
            _%x83816%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83816%_))))))
    (define make-keyword__1
      (lambda _%args83818%_ (string->keyword (apply as-string _%args83818%_))))
    (define make-keyword
      (lambda _g88004_
        (let ((_g88003_ (let () (declare (not safe)) (##length _g88004_))))
          (cond ((let () (declare (not safe)) (##fx= _g88003_ 1))
                 (apply (lambda (_%x83816%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83816%_)))
                        _g88004_))
                (#t (apply make-keyword__1 _g88004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g88004_))))))
    (define interned-keyword?
      (lambda (_%x83813%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83813%_))
              (let ((__tmp88005 (uninterned-keyword? _%x83813%_)))
                (declare (not safe))
                (not __tmp88005))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83799%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83799%_))
              (let ((_%sym83803%_ _%sym83799%_))
                (declare (not safe))
                (__symbol->keyword _%sym83803%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@612.24-612.27"
                 'contract:
                 'symbol?
                 'value:
                 _%sym83799%_)
                '#!void)))))
    (define __symbol->keyword
      (lambda (_%sym83787%_)
        (let ((_%sym83790%_ _%sym83787%_))
          (if (uninterned-symbol? _%sym83790%_)
              (let ((__tmp88006
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83790%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp88006))
              (let ((__tmp88007
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83790%_))))
                (declare (not safe))
                (##string->keyword __tmp88007))))))
    (define keyword->symbol
      (lambda (_%sym83773%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83773%_))
              (let ((_%sym83777%_ _%sym83773%_))
                (declare (not safe))
                (__keyword->symbol _%sym83777%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@618.24-618.27"
                 'contract:
                 'keyword?
                 'value:
                 _%sym83773%_)
                '#!void)))))
    (define __keyword->symbol
      (lambda (_%sym83761%_)
        (let ((_%sym83764%_ _%sym83761%_))
          (if (uninterned-keyword? _%sym83764%_)
              (let ((__tmp88008
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83764%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88008))
              (let ((__tmp88009
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83764%_))))
                (declare (not safe))
                (##string->symbol __tmp88009))))))
    (define bytes->string__%
      (lambda (_%bstr83726%_ _%enc83727%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83726%_))
              (let ((_%bstr83731%_ _%bstr83726%_))
                (if (let () (declare (not safe)) (symbol? _%enc83727%_))
                    (let ((_%enc83741%_ _%enc83727%_))
                      (declare (not safe))
                      (__bytes->string__% _%bstr83731%_ _%enc83741%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83727%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@624.22-624.26"
                 'contract:
                 'u8vector?
                 'value:
                 _%bstr83726%_)
                '#!void)))))
    (define bytes->string__0
      (lambda (_%bstr83754%_)
        (let ((_%enc83756%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83754%_ _%enc83756%_))))
    (define bytes->string
      (lambda _g88011_
        (let ((_g88010_ (let () (declare (not safe)) (##length _g88011_))))
          (cond ((let () (declare (not safe)) (##fx= _g88010_ 1))
                 (apply (lambda (_%bstr83754%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83754%_)))
                        _g88011_))
                ((let () (declare (not safe)) (##fx= _g88010_ 2))
                 (apply (lambda (_%bstr83758%_ _%enc83759%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83758%_ _%enc83759%_)))
                        _g88011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88011_))))))
    (define __bytes->string__%
      (lambda (_%bstr83685%_ _%enc83686%_)
        (let ()
          (let* ((_%bstr83689%_ _%bstr83685%_) (_%enc83697%_ _%enc83686%_))
            (if (eq? _%enc83697%_ 'UTF-8)
                (let () (declare (not safe)) (##utf8->string _%bstr83689%_))
                (let* ((_%in83706%_
                        (open-input-u8vector
                         (cons 'char-encoding:
                               (cons _%enc83697%_
                                     (cons 'init: (cons _%bstr83689%_ '()))))))
                       (_%len83708%_
                        (let ()
                          (declare (not safe))
                          (##u8vector-length _%bstr83689%_)))
                       (_%out83710%_
                        (let ()
                          (declare (not safe))
                          (##make-string _%len83708%_)))
                       (_%n83712%_
                        (read-substring
                         _%out83710%_
                         '0
                         _%len83708%_
                         _%in83706%_)))
                  (string-shrink! _%out83710%_ _%n83712%_)
                  _%out83710%_))))))
    (define __bytes->string__0
      (lambda (_%bstr83718%_)
        (let ((_%enc83720%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83718%_ _%enc83720%_))))
    (define __bytes->string
      (lambda _g88013_
        (let ((_g88012_ (let () (declare (not safe)) (##length _g88013_))))
          (cond ((let () (declare (not safe)) (##fx= _g88012_ 1))
                 (apply (lambda (_%bstr83718%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83718%_)))
                        _g88013_))
                ((let () (declare (not safe)) (##fx= _g88012_ 2))
                 (apply (lambda (_%bstr83722%_ _%enc83723%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83722%_ _%enc83723%_)))
                        _g88013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88013_))))))
    (define string->bytes__%
      (lambda (_%str83649%_ _%enc83650%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83649%_))
              (let ((_%str83654%_ _%str83649%_))
                (if (let () (declare (not safe)) (symbol? _%enc83650%_))
                    (let ((_%enc83664%_ _%enc83650%_))
                      (declare (not safe))
                      (__string->bytes__% _%str83654%_ _%enc83664%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83650%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@636.22-636.25"
                 'contract:
                 'string?
                 'value:
                 _%str83649%_)
                '#!void)))))
    (define string->bytes__0
      (lambda (_%str83677%_)
        (let ((_%enc83679%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83677%_ _%enc83679%_))))
    (define string->bytes
      (lambda _g88015_
        (let ((_g88014_ (let () (declare (not safe)) (##length _g88015_))))
          (cond ((let () (declare (not safe)) (##fx= _g88014_ 1))
                 (apply (lambda (_%str83677%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83677%_)))
                        _g88015_))
                ((let () (declare (not safe)) (##fx= _g88014_ 2))
                 (apply (lambda (_%str83681%_ _%enc83682%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83681%_ _%enc83682%_)))
                        _g88015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88015_))))))
    (define __string->bytes__%
      (lambda (_%str83617%_ _%enc83618%_)
        (let ()
          (let* ((_%str83621%_ _%str83617%_) (_%enc83629%_ _%enc83618%_))
            (if (eq? _%enc83629%_ 'UTF-8)
                (let () (declare (not safe)) (##string->utf8 _%str83621%_))
                (let ((__tmp88016
                       (let ()
                         (declare (not safe))
                         (##string-length _%str83621%_))))
                  (declare (not safe))
                  (__substring->bytes
                   _%str83621%_
                   '0
                   __tmp88016
                   _%enc83629%_)))))))
    (define __string->bytes__0
      (lambda (_%str83641%_)
        (let ((_%enc83643%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83641%_ _%enc83643%_))))
    (define __string->bytes
      (lambda _g88018_
        (let ((_g88017_ (let () (declare (not safe)) (##length _g88018_))))
          (cond ((let () (declare (not safe)) (##fx= _g88017_ 1))
                 (apply (lambda (_%str83641%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83641%_)))
                        _g88018_))
                ((let () (declare (not safe)) (##fx= _g88017_ 2))
                 (apply (lambda (_%str83645%_ _%enc83646%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83645%_ _%enc83646%_)))
                        _g88018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88018_))))))
    (define substring->bytes__%
      (lambda (_%str83565%_ _%start83566%_ _%end83567%_ _%enc83568%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83565%_))
              (let ((_%str83572%_ _%str83565%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%start83566%_))
                    (let ((_%start83582%_ _%start83566%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%end83567%_))
                          (let ((_%end83592%_ _%end83567%_))
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83572%_
                             _%start83582%_
                             _%end83592%_
                             _%enc83568%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end83567%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start83566%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@643.25-643.28"
                 'contract:
                 'string?
                 'value:
                 _%str83565%_)
                '#!void)))))
    (define substring->bytes__0
      (lambda (_%str83605%_ _%start83606%_ _%end83607%_)
        (let ((_%enc83609%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83605%_
           _%start83606%_
           _%end83607%_
           _%enc83609%_))))
    (define substring->bytes
      (lambda _g88020_
        (let ((_g88019_ (let () (declare (not safe)) (##length _g88020_))))
          (cond ((let () (declare (not safe)) (##fx= _g88019_ 3))
                 (apply (lambda (_%str83605%_ _%start83606%_ _%end83607%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83605%_
                             _%start83606%_
                             _%end83607%_)))
                        _g88020_))
                ((let () (declare (not safe)) (##fx= _g88019_ 4))
                 (apply (lambda (_%str83611%_
                                 _%start83612%_
                                 _%end83613%_
                                 _%enc83614%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83611%_
                             _%start83612%_
                             _%end83613%_
                             _%enc83614%_)))
                        _g88020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88020_))))))
    (define __substring->bytes__%
      (lambda (_%str83513%_ _%start83514%_ _%end83515%_ _%enc83516%_)
        (let ((_%str83519%_ _%str83513%_))
          (if (let ()
                (declare (not safe))
                (nonnegative-fixnum? _%start83514%_))
              (let ((_%start83528%_ _%start83514%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%end83515%_))
                    (let ((_%end83538%_ _%end83515%_))
                      (if (eq? _%enc83516%_ 'UTF-8)
                          (string->utf8
                           _%str83519%_
                           _%start83528%_
                           _%end83538%_)
                          (let ((_%out83548%_
                                 (open-output-u8vector
                                  (cons 'char-encoding:
                                        (cons _%enc83516%_ '())))))
                            (write-substring
                             _%str83519%_
                             _%start83528%_
                             _%end83538%_
                             _%out83548%_)
                            (get-output-u8vector _%out83548%_))))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%end83515%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                 'contract:
                 'nonnegative-fixnum?
                 'value:
                 _%start83514%_)
                '#!void)))))
    (define __substring->bytes__0
      (lambda (_%str83553%_ _%start83554%_ _%end83555%_)
        (let ((_%enc83557%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str83553%_
           _%start83554%_
           _%end83555%_
           _%enc83557%_))))
    (define __substring->bytes
      (lambda _g88022_
        (let ((_g88021_ (let () (declare (not safe)) (##length _g88022_))))
          (cond ((let () (declare (not safe)) (##fx= _g88021_ 3))
                 (apply (lambda (_%str83553%_ _%start83554%_ _%end83555%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str83553%_
                             _%start83554%_
                             _%end83555%_)))
                        _g88022_))
                ((let () (declare (not safe)) (##fx= _g88021_ 4))
                 (apply (lambda (_%str83559%_
                                 _%start83560%_
                                 _%end83561%_
                                 _%enc83562%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83559%_
                             _%start83560%_
                             _%end83561%_
                             _%enc83562%_)))
                        _g88022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88022_))))))
    (define string-empty?
      (lambda (_%str83498%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83498%_))
              (let ((_%str83502%_ _%str83498%_))
                (declare (not safe))
                (__string-empty? _%str83502%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@654.22-654.25"
                 'contract:
                 'string?
                 'value:
                 _%str83498%_)
                '#!void)))))
    (define __string-empty?
      (lambda (_%str83486%_)
        (let ()
          (let* ((_%str83489%_ _%str83486%_)
                 (__tmp88023
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83489%_))))
            (declare (not safe))
            (##fxzero? __tmp88023)))))
    (define string-index__%
      (lambda (_%str83438%_ _%char83439%_ _%start83440%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83438%_))
              (let ((_%str83444%_ _%str83438%_))
                (if (let () (declare (not safe)) (char? _%char83439%_))
                    (let ((_%char83454%_ _%char83439%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%start83440%_))
                          (let ((_%start83464%_ _%start83440%_))
                            (declare (not safe))
                            (__string-index__%
                             _%str83444%_
                             _%char83454%_
                             _%start83464%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start83440%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char83439%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@658.21-658.24"
                 'contract:
                 'string?
                 'value:
                 _%str83438%_)
                '#!void)))))
    (define string-index__0
      (lambda (_%str83477%_ _%char83478%_)
        (let ((_%start83480%_ '0))
          (declare (not safe))
          (string-index__% _%str83477%_ _%char83478%_ _%start83480%_))))
    (define string-index
      (lambda _g88025_
        (let ((_g88024_ (let () (declare (not safe)) (##length _g88025_))))
          (cond ((let () (declare (not safe)) (##fx= _g88024_ 2))
                 (apply (lambda (_%str83477%_ _%char83478%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str83477%_ _%char83478%_)))
                        _g88025_))
                ((let () (declare (not safe)) (##fx= _g88024_ 3))
                 (apply (lambda (_%str83482%_ _%char83483%_ _%start83484%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str83482%_
                             _%char83483%_
                             _%start83484%_)))
                        _g88025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88025_))))))
    (define __string-index__%
      (lambda (_%str83375%_ _%char83376%_ _%start83377%_)
        (let ()
          (let* ((_%str83380%_ _%str83375%_) (_%char83388%_ _%char83376%_))
            (if (let ()
                  (declare (not safe))
                  (nonnegative-fixnum? _%start83377%_))
                (let ()
                  (let* ((_%start83397%_ _%start83377%_)
                         (_%len83407%_
                          (let ()
                            (declare (not safe))
                            (##string-length _%str83380%_))))
                    (let _%lp83409%_ ((_%k83411%_ _%start83397%_))
                      (let ((_%k83413%_ _%k83411%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k83413%_ _%len83407%_))
                            (if (eq? _%char83388%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str83380%_ _%k83413%_)))
                                _%k83413%_
                                (let ((__tmp88026
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83413%_ '1))))
                                  (declare (not safe))
                                  (_%lp83409%_ __tmp88026)))
                            '#f)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                   'contract:
                   'nonnegative-fixnum?
                   'value:
                   _%start83377%_)
                  '#!void))))))
    (define __string-index__0
      (lambda (_%str83428%_ _%char83429%_)
        (let ((_%start83431%_ '0))
          (declare (not safe))
          (__string-index__% _%str83428%_ _%char83429%_ _%start83431%_))))
    (define __string-index
      (lambda _g88028_
        (let ((_g88027_ (let () (declare (not safe)) (##length _g88028_))))
          (cond ((let () (declare (not safe)) (##fx= _g88027_ 2))
                 (apply (lambda (_%str83428%_ _%char83429%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str83428%_ _%char83429%_)))
                        _g88028_))
                ((let () (declare (not safe)) (##fx= _g88027_ 3))
                 (apply (lambda (_%str83433%_ _%char83434%_ _%start83435%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str83433%_
                             _%char83434%_
                             _%start83435%_)))
                        _g88028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88028_))))))
    (define string-rindex__%
      (lambda (_%str83336%_ _%char83337%_ _%start83338%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83336%_))
              (let ((_%str83342%_ _%str83336%_))
                (if (let () (declare (not safe)) (char? _%char83337%_))
                    (let ((_%char83352%_ _%char83337%_))
                      (declare (not safe))
                      (__string-rindex__%
                       _%str83342%_
                       _%char83352%_
                       _%start83338%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char83337%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@669.22-669.25"
                 'contract:
                 'string?
                 'value:
                 _%str83336%_)
                '#!void)))))
    (define string-rindex__0
      (lambda (_%str83365%_ _%char83366%_)
        (let ((_%start83368%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str83365%_ _%char83366%_ _%start83368%_))))
    (define string-rindex
      (lambda _g88030_
        (let ((_g88029_ (let () (declare (not safe)) (##length _g88030_))))
          (cond ((let () (declare (not safe)) (##fx= _g88029_ 2))
                 (apply (lambda (_%str83365%_ _%char83366%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str83365%_ _%char83366%_)))
                        _g88030_))
                ((let () (declare (not safe)) (##fx= _g88029_ 3))
                 (apply (lambda (_%str83370%_ _%char83371%_ _%start83372%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str83370%_
                             _%char83371%_
                             _%start83372%_)))
                        _g88030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88030_))))))
    (define __string-rindex__%
      (lambda (_%str83278%_ _%char83279%_ _%start83280%_)
        (let ()
          (let* ((_%str83283%_ _%str83278%_) (_%char83291%_ _%char83279%_))
            (let* ((_%len83300%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str83283%_)))
                   (_%start83302%_
                    (if (let () (declare (not safe)) (fixnum? _%start83280%_))
                        _%start83280%_
                        (let ()
                          (declare (not safe))
                          (##fx- _%len83300%_ '1)))))
              (let _%lp83305%_ ((_%k83307%_ _%start83302%_))
                (let ((_%k83309%_ _%k83307%_))
                  (if (let () (declare (not safe)) (##fx>= _%k83309%_ '0))
                      (if (eq? _%char83291%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str83283%_ _%k83309%_)))
                          _%k83309%_
                          (let ((__tmp88031
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%k83309%_ '1))))
                            (declare (not safe))
                            (_%lp83305%_ __tmp88031)))
                      '#f))))))))
    (define __string-rindex__0
      (lambda (_%str83326%_ _%char83327%_)
        (let ((_%start83329%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str83326%_ _%char83327%_ _%start83329%_))))
    (define __string-rindex
      (lambda _g88033_
        (let ((_g88032_ (let () (declare (not safe)) (##length _g88033_))))
          (cond ((let () (declare (not safe)) (##fx= _g88032_ 2))
                 (apply (lambda (_%str83326%_ _%char83327%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str83326%_ _%char83327%_)))
                        _g88033_))
                ((let () (declare (not safe)) (##fx= _g88032_ 3))
                 (apply (lambda (_%str83331%_ _%char83332%_ _%start83333%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str83331%_
                             _%char83332%_
                             _%start83333%_)))
                        _g88033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88033_))))))
    (define string-split
      (lambda (_%str83252%_ _%char83253%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83252%_))
              (let ((_%str83257%_ _%str83252%_))
                (if (let () (declare (not safe)) (char? _%char83253%_))
                    (let ((_%char83267%_ _%char83253%_))
                      (declare (not safe))
                      (__string-split _%str83257%_ _%char83267%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char83253%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@681.21-681.24"
                 'contract:
                 'string?
                 'value:
                 _%str83252%_)
                '#!void)))))
    (define __string-split
      (lambda (_%str83193%_ _%char83194%_)
        (let ((_%str83197%_ _%str83193%_))
          (let* ((_%char83205%_ _%char83194%_)
                 (_%len83214%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83197%_))))
            (let _%lp83216%_ ((_%start83218%_ '0) (_%r83219%_ '()))
              (let ()
                (let* ((_%start83222%_ _%start83218%_)
                       (_%$e83235%_
                        (let ()
                          (declare (not safe))
                          (__string-index
                           _%str83197%_
                           _%char83205%_
                           _%start83222%_))))
                  (if _%$e83235%_
                      ((lambda (_%end83238%_)
                         (let ((_%end83240%_ _%end83238%_))
                           (let ((__tmp88035
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%end83240%_ '1)))
                                 (__tmp88034
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _%str83197%_
                                           _%start83222%_
                                           _%end83240%_))
                                        _%r83219%_)))
                             (declare (not safe))
                             (_%lp83216%_ __tmp88035 __tmp88034))))
                       _%$e83235%_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _%start83222%_ _%len83214%_))
                          (let ((__tmp88036
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _%str83197%_
                                          _%start83222%_
                                          _%len83214%_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp88036 _%r83219%_))
                          (let () (reverse! _%r83219%_)))))))))))
    (define string-join
      (lambda (_%strs83043%_ _%join83044%_)
        (let ()
          (letrec ((_%join-length83047%_
                    (lambda (_%strs83131%_ _%jlen83132%_)
                      (let _%lp83134%_ ((_%rest83136%_ _%strs83131%_)
                                        (_%len83137%_ '0))
                        (let ((_%len83139%_ _%len83137%_))
                          (let* ((_%rest8314783155%_ _%rest83136%_)
                                 (_%else8314983163%_ (lambda () '0))
                                 (_%K8315183181%_
                                  (lambda (_%rest83166%_ _%hd83167%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd83167%_))
                                        (let ((_%hd83169%_ _%hd83167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest83166%_))
                                              (let ((__tmp88037
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd83169%_))
                                                          _%jlen83132%_
                                                          _%len83139%_)))
                                                (declare (not safe))
                                                (_%lp83134%_
                                                 _%rest83166%_
                                                 __tmp88037))
                                              (let ((__tmp88038
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd83169%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp88038
                                                       _%len83139%_))))
                                        (error '"expected string"
                                               _%hd83167%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8314783155%_))
                                (let ((_%hd8315283184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8314783155%_)))
                                      (_%tl8315383186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8314783155%_))))
                                  (let* ((_%hd83189%_ _%hd8315283184%_)
                                         (_%rest83191%_ _%tl8315383186%_))
                                    (declare (not safe))
                                    (_%K8315183181%_
                                     _%rest83191%_
                                     _%hd83189%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8314983163%_)))))))))
            (let* ((_%join83052%_
                    (if (let () (declare (not safe)) (char? _%join83044%_))
                        (let () (declare (not safe)) (##string _%join83044%_))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join83044%_))
                            (let () _%join83044%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join83044%_)))))
                   (_%jlen83054%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join83052%_)))
                   (_%olen83056%_
                    (let ()
                      (declare (not safe))
                      (_%join-length83047%_ _%strs83043%_ _%jlen83054%_)))
                   (_%ostr83058%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen83056%_))))
              (let _%lp83061%_ ((_%rest83063%_ _%strs83043%_) (_%k83064%_ '0))
                (let ((_%k83067%_ _%k83064%_))
                  (let* ((_%rest8308383091%_ _%rest83063%_)
                         (_%else8308583099%_ (lambda () '""))
                         (_%K8308783119%_
                          (lambda (_%rest83102%_ _%hd83103%_)
                            (let* ((_%hd83105%_ _%hd83103%_)
                                   (_%hdlen83117%_
                                    (let ()
                                      (declare (not safe))
                                      (##string-length _%hd83105%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%rest83102%_))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83105%_
                                       '0
                                       _%hdlen83117%_
                                       _%ostr83058%_
                                       _%k83067%_))
                                    (let ((__tmp88039
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83067%_
                                                    _%hdlen83117%_))))
                                      (declare (not safe))
                                      (##substring-move!
                                       _%join83052%_
                                       '0
                                       _%jlen83054%_
                                       _%ostr83058%_
                                       __tmp88039))
                                    (let ((__tmp88040
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83067%_
                                                    _%hdlen83117%_
                                                    _%jlen83054%_))))
                                      (declare (not safe))
                                      (_%lp83061%_ _%rest83102%_ __tmp88040)))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83105%_
                                       '0
                                       _%hdlen83117%_
                                       _%ostr83058%_
                                       _%k83067%_))
                                    _%ostr83058%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8308383091%_))
                        (let ((_%hd8308883122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8308383091%_)))
                              (_%tl8308983124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8308383091%_))))
                          (let* ((_%hd83127%_ _%hd8308883122%_)
                                 (_%rest83129%_ _%tl8308983124%_))
                            (declare (not safe))
                            (_%K8308783119%_ _%rest83129%_ _%hd83127%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8308583099%_)))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82969%_ _%port82970%_ _%start82971%_ _%end82972%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82969%_))
              (let ((_%bytes82976%_ _%bytes82969%_))
                (if (input-port? _%port82970%_)
                    (let ((_%port82986%_ _%port82970%_))
                      (if ((lambda (_%o82995%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82995%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82995%_ '0))
                                  (let ((__tmp88041
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82976%_))))
                                    (declare (not safe))
                                    (##fx< _%o82995%_ __tmp88041))))
                           _%start82971%_)
                          (let ((_%start82999%_ _%start82971%_))
                            (if ((lambda (_%o83008%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o83008%_))
                                        (fx<= _%start82999%_
                                              _%o83008%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82976%_)))))
                                 _%end82972%_)
                                (let ((_%end83012%_ _%end82972%_))
                                  (declare (not safe))
                                  (__read-u8vector__%
                                   _%bytes82976%_
                                   _%port82986%_
                                   _%start82999%_
                                   _%end83012%_))
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
                                   _%end82972%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82971%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82970%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@744.22-744.27"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82969%_)
                '#!void)))))
    (define read-u8vector__0
      (lambda (_%bytes83025%_ _%port83026%_)
        (let* ((_%start83028%_ '0)
               (_%end83030%_ (u8vector-length _%bytes83025%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83025%_
           _%port83026%_
           _%start83028%_
           _%end83030%_))))
    (define read-u8vector__1
      (lambda (_%bytes83032%_ _%port83033%_ _%start83034%_)
        (let ((_%end83036%_ (u8vector-length _%bytes83032%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83032%_
           _%port83033%_
           _%start83034%_
           _%end83036%_))))
    (define read-u8vector
      (lambda _g88043_
        (let ((_g88042_ (let () (declare (not safe)) (##length _g88043_))))
          (cond ((let () (declare (not safe)) (##fx= _g88042_ 2))
                 (apply (lambda (_%bytes83025%_ _%port83026%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes83025%_ _%port83026%_)))
                        _g88043_))
                ((let () (declare (not safe)) (##fx= _g88042_ 3))
                 (apply (lambda (_%bytes83032%_ _%port83033%_ _%start83034%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes83032%_
                             _%port83033%_
                             _%start83034%_)))
                        _g88043_))
                ((let () (declare (not safe)) (##fx= _g88042_ 4))
                 (apply (lambda (_%bytes83038%_
                                 _%port83039%_
                                 _%start83040%_
                                 _%end83041%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes83038%_
                             _%port83039%_
                             _%start83040%_
                             _%end83041%_)))
                        _g88043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88043_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82896%_ _%port82897%_ _%start82898%_ _%end82899%_)
        (let ((_%bytes82902%_ _%bytes82896%_))
          (if (input-port? _%port82897%_)
              (let ((_%port82911%_ _%port82897%_))
                (if ((lambda (_%o82920%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82920%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82920%_ '0))
                            (let ((__tmp88044
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82902%_))))
                              (declare (not safe))
                              (##fx< _%o82920%_ __tmp88044))))
                     _%start82898%_)
                    (let ((_%start82924%_ _%start82898%_))
                      (if ((lambda (_%o82933%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82933%_))
                                  (fx<= _%start82924%_
                                        _%o82933%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82902%_)))))
                           _%end82899%_)
                          (let ((_%end82937%_ _%end82899%_))
                            (declare (not safe))
                            (##read-subu8vector
                             _%bytes82902%_
                             _%start82924%_
                             _%end82937%_
                             _%port82911%_))
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
                             _%end82899%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82898%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                 'contract:
                 'input-port?
                 'value:
                 _%port82897%_)
                '#!void)))))
    (define __read-u8vector__0
      (lambda (_%bytes82950%_ _%port82951%_)
        (let* ((_%start82953%_ '0)
               (_%end82955%_ (u8vector-length _%bytes82950%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82950%_
           _%port82951%_
           _%start82953%_
           _%end82955%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82957%_ _%port82958%_ _%start82959%_)
        (let ((_%end82961%_ (u8vector-length _%bytes82957%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82957%_
           _%port82958%_
           _%start82959%_
           _%end82961%_))))
    (define __read-u8vector
      (lambda _g88046_
        (let ((_g88045_ (let () (declare (not safe)) (##length _g88046_))))
          (cond ((let () (declare (not safe)) (##fx= _g88045_ 2))
                 (apply (lambda (_%bytes82950%_ _%port82951%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82950%_ _%port82951%_)))
                        _g88046_))
                ((let () (declare (not safe)) (##fx= _g88045_ 3))
                 (apply (lambda (_%bytes82957%_ _%port82958%_ _%start82959%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82957%_
                             _%port82958%_
                             _%start82959%_)))
                        _g88046_))
                ((let () (declare (not safe)) (##fx= _g88045_ 4))
                 (apply (lambda (_%bytes82963%_
                                 _%port82964%_
                                 _%start82965%_
                                 _%end82966%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82963%_
                             _%port82964%_
                             _%start82965%_
                             _%end82966%_)))
                        _g88046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88046_))))))
    (define write-u8vector__%
      (lambda (_%bytes82821%_ _%port82822%_ _%start82823%_ _%end82824%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82821%_))
              (let ((_%bytes82828%_ _%bytes82821%_))
                (if (output-port? _%port82822%_)
                    (let ((_%port82838%_ _%port82822%_))
                      (if ((lambda (_%o82847%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82847%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82847%_ '0))
                                  (let ((__tmp88047
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82828%_))))
                                    (declare (not safe))
                                    (##fx< _%o82847%_ __tmp88047))))
                           _%start82823%_)
                          (let ((_%start82851%_ _%start82823%_))
                            (if ((lambda (_%o82860%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82860%_))
                                        (fx<= _%start82851%_
                                              _%o82860%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82828%_)))))
                                 _%end82824%_)
                                (let ((_%end82864%_ _%end82824%_))
                                  (declare (not safe))
                                  (__write-u8vector__%
                                   _%bytes82828%_
                                   _%port82838%_
                                   _%start82851%_
                                   _%end82864%_))
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
                                   _%end82824%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82823%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82822%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@754.23-754.28"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82821%_)
                '#!void)))))
    (define write-u8vector__0
      (lambda (_%bytes82877%_ _%port82878%_)
        (let* ((_%start82880%_ '0)
               (_%end82882%_ (u8vector-length _%bytes82877%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82877%_
           _%port82878%_
           _%start82880%_
           _%end82882%_))))
    (define write-u8vector__1
      (lambda (_%bytes82884%_ _%port82885%_ _%start82886%_)
        (let ((_%end82888%_ (u8vector-length _%bytes82884%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82884%_
           _%port82885%_
           _%start82886%_
           _%end82888%_))))
    (define write-u8vector
      (lambda _g88049_
        (let ((_g88048_ (let () (declare (not safe)) (##length _g88049_))))
          (cond ((let () (declare (not safe)) (##fx= _g88048_ 2))
                 (apply (lambda (_%bytes82877%_ _%port82878%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82877%_ _%port82878%_)))
                        _g88049_))
                ((let () (declare (not safe)) (##fx= _g88048_ 3))
                 (apply (lambda (_%bytes82884%_ _%port82885%_ _%start82886%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82884%_
                             _%port82885%_
                             _%start82886%_)))
                        _g88049_))
                ((let () (declare (not safe)) (##fx= _g88048_ 4))
                 (apply (lambda (_%bytes82890%_
                                 _%port82891%_
                                 _%start82892%_
                                 _%end82893%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82890%_
                             _%port82891%_
                             _%start82892%_
                             _%end82893%_)))
                        _g88049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88049_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82748%_ _%port82749%_ _%start82750%_ _%end82751%_)
        (let ((_%bytes82754%_ _%bytes82748%_))
          (if (output-port? _%port82749%_)
              (let ((_%port82763%_ _%port82749%_))
                (if ((lambda (_%o82772%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82772%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82772%_ '0))
                            (let ((__tmp88050
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82754%_))))
                              (declare (not safe))
                              (##fx< _%o82772%_ __tmp88050))))
                     _%start82750%_)
                    (let ((_%start82776%_ _%start82750%_))
                      (if ((lambda (_%o82785%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82785%_))
                                  (fx<= _%start82776%_
                                        _%o82785%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82754%_)))))
                           _%end82751%_)
                          (let ((_%end82789%_ _%end82751%_))
                            (declare (not safe))
                            (##write-subu8vector
                             _%bytes82754%_
                             _%start82776%_
                             _%end82789%_
                             _%port82763%_))
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
                             _%end82751%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82750%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                 'contract:
                 'output-port?
                 'value:
                 _%port82749%_)
                '#!void)))))
    (define __write-u8vector__0
      (lambda (_%bytes82802%_ _%port82803%_)
        (let* ((_%start82805%_ '0)
               (_%end82807%_ (u8vector-length _%bytes82802%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82802%_
           _%port82803%_
           _%start82805%_
           _%end82807%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82809%_ _%port82810%_ _%start82811%_)
        (let ((_%end82813%_ (u8vector-length _%bytes82809%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82809%_
           _%port82810%_
           _%start82811%_
           _%end82813%_))))
    (define __write-u8vector
      (lambda _g88052_
        (let ((_g88051_ (let () (declare (not safe)) (##length _g88052_))))
          (cond ((let () (declare (not safe)) (##fx= _g88051_ 2))
                 (apply (lambda (_%bytes82802%_ _%port82803%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82802%_
                             _%port82803%_)))
                        _g88052_))
                ((let () (declare (not safe)) (##fx= _g88051_ 3))
                 (apply (lambda (_%bytes82809%_ _%port82810%_ _%start82811%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82809%_
                             _%port82810%_
                             _%start82811%_)))
                        _g88052_))
                ((let () (declare (not safe)) (##fx= _g88051_ 4))
                 (apply (lambda (_%bytes82815%_
                                 _%port82816%_
                                 _%start82817%_
                                 _%end82818%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82815%_
                             _%port82816%_
                             _%start82817%_
                             _%end82818%_)))
                        _g88052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88052_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82716%_
               _%dbg-exprs82717%_
               _%dbg-thunks82718%_
               _%expr82719%_
               _%thunk82720%_)
        (letrec ((_%o82722%_ (current-output-port))
                 (_%e82723%_ (current-error-port))
                 (_%p82724%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82725%_
                  (lambda ()
                    (force-output _%o82722%_)
                    (force-output _%e82723%_)))
                 (_%d82726%_
                  (lambda (_%x82733%_) (display _%x82733%_ _%e82723%_)))
                 (_%w82727%_
                  (lambda (_%x82735%_) (_%p82724%_ _%x82735%_ _%e82723%_)))
                 (_%n82728%_ (lambda () (newline _%e82723%_)))
                 (_%v82729%_
                  (lambda (_%l82738%_)
                    (for-each
                     (lambda (_%x82740%_)
                       (let () (declare (not safe)) (_%d82726%_ '" "))
                       (let () (declare (not safe)) (_%w82727%_ _%x82740%_)))
                     _%l82738%_)
                    (let () (declare (not safe)) (_%n82728%_))))
                 (_%x82730%_
                  (lambda (_%expr82742%_ _%thunk82743%_)
                    (let () (declare (not safe)) (_%f82725%_))
                    (let () (declare (not safe)) (_%d82726%_ '"  "))
                    (let () (declare (not safe)) (_%w82727%_ _%expr82742%_))
                    (let () (declare (not safe)) (_%d82726%_ '" =>"))
                    (call-with-values
                     _%thunk82743%_
                     (lambda _%x82745%_
                       (let () (declare (not safe)) (_%v82729%_ _%x82745%_))
                       (let () (declare (not safe)) (_%f82725%_))
                       (apply values _%x82745%_))))))
          (if _%tag82716%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82716%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82725%_))
                      (let () (declare (not safe)) (_%d82726%_ _%tag82716%_))
                      (let () (declare (not safe)) (_%n82728%_))))
                (for-each _%x82730%_ _%dbg-exprs82717%_ _%dbg-thunks82718%_)
                (if _%thunk82720%_
                    (let ()
                      (declare (not safe))
                      (_%x82730%_ _%expr82719%_ _%thunk82720%_))
                    '#!void))
              (if _%thunk82720%_ (_%thunk82720%_) '#!void)))))))
