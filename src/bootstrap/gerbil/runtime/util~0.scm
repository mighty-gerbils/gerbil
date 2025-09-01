(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1756715350)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args97337%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args97337%_))
          (newline))))
    (define display*
      (lambda _%args97334%_
        (let () (declare (not safe)) (##for-each display _%args97334%_))))
    (define file-newer?
      (lambda (_%file197309%_ _%file297310%_)
        (if (string? _%file197309%_)
            (let ((_%file197314%_ _%file197309%_))
              (if (string? _%file297310%_)
                  (let ((_%file297324%_ _%file297310%_))
                    (__file-newer? _%file197314%_ _%file297324%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file297310%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file197309%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file197257%_ _%file297258%_)
        (let* ((_%file197261%_ _%file197257%_) (_%file297269%_ _%file297258%_))
          (letrec ((_%modification-time97278%_
                    (lambda (_%file97297%_)
                      (let ((_%file97300%_ _%file97297%_))
                        (_%__modification-time97279%_ _%file97300%_))))
                   (_%__modification-time97279%_
                    (lambda (_%file97281%_)
                      (let* ((_%file97284%_ _%file97281%_)
                             (__tmp99067
                              (let ((__tmp99068
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file97284%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp99068))))
                        (declare (not safe))
                        (##time->seconds __tmp99067)))))
            (let ((__tmp99070 (_%__modification-time97279%_ _%file197261%_))
                  (__tmp99069 (_%__modification-time97279%_ _%file297269%_)))
              (declare (not safe))
              (##fl> __tmp99070 __tmp99069))))))
    (define create-directory*__%
      (lambda (_%dir97222%_ _%perms97223%_)
        (if (string? _%dir97222%_)
            (let ((_%dir97227%_ _%dir97222%_))
              (if (fixnum? _%perms97223%_)
                  (let ((_%perms97237%_ _%perms97223%_))
                    (__create-directory*__% _%dir97227%_ _%perms97237%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms97223%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir97222%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir97250%_)
        (let ((_%perms97252%_ '493))
          (create-directory*__% _%dir97250%_ _%perms97252%_))))
    (define create-directory*
      (lambda _g99071_
        (let ((_g99072_ (let () (declare (not safe)) (##length _g99071_))))
          (cond ((let () (declare (not safe)) (##fx= _g99072_ 1))
                 (apply create-directory*__0 _g99071_))
                ((let () (declare (not safe)) (##fx= _g99072_ 2))
                 (apply create-directory*__% _g99071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g99071_))))))
    (define __create-directory*__%
      (lambda (_%dir97146%_ _%perms97147%_)
        (let* ((_%dir97150%_ _%dir97146%_) (_%perms97158%_ _%perms97147%_))
          (letrec ((_%create197167%_
                    (lambda (_%path97199%_)
                      (let ((_%path97202%_ _%path97199%_))
                        (_%__create197168%_ _%path97202%_))))
                   (_%__create197168%_
                    (lambda (_%path97180%_)
                      (let ((_%path97183%_ _%path97180%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path97183%_))
                            (if (eq? (file-type _%path97183%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path97183%_))
                            (if _%perms97158%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path97183%_
                                             (cons 'permissions:
                                                   (cons _%perms97158%_
                                                         '())))))
                                (create-directory _%path97183%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir97150%_))
                '#!void
                (let _%lp97170%_ ((_%start97172%_ '0))
                  (let ((_%$e97174%_
                         (__string-index__% _%dir97150%_ '#\/ _%start97172%_)))
                    (if _%$e97174%_
                        ((lambda (_%x97177%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x97177%_ '0))
                               (_%__create197168%_
                                (substring _%dir97150%_ '0 _%x97177%_))
                               '#!void)
                           (_%lp97170%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x97177%_ '1))))
                         _%$e97174%_)
                        (_%__create197168%_ _%dir97150%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir97214%_)
        (let ((_%perms97216%_ '493))
          (__create-directory*__% _%dir97214%_ _%perms97216%_))))
    (define __create-directory*
      (lambda _g99073_
        (let ((_g99074_ (let () (declare (not safe)) (##length _g99073_))))
          (cond ((let () (declare (not safe)) (##fx= _g99074_ 1))
                 (apply __create-directory*__0 _g99073_))
                ((let () (declare (not safe)) (##fx= _g99074_ 2))
                 (apply __create-directory*__% _g99073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g99073_))))))
    (define move-file__%
      (lambda (_%src97097%_ _%dest97098%_ _%replace?97099%_)
        (if (string? _%src97097%_)
            (let ((_%src97103%_ _%src97097%_))
              (if (string? _%dest97098%_)
                  (let ((_%dest97113%_ _%dest97098%_))
                    (if (boolean? _%replace?97099%_)
                        (let ((_%replace?97123%_ _%replace?97099%_))
                          (__move-file__%
                           _%src97103%_
                           _%dest97113%_
                           _%replace?97123%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?97099%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest97098%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src97097%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src97136%_ _%dest97137%_)
        (let ((_%replace?97139%_ '#t))
          (move-file__% _%src97136%_ _%dest97137%_ _%replace?97139%_))))
    (define move-file
      (lambda _g99075_
        (let ((_g99076_ (let () (declare (not safe)) (##length _g99075_))))
          (cond ((let () (declare (not safe)) (##fx= _g99076_ 2))
                 (apply move-file__0 _g99075_))
                ((let () (declare (not safe)) (##fx= _g99076_ 3))
                 (apply move-file__% _g99075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g99075_))))))
    (define __move-file__%
      (lambda (_%src97040%_ _%dest97041%_ _%replace?97042%_)
        (let* ((_%src97045%_ _%src97040%_)
               (_%dest97053%_ _%dest97041%_)
               (_%replace?97061%_ _%replace?97042%_))
          (letrec ((_%force-move-it97070%_
                    (lambda ()
                      (let ((_%tmp97076%_
                             (if _%replace?97061%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest97053%_))
                                     (let ((__tmp99077
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest97053%_
                                        '"."
                                        __tmp99077))
                                     '#f)
                                 '#f)))
                        (if _%tmp97076%_
                            (rename-file _%dest97053%_ _%tmp97076%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e97078%_)
                           (if _%tmp97076%_
                               (rename-file _%tmp97076%_ _%dest97053%_ '#t)
                               '#!void)
                           (raise _%e97078%_))
                         (lambda ()
                           (let ((_%fi97081%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src97045%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi97081%_))
                                      'symbolic-link)
                                 (let ((__tmp99078
                                        (path-normalize _%src97045%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp99078
                                    _%dest97053%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src97045%_ _%dest97053%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src97045%_))
                           (if _%tmp97076%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp97076%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e97072%_)
               (if (let () (declare (not safe)) (##file-exists? _%src97045%_))
                   (_%force-move-it97070%_)
                   (raise _%e97072%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src97045%_
                  _%dest97053%_
                  _%replace?97061%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src97087%_ _%dest97088%_)
        (let ((_%replace?97090%_ '#t))
          (__move-file__% _%src97087%_ _%dest97088%_ _%replace?97090%_))))
    (define __move-file
      (lambda _g99079_
        (let ((_g99080_ (let () (declare (not safe)) (##length _g99079_))))
          (cond ((let () (declare (not safe)) (##fx= _g99080_ 2))
                 (apply __move-file__0 _g99079_))
                ((let () (declare (not safe)) (##fx= _g99080_ 3))
                 (apply __move-file__% _g99079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g99079_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore97036%_ '#t))
    (define true? (lambda (_%obj97033%_) (eq? _%obj97033%_ '#t)))
    (define false (lambda _%ignore97030%_ '#f))
    (define void (lambda _%ignore97027%_ '#!void))
    (define void? (lambda (_%obj97024%_) (eq? _%obj97024%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj97021%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj97021%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj97018%_) (eq? _%obj97018%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj97015%_) (eq? _%obj97015%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj97012%_) (eq? _%obj97012%_ '#!optional)))
    (define immediate?
      (lambda (_%obj97007%_)
        (let* ((_%t97010%_ (let () (declare (not safe)) (##type _%obj97007%_)))
               (__tmp99081
                (let () (declare (not safe)) (##fxand _%t97010%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp99081))))
    (define nonnegative-fixnum?
      (lambda (_%obj97004%_)
        (if (fixnum? _%obj97004%_)
            (let () (declare (not safe)) (##fx>= _%obj97004%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj96998%_)
        (let ((_%$e97001%_ (pair? _%obj96998%_)))
          (if _%$e97001%_ _%$e97001%_ (null? _%obj96998%_)))))
    (define values-count
      (lambda (_%obj96995%_)
        (if (let () (declare (not safe)) (##values? _%obj96995%_))
            (let () (declare (not safe)) (##values-length _%obj96995%_))
            '1)))
    (define values-ref
      (lambda (_%obj96980%_ _%k96981%_)
        (if (fixnum? _%k96981%_)
            (let ((_%k96985%_ _%k96981%_))
              (__values-ref _%obj96980%_ _%k96985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k96981%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj96967%_ _%k96968%_)
        (let ((_%k96971%_ _%k96968%_))
          (if (let () (declare (not safe)) (##values? _%obj96967%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj96967%_ _%k96971%_))
              _%obj96967%_))))
    (define values->list
      (lambda (_%obj96964%_)
        (if (let () (declare (not safe)) (##values? _%obj96964%_))
            (let () (declare (not safe)) (##values->list _%obj96964%_))
            (list _%obj96964%_))))
    (define foldl1
      (lambda (_%f96948%_ _%iv96949%_ _%lst96950%_)
        (if (procedure? _%f96948%_)
            (let ((_%f96954%_ _%f96948%_))
              (__foldl1 _%f96954%_ _%iv96949%_ _%lst96950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f96948%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f96896%_ _%iv96897%_ _%lst96898%_)
        (let ((_%f96901%_ _%f96896%_))
          (let _%lp96910%_ ((_%rest96912%_ _%lst96898%_)
                            (_%r96913%_ _%iv96897%_))
            (let* ((_%rest9691496922%_ _%rest96912%_)
                   (_%else9691696930%_ (lambda () _%r96913%_))
                   (_%K9691896936%_
                    (lambda (_%rest96933%_ _%x96934%_)
                      (_%lp96910%_
                       _%rest96933%_
                       (let ()
                         (declare (not safe))
                         (_%f96901%_ _%x96934%_ _%r96913%_))))))
              (if (pair? _%rest9691496922%_)
                  (let ((_%hd9691996939%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9691496922%_)))
                        (_%tl9692096941%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9691496922%_))))
                    (let* ((_%x96944%_ _%hd9691996939%_)
                           (_%rest96946%_ _%tl9692096941%_))
                      (_%K9691896936%_ _%rest96946%_ _%x96944%_)))
                  (_%else9691696930%_)))))))
    (define foldl2
      (lambda (_%f96879%_ _%iv96880%_ _%lst196881%_ _%lst296882%_)
        (if (procedure? _%f96879%_)
            (let ((_%f96886%_ _%f96879%_))
              (__foldl2 _%f96886%_ _%iv96880%_ _%lst196881%_ _%lst296882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f96879%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f96792%_ _%iv96793%_ _%lst196794%_ _%lst296795%_)
        (let ((_%f96798%_ _%f96792%_))
          (let _%lp96807%_ ((_%rest196809%_ _%lst196794%_)
                            (_%rest296810%_ _%lst296795%_)
                            (_%r96811%_ _%iv96793%_))
            (let* ((_%rest19681296820%_ _%rest196809%_)
                   (_%else9681496828%_ (lambda () _%r96811%_))
                   (_%K9681696867%_
                    (lambda (_%rest196831%_ _%x196832%_)
                      (let* ((_%rest29683396841%_ _%rest296810%_)
                             (_%else9683596849%_ (lambda () _%r96811%_))
                             (_%K9683796855%_
                              (lambda (_%rest296852%_ _%x296853%_)
                                (_%lp96807%_
                                 _%rest196831%_
                                 _%rest296852%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f96798%_
                                    _%x196832%_
                                    _%x296853%_
                                    _%r96811%_))))))
                        (if (pair? _%rest29683396841%_)
                            (let ((_%hd9683896858%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29683396841%_)))
                                  (_%tl9683996860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29683396841%_))))
                              (let* ((_%x296863%_ _%hd9683896858%_)
                                     (_%rest296865%_ _%tl9683996860%_))
                                (_%K9683796855%_ _%rest296865%_ _%x296863%_)))
                            (_%else9683596849%_))))))
              (if (pair? _%rest19681296820%_)
                  (let ((_%hd9681796870%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19681296820%_)))
                        (_%tl9681896872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19681296820%_))))
                    (let* ((_%x196875%_ _%hd9681796870%_)
                           (_%rest196877%_ _%tl9681896872%_))
                      (_%K9681696867%_ _%rest196877%_ _%x196875%_)))
                  (_%else9681496828%_)))))))
    (define foldl
      (lambda _g99082_
        (let ((_g99083_ (let () (declare (not safe)) (##length _g99082_))))
          (cond ((let () (declare (not safe)) (##fx= _g99083_ 3))
                 (apply foldl1 _g99082_))
                ((let () (declare (not safe)) (##fx= _g99083_ 4))
                 (apply foldl2 _g99082_))
                ((let () (declare (not safe)) (##fx>= _g99083_ 4))
                 (apply foldl* _g99082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g99082_))))))
    (define foldl*
      (lambda (_%f96761%_ _%iv96762%_ . _%rest96763%_)
        (if (procedure? _%f96761%_)
            (let ((_%f96767%_ _%f96761%_))
              (declare (not safe))
              (##apply __foldl* _%f96767%_ _%iv96762%_ _%rest96763%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f96761%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f96739%_ _%iv96740%_ . _%rest96741%_)
        (let ((_%f96744%_ _%f96739%_))
          (let _%recur96753%_ ((_%iv96755%_ _%iv96740%_)
                               (_%rest96756%_ _%rest96741%_))
            (if (__andmap1 pair? _%rest96756%_)
                (_%recur96753%_
                 (let ((__tmp99084
                        (__foldr1
                         (lambda (_%xs96758%_ _%r96759%_)
                           (cons (car _%xs96758%_) _%r96759%_))
                         (list _%iv96755%_)
                         _%rest96756%_)))
                   (declare (not safe))
                   (##apply _%f96744%_ __tmp99084))
                 (map cdr _%rest96756%_))
                _%iv96755%_)))))
    (define foldr1
      (lambda (_%f96723%_ _%iv96724%_ _%lst96725%_)
        (if (procedure? _%f96723%_)
            (let ((_%f96729%_ _%f96723%_))
              (__foldr1 _%f96729%_ _%iv96724%_ _%lst96725%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f96723%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f96672%_ _%iv96673%_ _%lst96674%_)
        (let ((_%f96677%_ _%f96672%_))
          (let _%recur96686%_ ((_%rest96688%_ _%lst96674%_))
            (let* ((_%rest9668996697%_ _%rest96688%_)
                   (_%else9669196705%_ (lambda () _%iv96673%_))
                   (_%K9669396711%_
                    (lambda (_%rest96708%_ _%x96709%_)
                      (let ((__tmp99085 (_%recur96686%_ _%rest96708%_)))
                        (declare (not safe))
                        (_%f96677%_ _%x96709%_ __tmp99085)))))
              (if (pair? _%rest9668996697%_)
                  (let ((_%hd9669496714%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9668996697%_)))
                        (_%tl9669596716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9668996697%_))))
                    (let* ((_%x96719%_ _%hd9669496714%_)
                           (_%rest96721%_ _%tl9669596716%_))
                      (_%K9669396711%_ _%rest96721%_ _%x96719%_)))
                  (_%else9669196705%_)))))))
    (define foldr2
      (lambda (_%f96655%_ _%iv96656%_ _%lst196657%_ _%lst296658%_)
        (if (procedure? _%f96655%_)
            (let ((_%f96662%_ _%f96655%_))
              (__foldr2 _%f96662%_ _%iv96656%_ _%lst196657%_ _%lst296658%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f96655%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f96569%_ _%iv96570%_ _%lst196571%_ _%lst296572%_)
        (let ((_%f96575%_ _%f96569%_))
          (let _%recur96584%_ ((_%rest196586%_ _%lst196571%_)
                               (_%rest296587%_ _%lst296572%_))
            (let* ((_%rest19658896596%_ _%rest196586%_)
                   (_%else9659096604%_ (lambda () _%iv96570%_))
                   (_%K9659296643%_
                    (lambda (_%rest196607%_ _%x196608%_)
                      (let* ((_%rest29660996617%_ _%rest296587%_)
                             (_%else9661196625%_ (lambda () _%iv96570%_))
                             (_%K9661396631%_
                              (lambda (_%rest296628%_ _%x296629%_)
                                (let ((__tmp99086
                                       (_%recur96584%_
                                        _%rest196607%_
                                        _%rest296628%_)))
                                  (declare (not safe))
                                  (_%f96575%_
                                   _%x196608%_
                                   _%x296629%_
                                   __tmp99086)))))
                        (if (pair? _%rest29660996617%_)
                            (let ((_%hd9661496634%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29660996617%_)))
                                  (_%tl9661596636%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29660996617%_))))
                              (let* ((_%x296639%_ _%hd9661496634%_)
                                     (_%rest296641%_ _%tl9661596636%_))
                                (_%K9661396631%_ _%rest296641%_ _%x296639%_)))
                            (_%else9661196625%_))))))
              (if (pair? _%rest19658896596%_)
                  (let ((_%hd9659396646%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19658896596%_)))
                        (_%tl9659496648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19658896596%_))))
                    (let* ((_%x196651%_ _%hd9659396646%_)
                           (_%rest196653%_ _%tl9659496648%_))
                      (_%K9659296643%_ _%rest196653%_ _%x196651%_)))
                  (_%else9659096604%_)))))))
    (define foldr
      (lambda _g99087_
        (let ((_g99088_ (let () (declare (not safe)) (##length _g99087_))))
          (cond ((let () (declare (not safe)) (##fx= _g99088_ 3))
                 (apply foldr1 _g99087_))
                ((let () (declare (not safe)) (##fx= _g99088_ 4))
                 (apply foldr2 _g99087_))
                ((let () (declare (not safe)) (##fx>= _g99088_ 4))
                 (apply foldr* _g99087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g99087_))))))
    (define foldr*
      (lambda (_%f96538%_ _%iv96539%_ . _%rest96540%_)
        (if (procedure? _%f96538%_)
            (let ((_%f96544%_ _%f96538%_))
              (declare (not safe))
              (##apply __foldr* _%f96544%_ _%iv96539%_ _%rest96540%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f96538%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f96517%_ _%iv96518%_ . _%rest96519%_)
        (let ((_%f96522%_ _%f96517%_))
          (let _%recur96531%_ ((_%rest96533%_ _%rest96519%_))
            (if (__andmap1 pair? _%rest96533%_)
                (let ((__tmp99089
                       (__foldr1
                        (lambda (_%xs96535%_ _%r96536%_)
                          (cons (car _%xs96535%_) _%r96536%_))
                        (list (_%recur96531%_ (map cdr _%rest96533%_)))
                        _%rest96533%_)))
                  (declare (not safe))
                  (##apply _%f96522%_ __tmp99089))
                _%iv96518%_)))))
    (define remove-nulls!
      (lambda (_%l96404%_)
        (let* ((_%l9640596418%_ _%l96404%_)
               (_%E9640996422%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9640596418%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9641496507%_
                 (lambda (_%r96505%_) (remove-nulls! _%r96505%_)))
                (_%K9641196494%_
                 (lambda (_%r96434%_)
                   (let _%loop96436%_ ((_%l96438%_ _%l96404%_)
                                       (_%r96439%_ _%r96434%_))
                     (let* ((_%r9644096453%_ _%r96439%_)
                            (_%E9644496457%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9644096453%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9644996484%_
                              (lambda (_%rr96482%_)
                                (let ((__tmp99091 _%l96438%_)
                                      (__tmp99090 (remove-nulls! _%rr96482%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp99091 __tmp99090))))
                             (_%K9644696471%_
                              (lambda (_%rr96469%_)
                                (_%loop96436%_ _%r96439%_ _%rr96469%_)))
                             (_%K9644596462%_ (lambda () '#!void)))
                         (if (pair? _%r9644096453%_)
                             (let ((_%tl9645196489%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9644096453%_)))
                                   (_%hd9645096487%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9644096453%_))))
                               (if (null? _%hd9645096487%_)
                                   (let ((_%rr96492%_ _%tl9645196489%_))
                                     (_%K9644996484%_ _%rr96492%_))
                                   (let ((_%rr96477%_ _%tl9645196489%_))
                                     (_%K9644696471%_ _%rr96477%_))))
                             '#!void))))
                   _%l96404%_))
                (_%K9641096427%_ (lambda () _%l96404%_)))
            (if (pair? _%l9640596418%_)
                (let ((_%tl9641696512%_
                       (let () (declare (not safe)) (##cdr _%l9640596418%_)))
                      (_%hd9641596510%_
                       (let () (declare (not safe)) (##car _%l9640596418%_))))
                  (if (null? _%hd9641596510%_)
                      (let ((_%r96515%_ _%tl9641696512%_))
                        (remove-nulls! _%r96515%_))
                      (let ((_%r96500%_ _%tl9641696512%_))
                        (_%K9641196494%_ _%r96500%_))))
                (_%K9641096427%_))))))
    (define append1!
      (lambda (_%l96389%_ _%x96390%_)
        (let ((_%l296393%_ (cons _%x96390%_ '())))
          (if (pair? _%l96389%_)
              (let ((_%l96395%_ _%l96389%_))
                (let ((__tmp99092
                       (let () (declare (not safe)) (##last-pair _%l96395%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp99092 _%l296393%_))
                _%l96395%_)
              _%l296393%_))))
    (define append-reverse-until
      (lambda (_%pred96373%_ _%rhead96374%_ _%tail96375%_)
        (if (procedure? _%pred96373%_)
            (let ((_%pred96379%_ _%pred96373%_))
              (__append-reverse-until
               _%pred96379%_
               _%rhead96374%_
               _%tail96375%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred96373%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred96315%_ _%rhead96316%_ _%tail96317%_)
        (let ((_%pred96320%_ _%pred96315%_))
          (let _%loop96329%_ ((_%rhead96331%_ _%rhead96316%_)
                              (_%tail96332%_ _%tail96317%_))
            (let* ((_%rhead9633496343%_ _%rhead96331%_)
                   (_%E9633796347%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9633496343%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9634196370%_ (lambda () (values '() _%tail96332%_)))
                    (_%K9633896354%_
                     (lambda (_%r96351%_ _%a96352%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred96320%_ _%a96352%_))
                           (values _%rhead96331%_ _%tail96332%_)
                           (_%loop96329%_
                            _%r96351%_
                            (cons _%a96352%_ _%tail96332%_))))))
                (let ((_%try-match9633696366%_
                       (lambda ()
                         (if (pair? _%rhead9633496343%_)
                             (let ((_%tl9634096359%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9633496343%_)))
                                   (_%hd9633996357%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9633496343%_))))
                               (let ((_%a96362%_ _%hd9633996357%_)
                                     (_%r96364%_ _%tl9634096359%_))
                                 (_%K9633896354%_ _%r96364%_ _%a96362%_)))
                             (_%E9633796347%_)))))
                  (if (null? _%rhead9633496343%_)
                      (_%K9634196370%_)
                      (_%try-match9633696366%_)))))))))
    (define andmap1
      (lambda (_%f96300%_ _%lst96301%_)
        (if (procedure? _%f96300%_)
            (let ((_%f96305%_ _%f96300%_)) (__andmap1 _%f96305%_ _%lst96301%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f96300%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f96249%_ _%lst96250%_)
        (let ((_%f96253%_ _%f96249%_))
          (let _%lp96262%_ ((_%rest96264%_ _%lst96250%_))
            (let* ((_%rest9626696274%_ _%rest96264%_)
                   (_%else9626896282%_ (lambda () '#t))
                   (_%K9627096288%_
                    (lambda (_%rest96285%_ _%x96286%_)
                      (if (let () (declare (not safe)) (_%f96253%_ _%x96286%_))
                          (_%lp96262%_ _%rest96285%_)
                          '#f))))
              (if (pair? _%rest9626696274%_)
                  (let ((_%hd9627196291%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9626696274%_)))
                        (_%tl9627296293%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9626696274%_))))
                    (let* ((_%x96296%_ _%hd9627196291%_)
                           (_%rest96298%_ _%tl9627296293%_))
                      (_%K9627096288%_ _%rest96298%_ _%x96296%_)))
                  (_%else9626896282%_)))))))
    (define andmap2
      (lambda (_%f96233%_ _%lst196234%_ _%lst296235%_)
        (if (procedure? _%f96233%_)
            (let ((_%f96239%_ _%f96233%_))
              (__andmap2 _%f96239%_ _%lst196234%_ _%lst296235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f96233%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f96147%_ _%lst196148%_ _%lst296149%_)
        (let ((_%f96152%_ _%f96147%_))
          (let _%lp96161%_ ((_%rest196163%_ _%lst196148%_)
                            (_%rest296164%_ _%lst296149%_))
            (let* ((_%rest19616696174%_ _%rest196163%_)
                   (_%else9616896182%_ (lambda () '#t))
                   (_%K9617096221%_
                    (lambda (_%rest196185%_ _%x196186%_)
                      (let* ((_%rest29618796195%_ _%rest296164%_)
                             (_%else9618996203%_ (lambda () '#t))
                             (_%K9619196209%_
                              (lambda (_%rest296206%_ _%x296207%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f96152%_ _%x196186%_ _%x296207%_))
                                    (_%lp96161%_ _%rest196185%_ _%rest296206%_)
                                    '#f))))
                        (if (pair? _%rest29618796195%_)
                            (let ((_%hd9619296212%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29618796195%_)))
                                  (_%tl9619396214%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29618796195%_))))
                              (let* ((_%x296217%_ _%hd9619296212%_)
                                     (_%rest296219%_ _%tl9619396214%_))
                                (_%K9619196209%_ _%rest296219%_ _%x296217%_)))
                            (_%else9618996203%_))))))
              (if (pair? _%rest19616696174%_)
                  (let ((_%hd9617196224%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19616696174%_)))
                        (_%tl9617296226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19616696174%_))))
                    (let* ((_%x196229%_ _%hd9617196224%_)
                           (_%rest196231%_ _%tl9617296226%_))
                      (_%K9617096221%_ _%rest196231%_ _%x196229%_)))
                  (_%else9616896182%_)))))))
    (define andmap
      (lambda _g99093_
        (let ((_g99094_ (let () (declare (not safe)) (##length _g99093_))))
          (cond ((let () (declare (not safe)) (##fx= _g99094_ 2))
                 (apply andmap1 _g99093_))
                ((let () (declare (not safe)) (##fx= _g99094_ 3))
                 (apply andmap2 _g99093_))
                ((let () (declare (not safe)) (##fx>= _g99094_ 3))
                 (apply andmap* _g99093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g99093_))))))
    (define andmap*
      (lambda (_%f96120%_ . _%rest96121%_)
        (if (procedure? _%f96120%_)
            (let ((_%f96125%_ _%f96120%_))
              (declare (not safe))
              (##apply __andmap* _%f96125%_ _%rest96121%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f96120%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f96102%_ . _%rest96103%_)
        (let ((_%f96106%_ _%f96102%_))
          (let _%recur96115%_ ((_%rest96117%_ _%rest96103%_))
            (if (__andmap1 pair? _%rest96117%_)
                (if (let ((__tmp99095 (map car _%rest96117%_)))
                      (declare (not safe))
                      (##apply _%f96106%_ __tmp99095))
                    (_%recur96115%_ (map cdr _%rest96117%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f96087%_ _%lst96088%_)
        (if (procedure? _%f96087%_)
            (let ((_%f96092%_ _%f96087%_)) (__ormap1 _%f96092%_ _%lst96088%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f96087%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f96034%_ _%lst96035%_)
        (let ((_%f96038%_ _%f96034%_))
          (let _%lp96047%_ ((_%rest96049%_ _%lst96035%_))
            (let* ((_%rest9605096058%_ _%rest96049%_)
                   (_%else9605296066%_ (lambda () '#f))
                   (_%K9605496075%_
                    (lambda (_%rest96069%_ _%x96070%_)
                      (let ((_%$e96072%_
                             (let ()
                               (declare (not safe))
                               (_%f96038%_ _%x96070%_))))
                        (if _%$e96072%_
                            _%$e96072%_
                            (_%lp96047%_ _%rest96069%_))))))
              (if (pair? _%rest9605096058%_)
                  (let ((_%hd9605596078%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9605096058%_)))
                        (_%tl9605696080%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9605096058%_))))
                    (let* ((_%x96083%_ _%hd9605596078%_)
                           (_%rest96085%_ _%tl9605696080%_))
                      (_%K9605496075%_ _%rest96085%_ _%x96083%_)))
                  (_%else9605296066%_)))))))
    (define ormap2
      (lambda (_%f96018%_ _%lst196019%_ _%lst296020%_)
        (if (procedure? _%f96018%_)
            (let ((_%f96024%_ _%f96018%_))
              (__ormap2 _%f96024%_ _%lst196019%_ _%lst296020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f96018%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f95930%_ _%lst195931%_ _%lst295932%_)
        (let ((_%f95935%_ _%f95930%_))
          (let _%lp95944%_ ((_%rest195946%_ _%lst195931%_)
                            (_%rest295947%_ _%lst295932%_))
            (let* ((_%rest19594895956%_ _%rest195946%_)
                   (_%else9595095964%_ (lambda () '#f))
                   (_%K9595296006%_
                    (lambda (_%rest195967%_ _%x195968%_)
                      (let* ((_%rest29596995977%_ _%rest295947%_)
                             (_%else9597195985%_ (lambda () '#f))
                             (_%K9597395994%_
                              (lambda (_%rest295988%_ _%x295989%_)
                                (let ((_%$e95991%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f95935%_
                                          _%x195968%_
                                          _%x295989%_))))
                                  (if _%$e95991%_
                                      _%$e95991%_
                                      (_%lp95944%_
                                       _%rest195967%_
                                       _%rest295988%_))))))
                        (if (pair? _%rest29596995977%_)
                            (let ((_%hd9597495997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29596995977%_)))
                                  (_%tl9597595999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29596995977%_))))
                              (let* ((_%x296002%_ _%hd9597495997%_)
                                     (_%rest296004%_ _%tl9597595999%_))
                                (_%K9597395994%_ _%rest296004%_ _%x296002%_)))
                            (_%else9597195985%_))))))
              (if (pair? _%rest19594895956%_)
                  (let ((_%hd9595396009%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19594895956%_)))
                        (_%tl9595496011%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19594895956%_))))
                    (let* ((_%x196014%_ _%hd9595396009%_)
                           (_%rest196016%_ _%tl9595496011%_))
                      (_%K9595296006%_ _%rest196016%_ _%x196014%_)))
                  (_%else9595095964%_)))))))
    (define ormap
      (lambda _g99096_
        (let ((_g99097_ (let () (declare (not safe)) (##length _g99096_))))
          (cond ((let () (declare (not safe)) (##fx= _g99097_ 2))
                 (apply ormap1 _g99096_))
                ((let () (declare (not safe)) (##fx= _g99097_ 3))
                 (apply ormap2 _g99096_))
                ((let () (declare (not safe)) (##fx>= _g99097_ 3))
                 (apply ormap* _g99096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g99096_))))))
    (define ormap*
      (lambda (_%f95903%_ . _%rest95904%_)
        (if (procedure? _%f95903%_)
            (let ((_%f95908%_ _%f95903%_))
              (declare (not safe))
              (##apply __ormap* _%f95908%_ _%rest95904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f95903%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f95883%_ . _%rest95884%_)
        (let ((_%f95887%_ _%f95883%_))
          (let _%recur95896%_ ((_%rest95898%_ _%rest95884%_))
            (if (__andmap1 pair? _%rest95898%_)
                (let ((_%$e95900%_
                       (let ((__tmp99098 (map car _%rest95898%_)))
                         (declare (not safe))
                         (##apply _%f95887%_ __tmp99098))))
                  (if _%$e95900%_
                      _%$e95900%_
                      (_%recur95896%_ (map cdr _%rest95898%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f95868%_ _%lst95869%_)
        (if (procedure? _%f95868%_)
            (let ((_%f95873%_ _%f95868%_))
              (__filter-map1 _%f95873%_ _%lst95869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f95868%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f95811%_ _%lst95812%_)
        (let ((_%f95815%_ _%f95811%_))
          (let _%recur95824%_ ((_%rest95826%_ _%lst95812%_))
            (let* ((_%rest9582895836%_ _%rest95826%_)
                   (_%else9583095844%_ (lambda () '()))
                   (_%K9583295856%_
                    (lambda (_%rest95847%_ _%x95848%_)
                      (let ((_%$e95850%_
                             (let ()
                               (declare (not safe))
                               (_%f95815%_ _%x95848%_))))
                        (if _%$e95850%_
                            ((lambda (_%r95853%_)
                               (cons _%r95853%_
                                     (_%recur95824%_ _%rest95847%_)))
                             _%$e95850%_)
                            (_%recur95824%_ _%rest95847%_))))))
              (if (pair? _%rest9582895836%_)
                  (let ((_%hd9583395859%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9582895836%_)))
                        (_%tl9583495861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9582895836%_))))
                    (let* ((_%x95864%_ _%hd9583395859%_)
                           (_%rest95866%_ _%tl9583495861%_))
                      (_%K9583295856%_ _%rest95866%_ _%x95864%_)))
                  (_%else9583095844%_)))))))
    (define filter-map2
      (lambda (_%f95795%_ _%lst195796%_ _%lst295797%_)
        (if (procedure? _%f95795%_)
            (let ((_%f95801%_ _%f95795%_))
              (__filter-map2 _%f95801%_ _%lst195796%_ _%lst295797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f95795%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f95703%_ _%lst195704%_ _%lst295705%_)
        (let ((_%f95708%_ _%f95703%_))
          (let _%recur95717%_ ((_%rest195719%_ _%lst195704%_)
                               (_%rest295720%_ _%lst295705%_))
            (let* ((_%rest19572295730%_ _%rest195719%_)
                   (_%else9572495738%_ (lambda () '()))
                   (_%K9572695783%_
                    (lambda (_%rest195741%_ _%x195742%_)
                      (let* ((_%rest29574395751%_ _%rest295720%_)
                             (_%else9574595759%_ (lambda () '()))
                             (_%K9574795771%_
                              (lambda (_%rest295762%_ _%x295763%_)
                                (let ((_%$e95765%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f95708%_
                                          _%x195742%_
                                          _%x295763%_))))
                                  (if _%$e95765%_
                                      ((lambda (_%r95768%_)
                                         (cons _%r95768%_
                                               (_%recur95717%_
                                                _%rest195741%_
                                                _%rest295762%_)))
                                       _%$e95765%_)
                                      (_%recur95717%_
                                       _%rest195741%_
                                       _%rest295762%_))))))
                        (if (pair? _%rest29574395751%_)
                            (let ((_%hd9574895774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29574395751%_)))
                                  (_%tl9574995776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29574395751%_))))
                              (let* ((_%x295779%_ _%hd9574895774%_)
                                     (_%rest295781%_ _%tl9574995776%_))
                                (_%K9574795771%_ _%rest295781%_ _%x295779%_)))
                            (_%else9574595759%_))))))
              (if (pair? _%rest19572295730%_)
                  (let ((_%hd9572795786%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19572295730%_)))
                        (_%tl9572895788%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19572295730%_))))
                    (let* ((_%x195791%_ _%hd9572795786%_)
                           (_%rest195793%_ _%tl9572895788%_))
                      (_%K9572695783%_ _%rest195793%_ _%x195791%_)))
                  (_%else9572495738%_)))))))
    (define filter-map
      (lambda _g99099_
        (let ((_g99100_ (let () (declare (not safe)) (##length _g99099_))))
          (cond ((let () (declare (not safe)) (##fx= _g99100_ 2))
                 (apply filter-map1 _g99099_))
                ((let () (declare (not safe)) (##fx= _g99100_ 3))
                 (apply filter-map2 _g99099_))
                ((let () (declare (not safe)) (##fx>= _g99100_ 3))
                 (apply filter-map* _g99099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g99099_))))))
    (define filter-map*
      (lambda (_%f95676%_ . _%rest95677%_)
        (if (procedure? _%f95676%_)
            (let ((_%f95681%_ _%f95676%_))
              (declare (not safe))
              (##apply __filter-map* _%f95681%_ _%rest95677%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f95676%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f95652%_ . _%rest95653%_)
        (let ((_%f95656%_ _%f95652%_))
          (let _%recur95665%_ ((_%rest95667%_ _%rest95653%_))
            (if (__andmap1 pair? _%rest95667%_)
                (let ((_%$e95670%_
                       (let ((__tmp99101 (map car _%rest95667%_)))
                         (declare (not safe))
                         (##apply _%f95656%_ __tmp99101))))
                  (if _%$e95670%_
                      ((lambda (_%r95673%_)
                         (cons _%r95673%_
                               (_%recur95665%_ (map cdr _%rest95667%_))))
                       _%$e95670%_)
                      (_%recur95665%_ (map cdr _%rest95667%_))))
                '())))))
    (define agetq__%
      (lambda (_%key95628%_ _%lst95630%_ _%default95632%_)
        (let ((_%$e95635%_
               (if (pair? _%lst95630%_) (assq _%key95628%_ _%lst95630%_) '#f)))
          (if _%$e95635%_
              (cdr _%$e95635%_)
              (if (procedure? _%default95632%_)
                  (_%default95632%_ _%key95628%_)
                  _%default95632%_)))))
    (define agetq__0
      (lambda (_%key95643%_ _%lst95644%_)
        (let ((_%default95646%_ '#f))
          (agetq__% _%key95643%_ _%lst95644%_ _%default95646%_))))
    (define agetq
      (lambda _g99102_
        (let ((_g99103_ (let () (declare (not safe)) (##length _g99102_))))
          (cond ((let () (declare (not safe)) (##fx= _g99103_ 2))
                 (apply agetq__0 _g99102_))
                ((let () (declare (not safe)) (##fx= _g99103_ 3))
                 (apply agetq__% _g99102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g99102_))))))
    (define agetv__%
      (lambda (_%key95603%_ _%lst95605%_ _%default95607%_)
        (let ((_%$e95610%_
               (if (pair? _%lst95605%_) (assv _%key95603%_ _%lst95605%_) '#f)))
          (if _%$e95610%_
              (cdr _%$e95610%_)
              (if (procedure? _%default95607%_)
                  (_%default95607%_ _%key95603%_)
                  _%default95607%_)))))
    (define agetv__0
      (lambda (_%key95618%_ _%lst95619%_)
        (let ((_%default95621%_ '#f))
          (agetv__% _%key95618%_ _%lst95619%_ _%default95621%_))))
    (define agetv
      (lambda _g99104_
        (let ((_g99105_ (let () (declare (not safe)) (##length _g99104_))))
          (cond ((let () (declare (not safe)) (##fx= _g99105_ 2))
                 (apply agetv__0 _g99104_))
                ((let () (declare (not safe)) (##fx= _g99105_ 3))
                 (apply agetv__% _g99104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g99104_))))))
    (define aget__%
      (lambda (_%key95578%_ _%lst95580%_ _%default95582%_)
        (let ((_%$e95585%_
               (if (pair? _%lst95580%_)
                   (assoc _%key95578%_ _%lst95580%_)
                   '#f)))
          (if _%$e95585%_
              (cdr _%$e95585%_)
              (if (procedure? _%default95582%_)
                  (_%default95582%_ _%key95578%_)
                  _%default95582%_)))))
    (define aget__0
      (lambda (_%key95593%_ _%lst95594%_)
        (let ((_%default95596%_ '#f))
          (aget__% _%key95593%_ _%lst95594%_ _%default95596%_))))
    (define aget
      (lambda _g99106_
        (let ((_g99107_ (let () (declare (not safe)) (##length _g99106_))))
          (cond ((let () (declare (not safe)) (##fx= _g99107_ 2))
                 (apply aget__0 _g99106_))
                ((let () (declare (not safe)) (##fx= _g99107_ 3))
                 (apply aget__% _g99106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g99106_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key95507%_ _%lst95509%_ _%default95511%_)
        (let _%lp95514%_ ((_%rest95517%_ _%lst95509%_))
          (let* ((_%rest9551995529%_ _%rest95517%_)
                 (_%else9552195537%_
                  (lambda ()
                    (if (procedure? _%default95511%_)
                        (_%default95511%_ _%key95507%_)
                        _%default95511%_)))
                 (_%K9552395546%_
                  (lambda (_%rest95540%_ _%v95541%_ _%k95543%_)
                    (if (eq? _%k95543%_ _%key95507%_)
                        _%v95541%_
                        (_%lp95514%_ _%rest95540%_)))))
            (if (pair? _%rest9551995529%_)
                (let ((_%hd9552495549%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9551995529%_)))
                      (_%tl9552595551%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9551995529%_))))
                  (let ((_%k95554%_ _%hd9552495549%_))
                    (if (pair? _%tl9552595551%_)
                        (let ((_%hd9552695556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9552595551%_)))
                              (_%tl9552795558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9552595551%_))))
                          (let* ((_%v95561%_ _%hd9552695556%_)
                                 (_%rest95563%_ _%tl9552795558%_))
                            (_%K9552395546%_
                             _%rest95563%_
                             _%v95561%_
                             _%k95554%_)))
                        (_%else9552195537%_))))
                (_%else9552195537%_))))))
    (define pgetq__0
      (lambda (_%key95568%_ _%lst95569%_)
        (let ((_%default95571%_ '#f))
          (pgetq__% _%key95568%_ _%lst95569%_ _%default95571%_))))
    (define pgetq
      (lambda _g99108_
        (let ((_g99109_ (let () (declare (not safe)) (##length _g99108_))))
          (cond ((let () (declare (not safe)) (##fx= _g99109_ 2))
                 (apply pgetq__0 _g99108_))
                ((let () (declare (not safe)) (##fx= _g99109_ 3))
                 (apply pgetq__% _g99108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g99108_))))))
    (define pgetv__%
      (lambda (_%key95436%_ _%lst95438%_ _%default95440%_)
        (let _%lp95443%_ ((_%rest95446%_ _%lst95438%_))
          (let* ((_%rest9544895458%_ _%rest95446%_)
                 (_%else9545095466%_
                  (lambda ()
                    (if (procedure? _%default95440%_)
                        (_%default95440%_ _%key95436%_)
                        _%default95440%_)))
                 (_%K9545295475%_
                  (lambda (_%rest95469%_ _%v95470%_ _%k95472%_)
                    (if (eqv? _%k95472%_ _%key95436%_)
                        _%v95470%_
                        (_%lp95443%_ _%rest95469%_)))))
            (if (pair? _%rest9544895458%_)
                (let ((_%hd9545395478%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9544895458%_)))
                      (_%tl9545495480%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9544895458%_))))
                  (let ((_%k95483%_ _%hd9545395478%_))
                    (if (pair? _%tl9545495480%_)
                        (let ((_%hd9545595485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9545495480%_)))
                              (_%tl9545695487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9545495480%_))))
                          (let* ((_%v95490%_ _%hd9545595485%_)
                                 (_%rest95492%_ _%tl9545695487%_))
                            (_%K9545295475%_
                             _%rest95492%_
                             _%v95490%_
                             _%k95483%_)))
                        (_%else9545095466%_))))
                (_%else9545095466%_))))))
    (define pgetv__0
      (lambda (_%key95497%_ _%lst95498%_)
        (let ((_%default95500%_ '#f))
          (pgetv__% _%key95497%_ _%lst95498%_ _%default95500%_))))
    (define pgetv
      (lambda _g99110_
        (let ((_g99111_ (let () (declare (not safe)) (##length _g99110_))))
          (cond ((let () (declare (not safe)) (##fx= _g99111_ 2))
                 (apply pgetv__0 _g99110_))
                ((let () (declare (not safe)) (##fx= _g99111_ 3))
                 (apply pgetv__% _g99110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g99110_))))))
    (define pget__%
      (lambda (_%key95365%_ _%lst95367%_ _%default95369%_)
        (let _%lp95372%_ ((_%rest95375%_ _%lst95367%_))
          (let* ((_%rest9537795387%_ _%rest95375%_)
                 (_%else9537995395%_
                  (lambda ()
                    (if (procedure? _%default95369%_)
                        (_%default95369%_ _%key95365%_)
                        _%default95369%_)))
                 (_%K9538195404%_
                  (lambda (_%rest95398%_ _%v95399%_ _%k95401%_)
                    (if (equal? _%k95401%_ _%key95365%_)
                        _%v95399%_
                        (_%lp95372%_ _%rest95398%_)))))
            (if (pair? _%rest9537795387%_)
                (let ((_%hd9538295407%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9537795387%_)))
                      (_%tl9538395409%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9537795387%_))))
                  (let ((_%k95412%_ _%hd9538295407%_))
                    (if (pair? _%tl9538395409%_)
                        (let ((_%hd9538495414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9538395409%_)))
                              (_%tl9538595416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9538395409%_))))
                          (let* ((_%v95419%_ _%hd9538495414%_)
                                 (_%rest95421%_ _%tl9538595416%_))
                            (_%K9538195404%_
                             _%rest95421%_
                             _%v95419%_
                             _%k95412%_)))
                        (_%else9537995395%_))))
                (_%else9537995395%_))))))
    (define pget__0
      (lambda (_%key95426%_ _%lst95427%_)
        (let ((_%default95429%_ '#f))
          (pget__% _%key95426%_ _%lst95427%_ _%default95429%_))))
    (define pget
      (lambda _g99112_
        (let ((_g99113_ (let () (declare (not safe)) (##length _g99112_))))
          (cond ((let () (declare (not safe)) (##fx= _g99113_ 2))
                 (apply pget__0 _g99112_))
                ((let () (declare (not safe)) (##fx= _g99113_ 3))
                 (apply pget__% _g99112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g99112_))))))
    (define find
      (lambda (_%pred95349%_ _%lst95350%_)
        (if (procedure? _%pred95349%_)
            (let ((_%pred95354%_ _%pred95349%_))
              (__find _%pred95354%_ _%lst95350%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred95349%_)
              '#!void))))
    (define __find
      (lambda (_%pred95332%_ _%lst95333%_)
        (let* ((_%pred95336%_ _%pred95332%_)
               (_%$e95345%_ (__memf _%pred95336%_ _%lst95333%_)))
          (if _%$e95345%_
              (let () (declare (not safe)) (##car _%$e95345%_))
              '#f))))
    (define memf
      (lambda (_%proc95317%_ _%lst95318%_)
        (if (procedure? _%proc95317%_)
            (let ((_%proc95322%_ _%proc95317%_))
              (__memf _%proc95322%_ _%lst95318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc95317%_)
              '#!void))))
    (define __memf
      (lambda (_%proc95267%_ _%lst95268%_)
        (let ((_%proc95271%_ _%proc95267%_))
          (let _%lp95280%_ ((_%rest95282%_ _%lst95268%_))
            (let* ((_%rest9528395291%_ _%rest95282%_)
                   (_%else9528595299%_ (lambda () '#f))
                   (_%K9528795305%_
                    (lambda (_%tl95302%_ _%hd95303%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95271%_ _%hd95303%_))
                          _%rest95282%_
                          (_%lp95280%_ _%tl95302%_)))))
              (if (pair? _%rest9528395291%_)
                  (let ((_%hd9528895308%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9528395291%_)))
                        (_%tl9528995310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9528395291%_))))
                    (let* ((_%hd95313%_ _%hd9528895308%_)
                           (_%tl95315%_ _%tl9528995310%_))
                      (_%K9528795305%_ _%tl95315%_ _%hd95313%_)))
                  (_%else9528595299%_)))))))
    (define remove1
      (lambda (_%el95220%_ _%lst95222%_)
        (let _%lp95225%_ ((_%rest95228%_ _%lst95222%_) (_%r95230%_ '()))
          (let* ((_%rest9523295240%_ _%rest95228%_)
                 (_%else9523495248%_ (lambda () _%lst95222%_))
                 (_%K9523695255%_
                  (lambda (_%rest95251%_ _%hd95252%_)
                    (if (equal? _%el95220%_ _%hd95252%_)
                        (__foldl1 cons _%rest95251%_ _%r95230%_)
                        (_%lp95225%_
                         _%rest95251%_
                         (cons _%hd95252%_ _%r95230%_))))))
            (if (pair? _%rest9523295240%_)
                (let ((_%hd9523795258%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9523295240%_)))
                      (_%tl9523895260%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9523295240%_))))
                  (let* ((_%hd95263%_ _%hd9523795258%_)
                         (_%rest95265%_ _%tl9523895260%_))
                    (_%K9523695255%_ _%rest95265%_ _%hd95263%_)))
                (_%else9523495248%_))))))
    (define remv1
      (lambda (_%el95173%_ _%lst95175%_)
        (let _%lp95178%_ ((_%rest95181%_ _%lst95175%_) (_%r95183%_ '()))
          (let* ((_%rest9518595193%_ _%rest95181%_)
                 (_%else9518795201%_ (lambda () _%lst95175%_))
                 (_%K9518995208%_
                  (lambda (_%rest95204%_ _%hd95205%_)
                    (if (eqv? _%el95173%_ _%hd95205%_)
                        (__foldl1 cons _%rest95204%_ _%r95183%_)
                        (_%lp95178%_
                         _%rest95204%_
                         (cons _%hd95205%_ _%r95183%_))))))
            (if (pair? _%rest9518595193%_)
                (let ((_%hd9519095211%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9518595193%_)))
                      (_%tl9519195213%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9518595193%_))))
                  (let* ((_%hd95216%_ _%hd9519095211%_)
                         (_%rest95218%_ _%tl9519195213%_))
                    (_%K9518995208%_ _%rest95218%_ _%hd95216%_)))
                (_%else9518795201%_))))))
    (define remq1
      (lambda (_%el95126%_ _%lst95128%_)
        (let _%lp95131%_ ((_%rest95134%_ _%lst95128%_) (_%r95136%_ '()))
          (let* ((_%rest9513895146%_ _%rest95134%_)
                 (_%else9514095154%_ (lambda () _%lst95128%_))
                 (_%K9514295161%_
                  (lambda (_%rest95157%_ _%hd95158%_)
                    (if (eq? _%el95126%_ _%hd95158%_)
                        (__foldl1 cons _%rest95157%_ _%r95136%_)
                        (_%lp95131%_
                         _%rest95157%_
                         (cons _%hd95158%_ _%r95136%_))))))
            (if (pair? _%rest9513895146%_)
                (let ((_%hd9514395164%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9513895146%_)))
                      (_%tl9514495166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9513895146%_))))
                  (let* ((_%hd95169%_ _%hd9514395164%_)
                         (_%rest95171%_ _%tl9514495166%_))
                    (_%K9514295161%_ _%rest95171%_ _%hd95169%_)))
                (_%else9514095154%_))))))
    (define remf
      (lambda (_%proc95111%_ _%lst95112%_)
        (if (procedure? _%proc95111%_)
            (let ((_%proc95116%_ _%proc95111%_))
              (__remf _%proc95116%_ _%lst95112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc95111%_)
              '#!void))))
    (define __remf
      (lambda (_%proc95060%_ _%lst95061%_)
        (let ((_%proc95064%_ _%proc95060%_))
          (let _%lp95073%_ ((_%rest95075%_ _%lst95061%_) (_%r95076%_ '()))
            (let* ((_%rest9507795085%_ _%rest95075%_)
                   (_%else9507995093%_ (lambda () _%lst95061%_))
                   (_%K9508195099%_
                    (lambda (_%rest95096%_ _%hd95097%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95064%_ _%hd95097%_))
                          (__foldl1 cons _%rest95096%_ _%r95076%_)
                          (_%lp95073%_
                           _%rest95096%_
                           (cons _%hd95097%_ _%r95076%_))))))
              (if (pair? _%rest9507795085%_)
                  (let ((_%hd9508295102%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9507795085%_)))
                        (_%tl9508395104%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9507795085%_))))
                    (let* ((_%hd95107%_ _%hd9508295102%_)
                           (_%rest95109%_ _%tl9508395104%_))
                      (_%K9508195099%_ _%rest95109%_ _%hd95107%_)))
                  (_%else9507995093%_)))))))
    (define 1+
      (lambda (_%x95046%_)
        (if (number? _%x95046%_)
            (let ((_%x95050%_ _%x95046%_)) (__1+ _%x95050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x95046%_)
              '#!void))))
    (define __1+
      (lambda (_%x95034%_) (let ((_%x95037%_ _%x95034%_)) (+ _%x95037%_ '1))))
    (define 1-
      (lambda (_%x95020%_)
        (if (number? _%x95020%_)
            (let ((_%x95024%_ _%x95020%_)) (__1- _%x95024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x95020%_)
              '#!void))))
    (define __1-
      (lambda (_%x95008%_) (let ((_%x95011%_ _%x95008%_)) (- _%x95011%_ '1))))
    (define fx1+
      (lambda (_%x94994%_)
        (if (fixnum? _%x94994%_)
            (let ((_%x94998%_ _%x94994%_)) (__fx1+ _%x94998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x94994%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x94982%_)
        (let ((_%x94985%_ _%x94982%_))
          (declare (not safe))
          (##fx+ _%x94985%_ '1))))
    (define fx1-
      (lambda (_%x94968%_)
        (if (fixnum? _%x94968%_)
            (let ((_%x94972%_ _%x94968%_)) (__fx1- _%x94972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x94968%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x94956%_)
        (let ((_%x94959%_ _%x94956%_))
          (declare (not safe))
          (##fx- _%x94959%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x94953%_)
        (if (fixnum? _%x94953%_)
            (let () (declare (not safe)) (##fx>= _%x94953%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x94950%_)
        (if (fixnum? _%x94950%_)
            (let () (declare (not safe)) (##fx> _%x94950%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x94947%_)
        (let () (declare (not safe)) (##fx= _%x94947%_ '0))))
    (define fx<0?
      (lambda (_%x94944%_)
        (if (fixnum? _%x94944%_)
            (let () (declare (not safe)) (##fx< _%x94944%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x94941%_)
        (if (fixnum? _%x94941%_)
            (let () (declare (not safe)) (##fx<= _%x94941%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x94938%_)
        (if (symbol? _%x94938%_) (not (uninterned-symbol? _%x94938%_)) '#f)))
    (define display-as-string
      (lambda (_%x94923%_ _%port94924%_)
        (if (output-port? _%port94924%_)
            (let ((_%port94928%_ _%port94924%_))
              (__display-as-string _%x94923%_ _%port94928%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port94924%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x94880%_ _%port94881%_)
        (let ((_%port94884%_ _%port94881%_))
          (if (or (string? _%x94880%_)
                  (symbol? _%x94880%_)
                  (keyword? _%x94880%_)
                  (number? _%x94880%_)
                  (char? _%x94880%_))
              (display _%x94880%_ _%port94884%_)
              (if (pair? _%x94880%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x94880%_))
                     _%port94884%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x94880%_))
                     _%port94884%_))
                  (if (vector? _%x94880%_)
                      (vector-for-each
                       (lambda (_%g9490794909%_)
                         (__display-as-string _%g9490794909%_ _%port94884%_))
                       _%x94880%_)
                      (if (or (null? _%x94880%_)
                              (eq? _%x94880%_ '#!void)
                              (eof-object? _%x94880%_)
                              (boolean? _%x94880%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x94880%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x94863%_)
        (if (string? _%x94863%_)
            _%x94863%_
            (if (symbol? _%x94863%_)
                (let () (declare (not safe)) (##symbol->string _%x94863%_))
                (if (keyword? _%x94863%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x94863%_))
                    (if (number? _%x94863%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x94863%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9486994871%_)
                           (__display-as-string
                            _%x94863%_
                            _%g9486994871%_)))))))))
    (define as-string__1
      (lambda _%args94874%_
        (call-with-output-string
         '()
         (lambda (_%g9487594877%_)
           (__display-as-string _%args94874%_ _%g9487594877%_)))))
    (define as-string
      (lambda _g99114_
        (let ((_g99115_ (let () (declare (not safe)) (##length _g99114_))))
          (cond ((let () (declare (not safe)) (##fx= _g99115_ 1))
                 (apply as-string__0 _g99114_))
                (#t
                 (apply (lambda _%args94874%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args94874%_)))
                        _g99114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g99114_))))))
    (define make-symbol__0
      (lambda (_%x94859%_)
        (if (interned-symbol? _%x94859%_)
            _%x94859%_
            (let ((__tmp99116 (as-string__0 _%x94859%_)))
              (declare (not safe))
              (##string->symbol __tmp99116)))))
    (define make-symbol__1
      (lambda _%args94861%_
        (let ((__tmp99117
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args94861%_))))
          (declare (not safe))
          (##string->symbol __tmp99117))))
    (define make-symbol
      (lambda _g99118_
        (let ((_g99119_ (let () (declare (not safe)) (##length _g99118_))))
          (cond ((let () (declare (not safe)) (##fx= _g99119_ 1))
                 (apply make-symbol__0 _g99118_))
                (#t
                 (apply (lambda _%args94861%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args94861%_)))
                        _g99118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g99118_))))))
    (define make-keyword__0
      (lambda (_%x94855%_)
        (if (interned-keyword? _%x94855%_)
            _%x94855%_
            (let ((__tmp99120 (as-string__0 _%x94855%_)))
              (declare (not safe))
              (##string->keyword __tmp99120)))))
    (define make-keyword__1
      (lambda _%args94857%_
        (let ((__tmp99121
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args94857%_))))
          (declare (not safe))
          (##string->keyword __tmp99121))))
    (define make-keyword
      (lambda _g99122_
        (let ((_g99123_ (let () (declare (not safe)) (##length _g99122_))))
          (cond ((let () (declare (not safe)) (##fx= _g99123_ 1))
                 (apply make-keyword__0 _g99122_))
                (#t
                 (apply (lambda _%args94857%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args94857%_)))
                        _g99122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g99122_))))))
    (define interned-keyword?
      (lambda (_%x94852%_)
        (if (keyword? _%x94852%_) (not (uninterned-keyword? _%x94852%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym94838%_)
        (if (symbol? _%sym94838%_)
            (let ((_%sym94842%_ _%sym94838%_))
              (__symbol->keyword _%sym94842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym94838%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym94826%_)
        (let ((_%sym94829%_ _%sym94826%_))
          (if (uninterned-symbol? _%sym94829%_)
              (let ((__tmp99124
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym94829%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp99124))
              (let ((__tmp99125
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym94829%_))))
                (declare (not safe))
                (##string->keyword __tmp99125))))))
    (define keyword->symbol
      (lambda (_%sym94812%_)
        (if (keyword? _%sym94812%_)
            (let ((_%sym94816%_ _%sym94812%_))
              (__keyword->symbol _%sym94816%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym94812%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym94800%_)
        (let ((_%sym94803%_ _%sym94800%_))
          (if (uninterned-keyword? _%sym94803%_)
              (let ((__tmp99126
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym94803%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp99126))
              (let ((__tmp99127
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym94803%_))))
                (declare (not safe))
                (##string->symbol __tmp99127))))))
    (define bytes->string__%
      (lambda (_%bstr94765%_ _%enc94766%_)
        (if (u8vector? _%bstr94765%_)
            (let ((_%bstr94770%_ _%bstr94765%_))
              (if (symbol? _%enc94766%_)
                  (let ((_%enc94780%_ _%enc94766%_))
                    (__bytes->string__% _%bstr94770%_ _%enc94780%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc94766%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr94765%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr94793%_)
        (let ((_%enc94795%_ 'UTF-8))
          (bytes->string__% _%bstr94793%_ _%enc94795%_))))
    (define bytes->string
      (lambda _g99128_
        (let ((_g99129_ (let () (declare (not safe)) (##length _g99128_))))
          (cond ((let () (declare (not safe)) (##fx= _g99129_ 1))
                 (apply bytes->string__0 _g99128_))
                ((let () (declare (not safe)) (##fx= _g99129_ 2))
                 (apply bytes->string__% _g99128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g99128_))))))
    (define __bytes->string__%
      (lambda (_%bstr94724%_ _%enc94725%_)
        (let* ((_%bstr94728%_ _%bstr94724%_) (_%enc94736%_ _%enc94725%_))
          (if (eq? _%enc94736%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr94728%_))
              (let* ((_%in94745%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc94736%_
                                   (cons 'init: (cons _%bstr94728%_ '()))))))
                     (_%len94747%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr94728%_)))
                     (_%out94749%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len94747%_)))
                     (_%n94751%_
                      (read-substring
                       _%out94749%_
                       '0
                       _%len94747%_
                       _%in94745%_)))
                (string-shrink! _%out94749%_ _%n94751%_)
                _%out94749%_)))))
    (define __bytes->string__0
      (lambda (_%bstr94757%_)
        (let ((_%enc94759%_ 'UTF-8))
          (__bytes->string__% _%bstr94757%_ _%enc94759%_))))
    (define __bytes->string
      (lambda _g99130_
        (let ((_g99131_ (let () (declare (not safe)) (##length _g99130_))))
          (cond ((let () (declare (not safe)) (##fx= _g99131_ 1))
                 (apply __bytes->string__0 _g99130_))
                ((let () (declare (not safe)) (##fx= _g99131_ 2))
                 (apply __bytes->string__% _g99130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g99130_))))))
    (define string->bytes__%
      (lambda (_%str94688%_ _%enc94689%_)
        (if (string? _%str94688%_)
            (let ((_%str94693%_ _%str94688%_))
              (if (symbol? _%enc94689%_)
                  (let ((_%enc94703%_ _%enc94689%_))
                    (__string->bytes__% _%str94693%_ _%enc94703%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc94689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str94688%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str94716%_)
        (let ((_%enc94718%_ 'UTF-8))
          (string->bytes__% _%str94716%_ _%enc94718%_))))
    (define string->bytes
      (lambda _g99132_
        (let ((_g99133_ (let () (declare (not safe)) (##length _g99132_))))
          (cond ((let () (declare (not safe)) (##fx= _g99133_ 1))
                 (apply string->bytes__0 _g99132_))
                ((let () (declare (not safe)) (##fx= _g99133_ 2))
                 (apply string->bytes__% _g99132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g99132_))))))
    (define __string->bytes__%
      (lambda (_%str94656%_ _%enc94657%_)
        (let* ((_%str94660%_ _%str94656%_) (_%enc94668%_ _%enc94657%_))
          (if (eq? _%enc94668%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str94660%_))
              (__substring->bytes__%
               _%str94660%_
               '0
               (let () (declare (not safe)) (##string-length _%str94660%_))
               _%enc94668%_)))))
    (define __string->bytes__0
      (lambda (_%str94680%_)
        (let ((_%enc94682%_ 'UTF-8))
          (__string->bytes__% _%str94680%_ _%enc94682%_))))
    (define __string->bytes
      (lambda _g99134_
        (let ((_g99135_ (let () (declare (not safe)) (##length _g99134_))))
          (cond ((let () (declare (not safe)) (##fx= _g99135_ 1))
                 (apply __string->bytes__0 _g99134_))
                ((let () (declare (not safe)) (##fx= _g99135_ 2))
                 (apply __string->bytes__% _g99134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g99134_))))))
    (define substring->bytes__%
      (lambda (_%str94604%_ _%start94605%_ _%end94606%_ _%enc94607%_)
        (if (string? _%str94604%_)
            (let ((_%str94611%_ _%str94604%_))
              (if (nonnegative-fixnum? _%start94605%_)
                  (let ((_%start94621%_ _%start94605%_))
                    (if (nonnegative-fixnum? _%end94606%_)
                        (let ((_%end94631%_ _%end94606%_))
                          (__substring->bytes__%
                           _%str94611%_
                           _%start94621%_
                           _%end94631%_
                           _%enc94607%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end94606%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start94605%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str94604%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str94644%_ _%start94645%_ _%end94646%_)
        (let ((_%enc94648%_ 'UTF-8))
          (substring->bytes__%
           _%str94644%_
           _%start94645%_
           _%end94646%_
           _%enc94648%_))))
    (define substring->bytes
      (lambda _g99136_
        (let ((_g99137_ (let () (declare (not safe)) (##length _g99136_))))
          (cond ((let () (declare (not safe)) (##fx= _g99137_ 3))
                 (apply substring->bytes__0 _g99136_))
                ((let () (declare (not safe)) (##fx= _g99137_ 4))
                 (apply substring->bytes__% _g99136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g99136_))))))
    (define __substring->bytes__%
      (lambda (_%str94556%_ _%start94557%_ _%end94558%_ _%enc94559%_)
        (let* ((_%str94562%_ _%str94556%_)
               (_%start94570%_ _%start94557%_)
               (_%end94578%_ _%end94558%_))
          (if (eq? _%enc94559%_ 'UTF-8)
              (string->utf8 _%str94562%_ _%start94570%_ _%end94578%_)
              (let ((_%out94587%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc94559%_ '())))))
                (write-substring
                 _%str94562%_
                 _%start94570%_
                 _%end94578%_
                 _%out94587%_)
                (get-output-u8vector _%out94587%_))))))
    (define __substring->bytes__0
      (lambda (_%str94592%_ _%start94593%_ _%end94594%_)
        (let ((_%enc94596%_ 'UTF-8))
          (__substring->bytes__%
           _%str94592%_
           _%start94593%_
           _%end94594%_
           _%enc94596%_))))
    (define __substring->bytes
      (lambda _g99138_
        (let ((_g99139_ (let () (declare (not safe)) (##length _g99138_))))
          (cond ((let () (declare (not safe)) (##fx= _g99139_ 3))
                 (apply __substring->bytes__0 _g99138_))
                ((let () (declare (not safe)) (##fx= _g99139_ 4))
                 (apply __substring->bytes__% _g99138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g99138_))))))
    (define string-empty?
      (lambda (_%str94541%_)
        (if (string? _%str94541%_)
            (let ((_%str94545%_ _%str94541%_)) (__string-empty? _%str94545%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str94541%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str94529%_)
        (let* ((_%str94532%_ _%str94529%_)
               (__tmp99140
                (let () (declare (not safe)) (##string-length _%str94532%_))))
          (declare (not safe))
          (##fxzero? __tmp99140))))
    (define string-index__%
      (lambda (_%str94481%_ _%char94482%_ _%start94483%_)
        (if (string? _%str94481%_)
            (let ((_%str94487%_ _%str94481%_))
              (if (char? _%char94482%_)
                  (let ((_%char94497%_ _%char94482%_))
                    (if (nonnegative-fixnum? _%start94483%_)
                        (let ((_%start94507%_ _%start94483%_))
                          (__string-index__%
                           _%str94487%_
                           _%char94497%_
                           _%start94507%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start94483%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char94482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str94481%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str94520%_ _%char94521%_)
        (let ((_%start94523%_ '0))
          (string-index__% _%str94520%_ _%char94521%_ _%start94523%_))))
    (define string-index
      (lambda _g99141_
        (let ((_g99142_ (let () (declare (not safe)) (##length _g99141_))))
          (cond ((let () (declare (not safe)) (##fx= _g99142_ 2))
                 (apply string-index__0 _g99141_))
                ((let () (declare (not safe)) (##fx= _g99142_ 3))
                 (apply string-index__% _g99141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g99141_))))))
    (define __string-index__%
      (lambda (_%str94420%_ _%char94421%_ _%start94422%_)
        (let* ((_%str94425%_ _%str94420%_)
               (_%char94433%_ _%char94421%_)
               (_%start94441%_ _%start94422%_)
               (_%len94450%_
                (let () (declare (not safe)) (##string-length _%str94425%_))))
          (let _%lp94452%_ ((_%k94454%_ _%start94441%_))
            (let ((_%k94456%_ _%k94454%_))
              (if (let () (declare (not safe)) (##fx< _%k94456%_ _%len94450%_))
                  (if (eq? _%char94433%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str94425%_ _%k94456%_)))
                      _%k94456%_
                      (_%lp94452%_
                       (let () (declare (not safe)) (##fx+ _%k94456%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str94471%_ _%char94472%_)
        (let ((_%start94474%_ '0))
          (__string-index__% _%str94471%_ _%char94472%_ _%start94474%_))))
    (define __string-index
      (lambda _g99143_
        (let ((_g99144_ (let () (declare (not safe)) (##length _g99143_))))
          (cond ((let () (declare (not safe)) (##fx= _g99144_ 2))
                 (apply __string-index__0 _g99143_))
                ((let () (declare (not safe)) (##fx= _g99144_ 3))
                 (apply __string-index__% _g99143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g99143_))))))
    (define string-rindex__%
      (lambda (_%str94381%_ _%char94382%_ _%start94383%_)
        (if (string? _%str94381%_)
            (let ((_%str94387%_ _%str94381%_))
              (if (char? _%char94382%_)
                  (let ((_%char94397%_ _%char94382%_))
                    (__string-rindex__%
                     _%str94387%_
                     _%char94397%_
                     _%start94383%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char94382%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str94381%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str94410%_ _%char94411%_)
        (let ((_%start94413%_ '#f))
          (string-rindex__% _%str94410%_ _%char94411%_ _%start94413%_))))
    (define string-rindex
      (lambda _g99145_
        (let ((_g99146_ (let () (declare (not safe)) (##length _g99145_))))
          (cond ((let () (declare (not safe)) (##fx= _g99146_ 2))
                 (apply string-rindex__0 _g99145_))
                ((let () (declare (not safe)) (##fx= _g99146_ 3))
                 (apply string-rindex__% _g99145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g99145_))))))
    (define __string-rindex__%
      (lambda (_%str94323%_ _%char94324%_ _%start94325%_)
        (let* ((_%str94328%_ _%str94323%_)
               (_%char94336%_ _%char94324%_)
               (_%len94345%_
                (let () (declare (not safe)) (##string-length _%str94328%_)))
               (_%start94347%_
                (if (fixnum? _%start94325%_)
                    _%start94325%_
                    (let () (declare (not safe)) (##fx- _%len94345%_ '1)))))
          (let _%lp94350%_ ((_%k94352%_ _%start94347%_))
            (let ((_%k94354%_ _%k94352%_))
              (if (let () (declare (not safe)) (##fx>= _%k94354%_ '0))
                  (if (eq? _%char94336%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str94328%_ _%k94354%_)))
                      _%k94354%_
                      (_%lp94350%_
                       (let () (declare (not safe)) (##fx- _%k94354%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str94371%_ _%char94372%_)
        (let ((_%start94374%_ '#f))
          (__string-rindex__% _%str94371%_ _%char94372%_ _%start94374%_))))
    (define __string-rindex
      (lambda _g99147_
        (let ((_g99148_ (let () (declare (not safe)) (##length _g99147_))))
          (cond ((let () (declare (not safe)) (##fx= _g99148_ 2))
                 (apply __string-rindex__0 _g99147_))
                ((let () (declare (not safe)) (##fx= _g99148_ 3))
                 (apply __string-rindex__% _g99147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g99147_))))))
    (define string-split
      (lambda (_%str94297%_ _%char94298%_)
        (if (string? _%str94297%_)
            (let ((_%str94302%_ _%str94297%_))
              (if (char? _%char94298%_)
                  (let ((_%char94312%_ _%char94298%_))
                    (__string-split _%str94302%_ _%char94312%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char94298%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str94297%_)
              '#!void))))
    (define __string-split
      (lambda (_%str94238%_ _%char94239%_)
        (let* ((_%str94242%_ _%str94238%_)
               (_%char94250%_ _%char94239%_)
               (_%len94259%_
                (let () (declare (not safe)) (##string-length _%str94242%_))))
          (let _%lp94261%_ ((_%start94263%_ '0) (_%r94264%_ '()))
            (let* ((_%start94267%_ _%start94263%_)
                   (_%$e94280%_
                    (__string-index__%
                     _%str94242%_
                     _%char94250%_
                     _%start94267%_)))
              (if _%$e94280%_
                  ((lambda (_%end94283%_)
                     (let ((_%end94285%_ _%end94283%_))
                       (_%lp94261%_
                        (let () (declare (not safe)) (##fx+ _%end94285%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str94242%_
                                 _%start94267%_
                                 _%end94285%_))
                              _%r94264%_))))
                   _%$e94280%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start94267%_ _%len94259%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str94242%_
                                _%start94267%_
                                _%len94259%_)))
                       _%r94264%_)
                      (reverse! _%r94264%_))))))))
    (define string-join
      (lambda (_%strs94088%_ _%join94089%_)
        (letrec ((_%join-length94092%_
                  (lambda (_%strs94176%_ _%jlen94177%_)
                    (let _%lp94179%_ ((_%rest94181%_ _%strs94176%_)
                                      (_%len94182%_ '0))
                      (let* ((_%len94184%_ _%len94182%_)
                             (_%rest9419294200%_ _%rest94181%_)
                             (_%else9419494208%_ (lambda () '0))
                             (_%K9419694226%_
                              (lambda (_%rest94211%_ _%hd94212%_)
                                (if (string? _%hd94212%_)
                                    (let ((_%hd94214%_ _%hd94212%_))
                                      (if (pair? _%rest94211%_)
                                          (_%lp94179%_
                                           _%rest94211%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd94214%_))
                                                _%jlen94177%_
                                                _%len94184%_))
                                          (let ((__tmp99149
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd94214%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp99149 _%len94184%_))))
                                    (error '"expected string" _%hd94212%_)))))
                        (if (pair? _%rest9419294200%_)
                            (let ((_%hd9419794229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9419294200%_)))
                                  (_%tl9419894231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9419294200%_))))
                              (let* ((_%hd94234%_ _%hd9419794229%_)
                                     (_%rest94236%_ _%tl9419894231%_))
                                (_%K9419694226%_ _%rest94236%_ _%hd94234%_)))
                            (_%else9419494208%_)))))))
          (let* ((_%join94097%_
                  (if (char? _%join94089%_)
                      (let () (declare (not safe)) (##string _%join94089%_))
                      (if (string? _%join94089%_)
                          _%join94089%_
                          (error '"expected string or char" _%join94089%_))))
                 (_%jlen94099%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join94097%_)))
                 (_%olen94101%_
                  (_%join-length94092%_ _%strs94088%_ _%jlen94099%_))
                 (_%ostr94103%_
                  (let () (declare (not safe)) (##make-string _%olen94101%_))))
            (let _%lp94106%_ ((_%rest94108%_ _%strs94088%_) (_%k94109%_ '0))
              (let* ((_%k94112%_ _%k94109%_)
                     (_%rest9412894136%_ _%rest94108%_)
                     (_%else9413094144%_ (lambda () '""))
                     (_%K9413294164%_
                      (lambda (_%rest94147%_ _%hd94148%_)
                        (let* ((_%hd94150%_ _%hd94148%_)
                               (_%hdlen94162%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd94150%_))))
                          (if (pair? _%rest94147%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94150%_
                                   '0
                                   _%hdlen94162%_
                                   _%ostr94103%_
                                   _%k94112%_))
                                (let ((__tmp99150
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k94112%_ _%hdlen94162%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join94097%_
                                   '0
                                   _%jlen94099%_
                                   _%ostr94103%_
                                   __tmp99150))
                                (_%lp94106%_
                                 _%rest94147%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k94112%_
                                          _%hdlen94162%_
                                          _%jlen94099%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94150%_
                                   '0
                                   _%hdlen94162%_
                                   _%ostr94103%_
                                   _%k94112%_))
                                _%ostr94103%_))))))
                (if (pair? _%rest9412894136%_)
                    (let ((_%hd9413394167%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9412894136%_)))
                          (_%tl9413494169%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9412894136%_))))
                      (let* ((_%hd94172%_ _%hd9413394167%_)
                             (_%rest94174%_ _%tl9413494169%_))
                        (_%K9413294164%_ _%rest94174%_ _%hd94172%_)))
                    (_%else9413094144%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes94014%_ _%port94015%_ _%start94016%_ _%end94017%_)
        (if (u8vector? _%bytes94014%_)
            (let ((_%bytes94021%_ _%bytes94014%_))
              (if (input-port? _%port94015%_)
                  (let ((_%port94031%_ _%port94015%_))
                    (if ((lambda (_%o94040%_)
                           (and (fixnum? _%o94040%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o94040%_ '0))
                                (let ((__tmp99151
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94021%_))))
                                  (declare (not safe))
                                  (##fx< _%o94040%_ __tmp99151))))
                         _%start94016%_)
                        (let ((_%start94044%_ _%start94016%_))
                          (if ((lambda (_%o94053%_)
                                 (and (fixnum? _%o94053%_)
                                      (let ((__tmp99152
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes94021%_))))
                                        (declare (not safe))
                                        (##fx<= _%start94044%_
                                                _%o94053%_
                                                __tmp99152))))
                               _%end94017%_)
                              (let ((_%end94057%_ _%end94017%_))
                                (__read-u8vector__%
                                 _%bytes94021%_
                                 _%port94031%_
                                 _%start94044%_
                                 _%end94057%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@784.22-784.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end94017%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start94016%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port94015%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes94014%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes94070%_ _%port94071%_)
        (let* ((_%start94073%_ '0)
               (_%end94075%_ (u8vector-length _%bytes94070%_)))
          (read-u8vector__%
           _%bytes94070%_
           _%port94071%_
           _%start94073%_
           _%end94075%_))))
    (define read-u8vector__1
      (lambda (_%bytes94077%_ _%port94078%_ _%start94079%_)
        (let ((_%end94081%_ (u8vector-length _%bytes94077%_)))
          (read-u8vector__%
           _%bytes94077%_
           _%port94078%_
           _%start94079%_
           _%end94081%_))))
    (define read-u8vector
      (lambda _g99153_
        (let ((_g99154_ (let () (declare (not safe)) (##length _g99153_))))
          (cond ((let () (declare (not safe)) (##fx= _g99154_ 2))
                 (apply read-u8vector__0 _g99153_))
                ((let () (declare (not safe)) (##fx= _g99154_ 3))
                 (apply read-u8vector__1 _g99153_))
                ((let () (declare (not safe)) (##fx= _g99154_ 4))
                 (apply read-u8vector__% _g99153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g99153_))))))
    (define __read-u8vector__%
      (lambda (_%bytes93953%_ _%port93954%_ _%start93955%_ _%end93956%_)
        (let* ((_%bytes93959%_ _%bytes93953%_)
               (_%port93967%_ _%port93954%_)
               (_%start93975%_ _%start93955%_)
               (_%end93983%_ _%end93956%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes93959%_
           _%start93975%_
           _%end93983%_
           _%port93967%_))))
    (define __read-u8vector__0
      (lambda (_%bytes93995%_ _%port93996%_)
        (let* ((_%start93998%_ '0)
               (_%end94000%_ (u8vector-length _%bytes93995%_)))
          (__read-u8vector__%
           _%bytes93995%_
           _%port93996%_
           _%start93998%_
           _%end94000%_))))
    (define __read-u8vector__1
      (lambda (_%bytes94002%_ _%port94003%_ _%start94004%_)
        (let ((_%end94006%_ (u8vector-length _%bytes94002%_)))
          (__read-u8vector__%
           _%bytes94002%_
           _%port94003%_
           _%start94004%_
           _%end94006%_))))
    (define __read-u8vector
      (lambda _g99155_
        (let ((_g99156_ (let () (declare (not safe)) (##length _g99155_))))
          (cond ((let () (declare (not safe)) (##fx= _g99156_ 2))
                 (apply __read-u8vector__0 _g99155_))
                ((let () (declare (not safe)) (##fx= _g99156_ 3))
                 (apply __read-u8vector__1 _g99155_))
                ((let () (declare (not safe)) (##fx= _g99156_ 4))
                 (apply __read-u8vector__% _g99155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g99155_))))))
    (define write-u8vector__%
      (lambda (_%bytes93883%_ _%port93884%_ _%start93885%_ _%end93886%_)
        (if (u8vector? _%bytes93883%_)
            (let ((_%bytes93890%_ _%bytes93883%_))
              (if (output-port? _%port93884%_)
                  (let* ((_%port93900%_ _%port93884%_)
                         (_%start93909%_ _%start93885%_))
                    (if ((lambda (_%o93917%_)
                           (and (fixnum? _%o93917%_)
                                (let ((__tmp99157
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes93890%_))))
                                  (declare (not safe))
                                  (##fx<= _%start93909%_
                                          _%o93917%_
                                          __tmp99157))))
                         _%end93886%_)
                        (let ((_%end93921%_ _%end93886%_))
                          (__write-u8vector__%
                           _%bytes93890%_
                           _%port93900%_
                           _%start93909%_
                           _%end93921%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end93886%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port93884%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes93883%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes93934%_ _%port93935%_)
        (let* ((_%start93937%_ '0)
               (_%end93939%_ (u8vector-length _%bytes93934%_)))
          (write-u8vector__%
           _%bytes93934%_
           _%port93935%_
           _%start93937%_
           _%end93939%_))))
    (define write-u8vector__1
      (lambda (_%bytes93941%_ _%port93942%_ _%start93943%_)
        (let ((_%end93945%_ (u8vector-length _%bytes93941%_)))
          (write-u8vector__%
           _%bytes93941%_
           _%port93942%_
           _%start93943%_
           _%end93945%_))))
    (define write-u8vector
      (lambda _g99158_
        (let ((_g99159_ (let () (declare (not safe)) (##length _g99158_))))
          (cond ((let () (declare (not safe)) (##fx= _g99159_ 2))
                 (apply write-u8vector__0 _g99158_))
                ((let () (declare (not safe)) (##fx= _g99159_ 3))
                 (apply write-u8vector__1 _g99158_))
                ((let () (declare (not safe)) (##fx= _g99159_ 4))
                 (apply write-u8vector__% _g99158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g99158_))))))
    (define __write-u8vector__%
      (lambda (_%bytes93822%_ _%port93823%_ _%start93824%_ _%end93825%_)
        (let* ((_%bytes93828%_ _%bytes93822%_)
               (_%port93836%_ _%port93823%_)
               (_%start93844%_ _%start93824%_)
               (_%end93852%_ _%end93825%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes93828%_
           _%start93844%_
           _%end93852%_
           _%port93836%_))))
    (define __write-u8vector__0
      (lambda (_%bytes93864%_ _%port93865%_)
        (let* ((_%start93867%_ '0)
               (_%end93869%_ (u8vector-length _%bytes93864%_)))
          (__write-u8vector__%
           _%bytes93864%_
           _%port93865%_
           _%start93867%_
           _%end93869%_))))
    (define __write-u8vector__1
      (lambda (_%bytes93871%_ _%port93872%_ _%start93873%_)
        (let ((_%end93875%_ (u8vector-length _%bytes93871%_)))
          (__write-u8vector__%
           _%bytes93871%_
           _%port93872%_
           _%start93873%_
           _%end93875%_))))
    (define __write-u8vector
      (lambda _g99160_
        (let ((_g99161_ (let () (declare (not safe)) (##length _g99160_))))
          (cond ((let () (declare (not safe)) (##fx= _g99161_ 2))
                 (apply __write-u8vector__0 _g99160_))
                ((let () (declare (not safe)) (##fx= _g99161_ 3))
                 (apply __write-u8vector__1 _g99160_))
                ((let () (declare (not safe)) (##fx= _g99161_ 4))
                 (apply __write-u8vector__% _g99160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g99160_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag93790%_
               _%dbg-exprs93791%_
               _%dbg-thunks93792%_
               _%expr93793%_
               _%thunk93794%_)
        (letrec ((_%o93796%_ (current-output-port))
                 (_%e93797%_ (current-error-port))
                 (_%p93798%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f93799%_
                  (lambda ()
                    (force-output _%o93796%_)
                    (force-output _%e93797%_)))
                 (_%d93800%_
                  (lambda (_%x93807%_) (display _%x93807%_ _%e93797%_)))
                 (_%w93801%_
                  (lambda (_%x93809%_) (_%p93798%_ _%x93809%_ _%e93797%_)))
                 (_%n93802%_ (lambda () (newline _%e93797%_)))
                 (_%v93803%_
                  (lambda (_%l93812%_)
                    (for-each
                     (lambda (_%x93814%_)
                       (_%d93800%_ '" ")
                       (_%w93801%_ _%x93814%_))
                     _%l93812%_)
                    (_%n93802%_)))
                 (_%x93804%_
                  (lambda (_%expr93816%_ _%thunk93817%_)
                    (_%f93799%_)
                    (_%d93800%_ '"  ")
                    (_%w93801%_ _%expr93816%_)
                    (_%d93800%_ '" =>")
                    (call-with-values
                     _%thunk93817%_
                     (lambda _%x93819%_
                       (_%v93803%_ _%x93819%_)
                       (_%f93799%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x93819%_)))))))
          (if _%tag93790%_
              (begin
                (if (eq? _%tag93790%_ '#!void)
                    '#!void
                    (begin
                      (_%f93799%_)
                      (_%d93800%_ _%tag93790%_)
                      (_%n93802%_)))
                (for-each _%x93804%_ _%dbg-exprs93791%_ _%dbg-thunks93792%_)
                (if _%thunk93794%_
                    (_%x93804%_ _%expr93793%_ _%thunk93794%_)
                    '#!void))
              (if _%thunk93794%_ (_%thunk93794%_) '#!void)))))))
