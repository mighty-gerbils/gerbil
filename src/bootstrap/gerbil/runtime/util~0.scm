(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712784663)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args87022%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args87022%_))
          (newline))))
    (define display*
      (lambda _%args87019%_
        (let () (declare (not safe)) (##for-each display _%args87019%_))))
    (define file-newer?
      (lambda (_%file186994%_ _%file286995%_)
        (if (string? _%file186994%_)
            (let ((_%file186999%_ _%file186994%_))
              (if (string? _%file286995%_)
                  (let ((_%file287009%_ _%file286995%_))
                    (__file-newer? _%file186999%_ _%file287009%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                     'contract:
                     'string?
                     'value:
                     _%file286995%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file186994%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file186942%_ _%file286943%_)
        (let* ((_%file186946%_ _%file186942%_) (_%file286954%_ _%file286943%_))
          (letrec ((_%modification-time86963%_
                    (lambda (_%file86982%_)
                      (let ((_%file86985%_ _%file86982%_))
                        (_%__modification-time86964%_ _%file86985%_))))
                   (_%__modification-time86964%_
                    (lambda (_%file86966%_)
                      (let* ((_%file86969%_ _%file86966%_)
                             (__tmp88752
                              (let ((__tmp88753
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file86969%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp88753))))
                        (declare (not safe))
                        (##time->seconds __tmp88752)))))
            (let ((__tmp88755 (_%__modification-time86964%_ _%file186946%_))
                  (__tmp88754 (_%__modification-time86964%_ _%file286954%_)))
              (declare (not safe))
              (##fl> __tmp88755 __tmp88754))))))
    (define create-directory*__%
      (lambda (_%dir86907%_ _%perms86908%_)
        (if (string? _%dir86907%_)
            (let ((_%dir86912%_ _%dir86907%_))
              (if (fixnum? _%perms86908%_)
                  (let ((_%perms86922%_ _%perms86908%_))
                    (__create-directory*__% _%dir86912%_ _%perms86922%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms86908%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir86907%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir86935%_)
        (let ((_%perms86937%_ '493))
          (create-directory*__% _%dir86935%_ _%perms86937%_))))
    (define create-directory*
      (lambda _g88757_
        (let ((_g88756_ (let () (declare (not safe)) (##length _g88757_))))
          (cond ((let () (declare (not safe)) (##fx= _g88756_ 1))
                 (apply create-directory*__0 _g88757_))
                ((let () (declare (not safe)) (##fx= _g88756_ 2))
                 (apply create-directory*__% _g88757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g88757_))))))
    (define __create-directory*__%
      (lambda (_%dir86831%_ _%perms86832%_)
        (let* ((_%dir86835%_ _%dir86831%_) (_%perms86843%_ _%perms86832%_))
          (letrec ((_%create186852%_
                    (lambda (_%path86884%_)
                      (let ((_%path86887%_ _%path86884%_))
                        (_%__create186853%_ _%path86887%_))))
                   (_%__create186853%_
                    (lambda (_%path86865%_)
                      (let ((_%path86868%_ _%path86865%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path86868%_))
                            (if (eq? (file-type _%path86868%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path86868%_))
                            (if _%perms86843%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path86868%_
                                             (cons 'permissions:
                                                   (cons _%perms86843%_
                                                         '())))))
                                (create-directory _%path86868%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir86835%_))
                '#!void
                (let _%lp86855%_ ((_%start86857%_ '0))
                  (let ((_%$e86859%_
                         (let ()
                           (declare (not safe))
                           (__string-index _%dir86835%_ '#\/ _%start86857%_))))
                    (if _%$e86859%_
                        ((lambda (_%x86862%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x86862%_ '0))
                               (_%__create186853%_
                                (substring _%dir86835%_ '0 _%x86862%_))
                               '#!void)
                           (_%lp86855%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x86862%_ '1))))
                         _%$e86859%_)
                        (_%__create186853%_ _%dir86835%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir86899%_)
        (let ((_%perms86901%_ '493))
          (__create-directory*__% _%dir86899%_ _%perms86901%_))))
    (define __create-directory*
      (lambda _g88759_
        (let ((_g88758_ (let () (declare (not safe)) (##length _g88759_))))
          (cond ((let () (declare (not safe)) (##fx= _g88758_ 1))
                 (apply __create-directory*__0 _g88759_))
                ((let () (declare (not safe)) (##fx= _g88758_ 2))
                 (apply __create-directory*__% _g88759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g88759_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore86827%_ '#t))
    (define true? (lambda (_%obj86824%_) (eq? _%obj86824%_ '#t)))
    (define false (lambda _%ignore86821%_ '#f))
    (define void (lambda _%ignore86818%_ '#!void))
    (define void? (lambda (_%obj86815%_) (eq? _%obj86815%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj86812%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj86812%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj86809%_) (eq? _%obj86809%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj86806%_) (eq? _%obj86806%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj86803%_) (eq? _%obj86803%_ '#!optional)))
    (define immediate?
      (lambda (_%obj86798%_)
        (let* ((_%t86801%_ (let () (declare (not safe)) (##type _%obj86798%_)))
               (__tmp88760
                (let () (declare (not safe)) (##fxand _%t86801%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp88760))))
    (define nonnegative-fixnum?
      (lambda (_%obj86795%_)
        (if (fixnum? _%obj86795%_)
            (let () (declare (not safe)) (##fx>= _%obj86795%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj86789%_)
        (let ((_%$e86792%_ (pair? _%obj86789%_)))
          (if _%$e86792%_ _%$e86792%_ (null? _%obj86789%_)))))
    (define values-count
      (lambda (_%obj86786%_)
        (if (let () (declare (not safe)) (##values? _%obj86786%_))
            (let () (declare (not safe)) (##vector-length _%obj86786%_))
            '1)))
    (define values-ref
      (lambda (_%obj86771%_ _%k86772%_)
        (if (fixnum? _%k86772%_)
            (let ((_%k86776%_ _%k86772%_))
              (__values-ref _%obj86771%_ _%k86776%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k86772%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj86758%_ _%k86759%_)
        (let ((_%k86762%_ _%k86759%_))
          (if (let () (declare (not safe)) (##values? _%obj86758%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj86758%_ _%k86762%_))
              _%obj86758%_))))
    (define values->list
      (lambda (_%obj86755%_)
        (if (let () (declare (not safe)) (##values? _%obj86755%_))
            (let () (declare (not safe)) (##vector->list _%obj86755%_))
            (list _%obj86755%_))))
    (define foldl1
      (lambda (_%f86739%_ _%iv86740%_ _%lst86741%_)
        (if (procedure? _%f86739%_)
            (let ((_%f86745%_ _%f86739%_))
              (__foldl1 _%f86745%_ _%iv86740%_ _%lst86741%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f86739%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f86687%_ _%iv86688%_ _%lst86689%_)
        (let ((_%f86692%_ _%f86687%_))
          (let _%lp86701%_ ((_%rest86703%_ _%lst86689%_)
                            (_%r86704%_ _%iv86688%_))
            (let* ((_%rest8670586713%_ _%rest86703%_)
                   (_%else8670786721%_ (lambda () _%r86704%_))
                   (_%K8670986727%_
                    (lambda (_%rest86724%_ _%x86725%_)
                      (_%lp86701%_
                       _%rest86724%_
                       (let ()
                         (declare (not safe))
                         (_%f86692%_ _%x86725%_ _%r86704%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8670586713%_))
                  (let ((_%hd8671086730%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8670586713%_)))
                        (_%tl8671186732%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8670586713%_))))
                    (let* ((_%x86735%_ _%hd8671086730%_)
                           (_%rest86737%_ _%tl8671186732%_))
                      (_%K8670986727%_ _%rest86737%_ _%x86735%_)))
                  (_%else8670786721%_)))))))
    (define foldl2
      (lambda (_%f86670%_ _%iv86671%_ _%lst186672%_ _%lst286673%_)
        (if (procedure? _%f86670%_)
            (let ((_%f86677%_ _%f86670%_))
              (__foldl2 _%f86677%_ _%iv86671%_ _%lst186672%_ _%lst286673%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f86670%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f86583%_ _%iv86584%_ _%lst186585%_ _%lst286586%_)
        (let ((_%f86589%_ _%f86583%_))
          (let _%lp86598%_ ((_%rest186600%_ _%lst186585%_)
                            (_%rest286601%_ _%lst286586%_)
                            (_%r86602%_ _%iv86584%_))
            (let* ((_%rest18660386611%_ _%rest186600%_)
                   (_%else8660586619%_ (lambda () _%r86602%_))
                   (_%K8660786658%_
                    (lambda (_%rest186622%_ _%x186623%_)
                      (let* ((_%rest28662486632%_ _%rest286601%_)
                             (_%else8662686640%_ (lambda () _%r86602%_))
                             (_%K8662886646%_
                              (lambda (_%rest286643%_ _%x286644%_)
                                (_%lp86598%_
                                 _%rest186622%_
                                 _%rest286643%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f86589%_
                                    _%x186623%_
                                    _%x286644%_
                                    _%r86602%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28662486632%_))
                            (let ((_%hd8662986649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28662486632%_)))
                                  (_%tl8663086651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28662486632%_))))
                              (let* ((_%x286654%_ _%hd8662986649%_)
                                     (_%rest286656%_ _%tl8663086651%_))
                                (_%K8662886646%_ _%rest286656%_ _%x286654%_)))
                            (_%else8662686640%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18660386611%_))
                  (let ((_%hd8660886661%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18660386611%_)))
                        (_%tl8660986663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18660386611%_))))
                    (let* ((_%x186666%_ _%hd8660886661%_)
                           (_%rest186668%_ _%tl8660986663%_))
                      (_%K8660786658%_ _%rest186668%_ _%x186666%_)))
                  (_%else8660586619%_)))))))
    (define foldl
      (lambda _g88762_
        (let ((_g88761_ (let () (declare (not safe)) (##length _g88762_))))
          (cond ((let () (declare (not safe)) (##fx= _g88761_ 3))
                 (apply foldl1 _g88762_))
                ((let () (declare (not safe)) (##fx= _g88761_ 4))
                 (apply foldl2 _g88762_))
                ((let () (declare (not safe)) (##fx>= _g88761_ 4))
                 (apply foldl* _g88762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g88762_))))))
    (define foldl*
      (lambda (_%f86552%_ _%iv86553%_ . _%rest86554%_)
        (if (procedure? _%f86552%_)
            (let ((_%f86558%_ _%f86552%_))
              (declare (not safe))
              (##apply __foldl* _%f86558%_ _%iv86553%_ _%rest86554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f86552%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f86530%_ _%iv86531%_ . _%rest86532%_)
        (let ((_%f86535%_ _%f86530%_))
          (let _%recur86544%_ ((_%iv86546%_ _%iv86531%_)
                               (_%rest86547%_ _%rest86532%_))
            (if (__andmap1 pair? _%rest86547%_)
                (_%recur86544%_
                 (let ((__tmp88763
                        (__foldr1
                         (lambda (_%xs86549%_ _%r86550%_)
                           (cons (car _%xs86549%_) _%r86550%_))
                         (list _%iv86546%_)
                         _%rest86547%_)))
                   (declare (not safe))
                   (##apply _%f86535%_ __tmp88763))
                 (map cdr _%rest86547%_))
                _%iv86546%_)))))
    (define foldr1
      (lambda (_%f86514%_ _%iv86515%_ _%lst86516%_)
        (if (procedure? _%f86514%_)
            (let ((_%f86520%_ _%f86514%_))
              (__foldr1 _%f86520%_ _%iv86515%_ _%lst86516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f86514%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f86463%_ _%iv86464%_ _%lst86465%_)
        (let ((_%f86468%_ _%f86463%_))
          (let _%recur86477%_ ((_%rest86479%_ _%lst86465%_))
            (let* ((_%rest8648086488%_ _%rest86479%_)
                   (_%else8648286496%_ (lambda () _%iv86464%_))
                   (_%K8648486502%_
                    (lambda (_%rest86499%_ _%x86500%_)
                      (let ((__tmp88764 (_%recur86477%_ _%rest86499%_)))
                        (declare (not safe))
                        (_%f86468%_ _%x86500%_ __tmp88764)))))
              (if (let () (declare (not safe)) (##pair? _%rest8648086488%_))
                  (let ((_%hd8648586505%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8648086488%_)))
                        (_%tl8648686507%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8648086488%_))))
                    (let* ((_%x86510%_ _%hd8648586505%_)
                           (_%rest86512%_ _%tl8648686507%_))
                      (_%K8648486502%_ _%rest86512%_ _%x86510%_)))
                  (_%else8648286496%_)))))))
    (define foldr2
      (lambda (_%f86446%_ _%iv86447%_ _%lst186448%_ _%lst286449%_)
        (if (procedure? _%f86446%_)
            (let ((_%f86453%_ _%f86446%_))
              (__foldr2 _%f86453%_ _%iv86447%_ _%lst186448%_ _%lst286449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f86446%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f86360%_ _%iv86361%_ _%lst186362%_ _%lst286363%_)
        (let ((_%f86366%_ _%f86360%_))
          (let _%recur86375%_ ((_%rest186377%_ _%lst186362%_)
                               (_%rest286378%_ _%lst286363%_))
            (let* ((_%rest18637986387%_ _%rest186377%_)
                   (_%else8638186395%_ (lambda () _%iv86361%_))
                   (_%K8638386434%_
                    (lambda (_%rest186398%_ _%x186399%_)
                      (let* ((_%rest28640086408%_ _%rest286378%_)
                             (_%else8640286416%_ (lambda () _%iv86361%_))
                             (_%K8640486422%_
                              (lambda (_%rest286419%_ _%x286420%_)
                                (let ((__tmp88765
                                       (_%recur86375%_
                                        _%rest186398%_
                                        _%rest286419%_)))
                                  (declare (not safe))
                                  (_%f86366%_
                                   _%x186399%_
                                   _%x286420%_
                                   __tmp88765)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28640086408%_))
                            (let ((_%hd8640586425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28640086408%_)))
                                  (_%tl8640686427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28640086408%_))))
                              (let* ((_%x286430%_ _%hd8640586425%_)
                                     (_%rest286432%_ _%tl8640686427%_))
                                (_%K8640486422%_ _%rest286432%_ _%x286430%_)))
                            (_%else8640286416%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18637986387%_))
                  (let ((_%hd8638486437%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18637986387%_)))
                        (_%tl8638586439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18637986387%_))))
                    (let* ((_%x186442%_ _%hd8638486437%_)
                           (_%rest186444%_ _%tl8638586439%_))
                      (_%K8638386434%_ _%rest186444%_ _%x186442%_)))
                  (_%else8638186395%_)))))))
    (define foldr
      (lambda _g88767_
        (let ((_g88766_ (let () (declare (not safe)) (##length _g88767_))))
          (cond ((let () (declare (not safe)) (##fx= _g88766_ 3))
                 (apply foldr1 _g88767_))
                ((let () (declare (not safe)) (##fx= _g88766_ 4))
                 (apply foldr2 _g88767_))
                ((let () (declare (not safe)) (##fx>= _g88766_ 4))
                 (apply foldr* _g88767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g88767_))))))
    (define foldr*
      (lambda (_%f86329%_ _%iv86330%_ . _%rest86331%_)
        (if (procedure? _%f86329%_)
            (let ((_%f86335%_ _%f86329%_))
              (declare (not safe))
              (##apply __foldr* _%f86335%_ _%iv86330%_ _%rest86331%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f86329%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f86308%_ _%iv86309%_ . _%rest86310%_)
        (let ((_%f86313%_ _%f86308%_))
          (let _%recur86322%_ ((_%rest86324%_ _%rest86310%_))
            (if (__andmap1 pair? _%rest86324%_)
                (let ((__tmp88768
                       (__foldr1
                        (lambda (_%xs86326%_ _%r86327%_)
                          (cons (car _%xs86326%_) _%r86327%_))
                        (list (_%recur86322%_ (map cdr _%rest86324%_)))
                        _%rest86324%_)))
                  (declare (not safe))
                  (##apply _%f86313%_ __tmp88768))
                _%iv86309%_)))))
    (define remove-nulls!
      (lambda (_%l86195%_)
        (let* ((_%l8619686209%_ _%l86195%_)
               (_%E8620086213%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8619686209%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8620586298%_
                 (lambda (_%r86296%_) (remove-nulls! _%r86296%_)))
                (_%K8620286285%_
                 (lambda (_%r86225%_)
                   (let _%loop86227%_ ((_%l86229%_ _%l86195%_)
                                       (_%r86230%_ _%r86225%_))
                     (let* ((_%r8623186244%_ _%r86230%_)
                            (_%E8623586248%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8623186244%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8624086275%_
                              (lambda (_%rr86273%_)
                                (let ((__tmp88770 _%l86229%_)
                                      (__tmp88769 (remove-nulls! _%rr86273%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp88770 __tmp88769))))
                             (_%K8623786262%_
                              (lambda (_%rr86260%_)
                                (_%loop86227%_ _%r86230%_ _%rr86260%_)))
                             (_%K8623686253%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8623186244%_))
                             (let ((_%tl8624286280%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8623186244%_)))
                                   (_%hd8624186278%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8623186244%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8624186278%_))
                                   (let ((_%rr86283%_ _%tl8624286280%_))
                                     (_%K8624086275%_ _%rr86283%_))
                                   (let ((_%rr86268%_ _%tl8624286280%_))
                                     (_%K8623786262%_ _%rr86268%_))))
                             '#!void))))
                   _%l86195%_))
                (_%K8620186218%_ (lambda () _%l86195%_)))
            (if (let () (declare (not safe)) (##pair? _%l8619686209%_))
                (let ((_%tl8620786303%_
                       (let () (declare (not safe)) (##cdr _%l8619686209%_)))
                      (_%hd8620686301%_
                       (let () (declare (not safe)) (##car _%l8619686209%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8620686301%_))
                      (let ((_%r86306%_ _%tl8620786303%_))
                        (remove-nulls! _%r86306%_))
                      (let ((_%r86291%_ _%tl8620786303%_))
                        (_%K8620286285%_ _%r86291%_))))
                (_%K8620186218%_))))))
    (define append1!
      (lambda (_%l86180%_ _%x86181%_)
        (let ((_%l286184%_ (cons _%x86181%_ '())))
          (if (pair? _%l86180%_)
              (let ((_%l86186%_ _%l86180%_))
                (let ((__tmp88771
                       (let () (declare (not safe)) (##last-pair _%l86186%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp88771 _%l286184%_))
                _%l86186%_)
              _%l286184%_))))
    (define append-reverse-until
      (lambda (_%pred86164%_ _%rhead86165%_ _%tail86166%_)
        (if (procedure? _%pred86164%_)
            (let ((_%pred86170%_ _%pred86164%_))
              (__append-reverse-until
               _%pred86170%_
               _%rhead86165%_
               _%tail86166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred86164%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred86106%_ _%rhead86107%_ _%tail86108%_)
        (let ((_%pred86111%_ _%pred86106%_))
          (let _%loop86120%_ ((_%rhead86122%_ _%rhead86107%_)
                              (_%tail86123%_ _%tail86108%_))
            (let* ((_%rhead8612586134%_ _%rhead86122%_)
                   (_%E8612886138%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8612586134%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8613286161%_ (lambda () (values '() _%tail86123%_)))
                    (_%K8612986145%_
                     (lambda (_%r86142%_ _%a86143%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred86111%_ _%a86143%_))
                           (values _%rhead86122%_ _%tail86123%_)
                           (_%loop86120%_
                            _%r86142%_
                            (cons _%a86143%_ _%tail86123%_))))))
                (let ((_%try-match8612786157%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8612586134%_))
                             (let ((_%tl8613186150%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8612586134%_)))
                                   (_%hd8613086148%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8612586134%_))))
                               (let ((_%a86153%_ _%hd8613086148%_)
                                     (_%r86155%_ _%tl8613186150%_))
                                 (_%K8612986145%_ _%r86155%_ _%a86153%_)))
                             (_%E8612886138%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8612586134%_))
                      (_%K8613286161%_)
                      (_%try-match8612786157%_)))))))))
    (define andmap1
      (lambda (_%f86091%_ _%lst86092%_)
        (if (procedure? _%f86091%_)
            (let ((_%f86096%_ _%f86091%_)) (__andmap1 _%f86096%_ _%lst86092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f86091%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f86040%_ _%lst86041%_)
        (let ((_%f86044%_ _%f86040%_))
          (let _%lp86053%_ ((_%rest86055%_ _%lst86041%_))
            (let* ((_%rest8605786065%_ _%rest86055%_)
                   (_%else8605986073%_ (lambda () '#t))
                   (_%K8606186079%_
                    (lambda (_%rest86076%_ _%x86077%_)
                      (if (let () (declare (not safe)) (_%f86044%_ _%x86077%_))
                          (_%lp86053%_ _%rest86076%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8605786065%_))
                  (let ((_%hd8606286082%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8605786065%_)))
                        (_%tl8606386084%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8605786065%_))))
                    (let* ((_%x86087%_ _%hd8606286082%_)
                           (_%rest86089%_ _%tl8606386084%_))
                      (_%K8606186079%_ _%rest86089%_ _%x86087%_)))
                  (_%else8605986073%_)))))))
    (define andmap2
      (lambda (_%f86024%_ _%lst186025%_ _%lst286026%_)
        (if (procedure? _%f86024%_)
            (let ((_%f86030%_ _%f86024%_))
              (__andmap2 _%f86030%_ _%lst186025%_ _%lst286026%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f86024%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f85938%_ _%lst185939%_ _%lst285940%_)
        (let ((_%f85943%_ _%f85938%_))
          (let _%lp85952%_ ((_%rest185954%_ _%lst185939%_)
                            (_%rest285955%_ _%lst285940%_))
            (let* ((_%rest18595785965%_ _%rest185954%_)
                   (_%else8595985973%_ (lambda () '#t))
                   (_%K8596186012%_
                    (lambda (_%rest185976%_ _%x185977%_)
                      (let* ((_%rest28597885986%_ _%rest285955%_)
                             (_%else8598085994%_ (lambda () '#t))
                             (_%K8598286000%_
                              (lambda (_%rest285997%_ _%x285998%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f85943%_ _%x185977%_ _%x285998%_))
                                    (_%lp85952%_ _%rest185976%_ _%rest285997%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28597885986%_))
                            (let ((_%hd8598386003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28597885986%_)))
                                  (_%tl8598486005%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28597885986%_))))
                              (let* ((_%x286008%_ _%hd8598386003%_)
                                     (_%rest286010%_ _%tl8598486005%_))
                                (_%K8598286000%_ _%rest286010%_ _%x286008%_)))
                            (_%else8598085994%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18595785965%_))
                  (let ((_%hd8596286015%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18595785965%_)))
                        (_%tl8596386017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18595785965%_))))
                    (let* ((_%x186020%_ _%hd8596286015%_)
                           (_%rest186022%_ _%tl8596386017%_))
                      (_%K8596186012%_ _%rest186022%_ _%x186020%_)))
                  (_%else8595985973%_)))))))
    (define andmap
      (lambda _g88773_
        (let ((_g88772_ (let () (declare (not safe)) (##length _g88773_))))
          (cond ((let () (declare (not safe)) (##fx= _g88772_ 2))
                 (apply andmap1 _g88773_))
                ((let () (declare (not safe)) (##fx= _g88772_ 3))
                 (apply andmap2 _g88773_))
                ((let () (declare (not safe)) (##fx>= _g88772_ 3))
                 (apply andmap* _g88773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g88773_))))))
    (define andmap*
      (lambda (_%f85911%_ . _%rest85912%_)
        (if (procedure? _%f85911%_)
            (let ((_%f85916%_ _%f85911%_))
              (declare (not safe))
              (##apply __andmap* _%f85916%_ _%rest85912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f85911%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f85893%_ . _%rest85894%_)
        (let ((_%f85897%_ _%f85893%_))
          (let _%recur85906%_ ((_%rest85908%_ _%rest85894%_))
            (if (__andmap1 pair? _%rest85908%_)
                (if (let ((__tmp88774 (map car _%rest85908%_)))
                      (declare (not safe))
                      (##apply _%f85897%_ __tmp88774))
                    (_%recur85906%_ (map cdr _%rest85908%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f85878%_ _%lst85879%_)
        (if (procedure? _%f85878%_)
            (let ((_%f85883%_ _%f85878%_)) (__ormap1 _%f85883%_ _%lst85879%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f85878%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f85825%_ _%lst85826%_)
        (let ((_%f85829%_ _%f85825%_))
          (let _%lp85838%_ ((_%rest85840%_ _%lst85826%_))
            (let* ((_%rest8584185849%_ _%rest85840%_)
                   (_%else8584385857%_ (lambda () '#f))
                   (_%K8584585866%_
                    (lambda (_%rest85860%_ _%x85861%_)
                      (let ((_%$e85863%_
                             (let ()
                               (declare (not safe))
                               (_%f85829%_ _%x85861%_))))
                        (if _%$e85863%_
                            _%$e85863%_
                            (_%lp85838%_ _%rest85860%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8584185849%_))
                  (let ((_%hd8584685869%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8584185849%_)))
                        (_%tl8584785871%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8584185849%_))))
                    (let* ((_%x85874%_ _%hd8584685869%_)
                           (_%rest85876%_ _%tl8584785871%_))
                      (_%K8584585866%_ _%rest85876%_ _%x85874%_)))
                  (_%else8584385857%_)))))))
    (define ormap2
      (lambda (_%f85809%_ _%lst185810%_ _%lst285811%_)
        (if (procedure? _%f85809%_)
            (let ((_%f85815%_ _%f85809%_))
              (__ormap2 _%f85815%_ _%lst185810%_ _%lst285811%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f85809%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f85721%_ _%lst185722%_ _%lst285723%_)
        (let ((_%f85726%_ _%f85721%_))
          (let _%lp85735%_ ((_%rest185737%_ _%lst185722%_)
                            (_%rest285738%_ _%lst285723%_))
            (let* ((_%rest18573985747%_ _%rest185737%_)
                   (_%else8574185755%_ (lambda () '#f))
                   (_%K8574385797%_
                    (lambda (_%rest185758%_ _%x185759%_)
                      (let* ((_%rest28576085768%_ _%rest285738%_)
                             (_%else8576285776%_ (lambda () '#f))
                             (_%K8576485785%_
                              (lambda (_%rest285779%_ _%x285780%_)
                                (let ((_%$e85782%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f85726%_
                                          _%x185759%_
                                          _%x285780%_))))
                                  (if _%$e85782%_
                                      _%$e85782%_
                                      (_%lp85735%_
                                       _%rest185758%_
                                       _%rest285779%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28576085768%_))
                            (let ((_%hd8576585788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28576085768%_)))
                                  (_%tl8576685790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28576085768%_))))
                              (let* ((_%x285793%_ _%hd8576585788%_)
                                     (_%rest285795%_ _%tl8576685790%_))
                                (_%K8576485785%_ _%rest285795%_ _%x285793%_)))
                            (_%else8576285776%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18573985747%_))
                  (let ((_%hd8574485800%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18573985747%_)))
                        (_%tl8574585802%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18573985747%_))))
                    (let* ((_%x185805%_ _%hd8574485800%_)
                           (_%rest185807%_ _%tl8574585802%_))
                      (_%K8574385797%_ _%rest185807%_ _%x185805%_)))
                  (_%else8574185755%_)))))))
    (define ormap
      (lambda _g88776_
        (let ((_g88775_ (let () (declare (not safe)) (##length _g88776_))))
          (cond ((let () (declare (not safe)) (##fx= _g88775_ 2))
                 (apply ormap1 _g88776_))
                ((let () (declare (not safe)) (##fx= _g88775_ 3))
                 (apply ormap2 _g88776_))
                ((let () (declare (not safe)) (##fx>= _g88775_ 3))
                 (apply ormap* _g88776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g88776_))))))
    (define ormap*
      (lambda (_%f85694%_ . _%rest85695%_)
        (if (procedure? _%f85694%_)
            (let ((_%f85699%_ _%f85694%_))
              (declare (not safe))
              (##apply __ormap* _%f85699%_ _%rest85695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f85694%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f85674%_ . _%rest85675%_)
        (let ((_%f85678%_ _%f85674%_))
          (let _%recur85687%_ ((_%rest85689%_ _%rest85675%_))
            (if (__andmap1 pair? _%rest85689%_)
                (let ((_%$e85691%_
                       (let ((__tmp88777 (map car _%rest85689%_)))
                         (declare (not safe))
                         (##apply _%f85678%_ __tmp88777))))
                  (if _%$e85691%_
                      _%$e85691%_
                      (_%recur85687%_ (map cdr _%rest85689%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f85659%_ _%lst85660%_)
        (if (procedure? _%f85659%_)
            (let ((_%f85664%_ _%f85659%_))
              (__filter-map1 _%f85664%_ _%lst85660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f85659%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f85602%_ _%lst85603%_)
        (let ((_%f85606%_ _%f85602%_))
          (let _%recur85615%_ ((_%rest85617%_ _%lst85603%_))
            (let* ((_%rest8561985627%_ _%rest85617%_)
                   (_%else8562185635%_ (lambda () '()))
                   (_%K8562385647%_
                    (lambda (_%rest85638%_ _%x85639%_)
                      (let ((_%$e85641%_
                             (let ()
                               (declare (not safe))
                               (_%f85606%_ _%x85639%_))))
                        (if _%$e85641%_
                            ((lambda (_%r85644%_)
                               (cons _%r85644%_
                                     (_%recur85615%_ _%rest85638%_)))
                             _%$e85641%_)
                            (_%recur85615%_ _%rest85638%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8561985627%_))
                  (let ((_%hd8562485650%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8561985627%_)))
                        (_%tl8562585652%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8561985627%_))))
                    (let* ((_%x85655%_ _%hd8562485650%_)
                           (_%rest85657%_ _%tl8562585652%_))
                      (_%K8562385647%_ _%rest85657%_ _%x85655%_)))
                  (_%else8562185635%_)))))))
    (define filter-map2
      (lambda (_%f85586%_ _%lst185587%_ _%lst285588%_)
        (if (procedure? _%f85586%_)
            (let ((_%f85592%_ _%f85586%_))
              (__filter-map2 _%f85592%_ _%lst185587%_ _%lst285588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f85586%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f85494%_ _%lst185495%_ _%lst285496%_)
        (let ((_%f85499%_ _%f85494%_))
          (let _%recur85508%_ ((_%rest185510%_ _%lst185495%_)
                               (_%rest285511%_ _%lst285496%_))
            (let* ((_%rest18551385521%_ _%rest185510%_)
                   (_%else8551585529%_ (lambda () '()))
                   (_%K8551785574%_
                    (lambda (_%rest185532%_ _%x185533%_)
                      (let* ((_%rest28553485542%_ _%rest285511%_)
                             (_%else8553685550%_ (lambda () '()))
                             (_%K8553885562%_
                              (lambda (_%rest285553%_ _%x285554%_)
                                (let ((_%$e85556%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f85499%_
                                          _%x185533%_
                                          _%x285554%_))))
                                  (if _%$e85556%_
                                      ((lambda (_%r85559%_)
                                         (cons _%r85559%_
                                               (_%recur85508%_
                                                _%rest185532%_
                                                _%rest285553%_)))
                                       _%$e85556%_)
                                      (_%recur85508%_
                                       _%rest185532%_
                                       _%rest285553%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28553485542%_))
                            (let ((_%hd8553985565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28553485542%_)))
                                  (_%tl8554085567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28553485542%_))))
                              (let* ((_%x285570%_ _%hd8553985565%_)
                                     (_%rest285572%_ _%tl8554085567%_))
                                (_%K8553885562%_ _%rest285572%_ _%x285570%_)))
                            (_%else8553685550%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18551385521%_))
                  (let ((_%hd8551885577%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18551385521%_)))
                        (_%tl8551985579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18551385521%_))))
                    (let* ((_%x185582%_ _%hd8551885577%_)
                           (_%rest185584%_ _%tl8551985579%_))
                      (_%K8551785574%_ _%rest185584%_ _%x185582%_)))
                  (_%else8551585529%_)))))))
    (define filter-map
      (lambda _g88779_
        (let ((_g88778_ (let () (declare (not safe)) (##length _g88779_))))
          (cond ((let () (declare (not safe)) (##fx= _g88778_ 2))
                 (apply filter-map1 _g88779_))
                ((let () (declare (not safe)) (##fx= _g88778_ 3))
                 (apply filter-map2 _g88779_))
                ((let () (declare (not safe)) (##fx>= _g88778_ 3))
                 (apply filter-map* _g88779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g88779_))))))
    (define filter-map*
      (lambda (_%f85467%_ . _%rest85468%_)
        (if (procedure? _%f85467%_)
            (let ((_%f85472%_ _%f85467%_))
              (declare (not safe))
              (##apply __filter-map* _%f85472%_ _%rest85468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f85467%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f85443%_ . _%rest85444%_)
        (let ((_%f85447%_ _%f85443%_))
          (let _%recur85456%_ ((_%rest85458%_ _%rest85444%_))
            (if (__andmap1 pair? _%rest85458%_)
                (let ((_%$e85461%_
                       (let ((__tmp88780 (map car _%rest85458%_)))
                         (declare (not safe))
                         (##apply _%f85447%_ __tmp88780))))
                  (if _%$e85461%_
                      ((lambda (_%r85464%_)
                         (cons _%r85464%_
                               (_%recur85456%_ (map cdr _%rest85458%_))))
                       _%$e85461%_)
                      (_%recur85456%_ (map cdr _%rest85458%_))))
                '())))))
    (define agetq__%
      (lambda (_%key85419%_ _%lst85421%_ _%default85423%_)
        (let ((_%$e85426%_
               (if (pair? _%lst85421%_) (assq _%key85419%_ _%lst85421%_) '#f)))
          (if _%$e85426%_
              (cdr _%$e85426%_)
              (if (procedure? _%default85423%_)
                  (_%default85423%_ _%key85419%_)
                  _%default85423%_)))))
    (define agetq__0
      (lambda (_%key85434%_ _%lst85435%_)
        (let ((_%default85437%_ '#f))
          (agetq__% _%key85434%_ _%lst85435%_ _%default85437%_))))
    (define agetq
      (lambda _g88782_
        (let ((_g88781_ (let () (declare (not safe)) (##length _g88782_))))
          (cond ((let () (declare (not safe)) (##fx= _g88781_ 2))
                 (apply agetq__0 _g88782_))
                ((let () (declare (not safe)) (##fx= _g88781_ 3))
                 (apply agetq__% _g88782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g88782_))))))
    (define agetv__%
      (lambda (_%key85394%_ _%lst85396%_ _%default85398%_)
        (let ((_%$e85401%_
               (if (pair? _%lst85396%_) (assv _%key85394%_ _%lst85396%_) '#f)))
          (if _%$e85401%_
              (cdr _%$e85401%_)
              (if (procedure? _%default85398%_)
                  (_%default85398%_ _%key85394%_)
                  _%default85398%_)))))
    (define agetv__0
      (lambda (_%key85409%_ _%lst85410%_)
        (let ((_%default85412%_ '#f))
          (agetv__% _%key85409%_ _%lst85410%_ _%default85412%_))))
    (define agetv
      (lambda _g88784_
        (let ((_g88783_ (let () (declare (not safe)) (##length _g88784_))))
          (cond ((let () (declare (not safe)) (##fx= _g88783_ 2))
                 (apply agetv__0 _g88784_))
                ((let () (declare (not safe)) (##fx= _g88783_ 3))
                 (apply agetv__% _g88784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g88784_))))))
    (define aget__%
      (lambda (_%key85369%_ _%lst85371%_ _%default85373%_)
        (let ((_%$e85376%_
               (if (pair? _%lst85371%_)
                   (assoc _%key85369%_ _%lst85371%_)
                   '#f)))
          (if _%$e85376%_
              (cdr _%$e85376%_)
              (if (procedure? _%default85373%_)
                  (_%default85373%_ _%key85369%_)
                  _%default85373%_)))))
    (define aget__0
      (lambda (_%key85384%_ _%lst85385%_)
        (let ((_%default85387%_ '#f))
          (aget__% _%key85384%_ _%lst85385%_ _%default85387%_))))
    (define aget
      (lambda _g88786_
        (let ((_g88785_ (let () (declare (not safe)) (##length _g88786_))))
          (cond ((let () (declare (not safe)) (##fx= _g88785_ 2))
                 (apply aget__0 _g88786_))
                ((let () (declare (not safe)) (##fx= _g88785_ 3))
                 (apply aget__% _g88786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g88786_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key85298%_ _%lst85300%_ _%default85302%_)
        (let _%lp85305%_ ((_%rest85308%_ _%lst85300%_))
          (let* ((_%rest8531085320%_ _%rest85308%_)
                 (_%else8531285328%_
                  (lambda ()
                    (if (procedure? _%default85302%_)
                        (_%default85302%_ _%key85298%_)
                        _%default85302%_)))
                 (_%K8531485337%_
                  (lambda (_%rest85331%_ _%v85332%_ _%k85334%_)
                    (if (eq? _%k85334%_ _%key85298%_)
                        _%v85332%_
                        (_%lp85305%_ _%rest85331%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8531085320%_))
                (let ((_%hd8531585340%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8531085320%_)))
                      (_%tl8531685342%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8531085320%_))))
                  (let ((_%k85345%_ _%hd8531585340%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8531685342%_))
                        (let ((_%hd8531785347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8531685342%_)))
                              (_%tl8531885349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8531685342%_))))
                          (let* ((_%v85352%_ _%hd8531785347%_)
                                 (_%rest85354%_ _%tl8531885349%_))
                            (_%K8531485337%_
                             _%rest85354%_
                             _%v85352%_
                             _%k85345%_)))
                        (_%else8531285328%_))))
                (_%else8531285328%_))))))
    (define pgetq__0
      (lambda (_%key85359%_ _%lst85360%_)
        (let ((_%default85362%_ '#f))
          (pgetq__% _%key85359%_ _%lst85360%_ _%default85362%_))))
    (define pgetq
      (lambda _g88788_
        (let ((_g88787_ (let () (declare (not safe)) (##length _g88788_))))
          (cond ((let () (declare (not safe)) (##fx= _g88787_ 2))
                 (apply pgetq__0 _g88788_))
                ((let () (declare (not safe)) (##fx= _g88787_ 3))
                 (apply pgetq__% _g88788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g88788_))))))
    (define pgetv__%
      (lambda (_%key85227%_ _%lst85229%_ _%default85231%_)
        (let _%lp85234%_ ((_%rest85237%_ _%lst85229%_))
          (let* ((_%rest8523985249%_ _%rest85237%_)
                 (_%else8524185257%_
                  (lambda ()
                    (if (procedure? _%default85231%_)
                        (_%default85231%_ _%key85227%_)
                        _%default85231%_)))
                 (_%K8524385266%_
                  (lambda (_%rest85260%_ _%v85261%_ _%k85263%_)
                    (if (eqv? _%k85263%_ _%key85227%_)
                        _%v85261%_
                        (_%lp85234%_ _%rest85260%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8523985249%_))
                (let ((_%hd8524485269%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8523985249%_)))
                      (_%tl8524585271%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8523985249%_))))
                  (let ((_%k85274%_ _%hd8524485269%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8524585271%_))
                        (let ((_%hd8524685276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8524585271%_)))
                              (_%tl8524785278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8524585271%_))))
                          (let* ((_%v85281%_ _%hd8524685276%_)
                                 (_%rest85283%_ _%tl8524785278%_))
                            (_%K8524385266%_
                             _%rest85283%_
                             _%v85281%_
                             _%k85274%_)))
                        (_%else8524185257%_))))
                (_%else8524185257%_))))))
    (define pgetv__0
      (lambda (_%key85288%_ _%lst85289%_)
        (let ((_%default85291%_ '#f))
          (pgetv__% _%key85288%_ _%lst85289%_ _%default85291%_))))
    (define pgetv
      (lambda _g88790_
        (let ((_g88789_ (let () (declare (not safe)) (##length _g88790_))))
          (cond ((let () (declare (not safe)) (##fx= _g88789_ 2))
                 (apply pgetv__0 _g88790_))
                ((let () (declare (not safe)) (##fx= _g88789_ 3))
                 (apply pgetv__% _g88790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g88790_))))))
    (define pget__%
      (lambda (_%key85156%_ _%lst85158%_ _%default85160%_)
        (let _%lp85163%_ ((_%rest85166%_ _%lst85158%_))
          (let* ((_%rest8516885178%_ _%rest85166%_)
                 (_%else8517085186%_
                  (lambda ()
                    (if (procedure? _%default85160%_)
                        (_%default85160%_ _%key85156%_)
                        _%default85160%_)))
                 (_%K8517285195%_
                  (lambda (_%rest85189%_ _%v85190%_ _%k85192%_)
                    (if (equal? _%k85192%_ _%key85156%_)
                        _%v85190%_
                        (_%lp85163%_ _%rest85189%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8516885178%_))
                (let ((_%hd8517385198%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8516885178%_)))
                      (_%tl8517485200%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8516885178%_))))
                  (let ((_%k85203%_ _%hd8517385198%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8517485200%_))
                        (let ((_%hd8517585205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8517485200%_)))
                              (_%tl8517685207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8517485200%_))))
                          (let* ((_%v85210%_ _%hd8517585205%_)
                                 (_%rest85212%_ _%tl8517685207%_))
                            (_%K8517285195%_
                             _%rest85212%_
                             _%v85210%_
                             _%k85203%_)))
                        (_%else8517085186%_))))
                (_%else8517085186%_))))))
    (define pget__0
      (lambda (_%key85217%_ _%lst85218%_)
        (let ((_%default85220%_ '#f))
          (pget__% _%key85217%_ _%lst85218%_ _%default85220%_))))
    (define pget
      (lambda _g88792_
        (let ((_g88791_ (let () (declare (not safe)) (##length _g88792_))))
          (cond ((let () (declare (not safe)) (##fx= _g88791_ 2))
                 (apply pget__0 _g88792_))
                ((let () (declare (not safe)) (##fx= _g88791_ 3))
                 (apply pget__% _g88792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g88792_))))))
    (define find
      (lambda (_%pred85140%_ _%lst85141%_)
        (if (procedure? _%pred85140%_)
            (let ((_%pred85145%_ _%pred85140%_))
              (__find _%pred85145%_ _%lst85141%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred85140%_)
              '#!void))))
    (define __find
      (lambda (_%pred85123%_ _%lst85124%_)
        (let* ((_%pred85127%_ _%pred85123%_)
               (_%$e85136%_ (__memf _%pred85127%_ _%lst85124%_)))
          (if _%$e85136%_
              (let () (declare (not safe)) (##car _%$e85136%_))
              '#f))))
    (define memf
      (lambda (_%proc85108%_ _%lst85109%_)
        (if (procedure? _%proc85108%_)
            (let ((_%proc85113%_ _%proc85108%_))
              (__memf _%proc85113%_ _%lst85109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc85108%_)
              '#!void))))
    (define __memf
      (lambda (_%proc85058%_ _%lst85059%_)
        (let ((_%proc85062%_ _%proc85058%_))
          (let _%lp85071%_ ((_%rest85073%_ _%lst85059%_))
            (let* ((_%rest8507485082%_ _%rest85073%_)
                   (_%else8507685090%_ (lambda () '#f))
                   (_%K8507885096%_
                    (lambda (_%tl85093%_ _%hd85094%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85062%_ _%hd85094%_))
                          _%rest85073%_
                          (_%lp85071%_ _%tl85093%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8507485082%_))
                  (let ((_%hd8507985099%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8507485082%_)))
                        (_%tl8508085101%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8507485082%_))))
                    (let* ((_%hd85104%_ _%hd8507985099%_)
                           (_%tl85106%_ _%tl8508085101%_))
                      (_%K8507885096%_ _%tl85106%_ _%hd85104%_)))
                  (_%else8507685090%_)))))))
    (define remove1
      (lambda (_%el85011%_ _%lst85013%_)
        (let _%lp85016%_ ((_%rest85019%_ _%lst85013%_) (_%r85021%_ '()))
          (let* ((_%rest8502385031%_ _%rest85019%_)
                 (_%else8502585039%_ (lambda () _%lst85013%_))
                 (_%K8502785046%_
                  (lambda (_%rest85042%_ _%hd85043%_)
                    (if (equal? _%el85011%_ _%hd85043%_)
                        (__foldl1 cons _%rest85042%_ _%r85021%_)
                        (_%lp85016%_
                         _%rest85042%_
                         (cons _%hd85043%_ _%r85021%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8502385031%_))
                (let ((_%hd8502885049%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8502385031%_)))
                      (_%tl8502985051%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8502385031%_))))
                  (let* ((_%hd85054%_ _%hd8502885049%_)
                         (_%rest85056%_ _%tl8502985051%_))
                    (_%K8502785046%_ _%rest85056%_ _%hd85054%_)))
                (_%else8502585039%_))))))
    (define remv1
      (lambda (_%el84964%_ _%lst84966%_)
        (let _%lp84969%_ ((_%rest84972%_ _%lst84966%_) (_%r84974%_ '()))
          (let* ((_%rest8497684984%_ _%rest84972%_)
                 (_%else8497884992%_ (lambda () _%lst84966%_))
                 (_%K8498084999%_
                  (lambda (_%rest84995%_ _%hd84996%_)
                    (if (eqv? _%el84964%_ _%hd84996%_)
                        (__foldl1 cons _%rest84995%_ _%r84974%_)
                        (_%lp84969%_
                         _%rest84995%_
                         (cons _%hd84996%_ _%r84974%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8497684984%_))
                (let ((_%hd8498185002%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8497684984%_)))
                      (_%tl8498285004%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8497684984%_))))
                  (let* ((_%hd85007%_ _%hd8498185002%_)
                         (_%rest85009%_ _%tl8498285004%_))
                    (_%K8498084999%_ _%rest85009%_ _%hd85007%_)))
                (_%else8497884992%_))))))
    (define remq1
      (lambda (_%el84917%_ _%lst84919%_)
        (let _%lp84922%_ ((_%rest84925%_ _%lst84919%_) (_%r84927%_ '()))
          (let* ((_%rest8492984937%_ _%rest84925%_)
                 (_%else8493184945%_ (lambda () _%lst84919%_))
                 (_%K8493384952%_
                  (lambda (_%rest84948%_ _%hd84949%_)
                    (if (eq? _%el84917%_ _%hd84949%_)
                        (__foldl1 cons _%rest84948%_ _%r84927%_)
                        (_%lp84922%_
                         _%rest84948%_
                         (cons _%hd84949%_ _%r84927%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8492984937%_))
                (let ((_%hd8493484955%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8492984937%_)))
                      (_%tl8493584957%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8492984937%_))))
                  (let* ((_%hd84960%_ _%hd8493484955%_)
                         (_%rest84962%_ _%tl8493584957%_))
                    (_%K8493384952%_ _%rest84962%_ _%hd84960%_)))
                (_%else8493184945%_))))))
    (define remf
      (lambda (_%proc84902%_ _%lst84903%_)
        (if (procedure? _%proc84902%_)
            (let ((_%proc84907%_ _%proc84902%_))
              (__remf _%proc84907%_ _%lst84903%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc84902%_)
              '#!void))))
    (define __remf
      (lambda (_%proc84851%_ _%lst84852%_)
        (let ((_%proc84855%_ _%proc84851%_))
          (let _%lp84864%_ ((_%rest84866%_ _%lst84852%_) (_%r84867%_ '()))
            (let* ((_%rest8486884876%_ _%rest84866%_)
                   (_%else8487084884%_ (lambda () _%lst84852%_))
                   (_%K8487284890%_
                    (lambda (_%rest84887%_ _%hd84888%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84855%_ _%hd84888%_))
                          (__foldl1 cons _%rest84887%_ _%r84867%_)
                          (_%lp84864%_
                           _%rest84887%_
                           (cons _%hd84888%_ _%r84867%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8486884876%_))
                  (let ((_%hd8487384893%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8486884876%_)))
                        (_%tl8487484895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8486884876%_))))
                    (let* ((_%hd84898%_ _%hd8487384893%_)
                           (_%rest84900%_ _%tl8487484895%_))
                      (_%K8487284890%_ _%rest84900%_ _%hd84898%_)))
                  (_%else8487084884%_)))))))
    (define 1+
      (lambda (_%x84837%_)
        (if (number? _%x84837%_)
            (let ((_%x84841%_ _%x84837%_)) (__1+ _%x84841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x84837%_)
              '#!void))))
    (define __1+
      (lambda (_%x84825%_) (let ((_%x84828%_ _%x84825%_)) (+ _%x84828%_ '1))))
    (define 1-
      (lambda (_%x84811%_)
        (if (number? _%x84811%_)
            (let ((_%x84815%_ _%x84811%_)) (__1- _%x84815%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x84811%_)
              '#!void))))
    (define __1-
      (lambda (_%x84799%_) (let ((_%x84802%_ _%x84799%_)) (- _%x84802%_ '1))))
    (define fx1+
      (lambda (_%x84785%_)
        (if (fixnum? _%x84785%_)
            (let ((_%x84789%_ _%x84785%_)) (__fx1+ _%x84789%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x84785%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x84773%_)
        (let ((_%x84776%_ _%x84773%_))
          (declare (not safe))
          (##fx+ _%x84776%_ '1))))
    (define fx1-
      (lambda (_%x84759%_)
        (if (fixnum? _%x84759%_)
            (let ((_%x84763%_ _%x84759%_)) (__fx1- _%x84763%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x84759%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x84747%_)
        (let ((_%x84750%_ _%x84747%_))
          (declare (not safe))
          (##fx- _%x84750%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x84744%_)
        (if (fixnum? _%x84744%_)
            (let () (declare (not safe)) (##fx>= _%x84744%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x84741%_)
        (if (fixnum? _%x84741%_)
            (let () (declare (not safe)) (##fx> _%x84741%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x84738%_)
        (let () (declare (not safe)) (##fx= _%x84738%_ '0))))
    (define fx<0?
      (lambda (_%x84735%_)
        (if (fixnum? _%x84735%_)
            (let () (declare (not safe)) (##fx< _%x84735%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x84732%_)
        (if (fixnum? _%x84732%_)
            (let () (declare (not safe)) (##fx<= _%x84732%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x84729%_)
        (if (symbol? _%x84729%_) (not (uninterned-symbol? _%x84729%_)) '#f)))
    (define display-as-string
      (lambda (_%x84714%_ _%port84715%_)
        (if (output-port? _%port84715%_)
            (let ((_%port84719%_ _%port84715%_))
              (__display-as-string _%x84714%_ _%port84719%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port84715%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x84671%_ _%port84672%_)
        (let ((_%port84675%_ _%port84672%_))
          (if (or (string? _%x84671%_)
                  (symbol? _%x84671%_)
                  (keyword? _%x84671%_)
                  (number? _%x84671%_)
                  (char? _%x84671%_))
              (display _%x84671%_ _%port84675%_)
              (if (pair? _%x84671%_)
                  (let ()
                    (__display-as-string (car _%x84671%_) _%port84675%_)
                    (__display-as-string (cdr _%x84671%_) _%port84675%_))
                  (if (vector? _%x84671%_)
                      (vector-for-each
                       (lambda (_%g8469884700%_)
                         (__display-as-string _%g8469884700%_ _%port84675%_))
                       _%x84671%_)
                      (if (or (null? _%x84671%_)
                              (eq? _%x84671%_ '#!void)
                              (eof-object? _%x84671%_)
                              (boolean? _%x84671%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x84671%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x84654%_)
        (if (string? _%x84654%_)
            _%x84654%_
            (if (symbol? _%x84654%_)
                (symbol->string _%x84654%_)
                (if (keyword? _%x84654%_)
                    (keyword->string _%x84654%_)
                    (if (number? _%x84654%_)
                        (number->string _%x84654%_)
                        (call-with-output-string
                         '()
                         (lambda (_%g8466084662%_)
                           (__display-as-string
                            _%x84654%_
                            _%g8466084662%_)))))))))
    (define as-string__1
      (lambda _%args84665%_
        (call-with-output-string
         '()
         (lambda (_%g8466684668%_)
           (__display-as-string _%args84665%_ _%g8466684668%_)))))
    (define as-string
      (lambda _g88794_
        (let ((_g88793_ (let () (declare (not safe)) (##length _g88794_))))
          (cond ((let () (declare (not safe)) (##fx= _g88793_ 1))
                 (apply as-string__0 _g88794_))
                (#t
                 (apply (lambda _%args84665%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args84665%_)))
                        _g88794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g88794_))))))
    (define make-symbol__0
      (lambda (_%x84650%_)
        (if (interned-symbol? _%x84650%_)
            _%x84650%_
            (string->symbol (as-string__0 _%x84650%_)))))
    (define make-symbol__1
      (lambda _%args84652%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args84652%_)))))
    (define make-symbol
      (lambda _g88796_
        (let ((_g88795_ (let () (declare (not safe)) (##length _g88796_))))
          (cond ((let () (declare (not safe)) (##fx= _g88795_ 1))
                 (apply make-symbol__0 _g88796_))
                (#t
                 (apply (lambda _%args84652%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args84652%_)))
                        _g88796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g88796_))))))
    (define make-keyword__0
      (lambda (_%x84646%_)
        (if (interned-keyword? _%x84646%_)
            _%x84646%_
            (string->keyword (as-string__0 _%x84646%_)))))
    (define make-keyword__1
      (lambda _%args84648%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args84648%_)))))
    (define make-keyword
      (lambda _g88798_
        (let ((_g88797_ (let () (declare (not safe)) (##length _g88798_))))
          (cond ((let () (declare (not safe)) (##fx= _g88797_ 1))
                 (apply make-keyword__0 _g88798_))
                (#t
                 (apply (lambda _%args84648%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args84648%_)))
                        _g88798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g88798_))))))
    (define interned-keyword?
      (lambda (_%x84643%_)
        (if (keyword? _%x84643%_) (not (uninterned-keyword? _%x84643%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym84629%_)
        (if (symbol? _%sym84629%_)
            (let ((_%sym84633%_ _%sym84629%_))
              (__symbol->keyword _%sym84633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym84629%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym84617%_)
        (let ((_%sym84620%_ _%sym84617%_))
          (if (uninterned-symbol? _%sym84620%_)
              (let ((__tmp88799
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym84620%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp88799))
              (let ((__tmp88800
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym84620%_))))
                (declare (not safe))
                (##string->keyword __tmp88800))))))
    (define keyword->symbol
      (lambda (_%sym84603%_)
        (if (keyword? _%sym84603%_)
            (let ((_%sym84607%_ _%sym84603%_))
              (__keyword->symbol _%sym84607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym84603%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym84591%_)
        (let ((_%sym84594%_ _%sym84591%_))
          (if (uninterned-keyword? _%sym84594%_)
              (let ((__tmp88801
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym84594%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88801))
              (let ((__tmp88802
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym84594%_))))
                (declare (not safe))
                (##string->symbol __tmp88802))))))
    (define bytes->string__%
      (lambda (_%bstr84556%_ _%enc84557%_)
        (if (u8vector? _%bstr84556%_)
            (let ((_%bstr84561%_ _%bstr84556%_))
              (if (symbol? _%enc84557%_)
                  (let ((_%enc84571%_ _%enc84557%_))
                    (__bytes->string__% _%bstr84561%_ _%enc84571%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc84557%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr84556%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr84584%_)
        (let ((_%enc84586%_ 'UTF-8))
          (bytes->string__% _%bstr84584%_ _%enc84586%_))))
    (define bytes->string
      (lambda _g88804_
        (let ((_g88803_ (let () (declare (not safe)) (##length _g88804_))))
          (cond ((let () (declare (not safe)) (##fx= _g88803_ 1))
                 (apply bytes->string__0 _g88804_))
                ((let () (declare (not safe)) (##fx= _g88803_ 2))
                 (apply bytes->string__% _g88804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88804_))))))
    (define __bytes->string__%
      (lambda (_%bstr84515%_ _%enc84516%_)
        (let* ((_%bstr84519%_ _%bstr84515%_) (_%enc84527%_ _%enc84516%_))
          (if (eq? _%enc84527%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr84519%_))
              (let* ((_%in84536%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc84527%_
                                   (cons 'init: (cons _%bstr84519%_ '()))))))
                     (_%len84538%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr84519%_)))
                     (_%out84540%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len84538%_)))
                     (_%n84542%_
                      (read-substring
                       _%out84540%_
                       '0
                       _%len84538%_
                       _%in84536%_)))
                (string-shrink! _%out84540%_ _%n84542%_)
                _%out84540%_)))))
    (define __bytes->string__0
      (lambda (_%bstr84548%_)
        (let ((_%enc84550%_ 'UTF-8))
          (__bytes->string__% _%bstr84548%_ _%enc84550%_))))
    (define __bytes->string
      (lambda _g88806_
        (let ((_g88805_ (let () (declare (not safe)) (##length _g88806_))))
          (cond ((let () (declare (not safe)) (##fx= _g88805_ 1))
                 (apply __bytes->string__0 _g88806_))
                ((let () (declare (not safe)) (##fx= _g88805_ 2))
                 (apply __bytes->string__% _g88806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88806_))))))
    (define string->bytes__%
      (lambda (_%str84479%_ _%enc84480%_)
        (if (string? _%str84479%_)
            (let ((_%str84484%_ _%str84479%_))
              (if (symbol? _%enc84480%_)
                  (let ((_%enc84494%_ _%enc84480%_))
                    (__string->bytes__% _%str84484%_ _%enc84494%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc84480%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str84479%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str84507%_)
        (let ((_%enc84509%_ 'UTF-8))
          (string->bytes__% _%str84507%_ _%enc84509%_))))
    (define string->bytes
      (lambda _g88808_
        (let ((_g88807_ (let () (declare (not safe)) (##length _g88808_))))
          (cond ((let () (declare (not safe)) (##fx= _g88807_ 1))
                 (apply string->bytes__0 _g88808_))
                ((let () (declare (not safe)) (##fx= _g88807_ 2))
                 (apply string->bytes__% _g88808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88808_))))))
    (define __string->bytes__%
      (lambda (_%str84447%_ _%enc84448%_)
        (let* ((_%str84451%_ _%str84447%_) (_%enc84459%_ _%enc84448%_))
          (if (eq? _%enc84459%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str84451%_))
              (let ((__tmp88809
                     (let ()
                       (declare (not safe))
                       (##string-length _%str84451%_))))
                (declare (not safe))
                (__substring->bytes
                 _%str84451%_
                 '0
                 __tmp88809
                 _%enc84459%_))))))
    (define __string->bytes__0
      (lambda (_%str84471%_)
        (let ((_%enc84473%_ 'UTF-8))
          (__string->bytes__% _%str84471%_ _%enc84473%_))))
    (define __string->bytes
      (lambda _g88811_
        (let ((_g88810_ (let () (declare (not safe)) (##length _g88811_))))
          (cond ((let () (declare (not safe)) (##fx= _g88810_ 1))
                 (apply __string->bytes__0 _g88811_))
                ((let () (declare (not safe)) (##fx= _g88810_ 2))
                 (apply __string->bytes__% _g88811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88811_))))))
    (define substring->bytes__%
      (lambda (_%str84395%_ _%start84396%_ _%end84397%_ _%enc84398%_)
        (if (string? _%str84395%_)
            (let ((_%str84402%_ _%str84395%_))
              (if (nonnegative-fixnum? _%start84396%_)
                  (let ((_%start84412%_ _%start84396%_))
                    (if (nonnegative-fixnum? _%end84397%_)
                        (let ((_%end84422%_ _%end84397%_))
                          (__substring->bytes__%
                           _%str84402%_
                           _%start84412%_
                           _%end84422%_
                           _%enc84398%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end84397%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start84396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str84395%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str84435%_ _%start84436%_ _%end84437%_)
        (let ((_%enc84439%_ 'UTF-8))
          (substring->bytes__%
           _%str84435%_
           _%start84436%_
           _%end84437%_
           _%enc84439%_))))
    (define substring->bytes
      (lambda _g88813_
        (let ((_g88812_ (let () (declare (not safe)) (##length _g88813_))))
          (cond ((let () (declare (not safe)) (##fx= _g88812_ 3))
                 (apply substring->bytes__0 _g88813_))
                ((let () (declare (not safe)) (##fx= _g88812_ 4))
                 (apply substring->bytes__% _g88813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88813_))))))
    (define __substring->bytes__%
      (lambda (_%str84347%_ _%start84348%_ _%end84349%_ _%enc84350%_)
        (let* ((_%str84353%_ _%str84347%_)
               (_%start84361%_ _%start84348%_)
               (_%end84369%_ _%end84349%_))
          (if (eq? _%enc84350%_ 'UTF-8)
              (string->utf8 _%str84353%_ _%start84361%_ _%end84369%_)
              (let ((_%out84378%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc84350%_ '())))))
                (write-substring
                 _%str84353%_
                 _%start84361%_
                 _%end84369%_
                 _%out84378%_)
                (get-output-u8vector _%out84378%_))))))
    (define __substring->bytes__0
      (lambda (_%str84383%_ _%start84384%_ _%end84385%_)
        (let ((_%enc84387%_ 'UTF-8))
          (__substring->bytes__%
           _%str84383%_
           _%start84384%_
           _%end84385%_
           _%enc84387%_))))
    (define __substring->bytes
      (lambda _g88815_
        (let ((_g88814_ (let () (declare (not safe)) (##length _g88815_))))
          (cond ((let () (declare (not safe)) (##fx= _g88814_ 3))
                 (apply __substring->bytes__0 _g88815_))
                ((let () (declare (not safe)) (##fx= _g88814_ 4))
                 (apply __substring->bytes__% _g88815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88815_))))))
    (define string-empty?
      (lambda (_%str84332%_)
        (if (string? _%str84332%_)
            (let ((_%str84336%_ _%str84332%_)) (__string-empty? _%str84336%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str84332%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str84320%_)
        (let* ((_%str84323%_ _%str84320%_)
               (__tmp88816
                (let () (declare (not safe)) (##string-length _%str84323%_))))
          (declare (not safe))
          (##fxzero? __tmp88816))))
    (define string-index__%
      (lambda (_%str84272%_ _%char84273%_ _%start84274%_)
        (if (string? _%str84272%_)
            (let ((_%str84278%_ _%str84272%_))
              (if (char? _%char84273%_)
                  (let ((_%char84288%_ _%char84273%_))
                    (if (nonnegative-fixnum? _%start84274%_)
                        (let ((_%start84298%_ _%start84274%_))
                          (__string-index__%
                           _%str84278%_
                           _%char84288%_
                           _%start84298%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start84274%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                     'contract:
                     'char?
                     'value:
                     _%char84273%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str84272%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str84311%_ _%char84312%_)
        (let ((_%start84314%_ '0))
          (string-index__% _%str84311%_ _%char84312%_ _%start84314%_))))
    (define string-index
      (lambda _g88818_
        (let ((_g88817_ (let () (declare (not safe)) (##length _g88818_))))
          (cond ((let () (declare (not safe)) (##fx= _g88817_ 2))
                 (apply string-index__0 _g88818_))
                ((let () (declare (not safe)) (##fx= _g88817_ 3))
                 (apply string-index__% _g88818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88818_))))))
    (define __string-index__%
      (lambda (_%str84211%_ _%char84212%_ _%start84213%_)
        (let* ((_%str84216%_ _%str84211%_)
               (_%char84224%_ _%char84212%_)
               (_%start84232%_ _%start84213%_)
               (_%len84241%_
                (let () (declare (not safe)) (##string-length _%str84216%_))))
          (let _%lp84243%_ ((_%k84245%_ _%start84232%_))
            (let ((_%k84247%_ _%k84245%_))
              (if (let () (declare (not safe)) (##fx< _%k84247%_ _%len84241%_))
                  (if (eq? _%char84224%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str84216%_ _%k84247%_)))
                      _%k84247%_
                      (_%lp84243%_
                       (let () (declare (not safe)) (##fx+ _%k84247%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str84262%_ _%char84263%_)
        (let ((_%start84265%_ '0))
          (__string-index__% _%str84262%_ _%char84263%_ _%start84265%_))))
    (define __string-index
      (lambda _g88820_
        (let ((_g88819_ (let () (declare (not safe)) (##length _g88820_))))
          (cond ((let () (declare (not safe)) (##fx= _g88819_ 2))
                 (apply __string-index__0 _g88820_))
                ((let () (declare (not safe)) (##fx= _g88819_ 3))
                 (apply __string-index__% _g88820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88820_))))))
    (define string-rindex__%
      (lambda (_%str84172%_ _%char84173%_ _%start84174%_)
        (if (string? _%str84172%_)
            (let ((_%str84178%_ _%str84172%_))
              (if (char? _%char84173%_)
                  (let ((_%char84188%_ _%char84173%_))
                    (__string-rindex__%
                     _%str84178%_
                     _%char84188%_
                     _%start84174%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                     'contract:
                     'char?
                     'value:
                     _%char84173%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str84172%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str84201%_ _%char84202%_)
        (let ((_%start84204%_ '#f))
          (string-rindex__% _%str84201%_ _%char84202%_ _%start84204%_))))
    (define string-rindex
      (lambda _g88822_
        (let ((_g88821_ (let () (declare (not safe)) (##length _g88822_))))
          (cond ((let () (declare (not safe)) (##fx= _g88821_ 2))
                 (apply string-rindex__0 _g88822_))
                ((let () (declare (not safe)) (##fx= _g88821_ 3))
                 (apply string-rindex__% _g88822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88822_))))))
    (define __string-rindex__%
      (lambda (_%str84114%_ _%char84115%_ _%start84116%_)
        (let* ((_%str84119%_ _%str84114%_)
               (_%char84127%_ _%char84115%_)
               (_%len84136%_
                (let () (declare (not safe)) (##string-length _%str84119%_)))
               (_%start84138%_
                (if (fixnum? _%start84116%_)
                    _%start84116%_
                    (let () (declare (not safe)) (##fx- _%len84136%_ '1)))))
          (let _%lp84141%_ ((_%k84143%_ _%start84138%_))
            (let ((_%k84145%_ _%k84143%_))
              (if (let () (declare (not safe)) (##fx>= _%k84145%_ '0))
                  (if (eq? _%char84127%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str84119%_ _%k84145%_)))
                      _%k84145%_
                      (_%lp84141%_
                       (let () (declare (not safe)) (##fx- _%k84145%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str84162%_ _%char84163%_)
        (let ((_%start84165%_ '#f))
          (__string-rindex__% _%str84162%_ _%char84163%_ _%start84165%_))))
    (define __string-rindex
      (lambda _g88824_
        (let ((_g88823_ (let () (declare (not safe)) (##length _g88824_))))
          (cond ((let () (declare (not safe)) (##fx= _g88823_ 2))
                 (apply __string-rindex__0 _g88824_))
                ((let () (declare (not safe)) (##fx= _g88823_ 3))
                 (apply __string-rindex__% _g88824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88824_))))))
    (define string-split
      (lambda (_%str84088%_ _%char84089%_)
        (if (string? _%str84088%_)
            (let ((_%str84093%_ _%str84088%_))
              (if (char? _%char84089%_)
                  (let ((_%char84103%_ _%char84089%_))
                    (__string-split _%str84093%_ _%char84103%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                     'contract:
                     'char?
                     'value:
                     _%char84089%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str84088%_)
              '#!void))))
    (define __string-split
      (lambda (_%str84029%_ _%char84030%_)
        (let* ((_%str84033%_ _%str84029%_)
               (_%char84041%_ _%char84030%_)
               (_%len84050%_
                (let () (declare (not safe)) (##string-length _%str84033%_))))
          (let _%lp84052%_ ((_%start84054%_ '0) (_%r84055%_ '()))
            (let* ((_%start84058%_ _%start84054%_)
                   (_%$e84071%_
                    (let ()
                      (declare (not safe))
                      (__string-index
                       _%str84033%_
                       _%char84041%_
                       _%start84058%_))))
              (if _%$e84071%_
                  ((lambda (_%end84074%_)
                     (let ((_%end84076%_ _%end84074%_))
                       (_%lp84052%_
                        (let () (declare (not safe)) (##fx+ _%end84076%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str84033%_
                                 _%start84058%_
                                 _%end84076%_))
                              _%r84055%_))))
                   _%$e84071%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start84058%_ _%len84050%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str84033%_
                                _%start84058%_
                                _%len84050%_)))
                       _%r84055%_)
                      (reverse! _%r84055%_))))))))
    (define string-join
      (lambda (_%strs83879%_ _%join83880%_)
        (letrec ((_%join-length83883%_
                  (lambda (_%strs83967%_ _%jlen83968%_)
                    (let _%lp83970%_ ((_%rest83972%_ _%strs83967%_)
                                      (_%len83973%_ '0))
                      (let* ((_%len83975%_ _%len83973%_)
                             (_%rest8398383991%_ _%rest83972%_)
                             (_%else8398583999%_ (lambda () '0))
                             (_%K8398784017%_
                              (lambda (_%rest84002%_ _%hd84003%_)
                                (if (string? _%hd84003%_)
                                    (let ((_%hd84005%_ _%hd84003%_))
                                      (if (pair? _%rest84002%_)
                                          (_%lp83970%_
                                           _%rest84002%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd84005%_))
                                                _%jlen83968%_
                                                _%len83975%_))
                                          (let ((__tmp88825
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd84005%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp88825 _%len83975%_))))
                                    (error '"expected string" _%hd84003%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8398383991%_))
                            (let ((_%hd8398884020%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8398383991%_)))
                                  (_%tl8398984022%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8398383991%_))))
                              (let* ((_%hd84025%_ _%hd8398884020%_)
                                     (_%rest84027%_ _%tl8398984022%_))
                                (_%K8398784017%_ _%rest84027%_ _%hd84025%_)))
                            (_%else8398583999%_)))))))
          (let* ((_%join83888%_
                  (if (char? _%join83880%_)
                      (let () (declare (not safe)) (##string _%join83880%_))
                      (if (string? _%join83880%_)
                          _%join83880%_
                          (error '"expected string or char" _%join83880%_))))
                 (_%jlen83890%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join83888%_)))
                 (_%olen83892%_
                  (_%join-length83883%_ _%strs83879%_ _%jlen83890%_))
                 (_%ostr83894%_
                  (let () (declare (not safe)) (##make-string _%olen83892%_))))
            (let _%lp83897%_ ((_%rest83899%_ _%strs83879%_) (_%k83900%_ '0))
              (let* ((_%k83903%_ _%k83900%_)
                     (_%rest8391983927%_ _%rest83899%_)
                     (_%else8392183935%_ (lambda () '""))
                     (_%K8392383955%_
                      (lambda (_%rest83938%_ _%hd83939%_)
                        (let* ((_%hd83941%_ _%hd83939%_)
                               (_%hdlen83953%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd83941%_))))
                          (if (pair? _%rest83938%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83941%_
                                   '0
                                   _%hdlen83953%_
                                   _%ostr83894%_
                                   _%k83903%_))
                                (let ((__tmp88826
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83903%_ _%hdlen83953%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join83888%_
                                   '0
                                   _%jlen83890%_
                                   _%ostr83894%_
                                   __tmp88826))
                                (_%lp83897%_
                                 _%rest83938%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k83903%_
                                          _%hdlen83953%_
                                          _%jlen83890%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83941%_
                                   '0
                                   _%hdlen83953%_
                                   _%ostr83894%_
                                   _%k83903%_))
                                _%ostr83894%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8391983927%_))
                    (let ((_%hd8392483958%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8391983927%_)))
                          (_%tl8392583960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8391983927%_))))
                      (let* ((_%hd83963%_ _%hd8392483958%_)
                             (_%rest83965%_ _%tl8392583960%_))
                        (_%K8392383955%_ _%rest83965%_ _%hd83963%_)))
                    (_%else8392183935%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes83805%_ _%port83806%_ _%start83807%_ _%end83808%_)
        (if (u8vector? _%bytes83805%_)
            (let ((_%bytes83812%_ _%bytes83805%_))
              (if (input-port? _%port83806%_)
                  (let ((_%port83822%_ _%port83806%_))
                    (if ((lambda (_%o83831%_)
                           (and (fixnum? _%o83831%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83831%_ '0))
                                (let ((__tmp88827
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes83812%_))))
                                  (declare (not safe))
                                  (##fx< _%o83831%_ __tmp88827))))
                         _%start83807%_)
                        (let ((_%start83835%_ _%start83807%_))
                          (if ((lambda (_%o83844%_)
                                 (and (fixnum? _%o83844%_)
                                      (fx<= _%start83835%_
                                            _%o83844%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes83812%_)))))
                               _%end83808%_)
                              (let ((_%end83848%_ _%end83808%_))
                                (__read-u8vector__%
                                 _%bytes83812%_
                                 _%port83822%_
                                 _%start83835%_
                                 _%end83848%_))
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
                                 _%end83808%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start83807%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port83806%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes83805%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes83861%_ _%port83862%_)
        (let* ((_%start83864%_ '0)
               (_%end83866%_ (u8vector-length _%bytes83861%_)))
          (read-u8vector__%
           _%bytes83861%_
           _%port83862%_
           _%start83864%_
           _%end83866%_))))
    (define read-u8vector__1
      (lambda (_%bytes83868%_ _%port83869%_ _%start83870%_)
        (let ((_%end83872%_ (u8vector-length _%bytes83868%_)))
          (read-u8vector__%
           _%bytes83868%_
           _%port83869%_
           _%start83870%_
           _%end83872%_))))
    (define read-u8vector
      (lambda _g88829_
        (let ((_g88828_ (let () (declare (not safe)) (##length _g88829_))))
          (cond ((let () (declare (not safe)) (##fx= _g88828_ 2))
                 (apply read-u8vector__0 _g88829_))
                ((let () (declare (not safe)) (##fx= _g88828_ 3))
                 (apply read-u8vector__1 _g88829_))
                ((let () (declare (not safe)) (##fx= _g88828_ 4))
                 (apply read-u8vector__% _g88829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88829_))))))
    (define __read-u8vector__%
      (lambda (_%bytes83744%_ _%port83745%_ _%start83746%_ _%end83747%_)
        (let* ((_%bytes83750%_ _%bytes83744%_)
               (_%port83758%_ _%port83745%_)
               (_%start83766%_ _%start83746%_)
               (_%end83774%_ _%end83747%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes83750%_
           _%start83766%_
           _%end83774%_
           _%port83758%_))))
    (define __read-u8vector__0
      (lambda (_%bytes83786%_ _%port83787%_)
        (let* ((_%start83789%_ '0)
               (_%end83791%_ (u8vector-length _%bytes83786%_)))
          (__read-u8vector__%
           _%bytes83786%_
           _%port83787%_
           _%start83789%_
           _%end83791%_))))
    (define __read-u8vector__1
      (lambda (_%bytes83793%_ _%port83794%_ _%start83795%_)
        (let ((_%end83797%_ (u8vector-length _%bytes83793%_)))
          (__read-u8vector__%
           _%bytes83793%_
           _%port83794%_
           _%start83795%_
           _%end83797%_))))
    (define __read-u8vector
      (lambda _g88831_
        (let ((_g88830_ (let () (declare (not safe)) (##length _g88831_))))
          (cond ((let () (declare (not safe)) (##fx= _g88830_ 2))
                 (apply __read-u8vector__0 _g88831_))
                ((let () (declare (not safe)) (##fx= _g88830_ 3))
                 (apply __read-u8vector__1 _g88831_))
                ((let () (declare (not safe)) (##fx= _g88830_ 4))
                 (apply __read-u8vector__% _g88831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88831_))))))
    (define write-u8vector__%
      (lambda (_%bytes83669%_ _%port83670%_ _%start83671%_ _%end83672%_)
        (if (u8vector? _%bytes83669%_)
            (let ((_%bytes83676%_ _%bytes83669%_))
              (if (output-port? _%port83670%_)
                  (let ((_%port83686%_ _%port83670%_))
                    (if ((lambda (_%o83695%_)
                           (and (fixnum? _%o83695%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83695%_ '0))
                                (let ((__tmp88832
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes83676%_))))
                                  (declare (not safe))
                                  (##fx< _%o83695%_ __tmp88832))))
                         _%start83671%_)
                        (let ((_%start83699%_ _%start83671%_))
                          (if ((lambda (_%o83708%_)
                                 (and (fixnum? _%o83708%_)
                                      (fx<= _%start83699%_
                                            _%o83708%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes83676%_)))))
                               _%end83672%_)
                              (let ((_%end83712%_ _%end83672%_))
                                (__write-u8vector__%
                                 _%bytes83676%_
                                 _%port83686%_
                                 _%start83699%_
                                 _%end83712%_))
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
                                 _%end83672%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start83671%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port83670%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes83669%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes83725%_ _%port83726%_)
        (let* ((_%start83728%_ '0)
               (_%end83730%_ (u8vector-length _%bytes83725%_)))
          (write-u8vector__%
           _%bytes83725%_
           _%port83726%_
           _%start83728%_
           _%end83730%_))))
    (define write-u8vector__1
      (lambda (_%bytes83732%_ _%port83733%_ _%start83734%_)
        (let ((_%end83736%_ (u8vector-length _%bytes83732%_)))
          (write-u8vector__%
           _%bytes83732%_
           _%port83733%_
           _%start83734%_
           _%end83736%_))))
    (define write-u8vector
      (lambda _g88834_
        (let ((_g88833_ (let () (declare (not safe)) (##length _g88834_))))
          (cond ((let () (declare (not safe)) (##fx= _g88833_ 2))
                 (apply write-u8vector__0 _g88834_))
                ((let () (declare (not safe)) (##fx= _g88833_ 3))
                 (apply write-u8vector__1 _g88834_))
                ((let () (declare (not safe)) (##fx= _g88833_ 4))
                 (apply write-u8vector__% _g88834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88834_))))))
    (define __write-u8vector__%
      (lambda (_%bytes83608%_ _%port83609%_ _%start83610%_ _%end83611%_)
        (let* ((_%bytes83614%_ _%bytes83608%_)
               (_%port83622%_ _%port83609%_)
               (_%start83630%_ _%start83610%_)
               (_%end83638%_ _%end83611%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes83614%_
           _%start83630%_
           _%end83638%_
           _%port83622%_))))
    (define __write-u8vector__0
      (lambda (_%bytes83650%_ _%port83651%_)
        (let* ((_%start83653%_ '0)
               (_%end83655%_ (u8vector-length _%bytes83650%_)))
          (__write-u8vector__%
           _%bytes83650%_
           _%port83651%_
           _%start83653%_
           _%end83655%_))))
    (define __write-u8vector__1
      (lambda (_%bytes83657%_ _%port83658%_ _%start83659%_)
        (let ((_%end83661%_ (u8vector-length _%bytes83657%_)))
          (__write-u8vector__%
           _%bytes83657%_
           _%port83658%_
           _%start83659%_
           _%end83661%_))))
    (define __write-u8vector
      (lambda _g88836_
        (let ((_g88835_ (let () (declare (not safe)) (##length _g88836_))))
          (cond ((let () (declare (not safe)) (##fx= _g88835_ 2))
                 (apply __write-u8vector__0 _g88836_))
                ((let () (declare (not safe)) (##fx= _g88835_ 3))
                 (apply __write-u8vector__1 _g88836_))
                ((let () (declare (not safe)) (##fx= _g88835_ 4))
                 (apply __write-u8vector__% _g88836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88836_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag83576%_
               _%dbg-exprs83577%_
               _%dbg-thunks83578%_
               _%expr83579%_
               _%thunk83580%_)
        (letrec ((_%o83582%_ (current-output-port))
                 (_%e83583%_ (current-error-port))
                 (_%p83584%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f83585%_
                  (lambda ()
                    (force-output _%o83582%_)
                    (force-output _%e83583%_)))
                 (_%d83586%_
                  (lambda (_%x83593%_) (display _%x83593%_ _%e83583%_)))
                 (_%w83587%_
                  (lambda (_%x83595%_) (_%p83584%_ _%x83595%_ _%e83583%_)))
                 (_%n83588%_ (lambda () (newline _%e83583%_)))
                 (_%v83589%_
                  (lambda (_%l83598%_)
                    (for-each
                     (lambda (_%x83600%_)
                       (_%d83586%_ '" ")
                       (_%w83587%_ _%x83600%_))
                     _%l83598%_)
                    (_%n83588%_)))
                 (_%x83590%_
                  (lambda (_%expr83602%_ _%thunk83603%_)
                    (_%f83585%_)
                    (_%d83586%_ '"  ")
                    (_%w83587%_ _%expr83602%_)
                    (_%d83586%_ '" =>")
                    (call-with-values
                     _%thunk83603%_
                     (lambda _%x83605%_
                       (_%v83589%_ _%x83605%_)
                       (_%f83585%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x83605%_)))))))
          (if _%tag83576%_
              (begin
                (if (eq? _%tag83576%_ '#!void)
                    '#!void
                    (begin
                      (_%f83585%_)
                      (_%d83586%_ _%tag83576%_)
                      (_%n83588%_)))
                (for-each _%x83590%_ _%dbg-exprs83577%_ _%dbg-thunks83578%_)
                (if _%thunk83580%_
                    (_%x83590%_ _%expr83579%_ _%thunk83580%_)
                    '#!void))
              (if _%thunk83580%_ (_%thunk83580%_) '#!void)))))))
