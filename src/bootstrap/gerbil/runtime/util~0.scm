(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712507487)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86134%_
        (let () (for-each display _%args86134%_) (newline))))
    (define display*
      (lambda _%args86131%_ (let () (for-each display _%args86131%_))))
    (define file-newer?
      (lambda (_%file186106%_ _%file286107%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file186106%_))
              (let ((_%file186111%_ _%file186106%_))
                (if (let () (declare (not safe)) (string? _%file286107%_))
                    (let ((_%file286121%_ _%file286107%_))
                      (declare (not safe))
                      (__file-newer? _%file186111%_ _%file286121%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                       'contract:
                       'string?
                       'value:
                       _%file286107%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@61.20-61.25"
                 'contract:
                 'string?
                 'value:
                 _%file186106%_)
                '#!void)))))
    (define __file-newer?
      (lambda (_%file186054%_ _%file286055%_)
        (let ()
          (let* ((_%file186058%_ _%file186054%_)
                 (_%file286066%_ _%file286055%_))
            (letrec ((_%modification-time86075%_
                      (lambda (_%file86094%_)
                        (let ((_%file86097%_ _%file86094%_))
                          (declare (not safe))
                          (_%__modification-time86076%_ _%file86097%_))))
                     (_%__modification-time86076%_
                      (lambda (_%file86078%_)
                        (let ()
                          (let* ((_%file86081%_ _%file86078%_)
                                 (__tmp87875
                                  (let ((__tmp87876
                                         (let ()
                                           (declare (not safe))
                                           (##file-info _%file86081%_ '#t))))
                                    (declare (not safe))
                                    (##file-info-last-modification-time
                                     __tmp87876))))
                            (declare (not safe))
                            (##time->seconds __tmp87875))))))
              (let ((__tmp87878
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86076%_ _%file186058%_)))
                    (__tmp87877
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86076%_ _%file286066%_))))
                (declare (not safe))
                (##fl> __tmp87878 __tmp87877)))))))
    (define create-directory*__%
      (lambda (_%dir86019%_ _%perms86020%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir86019%_))
              (let ((_%dir86024%_ _%dir86019%_))
                (if (let () (declare (not safe)) (fixnum? _%perms86020%_))
                    (let ((_%perms86034%_ _%perms86020%_))
                      (declare (not safe))
                      (__create-directory*__% _%dir86024%_ _%perms86034%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms86020%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@72.26-72.29"
                 'contract:
                 'string?
                 'value:
                 _%dir86019%_)
                '#!void)))))
    (define create-directory*__0
      (lambda (_%dir86047%_)
        (let ((_%perms86049%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir86047%_ _%perms86049%_))))
    (define create-directory*
      (lambda _g87880_
        (let ((_g87879_ (let () (declare (not safe)) (##length _g87880_))))
          (cond ((let () (declare (not safe)) (##fx= _g87879_ 1))
                 (apply (lambda (_%dir86047%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir86047%_)))
                        _g87880_))
                ((let () (declare (not safe)) (##fx= _g87879_ 2))
                 (apply (lambda (_%dir86051%_ _%perms86052%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir86051%_
                             _%perms86052%_)))
                        _g87880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87880_))))))
    (define __create-directory*__%
      (lambda (_%dir85943%_ _%perms85944%_)
        (let ()
          (let* ((_%dir85947%_ _%dir85943%_) (_%perms85955%_ _%perms85944%_))
            (letrec ((_%create185964%_
                      (lambda (_%path85996%_)
                        (let ((_%path85999%_ _%path85996%_))
                          (declare (not safe))
                          (_%__create185965%_ _%path85999%_))))
                     (_%__create185965%_
                      (lambda (_%path85977%_)
                        (let ((_%path85980%_ _%path85977%_))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%path85980%_))
                              (let ()
                                (if (eq? (file-type _%path85980%_) 'directory)
                                    '#!void
                                    (error '"Path component is not a directory"
                                           _%path85980%_)))
                              (if _%perms85955%_
                                  (let ()
                                    (create-directory
                                     (cons 'path:
                                           (cons _%path85980%_
                                                 (cons 'permissions:
                                                       (cons _%perms85955%_
                                                             '()))))))
                                  (let ()
                                    (create-directory _%path85980%_))))))))
              (if (let () (declare (not safe)) (##file-exists? _%dir85947%_))
                  '#!void
                  (let _%lp85967%_ ((_%start85969%_ '0))
                    (let ((_%$e85971%_
                           (let ()
                             (declare (not safe))
                             (__string-index
                              _%dir85947%_
                              '#\/
                              _%start85969%_))))
                      (if _%$e85971%_
                          ((lambda (_%x85974%_)
                             (if (let ()
                                   (declare (not safe))
                                   (##fx> _%x85974%_ '0))
                                 (let ((__tmp87881
                                        (substring
                                         _%dir85947%_
                                         '0
                                         _%x85974%_)))
                                   (declare (not safe))
                                   (_%__create185965%_ __tmp87881))
                                 '#!void)
                             (let ((__tmp87882
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%x85974%_ '1))))
                               (declare (not safe))
                               (_%lp85967%_ __tmp87882)))
                           _%$e85971%_)
                          (let ()
                            (declare (not safe))
                            (_%__create185965%_ _%dir85947%_))))))
              '#!void)))))
    (define __create-directory*__0
      (lambda (_%dir86011%_)
        (let ((_%perms86013%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir86011%_ _%perms86013%_))))
    (define __create-directory*
      (lambda _g87884_
        (let ((_g87883_ (let () (declare (not safe)) (##length _g87884_))))
          (cond ((let () (declare (not safe)) (##fx= _g87883_ 1))
                 (apply (lambda (_%dir86011%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir86011%_)))
                        _g87884_))
                ((let () (declare (not safe)) (##fx= _g87883_ 2))
                 (apply (lambda (_%dir86015%_ _%perms86016%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir86015%_
                             _%perms86016%_)))
                        _g87884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87884_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore85939%_ (let () '#t)))
    (define true? (lambda (_%obj85936%_) (let () (eq? _%obj85936%_ '#t))))
    (define false (lambda _%ignore85933%_ (let () '#f)))
    (define void (lambda _%ignore85930%_ (let () '#!void)))
    (define void? (lambda (_%obj85927%_) (let () (eq? _%obj85927%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj85924%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj85924%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj85921%_) (let () (eq? _%obj85921%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj85918%_) (let () (eq? _%obj85918%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85915%_) (let () (eq? _%obj85915%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85910%_)
        (let ()
          (let* ((_%t85913%_
                  (let () (declare (not safe)) (##type _%obj85910%_)))
                 (__tmp87885
                  (let () (declare (not safe)) (##fxand _%t85913%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87885)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85907%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85907%_))
              (let () (declare (not safe)) (##fx>= _%obj85907%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85901%_)
        (let ((_%$e85904%_ (let () (declare (not safe)) (pair? _%obj85901%_))))
          (if _%$e85904%_
              _%$e85904%_
              (let () (declare (not safe)) (null? _%obj85901%_))))))
    (define values-count
      (lambda (_%obj85898%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85898%_))
              (let () (declare (not safe)) (##vector-length _%obj85898%_))
              '1))))
    (define values-ref
      (lambda (_%obj85883%_ _%k85884%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85884%_))
              (let ((_%k85888%_ _%k85884%_))
                (declare (not safe))
                (__values-ref _%obj85883%_ _%k85888%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@198.23-198.24"
                 'contract:
                 'fixnum?
                 'value:
                 _%k85884%_)
                '#!void)))))
    (define __values-ref
      (lambda (_%obj85870%_ _%k85871%_)
        (let ((_%k85874%_ _%k85871%_))
          (if (let () (declare (not safe)) (##values? _%obj85870%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85870%_ _%k85874%_))
              _%obj85870%_))))
    (define values->list
      (lambda (_%obj85867%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85867%_))
              (let () (declare (not safe)) (##vector->list _%obj85867%_))
              (list _%obj85867%_)))))
    (define foldl1
      (lambda (_%f85851%_ _%iv85852%_ _%lst85853%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85851%_))
              (let ((_%f85857%_ _%f85851%_))
                (declare (not safe))
                (__foldl1 _%f85857%_ _%iv85852%_ _%lst85853%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@221.15-221.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85851%_)
                '#!void)))))
    (define __foldl1
      (lambda (_%f85799%_ _%iv85800%_ _%lst85801%_)
        (let ((_%f85804%_ _%f85799%_))
          (let _%lp85813%_ ((_%rest85815%_ _%lst85801%_)
                            (_%r85816%_ _%iv85800%_))
            (let* ((_%rest8581785825%_ _%rest85815%_)
                   (_%else8581985833%_ (lambda () _%r85816%_))
                   (_%K8582185839%_
                    (lambda (_%rest85836%_ _%x85837%_)
                      (let ((__tmp87886
                             (let ()
                               (declare (not safe))
                               (_%f85804%_ _%x85837%_ _%r85816%_))))
                        (declare (not safe))
                        (_%lp85813%_ _%rest85836%_ __tmp87886)))))
              (if (let () (declare (not safe)) (##pair? _%rest8581785825%_))
                  (let ((_%hd8582285842%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8581785825%_)))
                        (_%tl8582385844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8581785825%_))))
                    (let* ((_%x85847%_ _%hd8582285842%_)
                           (_%rest85849%_ _%tl8582385844%_))
                      (declare (not safe))
                      (_%K8582185839%_ _%rest85849%_ _%x85847%_)))
                  (let () (declare (not safe)) (_%else8581985833%_))))))))
    (define foldl2
      (lambda (_%f85782%_ _%iv85783%_ _%lst185784%_ _%lst285785%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85782%_))
              (let ((_%f85789%_ _%f85782%_))
                (declare (not safe))
                (__foldl2 _%f85789%_ _%iv85783%_ _%lst185784%_ _%lst285785%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@228.15-228.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85782%_)
                '#!void)))))
    (define __foldl2
      (lambda (_%f85695%_ _%iv85696%_ _%lst185697%_ _%lst285698%_)
        (let ((_%f85701%_ _%f85695%_))
          (let _%lp85710%_ ((_%rest185712%_ _%lst185697%_)
                            (_%rest285713%_ _%lst285698%_)
                            (_%r85714%_ _%iv85696%_))
            (let* ((_%rest18571585723%_ _%rest185712%_)
                   (_%else8571785731%_ (lambda () _%r85714%_))
                   (_%K8571985770%_
                    (lambda (_%rest185734%_ _%x185735%_)
                      (let* ((_%rest28573685744%_ _%rest285713%_)
                             (_%else8573885752%_ (lambda () _%r85714%_))
                             (_%K8574085758%_
                              (lambda (_%rest285755%_ _%x285756%_)
                                (let ((__tmp87887
                                       (let ()
                                         (declare (not safe))
                                         (_%f85701%_
                                          _%x185735%_
                                          _%x285756%_
                                          _%r85714%_))))
                                  (declare (not safe))
                                  (_%lp85710%_
                                   _%rest185734%_
                                   _%rest285755%_
                                   __tmp87887)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28573685744%_))
                            (let ((_%hd8574185761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28573685744%_)))
                                  (_%tl8574285763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28573685744%_))))
                              (let* ((_%x285766%_ _%hd8574185761%_)
                                     (_%rest285768%_ _%tl8574285763%_))
                                (declare (not safe))
                                (_%K8574085758%_ _%rest285768%_ _%x285766%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8573885752%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18571585723%_))
                  (let ((_%hd8572085773%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18571585723%_)))
                        (_%tl8572185775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18571585723%_))))
                    (let* ((_%x185778%_ _%hd8572085773%_)
                           (_%rest185780%_ _%tl8572185775%_))
                      (declare (not safe))
                      (_%K8571985770%_ _%rest185780%_ _%x185778%_)))
                  (let () (declare (not safe)) (_%else8571785731%_))))))))
    (define foldl
      (lambda _g87889_
        (let ((_g87888_ (let () (declare (not safe)) (##length _g87889_))))
          (cond ((let () (declare (not safe)) (##fx= _g87888_ 3))
                 (apply (lambda (_%f85680%_ _%iv85681%_ _%lst85682%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85680%_ _%iv85681%_ _%lst85682%_)))
                        _g87889_))
                ((let () (declare (not safe)) (##fx= _g87888_ 4))
                 (apply (lambda (_%f85684%_
                                 _%iv85685%_
                                 _%lst185686%_
                                 _%lst285687%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85684%_
                                    _%iv85685%_
                                    _%lst185686%_
                                    _%lst285687%_)))
                        _g87889_))
                ((let () (declare (not safe)) (##fx>= _g87888_ 4))
                 (apply foldl* _g87889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87889_))))))
    (define foldl*
      (lambda (_%f85664%_ _%iv85665%_ . _%rest85666%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85664%_))
              (let ((_%f85670%_ _%f85664%_))
                (declare (not safe))
                (##apply __foldl* _%f85670%_ _%iv85665%_ _%rest85666%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@246.15-246.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85664%_)
                '#!void)))))
    (define __foldl*
      (lambda (_%f85642%_ _%iv85643%_ . _%rest85644%_)
        (let ((_%f85647%_ _%f85642%_))
          (let _%recur85656%_ ((_%iv85658%_ _%iv85643%_)
                               (_%rest85659%_ _%rest85644%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85659%_))
                (let ((__tmp87891
                       (let ((__tmp87892
                              (let ((__tmp87894
                                     (lambda (_%xs85661%_ _%r85662%_)
                                       (cons (car _%xs85661%_) _%r85662%_)))
                                    (__tmp87893 (list _%iv85658%_)))
                                (declare (not safe))
                                (__foldr1
                                 __tmp87894
                                 __tmp87893
                                 _%rest85659%_))))
                         (declare (not safe))
                         (##apply _%f85647%_ __tmp87892)))
                      (__tmp87890 (map cdr _%rest85659%_)))
                  (declare (not safe))
                  (_%recur85656%_ __tmp87891 __tmp87890))
                _%iv85658%_)))))
    (define foldr1
      (lambda (_%f85626%_ _%iv85627%_ _%lst85628%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85626%_))
              (let ((_%f85632%_ _%f85626%_))
                (declare (not safe))
                (__foldr1 _%f85632%_ _%iv85627%_ _%lst85628%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@256.15-256.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85626%_)
                '#!void)))))
    (define __foldr1
      (lambda (_%f85575%_ _%iv85576%_ _%lst85577%_)
        (let ((_%f85580%_ _%f85575%_))
          (let _%recur85589%_ ((_%rest85591%_ _%lst85577%_))
            (let* ((_%rest8559285600%_ _%rest85591%_)
                   (_%else8559485608%_ (lambda () _%iv85576%_))
                   (_%K8559685614%_
                    (lambda (_%rest85611%_ _%x85612%_)
                      (let ((__tmp87895
                             (let ()
                               (declare (not safe))
                               (_%recur85589%_ _%rest85611%_))))
                        (declare (not safe))
                        (_%f85580%_ _%x85612%_ __tmp87895)))))
              (if (let () (declare (not safe)) (##pair? _%rest8559285600%_))
                  (let ((_%hd8559785617%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8559285600%_)))
                        (_%tl8559885619%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8559285600%_))))
                    (let* ((_%x85622%_ _%hd8559785617%_)
                           (_%rest85624%_ _%tl8559885619%_))
                      (declare (not safe))
                      (_%K8559685614%_ _%rest85624%_ _%x85622%_)))
                  (let () (declare (not safe)) (_%else8559485608%_))))))))
    (define foldr2
      (lambda (_%f85558%_ _%iv85559%_ _%lst185560%_ _%lst285561%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85558%_))
              (let ((_%f85565%_ _%f85558%_))
                (declare (not safe))
                (__foldr2 _%f85565%_ _%iv85559%_ _%lst185560%_ _%lst285561%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@263.15-263.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85558%_)
                '#!void)))))
    (define __foldr2
      (lambda (_%f85472%_ _%iv85473%_ _%lst185474%_ _%lst285475%_)
        (let ((_%f85478%_ _%f85472%_))
          (let _%recur85487%_ ((_%rest185489%_ _%lst185474%_)
                               (_%rest285490%_ _%lst285475%_))
            (let* ((_%rest18549185499%_ _%rest185489%_)
                   (_%else8549385507%_ (lambda () _%iv85473%_))
                   (_%K8549585546%_
                    (lambda (_%rest185510%_ _%x185511%_)
                      (let* ((_%rest28551285520%_ _%rest285490%_)
                             (_%else8551485528%_ (lambda () _%iv85473%_))
                             (_%K8551685534%_
                              (lambda (_%rest285531%_ _%x285532%_)
                                (let ((__tmp87896
                                       (let ()
                                         (declare (not safe))
                                         (_%recur85487%_
                                          _%rest185510%_
                                          _%rest285531%_))))
                                  (declare (not safe))
                                  (_%f85478%_
                                   _%x185511%_
                                   _%x285532%_
                                   __tmp87896)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28551285520%_))
                            (let ((_%hd8551785537%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28551285520%_)))
                                  (_%tl8551885539%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28551285520%_))))
                              (let* ((_%x285542%_ _%hd8551785537%_)
                                     (_%rest285544%_ _%tl8551885539%_))
                                (declare (not safe))
                                (_%K8551685534%_ _%rest285544%_ _%x285542%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8551485528%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18549185499%_))
                  (let ((_%hd8549685549%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18549185499%_)))
                        (_%tl8549785551%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18549185499%_))))
                    (let* ((_%x185554%_ _%hd8549685549%_)
                           (_%rest185556%_ _%tl8549785551%_))
                      (declare (not safe))
                      (_%K8549585546%_ _%rest185556%_ _%x185554%_)))
                  (let () (declare (not safe)) (_%else8549385507%_))))))))
    (define foldr
      (lambda _g87898_
        (let ((_g87897_ (let () (declare (not safe)) (##length _g87898_))))
          (cond ((let () (declare (not safe)) (##fx= _g87897_ 3))
                 (apply (lambda (_%f85457%_ _%iv85458%_ _%lst85459%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f85457%_ _%iv85458%_ _%lst85459%_)))
                        _g87898_))
                ((let () (declare (not safe)) (##fx= _g87897_ 4))
                 (apply (lambda (_%f85461%_
                                 _%iv85462%_
                                 _%lst185463%_
                                 _%lst285464%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f85461%_
                                    _%iv85462%_
                                    _%lst185463%_
                                    _%lst285464%_)))
                        _g87898_))
                ((let () (declare (not safe)) (##fx>= _g87897_ 4))
                 (apply foldr* _g87898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87898_))))))
    (define foldr*
      (lambda (_%f85441%_ _%iv85442%_ . _%rest85443%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85441%_))
              (let ((_%f85447%_ _%f85441%_))
                (declare (not safe))
                (##apply __foldr* _%f85447%_ _%iv85442%_ _%rest85443%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@281.15-281.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85441%_)
                '#!void)))))
    (define __foldr*
      (lambda (_%f85420%_ _%iv85421%_ . _%rest85422%_)
        (let ((_%f85425%_ _%f85420%_))
          (let _%recur85434%_ ((_%rest85436%_ _%rest85422%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85436%_))
                (let ((__tmp87899
                       (let ((__tmp87902
                              (lambda (_%xs85438%_ _%r85439%_)
                                (cons (car _%xs85438%_) _%r85439%_)))
                             (__tmp87900
                              (list (let ((__tmp87901 (map cdr _%rest85436%_)))
                                      (declare (not safe))
                                      (_%recur85434%_ __tmp87901)))))
                         (declare (not safe))
                         (__foldr1 __tmp87902 __tmp87900 _%rest85436%_))))
                  (declare (not safe))
                  (##apply _%f85425%_ __tmp87899))
                _%iv85421%_)))))
    (define remove-nulls!
      (lambda (_%l85307%_)
        (let* ((_%l8530885321%_ _%l85307%_)
               (_%E8531285325%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8530885321%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8531785410%_
                 (lambda (_%r85408%_)
                   (let () (declare (not safe)) (remove-nulls! _%r85408%_))))
                (_%K8531485397%_
                 (lambda (_%r85337%_)
                   (let _%loop85339%_ ((_%l85341%_ _%l85307%_)
                                       (_%r85342%_ _%r85337%_))
                     (let* ((_%r8534385356%_ _%r85342%_)
                            (_%E8534785360%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8534385356%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8535285387%_
                              (lambda (_%rr85385%_)
                                (let ((__tmp87904 _%l85341%_)
                                      (__tmp87903
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr85385%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87904 __tmp87903))))
                             (_%K8534985374%_
                              (lambda (_%rr85372%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop85339%_ _%r85342%_ _%rr85372%_))))
                             (_%K8534885365%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8534385356%_))
                             (let ((_%tl8535485392%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8534385356%_)))
                                   (_%hd8535385390%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8534385356%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8535385390%_))
                                   (let ((_%rr85395%_ _%tl8535485392%_))
                                     (declare (not safe))
                                     (_%K8535285387%_ _%rr85395%_))
                                   (let ((_%rr85380%_ _%tl8535485392%_))
                                     (declare (not safe))
                                     (_%K8534985374%_ _%rr85380%_))))
                             '#!void))))
                   _%l85307%_))
                (_%K8531385330%_ (lambda () _%l85307%_)))
            (if (let () (declare (not safe)) (##pair? _%l8530885321%_))
                (let ((_%tl8531985415%_
                       (let () (declare (not safe)) (##cdr _%l8530885321%_)))
                      (_%hd8531885413%_
                       (let () (declare (not safe)) (##car _%l8530885321%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8531885413%_))
                      (let ((_%r85418%_ _%tl8531985415%_))
                        (declare (not safe))
                        (remove-nulls! _%r85418%_))
                      (let ((_%r85403%_ _%tl8531985415%_))
                        (declare (not safe))
                        (_%K8531485397%_ _%r85403%_))))
                (let () (declare (not safe)) (_%K8531385330%_)))))))
    (define append1!
      (lambda (_%l85292%_ _%x85293%_)
        (let ((_%l285296%_ (cons _%x85293%_ '())))
          (if (let () (declare (not safe)) (pair? _%l85292%_))
              (let ((_%l85298%_ _%l85292%_))
                (let ((__tmp87905
                       (let () (declare (not safe)) (##last-pair _%l85298%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87905 _%l285296%_))
                _%l85298%_)
              _%l285296%_))))
    (define append-reverse-until
      (lambda (_%pred85276%_ _%rhead85277%_ _%tail85278%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred85276%_))
              (let ((_%pred85282%_ _%pred85276%_))
                (declare (not safe))
                (__append-reverse-until
                 _%pred85282%_
                 _%rhead85277%_
                 _%tail85278%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@321.29-321.33"
                 'contract:
                 'procedure?
                 'value:
                 _%pred85276%_)
                '#!void)))))
    (define __append-reverse-until
      (lambda (_%pred85218%_ _%rhead85219%_ _%tail85220%_)
        (let ((_%pred85223%_ _%pred85218%_))
          (let _%loop85232%_ ((_%rhead85234%_ _%rhead85219%_)
                              (_%tail85235%_ _%tail85220%_))
            (let ()
              (let* ((_%rhead8523785246%_ _%rhead85234%_)
                     (_%E8524085250%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rhead8523785246%_
                               '([])
                               '([a :: r]))
                        '#!void)))
                (let ((_%K8524485273%_ (lambda () (values '() _%tail85235%_)))
                      (_%K8524185257%_
                       (lambda (_%r85254%_ _%a85255%_)
                         (if (let ()
                               (declare (not safe))
                               (_%pred85223%_ _%a85255%_))
                             (values _%rhead85234%_ _%tail85235%_)
                             (let ((__tmp87906
                                    (cons _%a85255%_ _%tail85235%_)))
                               (declare (not safe))
                               (_%loop85232%_ _%r85254%_ __tmp87906))))))
                  (let ((_%try-match8523985269%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rhead8523785246%_))
                               (let ((_%tl8524385262%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rhead8523785246%_)))
                                     (_%hd8524285260%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rhead8523785246%_))))
                                 (let ((_%a85265%_ _%hd8524285260%_)
                                       (_%r85267%_ _%tl8524385262%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K8524185257%_ _%r85267%_ _%a85265%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%E8524085250%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%rhead8523785246%_))
                        (let () (declare (not safe)) (_%K8524485273%_))
                        (let ()
                          (declare (not safe))
                          (_%try-match8523985269%_)))))))))))
    (define andmap1
      (lambda (_%f85203%_ _%lst85204%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85203%_))
              (let ((_%f85208%_ _%f85203%_))
                (declare (not safe))
                (__andmap1 _%f85208%_ _%lst85204%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@332.16-332.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85203%_)
                '#!void)))))
    (define __andmap1
      (lambda (_%f85152%_ _%lst85153%_)
        (let ((_%f85156%_ _%f85152%_))
          (let _%lp85165%_ ((_%rest85167%_ _%lst85153%_))
            (let ()
              (let* ((_%rest8516985177%_ _%rest85167%_)
                     (_%else8517185185%_ (lambda () '#t))
                     (_%K8517385191%_
                      (lambda (_%rest85188%_ _%x85189%_)
                        (if (let ()
                              (declare (not safe))
                              (_%f85156%_ _%x85189%_))
                            (let ()
                              (declare (not safe))
                              (_%lp85165%_ _%rest85188%_))
                            '#f))))
                (if (let () (declare (not safe)) (##pair? _%rest8516985177%_))
                    (let ((_%hd8517485194%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8516985177%_)))
                          (_%tl8517585196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8516985177%_))))
                      (let* ((_%x85199%_ _%hd8517485194%_)
                             (_%rest85201%_ _%tl8517585196%_))
                        (declare (not safe))
                        (_%K8517385191%_ _%rest85201%_ _%x85199%_)))
                    (let () (declare (not safe)) (_%else8517185185%_)))))))))
    (define andmap2
      (lambda (_%f85136%_ _%lst185137%_ _%lst285138%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85136%_))
              (let ((_%f85142%_ _%f85136%_))
                (declare (not safe))
                (__andmap2 _%f85142%_ _%lst185137%_ _%lst285138%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@341.16-341.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85136%_)
                '#!void)))))
    (define __andmap2
      (lambda (_%f85050%_ _%lst185051%_ _%lst285052%_)
        (let ((_%f85055%_ _%f85050%_))
          (let _%lp85064%_ ((_%rest185066%_ _%lst185051%_)
                            (_%rest285067%_ _%lst285052%_))
            (let ()
              (let* ((_%rest18506985077%_ _%rest185066%_)
                     (_%else8507185085%_ (lambda () '#t))
                     (_%K8507385124%_
                      (lambda (_%rest185088%_ _%x185089%_)
                        (let* ((_%rest28509085098%_ _%rest285067%_)
                               (_%else8509285106%_ (lambda () '#t))
                               (_%K8509485112%_
                                (lambda (_%rest285109%_ _%x285110%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (_%f85055%_ _%x185089%_ _%x285110%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp85064%_
                                         _%rest185088%_
                                         _%rest285109%_))
                                      '#f))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28509085098%_))
                              (let ((_%hd8509585115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28509085098%_)))
                                    (_%tl8509685117%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28509085098%_))))
                                (let* ((_%x285120%_ _%hd8509585115%_)
                                       (_%rest285122%_ _%tl8509685117%_))
                                  (declare (not safe))
                                  (_%K8509485112%_
                                   _%rest285122%_
                                   _%x285120%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8509285106%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18506985077%_))
                    (let ((_%hd8507485127%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18506985077%_)))
                          (_%tl8507585129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18506985077%_))))
                      (let* ((_%x185132%_ _%hd8507485127%_)
                             (_%rest185134%_ _%tl8507585129%_))
                        (declare (not safe))
                        (_%K8507385124%_ _%rest185134%_ _%x185132%_)))
                    (let () (declare (not safe)) (_%else8507185085%_)))))))))
    (define andmap
      (lambda _g87908_
        (let ((_g87907_ (let () (declare (not safe)) (##length _g87908_))))
          (cond ((let () (declare (not safe)) (##fx= _g87907_ 2))
                 (apply (lambda (_%f85038%_ _%lst85039%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f85038%_ _%lst85039%_)))
                        _g87908_))
                ((let () (declare (not safe)) (##fx= _g87907_ 3))
                 (apply (lambda (_%f85041%_ _%lst185042%_ _%lst285043%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f85041%_ _%lst185042%_ _%lst285043%_)))
                        _g87908_))
                ((let () (declare (not safe)) (##fx>= _g87907_ 3))
                 (apply andmap* _g87908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87908_))))))
    (define andmap*
      (lambda (_%f85023%_ . _%rest85024%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85023%_))
              (let ((_%f85028%_ _%f85023%_))
                (declare (not safe))
                (##apply __andmap* _%f85028%_ _%rest85024%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@361.16-361.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85023%_)
                '#!void)))))
    (define __andmap*
      (lambda (_%f85005%_ . _%rest85006%_)
        (let ((_%f85009%_ _%f85005%_))
          (let _%recur85018%_ ((_%rest85020%_ _%rest85006%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest85020%_))
                  (if (let ((__tmp87909 (map car _%rest85020%_)))
                        (declare (not safe))
                        (##apply _%f85009%_ __tmp87909))
                      (let ((__tmp87910 (map cdr _%rest85020%_)))
                        (declare (not safe))
                        (_%recur85018%_ __tmp87910))
                      '#f)
                  '#t))))))
    (define ormap1
      (lambda (_%f84990%_ _%lst84991%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84990%_))
              (let ((_%f84995%_ _%f84990%_))
                (declare (not safe))
                (__ormap1 _%f84995%_ _%lst84991%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@370.15-370.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84990%_)
                '#!void)))))
    (define __ormap1
      (lambda (_%f84937%_ _%lst84938%_)
        (let ((_%f84941%_ _%f84937%_))
          (let _%lp84950%_ ((_%rest84952%_ _%lst84938%_))
            (let* ((_%rest8495384961%_ _%rest84952%_)
                   (_%else8495584969%_ (lambda () '#f))
                   (_%K8495784978%_
                    (lambda (_%rest84972%_ _%x84973%_)
                      (let ((_%$e84975%_
                             (let ()
                               (declare (not safe))
                               (_%f84941%_ _%x84973%_))))
                        (if _%$e84975%_
                            _%$e84975%_
                            (let ()
                              (declare (not safe))
                              (_%lp84950%_ _%rest84972%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest8495384961%_))
                  (let ((_%hd8495884981%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8495384961%_)))
                        (_%tl8495984983%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8495384961%_))))
                    (let* ((_%x84986%_ _%hd8495884981%_)
                           (_%rest84988%_ _%tl8495984983%_))
                      (declare (not safe))
                      (_%K8495784978%_ _%rest84988%_ _%x84986%_)))
                  (let () (declare (not safe)) (_%else8495584969%_))))))))
    (define ormap2
      (lambda (_%f84921%_ _%lst184922%_ _%lst284923%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84921%_))
              (let ((_%f84927%_ _%f84921%_))
                (declare (not safe))
                (__ormap2 _%f84927%_ _%lst184922%_ _%lst284923%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@377.15-377.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84921%_)
                '#!void)))))
    (define __ormap2
      (lambda (_%f84833%_ _%lst184834%_ _%lst284835%_)
        (let ((_%f84838%_ _%f84833%_))
          (let _%lp84847%_ ((_%rest184849%_ _%lst184834%_)
                            (_%rest284850%_ _%lst284835%_))
            (let* ((_%rest18485184859%_ _%rest184849%_)
                   (_%else8485384867%_ (lambda () '#f))
                   (_%K8485584909%_
                    (lambda (_%rest184870%_ _%x184871%_)
                      (let* ((_%rest28487284880%_ _%rest284850%_)
                             (_%else8487484888%_ (lambda () '#f))
                             (_%K8487684897%_
                              (lambda (_%rest284891%_ _%x284892%_)
                                (let ((_%$e84894%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84838%_
                                          _%x184871%_
                                          _%x284892%_))))
                                  (if _%$e84894%_
                                      _%$e84894%_
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84847%_
                                         _%rest184870%_
                                         _%rest284891%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28487284880%_))
                            (let ((_%hd8487784900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28487284880%_)))
                                  (_%tl8487884902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28487284880%_))))
                              (let* ((_%x284905%_ _%hd8487784900%_)
                                     (_%rest284907%_ _%tl8487884902%_))
                                (declare (not safe))
                                (_%K8487684897%_ _%rest284907%_ _%x284905%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8487484888%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18485184859%_))
                  (let ((_%hd8485684912%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18485184859%_)))
                        (_%tl8485784914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18485184859%_))))
                    (let* ((_%x184917%_ _%hd8485684912%_)
                           (_%rest184919%_ _%tl8485784914%_))
                      (declare (not safe))
                      (_%K8485584909%_ _%rest184919%_ _%x184917%_)))
                  (let () (declare (not safe)) (_%else8485384867%_))))))))
    (define ormap
      (lambda _g87912_
        (let ((_g87911_ (let () (declare (not safe)) (##length _g87912_))))
          (cond ((let () (declare (not safe)) (##fx= _g87911_ 2))
                 (apply (lambda (_%f84821%_ _%lst84822%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84821%_ _%lst84822%_)))
                        _g87912_))
                ((let () (declare (not safe)) (##fx= _g87911_ 3))
                 (apply (lambda (_%f84824%_ _%lst184825%_ _%lst284826%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84824%_ _%lst184825%_ _%lst284826%_)))
                        _g87912_))
                ((let () (declare (not safe)) (##fx>= _g87911_ 3))
                 (apply ormap* _g87912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87912_))))))
    (define ormap*
      (lambda (_%f84806%_ . _%rest84807%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84806%_))
              (let ((_%f84811%_ _%f84806%_))
                (declare (not safe))
                (##apply __ormap* _%f84811%_ _%rest84807%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@395.15-395.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84806%_)
                '#!void)))))
    (define __ormap*
      (lambda (_%f84786%_ . _%rest84787%_)
        (let ((_%f84790%_ _%f84786%_))
          (let _%recur84799%_ ((_%rest84801%_ _%rest84787%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84801%_))
                (let ((_%$e84803%_
                       (let ((__tmp87913 (map car _%rest84801%_)))
                         (declare (not safe))
                         (##apply _%f84790%_ __tmp87913))))
                  (if _%$e84803%_
                      _%$e84803%_
                      (let ((__tmp87914 (map cdr _%rest84801%_)))
                        (declare (not safe))
                        (_%recur84799%_ __tmp87914))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84771%_ _%lst84772%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84771%_))
              (let ((_%f84776%_ _%f84771%_))
                (declare (not safe))
                (__filter-map1 _%f84776%_ _%lst84772%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@402.20-402.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84771%_)
                '#!void)))))
    (define __filter-map1
      (lambda (_%f84714%_ _%lst84715%_)
        (let ((_%f84718%_ _%f84714%_))
          (let _%recur84727%_ ((_%rest84729%_ _%lst84715%_))
            (let ()
              (let* ((_%rest8473184739%_ _%rest84729%_)
                     (_%else8473384747%_ (lambda () '()))
                     (_%K8473584759%_
                      (lambda (_%rest84750%_ _%x84751%_)
                        (let ((_%$e84753%_
                               (let ()
                                 (declare (not safe))
                                 (_%f84718%_ _%x84751%_))))
                          (if _%$e84753%_
                              ((lambda (_%r84756%_)
                                 (cons _%r84756%_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84727%_ _%rest84750%_))))
                               _%$e84753%_)
                              (let ()
                                (declare (not safe))
                                (_%recur84727%_ _%rest84750%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest8473184739%_))
                    (let ((_%hd8473684762%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8473184739%_)))
                          (_%tl8473784764%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8473184739%_))))
                      (let* ((_%x84767%_ _%hd8473684762%_)
                             (_%rest84769%_ _%tl8473784764%_))
                        (declare (not safe))
                        (_%K8473584759%_ _%rest84769%_ _%x84767%_)))
                    (let () (declare (not safe)) (_%else8473384747%_)))))))))
    (define filter-map2
      (lambda (_%f84698%_ _%lst184699%_ _%lst284700%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84698%_))
              (let ((_%f84704%_ _%f84698%_))
                (declare (not safe))
                (__filter-map2 _%f84704%_ _%lst184699%_ _%lst284700%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@413.20-413.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84698%_)
                '#!void)))))
    (define __filter-map2
      (lambda (_%f84606%_ _%lst184607%_ _%lst284608%_)
        (let ((_%f84611%_ _%f84606%_))
          (let _%recur84620%_ ((_%rest184622%_ _%lst184607%_)
                               (_%rest284623%_ _%lst284608%_))
            (let ()
              (let* ((_%rest18462584633%_ _%rest184622%_)
                     (_%else8462784641%_ (lambda () '()))
                     (_%K8462984686%_
                      (lambda (_%rest184644%_ _%x184645%_)
                        (let* ((_%rest28464684654%_ _%rest284623%_)
                               (_%else8464884662%_ (lambda () '()))
                               (_%K8465084674%_
                                (lambda (_%rest284665%_ _%x284666%_)
                                  (let ((_%$e84668%_
                                         (let ()
                                           (declare (not safe))
                                           (_%f84611%_
                                            _%x184645%_
                                            _%x284666%_))))
                                    (if _%$e84668%_
                                        ((lambda (_%r84671%_)
                                           (cons _%r84671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%recur84620%_
                                                    _%rest184644%_
                                                    _%rest284665%_))))
                                         _%$e84668%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%recur84620%_
                                           _%rest184644%_
                                           _%rest284665%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28464684654%_))
                              (let ((_%hd8465184677%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28464684654%_)))
                                    (_%tl8465284679%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28464684654%_))))
                                (let* ((_%x284682%_ _%hd8465184677%_)
                                       (_%rest284684%_ _%tl8465284679%_))
                                  (declare (not safe))
                                  (_%K8465084674%_
                                   _%rest284684%_
                                   _%x284682%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8464884662%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18462584633%_))
                    (let ((_%hd8463084689%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18462584633%_)))
                          (_%tl8463184691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18462584633%_))))
                      (let* ((_%x184694%_ _%hd8463084689%_)
                             (_%rest184696%_ _%tl8463184691%_))
                        (declare (not safe))
                        (_%K8462984686%_ _%rest184696%_ _%x184694%_)))
                    (let () (declare (not safe)) (_%else8462784641%_)))))))))
    (define filter-map
      (lambda _g87916_
        (let ((_g87915_ (let () (declare (not safe)) (##length _g87916_))))
          (cond ((let () (declare (not safe)) (##fx= _g87915_ 2))
                 (apply (lambda (_%f84594%_ _%lst84595%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84594%_ _%lst84595%_)))
                        _g87916_))
                ((let () (declare (not safe)) (##fx= _g87915_ 3))
                 (apply (lambda (_%f84597%_ _%lst184598%_ _%lst284599%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84597%_
                             _%lst184598%_
                             _%lst284599%_)))
                        _g87916_))
                ((let () (declare (not safe)) (##fx>= _g87915_ 3))
                 (apply filter-map* _g87916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87916_))))))
    (define filter-map*
      (lambda (_%f84579%_ . _%rest84580%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84579%_))
              (let ((_%f84584%_ _%f84579%_))
                (declare (not safe))
                (##apply __filter-map* _%f84584%_ _%rest84580%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@435.20-435.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84579%_)
                '#!void)))))
    (define __filter-map*
      (lambda (_%f84555%_ . _%rest84556%_)
        (let ((_%f84559%_ _%f84555%_))
          (let _%recur84568%_ ((_%rest84570%_ _%rest84556%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84570%_))
                  (let ((_%$e84573%_
                         (let ((__tmp87917 (map car _%rest84570%_)))
                           (declare (not safe))
                           (##apply _%f84559%_ __tmp87917))))
                    (if _%$e84573%_
                        ((lambda (_%r84576%_)
                           (cons _%r84576%_
                                 (let ((__tmp87918 (map cdr _%rest84570%_)))
                                   (declare (not safe))
                                   (_%recur84568%_ __tmp87918))))
                         _%$e84573%_)
                        (let ((__tmp87919 (map cdr _%rest84570%_)))
                          (declare (not safe))
                          (_%recur84568%_ __tmp87919))))
                  '()))))))
    (define agetq__%
      (lambda (_%key84531%_ _%lst84533%_ _%default84535%_)
        (let ((_%$e84538%_
               (if (let () (declare (not safe)) (pair? _%lst84533%_))
                   (assq _%key84531%_ _%lst84533%_)
                   '#f)))
          (if _%$e84538%_
              (cdr _%$e84538%_)
              (if (let () (declare (not safe)) (procedure? _%default84535%_))
                  (let () (_%default84535%_ _%key84531%_))
                  (let () _%default84535%_))))))
    (define agetq__0
      (lambda (_%key84546%_ _%lst84547%_)
        (let ((_%default84549%_ '#f))
          (declare (not safe))
          (agetq__% _%key84546%_ _%lst84547%_ _%default84549%_))))
    (define agetq
      (lambda _g87921_
        (let ((_g87920_ (let () (declare (not safe)) (##length _g87921_))))
          (cond ((let () (declare (not safe)) (##fx= _g87920_ 2))
                 (apply (lambda (_%key84546%_ _%lst84547%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84546%_ _%lst84547%_)))
                        _g87921_))
                ((let () (declare (not safe)) (##fx= _g87920_ 3))
                 (apply (lambda (_%key84551%_ _%lst84552%_ _%default84553%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84551%_
                             _%lst84552%_
                             _%default84553%_)))
                        _g87921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g87921_))))))
    (define agetv__%
      (lambda (_%key84506%_ _%lst84508%_ _%default84510%_)
        (let ((_%$e84513%_
               (if (let () (declare (not safe)) (pair? _%lst84508%_))
                   (assv _%key84506%_ _%lst84508%_)
                   '#f)))
          (if _%$e84513%_
              (cdr _%$e84513%_)
              (if (let () (declare (not safe)) (procedure? _%default84510%_))
                  (let () (_%default84510%_ _%key84506%_))
                  (let () _%default84510%_))))))
    (define agetv__0
      (lambda (_%key84521%_ _%lst84522%_)
        (let ((_%default84524%_ '#f))
          (declare (not safe))
          (agetv__% _%key84521%_ _%lst84522%_ _%default84524%_))))
    (define agetv
      (lambda _g87923_
        (let ((_g87922_ (let () (declare (not safe)) (##length _g87923_))))
          (cond ((let () (declare (not safe)) (##fx= _g87922_ 2))
                 (apply (lambda (_%key84521%_ _%lst84522%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84521%_ _%lst84522%_)))
                        _g87923_))
                ((let () (declare (not safe)) (##fx= _g87922_ 3))
                 (apply (lambda (_%key84526%_ _%lst84527%_ _%default84528%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84526%_
                             _%lst84527%_
                             _%default84528%_)))
                        _g87923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g87923_))))))
    (define aget__%
      (lambda (_%key84481%_ _%lst84483%_ _%default84485%_)
        (let ((_%$e84488%_
               (if (let () (declare (not safe)) (pair? _%lst84483%_))
                   (assoc _%key84481%_ _%lst84483%_)
                   '#f)))
          (if _%$e84488%_
              (cdr _%$e84488%_)
              (if (let () (declare (not safe)) (procedure? _%default84485%_))
                  (let () (_%default84485%_ _%key84481%_))
                  (let () _%default84485%_))))))
    (define aget__0
      (lambda (_%key84496%_ _%lst84497%_)
        (let ((_%default84499%_ '#f))
          (declare (not safe))
          (aget__% _%key84496%_ _%lst84497%_ _%default84499%_))))
    (define aget
      (lambda _g87925_
        (let ((_g87924_ (let () (declare (not safe)) (##length _g87925_))))
          (cond ((let () (declare (not safe)) (##fx= _g87924_ 2))
                 (apply (lambda (_%key84496%_ _%lst84497%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key84496%_ _%lst84497%_)))
                        _g87925_))
                ((let () (declare (not safe)) (##fx= _g87924_ 3))
                 (apply (lambda (_%key84501%_ _%lst84502%_ _%default84503%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key84501%_
                                     _%lst84502%_
                                     _%default84503%_)))
                        _g87925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g87925_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84410%_ _%lst84412%_ _%default84414%_)
        (let _%lp84417%_ ((_%rest84420%_ _%lst84412%_))
          (let* ((_%rest8442284432%_ _%rest84420%_)
                 (_%else8442484440%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84414%_))
                        (_%default84414%_ _%key84410%_)
                        _%default84414%_)))
                 (_%K8442684449%_
                  (lambda (_%rest84443%_ _%v84444%_ _%k84446%_)
                    (if (eq? _%k84446%_ _%key84410%_)
                        _%v84444%_
                        (let ()
                          (declare (not safe))
                          (_%lp84417%_ _%rest84443%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8442284432%_))
                (let ((_%hd8442784452%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8442284432%_)))
                      (_%tl8442884454%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8442284432%_))))
                  (let ((_%k84457%_ _%hd8442784452%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8442884454%_))
                        (let ((_%hd8442984459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8442884454%_)))
                              (_%tl8443084461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8442884454%_))))
                          (let* ((_%v84464%_ _%hd8442984459%_)
                                 (_%rest84466%_ _%tl8443084461%_))
                            (declare (not safe))
                            (_%K8442684449%_
                             _%rest84466%_
                             _%v84464%_
                             _%k84457%_)))
                        (let () (declare (not safe)) (_%else8442484440%_)))))
                (let () (declare (not safe)) (_%else8442484440%_)))))))
    (define pgetq__0
      (lambda (_%key84471%_ _%lst84472%_)
        (let ((_%default84474%_ '#f))
          (declare (not safe))
          (pgetq__% _%key84471%_ _%lst84472%_ _%default84474%_))))
    (define pgetq
      (lambda _g87927_
        (let ((_g87926_ (let () (declare (not safe)) (##length _g87927_))))
          (cond ((let () (declare (not safe)) (##fx= _g87926_ 2))
                 (apply (lambda (_%key84471%_ _%lst84472%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key84471%_ _%lst84472%_)))
                        _g87927_))
                ((let () (declare (not safe)) (##fx= _g87926_ 3))
                 (apply (lambda (_%key84476%_ _%lst84477%_ _%default84478%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key84476%_
                             _%lst84477%_
                             _%default84478%_)))
                        _g87927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g87927_))))))
    (define pgetv__%
      (lambda (_%key84339%_ _%lst84341%_ _%default84343%_)
        (let _%lp84346%_ ((_%rest84349%_ _%lst84341%_))
          (let* ((_%rest8435184361%_ _%rest84349%_)
                 (_%else8435384369%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84343%_))
                        (_%default84343%_ _%key84339%_)
                        _%default84343%_)))
                 (_%K8435584378%_
                  (lambda (_%rest84372%_ _%v84373%_ _%k84375%_)
                    (if (eqv? _%k84375%_ _%key84339%_)
                        _%v84373%_
                        (let ()
                          (declare (not safe))
                          (_%lp84346%_ _%rest84372%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8435184361%_))
                (let ((_%hd8435684381%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8435184361%_)))
                      (_%tl8435784383%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8435184361%_))))
                  (let ((_%k84386%_ _%hd8435684381%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8435784383%_))
                        (let ((_%hd8435884388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8435784383%_)))
                              (_%tl8435984390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8435784383%_))))
                          (let* ((_%v84393%_ _%hd8435884388%_)
                                 (_%rest84395%_ _%tl8435984390%_))
                            (declare (not safe))
                            (_%K8435584378%_
                             _%rest84395%_
                             _%v84393%_
                             _%k84386%_)))
                        (let () (declare (not safe)) (_%else8435384369%_)))))
                (let () (declare (not safe)) (_%else8435384369%_)))))))
    (define pgetv__0
      (lambda (_%key84400%_ _%lst84401%_)
        (let ((_%default84403%_ '#f))
          (declare (not safe))
          (pgetv__% _%key84400%_ _%lst84401%_ _%default84403%_))))
    (define pgetv
      (lambda _g87929_
        (let ((_g87928_ (let () (declare (not safe)) (##length _g87929_))))
          (cond ((let () (declare (not safe)) (##fx= _g87928_ 2))
                 (apply (lambda (_%key84400%_ _%lst84401%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key84400%_ _%lst84401%_)))
                        _g87929_))
                ((let () (declare (not safe)) (##fx= _g87928_ 3))
                 (apply (lambda (_%key84405%_ _%lst84406%_ _%default84407%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key84405%_
                             _%lst84406%_
                             _%default84407%_)))
                        _g87929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g87929_))))))
    (define pget__%
      (lambda (_%key84268%_ _%lst84270%_ _%default84272%_)
        (let _%lp84275%_ ((_%rest84278%_ _%lst84270%_))
          (let* ((_%rest8428084290%_ _%rest84278%_)
                 (_%else8428284298%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84272%_))
                        (_%default84272%_ _%key84268%_)
                        _%default84272%_)))
                 (_%K8428484307%_
                  (lambda (_%rest84301%_ _%v84302%_ _%k84304%_)
                    (if (equal? _%k84304%_ _%key84268%_)
                        _%v84302%_
                        (let ()
                          (declare (not safe))
                          (_%lp84275%_ _%rest84301%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8428084290%_))
                (let ((_%hd8428584310%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8428084290%_)))
                      (_%tl8428684312%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8428084290%_))))
                  (let ((_%k84315%_ _%hd8428584310%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8428684312%_))
                        (let ((_%hd8428784317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8428684312%_)))
                              (_%tl8428884319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8428684312%_))))
                          (let* ((_%v84322%_ _%hd8428784317%_)
                                 (_%rest84324%_ _%tl8428884319%_))
                            (declare (not safe))
                            (_%K8428484307%_
                             _%rest84324%_
                             _%v84322%_
                             _%k84315%_)))
                        (let () (declare (not safe)) (_%else8428284298%_)))))
                (let () (declare (not safe)) (_%else8428284298%_)))))))
    (define pget__0
      (lambda (_%key84329%_ _%lst84330%_)
        (let ((_%default84332%_ '#f))
          (declare (not safe))
          (pget__% _%key84329%_ _%lst84330%_ _%default84332%_))))
    (define pget
      (lambda _g87931_
        (let ((_g87930_ (let () (declare (not safe)) (##length _g87931_))))
          (cond ((let () (declare (not safe)) (##fx= _g87930_ 2))
                 (apply (lambda (_%key84329%_ _%lst84330%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key84329%_ _%lst84330%_)))
                        _g87931_))
                ((let () (declare (not safe)) (##fx= _g87930_ 3))
                 (apply (lambda (_%key84334%_ _%lst84335%_ _%default84336%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key84334%_
                                     _%lst84335%_
                                     _%default84336%_)))
                        _g87931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g87931_))))))
    (define find
      (lambda (_%pred84252%_ _%lst84253%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84252%_))
              (let ((_%pred84257%_ _%pred84252%_))
                (declare (not safe))
                (__find _%pred84257%_ _%lst84253%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@481.13-481.17"
                 'contract:
                 'procedure?
                 'value:
                 _%pred84252%_)
                '#!void)))))
    (define __find
      (lambda (_%pred84235%_ _%lst84236%_)
        (let ()
          (let* ((_%pred84239%_ _%pred84235%_)
                 (_%$e84248%_
                  (let ()
                    (declare (not safe))
                    (__memf _%pred84239%_ _%lst84236%_))))
            (if _%$e84248%_
                (let () (declare (not safe)) (##car _%$e84248%_))
                (let () '#f))))))
    (define memf
      (lambda (_%proc84220%_ _%lst84221%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84220%_))
              (let ((_%proc84225%_ _%proc84220%_))
                (declare (not safe))
                (__memf _%proc84225%_ _%lst84221%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@486.13-486.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84220%_)
                '#!void)))))
    (define __memf
      (lambda (_%proc84170%_ _%lst84171%_)
        (let ((_%proc84174%_ _%proc84170%_))
          (let _%lp84183%_ ((_%rest84185%_ _%lst84171%_))
            (let* ((_%rest8418684194%_ _%rest84185%_)
                   (_%else8418884202%_ (lambda () '#f))
                   (_%K8419084208%_
                    (lambda (_%tl84205%_ _%hd84206%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84174%_ _%hd84206%_))
                          _%rest84185%_
                          (let ()
                            (declare (not safe))
                            (_%lp84183%_ _%tl84205%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8418684194%_))
                  (let ((_%hd8419184211%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8418684194%_)))
                        (_%tl8419284213%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8418684194%_))))
                    (let* ((_%hd84216%_ _%hd8419184211%_)
                           (_%tl84218%_ _%tl8419284213%_))
                      (declare (not safe))
                      (_%K8419084208%_ _%tl84218%_ _%hd84216%_)))
                  (let () (declare (not safe)) (_%else8418884202%_))))))))
    (define remove1
      (lambda (_%el84123%_ _%lst84125%_)
        (let _%lp84128%_ ((_%rest84131%_ _%lst84125%_) (_%r84133%_ '()))
          (let* ((_%rest8413584143%_ _%rest84131%_)
                 (_%else8413784151%_ (lambda () _%lst84125%_))
                 (_%K8413984158%_
                  (lambda (_%rest84154%_ _%hd84155%_)
                    (if (equal? _%el84123%_ _%hd84155%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84154%_ _%r84133%_))
                        (let ((__tmp87932 (cons _%hd84155%_ _%r84133%_)))
                          (declare (not safe))
                          (_%lp84128%_ _%rest84154%_ __tmp87932))))))
            (if (let () (declare (not safe)) (##pair? _%rest8413584143%_))
                (let ((_%hd8414084161%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8413584143%_)))
                      (_%tl8414184163%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8413584143%_))))
                  (let* ((_%hd84166%_ _%hd8414084161%_)
                         (_%rest84168%_ _%tl8414184163%_))
                    (declare (not safe))
                    (_%K8413984158%_ _%rest84168%_ _%hd84166%_)))
                (let () (declare (not safe)) (_%else8413784151%_)))))))
    (define remv1
      (lambda (_%el84076%_ _%lst84078%_)
        (let _%lp84081%_ ((_%rest84084%_ _%lst84078%_) (_%r84086%_ '()))
          (let* ((_%rest8408884096%_ _%rest84084%_)
                 (_%else8409084104%_ (lambda () _%lst84078%_))
                 (_%K8409284111%_
                  (lambda (_%rest84107%_ _%hd84108%_)
                    (if (eqv? _%el84076%_ _%hd84108%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84107%_ _%r84086%_))
                        (let ((__tmp87933 (cons _%hd84108%_ _%r84086%_)))
                          (declare (not safe))
                          (_%lp84081%_ _%rest84107%_ __tmp87933))))))
            (if (let () (declare (not safe)) (##pair? _%rest8408884096%_))
                (let ((_%hd8409384114%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8408884096%_)))
                      (_%tl8409484116%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8408884096%_))))
                  (let* ((_%hd84119%_ _%hd8409384114%_)
                         (_%rest84121%_ _%tl8409484116%_))
                    (declare (not safe))
                    (_%K8409284111%_ _%rest84121%_ _%hd84119%_)))
                (let () (declare (not safe)) (_%else8409084104%_)))))))
    (define remq1
      (lambda (_%el84029%_ _%lst84031%_)
        (let _%lp84034%_ ((_%rest84037%_ _%lst84031%_) (_%r84039%_ '()))
          (let* ((_%rest8404184049%_ _%rest84037%_)
                 (_%else8404384057%_ (lambda () _%lst84031%_))
                 (_%K8404584064%_
                  (lambda (_%rest84060%_ _%hd84061%_)
                    (if (eq? _%el84029%_ _%hd84061%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84060%_ _%r84039%_))
                        (let ((__tmp87934 (cons _%hd84061%_ _%r84039%_)))
                          (declare (not safe))
                          (_%lp84034%_ _%rest84060%_ __tmp87934))))))
            (if (let () (declare (not safe)) (##pair? _%rest8404184049%_))
                (let ((_%hd8404684067%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8404184049%_)))
                      (_%tl8404784069%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8404184049%_))))
                  (let* ((_%hd84072%_ _%hd8404684067%_)
                         (_%rest84074%_ _%tl8404784069%_))
                    (declare (not safe))
                    (_%K8404584064%_ _%rest84074%_ _%hd84072%_)))
                (let () (declare (not safe)) (_%else8404384057%_)))))))
    (define remf
      (lambda (_%proc84014%_ _%lst84015%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84014%_))
              (let ((_%proc84019%_ _%proc84014%_))
                (declare (not safe))
                (__remf _%proc84019%_ _%lst84015%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@508.13-508.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84014%_)
                '#!void)))))
    (define __remf
      (lambda (_%proc83963%_ _%lst83964%_)
        (let ((_%proc83967%_ _%proc83963%_))
          (let _%lp83976%_ ((_%rest83978%_ _%lst83964%_) (_%r83979%_ '()))
            (let* ((_%rest8398083988%_ _%rest83978%_)
                   (_%else8398283996%_ (lambda () _%lst83964%_))
                   (_%K8398484002%_
                    (lambda (_%rest83999%_ _%hd84000%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc83967%_ _%hd84000%_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _%rest83999%_ _%r83979%_))
                          (let ((__tmp87935 (cons _%hd84000%_ _%r83979%_)))
                            (declare (not safe))
                            (_%lp83976%_ _%rest83999%_ __tmp87935))))))
              (if (let () (declare (not safe)) (##pair? _%rest8398083988%_))
                  (let ((_%hd8398584005%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8398083988%_)))
                        (_%tl8398684007%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8398083988%_))))
                    (let* ((_%hd84010%_ _%hd8398584005%_)
                           (_%rest84012%_ _%tl8398684007%_))
                      (declare (not safe))
                      (_%K8398484002%_ _%rest84012%_ _%hd84010%_)))
                  (let () (declare (not safe)) (_%else8398283996%_))))))))
    (define 1+
      (lambda (_%x83949%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83949%_))
              (let ((_%x83953%_ _%x83949%_))
                (declare (not safe))
                (__1+ _%x83953%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@517.11-517.12"
                 'contract:
                 'number?
                 'value:
                 _%x83949%_)
                '#!void)))))
    (define __1+
      (lambda (_%x83937%_) (let ((_%x83940%_ _%x83937%_)) (+ _%x83940%_ '1))))
    (define 1-
      (lambda (_%x83923%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x83923%_))
              (let ((_%x83927%_ _%x83923%_))
                (declare (not safe))
                (__1- _%x83927%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@525.11-525.12"
                 'contract:
                 'number?
                 'value:
                 _%x83923%_)
                '#!void)))))
    (define __1-
      (lambda (_%x83911%_) (let ((_%x83914%_ _%x83911%_)) (- _%x83914%_ '1))))
    (define fx1+
      (lambda (_%x83897%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83897%_))
              (let ((_%x83901%_ _%x83897%_))
                (declare (not safe))
                (__fx1+ _%x83901%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@533.13-533.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83897%_)
                '#!void)))))
    (define __fx1+
      (lambda (_%x83885%_)
        (let ((_%x83888%_ _%x83885%_))
          (declare (not safe))
          (##fx+ _%x83888%_ '1))))
    (define fx1-
      (lambda (_%x83871%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83871%_))
              (let ((_%x83875%_ _%x83871%_))
                (declare (not safe))
                (__fx1- _%x83875%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@541.13-541.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83871%_)
                '#!void)))))
    (define __fx1-
      (lambda (_%x83859%_)
        (let ((_%x83862%_ _%x83859%_))
          (declare (not safe))
          (##fx- _%x83862%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83856%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83856%_))
              (let () (declare (not safe)) (##fx>= _%x83856%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83853%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83853%_))
              (let () (declare (not safe)) (##fx> _%x83853%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83850%_)
        (let () (declare (not safe)) (##fx= _%x83850%_ '0))))
    (define fx<0?
      (lambda (_%x83847%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83847%_))
              (let () (declare (not safe)) (##fx< _%x83847%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83844%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83844%_))
              (let () (declare (not safe)) (##fx<= _%x83844%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83841%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83841%_))
              (let ((__tmp87936 (uninterned-symbol? _%x83841%_)))
                (declare (not safe))
                (not __tmp87936))
              '#f))))
    (define display-as-string
      (lambda (_%x83826%_ _%port83827%_)
        (let ()
          (if (output-port? _%port83827%_)
              (let ((_%port83831%_ _%port83827%_))
                (declare (not safe))
                (__display-as-string _%x83826%_ _%port83831%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83827%_)
                '#!void)))))
    (define __display-as-string
      (lambda (_%x83783%_ _%port83784%_)
        (let ((_%port83787%_ _%port83784%_))
          (if (or (let () (declare (not safe)) (string? _%x83783%_))
                  (let () (declare (not safe)) (symbol? _%x83783%_))
                  (let () (declare (not safe)) (keyword? _%x83783%_))
                  (let () (declare (not safe)) (number? _%x83783%_))
                  (let () (declare (not safe)) (char? _%x83783%_)))
              (let () (display _%x83783%_ _%port83787%_))
              (if (let () (declare (not safe)) (pair? _%x83783%_))
                  (let ()
                    (let ((__tmp87937 (car _%x83783%_)))
                      (declare (not safe))
                      (__display-as-string __tmp87937 _%port83787%_))
                    (let ((__tmp87938 (cdr _%x83783%_)))
                      (declare (not safe))
                      (__display-as-string __tmp87938 _%port83787%_)))
                  (if (let () (declare (not safe)) (vector? _%x83783%_))
                      (let ()
                        (vector-for-each
                         (lambda (_%g8381083812%_)
                           (let ()
                             (declare (not safe))
                             (__display-as-string
                              _%g8381083812%_
                              _%port83787%_)))
                         _%x83783%_))
                      (if (or (let () (declare (not safe)) (null? _%x83783%_))
                              (let ()
                                (declare (not safe))
                                (eq? _%x83783%_ '#!void))
                              (let ()
                                (declare (not safe))
                                (eof-object? _%x83783%_))
                              (let ()
                                (declare (not safe))
                                (boolean? _%x83783%_)))
                          (let () '#!void)
                          (let ()
                            (error '"cannot convert as string" _%x83783%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x83766%_)
        (if (let () (declare (not safe)) (string? _%x83766%_))
            (let () _%x83766%_)
            (if (let () (declare (not safe)) (symbol? _%x83766%_))
                (let () (symbol->string _%x83766%_))
                (if (let () (declare (not safe)) (keyword? _%x83766%_))
                    (let () (keyword->string _%x83766%_))
                    (if (let () (declare (not safe)) (number? _%x83766%_))
                        (let () (number->string _%x83766%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8377283774%_)
                             (let ()
                               (declare (not safe))
                               (__display-as-string
                                _%x83766%_
                                _%g8377283774%_)))))))))))
    (define as-string__1
      (lambda _%args83777%_
        (call-with-output-string
         '()
         (lambda (_%g8377883780%_)
           (let ()
             (declare (not safe))
             (__display-as-string _%args83777%_ _%g8377883780%_))))))
    (define as-string
      (lambda _g87940_
        (let ((_g87939_ (let () (declare (not safe)) (##length _g87940_))))
          (cond ((let () (declare (not safe)) (##fx= _g87939_ 1))
                 (apply (lambda (_%x83766%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83766%_)))
                        _g87940_))
                (#t (apply as-string__1 _g87940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g87940_))))))
    (define make-symbol__0
      (lambda (_%x83762%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83762%_))
            _%x83762%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83762%_))))))
    (define make-symbol__1
      (lambda _%args83764%_ (string->symbol (apply as-string _%args83764%_))))
    (define make-symbol
      (lambda _g87942_
        (let ((_g87941_ (let () (declare (not safe)) (##length _g87942_))))
          (cond ((let () (declare (not safe)) (##fx= _g87941_ 1))
                 (apply (lambda (_%x83762%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83762%_)))
                        _g87942_))
                (#t (apply make-symbol__1 _g87942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g87942_))))))
    (define make-keyword__0
      (lambda (_%x83758%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83758%_))
            _%x83758%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83758%_))))))
    (define make-keyword__1
      (lambda _%args83760%_ (string->keyword (apply as-string _%args83760%_))))
    (define make-keyword
      (lambda _g87944_
        (let ((_g87943_ (let () (declare (not safe)) (##length _g87944_))))
          (cond ((let () (declare (not safe)) (##fx= _g87943_ 1))
                 (apply (lambda (_%x83758%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83758%_)))
                        _g87944_))
                (#t (apply make-keyword__1 _g87944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g87944_))))))
    (define interned-keyword?
      (lambda (_%x83755%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83755%_))
              (let ((__tmp87945 (uninterned-keyword? _%x83755%_)))
                (declare (not safe))
                (not __tmp87945))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83741%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83741%_))
              (let ((_%sym83745%_ _%sym83741%_))
                (declare (not safe))
                (__symbol->keyword _%sym83745%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@612.24-612.27"
                 'contract:
                 'symbol?
                 'value:
                 _%sym83741%_)
                '#!void)))))
    (define __symbol->keyword
      (lambda (_%sym83729%_)
        (let ((_%sym83732%_ _%sym83729%_))
          (if (uninterned-symbol? _%sym83732%_)
              (let ((__tmp87946
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83732%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp87946))
              (let ((__tmp87947
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83732%_))))
                (declare (not safe))
                (##string->keyword __tmp87947))))))
    (define keyword->symbol
      (lambda (_%sym83715%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83715%_))
              (let ((_%sym83719%_ _%sym83715%_))
                (declare (not safe))
                (__keyword->symbol _%sym83719%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@618.24-618.27"
                 'contract:
                 'keyword?
                 'value:
                 _%sym83715%_)
                '#!void)))))
    (define __keyword->symbol
      (lambda (_%sym83703%_)
        (let ((_%sym83706%_ _%sym83703%_))
          (if (uninterned-keyword? _%sym83706%_)
              (let ((__tmp87948
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83706%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp87948))
              (let ((__tmp87949
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83706%_))))
                (declare (not safe))
                (##string->symbol __tmp87949))))))
    (define bytes->string__%
      (lambda (_%bstr83668%_ _%enc83669%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83668%_))
              (let ((_%bstr83673%_ _%bstr83668%_))
                (if (let () (declare (not safe)) (symbol? _%enc83669%_))
                    (let ((_%enc83683%_ _%enc83669%_))
                      (declare (not safe))
                      (__bytes->string__% _%bstr83673%_ _%enc83683%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83669%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@624.22-624.26"
                 'contract:
                 'u8vector?
                 'value:
                 _%bstr83668%_)
                '#!void)))))
    (define bytes->string__0
      (lambda (_%bstr83696%_)
        (let ((_%enc83698%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83696%_ _%enc83698%_))))
    (define bytes->string
      (lambda _g87951_
        (let ((_g87950_ (let () (declare (not safe)) (##length _g87951_))))
          (cond ((let () (declare (not safe)) (##fx= _g87950_ 1))
                 (apply (lambda (_%bstr83696%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83696%_)))
                        _g87951_))
                ((let () (declare (not safe)) (##fx= _g87950_ 2))
                 (apply (lambda (_%bstr83700%_ _%enc83701%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83700%_ _%enc83701%_)))
                        _g87951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g87951_))))))
    (define __bytes->string__%
      (lambda (_%bstr83627%_ _%enc83628%_)
        (let ()
          (let* ((_%bstr83631%_ _%bstr83627%_) (_%enc83639%_ _%enc83628%_))
            (if (eq? _%enc83639%_ 'UTF-8)
                (let () (declare (not safe)) (##utf8->string _%bstr83631%_))
                (let* ((_%in83648%_
                        (open-input-u8vector
                         (cons 'char-encoding:
                               (cons _%enc83639%_
                                     (cons 'init: (cons _%bstr83631%_ '()))))))
                       (_%len83650%_
                        (let ()
                          (declare (not safe))
                          (##u8vector-length _%bstr83631%_)))
                       (_%out83652%_
                        (let ()
                          (declare (not safe))
                          (##make-string _%len83650%_)))
                       (_%n83654%_
                        (read-substring
                         _%out83652%_
                         '0
                         _%len83650%_
                         _%in83648%_)))
                  (string-shrink! _%out83652%_ _%n83654%_)
                  _%out83652%_))))))
    (define __bytes->string__0
      (lambda (_%bstr83660%_)
        (let ((_%enc83662%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83660%_ _%enc83662%_))))
    (define __bytes->string
      (lambda _g87953_
        (let ((_g87952_ (let () (declare (not safe)) (##length _g87953_))))
          (cond ((let () (declare (not safe)) (##fx= _g87952_ 1))
                 (apply (lambda (_%bstr83660%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83660%_)))
                        _g87953_))
                ((let () (declare (not safe)) (##fx= _g87952_ 2))
                 (apply (lambda (_%bstr83664%_ _%enc83665%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83664%_ _%enc83665%_)))
                        _g87953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g87953_))))))
    (define string->bytes__%
      (lambda (_%str83591%_ _%enc83592%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83591%_))
              (let ((_%str83596%_ _%str83591%_))
                (if (let () (declare (not safe)) (symbol? _%enc83592%_))
                    (let ((_%enc83606%_ _%enc83592%_))
                      (declare (not safe))
                      (__string->bytes__% _%str83596%_ _%enc83606%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83592%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@636.22-636.25"
                 'contract:
                 'string?
                 'value:
                 _%str83591%_)
                '#!void)))))
    (define string->bytes__0
      (lambda (_%str83619%_)
        (let ((_%enc83621%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83619%_ _%enc83621%_))))
    (define string->bytes
      (lambda _g87955_
        (let ((_g87954_ (let () (declare (not safe)) (##length _g87955_))))
          (cond ((let () (declare (not safe)) (##fx= _g87954_ 1))
                 (apply (lambda (_%str83619%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83619%_)))
                        _g87955_))
                ((let () (declare (not safe)) (##fx= _g87954_ 2))
                 (apply (lambda (_%str83623%_ _%enc83624%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83623%_ _%enc83624%_)))
                        _g87955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g87955_))))))
    (define __string->bytes__%
      (lambda (_%str83559%_ _%enc83560%_)
        (let ()
          (let* ((_%str83563%_ _%str83559%_) (_%enc83571%_ _%enc83560%_))
            (if (eq? _%enc83571%_ 'UTF-8)
                (let () (declare (not safe)) (##string->utf8 _%str83563%_))
                (let ((__tmp87956
                       (let ()
                         (declare (not safe))
                         (##string-length _%str83563%_))))
                  (declare (not safe))
                  (__substring->bytes
                   _%str83563%_
                   '0
                   __tmp87956
                   _%enc83571%_)))))))
    (define __string->bytes__0
      (lambda (_%str83583%_)
        (let ((_%enc83585%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83583%_ _%enc83585%_))))
    (define __string->bytes
      (lambda _g87958_
        (let ((_g87957_ (let () (declare (not safe)) (##length _g87958_))))
          (cond ((let () (declare (not safe)) (##fx= _g87957_ 1))
                 (apply (lambda (_%str83583%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83583%_)))
                        _g87958_))
                ((let () (declare (not safe)) (##fx= _g87957_ 2))
                 (apply (lambda (_%str83587%_ _%enc83588%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83587%_ _%enc83588%_)))
                        _g87958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g87958_))))))
    (define substring->bytes__%
      (lambda (_%str83507%_ _%start83508%_ _%end83509%_ _%enc83510%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83507%_))
              (let ((_%str83514%_ _%str83507%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%start83508%_))
                    (let ((_%start83524%_ _%start83508%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%end83509%_))
                          (let ((_%end83534%_ _%end83509%_))
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83514%_
                             _%start83524%_
                             _%end83534%_
                             _%enc83510%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end83509%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start83508%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@643.25-643.28"
                 'contract:
                 'string?
                 'value:
                 _%str83507%_)
                '#!void)))))
    (define substring->bytes__0
      (lambda (_%str83547%_ _%start83548%_ _%end83549%_)
        (let ((_%enc83551%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83547%_
           _%start83548%_
           _%end83549%_
           _%enc83551%_))))
    (define substring->bytes
      (lambda _g87960_
        (let ((_g87959_ (let () (declare (not safe)) (##length _g87960_))))
          (cond ((let () (declare (not safe)) (##fx= _g87959_ 3))
                 (apply (lambda (_%str83547%_ _%start83548%_ _%end83549%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83547%_
                             _%start83548%_
                             _%end83549%_)))
                        _g87960_))
                ((let () (declare (not safe)) (##fx= _g87959_ 4))
                 (apply (lambda (_%str83553%_
                                 _%start83554%_
                                 _%end83555%_
                                 _%enc83556%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83553%_
                             _%start83554%_
                             _%end83555%_
                             _%enc83556%_)))
                        _g87960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g87960_))))))
    (define __substring->bytes__%
      (lambda (_%str83459%_ _%start83460%_ _%end83461%_ _%enc83462%_)
        (let ((_%str83465%_ _%str83459%_))
          (let* ((_%start83473%_ _%start83460%_) (_%end83481%_ _%end83461%_))
            (if (eq? _%enc83462%_ 'UTF-8)
                (string->utf8 _%str83465%_ _%start83473%_ _%end83481%_)
                (let ((_%out83490%_
                       (open-output-u8vector
                        (cons 'char-encoding: (cons _%enc83462%_ '())))))
                  (write-substring
                   _%str83465%_
                   _%start83473%_
                   _%end83481%_
                   _%out83490%_)
                  (get-output-u8vector _%out83490%_)))))))
    (define __substring->bytes__0
      (lambda (_%str83495%_ _%start83496%_ _%end83497%_)
        (let ((_%enc83499%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str83495%_
           _%start83496%_
           _%end83497%_
           _%enc83499%_))))
    (define __substring->bytes
      (lambda _g87962_
        (let ((_g87961_ (let () (declare (not safe)) (##length _g87962_))))
          (cond ((let () (declare (not safe)) (##fx= _g87961_ 3))
                 (apply (lambda (_%str83495%_ _%start83496%_ _%end83497%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str83495%_
                             _%start83496%_
                             _%end83497%_)))
                        _g87962_))
                ((let () (declare (not safe)) (##fx= _g87961_ 4))
                 (apply (lambda (_%str83501%_
                                 _%start83502%_
                                 _%end83503%_
                                 _%enc83504%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83501%_
                             _%start83502%_
                             _%end83503%_
                             _%enc83504%_)))
                        _g87962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g87962_))))))
    (define string-empty?
      (lambda (_%str83444%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83444%_))
              (let ((_%str83448%_ _%str83444%_))
                (declare (not safe))
                (__string-empty? _%str83448%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@654.22-654.25"
                 'contract:
                 'string?
                 'value:
                 _%str83444%_)
                '#!void)))))
    (define __string-empty?
      (lambda (_%str83432%_)
        (let ()
          (let* ((_%str83435%_ _%str83432%_)
                 (__tmp87963
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83435%_))))
            (declare (not safe))
            (##fxzero? __tmp87963)))))
    (define string-index__%
      (lambda (_%str83384%_ _%char83385%_ _%start83386%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83384%_))
              (let ((_%str83390%_ _%str83384%_))
                (if (let () (declare (not safe)) (char? _%char83385%_))
                    (let ((_%char83400%_ _%char83385%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%start83386%_))
                          (let ((_%start83410%_ _%start83386%_))
                            (declare (not safe))
                            (__string-index__%
                             _%str83390%_
                             _%char83400%_
                             _%start83410%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start83386%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char83385%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@658.21-658.24"
                 'contract:
                 'string?
                 'value:
                 _%str83384%_)
                '#!void)))))
    (define string-index__0
      (lambda (_%str83423%_ _%char83424%_)
        (let ((_%start83426%_ '0))
          (declare (not safe))
          (string-index__% _%str83423%_ _%char83424%_ _%start83426%_))))
    (define string-index
      (lambda _g87965_
        (let ((_g87964_ (let () (declare (not safe)) (##length _g87965_))))
          (cond ((let () (declare (not safe)) (##fx= _g87964_ 2))
                 (apply (lambda (_%str83423%_ _%char83424%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str83423%_ _%char83424%_)))
                        _g87965_))
                ((let () (declare (not safe)) (##fx= _g87964_ 3))
                 (apply (lambda (_%str83428%_ _%char83429%_ _%start83430%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str83428%_
                             _%char83429%_
                             _%start83430%_)))
                        _g87965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g87965_))))))
    (define __string-index__%
      (lambda (_%str83323%_ _%char83324%_ _%start83325%_)
        (let ()
          (let* ((_%str83328%_ _%str83323%_) (_%char83336%_ _%char83324%_))
            (let* ((_%start83344%_ _%start83325%_)
                   (_%len83353%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str83328%_))))
              (let _%lp83355%_ ((_%k83357%_ _%start83344%_))
                (let ((_%k83359%_ _%k83357%_))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%k83359%_ _%len83353%_))
                      (if (eq? _%char83336%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str83328%_ _%k83359%_)))
                          _%k83359%_
                          (let ((__tmp87966
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k83359%_ '1))))
                            (declare (not safe))
                            (_%lp83355%_ __tmp87966)))
                      '#f))))))))
    (define __string-index__0
      (lambda (_%str83374%_ _%char83375%_)
        (let ((_%start83377%_ '0))
          (declare (not safe))
          (__string-index__% _%str83374%_ _%char83375%_ _%start83377%_))))
    (define __string-index
      (lambda _g87968_
        (let ((_g87967_ (let () (declare (not safe)) (##length _g87968_))))
          (cond ((let () (declare (not safe)) (##fx= _g87967_ 2))
                 (apply (lambda (_%str83374%_ _%char83375%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str83374%_ _%char83375%_)))
                        _g87968_))
                ((let () (declare (not safe)) (##fx= _g87967_ 3))
                 (apply (lambda (_%str83379%_ _%char83380%_ _%start83381%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str83379%_
                             _%char83380%_
                             _%start83381%_)))
                        _g87968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g87968_))))))
    (define string-rindex__%
      (lambda (_%str83284%_ _%char83285%_ _%start83286%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83284%_))
              (let ((_%str83290%_ _%str83284%_))
                (if (let () (declare (not safe)) (char? _%char83285%_))
                    (let ((_%char83300%_ _%char83285%_))
                      (declare (not safe))
                      (__string-rindex__%
                       _%str83290%_
                       _%char83300%_
                       _%start83286%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char83285%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@669.22-669.25"
                 'contract:
                 'string?
                 'value:
                 _%str83284%_)
                '#!void)))))
    (define string-rindex__0
      (lambda (_%str83313%_ _%char83314%_)
        (let ((_%start83316%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str83313%_ _%char83314%_ _%start83316%_))))
    (define string-rindex
      (lambda _g87970_
        (let ((_g87969_ (let () (declare (not safe)) (##length _g87970_))))
          (cond ((let () (declare (not safe)) (##fx= _g87969_ 2))
                 (apply (lambda (_%str83313%_ _%char83314%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str83313%_ _%char83314%_)))
                        _g87970_))
                ((let () (declare (not safe)) (##fx= _g87969_ 3))
                 (apply (lambda (_%str83318%_ _%char83319%_ _%start83320%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str83318%_
                             _%char83319%_
                             _%start83320%_)))
                        _g87970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g87970_))))))
    (define __string-rindex__%
      (lambda (_%str83226%_ _%char83227%_ _%start83228%_)
        (let ()
          (let* ((_%str83231%_ _%str83226%_) (_%char83239%_ _%char83227%_))
            (let* ((_%len83248%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str83231%_)))
                   (_%start83250%_
                    (if (let () (declare (not safe)) (fixnum? _%start83228%_))
                        _%start83228%_
                        (let ()
                          (declare (not safe))
                          (##fx- _%len83248%_ '1)))))
              (let _%lp83253%_ ((_%k83255%_ _%start83250%_))
                (let ((_%k83257%_ _%k83255%_))
                  (if (let () (declare (not safe)) (##fx>= _%k83257%_ '0))
                      (if (eq? _%char83239%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str83231%_ _%k83257%_)))
                          _%k83257%_
                          (let ((__tmp87971
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%k83257%_ '1))))
                            (declare (not safe))
                            (_%lp83253%_ __tmp87971)))
                      '#f))))))))
    (define __string-rindex__0
      (lambda (_%str83274%_ _%char83275%_)
        (let ((_%start83277%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str83274%_ _%char83275%_ _%start83277%_))))
    (define __string-rindex
      (lambda _g87973_
        (let ((_g87972_ (let () (declare (not safe)) (##length _g87973_))))
          (cond ((let () (declare (not safe)) (##fx= _g87972_ 2))
                 (apply (lambda (_%str83274%_ _%char83275%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str83274%_ _%char83275%_)))
                        _g87973_))
                ((let () (declare (not safe)) (##fx= _g87972_ 3))
                 (apply (lambda (_%str83279%_ _%char83280%_ _%start83281%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str83279%_
                             _%char83280%_
                             _%start83281%_)))
                        _g87973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g87973_))))))
    (define string-split
      (lambda (_%str83200%_ _%char83201%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83200%_))
              (let ((_%str83205%_ _%str83200%_))
                (if (let () (declare (not safe)) (char? _%char83201%_))
                    (let ((_%char83215%_ _%char83201%_))
                      (declare (not safe))
                      (__string-split _%str83205%_ _%char83215%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char83201%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@681.21-681.24"
                 'contract:
                 'string?
                 'value:
                 _%str83200%_)
                '#!void)))))
    (define __string-split
      (lambda (_%str83141%_ _%char83142%_)
        (let ((_%str83145%_ _%str83141%_))
          (let* ((_%char83153%_ _%char83142%_)
                 (_%len83162%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83145%_))))
            (let _%lp83164%_ ((_%start83166%_ '0) (_%r83167%_ '()))
              (let ()
                (let* ((_%start83170%_ _%start83166%_)
                       (_%$e83183%_
                        (let ()
                          (declare (not safe))
                          (__string-index
                           _%str83145%_
                           _%char83153%_
                           _%start83170%_))))
                  (if _%$e83183%_
                      ((lambda (_%end83186%_)
                         (let ((_%end83188%_ _%end83186%_))
                           (let ((__tmp87975
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%end83188%_ '1)))
                                 (__tmp87974
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _%str83145%_
                                           _%start83170%_
                                           _%end83188%_))
                                        _%r83167%_)))
                             (declare (not safe))
                             (_%lp83164%_ __tmp87975 __tmp87974))))
                       _%$e83183%_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _%start83170%_ _%len83162%_))
                          (let ((__tmp87976
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _%str83145%_
                                          _%start83170%_
                                          _%len83162%_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp87976 _%r83167%_))
                          (let () (reverse! _%r83167%_)))))))))))
    (define string-join
      (lambda (_%strs82991%_ _%join82992%_)
        (let ()
          (letrec ((_%join-length82995%_
                    (lambda (_%strs83079%_ _%jlen83080%_)
                      (let _%lp83082%_ ((_%rest83084%_ _%strs83079%_)
                                        (_%len83085%_ '0))
                        (let ((_%len83087%_ _%len83085%_))
                          (let* ((_%rest8309583103%_ _%rest83084%_)
                                 (_%else8309783111%_ (lambda () '0))
                                 (_%K8309983129%_
                                  (lambda (_%rest83114%_ _%hd83115%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd83115%_))
                                        (let ((_%hd83117%_ _%hd83115%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest83114%_))
                                              (let ((__tmp87977
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd83117%_))
                                                          _%jlen83080%_
                                                          _%len83087%_)))
                                                (declare (not safe))
                                                (_%lp83082%_
                                                 _%rest83114%_
                                                 __tmp87977))
                                              (let ((__tmp87978
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd83117%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp87978
                                                       _%len83087%_))))
                                        (error '"expected string"
                                               _%hd83115%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8309583103%_))
                                (let ((_%hd8310083132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8309583103%_)))
                                      (_%tl8310183134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8309583103%_))))
                                  (let* ((_%hd83137%_ _%hd8310083132%_)
                                         (_%rest83139%_ _%tl8310183134%_))
                                    (declare (not safe))
                                    (_%K8309983129%_
                                     _%rest83139%_
                                     _%hd83137%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8309783111%_)))))))))
            (let* ((_%join83000%_
                    (if (let () (declare (not safe)) (char? _%join82992%_))
                        (let () (declare (not safe)) (##string _%join82992%_))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join82992%_))
                            (let () _%join82992%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join82992%_)))))
                   (_%jlen83002%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join83000%_)))
                   (_%olen83004%_
                    (let ()
                      (declare (not safe))
                      (_%join-length82995%_ _%strs82991%_ _%jlen83002%_)))
                   (_%ostr83006%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen83004%_))))
              (let _%lp83009%_ ((_%rest83011%_ _%strs82991%_) (_%k83012%_ '0))
                (let ((_%k83015%_ _%k83012%_))
                  (let* ((_%rest8303183039%_ _%rest83011%_)
                         (_%else8303383047%_ (lambda () '""))
                         (_%K8303583067%_
                          (lambda (_%rest83050%_ _%hd83051%_)
                            (let* ((_%hd83053%_ _%hd83051%_)
                                   (_%hdlen83065%_
                                    (let ()
                                      (declare (not safe))
                                      (##string-length _%hd83053%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%rest83050%_))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83053%_
                                       '0
                                       _%hdlen83065%_
                                       _%ostr83006%_
                                       _%k83015%_))
                                    (let ((__tmp87979
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83015%_
                                                    _%hdlen83065%_))))
                                      (declare (not safe))
                                      (##substring-move!
                                       _%join83000%_
                                       '0
                                       _%jlen83002%_
                                       _%ostr83006%_
                                       __tmp87979))
                                    (let ((__tmp87980
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83015%_
                                                    _%hdlen83065%_
                                                    _%jlen83002%_))))
                                      (declare (not safe))
                                      (_%lp83009%_ _%rest83050%_ __tmp87980)))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83053%_
                                       '0
                                       _%hdlen83065%_
                                       _%ostr83006%_
                                       _%k83015%_))
                                    _%ostr83006%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8303183039%_))
                        (let ((_%hd8303683070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8303183039%_)))
                              (_%tl8303783072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8303183039%_))))
                          (let* ((_%hd83075%_ _%hd8303683070%_)
                                 (_%rest83077%_ _%tl8303783072%_))
                            (declare (not safe))
                            (_%K8303583067%_ _%rest83077%_ _%hd83075%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8303383047%_)))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82917%_ _%port82918%_ _%start82919%_ _%end82920%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82917%_))
              (let ((_%bytes82924%_ _%bytes82917%_))
                (if (input-port? _%port82918%_)
                    (let ((_%port82934%_ _%port82918%_))
                      (if ((lambda (_%o82943%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82943%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82943%_ '0))
                                  (let ((__tmp87981
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82924%_))))
                                    (declare (not safe))
                                    (##fx< _%o82943%_ __tmp87981))))
                           _%start82919%_)
                          (let ((_%start82947%_ _%start82919%_))
                            (if ((lambda (_%o82956%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82956%_))
                                        (fx<= _%start82947%_
                                              _%o82956%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82924%_)))))
                                 _%end82920%_)
                                (let ((_%end82960%_ _%end82920%_))
                                  (declare (not safe))
                                  (__read-u8vector__%
                                   _%bytes82924%_
                                   _%port82934%_
                                   _%start82947%_
                                   _%end82960%_))
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
                                   _%end82920%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82919%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82918%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@744.22-744.27"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82917%_)
                '#!void)))))
    (define read-u8vector__0
      (lambda (_%bytes82973%_ _%port82974%_)
        (let* ((_%start82976%_ '0)
               (_%end82978%_ (u8vector-length _%bytes82973%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82973%_
           _%port82974%_
           _%start82976%_
           _%end82978%_))))
    (define read-u8vector__1
      (lambda (_%bytes82980%_ _%port82981%_ _%start82982%_)
        (let ((_%end82984%_ (u8vector-length _%bytes82980%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes82980%_
           _%port82981%_
           _%start82982%_
           _%end82984%_))))
    (define read-u8vector
      (lambda _g87983_
        (let ((_g87982_ (let () (declare (not safe)) (##length _g87983_))))
          (cond ((let () (declare (not safe)) (##fx= _g87982_ 2))
                 (apply (lambda (_%bytes82973%_ _%port82974%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes82973%_ _%port82974%_)))
                        _g87983_))
                ((let () (declare (not safe)) (##fx= _g87982_ 3))
                 (apply (lambda (_%bytes82980%_ _%port82981%_ _%start82982%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes82980%_
                             _%port82981%_
                             _%start82982%_)))
                        _g87983_))
                ((let () (declare (not safe)) (##fx= _g87982_ 4))
                 (apply (lambda (_%bytes82986%_
                                 _%port82987%_
                                 _%start82988%_
                                 _%end82989%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes82986%_
                             _%port82987%_
                             _%start82988%_
                             _%end82989%_)))
                        _g87983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g87983_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82856%_ _%port82857%_ _%start82858%_ _%end82859%_)
        (let ()
          (let* ((_%bytes82862%_ _%bytes82856%_) (_%port82870%_ _%port82857%_))
            (let* ((_%start82878%_ _%start82858%_) (_%end82886%_ _%end82859%_))
              (declare (not safe))
              (##read-subu8vector
               _%bytes82862%_
               _%start82878%_
               _%end82886%_
               _%port82870%_))))))
    (define __read-u8vector__0
      (lambda (_%bytes82898%_ _%port82899%_)
        (let* ((_%start82901%_ '0)
               (_%end82903%_ (u8vector-length _%bytes82898%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82898%_
           _%port82899%_
           _%start82901%_
           _%end82903%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82905%_ _%port82906%_ _%start82907%_)
        (let ((_%end82909%_ (u8vector-length _%bytes82905%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82905%_
           _%port82906%_
           _%start82907%_
           _%end82909%_))))
    (define __read-u8vector
      (lambda _g87985_
        (let ((_g87984_ (let () (declare (not safe)) (##length _g87985_))))
          (cond ((let () (declare (not safe)) (##fx= _g87984_ 2))
                 (apply (lambda (_%bytes82898%_ _%port82899%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82898%_ _%port82899%_)))
                        _g87985_))
                ((let () (declare (not safe)) (##fx= _g87984_ 3))
                 (apply (lambda (_%bytes82905%_ _%port82906%_ _%start82907%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82905%_
                             _%port82906%_
                             _%start82907%_)))
                        _g87985_))
                ((let () (declare (not safe)) (##fx= _g87984_ 4))
                 (apply (lambda (_%bytes82911%_
                                 _%port82912%_
                                 _%start82913%_
                                 _%end82914%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82911%_
                             _%port82912%_
                             _%start82913%_
                             _%end82914%_)))
                        _g87985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g87985_))))))
    (define write-u8vector__%
      (lambda (_%bytes82781%_ _%port82782%_ _%start82783%_ _%end82784%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82781%_))
              (let ((_%bytes82788%_ _%bytes82781%_))
                (if (output-port? _%port82782%_)
                    (let ((_%port82798%_ _%port82782%_))
                      (if ((lambda (_%o82807%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82807%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82807%_ '0))
                                  (let ((__tmp87986
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82788%_))))
                                    (declare (not safe))
                                    (##fx< _%o82807%_ __tmp87986))))
                           _%start82783%_)
                          (let ((_%start82811%_ _%start82783%_))
                            (if ((lambda (_%o82820%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82820%_))
                                        (fx<= _%start82811%_
                                              _%o82820%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82788%_)))))
                                 _%end82784%_)
                                (let ((_%end82824%_ _%end82784%_))
                                  (declare (not safe))
                                  (__write-u8vector__%
                                   _%bytes82788%_
                                   _%port82798%_
                                   _%start82811%_
                                   _%end82824%_))
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
                                   _%end82784%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82783%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82782%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@754.23-754.28"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82781%_)
                '#!void)))))
    (define write-u8vector__0
      (lambda (_%bytes82837%_ _%port82838%_)
        (let* ((_%start82840%_ '0)
               (_%end82842%_ (u8vector-length _%bytes82837%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82837%_
           _%port82838%_
           _%start82840%_
           _%end82842%_))))
    (define write-u8vector__1
      (lambda (_%bytes82844%_ _%port82845%_ _%start82846%_)
        (let ((_%end82848%_ (u8vector-length _%bytes82844%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82844%_
           _%port82845%_
           _%start82846%_
           _%end82848%_))))
    (define write-u8vector
      (lambda _g87988_
        (let ((_g87987_ (let () (declare (not safe)) (##length _g87988_))))
          (cond ((let () (declare (not safe)) (##fx= _g87987_ 2))
                 (apply (lambda (_%bytes82837%_ _%port82838%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82837%_ _%port82838%_)))
                        _g87988_))
                ((let () (declare (not safe)) (##fx= _g87987_ 3))
                 (apply (lambda (_%bytes82844%_ _%port82845%_ _%start82846%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82844%_
                             _%port82845%_
                             _%start82846%_)))
                        _g87988_))
                ((let () (declare (not safe)) (##fx= _g87987_ 4))
                 (apply (lambda (_%bytes82850%_
                                 _%port82851%_
                                 _%start82852%_
                                 _%end82853%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82850%_
                             _%port82851%_
                             _%start82852%_
                             _%end82853%_)))
                        _g87988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g87988_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82720%_ _%port82721%_ _%start82722%_ _%end82723%_)
        (let ()
          (let* ((_%bytes82726%_ _%bytes82720%_) (_%port82734%_ _%port82721%_))
            (let* ((_%start82742%_ _%start82722%_) (_%end82750%_ _%end82723%_))
              (declare (not safe))
              (##write-subu8vector
               _%bytes82726%_
               _%start82742%_
               _%end82750%_
               _%port82734%_))))))
    (define __write-u8vector__0
      (lambda (_%bytes82762%_ _%port82763%_)
        (let* ((_%start82765%_ '0)
               (_%end82767%_ (u8vector-length _%bytes82762%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82762%_
           _%port82763%_
           _%start82765%_
           _%end82767%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82769%_ _%port82770%_ _%start82771%_)
        (let ((_%end82773%_ (u8vector-length _%bytes82769%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82769%_
           _%port82770%_
           _%start82771%_
           _%end82773%_))))
    (define __write-u8vector
      (lambda _g87990_
        (let ((_g87989_ (let () (declare (not safe)) (##length _g87990_))))
          (cond ((let () (declare (not safe)) (##fx= _g87989_ 2))
                 (apply (lambda (_%bytes82762%_ _%port82763%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82762%_
                             _%port82763%_)))
                        _g87990_))
                ((let () (declare (not safe)) (##fx= _g87989_ 3))
                 (apply (lambda (_%bytes82769%_ _%port82770%_ _%start82771%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82769%_
                             _%port82770%_
                             _%start82771%_)))
                        _g87990_))
                ((let () (declare (not safe)) (##fx= _g87989_ 4))
                 (apply (lambda (_%bytes82775%_
                                 _%port82776%_
                                 _%start82777%_
                                 _%end82778%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82775%_
                             _%port82776%_
                             _%start82777%_
                             _%end82778%_)))
                        _g87990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g87990_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82688%_
               _%dbg-exprs82689%_
               _%dbg-thunks82690%_
               _%expr82691%_
               _%thunk82692%_)
        (letrec ((_%o82694%_ (current-output-port))
                 (_%e82695%_ (current-error-port))
                 (_%p82696%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82697%_
                  (lambda ()
                    (force-output _%o82694%_)
                    (force-output _%e82695%_)))
                 (_%d82698%_
                  (lambda (_%x82705%_) (display _%x82705%_ _%e82695%_)))
                 (_%w82699%_
                  (lambda (_%x82707%_) (_%p82696%_ _%x82707%_ _%e82695%_)))
                 (_%n82700%_ (lambda () (newline _%e82695%_)))
                 (_%v82701%_
                  (lambda (_%l82710%_)
                    (for-each
                     (lambda (_%x82712%_)
                       (let () (declare (not safe)) (_%d82698%_ '" "))
                       (let () (declare (not safe)) (_%w82699%_ _%x82712%_)))
                     _%l82710%_)
                    (let () (declare (not safe)) (_%n82700%_))))
                 (_%x82702%_
                  (lambda (_%expr82714%_ _%thunk82715%_)
                    (let () (declare (not safe)) (_%f82697%_))
                    (let () (declare (not safe)) (_%d82698%_ '"  "))
                    (let () (declare (not safe)) (_%w82699%_ _%expr82714%_))
                    (let () (declare (not safe)) (_%d82698%_ '" =>"))
                    (call-with-values
                     _%thunk82715%_
                     (lambda _%x82717%_
                       (let () (declare (not safe)) (_%v82701%_ _%x82717%_))
                       (let () (declare (not safe)) (_%f82697%_))
                       (apply values _%x82717%_))))))
          (if _%tag82688%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82688%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82697%_))
                      (let () (declare (not safe)) (_%d82698%_ _%tag82688%_))
                      (let () (declare (not safe)) (_%n82700%_))))
                (for-each _%x82702%_ _%dbg-exprs82689%_ _%dbg-thunks82690%_)
                (if _%thunk82692%_
                    (let ()
                      (declare (not safe))
                      (_%x82702%_ _%expr82691%_ _%thunk82692%_))
                    '#!void))
              (if _%thunk82692%_ (_%thunk82692%_) '#!void)))))))
