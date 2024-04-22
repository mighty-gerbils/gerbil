(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1713631264)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args89377%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args89377%_))
          (newline))))
    (define display*
      (lambda _%args89374%_
        (let () (declare (not safe)) (##for-each display _%args89374%_))))
    (define file-newer?
      (lambda (_%file189349%_ _%file289350%_)
        (if (string? _%file189349%_)
            (let ((_%file189354%_ _%file189349%_))
              (if (string? _%file289350%_)
                  (let ((_%file289364%_ _%file289350%_))
                    (__file-newer? _%file189354%_ _%file289364%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file289350%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file189349%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file189297%_ _%file289298%_)
        (let* ((_%file189301%_ _%file189297%_) (_%file289309%_ _%file289298%_))
          (letrec ((_%modification-time89318%_
                    (lambda (_%file89337%_)
                      (let ((_%file89340%_ _%file89337%_))
                        (_%__modification-time89319%_ _%file89340%_))))
                   (_%__modification-time89319%_
                    (lambda (_%file89321%_)
                      (let* ((_%file89324%_ _%file89321%_)
                             (__tmp91107
                              (let ((__tmp91108
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file89324%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp91108))))
                        (declare (not safe))
                        (##time->seconds __tmp91107)))))
            (let ((__tmp91110 (_%__modification-time89319%_ _%file189301%_))
                  (__tmp91109 (_%__modification-time89319%_ _%file289309%_)))
              (declare (not safe))
              (##fl> __tmp91110 __tmp91109))))))
    (define create-directory*__%
      (lambda (_%dir89262%_ _%perms89263%_)
        (if (string? _%dir89262%_)
            (let ((_%dir89267%_ _%dir89262%_))
              (if (fixnum? _%perms89263%_)
                  (let ((_%perms89277%_ _%perms89263%_))
                    (__create-directory*__% _%dir89267%_ _%perms89277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms89263%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir89262%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir89290%_)
        (let ((_%perms89292%_ '493))
          (create-directory*__% _%dir89290%_ _%perms89292%_))))
    (define create-directory*
      (lambda _g91112_
        (let ((_g91111_ (let () (declare (not safe)) (##length _g91112_))))
          (cond ((let () (declare (not safe)) (##fx= _g91111_ 1))
                 (apply create-directory*__0 _g91112_))
                ((let () (declare (not safe)) (##fx= _g91111_ 2))
                 (apply create-directory*__% _g91112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g91112_))))))
    (define __create-directory*__%
      (lambda (_%dir89186%_ _%perms89187%_)
        (let* ((_%dir89190%_ _%dir89186%_) (_%perms89198%_ _%perms89187%_))
          (letrec ((_%create189207%_
                    (lambda (_%path89239%_)
                      (let ((_%path89242%_ _%path89239%_))
                        (_%__create189208%_ _%path89242%_))))
                   (_%__create189208%_
                    (lambda (_%path89220%_)
                      (let ((_%path89223%_ _%path89220%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path89223%_))
                            (if (eq? (file-type _%path89223%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path89223%_))
                            (if _%perms89198%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path89223%_
                                             (cons 'permissions:
                                                   (cons _%perms89198%_
                                                         '())))))
                                (create-directory _%path89223%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir89190%_))
                '#!void
                (let _%lp89210%_ ((_%start89212%_ '0))
                  (let ((_%$e89214%_
                         (__string-index__% _%dir89190%_ '#\/ _%start89212%_)))
                    (if _%$e89214%_
                        ((lambda (_%x89217%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x89217%_ '0))
                               (_%__create189208%_
                                (substring _%dir89190%_ '0 _%x89217%_))
                               '#!void)
                           (_%lp89210%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x89217%_ '1))))
                         _%$e89214%_)
                        (_%__create189208%_ _%dir89190%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir89254%_)
        (let ((_%perms89256%_ '493))
          (__create-directory*__% _%dir89254%_ _%perms89256%_))))
    (define __create-directory*
      (lambda _g91114_
        (let ((_g91113_ (let () (declare (not safe)) (##length _g91114_))))
          (cond ((let () (declare (not safe)) (##fx= _g91113_ 1))
                 (apply __create-directory*__0 _g91114_))
                ((let () (declare (not safe)) (##fx= _g91113_ 2))
                 (apply __create-directory*__% _g91114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g91114_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore89182%_ '#t))
    (define true? (lambda (_%obj89179%_) (eq? _%obj89179%_ '#t)))
    (define false (lambda _%ignore89176%_ '#f))
    (define void (lambda _%ignore89173%_ '#!void))
    (define void? (lambda (_%obj89170%_) (eq? _%obj89170%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj89167%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj89167%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj89164%_) (eq? _%obj89164%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj89161%_) (eq? _%obj89161%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj89158%_) (eq? _%obj89158%_ '#!optional)))
    (define immediate?
      (lambda (_%obj89153%_)
        (let* ((_%t89156%_ (let () (declare (not safe)) (##type _%obj89153%_)))
               (__tmp91115
                (let () (declare (not safe)) (##fxand _%t89156%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp91115))))
    (define nonnegative-fixnum?
      (lambda (_%obj89150%_)
        (if (fixnum? _%obj89150%_)
            (let () (declare (not safe)) (##fx>= _%obj89150%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj89144%_)
        (let ((_%$e89147%_ (pair? _%obj89144%_)))
          (if _%$e89147%_ _%$e89147%_ (null? _%obj89144%_)))))
    (define values-count
      (lambda (_%obj89141%_)
        (if (let () (declare (not safe)) (##values? _%obj89141%_))
            (let () (declare (not safe)) (##vector-length _%obj89141%_))
            '1)))
    (define values-ref
      (lambda (_%obj89126%_ _%k89127%_)
        (if (fixnum? _%k89127%_)
            (let ((_%k89131%_ _%k89127%_))
              (__values-ref _%obj89126%_ _%k89131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@200.23-200.24"
               'contract:
               'fixnum?
               'value:
               _%k89127%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj89113%_ _%k89114%_)
        (let ((_%k89117%_ _%k89114%_))
          (if (let () (declare (not safe)) (##values? _%obj89113%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj89113%_ _%k89117%_))
              _%obj89113%_))))
    (define values->list
      (lambda (_%obj89110%_)
        (if (let () (declare (not safe)) (##values? _%obj89110%_))
            (let () (declare (not safe)) (##vector->list _%obj89110%_))
            (list _%obj89110%_))))
    (define foldl1
      (lambda (_%f89094%_ _%iv89095%_ _%lst89096%_)
        (if (procedure? _%f89094%_)
            (let ((_%f89100%_ _%f89094%_))
              (__foldl1 _%f89100%_ _%iv89095%_ _%lst89096%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@223.15-223.16"
               'contract:
               'procedure?
               'value:
               _%f89094%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89042%_ _%iv89043%_ _%lst89044%_)
        (let ((_%f89047%_ _%f89042%_))
          (let _%lp89056%_ ((_%rest89058%_ _%lst89044%_)
                            (_%r89059%_ _%iv89043%_))
            (let* ((_%rest8906089068%_ _%rest89058%_)
                   (_%else8906289076%_ (lambda () _%r89059%_))
                   (_%K8906489082%_
                    (lambda (_%rest89079%_ _%x89080%_)
                      (_%lp89056%_
                       _%rest89079%_
                       (let ()
                         (declare (not safe))
                         (_%f89047%_ _%x89080%_ _%r89059%_))))))
              (if (pair? _%rest8906089068%_)
                  (let ((_%hd8906589085%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8906089068%_)))
                        (_%tl8906689087%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8906089068%_))))
                    (let* ((_%x89090%_ _%hd8906589085%_)
                           (_%rest89092%_ _%tl8906689087%_))
                      (_%K8906489082%_ _%rest89092%_ _%x89090%_)))
                  (_%else8906289076%_)))))))
    (define foldl2
      (lambda (_%f89025%_ _%iv89026%_ _%lst189027%_ _%lst289028%_)
        (if (procedure? _%f89025%_)
            (let ((_%f89032%_ _%f89025%_))
              (__foldl2 _%f89032%_ _%iv89026%_ _%lst189027%_ _%lst289028%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@230.15-230.16"
               'contract:
               'procedure?
               'value:
               _%f89025%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f88938%_ _%iv88939%_ _%lst188940%_ _%lst288941%_)
        (let ((_%f88944%_ _%f88938%_))
          (let _%lp88953%_ ((_%rest188955%_ _%lst188940%_)
                            (_%rest288956%_ _%lst288941%_)
                            (_%r88957%_ _%iv88939%_))
            (let* ((_%rest18895888966%_ _%rest188955%_)
                   (_%else8896088974%_ (lambda () _%r88957%_))
                   (_%K8896289013%_
                    (lambda (_%rest188977%_ _%x188978%_)
                      (let* ((_%rest28897988987%_ _%rest288956%_)
                             (_%else8898188995%_ (lambda () _%r88957%_))
                             (_%K8898389001%_
                              (lambda (_%rest288998%_ _%x288999%_)
                                (_%lp88953%_
                                 _%rest188977%_
                                 _%rest288998%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f88944%_
                                    _%x188978%_
                                    _%x288999%_
                                    _%r88957%_))))))
                        (if (pair? _%rest28897988987%_)
                            (let ((_%hd8898489004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28897988987%_)))
                                  (_%tl8898589006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28897988987%_))))
                              (let* ((_%x289009%_ _%hd8898489004%_)
                                     (_%rest289011%_ _%tl8898589006%_))
                                (_%K8898389001%_ _%rest289011%_ _%x289009%_)))
                            (_%else8898188995%_))))))
              (if (pair? _%rest18895888966%_)
                  (let ((_%hd8896389016%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18895888966%_)))
                        (_%tl8896489018%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18895888966%_))))
                    (let* ((_%x189021%_ _%hd8896389016%_)
                           (_%rest189023%_ _%tl8896489018%_))
                      (_%K8896289013%_ _%rest189023%_ _%x189021%_)))
                  (_%else8896088974%_)))))))
    (define foldl
      (lambda _g91117_
        (let ((_g91116_ (let () (declare (not safe)) (##length _g91117_))))
          (cond ((let () (declare (not safe)) (##fx= _g91116_ 3))
                 (apply foldl1 _g91117_))
                ((let () (declare (not safe)) (##fx= _g91116_ 4))
                 (apply foldl2 _g91117_))
                ((let () (declare (not safe)) (##fx>= _g91116_ 4))
                 (apply foldl* _g91117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g91117_))))))
    (define foldl*
      (lambda (_%f88907%_ _%iv88908%_ . _%rest88909%_)
        (if (procedure? _%f88907%_)
            (let ((_%f88913%_ _%f88907%_))
              (declare (not safe))
              (##apply __foldl* _%f88913%_ _%iv88908%_ _%rest88909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@248.15-248.16"
               'contract:
               'procedure?
               'value:
               _%f88907%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f88885%_ _%iv88886%_ . _%rest88887%_)
        (let ((_%f88890%_ _%f88885%_))
          (let _%recur88899%_ ((_%iv88901%_ _%iv88886%_)
                               (_%rest88902%_ _%rest88887%_))
            (if (__andmap1 pair? _%rest88902%_)
                (_%recur88899%_
                 (let ((__tmp91118
                        (__foldr1
                         (lambda (_%xs88904%_ _%r88905%_)
                           (cons (car _%xs88904%_) _%r88905%_))
                         (list _%iv88901%_)
                         _%rest88902%_)))
                   (declare (not safe))
                   (##apply _%f88890%_ __tmp91118))
                 (map cdr _%rest88902%_))
                _%iv88901%_)))))
    (define foldr1
      (lambda (_%f88869%_ _%iv88870%_ _%lst88871%_)
        (if (procedure? _%f88869%_)
            (let ((_%f88875%_ _%f88869%_))
              (__foldr1 _%f88875%_ _%iv88870%_ _%lst88871%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@258.15-258.16"
               'contract:
               'procedure?
               'value:
               _%f88869%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f88818%_ _%iv88819%_ _%lst88820%_)
        (let ((_%f88823%_ _%f88818%_))
          (let _%recur88832%_ ((_%rest88834%_ _%lst88820%_))
            (let* ((_%rest8883588843%_ _%rest88834%_)
                   (_%else8883788851%_ (lambda () _%iv88819%_))
                   (_%K8883988857%_
                    (lambda (_%rest88854%_ _%x88855%_)
                      (let ((__tmp91119 (_%recur88832%_ _%rest88854%_)))
                        (declare (not safe))
                        (_%f88823%_ _%x88855%_ __tmp91119)))))
              (if (pair? _%rest8883588843%_)
                  (let ((_%hd8884088860%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8883588843%_)))
                        (_%tl8884188862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8883588843%_))))
                    (let* ((_%x88865%_ _%hd8884088860%_)
                           (_%rest88867%_ _%tl8884188862%_))
                      (_%K8883988857%_ _%rest88867%_ _%x88865%_)))
                  (_%else8883788851%_)))))))
    (define foldr2
      (lambda (_%f88801%_ _%iv88802%_ _%lst188803%_ _%lst288804%_)
        (if (procedure? _%f88801%_)
            (let ((_%f88808%_ _%f88801%_))
              (__foldr2 _%f88808%_ _%iv88802%_ _%lst188803%_ _%lst288804%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@265.15-265.16"
               'contract:
               'procedure?
               'value:
               _%f88801%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f88715%_ _%iv88716%_ _%lst188717%_ _%lst288718%_)
        (let ((_%f88721%_ _%f88715%_))
          (let _%recur88730%_ ((_%rest188732%_ _%lst188717%_)
                               (_%rest288733%_ _%lst288718%_))
            (let* ((_%rest18873488742%_ _%rest188732%_)
                   (_%else8873688750%_ (lambda () _%iv88716%_))
                   (_%K8873888789%_
                    (lambda (_%rest188753%_ _%x188754%_)
                      (let* ((_%rest28875588763%_ _%rest288733%_)
                             (_%else8875788771%_ (lambda () _%iv88716%_))
                             (_%K8875988777%_
                              (lambda (_%rest288774%_ _%x288775%_)
                                (let ((__tmp91120
                                       (_%recur88730%_
                                        _%rest188753%_
                                        _%rest288774%_)))
                                  (declare (not safe))
                                  (_%f88721%_
                                   _%x188754%_
                                   _%x288775%_
                                   __tmp91120)))))
                        (if (pair? _%rest28875588763%_)
                            (let ((_%hd8876088780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28875588763%_)))
                                  (_%tl8876188782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28875588763%_))))
                              (let* ((_%x288785%_ _%hd8876088780%_)
                                     (_%rest288787%_ _%tl8876188782%_))
                                (_%K8875988777%_ _%rest288787%_ _%x288785%_)))
                            (_%else8875788771%_))))))
              (if (pair? _%rest18873488742%_)
                  (let ((_%hd8873988792%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18873488742%_)))
                        (_%tl8874088794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18873488742%_))))
                    (let* ((_%x188797%_ _%hd8873988792%_)
                           (_%rest188799%_ _%tl8874088794%_))
                      (_%K8873888789%_ _%rest188799%_ _%x188797%_)))
                  (_%else8873688750%_)))))))
    (define foldr
      (lambda _g91122_
        (let ((_g91121_ (let () (declare (not safe)) (##length _g91122_))))
          (cond ((let () (declare (not safe)) (##fx= _g91121_ 3))
                 (apply foldr1 _g91122_))
                ((let () (declare (not safe)) (##fx= _g91121_ 4))
                 (apply foldr2 _g91122_))
                ((let () (declare (not safe)) (##fx>= _g91121_ 4))
                 (apply foldr* _g91122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g91122_))))))
    (define foldr*
      (lambda (_%f88684%_ _%iv88685%_ . _%rest88686%_)
        (if (procedure? _%f88684%_)
            (let ((_%f88690%_ _%f88684%_))
              (declare (not safe))
              (##apply __foldr* _%f88690%_ _%iv88685%_ _%rest88686%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@283.15-283.16"
               'contract:
               'procedure?
               'value:
               _%f88684%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f88663%_ _%iv88664%_ . _%rest88665%_)
        (let ((_%f88668%_ _%f88663%_))
          (let _%recur88677%_ ((_%rest88679%_ _%rest88665%_))
            (if (__andmap1 pair? _%rest88679%_)
                (let ((__tmp91123
                       (__foldr1
                        (lambda (_%xs88681%_ _%r88682%_)
                          (cons (car _%xs88681%_) _%r88682%_))
                        (list (_%recur88677%_ (map cdr _%rest88679%_)))
                        _%rest88679%_)))
                  (declare (not safe))
                  (##apply _%f88668%_ __tmp91123))
                _%iv88664%_)))))
    (define remove-nulls!
      (lambda (_%l88550%_)
        (let* ((_%l8855188564%_ _%l88550%_)
               (_%E8855588568%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8855188564%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8856088653%_
                 (lambda (_%r88651%_) (remove-nulls! _%r88651%_)))
                (_%K8855788640%_
                 (lambda (_%r88580%_)
                   (let _%loop88582%_ ((_%l88584%_ _%l88550%_)
                                       (_%r88585%_ _%r88580%_))
                     (let* ((_%r8858688599%_ _%r88585%_)
                            (_%E8859088603%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8858688599%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8859588630%_
                              (lambda (_%rr88628%_)
                                (let ((__tmp91125 _%l88584%_)
                                      (__tmp91124 (remove-nulls! _%rr88628%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp91125 __tmp91124))))
                             (_%K8859288617%_
                              (lambda (_%rr88615%_)
                                (_%loop88582%_ _%r88585%_ _%rr88615%_)))
                             (_%K8859188608%_ (lambda () '#!void)))
                         (if (pair? _%r8858688599%_)
                             (let ((_%tl8859788635%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8858688599%_)))
                                   (_%hd8859688633%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8858688599%_))))
                               (if (null? _%hd8859688633%_)
                                   (let ((_%rr88638%_ _%tl8859788635%_))
                                     (_%K8859588630%_ _%rr88638%_))
                                   (let ((_%rr88623%_ _%tl8859788635%_))
                                     (_%K8859288617%_ _%rr88623%_))))
                             '#!void))))
                   _%l88550%_))
                (_%K8855688573%_ (lambda () _%l88550%_)))
            (if (pair? _%l8855188564%_)
                (let ((_%tl8856288658%_
                       (let () (declare (not safe)) (##cdr _%l8855188564%_)))
                      (_%hd8856188656%_
                       (let () (declare (not safe)) (##car _%l8855188564%_))))
                  (if (null? _%hd8856188656%_)
                      (let ((_%r88661%_ _%tl8856288658%_))
                        (remove-nulls! _%r88661%_))
                      (let ((_%r88646%_ _%tl8856288658%_))
                        (_%K8855788640%_ _%r88646%_))))
                (_%K8855688573%_))))))
    (define append1!
      (lambda (_%l88535%_ _%x88536%_)
        (let ((_%l288539%_ (cons _%x88536%_ '())))
          (if (pair? _%l88535%_)
              (let ((_%l88541%_ _%l88535%_))
                (let ((__tmp91126
                       (let () (declare (not safe)) (##last-pair _%l88541%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp91126 _%l288539%_))
                _%l88541%_)
              _%l288539%_))))
    (define append-reverse-until
      (lambda (_%pred88519%_ _%rhead88520%_ _%tail88521%_)
        (if (procedure? _%pred88519%_)
            (let ((_%pred88525%_ _%pred88519%_))
              (__append-reverse-until
               _%pred88525%_
               _%rhead88520%_
               _%tail88521%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@323.29-323.33"
               'contract:
               'procedure?
               'value:
               _%pred88519%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred88461%_ _%rhead88462%_ _%tail88463%_)
        (let ((_%pred88466%_ _%pred88461%_))
          (let _%loop88475%_ ((_%rhead88477%_ _%rhead88462%_)
                              (_%tail88478%_ _%tail88463%_))
            (let* ((_%rhead8848088489%_ _%rhead88477%_)
                   (_%E8848388493%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8848088489%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8848788516%_ (lambda () (values '() _%tail88478%_)))
                    (_%K8848488500%_
                     (lambda (_%r88497%_ _%a88498%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred88466%_ _%a88498%_))
                           (values _%rhead88477%_ _%tail88478%_)
                           (_%loop88475%_
                            _%r88497%_
                            (cons _%a88498%_ _%tail88478%_))))))
                (let ((_%try-match8848288512%_
                       (lambda ()
                         (if (pair? _%rhead8848088489%_)
                             (let ((_%tl8848688505%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8848088489%_)))
                                   (_%hd8848588503%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8848088489%_))))
                               (let ((_%a88508%_ _%hd8848588503%_)
                                     (_%r88510%_ _%tl8848688505%_))
                                 (_%K8848488500%_ _%r88510%_ _%a88508%_)))
                             (_%E8848388493%_)))))
                  (if (null? _%rhead8848088489%_)
                      (_%K8848788516%_)
                      (_%try-match8848288512%_)))))))))
    (define andmap1
      (lambda (_%f88446%_ _%lst88447%_)
        (if (procedure? _%f88446%_)
            (let ((_%f88451%_ _%f88446%_)) (__andmap1 _%f88451%_ _%lst88447%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@334.16-334.17"
               'contract:
               'procedure?
               'value:
               _%f88446%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f88395%_ _%lst88396%_)
        (let ((_%f88399%_ _%f88395%_))
          (let _%lp88408%_ ((_%rest88410%_ _%lst88396%_))
            (let* ((_%rest8841288420%_ _%rest88410%_)
                   (_%else8841488428%_ (lambda () '#t))
                   (_%K8841688434%_
                    (lambda (_%rest88431%_ _%x88432%_)
                      (if (let () (declare (not safe)) (_%f88399%_ _%x88432%_))
                          (_%lp88408%_ _%rest88431%_)
                          '#f))))
              (if (pair? _%rest8841288420%_)
                  (let ((_%hd8841788437%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8841288420%_)))
                        (_%tl8841888439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8841288420%_))))
                    (let* ((_%x88442%_ _%hd8841788437%_)
                           (_%rest88444%_ _%tl8841888439%_))
                      (_%K8841688434%_ _%rest88444%_ _%x88442%_)))
                  (_%else8841488428%_)))))))
    (define andmap2
      (lambda (_%f88379%_ _%lst188380%_ _%lst288381%_)
        (if (procedure? _%f88379%_)
            (let ((_%f88385%_ _%f88379%_))
              (__andmap2 _%f88385%_ _%lst188380%_ _%lst288381%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@343.16-343.17"
               'contract:
               'procedure?
               'value:
               _%f88379%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f88293%_ _%lst188294%_ _%lst288295%_)
        (let ((_%f88298%_ _%f88293%_))
          (let _%lp88307%_ ((_%rest188309%_ _%lst188294%_)
                            (_%rest288310%_ _%lst288295%_))
            (let* ((_%rest18831288320%_ _%rest188309%_)
                   (_%else8831488328%_ (lambda () '#t))
                   (_%K8831688367%_
                    (lambda (_%rest188331%_ _%x188332%_)
                      (let* ((_%rest28833388341%_ _%rest288310%_)
                             (_%else8833588349%_ (lambda () '#t))
                             (_%K8833788355%_
                              (lambda (_%rest288352%_ _%x288353%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f88298%_ _%x188332%_ _%x288353%_))
                                    (_%lp88307%_ _%rest188331%_ _%rest288352%_)
                                    '#f))))
                        (if (pair? _%rest28833388341%_)
                            (let ((_%hd8833888358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28833388341%_)))
                                  (_%tl8833988360%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28833388341%_))))
                              (let* ((_%x288363%_ _%hd8833888358%_)
                                     (_%rest288365%_ _%tl8833988360%_))
                                (_%K8833788355%_ _%rest288365%_ _%x288363%_)))
                            (_%else8833588349%_))))))
              (if (pair? _%rest18831288320%_)
                  (let ((_%hd8831788370%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18831288320%_)))
                        (_%tl8831888372%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18831288320%_))))
                    (let* ((_%x188375%_ _%hd8831788370%_)
                           (_%rest188377%_ _%tl8831888372%_))
                      (_%K8831688367%_ _%rest188377%_ _%x188375%_)))
                  (_%else8831488328%_)))))))
    (define andmap
      (lambda _g91128_
        (let ((_g91127_ (let () (declare (not safe)) (##length _g91128_))))
          (cond ((let () (declare (not safe)) (##fx= _g91127_ 2))
                 (apply andmap1 _g91128_))
                ((let () (declare (not safe)) (##fx= _g91127_ 3))
                 (apply andmap2 _g91128_))
                ((let () (declare (not safe)) (##fx>= _g91127_ 3))
                 (apply andmap* _g91128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g91128_))))))
    (define andmap*
      (lambda (_%f88266%_ . _%rest88267%_)
        (if (procedure? _%f88266%_)
            (let ((_%f88271%_ _%f88266%_))
              (declare (not safe))
              (##apply __andmap* _%f88271%_ _%rest88267%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@363.16-363.17"
               'contract:
               'procedure?
               'value:
               _%f88266%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f88248%_ . _%rest88249%_)
        (let ((_%f88252%_ _%f88248%_))
          (let _%recur88261%_ ((_%rest88263%_ _%rest88249%_))
            (if (__andmap1 pair? _%rest88263%_)
                (if (let ((__tmp91129 (map car _%rest88263%_)))
                      (declare (not safe))
                      (##apply _%f88252%_ __tmp91129))
                    (_%recur88261%_ (map cdr _%rest88263%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f88233%_ _%lst88234%_)
        (if (procedure? _%f88233%_)
            (let ((_%f88238%_ _%f88233%_)) (__ormap1 _%f88238%_ _%lst88234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@372.15-372.16"
               'contract:
               'procedure?
               'value:
               _%f88233%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f88180%_ _%lst88181%_)
        (let ((_%f88184%_ _%f88180%_))
          (let _%lp88193%_ ((_%rest88195%_ _%lst88181%_))
            (let* ((_%rest8819688204%_ _%rest88195%_)
                   (_%else8819888212%_ (lambda () '#f))
                   (_%K8820088221%_
                    (lambda (_%rest88215%_ _%x88216%_)
                      (let ((_%$e88218%_
                             (let ()
                               (declare (not safe))
                               (_%f88184%_ _%x88216%_))))
                        (if _%$e88218%_
                            _%$e88218%_
                            (_%lp88193%_ _%rest88215%_))))))
              (if (pair? _%rest8819688204%_)
                  (let ((_%hd8820188224%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8819688204%_)))
                        (_%tl8820288226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8819688204%_))))
                    (let* ((_%x88229%_ _%hd8820188224%_)
                           (_%rest88231%_ _%tl8820288226%_))
                      (_%K8820088221%_ _%rest88231%_ _%x88229%_)))
                  (_%else8819888212%_)))))))
    (define ormap2
      (lambda (_%f88164%_ _%lst188165%_ _%lst288166%_)
        (if (procedure? _%f88164%_)
            (let ((_%f88170%_ _%f88164%_))
              (__ormap2 _%f88170%_ _%lst188165%_ _%lst288166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@379.15-379.16"
               'contract:
               'procedure?
               'value:
               _%f88164%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88076%_ _%lst188077%_ _%lst288078%_)
        (let ((_%f88081%_ _%f88076%_))
          (let _%lp88090%_ ((_%rest188092%_ _%lst188077%_)
                            (_%rest288093%_ _%lst288078%_))
            (let* ((_%rest18809488102%_ _%rest188092%_)
                   (_%else8809688110%_ (lambda () '#f))
                   (_%K8809888152%_
                    (lambda (_%rest188113%_ _%x188114%_)
                      (let* ((_%rest28811588123%_ _%rest288093%_)
                             (_%else8811788131%_ (lambda () '#f))
                             (_%K8811988140%_
                              (lambda (_%rest288134%_ _%x288135%_)
                                (let ((_%$e88137%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88081%_
                                          _%x188114%_
                                          _%x288135%_))))
                                  (if _%$e88137%_
                                      _%$e88137%_
                                      (_%lp88090%_
                                       _%rest188113%_
                                       _%rest288134%_))))))
                        (if (pair? _%rest28811588123%_)
                            (let ((_%hd8812088143%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28811588123%_)))
                                  (_%tl8812188145%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28811588123%_))))
                              (let* ((_%x288148%_ _%hd8812088143%_)
                                     (_%rest288150%_ _%tl8812188145%_))
                                (_%K8811988140%_ _%rest288150%_ _%x288148%_)))
                            (_%else8811788131%_))))))
              (if (pair? _%rest18809488102%_)
                  (let ((_%hd8809988155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18809488102%_)))
                        (_%tl8810088157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18809488102%_))))
                    (let* ((_%x188160%_ _%hd8809988155%_)
                           (_%rest188162%_ _%tl8810088157%_))
                      (_%K8809888152%_ _%rest188162%_ _%x188160%_)))
                  (_%else8809688110%_)))))))
    (define ormap
      (lambda _g91131_
        (let ((_g91130_ (let () (declare (not safe)) (##length _g91131_))))
          (cond ((let () (declare (not safe)) (##fx= _g91130_ 2))
                 (apply ormap1 _g91131_))
                ((let () (declare (not safe)) (##fx= _g91130_ 3))
                 (apply ormap2 _g91131_))
                ((let () (declare (not safe)) (##fx>= _g91130_ 3))
                 (apply ormap* _g91131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g91131_))))))
    (define ormap*
      (lambda (_%f88049%_ . _%rest88050%_)
        (if (procedure? _%f88049%_)
            (let ((_%f88054%_ _%f88049%_))
              (declare (not safe))
              (##apply __ormap* _%f88054%_ _%rest88050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.15-397.16"
               'contract:
               'procedure?
               'value:
               _%f88049%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88029%_ . _%rest88030%_)
        (let ((_%f88033%_ _%f88029%_))
          (let _%recur88042%_ ((_%rest88044%_ _%rest88030%_))
            (if (__andmap1 pair? _%rest88044%_)
                (let ((_%$e88046%_
                       (let ((__tmp91132 (map car _%rest88044%_)))
                         (declare (not safe))
                         (##apply _%f88033%_ __tmp91132))))
                  (if _%$e88046%_
                      _%$e88046%_
                      (_%recur88042%_ (map cdr _%rest88044%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88014%_ _%lst88015%_)
        (if (procedure? _%f88014%_)
            (let ((_%f88019%_ _%f88014%_))
              (__filter-map1 _%f88019%_ _%lst88015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@404.20-404.21"
               'contract:
               'procedure?
               'value:
               _%f88014%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f87957%_ _%lst87958%_)
        (let ((_%f87961%_ _%f87957%_))
          (let _%recur87970%_ ((_%rest87972%_ _%lst87958%_))
            (let* ((_%rest8797487982%_ _%rest87972%_)
                   (_%else8797687990%_ (lambda () '()))
                   (_%K8797888002%_
                    (lambda (_%rest87993%_ _%x87994%_)
                      (let ((_%$e87996%_
                             (let ()
                               (declare (not safe))
                               (_%f87961%_ _%x87994%_))))
                        (if _%$e87996%_
                            ((lambda (_%r87999%_)
                               (cons _%r87999%_
                                     (_%recur87970%_ _%rest87993%_)))
                             _%$e87996%_)
                            (_%recur87970%_ _%rest87993%_))))))
              (if (pair? _%rest8797487982%_)
                  (let ((_%hd8797988005%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8797487982%_)))
                        (_%tl8798088007%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8797487982%_))))
                    (let* ((_%x88010%_ _%hd8797988005%_)
                           (_%rest88012%_ _%tl8798088007%_))
                      (_%K8797888002%_ _%rest88012%_ _%x88010%_)))
                  (_%else8797687990%_)))))))
    (define filter-map2
      (lambda (_%f87941%_ _%lst187942%_ _%lst287943%_)
        (if (procedure? _%f87941%_)
            (let ((_%f87947%_ _%f87941%_))
              (__filter-map2 _%f87947%_ _%lst187942%_ _%lst287943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.20-415.21"
               'contract:
               'procedure?
               'value:
               _%f87941%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f87849%_ _%lst187850%_ _%lst287851%_)
        (let ((_%f87854%_ _%f87849%_))
          (let _%recur87863%_ ((_%rest187865%_ _%lst187850%_)
                               (_%rest287866%_ _%lst287851%_))
            (let* ((_%rest18786887876%_ _%rest187865%_)
                   (_%else8787087884%_ (lambda () '()))
                   (_%K8787287929%_
                    (lambda (_%rest187887%_ _%x187888%_)
                      (let* ((_%rest28788987897%_ _%rest287866%_)
                             (_%else8789187905%_ (lambda () '()))
                             (_%K8789387917%_
                              (lambda (_%rest287908%_ _%x287909%_)
                                (let ((_%$e87911%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f87854%_
                                          _%x187888%_
                                          _%x287909%_))))
                                  (if _%$e87911%_
                                      ((lambda (_%r87914%_)
                                         (cons _%r87914%_
                                               (_%recur87863%_
                                                _%rest187887%_
                                                _%rest287908%_)))
                                       _%$e87911%_)
                                      (_%recur87863%_
                                       _%rest187887%_
                                       _%rest287908%_))))))
                        (if (pair? _%rest28788987897%_)
                            (let ((_%hd8789487920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28788987897%_)))
                                  (_%tl8789587922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28788987897%_))))
                              (let* ((_%x287925%_ _%hd8789487920%_)
                                     (_%rest287927%_ _%tl8789587922%_))
                                (_%K8789387917%_ _%rest287927%_ _%x287925%_)))
                            (_%else8789187905%_))))))
              (if (pair? _%rest18786887876%_)
                  (let ((_%hd8787387932%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18786887876%_)))
                        (_%tl8787487934%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18786887876%_))))
                    (let* ((_%x187937%_ _%hd8787387932%_)
                           (_%rest187939%_ _%tl8787487934%_))
                      (_%K8787287929%_ _%rest187939%_ _%x187937%_)))
                  (_%else8787087884%_)))))))
    (define filter-map
      (lambda _g91134_
        (let ((_g91133_ (let () (declare (not safe)) (##length _g91134_))))
          (cond ((let () (declare (not safe)) (##fx= _g91133_ 2))
                 (apply filter-map1 _g91134_))
                ((let () (declare (not safe)) (##fx= _g91133_ 3))
                 (apply filter-map2 _g91134_))
                ((let () (declare (not safe)) (##fx>= _g91133_ 3))
                 (apply filter-map* _g91134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g91134_))))))
    (define filter-map*
      (lambda (_%f87822%_ . _%rest87823%_)
        (if (procedure? _%f87822%_)
            (let ((_%f87827%_ _%f87822%_))
              (declare (not safe))
              (##apply __filter-map* _%f87827%_ _%rest87823%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@437.20-437.21"
               'contract:
               'procedure?
               'value:
               _%f87822%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f87798%_ . _%rest87799%_)
        (let ((_%f87802%_ _%f87798%_))
          (let _%recur87811%_ ((_%rest87813%_ _%rest87799%_))
            (if (__andmap1 pair? _%rest87813%_)
                (let ((_%$e87816%_
                       (let ((__tmp91135 (map car _%rest87813%_)))
                         (declare (not safe))
                         (##apply _%f87802%_ __tmp91135))))
                  (if _%$e87816%_
                      ((lambda (_%r87819%_)
                         (cons _%r87819%_
                               (_%recur87811%_ (map cdr _%rest87813%_))))
                       _%$e87816%_)
                      (_%recur87811%_ (map cdr _%rest87813%_))))
                '())))))
    (define agetq__%
      (lambda (_%key87774%_ _%lst87776%_ _%default87778%_)
        (let ((_%$e87781%_
               (if (pair? _%lst87776%_) (assq _%key87774%_ _%lst87776%_) '#f)))
          (if _%$e87781%_
              (cdr _%$e87781%_)
              (if (procedure? _%default87778%_)
                  (_%default87778%_ _%key87774%_)
                  _%default87778%_)))))
    (define agetq__0
      (lambda (_%key87789%_ _%lst87790%_)
        (let ((_%default87792%_ '#f))
          (agetq__% _%key87789%_ _%lst87790%_ _%default87792%_))))
    (define agetq
      (lambda _g91137_
        (let ((_g91136_ (let () (declare (not safe)) (##length _g91137_))))
          (cond ((let () (declare (not safe)) (##fx= _g91136_ 2))
                 (apply agetq__0 _g91137_))
                ((let () (declare (not safe)) (##fx= _g91136_ 3))
                 (apply agetq__% _g91137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g91137_))))))
    (define agetv__%
      (lambda (_%key87749%_ _%lst87751%_ _%default87753%_)
        (let ((_%$e87756%_
               (if (pair? _%lst87751%_) (assv _%key87749%_ _%lst87751%_) '#f)))
          (if _%$e87756%_
              (cdr _%$e87756%_)
              (if (procedure? _%default87753%_)
                  (_%default87753%_ _%key87749%_)
                  _%default87753%_)))))
    (define agetv__0
      (lambda (_%key87764%_ _%lst87765%_)
        (let ((_%default87767%_ '#f))
          (agetv__% _%key87764%_ _%lst87765%_ _%default87767%_))))
    (define agetv
      (lambda _g91139_
        (let ((_g91138_ (let () (declare (not safe)) (##length _g91139_))))
          (cond ((let () (declare (not safe)) (##fx= _g91138_ 2))
                 (apply agetv__0 _g91139_))
                ((let () (declare (not safe)) (##fx= _g91138_ 3))
                 (apply agetv__% _g91139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g91139_))))))
    (define aget__%
      (lambda (_%key87724%_ _%lst87726%_ _%default87728%_)
        (let ((_%$e87731%_
               (if (pair? _%lst87726%_)
                   (assoc _%key87724%_ _%lst87726%_)
                   '#f)))
          (if _%$e87731%_
              (cdr _%$e87731%_)
              (if (procedure? _%default87728%_)
                  (_%default87728%_ _%key87724%_)
                  _%default87728%_)))))
    (define aget__0
      (lambda (_%key87739%_ _%lst87740%_)
        (let ((_%default87742%_ '#f))
          (aget__% _%key87739%_ _%lst87740%_ _%default87742%_))))
    (define aget
      (lambda _g91141_
        (let ((_g91140_ (let () (declare (not safe)) (##length _g91141_))))
          (cond ((let () (declare (not safe)) (##fx= _g91140_ 2))
                 (apply aget__0 _g91141_))
                ((let () (declare (not safe)) (##fx= _g91140_ 3))
                 (apply aget__% _g91141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g91141_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key87653%_ _%lst87655%_ _%default87657%_)
        (let _%lp87660%_ ((_%rest87663%_ _%lst87655%_))
          (let* ((_%rest8766587675%_ _%rest87663%_)
                 (_%else8766787683%_
                  (lambda ()
                    (if (procedure? _%default87657%_)
                        (_%default87657%_ _%key87653%_)
                        _%default87657%_)))
                 (_%K8766987692%_
                  (lambda (_%rest87686%_ _%v87687%_ _%k87689%_)
                    (if (eq? _%k87689%_ _%key87653%_)
                        _%v87687%_
                        (_%lp87660%_ _%rest87686%_)))))
            (if (pair? _%rest8766587675%_)
                (let ((_%hd8767087695%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8766587675%_)))
                      (_%tl8767187697%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8766587675%_))))
                  (let ((_%k87700%_ _%hd8767087695%_))
                    (if (pair? _%tl8767187697%_)
                        (let ((_%hd8767287702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8767187697%_)))
                              (_%tl8767387704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8767187697%_))))
                          (let* ((_%v87707%_ _%hd8767287702%_)
                                 (_%rest87709%_ _%tl8767387704%_))
                            (_%K8766987692%_
                             _%rest87709%_
                             _%v87707%_
                             _%k87700%_)))
                        (_%else8766787683%_))))
                (_%else8766787683%_))))))
    (define pgetq__0
      (lambda (_%key87714%_ _%lst87715%_)
        (let ((_%default87717%_ '#f))
          (pgetq__% _%key87714%_ _%lst87715%_ _%default87717%_))))
    (define pgetq
      (lambda _g91143_
        (let ((_g91142_ (let () (declare (not safe)) (##length _g91143_))))
          (cond ((let () (declare (not safe)) (##fx= _g91142_ 2))
                 (apply pgetq__0 _g91143_))
                ((let () (declare (not safe)) (##fx= _g91142_ 3))
                 (apply pgetq__% _g91143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g91143_))))))
    (define pgetv__%
      (lambda (_%key87582%_ _%lst87584%_ _%default87586%_)
        (let _%lp87589%_ ((_%rest87592%_ _%lst87584%_))
          (let* ((_%rest8759487604%_ _%rest87592%_)
                 (_%else8759687612%_
                  (lambda ()
                    (if (procedure? _%default87586%_)
                        (_%default87586%_ _%key87582%_)
                        _%default87586%_)))
                 (_%K8759887621%_
                  (lambda (_%rest87615%_ _%v87616%_ _%k87618%_)
                    (if (eqv? _%k87618%_ _%key87582%_)
                        _%v87616%_
                        (_%lp87589%_ _%rest87615%_)))))
            (if (pair? _%rest8759487604%_)
                (let ((_%hd8759987624%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8759487604%_)))
                      (_%tl8760087626%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8759487604%_))))
                  (let ((_%k87629%_ _%hd8759987624%_))
                    (if (pair? _%tl8760087626%_)
                        (let ((_%hd8760187631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8760087626%_)))
                              (_%tl8760287633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8760087626%_))))
                          (let* ((_%v87636%_ _%hd8760187631%_)
                                 (_%rest87638%_ _%tl8760287633%_))
                            (_%K8759887621%_
                             _%rest87638%_
                             _%v87636%_
                             _%k87629%_)))
                        (_%else8759687612%_))))
                (_%else8759687612%_))))))
    (define pgetv__0
      (lambda (_%key87643%_ _%lst87644%_)
        (let ((_%default87646%_ '#f))
          (pgetv__% _%key87643%_ _%lst87644%_ _%default87646%_))))
    (define pgetv
      (lambda _g91145_
        (let ((_g91144_ (let () (declare (not safe)) (##length _g91145_))))
          (cond ((let () (declare (not safe)) (##fx= _g91144_ 2))
                 (apply pgetv__0 _g91145_))
                ((let () (declare (not safe)) (##fx= _g91144_ 3))
                 (apply pgetv__% _g91145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g91145_))))))
    (define pget__%
      (lambda (_%key87511%_ _%lst87513%_ _%default87515%_)
        (let _%lp87518%_ ((_%rest87521%_ _%lst87513%_))
          (let* ((_%rest8752387533%_ _%rest87521%_)
                 (_%else8752587541%_
                  (lambda ()
                    (if (procedure? _%default87515%_)
                        (_%default87515%_ _%key87511%_)
                        _%default87515%_)))
                 (_%K8752787550%_
                  (lambda (_%rest87544%_ _%v87545%_ _%k87547%_)
                    (if (equal? _%k87547%_ _%key87511%_)
                        _%v87545%_
                        (_%lp87518%_ _%rest87544%_)))))
            (if (pair? _%rest8752387533%_)
                (let ((_%hd8752887553%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8752387533%_)))
                      (_%tl8752987555%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8752387533%_))))
                  (let ((_%k87558%_ _%hd8752887553%_))
                    (if (pair? _%tl8752987555%_)
                        (let ((_%hd8753087560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8752987555%_)))
                              (_%tl8753187562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8752987555%_))))
                          (let* ((_%v87565%_ _%hd8753087560%_)
                                 (_%rest87567%_ _%tl8753187562%_))
                            (_%K8752787550%_
                             _%rest87567%_
                             _%v87565%_
                             _%k87558%_)))
                        (_%else8752587541%_))))
                (_%else8752587541%_))))))
    (define pget__0
      (lambda (_%key87572%_ _%lst87573%_)
        (let ((_%default87575%_ '#f))
          (pget__% _%key87572%_ _%lst87573%_ _%default87575%_))))
    (define pget
      (lambda _g91147_
        (let ((_g91146_ (let () (declare (not safe)) (##length _g91147_))))
          (cond ((let () (declare (not safe)) (##fx= _g91146_ 2))
                 (apply pget__0 _g91147_))
                ((let () (declare (not safe)) (##fx= _g91146_ 3))
                 (apply pget__% _g91147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g91147_))))))
    (define find
      (lambda (_%pred87495%_ _%lst87496%_)
        (if (procedure? _%pred87495%_)
            (let ((_%pred87500%_ _%pred87495%_))
              (__find _%pred87500%_ _%lst87496%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@483.13-483.17"
               'contract:
               'procedure?
               'value:
               _%pred87495%_)
              '#!void))))
    (define __find
      (lambda (_%pred87478%_ _%lst87479%_)
        (let* ((_%pred87482%_ _%pred87478%_)
               (_%$e87491%_ (__memf _%pred87482%_ _%lst87479%_)))
          (if _%$e87491%_
              (let () (declare (not safe)) (##car _%$e87491%_))
              '#f))))
    (define memf
      (lambda (_%proc87463%_ _%lst87464%_)
        (if (procedure? _%proc87463%_)
            (let ((_%proc87468%_ _%proc87463%_))
              (__memf _%proc87468%_ _%lst87464%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@488.13-488.17"
               'contract:
               'procedure?
               'value:
               _%proc87463%_)
              '#!void))))
    (define __memf
      (lambda (_%proc87413%_ _%lst87414%_)
        (let ((_%proc87417%_ _%proc87413%_))
          (let _%lp87426%_ ((_%rest87428%_ _%lst87414%_))
            (let* ((_%rest8742987437%_ _%rest87428%_)
                   (_%else8743187445%_ (lambda () '#f))
                   (_%K8743387451%_
                    (lambda (_%tl87448%_ _%hd87449%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87417%_ _%hd87449%_))
                          _%rest87428%_
                          (_%lp87426%_ _%tl87448%_)))))
              (if (pair? _%rest8742987437%_)
                  (let ((_%hd8743487454%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8742987437%_)))
                        (_%tl8743587456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8742987437%_))))
                    (let* ((_%hd87459%_ _%hd8743487454%_)
                           (_%tl87461%_ _%tl8743587456%_))
                      (_%K8743387451%_ _%tl87461%_ _%hd87459%_)))
                  (_%else8743187445%_)))))))
    (define remove1
      (lambda (_%el87366%_ _%lst87368%_)
        (let _%lp87371%_ ((_%rest87374%_ _%lst87368%_) (_%r87376%_ '()))
          (let* ((_%rest8737887386%_ _%rest87374%_)
                 (_%else8738087394%_ (lambda () _%lst87368%_))
                 (_%K8738287401%_
                  (lambda (_%rest87397%_ _%hd87398%_)
                    (if (equal? _%el87366%_ _%hd87398%_)
                        (__foldl1 cons _%rest87397%_ _%r87376%_)
                        (_%lp87371%_
                         _%rest87397%_
                         (cons _%hd87398%_ _%r87376%_))))))
            (if (pair? _%rest8737887386%_)
                (let ((_%hd8738387404%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8737887386%_)))
                      (_%tl8738487406%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8737887386%_))))
                  (let* ((_%hd87409%_ _%hd8738387404%_)
                         (_%rest87411%_ _%tl8738487406%_))
                    (_%K8738287401%_ _%rest87411%_ _%hd87409%_)))
                (_%else8738087394%_))))))
    (define remv1
      (lambda (_%el87319%_ _%lst87321%_)
        (let _%lp87324%_ ((_%rest87327%_ _%lst87321%_) (_%r87329%_ '()))
          (let* ((_%rest8733187339%_ _%rest87327%_)
                 (_%else8733387347%_ (lambda () _%lst87321%_))
                 (_%K8733587354%_
                  (lambda (_%rest87350%_ _%hd87351%_)
                    (if (eqv? _%el87319%_ _%hd87351%_)
                        (__foldl1 cons _%rest87350%_ _%r87329%_)
                        (_%lp87324%_
                         _%rest87350%_
                         (cons _%hd87351%_ _%r87329%_))))))
            (if (pair? _%rest8733187339%_)
                (let ((_%hd8733687357%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8733187339%_)))
                      (_%tl8733787359%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8733187339%_))))
                  (let* ((_%hd87362%_ _%hd8733687357%_)
                         (_%rest87364%_ _%tl8733787359%_))
                    (_%K8733587354%_ _%rest87364%_ _%hd87362%_)))
                (_%else8733387347%_))))))
    (define remq1
      (lambda (_%el87272%_ _%lst87274%_)
        (let _%lp87277%_ ((_%rest87280%_ _%lst87274%_) (_%r87282%_ '()))
          (let* ((_%rest8728487292%_ _%rest87280%_)
                 (_%else8728687300%_ (lambda () _%lst87274%_))
                 (_%K8728887307%_
                  (lambda (_%rest87303%_ _%hd87304%_)
                    (if (eq? _%el87272%_ _%hd87304%_)
                        (__foldl1 cons _%rest87303%_ _%r87282%_)
                        (_%lp87277%_
                         _%rest87303%_
                         (cons _%hd87304%_ _%r87282%_))))))
            (if (pair? _%rest8728487292%_)
                (let ((_%hd8728987310%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8728487292%_)))
                      (_%tl8729087312%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8728487292%_))))
                  (let* ((_%hd87315%_ _%hd8728987310%_)
                         (_%rest87317%_ _%tl8729087312%_))
                    (_%K8728887307%_ _%rest87317%_ _%hd87315%_)))
                (_%else8728687300%_))))))
    (define remf
      (lambda (_%proc87257%_ _%lst87258%_)
        (if (procedure? _%proc87257%_)
            (let ((_%proc87262%_ _%proc87257%_))
              (__remf _%proc87262%_ _%lst87258%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@510.13-510.17"
               'contract:
               'procedure?
               'value:
               _%proc87257%_)
              '#!void))))
    (define __remf
      (lambda (_%proc87206%_ _%lst87207%_)
        (let ((_%proc87210%_ _%proc87206%_))
          (let _%lp87219%_ ((_%rest87221%_ _%lst87207%_) (_%r87222%_ '()))
            (let* ((_%rest8722387231%_ _%rest87221%_)
                   (_%else8722587239%_ (lambda () _%lst87207%_))
                   (_%K8722787245%_
                    (lambda (_%rest87242%_ _%hd87243%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87210%_ _%hd87243%_))
                          (__foldl1 cons _%rest87242%_ _%r87222%_)
                          (_%lp87219%_
                           _%rest87242%_
                           (cons _%hd87243%_ _%r87222%_))))))
              (if (pair? _%rest8722387231%_)
                  (let ((_%hd8722887248%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8722387231%_)))
                        (_%tl8722987250%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8722387231%_))))
                    (let* ((_%hd87253%_ _%hd8722887248%_)
                           (_%rest87255%_ _%tl8722987250%_))
                      (_%K8722787245%_ _%rest87255%_ _%hd87253%_)))
                  (_%else8722587239%_)))))))
    (define 1+
      (lambda (_%x87192%_)
        (if (number? _%x87192%_)
            (let ((_%x87196%_ _%x87192%_)) (__1+ _%x87196%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@519.11-519.12"
               'contract:
               'number?
               'value:
               _%x87192%_)
              '#!void))))
    (define __1+
      (lambda (_%x87180%_) (let ((_%x87183%_ _%x87180%_)) (+ _%x87183%_ '1))))
    (define 1-
      (lambda (_%x87166%_)
        (if (number? _%x87166%_)
            (let ((_%x87170%_ _%x87166%_)) (__1- _%x87170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.11-527.12"
               'contract:
               'number?
               'value:
               _%x87166%_)
              '#!void))))
    (define __1-
      (lambda (_%x87154%_) (let ((_%x87157%_ _%x87154%_)) (- _%x87157%_ '1))))
    (define fx1+
      (lambda (_%x87140%_)
        (if (fixnum? _%x87140%_)
            (let ((_%x87144%_ _%x87140%_)) (__fx1+ _%x87144%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@535.13-535.14"
               'contract:
               'fixnum?
               'value:
               _%x87140%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x87128%_)
        (let ((_%x87131%_ _%x87128%_))
          (declare (not safe))
          (##fx+ _%x87131%_ '1))))
    (define fx1-
      (lambda (_%x87114%_)
        (if (fixnum? _%x87114%_)
            (let ((_%x87118%_ _%x87114%_)) (__fx1- _%x87118%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@543.13-543.14"
               'contract:
               'fixnum?
               'value:
               _%x87114%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x87102%_)
        (let ((_%x87105%_ _%x87102%_))
          (declare (not safe))
          (##fx- _%x87105%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87099%_)
        (if (fixnum? _%x87099%_)
            (let () (declare (not safe)) (##fx>= _%x87099%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87096%_)
        (if (fixnum? _%x87096%_)
            (let () (declare (not safe)) (##fx> _%x87096%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87093%_)
        (let () (declare (not safe)) (##fx= _%x87093%_ '0))))
    (define fx<0?
      (lambda (_%x87090%_)
        (if (fixnum? _%x87090%_)
            (let () (declare (not safe)) (##fx< _%x87090%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87087%_)
        (if (fixnum? _%x87087%_)
            (let () (declare (not safe)) (##fx<= _%x87087%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87084%_)
        (if (symbol? _%x87084%_) (not (uninterned-symbol? _%x87084%_)) '#f)))
    (define display-as-string
      (lambda (_%x87069%_ _%port87070%_)
        (if (output-port? _%port87070%_)
            (let ((_%port87074%_ _%port87070%_))
              (__display-as-string _%x87069%_ _%port87074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.28-571.32"
               'contract:
               'output-port?
               'value:
               _%port87070%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87026%_ _%port87027%_)
        (let ((_%port87030%_ _%port87027%_))
          (if (or (string? _%x87026%_)
                  (symbol? _%x87026%_)
                  (keyword? _%x87026%_)
                  (number? _%x87026%_)
                  (char? _%x87026%_))
              (display _%x87026%_ _%port87030%_)
              (if (pair? _%x87026%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87026%_))
                     _%port87030%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87026%_))
                     _%port87030%_))
                  (if (vector? _%x87026%_)
                      (vector-for-each
                       (lambda (_%g8705387055%_)
                         (__display-as-string _%g8705387055%_ _%port87030%_))
                       _%x87026%_)
                      (if (or (null? _%x87026%_)
                              (eq? _%x87026%_ '#!void)
                              (eof-object? _%x87026%_)
                              (boolean? _%x87026%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87026%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87009%_)
        (if (string? _%x87009%_)
            _%x87009%_
            (if (symbol? _%x87009%_)
                (let () (declare (not safe)) (##symbol->string _%x87009%_))
                (if (keyword? _%x87009%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87009%_))
                    (if (number? _%x87009%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87009%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8701587017%_)
                           (__display-as-string
                            _%x87009%_
                            _%g8701587017%_)))))))))
    (define as-string__1
      (lambda _%args87020%_
        (call-with-output-string
         '()
         (lambda (_%g8702187023%_)
           (__display-as-string _%args87020%_ _%g8702187023%_)))))
    (define as-string
      (lambda _g91149_
        (let ((_g91148_ (let () (declare (not safe)) (##length _g91149_))))
          (cond ((let () (declare (not safe)) (##fx= _g91148_ 1))
                 (apply as-string__0 _g91149_))
                (#t
                 (apply (lambda _%args87020%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87020%_)))
                        _g91149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g91149_))))))
    (define make-symbol__0
      (lambda (_%x87005%_)
        (if (interned-symbol? _%x87005%_)
            _%x87005%_
            (let ((__tmp91150 (as-string__0 _%x87005%_)))
              (declare (not safe))
              (##string->symbol __tmp91150)))))
    (define make-symbol__1
      (lambda _%args87007%_
        (let ((__tmp91151
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87007%_))))
          (declare (not safe))
          (##string->symbol __tmp91151))))
    (define make-symbol
      (lambda _g91153_
        (let ((_g91152_ (let () (declare (not safe)) (##length _g91153_))))
          (cond ((let () (declare (not safe)) (##fx= _g91152_ 1))
                 (apply make-symbol__0 _g91153_))
                (#t
                 (apply (lambda _%args87007%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87007%_)))
                        _g91153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g91153_))))))
    (define make-keyword__0
      (lambda (_%x87001%_)
        (if (interned-keyword? _%x87001%_)
            _%x87001%_
            (let ((__tmp91154 (as-string__0 _%x87001%_)))
              (declare (not safe))
              (##string->keyword __tmp91154)))))
    (define make-keyword__1
      (lambda _%args87003%_
        (let ((__tmp91155
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87003%_))))
          (declare (not safe))
          (##string->keyword __tmp91155))))
    (define make-keyword
      (lambda _g91157_
        (let ((_g91156_ (let () (declare (not safe)) (##length _g91157_))))
          (cond ((let () (declare (not safe)) (##fx= _g91156_ 1))
                 (apply make-keyword__0 _g91157_))
                (#t
                 (apply (lambda _%args87003%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87003%_)))
                        _g91157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g91157_))))))
    (define interned-keyword?
      (lambda (_%x86998%_)
        (if (keyword? _%x86998%_) (not (uninterned-keyword? _%x86998%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym86984%_)
        (if (symbol? _%sym86984%_)
            (let ((_%sym86988%_ _%sym86984%_))
              (__symbol->keyword _%sym86988%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@614.24-614.27"
               'contract:
               'symbol?
               'value:
               _%sym86984%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym86972%_)
        (let ((_%sym86975%_ _%sym86972%_))
          (if (uninterned-symbol? _%sym86975%_)
              (let ((__tmp91158
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym86975%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp91158))
              (let ((__tmp91159
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym86975%_))))
                (declare (not safe))
                (##string->keyword __tmp91159))))))
    (define keyword->symbol
      (lambda (_%sym86958%_)
        (if (keyword? _%sym86958%_)
            (let ((_%sym86962%_ _%sym86958%_))
              (__keyword->symbol _%sym86962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@620.24-620.27"
               'contract:
               'keyword?
               'value:
               _%sym86958%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym86946%_)
        (let ((_%sym86949%_ _%sym86946%_))
          (if (uninterned-keyword? _%sym86949%_)
              (let ((__tmp91160
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym86949%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp91160))
              (let ((__tmp91161
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym86949%_))))
                (declare (not safe))
                (##string->symbol __tmp91161))))))
    (define bytes->string__%
      (lambda (_%bstr86911%_ _%enc86912%_)
        (if (u8vector? _%bstr86911%_)
            (let ((_%bstr86916%_ _%bstr86911%_))
              (if (symbol? _%enc86912%_)
                  (let ((_%enc86926%_ _%enc86912%_))
                    (__bytes->string__% _%bstr86916%_ _%enc86926%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@627.25-627.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc86912%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@626.22-626.26"
               'contract:
               'u8vector?
               'value:
               _%bstr86911%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr86939%_)
        (let ((_%enc86941%_ 'UTF-8))
          (bytes->string__% _%bstr86939%_ _%enc86941%_))))
    (define bytes->string
      (lambda _g91163_
        (let ((_g91162_ (let () (declare (not safe)) (##length _g91163_))))
          (cond ((let () (declare (not safe)) (##fx= _g91162_ 1))
                 (apply bytes->string__0 _g91163_))
                ((let () (declare (not safe)) (##fx= _g91162_ 2))
                 (apply bytes->string__% _g91163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g91163_))))))
    (define __bytes->string__%
      (lambda (_%bstr86870%_ _%enc86871%_)
        (let* ((_%bstr86874%_ _%bstr86870%_) (_%enc86882%_ _%enc86871%_))
          (if (eq? _%enc86882%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr86874%_))
              (let* ((_%in86891%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc86882%_
                                   (cons 'init: (cons _%bstr86874%_ '()))))))
                     (_%len86893%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr86874%_)))
                     (_%out86895%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len86893%_)))
                     (_%n86897%_
                      (read-substring
                       _%out86895%_
                       '0
                       _%len86893%_
                       _%in86891%_)))
                (string-shrink! _%out86895%_ _%n86897%_)
                _%out86895%_)))))
    (define __bytes->string__0
      (lambda (_%bstr86903%_)
        (let ((_%enc86905%_ 'UTF-8))
          (__bytes->string__% _%bstr86903%_ _%enc86905%_))))
    (define __bytes->string
      (lambda _g91165_
        (let ((_g91164_ (let () (declare (not safe)) (##length _g91165_))))
          (cond ((let () (declare (not safe)) (##fx= _g91164_ 1))
                 (apply __bytes->string__0 _g91165_))
                ((let () (declare (not safe)) (##fx= _g91164_ 2))
                 (apply __bytes->string__% _g91165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g91165_))))))
    (define string->bytes__%
      (lambda (_%str86834%_ _%enc86835%_)
        (if (string? _%str86834%_)
            (let ((_%str86839%_ _%str86834%_))
              (if (symbol? _%enc86835%_)
                  (let ((_%enc86849%_ _%enc86835%_))
                    (__string->bytes__% _%str86839%_ _%enc86849%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@639.25-639.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc86835%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@638.22-638.25"
               'contract:
               'string?
               'value:
               _%str86834%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str86862%_)
        (let ((_%enc86864%_ 'UTF-8))
          (string->bytes__% _%str86862%_ _%enc86864%_))))
    (define string->bytes
      (lambda _g91167_
        (let ((_g91166_ (let () (declare (not safe)) (##length _g91167_))))
          (cond ((let () (declare (not safe)) (##fx= _g91166_ 1))
                 (apply string->bytes__0 _g91167_))
                ((let () (declare (not safe)) (##fx= _g91166_ 2))
                 (apply string->bytes__% _g91167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g91167_))))))
    (define __string->bytes__%
      (lambda (_%str86802%_ _%enc86803%_)
        (let* ((_%str86806%_ _%str86802%_) (_%enc86814%_ _%enc86803%_))
          (if (eq? _%enc86814%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str86806%_))
              (__substring->bytes__%
               _%str86806%_
               '0
               (let () (declare (not safe)) (##string-length _%str86806%_))
               _%enc86814%_)))))
    (define __string->bytes__0
      (lambda (_%str86826%_)
        (let ((_%enc86828%_ 'UTF-8))
          (__string->bytes__% _%str86826%_ _%enc86828%_))))
    (define __string->bytes
      (lambda _g91169_
        (let ((_g91168_ (let () (declare (not safe)) (##length _g91169_))))
          (cond ((let () (declare (not safe)) (##fx= _g91168_ 1))
                 (apply __string->bytes__0 _g91169_))
                ((let () (declare (not safe)) (##fx= _g91168_ 2))
                 (apply __string->bytes__% _g91169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g91169_))))))
    (define substring->bytes__%
      (lambda (_%str86750%_ _%start86751%_ _%end86752%_ _%enc86753%_)
        (if (string? _%str86750%_)
            (let ((_%str86757%_ _%str86750%_))
              (if (nonnegative-fixnum? _%start86751%_)
                  (let ((_%start86767%_ _%start86751%_))
                    (if (nonnegative-fixnum? _%end86752%_)
                        (let ((_%end86777%_ _%end86752%_))
                          (__substring->bytes__%
                           _%str86757%_
                           _%start86767%_
                           _%end86777%_
                           _%enc86753%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@647.25-647.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end86752%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@646.25-646.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start86751%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
               'contract:
               'string?
               'value:
               _%str86750%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str86790%_ _%start86791%_ _%end86792%_)
        (let ((_%enc86794%_ 'UTF-8))
          (substring->bytes__%
           _%str86790%_
           _%start86791%_
           _%end86792%_
           _%enc86794%_))))
    (define substring->bytes
      (lambda _g91171_
        (let ((_g91170_ (let () (declare (not safe)) (##length _g91171_))))
          (cond ((let () (declare (not safe)) (##fx= _g91170_ 3))
                 (apply substring->bytes__0 _g91171_))
                ((let () (declare (not safe)) (##fx= _g91170_ 4))
                 (apply substring->bytes__% _g91171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g91171_))))))
    (define __substring->bytes__%
      (lambda (_%str86702%_ _%start86703%_ _%end86704%_ _%enc86705%_)
        (let* ((_%str86708%_ _%str86702%_)
               (_%start86716%_ _%start86703%_)
               (_%end86724%_ _%end86704%_))
          (if (eq? _%enc86705%_ 'UTF-8)
              (string->utf8 _%str86708%_ _%start86716%_ _%end86724%_)
              (let ((_%out86733%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc86705%_ '())))))
                (write-substring
                 _%str86708%_
                 _%start86716%_
                 _%end86724%_
                 _%out86733%_)
                (get-output-u8vector _%out86733%_))))))
    (define __substring->bytes__0
      (lambda (_%str86738%_ _%start86739%_ _%end86740%_)
        (let ((_%enc86742%_ 'UTF-8))
          (__substring->bytes__%
           _%str86738%_
           _%start86739%_
           _%end86740%_
           _%enc86742%_))))
    (define __substring->bytes
      (lambda _g91173_
        (let ((_g91172_ (let () (declare (not safe)) (##length _g91173_))))
          (cond ((let () (declare (not safe)) (##fx= _g91172_ 3))
                 (apply __substring->bytes__0 _g91173_))
                ((let () (declare (not safe)) (##fx= _g91172_ 4))
                 (apply __substring->bytes__% _g91173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g91173_))))))
    (define string-empty?
      (lambda (_%str86687%_)
        (if (string? _%str86687%_)
            (let ((_%str86691%_ _%str86687%_)) (__string-empty? _%str86691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@656.22-656.25"
               'contract:
               'string?
               'value:
               _%str86687%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str86675%_)
        (let* ((_%str86678%_ _%str86675%_)
               (__tmp91174
                (let () (declare (not safe)) (##string-length _%str86678%_))))
          (declare (not safe))
          (##fxzero? __tmp91174))))
    (define string-index__%
      (lambda (_%str86627%_ _%char86628%_ _%start86629%_)
        (if (string? _%str86627%_)
            (let ((_%str86633%_ _%str86627%_))
              (if (char? _%char86628%_)
                  (let ((_%char86643%_ _%char86628%_))
                    (if (nonnegative-fixnum? _%start86629%_)
                        (let ((_%start86653%_ _%start86629%_))
                          (__string-index__%
                           _%str86633%_
                           _%char86643%_
                           _%start86653%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@662.21-662.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start86629%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.21-661.25"
                     'contract:
                     'char?
                     'value:
                     _%char86628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.21-660.24"
               'contract:
               'string?
               'value:
               _%str86627%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str86666%_ _%char86667%_)
        (let ((_%start86669%_ '0))
          (string-index__% _%str86666%_ _%char86667%_ _%start86669%_))))
    (define string-index
      (lambda _g91176_
        (let ((_g91175_ (let () (declare (not safe)) (##length _g91176_))))
          (cond ((let () (declare (not safe)) (##fx= _g91175_ 2))
                 (apply string-index__0 _g91176_))
                ((let () (declare (not safe)) (##fx= _g91175_ 3))
                 (apply string-index__% _g91176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g91176_))))))
    (define __string-index__%
      (lambda (_%str86566%_ _%char86567%_ _%start86568%_)
        (let* ((_%str86571%_ _%str86566%_)
               (_%char86579%_ _%char86567%_)
               (_%start86587%_ _%start86568%_)
               (_%len86596%_
                (let () (declare (not safe)) (##string-length _%str86571%_))))
          (let _%lp86598%_ ((_%k86600%_ _%start86587%_))
            (let ((_%k86602%_ _%k86600%_))
              (if (let () (declare (not safe)) (##fx< _%k86602%_ _%len86596%_))
                  (if (eq? _%char86579%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86571%_ _%k86602%_)))
                      _%k86602%_
                      (_%lp86598%_
                       (let () (declare (not safe)) (##fx+ _%k86602%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str86617%_ _%char86618%_)
        (let ((_%start86620%_ '0))
          (__string-index__% _%str86617%_ _%char86618%_ _%start86620%_))))
    (define __string-index
      (lambda _g91178_
        (let ((_g91177_ (let () (declare (not safe)) (##length _g91178_))))
          (cond ((let () (declare (not safe)) (##fx= _g91177_ 2))
                 (apply __string-index__0 _g91178_))
                ((let () (declare (not safe)) (##fx= _g91177_ 3))
                 (apply __string-index__% _g91178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g91178_))))))
    (define string-rindex__%
      (lambda (_%str86527%_ _%char86528%_ _%start86529%_)
        (if (string? _%str86527%_)
            (let ((_%str86533%_ _%str86527%_))
              (if (char? _%char86528%_)
                  (let ((_%char86543%_ _%char86528%_))
                    (__string-rindex__%
                     _%str86533%_
                     _%char86543%_
                     _%start86529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@672.25-672.29"
                     'contract:
                     'char?
                     'value:
                     _%char86528%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@671.22-671.25"
               'contract:
               'string?
               'value:
               _%str86527%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str86556%_ _%char86557%_)
        (let ((_%start86559%_ '#f))
          (string-rindex__% _%str86556%_ _%char86557%_ _%start86559%_))))
    (define string-rindex
      (lambda _g91180_
        (let ((_g91179_ (let () (declare (not safe)) (##length _g91180_))))
          (cond ((let () (declare (not safe)) (##fx= _g91179_ 2))
                 (apply string-rindex__0 _g91180_))
                ((let () (declare (not safe)) (##fx= _g91179_ 3))
                 (apply string-rindex__% _g91180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g91180_))))))
    (define __string-rindex__%
      (lambda (_%str86469%_ _%char86470%_ _%start86471%_)
        (let* ((_%str86474%_ _%str86469%_)
               (_%char86482%_ _%char86470%_)
               (_%len86491%_
                (let () (declare (not safe)) (##string-length _%str86474%_)))
               (_%start86493%_
                (if (fixnum? _%start86471%_)
                    _%start86471%_
                    (let () (declare (not safe)) (##fx- _%len86491%_ '1)))))
          (let _%lp86496%_ ((_%k86498%_ _%start86493%_))
            (let ((_%k86500%_ _%k86498%_))
              (if (let () (declare (not safe)) (##fx>= _%k86500%_ '0))
                  (if (eq? _%char86482%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86474%_ _%k86500%_)))
                      _%k86500%_
                      (_%lp86496%_
                       (let () (declare (not safe)) (##fx- _%k86500%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str86517%_ _%char86518%_)
        (let ((_%start86520%_ '#f))
          (__string-rindex__% _%str86517%_ _%char86518%_ _%start86520%_))))
    (define __string-rindex
      (lambda _g91182_
        (let ((_g91181_ (let () (declare (not safe)) (##length _g91182_))))
          (cond ((let () (declare (not safe)) (##fx= _g91181_ 2))
                 (apply __string-rindex__0 _g91182_))
                ((let () (declare (not safe)) (##fx= _g91181_ 3))
                 (apply __string-rindex__% _g91182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g91182_))))))
    (define string-split
      (lambda (_%str86443%_ _%char86444%_)
        (if (string? _%str86443%_)
            (let ((_%str86448%_ _%str86443%_))
              (if (char? _%char86444%_)
                  (let ((_%char86458%_ _%char86444%_))
                    (__string-split _%str86448%_ _%char86458%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@683.37-683.41"
                     'contract:
                     'char?
                     'value:
                     _%char86444%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.21-683.24"
               'contract:
               'string?
               'value:
               _%str86443%_)
              '#!void))))
    (define __string-split
      (lambda (_%str86384%_ _%char86385%_)
        (let* ((_%str86388%_ _%str86384%_)
               (_%char86396%_ _%char86385%_)
               (_%len86405%_
                (let () (declare (not safe)) (##string-length _%str86388%_))))
          (let _%lp86407%_ ((_%start86409%_ '0) (_%r86410%_ '()))
            (let* ((_%start86413%_ _%start86409%_)
                   (_%$e86426%_
                    (__string-index__%
                     _%str86388%_
                     _%char86396%_
                     _%start86413%_)))
              (if _%$e86426%_
                  ((lambda (_%end86429%_)
                     (let ((_%end86431%_ _%end86429%_))
                       (_%lp86407%_
                        (let () (declare (not safe)) (##fx+ _%end86431%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str86388%_
                                 _%start86413%_
                                 _%end86431%_))
                              _%r86410%_))))
                   _%$e86426%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start86413%_ _%len86405%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str86388%_
                                _%start86413%_
                                _%len86405%_)))
                       _%r86410%_)
                      (reverse! _%r86410%_))))))))
    (define string-join
      (lambda (_%strs86234%_ _%join86235%_)
        (letrec ((_%join-length86238%_
                  (lambda (_%strs86322%_ _%jlen86323%_)
                    (let _%lp86325%_ ((_%rest86327%_ _%strs86322%_)
                                      (_%len86328%_ '0))
                      (let* ((_%len86330%_ _%len86328%_)
                             (_%rest8633886346%_ _%rest86327%_)
                             (_%else8634086354%_ (lambda () '0))
                             (_%K8634286372%_
                              (lambda (_%rest86357%_ _%hd86358%_)
                                (if (string? _%hd86358%_)
                                    (let ((_%hd86360%_ _%hd86358%_))
                                      (if (pair? _%rest86357%_)
                                          (_%lp86325%_
                                           _%rest86357%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd86360%_))
                                                _%jlen86323%_
                                                _%len86330%_))
                                          (let ((__tmp91183
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd86360%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp91183 _%len86330%_))))
                                    (error '"expected string" _%hd86358%_)))))
                        (if (pair? _%rest8633886346%_)
                            (let ((_%hd8634386375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8633886346%_)))
                                  (_%tl8634486377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8633886346%_))))
                              (let* ((_%hd86380%_ _%hd8634386375%_)
                                     (_%rest86382%_ _%tl8634486377%_))
                                (_%K8634286372%_ _%rest86382%_ _%hd86380%_)))
                            (_%else8634086354%_)))))))
          (let* ((_%join86243%_
                  (if (char? _%join86235%_)
                      (let () (declare (not safe)) (##string _%join86235%_))
                      (if (string? _%join86235%_)
                          _%join86235%_
                          (error '"expected string or char" _%join86235%_))))
                 (_%jlen86245%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join86243%_)))
                 (_%olen86247%_
                  (_%join-length86238%_ _%strs86234%_ _%jlen86245%_))
                 (_%ostr86249%_
                  (let () (declare (not safe)) (##make-string _%olen86247%_))))
            (let _%lp86252%_ ((_%rest86254%_ _%strs86234%_) (_%k86255%_ '0))
              (let* ((_%k86258%_ _%k86255%_)
                     (_%rest8627486282%_ _%rest86254%_)
                     (_%else8627686290%_ (lambda () '""))
                     (_%K8627886310%_
                      (lambda (_%rest86293%_ _%hd86294%_)
                        (let* ((_%hd86296%_ _%hd86294%_)
                               (_%hdlen86308%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd86296%_))))
                          (if (pair? _%rest86293%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86296%_
                                   '0
                                   _%hdlen86308%_
                                   _%ostr86249%_
                                   _%k86258%_))
                                (let ((__tmp91184
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k86258%_ _%hdlen86308%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join86243%_
                                   '0
                                   _%jlen86245%_
                                   _%ostr86249%_
                                   __tmp91184))
                                (_%lp86252%_
                                 _%rest86293%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k86258%_
                                          _%hdlen86308%_
                                          _%jlen86245%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86296%_
                                   '0
                                   _%hdlen86308%_
                                   _%ostr86249%_
                                   _%k86258%_))
                                _%ostr86249%_))))))
                (if (pair? _%rest8627486282%_)
                    (let ((_%hd8627986313%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8627486282%_)))
                          (_%tl8628086315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8627486282%_))))
                      (let* ((_%hd86318%_ _%hd8627986313%_)
                             (_%rest86320%_ _%tl8628086315%_))
                        (_%K8627886310%_ _%rest86320%_ _%hd86318%_)))
                    (_%else8627686290%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes86160%_ _%port86161%_ _%start86162%_ _%end86163%_)
        (if (u8vector? _%bytes86160%_)
            (let ((_%bytes86167%_ _%bytes86160%_))
              (if (input-port? _%port86161%_)
                  (let ((_%port86177%_ _%port86161%_))
                    (if ((lambda (_%o86186%_)
                           (and (fixnum? _%o86186%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o86186%_ '0))
                                (let ((__tmp91185
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86167%_))))
                                  (declare (not safe))
                                  (##fx< _%o86186%_ __tmp91185))))
                         _%start86162%_)
                        (let ((_%start86190%_ _%start86162%_))
                          (if ((lambda (_%o86199%_)
                                 (and (fixnum? _%o86199%_)
                                      (let ((__tmp91186
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes86167%_))))
                                        (declare (not safe))
                                        (##fx<= _%start86190%_
                                                _%o86199%_
                                                __tmp91186))))
                               _%end86163%_)
                              (let ((_%end86203%_ _%end86163%_))
                                (__read-u8vector__%
                                 _%bytes86167%_
                                 _%port86177%_
                                 _%start86190%_
                                 _%end86203%_))
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
                                 _%end86163%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@748.22-748.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start86162%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@747.22-747.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port86161%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
               'contract:
               'u8vector?
               'value:
               _%bytes86160%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes86216%_ _%port86217%_)
        (let* ((_%start86219%_ '0)
               (_%end86221%_ (u8vector-length _%bytes86216%_)))
          (read-u8vector__%
           _%bytes86216%_
           _%port86217%_
           _%start86219%_
           _%end86221%_))))
    (define read-u8vector__1
      (lambda (_%bytes86223%_ _%port86224%_ _%start86225%_)
        (let ((_%end86227%_ (u8vector-length _%bytes86223%_)))
          (read-u8vector__%
           _%bytes86223%_
           _%port86224%_
           _%start86225%_
           _%end86227%_))))
    (define read-u8vector
      (lambda _g91188_
        (let ((_g91187_ (let () (declare (not safe)) (##length _g91188_))))
          (cond ((let () (declare (not safe)) (##fx= _g91187_ 2))
                 (apply read-u8vector__0 _g91188_))
                ((let () (declare (not safe)) (##fx= _g91187_ 3))
                 (apply read-u8vector__1 _g91188_))
                ((let () (declare (not safe)) (##fx= _g91187_ 4))
                 (apply read-u8vector__% _g91188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g91188_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86099%_ _%port86100%_ _%start86101%_ _%end86102%_)
        (let* ((_%bytes86105%_ _%bytes86099%_)
               (_%port86113%_ _%port86100%_)
               (_%start86121%_ _%start86101%_)
               (_%end86129%_ _%end86102%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes86105%_
           _%start86121%_
           _%end86129%_
           _%port86113%_))))
    (define __read-u8vector__0
      (lambda (_%bytes86141%_ _%port86142%_)
        (let* ((_%start86144%_ '0)
               (_%end86146%_ (u8vector-length _%bytes86141%_)))
          (__read-u8vector__%
           _%bytes86141%_
           _%port86142%_
           _%start86144%_
           _%end86146%_))))
    (define __read-u8vector__1
      (lambda (_%bytes86148%_ _%port86149%_ _%start86150%_)
        (let ((_%end86152%_ (u8vector-length _%bytes86148%_)))
          (__read-u8vector__%
           _%bytes86148%_
           _%port86149%_
           _%start86150%_
           _%end86152%_))))
    (define __read-u8vector
      (lambda _g91190_
        (let ((_g91189_ (let () (declare (not safe)) (##length _g91190_))))
          (cond ((let () (declare (not safe)) (##fx= _g91189_ 2))
                 (apply __read-u8vector__0 _g91190_))
                ((let () (declare (not safe)) (##fx= _g91189_ 3))
                 (apply __read-u8vector__1 _g91190_))
                ((let () (declare (not safe)) (##fx= _g91189_ 4))
                 (apply __read-u8vector__% _g91190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g91190_))))))
    (define write-u8vector__%
      (lambda (_%bytes86024%_ _%port86025%_ _%start86026%_ _%end86027%_)
        (if (u8vector? _%bytes86024%_)
            (let ((_%bytes86031%_ _%bytes86024%_))
              (if (output-port? _%port86025%_)
                  (let ((_%port86041%_ _%port86025%_))
                    (if ((lambda (_%o86050%_)
                           (and (fixnum? _%o86050%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o86050%_ '0))
                                (let ((__tmp91191
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86031%_))))
                                  (declare (not safe))
                                  (##fx< _%o86050%_ __tmp91191))))
                         _%start86026%_)
                        (let ((_%start86054%_ _%start86026%_))
                          (if ((lambda (_%o86063%_)
                                 (and (fixnum? _%o86063%_)
                                      (let ((__tmp91192
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes86031%_))))
                                        (declare (not safe))
                                        (##fx<= _%start86054%_
                                                _%o86063%_
                                                __tmp91192))))
                               _%end86027%_)
                              (let ((_%end86067%_ _%end86027%_))
                                (__write-u8vector__%
                                 _%bytes86031%_
                                 _%port86041%_
                                 _%start86054%_
                                 _%end86067%_))
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
                                 _%end86027%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@758.23-758.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start86026%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@757.23-757.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86025%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86024%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86080%_ _%port86081%_)
        (let* ((_%start86083%_ '0)
               (_%end86085%_ (u8vector-length _%bytes86080%_)))
          (write-u8vector__%
           _%bytes86080%_
           _%port86081%_
           _%start86083%_
           _%end86085%_))))
    (define write-u8vector__1
      (lambda (_%bytes86087%_ _%port86088%_ _%start86089%_)
        (let ((_%end86091%_ (u8vector-length _%bytes86087%_)))
          (write-u8vector__%
           _%bytes86087%_
           _%port86088%_
           _%start86089%_
           _%end86091%_))))
    (define write-u8vector
      (lambda _g91194_
        (let ((_g91193_ (let () (declare (not safe)) (##length _g91194_))))
          (cond ((let () (declare (not safe)) (##fx= _g91193_ 2))
                 (apply write-u8vector__0 _g91194_))
                ((let () (declare (not safe)) (##fx= _g91193_ 3))
                 (apply write-u8vector__1 _g91194_))
                ((let () (declare (not safe)) (##fx= _g91193_ 4))
                 (apply write-u8vector__% _g91194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g91194_))))))
    (define __write-u8vector__%
      (lambda (_%bytes85963%_ _%port85964%_ _%start85965%_ _%end85966%_)
        (let* ((_%bytes85969%_ _%bytes85963%_)
               (_%port85977%_ _%port85964%_)
               (_%start85985%_ _%start85965%_)
               (_%end85993%_ _%end85966%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes85969%_
           _%start85985%_
           _%end85993%_
           _%port85977%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86005%_ _%port86006%_)
        (let* ((_%start86008%_ '0)
               (_%end86010%_ (u8vector-length _%bytes86005%_)))
          (__write-u8vector__%
           _%bytes86005%_
           _%port86006%_
           _%start86008%_
           _%end86010%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86012%_ _%port86013%_ _%start86014%_)
        (let ((_%end86016%_ (u8vector-length _%bytes86012%_)))
          (__write-u8vector__%
           _%bytes86012%_
           _%port86013%_
           _%start86014%_
           _%end86016%_))))
    (define __write-u8vector
      (lambda _g91196_
        (let ((_g91195_ (let () (declare (not safe)) (##length _g91196_))))
          (cond ((let () (declare (not safe)) (##fx= _g91195_ 2))
                 (apply __write-u8vector__0 _g91196_))
                ((let () (declare (not safe)) (##fx= _g91195_ 3))
                 (apply __write-u8vector__1 _g91196_))
                ((let () (declare (not safe)) (##fx= _g91195_ 4))
                 (apply __write-u8vector__% _g91196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g91196_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag85931%_
               _%dbg-exprs85932%_
               _%dbg-thunks85933%_
               _%expr85934%_
               _%thunk85935%_)
        (letrec ((_%o85937%_ (current-output-port))
                 (_%e85938%_ (current-error-port))
                 (_%p85939%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f85940%_
                  (lambda ()
                    (force-output _%o85937%_)
                    (force-output _%e85938%_)))
                 (_%d85941%_
                  (lambda (_%x85948%_) (display _%x85948%_ _%e85938%_)))
                 (_%w85942%_
                  (lambda (_%x85950%_) (_%p85939%_ _%x85950%_ _%e85938%_)))
                 (_%n85943%_ (lambda () (newline _%e85938%_)))
                 (_%v85944%_
                  (lambda (_%l85953%_)
                    (for-each
                     (lambda (_%x85955%_)
                       (_%d85941%_ '" ")
                       (_%w85942%_ _%x85955%_))
                     _%l85953%_)
                    (_%n85943%_)))
                 (_%x85945%_
                  (lambda (_%expr85957%_ _%thunk85958%_)
                    (_%f85940%_)
                    (_%d85941%_ '"  ")
                    (_%w85942%_ _%expr85957%_)
                    (_%d85941%_ '" =>")
                    (call-with-values
                     _%thunk85958%_
                     (lambda _%x85960%_
                       (_%v85944%_ _%x85960%_)
                       (_%f85940%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x85960%_)))))))
          (if _%tag85931%_
              (begin
                (if (eq? _%tag85931%_ '#!void)
                    '#!void
                    (begin
                      (_%f85940%_)
                      (_%d85941%_ _%tag85931%_)
                      (_%n85943%_)))
                (for-each _%x85945%_ _%dbg-exprs85932%_ _%dbg-thunks85933%_)
                (if _%thunk85935%_
                    (_%x85945%_ _%expr85934%_ _%thunk85935%_)
                    '#!void))
              (if _%thunk85935%_ (_%thunk85935%_) '#!void)))))))
