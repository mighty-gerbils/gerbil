(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770341474)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args102872%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args102872%_))
          (newline))))
    (define display*
      (lambda _%args102869%_
        (let () (declare (not safe)) (##for-each display _%args102869%_))))
    (define file-newer?
      (lambda (_%file1102844%_ _%file2102845%_)
        (if (string? _%file1102844%_)
            (let ((_%file1102849%_ _%file1102844%_))
              (if (string? _%file2102845%_)
                  (let ((_%file2102859%_ _%file2102845%_))
                    (__file-newer? _%file1102849%_ _%file2102859%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file2102845%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file1102844%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file1102792%_ _%file2102793%_)
        (let* ((_%file1102796%_ _%file1102792%_)
               (_%file2102804%_ _%file2102793%_))
          (letrec ((_%modification-time102813%_
                    (lambda (_%file102832%_)
                      (let ((_%file102835%_ _%file102832%_))
                        (_%__modification-time102814%_ _%file102835%_))))
                   (_%__modification-time102814%_
                    (lambda (_%file102816%_)
                      (let* ((_%file102819%_ _%file102816%_)
                             (__tmp104634
                              (let ((__tmp104635
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file102819%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp104635))))
                        (declare (not safe))
                        (##time->seconds __tmp104634)))))
            (let ((__tmp104637 (_%__modification-time102814%_ _%file1102796%_))
                  (__tmp104636
                   (_%__modification-time102814%_ _%file2102804%_)))
              (declare (not safe))
              (##fl> __tmp104637 __tmp104636))))))
    (define create-directory*__%
      (lambda (_%dir102757%_ _%perms102758%_)
        (if (string? _%dir102757%_)
            (let ((_%dir102762%_ _%dir102757%_))
              (if (fixnum? _%perms102758%_)
                  (let ((_%perms102772%_ _%perms102758%_))
                    (__create-directory*__% _%dir102762%_ _%perms102772%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms102758%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir102757%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir102785%_)
        (let ((_%perms102787%_ '493))
          (create-directory*__% _%dir102785%_ _%perms102787%_))))
    (define create-directory*
      (lambda _g104638_
        (let ((_g104639_ (let () (declare (not safe)) (##length _g104638_))))
          (cond ((let () (declare (not safe)) (##fx= _g104639_ 1))
                 (apply create-directory*__0 _g104638_))
                ((let () (declare (not safe)) (##fx= _g104639_ 2))
                 (apply create-directory*__% _g104638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g104638_))))))
    (define __create-directory*__%
      (lambda (_%dir102681%_ _%perms102682%_)
        (let* ((_%dir102685%_ _%dir102681%_) (_%perms102693%_ _%perms102682%_))
          (letrec ((_%create1102702%_
                    (lambda (_%path102734%_)
                      (let ((_%path102737%_ _%path102734%_))
                        (_%__create1102703%_ _%path102737%_))))
                   (_%__create1102703%_
                    (lambda (_%path102715%_)
                      (let ((_%path102718%_ _%path102715%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path102718%_))
                            (if (eq? (file-type _%path102718%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path102718%_))
                            (if _%perms102693%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path102718%_
                                             (cons 'permissions:
                                                   (cons _%perms102693%_
                                                         '())))))
                                (create-directory _%path102718%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir102685%_))
                '#!void
                (let _%lp102705%_ ((_%start102707%_ '0))
                  (let ((_%$e102709%_
                         (__string-index__%
                          _%dir102685%_
                          '#\/
                          _%start102707%_)))
                    (if _%$e102709%_
                        ((lambda (_%x102712%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x102712%_ '0))
                               (_%__create1102703%_
                                (substring _%dir102685%_ '0 _%x102712%_))
                               '#!void)
                           (_%lp102705%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x102712%_ '1))))
                         _%$e102709%_)
                        (_%__create1102703%_ _%dir102685%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir102749%_)
        (let ((_%perms102751%_ '493))
          (__create-directory*__% _%dir102749%_ _%perms102751%_))))
    (define __create-directory*
      (lambda _g104640_
        (let ((_g104641_ (let () (declare (not safe)) (##length _g104640_))))
          (cond ((let () (declare (not safe)) (##fx= _g104641_ 1))
                 (apply __create-directory*__0 _g104640_))
                ((let () (declare (not safe)) (##fx= _g104641_ 2))
                 (apply __create-directory*__% _g104640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g104640_))))))
    (define move-file__%
      (lambda (_%src102632%_ _%dest102633%_ _%replace?102634%_)
        (if (string? _%src102632%_)
            (let ((_%src102638%_ _%src102632%_))
              (if (string? _%dest102633%_)
                  (let ((_%dest102648%_ _%dest102633%_))
                    (if (boolean? _%replace?102634%_)
                        (let ((_%replace?102658%_ _%replace?102634%_))
                          (__move-file__%
                           _%src102638%_
                           _%dest102648%_
                           _%replace?102658%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?102634%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest102633%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src102632%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src102671%_ _%dest102672%_)
        (let ((_%replace?102674%_ '#t))
          (move-file__% _%src102671%_ _%dest102672%_ _%replace?102674%_))))
    (define move-file
      (lambda _g104642_
        (let ((_g104643_ (let () (declare (not safe)) (##length _g104642_))))
          (cond ((let () (declare (not safe)) (##fx= _g104643_ 2))
                 (apply move-file__0 _g104642_))
                ((let () (declare (not safe)) (##fx= _g104643_ 3))
                 (apply move-file__% _g104642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g104642_))))))
    (define __move-file__%
      (lambda (_%src102575%_ _%dest102576%_ _%replace?102577%_)
        (let* ((_%src102580%_ _%src102575%_)
               (_%dest102588%_ _%dest102576%_)
               (_%replace?102596%_ _%replace?102577%_))
          (letrec ((_%force-move-it102605%_
                    (lambda ()
                      (let ((_%tmp102611%_
                             (if _%replace?102596%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest102588%_))
                                     (let ((__tmp104644
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest102588%_
                                        '"."
                                        __tmp104644))
                                     '#f)
                                 '#f)))
                        (if _%tmp102611%_
                            (rename-file _%dest102588%_ _%tmp102611%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e102613%_)
                           (if _%tmp102611%_
                               (rename-file _%tmp102611%_ _%dest102588%_ '#t)
                               '#!void)
                           (raise _%e102613%_))
                         (lambda ()
                           (let ((_%fi102616%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src102580%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi102616%_))
                                      'symbolic-link)
                                 (let ((__tmp104645
                                        (path-normalize _%src102580%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp104645
                                    _%dest102588%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src102580%_
                                    _%dest102588%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src102580%_))
                           (if _%tmp102611%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp102611%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e102607%_)
               (if (let () (declare (not safe)) (##file-exists? _%src102580%_))
                   (_%force-move-it102605%_)
                   (raise _%e102607%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src102580%_
                  _%dest102588%_
                  _%replace?102596%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src102622%_ _%dest102623%_)
        (let ((_%replace?102625%_ '#t))
          (__move-file__% _%src102622%_ _%dest102623%_ _%replace?102625%_))))
    (define __move-file
      (lambda _g104646_
        (let ((_g104647_ (let () (declare (not safe)) (##length _g104646_))))
          (cond ((let () (declare (not safe)) (##fx= _g104647_ 2))
                 (apply __move-file__0 _g104646_))
                ((let () (declare (not safe)) (##fx= _g104647_ 3))
                 (apply __move-file__% _g104646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g104646_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore102571%_ '#t))
    (define true? (lambda (_%obj102568%_) (eq? _%obj102568%_ '#t)))
    (define false (lambda _%ignore102565%_ '#f))
    (define void (lambda _%ignore102562%_ '#!void))
    (define void? (lambda (_%obj102559%_) (eq? _%obj102559%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj102556%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj102556%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj102553%_) (eq? _%obj102553%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj102550%_) (eq? _%obj102550%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj102547%_) (eq? _%obj102547%_ '#!optional)))
    (define immediate?
      (lambda (_%obj102544%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj102544%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj102541%_)
        (if (fixnum? _%obj102541%_)
            (let () (declare (not safe)) (##fx>= _%obj102541%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj102535%_)
        (let ((_%$e102538%_ (pair? _%obj102535%_)))
          (if _%$e102538%_ _%$e102538%_ (null? _%obj102535%_)))))
    (define values-count
      (lambda (_%obj102532%_)
        (if (let () (declare (not safe)) (##values? _%obj102532%_))
            (let () (declare (not safe)) (##values-length _%obj102532%_))
            '1)))
    (define values-ref
      (lambda (_%obj102517%_ _%k102518%_)
        (if (fixnum? _%k102518%_)
            (let ((_%k102522%_ _%k102518%_))
              (__values-ref _%obj102517%_ _%k102522%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k102518%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj102504%_ _%k102505%_)
        (let ((_%k102508%_ _%k102505%_))
          (if (let () (declare (not safe)) (##values? _%obj102504%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj102504%_ _%k102508%_))
              _%obj102504%_))))
    (define values->list
      (lambda (_%obj102501%_)
        (if (let () (declare (not safe)) (##values? _%obj102501%_))
            (let () (declare (not safe)) (##values->list _%obj102501%_))
            (list _%obj102501%_))))
    (define foldl1
      (lambda (_%f102485%_ _%iv102486%_ _%lst102487%_)
        (if (procedure? _%f102485%_)
            (let ((_%f102491%_ _%f102485%_))
              (__foldl1 _%f102491%_ _%iv102486%_ _%lst102487%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f102485%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f102433%_ _%iv102434%_ _%lst102435%_)
        (let ((_%f102438%_ _%f102433%_))
          (let _%lp102447%_ ((_%rest102449%_ _%lst102435%_)
                             (_%r102450%_ _%iv102434%_))
            (let* ((_%rest102451102459%_ _%rest102449%_)
                   (_%else102453102467%_ (lambda () _%r102450%_))
                   (_%K102455102473%_
                    (lambda (_%rest102470%_ _%x102471%_)
                      (_%lp102447%_
                       _%rest102470%_
                       (let ()
                         (declare (not safe))
                         (_%f102438%_ _%x102471%_ _%r102450%_))))))
              (if (pair? _%rest102451102459%_)
                  (let ((_%hd102456102476%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102451102459%_)))
                        (_%tl102457102478%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102451102459%_))))
                    (let* ((_%x102481%_ _%hd102456102476%_)
                           (_%rest102483%_ _%tl102457102478%_))
                      (_%K102455102473%_ _%rest102483%_ _%x102481%_)))
                  (_%else102453102467%_)))))))
    (define foldl2
      (lambda (_%f102416%_ _%iv102417%_ _%lst1102418%_ _%lst2102419%_)
        (if (procedure? _%f102416%_)
            (let ((_%f102423%_ _%f102416%_))
              (__foldl2
               _%f102423%_
               _%iv102417%_
               _%lst1102418%_
               _%lst2102419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f102416%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f102329%_ _%iv102330%_ _%lst1102331%_ _%lst2102332%_)
        (let ((_%f102335%_ _%f102329%_))
          (let _%lp102344%_ ((_%rest1102346%_ _%lst1102331%_)
                             (_%rest2102347%_ _%lst2102332%_)
                             (_%r102348%_ _%iv102330%_))
            (let* ((_%rest1102349102357%_ _%rest1102346%_)
                   (_%else102351102365%_ (lambda () _%r102348%_))
                   (_%K102353102404%_
                    (lambda (_%rest1102368%_ _%x1102369%_)
                      (let* ((_%rest2102370102378%_ _%rest2102347%_)
                             (_%else102372102386%_ (lambda () _%r102348%_))
                             (_%K102374102392%_
                              (lambda (_%rest2102389%_ _%x2102390%_)
                                (_%lp102344%_
                                 _%rest1102368%_
                                 _%rest2102389%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f102335%_
                                    _%x1102369%_
                                    _%x2102390%_
                                    _%r102348%_))))))
                        (if (pair? _%rest2102370102378%_)
                            (let ((_%hd102375102395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2102370102378%_)))
                                  (_%tl102376102397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2102370102378%_))))
                              (let* ((_%x2102400%_ _%hd102375102395%_)
                                     (_%rest2102402%_ _%tl102376102397%_))
                                (_%K102374102392%_
                                 _%rest2102402%_
                                 _%x2102400%_)))
                            (_%else102372102386%_))))))
              (if (pair? _%rest1102349102357%_)
                  (let ((_%hd102354102407%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1102349102357%_)))
                        (_%tl102355102409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1102349102357%_))))
                    (let* ((_%x1102412%_ _%hd102354102407%_)
                           (_%rest1102414%_ _%tl102355102409%_))
                      (_%K102353102404%_ _%rest1102414%_ _%x1102412%_)))
                  (_%else102351102365%_)))))))
    (define foldl
      (lambda _g104648_
        (let ((_g104649_ (let () (declare (not safe)) (##length _g104648_))))
          (cond ((let () (declare (not safe)) (##fx= _g104649_ 3))
                 (apply foldl1 _g104648_))
                ((let () (declare (not safe)) (##fx= _g104649_ 4))
                 (apply foldl2 _g104648_))
                ((let () (declare (not safe)) (##fx>= _g104649_ 4))
                 (apply foldl* _g104648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g104648_))))))
    (define foldl*
      (lambda (_%f102298%_ _%iv102299%_ . _%rest102300%_)
        (if (procedure? _%f102298%_)
            (let ((_%f102304%_ _%f102298%_))
              (declare (not safe))
              (##apply __foldl* _%f102304%_ _%iv102299%_ _%rest102300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f102298%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f102276%_ _%iv102277%_ . _%rest102278%_)
        (let ((_%f102281%_ _%f102276%_))
          (let _%recur102290%_ ((_%iv102292%_ _%iv102277%_)
                                (_%rest102293%_ _%rest102278%_))
            (if (__andmap1 pair? _%rest102293%_)
                (_%recur102290%_
                 (let ((__tmp104650
                        (__foldr1
                         (lambda (_%xs102295%_ _%r102296%_)
                           (cons (car _%xs102295%_) _%r102296%_))
                         (list _%iv102292%_)
                         _%rest102293%_)))
                   (declare (not safe))
                   (##apply _%f102281%_ __tmp104650))
                 (map cdr _%rest102293%_))
                _%iv102292%_)))))
    (define foldr1
      (lambda (_%f102260%_ _%iv102261%_ _%lst102262%_)
        (if (procedure? _%f102260%_)
            (let ((_%f102266%_ _%f102260%_))
              (__foldr1 _%f102266%_ _%iv102261%_ _%lst102262%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f102260%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f102209%_ _%iv102210%_ _%lst102211%_)
        (let ((_%f102214%_ _%f102209%_))
          (let _%recur102223%_ ((_%rest102225%_ _%lst102211%_))
            (let* ((_%rest102226102234%_ _%rest102225%_)
                   (_%else102228102242%_ (lambda () _%iv102210%_))
                   (_%K102230102248%_
                    (lambda (_%rest102245%_ _%x102246%_)
                      (let ((__tmp104651 (_%recur102223%_ _%rest102245%_)))
                        (declare (not safe))
                        (_%f102214%_ _%x102246%_ __tmp104651)))))
              (if (pair? _%rest102226102234%_)
                  (let ((_%hd102231102251%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102226102234%_)))
                        (_%tl102232102253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102226102234%_))))
                    (let* ((_%x102256%_ _%hd102231102251%_)
                           (_%rest102258%_ _%tl102232102253%_))
                      (_%K102230102248%_ _%rest102258%_ _%x102256%_)))
                  (_%else102228102242%_)))))))
    (define foldr2
      (lambda (_%f102192%_ _%iv102193%_ _%lst1102194%_ _%lst2102195%_)
        (if (procedure? _%f102192%_)
            (let ((_%f102199%_ _%f102192%_))
              (__foldr2
               _%f102199%_
               _%iv102193%_
               _%lst1102194%_
               _%lst2102195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f102192%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f102106%_ _%iv102107%_ _%lst1102108%_ _%lst2102109%_)
        (let ((_%f102112%_ _%f102106%_))
          (let _%recur102121%_ ((_%rest1102123%_ _%lst1102108%_)
                                (_%rest2102124%_ _%lst2102109%_))
            (let* ((_%rest1102125102133%_ _%rest1102123%_)
                   (_%else102127102141%_ (lambda () _%iv102107%_))
                   (_%K102129102180%_
                    (lambda (_%rest1102144%_ _%x1102145%_)
                      (let* ((_%rest2102146102154%_ _%rest2102124%_)
                             (_%else102148102162%_ (lambda () _%iv102107%_))
                             (_%K102150102168%_
                              (lambda (_%rest2102165%_ _%x2102166%_)
                                (let ((__tmp104652
                                       (_%recur102121%_
                                        _%rest1102144%_
                                        _%rest2102165%_)))
                                  (declare (not safe))
                                  (_%f102112%_
                                   _%x1102145%_
                                   _%x2102166%_
                                   __tmp104652)))))
                        (if (pair? _%rest2102146102154%_)
                            (let ((_%hd102151102171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2102146102154%_)))
                                  (_%tl102152102173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2102146102154%_))))
                              (let* ((_%x2102176%_ _%hd102151102171%_)
                                     (_%rest2102178%_ _%tl102152102173%_))
                                (_%K102150102168%_
                                 _%rest2102178%_
                                 _%x2102176%_)))
                            (_%else102148102162%_))))))
              (if (pair? _%rest1102125102133%_)
                  (let ((_%hd102130102183%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1102125102133%_)))
                        (_%tl102131102185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1102125102133%_))))
                    (let* ((_%x1102188%_ _%hd102130102183%_)
                           (_%rest1102190%_ _%tl102131102185%_))
                      (_%K102129102180%_ _%rest1102190%_ _%x1102188%_)))
                  (_%else102127102141%_)))))))
    (define foldr
      (lambda _g104653_
        (let ((_g104654_ (let () (declare (not safe)) (##length _g104653_))))
          (cond ((let () (declare (not safe)) (##fx= _g104654_ 3))
                 (apply foldr1 _g104653_))
                ((let () (declare (not safe)) (##fx= _g104654_ 4))
                 (apply foldr2 _g104653_))
                ((let () (declare (not safe)) (##fx>= _g104654_ 4))
                 (apply foldr* _g104653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g104653_))))))
    (define foldr*
      (lambda (_%f102075%_ _%iv102076%_ . _%rest102077%_)
        (if (procedure? _%f102075%_)
            (let ((_%f102081%_ _%f102075%_))
              (declare (not safe))
              (##apply __foldr* _%f102081%_ _%iv102076%_ _%rest102077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f102075%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f102054%_ _%iv102055%_ . _%rest102056%_)
        (let ((_%f102059%_ _%f102054%_))
          (let _%recur102068%_ ((_%rest102070%_ _%rest102056%_))
            (if (__andmap1 pair? _%rest102070%_)
                (let ((__tmp104655
                       (__foldr1
                        (lambda (_%xs102072%_ _%r102073%_)
                          (cons (car _%xs102072%_) _%r102073%_))
                        (list (_%recur102068%_ (map cdr _%rest102070%_)))
                        _%rest102070%_)))
                  (declare (not safe))
                  (##apply _%f102059%_ __tmp104655))
                _%iv102055%_)))))
    (define remove-nulls!
      (lambda (_%l101941%_)
        (let* ((_%l101942101955%_ _%l101941%_)
               (_%E101946101959%_
                (lambda ()
                  (error '"No clause matching"
                         _%l101942101955%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K101951102044%_
                 (lambda (_%r102042%_) (remove-nulls! _%r102042%_)))
                (_%K101948102031%_
                 (lambda (_%r101971%_)
                   (let _%loop101973%_ ((_%l101975%_ _%l101941%_)
                                        (_%r101976%_ _%r101971%_))
                     (let* ((_%r101977101990%_ _%r101976%_)
                            (_%E101981101994%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r101977101990%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K101986102021%_
                              (lambda (_%rr102019%_)
                                (let ((__tmp104657 _%l101975%_)
                                      (__tmp104656
                                       (remove-nulls! _%rr102019%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp104657 __tmp104656))))
                             (_%K101983102008%_
                              (lambda (_%rr102006%_)
                                (_%loop101973%_ _%r101976%_ _%rr102006%_)))
                             (_%K101982101999%_ (lambda () '#!void)))
                         (if (pair? _%r101977101990%_)
                             (let ((_%tl101988102026%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r101977101990%_)))
                                   (_%hd101987102024%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r101977101990%_))))
                               (if (null? _%hd101987102024%_)
                                   (let ((_%rr102029%_ _%tl101988102026%_))
                                     (_%K101986102021%_ _%rr102029%_))
                                   (let ((_%rr102014%_ _%tl101988102026%_))
                                     (_%K101983102008%_ _%rr102014%_))))
                             '#!void))))
                   _%l101941%_))
                (_%K101947101964%_ (lambda () _%l101941%_)))
            (if (pair? _%l101942101955%_)
                (let ((_%tl101953102049%_
                       (let () (declare (not safe)) (##cdr _%l101942101955%_)))
                      (_%hd101952102047%_
                       (let ()
                         (declare (not safe))
                         (##car _%l101942101955%_))))
                  (if (null? _%hd101952102047%_)
                      (let ((_%r102052%_ _%tl101953102049%_))
                        (remove-nulls! _%r102052%_))
                      (let ((_%r102037%_ _%tl101953102049%_))
                        (_%K101948102031%_ _%r102037%_))))
                (_%K101947101964%_))))))
    (define append1!
      (lambda (_%l101926%_ _%x101927%_)
        (let ((_%l2101930%_ (cons _%x101927%_ '())))
          (if (pair? _%l101926%_)
              (let ((_%l101932%_ _%l101926%_))
                (let ((__tmp104658
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l101932%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp104658 _%l2101930%_))
                _%l101932%_)
              _%l2101930%_))))
    (define append-reverse-until
      (lambda (_%pred101910%_ _%rhead101911%_ _%tail101912%_)
        (if (procedure? _%pred101910%_)
            (let ((_%pred101916%_ _%pred101910%_))
              (__append-reverse-until
               _%pred101916%_
               _%rhead101911%_
               _%tail101912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred101910%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred101852%_ _%rhead101853%_ _%tail101854%_)
        (let ((_%pred101857%_ _%pred101852%_))
          (let _%loop101866%_ ((_%rhead101868%_ _%rhead101853%_)
                               (_%tail101869%_ _%tail101854%_))
            (let* ((_%rhead101871101880%_ _%rhead101868%_)
                   (_%E101874101884%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead101871101880%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K101878101907%_ (lambda () (values '() _%tail101869%_)))
                    (_%K101875101891%_
                     (lambda (_%r101888%_ _%a101889%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred101857%_ _%a101889%_))
                           (values _%rhead101868%_ _%tail101869%_)
                           (_%loop101866%_
                            _%r101888%_
                            (cons _%a101889%_ _%tail101869%_))))))
                (let ((_%try-match101873101903%_
                       (lambda ()
                         (if (pair? _%rhead101871101880%_)
                             (let ((_%tl101877101896%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead101871101880%_)))
                                   (_%hd101876101894%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead101871101880%_))))
                               (let ((_%a101899%_ _%hd101876101894%_)
                                     (_%r101901%_ _%tl101877101896%_))
                                 (_%K101875101891%_ _%r101901%_ _%a101899%_)))
                             (_%E101874101884%_)))))
                  (if (null? _%rhead101871101880%_)
                      (_%K101878101907%_)
                      (_%try-match101873101903%_)))))))))
    (define andmap1
      (lambda (_%f101837%_ _%lst101838%_)
        (if (procedure? _%f101837%_)
            (let ((_%f101842%_ _%f101837%_))
              (__andmap1 _%f101842%_ _%lst101838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f101837%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f101786%_ _%lst101787%_)
        (let ((_%f101790%_ _%f101786%_))
          (let _%lp101799%_ ((_%rest101801%_ _%lst101787%_))
            (let* ((_%rest101803101811%_ _%rest101801%_)
                   (_%else101805101819%_ (lambda () '#t))
                   (_%K101807101825%_
                    (lambda (_%rest101822%_ _%x101823%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f101790%_ _%x101823%_))
                          (_%lp101799%_ _%rest101822%_)
                          '#f))))
              (if (pair? _%rest101803101811%_)
                  (let ((_%hd101808101828%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101803101811%_)))
                        (_%tl101809101830%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101803101811%_))))
                    (let* ((_%x101833%_ _%hd101808101828%_)
                           (_%rest101835%_ _%tl101809101830%_))
                      (_%K101807101825%_ _%rest101835%_ _%x101833%_)))
                  (_%else101805101819%_)))))))
    (define andmap2
      (lambda (_%f101770%_ _%lst1101771%_ _%lst2101772%_)
        (if (procedure? _%f101770%_)
            (let ((_%f101776%_ _%f101770%_))
              (__andmap2 _%f101776%_ _%lst1101771%_ _%lst2101772%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f101770%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f101684%_ _%lst1101685%_ _%lst2101686%_)
        (let ((_%f101689%_ _%f101684%_))
          (let _%lp101698%_ ((_%rest1101700%_ _%lst1101685%_)
                             (_%rest2101701%_ _%lst2101686%_))
            (let* ((_%rest1101703101711%_ _%rest1101700%_)
                   (_%else101705101719%_ (lambda () '#t))
                   (_%K101707101758%_
                    (lambda (_%rest1101722%_ _%x1101723%_)
                      (let* ((_%rest2101724101732%_ _%rest2101701%_)
                             (_%else101726101740%_ (lambda () '#t))
                             (_%K101728101746%_
                              (lambda (_%rest2101743%_ _%x2101744%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f101689%_ _%x1101723%_ _%x2101744%_))
                                    (_%lp101698%_
                                     _%rest1101722%_
                                     _%rest2101743%_)
                                    '#f))))
                        (if (pair? _%rest2101724101732%_)
                            (let ((_%hd101729101749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2101724101732%_)))
                                  (_%tl101730101751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2101724101732%_))))
                              (let* ((_%x2101754%_ _%hd101729101749%_)
                                     (_%rest2101756%_ _%tl101730101751%_))
                                (_%K101728101746%_
                                 _%rest2101756%_
                                 _%x2101754%_)))
                            (_%else101726101740%_))))))
              (if (pair? _%rest1101703101711%_)
                  (let ((_%hd101708101761%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1101703101711%_)))
                        (_%tl101709101763%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1101703101711%_))))
                    (let* ((_%x1101766%_ _%hd101708101761%_)
                           (_%rest1101768%_ _%tl101709101763%_))
                      (_%K101707101758%_ _%rest1101768%_ _%x1101766%_)))
                  (_%else101705101719%_)))))))
    (define andmap
      (lambda _g104659_
        (let ((_g104660_ (let () (declare (not safe)) (##length _g104659_))))
          (cond ((let () (declare (not safe)) (##fx= _g104660_ 2))
                 (apply andmap1 _g104659_))
                ((let () (declare (not safe)) (##fx= _g104660_ 3))
                 (apply andmap2 _g104659_))
                ((let () (declare (not safe)) (##fx>= _g104660_ 3))
                 (apply andmap* _g104659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g104659_))))))
    (define andmap*
      (lambda (_%f101657%_ . _%rest101658%_)
        (if (procedure? _%f101657%_)
            (let ((_%f101662%_ _%f101657%_))
              (declare (not safe))
              (##apply __andmap* _%f101662%_ _%rest101658%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f101657%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f101639%_ . _%rest101640%_)
        (let ((_%f101643%_ _%f101639%_))
          (let _%recur101652%_ ((_%rest101654%_ _%rest101640%_))
            (if (__andmap1 pair? _%rest101654%_)
                (if (let ((__tmp104661 (map car _%rest101654%_)))
                      (declare (not safe))
                      (##apply _%f101643%_ __tmp104661))
                    (_%recur101652%_ (map cdr _%rest101654%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f101624%_ _%lst101625%_)
        (if (procedure? _%f101624%_)
            (let ((_%f101629%_ _%f101624%_))
              (__ormap1 _%f101629%_ _%lst101625%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f101624%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f101571%_ _%lst101572%_)
        (let ((_%f101575%_ _%f101571%_))
          (let _%lp101584%_ ((_%rest101586%_ _%lst101572%_))
            (let* ((_%rest101587101595%_ _%rest101586%_)
                   (_%else101589101603%_ (lambda () '#f))
                   (_%K101591101612%_
                    (lambda (_%rest101606%_ _%x101607%_)
                      (let ((_%$e101609%_
                             (let ()
                               (declare (not safe))
                               (_%f101575%_ _%x101607%_))))
                        (if _%$e101609%_
                            _%$e101609%_
                            (_%lp101584%_ _%rest101606%_))))))
              (if (pair? _%rest101587101595%_)
                  (let ((_%hd101592101615%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101587101595%_)))
                        (_%tl101593101617%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101587101595%_))))
                    (let* ((_%x101620%_ _%hd101592101615%_)
                           (_%rest101622%_ _%tl101593101617%_))
                      (_%K101591101612%_ _%rest101622%_ _%x101620%_)))
                  (_%else101589101603%_)))))))
    (define ormap2
      (lambda (_%f101555%_ _%lst1101556%_ _%lst2101557%_)
        (if (procedure? _%f101555%_)
            (let ((_%f101561%_ _%f101555%_))
              (__ormap2 _%f101561%_ _%lst1101556%_ _%lst2101557%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f101555%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f101467%_ _%lst1101468%_ _%lst2101469%_)
        (let ((_%f101472%_ _%f101467%_))
          (let _%lp101481%_ ((_%rest1101483%_ _%lst1101468%_)
                             (_%rest2101484%_ _%lst2101469%_))
            (let* ((_%rest1101485101493%_ _%rest1101483%_)
                   (_%else101487101501%_ (lambda () '#f))
                   (_%K101489101543%_
                    (lambda (_%rest1101504%_ _%x1101505%_)
                      (let* ((_%rest2101506101514%_ _%rest2101484%_)
                             (_%else101508101522%_ (lambda () '#f))
                             (_%K101510101531%_
                              (lambda (_%rest2101525%_ _%x2101526%_)
                                (let ((_%$e101528%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f101472%_
                                          _%x1101505%_
                                          _%x2101526%_))))
                                  (if _%$e101528%_
                                      _%$e101528%_
                                      (_%lp101481%_
                                       _%rest1101504%_
                                       _%rest2101525%_))))))
                        (if (pair? _%rest2101506101514%_)
                            (let ((_%hd101511101534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2101506101514%_)))
                                  (_%tl101512101536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2101506101514%_))))
                              (let* ((_%x2101539%_ _%hd101511101534%_)
                                     (_%rest2101541%_ _%tl101512101536%_))
                                (_%K101510101531%_
                                 _%rest2101541%_
                                 _%x2101539%_)))
                            (_%else101508101522%_))))))
              (if (pair? _%rest1101485101493%_)
                  (let ((_%hd101490101546%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1101485101493%_)))
                        (_%tl101491101548%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1101485101493%_))))
                    (let* ((_%x1101551%_ _%hd101490101546%_)
                           (_%rest1101553%_ _%tl101491101548%_))
                      (_%K101489101543%_ _%rest1101553%_ _%x1101551%_)))
                  (_%else101487101501%_)))))))
    (define ormap
      (lambda _g104662_
        (let ((_g104663_ (let () (declare (not safe)) (##length _g104662_))))
          (cond ((let () (declare (not safe)) (##fx= _g104663_ 2))
                 (apply ormap1 _g104662_))
                ((let () (declare (not safe)) (##fx= _g104663_ 3))
                 (apply ormap2 _g104662_))
                ((let () (declare (not safe)) (##fx>= _g104663_ 3))
                 (apply ormap* _g104662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g104662_))))))
    (define ormap*
      (lambda (_%f101440%_ . _%rest101441%_)
        (if (procedure? _%f101440%_)
            (let ((_%f101445%_ _%f101440%_))
              (declare (not safe))
              (##apply __ormap* _%f101445%_ _%rest101441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f101440%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f101420%_ . _%rest101421%_)
        (let ((_%f101424%_ _%f101420%_))
          (let _%recur101433%_ ((_%rest101435%_ _%rest101421%_))
            (if (__andmap1 pair? _%rest101435%_)
                (let ((_%$e101437%_
                       (let ((__tmp104664 (map car _%rest101435%_)))
                         (declare (not safe))
                         (##apply _%f101424%_ __tmp104664))))
                  (if _%$e101437%_
                      _%$e101437%_
                      (_%recur101433%_ (map cdr _%rest101435%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f101405%_ _%lst101406%_)
        (if (procedure? _%f101405%_)
            (let ((_%f101410%_ _%f101405%_))
              (__filter-map1 _%f101410%_ _%lst101406%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f101405%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f101348%_ _%lst101349%_)
        (let ((_%f101352%_ _%f101348%_))
          (let _%recur101361%_ ((_%rest101363%_ _%lst101349%_))
            (let* ((_%rest101365101373%_ _%rest101363%_)
                   (_%else101367101381%_ (lambda () '()))
                   (_%K101369101393%_
                    (lambda (_%rest101384%_ _%x101385%_)
                      (let ((_%$e101387%_
                             (let ()
                               (declare (not safe))
                               (_%f101352%_ _%x101385%_))))
                        (if _%$e101387%_
                            ((lambda (_%r101390%_)
                               (cons _%r101390%_
                                     (_%recur101361%_ _%rest101384%_)))
                             _%$e101387%_)
                            (_%recur101361%_ _%rest101384%_))))))
              (if (pair? _%rest101365101373%_)
                  (let ((_%hd101370101396%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101365101373%_)))
                        (_%tl101371101398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101365101373%_))))
                    (let* ((_%x101401%_ _%hd101370101396%_)
                           (_%rest101403%_ _%tl101371101398%_))
                      (_%K101369101393%_ _%rest101403%_ _%x101401%_)))
                  (_%else101367101381%_)))))))
    (define filter-map2
      (lambda (_%f101332%_ _%lst1101333%_ _%lst2101334%_)
        (if (procedure? _%f101332%_)
            (let ((_%f101338%_ _%f101332%_))
              (__filter-map2 _%f101338%_ _%lst1101333%_ _%lst2101334%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f101332%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f101240%_ _%lst1101241%_ _%lst2101242%_)
        (let ((_%f101245%_ _%f101240%_))
          (let _%recur101254%_ ((_%rest1101256%_ _%lst1101241%_)
                                (_%rest2101257%_ _%lst2101242%_))
            (let* ((_%rest1101259101267%_ _%rest1101256%_)
                   (_%else101261101275%_ (lambda () '()))
                   (_%K101263101320%_
                    (lambda (_%rest1101278%_ _%x1101279%_)
                      (let* ((_%rest2101280101288%_ _%rest2101257%_)
                             (_%else101282101296%_ (lambda () '()))
                             (_%K101284101308%_
                              (lambda (_%rest2101299%_ _%x2101300%_)
                                (let ((_%$e101302%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f101245%_
                                          _%x1101279%_
                                          _%x2101300%_))))
                                  (if _%$e101302%_
                                      ((lambda (_%r101305%_)
                                         (cons _%r101305%_
                                               (_%recur101254%_
                                                _%rest1101278%_
                                                _%rest2101299%_)))
                                       _%$e101302%_)
                                      (_%recur101254%_
                                       _%rest1101278%_
                                       _%rest2101299%_))))))
                        (if (pair? _%rest2101280101288%_)
                            (let ((_%hd101285101311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2101280101288%_)))
                                  (_%tl101286101313%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2101280101288%_))))
                              (let* ((_%x2101316%_ _%hd101285101311%_)
                                     (_%rest2101318%_ _%tl101286101313%_))
                                (_%K101284101308%_
                                 _%rest2101318%_
                                 _%x2101316%_)))
                            (_%else101282101296%_))))))
              (if (pair? _%rest1101259101267%_)
                  (let ((_%hd101264101323%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1101259101267%_)))
                        (_%tl101265101325%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1101259101267%_))))
                    (let* ((_%x1101328%_ _%hd101264101323%_)
                           (_%rest1101330%_ _%tl101265101325%_))
                      (_%K101263101320%_ _%rest1101330%_ _%x1101328%_)))
                  (_%else101261101275%_)))))))
    (define filter-map
      (lambda _g104665_
        (let ((_g104666_ (let () (declare (not safe)) (##length _g104665_))))
          (cond ((let () (declare (not safe)) (##fx= _g104666_ 2))
                 (apply filter-map1 _g104665_))
                ((let () (declare (not safe)) (##fx= _g104666_ 3))
                 (apply filter-map2 _g104665_))
                ((let () (declare (not safe)) (##fx>= _g104666_ 3))
                 (apply filter-map* _g104665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g104665_))))))
    (define filter-map*
      (lambda (_%f101213%_ . _%rest101214%_)
        (if (procedure? _%f101213%_)
            (let ((_%f101218%_ _%f101213%_))
              (declare (not safe))
              (##apply __filter-map* _%f101218%_ _%rest101214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f101213%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f101189%_ . _%rest101190%_)
        (let ((_%f101193%_ _%f101189%_))
          (let _%recur101202%_ ((_%rest101204%_ _%rest101190%_))
            (if (__andmap1 pair? _%rest101204%_)
                (let ((_%$e101207%_
                       (let ((__tmp104667 (map car _%rest101204%_)))
                         (declare (not safe))
                         (##apply _%f101193%_ __tmp104667))))
                  (if _%$e101207%_
                      ((lambda (_%r101210%_)
                         (cons _%r101210%_
                               (_%recur101202%_ (map cdr _%rest101204%_))))
                       _%$e101207%_)
                      (_%recur101202%_ (map cdr _%rest101204%_))))
                '())))))
    (define agetq__%
      (lambda (_%key101165%_ _%lst101167%_ _%default101169%_)
        (let ((_%$e101172%_
               (if (pair? _%lst101167%_)
                   (assq _%key101165%_ _%lst101167%_)
                   '#f)))
          (if _%$e101172%_
              (cdr _%$e101172%_)
              (if (procedure? _%default101169%_)
                  (_%default101169%_ _%key101165%_)
                  _%default101169%_)))))
    (define agetq__0
      (lambda (_%key101180%_ _%lst101181%_)
        (let ((_%default101183%_ '#f))
          (agetq__% _%key101180%_ _%lst101181%_ _%default101183%_))))
    (define agetq
      (lambda _g104668_
        (let ((_g104669_ (let () (declare (not safe)) (##length _g104668_))))
          (cond ((let () (declare (not safe)) (##fx= _g104669_ 2))
                 (apply agetq__0 _g104668_))
                ((let () (declare (not safe)) (##fx= _g104669_ 3))
                 (apply agetq__% _g104668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g104668_))))))
    (define agetv__%
      (lambda (_%key101140%_ _%lst101142%_ _%default101144%_)
        (let ((_%$e101147%_
               (if (pair? _%lst101142%_)
                   (assv _%key101140%_ _%lst101142%_)
                   '#f)))
          (if _%$e101147%_
              (cdr _%$e101147%_)
              (if (procedure? _%default101144%_)
                  (_%default101144%_ _%key101140%_)
                  _%default101144%_)))))
    (define agetv__0
      (lambda (_%key101155%_ _%lst101156%_)
        (let ((_%default101158%_ '#f))
          (agetv__% _%key101155%_ _%lst101156%_ _%default101158%_))))
    (define agetv
      (lambda _g104670_
        (let ((_g104671_ (let () (declare (not safe)) (##length _g104670_))))
          (cond ((let () (declare (not safe)) (##fx= _g104671_ 2))
                 (apply agetv__0 _g104670_))
                ((let () (declare (not safe)) (##fx= _g104671_ 3))
                 (apply agetv__% _g104670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g104670_))))))
    (define aget__%
      (lambda (_%key101115%_ _%lst101117%_ _%default101119%_)
        (let ((_%$e101122%_
               (if (pair? _%lst101117%_)
                   (assoc _%key101115%_ _%lst101117%_)
                   '#f)))
          (if _%$e101122%_
              (cdr _%$e101122%_)
              (if (procedure? _%default101119%_)
                  (_%default101119%_ _%key101115%_)
                  _%default101119%_)))))
    (define aget__0
      (lambda (_%key101130%_ _%lst101131%_)
        (let ((_%default101133%_ '#f))
          (aget__% _%key101130%_ _%lst101131%_ _%default101133%_))))
    (define aget
      (lambda _g104672_
        (let ((_g104673_ (let () (declare (not safe)) (##length _g104672_))))
          (cond ((let () (declare (not safe)) (##fx= _g104673_ 2))
                 (apply aget__0 _g104672_))
                ((let () (declare (not safe)) (##fx= _g104673_ 3))
                 (apply aget__% _g104672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g104672_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key101044%_ _%lst101046%_ _%default101048%_)
        (let _%lp101051%_ ((_%rest101054%_ _%lst101046%_))
          (let* ((_%rest101056101066%_ _%rest101054%_)
                 (_%else101058101074%_
                  (lambda ()
                    (if (procedure? _%default101048%_)
                        (_%default101048%_ _%key101044%_)
                        _%default101048%_)))
                 (_%K101060101083%_
                  (lambda (_%rest101077%_ _%v101078%_ _%k101080%_)
                    (if (eq? _%k101080%_ _%key101044%_)
                        _%v101078%_
                        (_%lp101051%_ _%rest101077%_)))))
            (if (pair? _%rest101056101066%_)
                (let ((_%hd101061101086%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest101056101066%_)))
                      (_%tl101062101088%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest101056101066%_))))
                  (let ((_%k101091%_ _%hd101061101086%_))
                    (if (pair? _%tl101062101088%_)
                        (let ((_%hd101063101093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl101062101088%_)))
                              (_%tl101064101095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl101062101088%_))))
                          (let* ((_%v101098%_ _%hd101063101093%_)
                                 (_%rest101100%_ _%tl101064101095%_))
                            (_%K101060101083%_
                             _%rest101100%_
                             _%v101098%_
                             _%k101091%_)))
                        (_%else101058101074%_))))
                (_%else101058101074%_))))))
    (define pgetq__0
      (lambda (_%key101105%_ _%lst101106%_)
        (let ((_%default101108%_ '#f))
          (pgetq__% _%key101105%_ _%lst101106%_ _%default101108%_))))
    (define pgetq
      (lambda _g104674_
        (let ((_g104675_ (let () (declare (not safe)) (##length _g104674_))))
          (cond ((let () (declare (not safe)) (##fx= _g104675_ 2))
                 (apply pgetq__0 _g104674_))
                ((let () (declare (not safe)) (##fx= _g104675_ 3))
                 (apply pgetq__% _g104674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g104674_))))))
    (define pgetv__%
      (lambda (_%key100973%_ _%lst100975%_ _%default100977%_)
        (let _%lp100980%_ ((_%rest100983%_ _%lst100975%_))
          (let* ((_%rest100985100995%_ _%rest100983%_)
                 (_%else100987101003%_
                  (lambda ()
                    (if (procedure? _%default100977%_)
                        (_%default100977%_ _%key100973%_)
                        _%default100977%_)))
                 (_%K100989101012%_
                  (lambda (_%rest101006%_ _%v101007%_ _%k101009%_)
                    (if (eqv? _%k101009%_ _%key100973%_)
                        _%v101007%_
                        (_%lp100980%_ _%rest101006%_)))))
            (if (pair? _%rest100985100995%_)
                (let ((_%hd100990101015%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100985100995%_)))
                      (_%tl100991101017%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100985100995%_))))
                  (let ((_%k101020%_ _%hd100990101015%_))
                    (if (pair? _%tl100991101017%_)
                        (let ((_%hd100992101022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl100991101017%_)))
                              (_%tl100993101024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl100991101017%_))))
                          (let* ((_%v101027%_ _%hd100992101022%_)
                                 (_%rest101029%_ _%tl100993101024%_))
                            (_%K100989101012%_
                             _%rest101029%_
                             _%v101027%_
                             _%k101020%_)))
                        (_%else100987101003%_))))
                (_%else100987101003%_))))))
    (define pgetv__0
      (lambda (_%key101034%_ _%lst101035%_)
        (let ((_%default101037%_ '#f))
          (pgetv__% _%key101034%_ _%lst101035%_ _%default101037%_))))
    (define pgetv
      (lambda _g104676_
        (let ((_g104677_ (let () (declare (not safe)) (##length _g104676_))))
          (cond ((let () (declare (not safe)) (##fx= _g104677_ 2))
                 (apply pgetv__0 _g104676_))
                ((let () (declare (not safe)) (##fx= _g104677_ 3))
                 (apply pgetv__% _g104676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g104676_))))))
    (define pget__%
      (lambda (_%key100902%_ _%lst100904%_ _%default100906%_)
        (let _%lp100909%_ ((_%rest100912%_ _%lst100904%_))
          (let* ((_%rest100914100924%_ _%rest100912%_)
                 (_%else100916100932%_
                  (lambda ()
                    (if (procedure? _%default100906%_)
                        (_%default100906%_ _%key100902%_)
                        _%default100906%_)))
                 (_%K100918100941%_
                  (lambda (_%rest100935%_ _%v100936%_ _%k100938%_)
                    (if (equal? _%k100938%_ _%key100902%_)
                        _%v100936%_
                        (_%lp100909%_ _%rest100935%_)))))
            (if (pair? _%rest100914100924%_)
                (let ((_%hd100919100944%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100914100924%_)))
                      (_%tl100920100946%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100914100924%_))))
                  (let ((_%k100949%_ _%hd100919100944%_))
                    (if (pair? _%tl100920100946%_)
                        (let ((_%hd100921100951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl100920100946%_)))
                              (_%tl100922100953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl100920100946%_))))
                          (let* ((_%v100956%_ _%hd100921100951%_)
                                 (_%rest100958%_ _%tl100922100953%_))
                            (_%K100918100941%_
                             _%rest100958%_
                             _%v100956%_
                             _%k100949%_)))
                        (_%else100916100932%_))))
                (_%else100916100932%_))))))
    (define pget__0
      (lambda (_%key100963%_ _%lst100964%_)
        (let ((_%default100966%_ '#f))
          (pget__% _%key100963%_ _%lst100964%_ _%default100966%_))))
    (define pget
      (lambda _g104678_
        (let ((_g104679_ (let () (declare (not safe)) (##length _g104678_))))
          (cond ((let () (declare (not safe)) (##fx= _g104679_ 2))
                 (apply pget__0 _g104678_))
                ((let () (declare (not safe)) (##fx= _g104679_ 3))
                 (apply pget__% _g104678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g104678_))))))
    (define find
      (lambda (_%pred100886%_ _%lst100887%_)
        (if (procedure? _%pred100886%_)
            (let ((_%pred100891%_ _%pred100886%_))
              (__find _%pred100891%_ _%lst100887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred100886%_)
              '#!void))))
    (define __find
      (lambda (_%pred100869%_ _%lst100870%_)
        (let* ((_%pred100873%_ _%pred100869%_)
               (_%$e100882%_ (__memf _%pred100873%_ _%lst100870%_)))
          (if _%$e100882%_
              (let () (declare (not safe)) (##car _%$e100882%_))
              '#f))))
    (define memf
      (lambda (_%proc100854%_ _%lst100855%_)
        (if (procedure? _%proc100854%_)
            (let ((_%proc100859%_ _%proc100854%_))
              (__memf _%proc100859%_ _%lst100855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc100854%_)
              '#!void))))
    (define __memf
      (lambda (_%proc100804%_ _%lst100805%_)
        (let ((_%proc100808%_ _%proc100804%_))
          (let _%lp100817%_ ((_%rest100819%_ _%lst100805%_))
            (let* ((_%rest100820100828%_ _%rest100819%_)
                   (_%else100822100836%_ (lambda () '#f))
                   (_%K100824100842%_
                    (lambda (_%tl100839%_ _%hd100840%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc100808%_ _%hd100840%_))
                          _%rest100819%_
                          (_%lp100817%_ _%tl100839%_)))))
              (if (pair? _%rest100820100828%_)
                  (let ((_%hd100825100845%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100820100828%_)))
                        (_%tl100826100847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100820100828%_))))
                    (let* ((_%hd100850%_ _%hd100825100845%_)
                           (_%tl100852%_ _%tl100826100847%_))
                      (_%K100824100842%_ _%tl100852%_ _%hd100850%_)))
                  (_%else100822100836%_)))))))
    (define remove1
      (lambda (_%el100757%_ _%lst100759%_)
        (let _%lp100762%_ ((_%rest100765%_ _%lst100759%_) (_%r100767%_ '()))
          (let* ((_%rest100769100777%_ _%rest100765%_)
                 (_%else100771100785%_ (lambda () _%lst100759%_))
                 (_%K100773100792%_
                  (lambda (_%rest100788%_ _%hd100789%_)
                    (if (equal? _%el100757%_ _%hd100789%_)
                        (__foldl1 cons _%rest100788%_ _%r100767%_)
                        (_%lp100762%_
                         _%rest100788%_
                         (cons _%hd100789%_ _%r100767%_))))))
            (if (pair? _%rest100769100777%_)
                (let ((_%hd100774100795%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100769100777%_)))
                      (_%tl100775100797%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100769100777%_))))
                  (let* ((_%hd100800%_ _%hd100774100795%_)
                         (_%rest100802%_ _%tl100775100797%_))
                    (_%K100773100792%_ _%rest100802%_ _%hd100800%_)))
                (_%else100771100785%_))))))
    (define remv1
      (lambda (_%el100710%_ _%lst100712%_)
        (let _%lp100715%_ ((_%rest100718%_ _%lst100712%_) (_%r100720%_ '()))
          (let* ((_%rest100722100730%_ _%rest100718%_)
                 (_%else100724100738%_ (lambda () _%lst100712%_))
                 (_%K100726100745%_
                  (lambda (_%rest100741%_ _%hd100742%_)
                    (if (eqv? _%el100710%_ _%hd100742%_)
                        (__foldl1 cons _%rest100741%_ _%r100720%_)
                        (_%lp100715%_
                         _%rest100741%_
                         (cons _%hd100742%_ _%r100720%_))))))
            (if (pair? _%rest100722100730%_)
                (let ((_%hd100727100748%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100722100730%_)))
                      (_%tl100728100750%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100722100730%_))))
                  (let* ((_%hd100753%_ _%hd100727100748%_)
                         (_%rest100755%_ _%tl100728100750%_))
                    (_%K100726100745%_ _%rest100755%_ _%hd100753%_)))
                (_%else100724100738%_))))))
    (define remq1
      (lambda (_%el100663%_ _%lst100665%_)
        (let _%lp100668%_ ((_%rest100671%_ _%lst100665%_) (_%r100673%_ '()))
          (let* ((_%rest100675100683%_ _%rest100671%_)
                 (_%else100677100691%_ (lambda () _%lst100665%_))
                 (_%K100679100698%_
                  (lambda (_%rest100694%_ _%hd100695%_)
                    (if (eq? _%el100663%_ _%hd100695%_)
                        (__foldl1 cons _%rest100694%_ _%r100673%_)
                        (_%lp100668%_
                         _%rest100694%_
                         (cons _%hd100695%_ _%r100673%_))))))
            (if (pair? _%rest100675100683%_)
                (let ((_%hd100680100701%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100675100683%_)))
                      (_%tl100681100703%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100675100683%_))))
                  (let* ((_%hd100706%_ _%hd100680100701%_)
                         (_%rest100708%_ _%tl100681100703%_))
                    (_%K100679100698%_ _%rest100708%_ _%hd100706%_)))
                (_%else100677100691%_))))))
    (define remf
      (lambda (_%proc100648%_ _%lst100649%_)
        (if (procedure? _%proc100648%_)
            (let ((_%proc100653%_ _%proc100648%_))
              (__remf _%proc100653%_ _%lst100649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc100648%_)
              '#!void))))
    (define __remf
      (lambda (_%proc100597%_ _%lst100598%_)
        (let ((_%proc100601%_ _%proc100597%_))
          (let _%lp100610%_ ((_%rest100612%_ _%lst100598%_) (_%r100613%_ '()))
            (let* ((_%rest100614100622%_ _%rest100612%_)
                   (_%else100616100630%_ (lambda () _%lst100598%_))
                   (_%K100618100636%_
                    (lambda (_%rest100633%_ _%hd100634%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc100601%_ _%hd100634%_))
                          (__foldl1 cons _%rest100633%_ _%r100613%_)
                          (_%lp100610%_
                           _%rest100633%_
                           (cons _%hd100634%_ _%r100613%_))))))
              (if (pair? _%rest100614100622%_)
                  (let ((_%hd100619100639%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100614100622%_)))
                        (_%tl100620100641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100614100622%_))))
                    (let* ((_%hd100644%_ _%hd100619100639%_)
                           (_%rest100646%_ _%tl100620100641%_))
                      (_%K100618100636%_ _%rest100646%_ _%hd100644%_)))
                  (_%else100616100630%_)))))))
    (define 1+
      (lambda (_%x100583%_)
        (if (number? _%x100583%_)
            (let ((_%x100587%_ _%x100583%_)) (__1+ _%x100587%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x100583%_)
              '#!void))))
    (define __1+
      (lambda (_%x100571%_)
        (let ((_%x100574%_ _%x100571%_)) (+ _%x100574%_ '1))))
    (define 1-
      (lambda (_%x100557%_)
        (if (number? _%x100557%_)
            (let ((_%x100561%_ _%x100557%_)) (__1- _%x100561%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x100557%_)
              '#!void))))
    (define __1-
      (lambda (_%x100545%_)
        (let ((_%x100548%_ _%x100545%_)) (- _%x100548%_ '1))))
    (define fx1+
      (lambda (_%x100531%_)
        (if (fixnum? _%x100531%_)
            (let ((_%x100535%_ _%x100531%_)) (__fx1+ _%x100535%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x100531%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x100519%_)
        (let ((_%x100522%_ _%x100519%_))
          (declare (not safe))
          (##fx+ _%x100522%_ '1))))
    (define fx1-
      (lambda (_%x100505%_)
        (if (fixnum? _%x100505%_)
            (let ((_%x100509%_ _%x100505%_)) (__fx1- _%x100509%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x100505%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x100493%_)
        (let ((_%x100496%_ _%x100493%_))
          (declare (not safe))
          (##fx- _%x100496%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x100490%_)
        (if (fixnum? _%x100490%_)
            (let () (declare (not safe)) (##fx>= _%x100490%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x100487%_)
        (if (fixnum? _%x100487%_)
            (let () (declare (not safe)) (##fx> _%x100487%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x100484%_)
        (let () (declare (not safe)) (##fx= _%x100484%_ '0))))
    (define fx<0?
      (lambda (_%x100481%_)
        (if (fixnum? _%x100481%_)
            (let () (declare (not safe)) (##fx< _%x100481%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x100478%_)
        (if (fixnum? _%x100478%_)
            (let () (declare (not safe)) (##fx<= _%x100478%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x100475%_)
        (if (symbol? _%x100475%_) (not (uninterned-symbol? _%x100475%_)) '#f)))
    (define display-as-string
      (lambda (_%x100460%_ _%port100461%_)
        (if (output-port? _%port100461%_)
            (let ((_%port100465%_ _%port100461%_))
              (__display-as-string _%x100460%_ _%port100465%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port100461%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x100417%_ _%port100418%_)
        (let ((_%port100421%_ _%port100418%_))
          (if (or (string? _%x100417%_)
                  (symbol? _%x100417%_)
                  (keyword? _%x100417%_)
                  (number? _%x100417%_)
                  (char? _%x100417%_))
              (display _%x100417%_ _%port100421%_)
              (if (pair? _%x100417%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x100417%_))
                     _%port100421%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x100417%_))
                     _%port100421%_))
                  (if (vector? _%x100417%_)
                      (vector-for-each
                       (lambda (_%g100444100446%_)
                         (__display-as-string
                          _%g100444100446%_
                          _%port100421%_))
                       _%x100417%_)
                      (if (or (null? _%x100417%_)
                              (eq? _%x100417%_ '#!void)
                              (eof-object? _%x100417%_)
                              (boolean? _%x100417%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x100417%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x100400%_)
        (if (string? _%x100400%_)
            _%x100400%_
            (if (symbol? _%x100400%_)
                (let () (declare (not safe)) (##symbol->string _%x100400%_))
                (if (keyword? _%x100400%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x100400%_))
                    (if (number? _%x100400%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x100400%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g100406100408%_)
                           (__display-as-string
                            _%x100400%_
                            _%g100406100408%_)))))))))
    (define as-string__1
      (lambda _%args100411%_
        (call-with-output-string
         '()
         (lambda (_%g100412100414%_)
           (__display-as-string _%args100411%_ _%g100412100414%_)))))
    (define as-string
      (lambda _g104680_
        (let ((_g104681_ (let () (declare (not safe)) (##length _g104680_))))
          (cond ((let () (declare (not safe)) (##fx= _g104681_ 1))
                 (apply as-string__0 _g104680_))
                (#t
                 (apply (lambda _%args100411%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args100411%_)))
                        _g104680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g104680_))))))
    (define make-symbol__0
      (lambda (_%x100396%_)
        (if (interned-symbol? _%x100396%_)
            _%x100396%_
            (let ((__tmp104682 (as-string__0 _%x100396%_)))
              (declare (not safe))
              (##string->symbol __tmp104682)))))
    (define make-symbol__1
      (lambda _%args100398%_
        (let ((__tmp104683
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args100398%_))))
          (declare (not safe))
          (##string->symbol __tmp104683))))
    (define make-symbol
      (lambda _g104684_
        (let ((_g104685_ (let () (declare (not safe)) (##length _g104684_))))
          (cond ((let () (declare (not safe)) (##fx= _g104685_ 1))
                 (apply make-symbol__0 _g104684_))
                (#t
                 (apply (lambda _%args100398%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args100398%_)))
                        _g104684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g104684_))))))
    (define make-keyword__0
      (lambda (_%x100392%_)
        (if (interned-keyword? _%x100392%_)
            _%x100392%_
            (let ((__tmp104686 (as-string__0 _%x100392%_)))
              (declare (not safe))
              (##string->keyword __tmp104686)))))
    (define make-keyword__1
      (lambda _%args100394%_
        (let ((__tmp104687
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args100394%_))))
          (declare (not safe))
          (##string->keyword __tmp104687))))
    (define make-keyword
      (lambda _g104688_
        (let ((_g104689_ (let () (declare (not safe)) (##length _g104688_))))
          (cond ((let () (declare (not safe)) (##fx= _g104689_ 1))
                 (apply make-keyword__0 _g104688_))
                (#t
                 (apply (lambda _%args100394%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args100394%_)))
                        _g104688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g104688_))))))
    (define interned-keyword?
      (lambda (_%x100389%_)
        (if (keyword? _%x100389%_)
            (not (uninterned-keyword? _%x100389%_))
            '#f)))
    (define symbol->keyword
      (lambda (_%sym100375%_)
        (if (symbol? _%sym100375%_)
            (let ((_%sym100379%_ _%sym100375%_))
              (__symbol->keyword _%sym100379%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym100375%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym100363%_)
        (let ((_%sym100366%_ _%sym100363%_))
          (if (uninterned-symbol? _%sym100366%_)
              (let ((__tmp104690
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym100366%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp104690))
              (let ((__tmp104691
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym100366%_))))
                (declare (not safe))
                (##string->keyword __tmp104691))))))
    (define keyword->symbol
      (lambda (_%sym100349%_)
        (if (keyword? _%sym100349%_)
            (let ((_%sym100353%_ _%sym100349%_))
              (__keyword->symbol _%sym100353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym100349%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym100337%_)
        (let ((_%sym100340%_ _%sym100337%_))
          (if (uninterned-keyword? _%sym100340%_)
              (let ((__tmp104692
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym100340%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp104692))
              (let ((__tmp104693
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym100340%_))))
                (declare (not safe))
                (##string->symbol __tmp104693))))))
    (define bytes->string__%
      (lambda (_%bstr100302%_ _%enc100303%_)
        (if (u8vector? _%bstr100302%_)
            (let ((_%bstr100307%_ _%bstr100302%_))
              (if (symbol? _%enc100303%_)
                  (let ((_%enc100317%_ _%enc100303%_))
                    (__bytes->string__% _%bstr100307%_ _%enc100317%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc100303%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr100302%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr100330%_)
        (let ((_%enc100332%_ 'UTF-8))
          (bytes->string__% _%bstr100330%_ _%enc100332%_))))
    (define bytes->string
      (lambda _g104694_
        (let ((_g104695_ (let () (declare (not safe)) (##length _g104694_))))
          (cond ((let () (declare (not safe)) (##fx= _g104695_ 1))
                 (apply bytes->string__0 _g104694_))
                ((let () (declare (not safe)) (##fx= _g104695_ 2))
                 (apply bytes->string__% _g104694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g104694_))))))
    (define __bytes->string__%
      (lambda (_%bstr100261%_ _%enc100262%_)
        (let* ((_%bstr100265%_ _%bstr100261%_) (_%enc100273%_ _%enc100262%_))
          (if (eq? _%enc100273%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr100265%_))
              (let* ((_%in100282%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc100273%_
                                   (cons 'init: (cons _%bstr100265%_ '()))))))
                     (_%len100284%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr100265%_)))
                     (_%out100286%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len100284%_)))
                     (_%n100288%_
                      (read-substring
                       _%out100286%_
                       '0
                       _%len100284%_
                       _%in100282%_)))
                (string-shrink! _%out100286%_ _%n100288%_)
                _%out100286%_)))))
    (define __bytes->string__0
      (lambda (_%bstr100294%_)
        (let ((_%enc100296%_ 'UTF-8))
          (__bytes->string__% _%bstr100294%_ _%enc100296%_))))
    (define __bytes->string
      (lambda _g104696_
        (let ((_g104697_ (let () (declare (not safe)) (##length _g104696_))))
          (cond ((let () (declare (not safe)) (##fx= _g104697_ 1))
                 (apply __bytes->string__0 _g104696_))
                ((let () (declare (not safe)) (##fx= _g104697_ 2))
                 (apply __bytes->string__% _g104696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g104696_))))))
    (define string->bytes__%
      (lambda (_%str100225%_ _%enc100226%_)
        (if (string? _%str100225%_)
            (let ((_%str100230%_ _%str100225%_))
              (if (symbol? _%enc100226%_)
                  (let ((_%enc100240%_ _%enc100226%_))
                    (__string->bytes__% _%str100230%_ _%enc100240%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc100226%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str100225%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str100253%_)
        (let ((_%enc100255%_ 'UTF-8))
          (string->bytes__% _%str100253%_ _%enc100255%_))))
    (define string->bytes
      (lambda _g104698_
        (let ((_g104699_ (let () (declare (not safe)) (##length _g104698_))))
          (cond ((let () (declare (not safe)) (##fx= _g104699_ 1))
                 (apply string->bytes__0 _g104698_))
                ((let () (declare (not safe)) (##fx= _g104699_ 2))
                 (apply string->bytes__% _g104698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g104698_))))))
    (define __string->bytes__%
      (lambda (_%str100193%_ _%enc100194%_)
        (let* ((_%str100197%_ _%str100193%_) (_%enc100205%_ _%enc100194%_))
          (if (eq? _%enc100205%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str100197%_))
              (__substring->bytes__%
               _%str100197%_
               '0
               (let () (declare (not safe)) (##string-length _%str100197%_))
               _%enc100205%_)))))
    (define __string->bytes__0
      (lambda (_%str100217%_)
        (let ((_%enc100219%_ 'UTF-8))
          (__string->bytes__% _%str100217%_ _%enc100219%_))))
    (define __string->bytes
      (lambda _g104700_
        (let ((_g104701_ (let () (declare (not safe)) (##length _g104700_))))
          (cond ((let () (declare (not safe)) (##fx= _g104701_ 1))
                 (apply __string->bytes__0 _g104700_))
                ((let () (declare (not safe)) (##fx= _g104701_ 2))
                 (apply __string->bytes__% _g104700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g104700_))))))
    (define substring->bytes__%
      (lambda (_%str100141%_ _%start100142%_ _%end100143%_ _%enc100144%_)
        (if (string? _%str100141%_)
            (let ((_%str100148%_ _%str100141%_))
              (if (nonnegative-fixnum? _%start100142%_)
                  (let ((_%start100158%_ _%start100142%_))
                    (if (nonnegative-fixnum? _%end100143%_)
                        (let ((_%end100168%_ _%end100143%_))
                          (__substring->bytes__%
                           _%str100148%_
                           _%start100158%_
                           _%end100168%_
                           _%enc100144%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end100143%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start100142%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str100141%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str100181%_ _%start100182%_ _%end100183%_)
        (let ((_%enc100185%_ 'UTF-8))
          (substring->bytes__%
           _%str100181%_
           _%start100182%_
           _%end100183%_
           _%enc100185%_))))
    (define substring->bytes
      (lambda _g104702_
        (let ((_g104703_ (let () (declare (not safe)) (##length _g104702_))))
          (cond ((let () (declare (not safe)) (##fx= _g104703_ 3))
                 (apply substring->bytes__0 _g104702_))
                ((let () (declare (not safe)) (##fx= _g104703_ 4))
                 (apply substring->bytes__% _g104702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g104702_))))))
    (define __substring->bytes__%
      (lambda (_%str100093%_ _%start100094%_ _%end100095%_ _%enc100096%_)
        (let* ((_%str100099%_ _%str100093%_)
               (_%start100107%_ _%start100094%_)
               (_%end100115%_ _%end100095%_))
          (if (eq? _%enc100096%_ 'UTF-8)
              (string->utf8 _%str100099%_ _%start100107%_ _%end100115%_)
              (let ((_%out100124%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc100096%_ '())))))
                (write-substring
                 _%str100099%_
                 _%start100107%_
                 _%end100115%_
                 _%out100124%_)
                (get-output-u8vector _%out100124%_))))))
    (define __substring->bytes__0
      (lambda (_%str100129%_ _%start100130%_ _%end100131%_)
        (let ((_%enc100133%_ 'UTF-8))
          (__substring->bytes__%
           _%str100129%_
           _%start100130%_
           _%end100131%_
           _%enc100133%_))))
    (define __substring->bytes
      (lambda _g104704_
        (let ((_g104705_ (let () (declare (not safe)) (##length _g104704_))))
          (cond ((let () (declare (not safe)) (##fx= _g104705_ 3))
                 (apply __substring->bytes__0 _g104704_))
                ((let () (declare (not safe)) (##fx= _g104705_ 4))
                 (apply __substring->bytes__% _g104704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g104704_))))))
    (define string-empty?
      (lambda (_%str100078%_)
        (if (string? _%str100078%_)
            (let ((_%str100082%_ _%str100078%_))
              (__string-empty? _%str100082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str100078%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str100066%_)
        (let* ((_%str100069%_ _%str100066%_)
               (__tmp104706
                (let () (declare (not safe)) (##string-length _%str100069%_))))
          (declare (not safe))
          (##fxzero? __tmp104706))))
    (define string-index__%
      (lambda (_%str100018%_ _%char100019%_ _%start100020%_)
        (if (string? _%str100018%_)
            (let ((_%str100024%_ _%str100018%_))
              (if (char? _%char100019%_)
                  (let ((_%char100034%_ _%char100019%_))
                    (if (nonnegative-fixnum? _%start100020%_)
                        (let ((_%start100044%_ _%start100020%_))
                          (__string-index__%
                           _%str100024%_
                           _%char100034%_
                           _%start100044%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start100020%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char100019%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str100018%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str100057%_ _%char100058%_)
        (let ((_%start100060%_ '0))
          (string-index__% _%str100057%_ _%char100058%_ _%start100060%_))))
    (define string-index
      (lambda _g104707_
        (let ((_g104708_ (let () (declare (not safe)) (##length _g104707_))))
          (cond ((let () (declare (not safe)) (##fx= _g104708_ 2))
                 (apply string-index__0 _g104707_))
                ((let () (declare (not safe)) (##fx= _g104708_ 3))
                 (apply string-index__% _g104707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g104707_))))))
    (define __string-index__%
      (lambda (_%str99957%_ _%char99958%_ _%start99959%_)
        (let* ((_%str99962%_ _%str99957%_)
               (_%char99970%_ _%char99958%_)
               (_%start99978%_ _%start99959%_)
               (_%len99987%_
                (let () (declare (not safe)) (##string-length _%str99962%_))))
          (let _%lp99989%_ ((_%k99991%_ _%start99978%_))
            (let ((_%k99993%_ _%k99991%_))
              (if (let () (declare (not safe)) (##fx< _%k99993%_ _%len99987%_))
                  (if (eq? _%char99970%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str99962%_ _%k99993%_)))
                      _%k99993%_
                      (_%lp99989%_
                       (let () (declare (not safe)) (##fx+ _%k99993%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str100008%_ _%char100009%_)
        (let ((_%start100011%_ '0))
          (__string-index__% _%str100008%_ _%char100009%_ _%start100011%_))))
    (define __string-index
      (lambda _g104709_
        (let ((_g104710_ (let () (declare (not safe)) (##length _g104709_))))
          (cond ((let () (declare (not safe)) (##fx= _g104710_ 2))
                 (apply __string-index__0 _g104709_))
                ((let () (declare (not safe)) (##fx= _g104710_ 3))
                 (apply __string-index__% _g104709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g104709_))))))
    (define string-rindex__%
      (lambda (_%str99918%_ _%char99919%_ _%start99920%_)
        (if (string? _%str99918%_)
            (let ((_%str99924%_ _%str99918%_))
              (if (char? _%char99919%_)
                  (let ((_%char99934%_ _%char99919%_))
                    (__string-rindex__%
                     _%str99924%_
                     _%char99934%_
                     _%start99920%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char99919%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str99918%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str99947%_ _%char99948%_)
        (let ((_%start99950%_ '#f))
          (string-rindex__% _%str99947%_ _%char99948%_ _%start99950%_))))
    (define string-rindex
      (lambda _g104711_
        (let ((_g104712_ (let () (declare (not safe)) (##length _g104711_))))
          (cond ((let () (declare (not safe)) (##fx= _g104712_ 2))
                 (apply string-rindex__0 _g104711_))
                ((let () (declare (not safe)) (##fx= _g104712_ 3))
                 (apply string-rindex__% _g104711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g104711_))))))
    (define __string-rindex__%
      (lambda (_%str99860%_ _%char99861%_ _%start99862%_)
        (let* ((_%str99865%_ _%str99860%_)
               (_%char99873%_ _%char99861%_)
               (_%len99882%_
                (let () (declare (not safe)) (##string-length _%str99865%_)))
               (_%start99884%_
                (if (fixnum? _%start99862%_)
                    _%start99862%_
                    (let () (declare (not safe)) (##fx- _%len99882%_ '1)))))
          (let _%lp99887%_ ((_%k99889%_ _%start99884%_))
            (let ((_%k99891%_ _%k99889%_))
              (if (let () (declare (not safe)) (##fx>= _%k99891%_ '0))
                  (if (eq? _%char99873%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str99865%_ _%k99891%_)))
                      _%k99891%_
                      (_%lp99887%_
                       (let () (declare (not safe)) (##fx- _%k99891%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str99908%_ _%char99909%_)
        (let ((_%start99911%_ '#f))
          (__string-rindex__% _%str99908%_ _%char99909%_ _%start99911%_))))
    (define __string-rindex
      (lambda _g104713_
        (let ((_g104714_ (let () (declare (not safe)) (##length _g104713_))))
          (cond ((let () (declare (not safe)) (##fx= _g104714_ 2))
                 (apply __string-rindex__0 _g104713_))
                ((let () (declare (not safe)) (##fx= _g104714_ 3))
                 (apply __string-rindex__% _g104713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g104713_))))))
    (define string-split
      (lambda (_%str99834%_ _%char99835%_)
        (if (string? _%str99834%_)
            (let ((_%str99839%_ _%str99834%_))
              (if (char? _%char99835%_)
                  (let ((_%char99849%_ _%char99835%_))
                    (__string-split _%str99839%_ _%char99849%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char99835%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str99834%_)
              '#!void))))
    (define __string-split
      (lambda (_%str99775%_ _%char99776%_)
        (let* ((_%str99779%_ _%str99775%_)
               (_%char99787%_ _%char99776%_)
               (_%len99796%_
                (let () (declare (not safe)) (##string-length _%str99779%_))))
          (let _%lp99798%_ ((_%start99800%_ '0) (_%r99801%_ '()))
            (let* ((_%start99804%_ _%start99800%_)
                   (_%$e99817%_
                    (__string-index__%
                     _%str99779%_
                     _%char99787%_
                     _%start99804%_)))
              (if _%$e99817%_
                  ((lambda (_%end99820%_)
                     (let ((_%end99822%_ _%end99820%_))
                       (_%lp99798%_
                        (let () (declare (not safe)) (##fx+ _%end99822%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str99779%_
                                 _%start99804%_
                                 _%end99822%_))
                              _%r99801%_))))
                   _%$e99817%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start99804%_ _%len99796%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str99779%_
                                _%start99804%_
                                _%len99796%_)))
                       _%r99801%_)
                      (reverse! _%r99801%_))))))))
    (define string-join
      (lambda (_%strs99625%_ _%join99626%_)
        (letrec ((_%join-length99629%_
                  (lambda (_%strs99713%_ _%jlen99714%_)
                    (let _%lp99716%_ ((_%rest99718%_ _%strs99713%_)
                                      (_%len99719%_ '0))
                      (let* ((_%len99721%_ _%len99719%_)
                             (_%rest9972999737%_ _%rest99718%_)
                             (_%else9973199745%_ (lambda () '0))
                             (_%K9973399763%_
                              (lambda (_%rest99748%_ _%hd99749%_)
                                (if (string? _%hd99749%_)
                                    (let ((_%hd99751%_ _%hd99749%_))
                                      (if (pair? _%rest99748%_)
                                          (_%lp99716%_
                                           _%rest99748%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd99751%_))
                                                _%jlen99714%_
                                                _%len99721%_))
                                          (let ((__tmp104715
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd99751%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp104715 _%len99721%_))))
                                    (error '"expected string" _%hd99749%_)))))
                        (if (pair? _%rest9972999737%_)
                            (let ((_%hd9973499766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9972999737%_)))
                                  (_%tl9973599768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9972999737%_))))
                              (let* ((_%hd99771%_ _%hd9973499766%_)
                                     (_%rest99773%_ _%tl9973599768%_))
                                (_%K9973399763%_ _%rest99773%_ _%hd99771%_)))
                            (_%else9973199745%_)))))))
          (let* ((_%join99634%_
                  (if (char? _%join99626%_)
                      (let () (declare (not safe)) (##string _%join99626%_))
                      (if (string? _%join99626%_)
                          _%join99626%_
                          (error '"expected string or char" _%join99626%_))))
                 (_%jlen99636%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join99634%_)))
                 (_%olen99638%_
                  (_%join-length99629%_ _%strs99625%_ _%jlen99636%_))
                 (_%ostr99640%_
                  (let () (declare (not safe)) (##make-string _%olen99638%_))))
            (let _%lp99643%_ ((_%rest99645%_ _%strs99625%_) (_%k99646%_ '0))
              (let* ((_%k99649%_ _%k99646%_)
                     (_%rest9966599673%_ _%rest99645%_)
                     (_%else9966799681%_ (lambda () '""))
                     (_%K9966999701%_
                      (lambda (_%rest99684%_ _%hd99685%_)
                        (let* ((_%hd99687%_ _%hd99685%_)
                               (_%hdlen99699%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd99687%_))))
                          (if (pair? _%rest99684%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd99687%_
                                   '0
                                   _%hdlen99699%_
                                   _%ostr99640%_
                                   _%k99649%_))
                                (let ((__tmp104716
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k99649%_ _%hdlen99699%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join99634%_
                                   '0
                                   _%jlen99636%_
                                   _%ostr99640%_
                                   __tmp104716))
                                (_%lp99643%_
                                 _%rest99684%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k99649%_
                                          _%hdlen99699%_
                                          _%jlen99636%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd99687%_
                                   '0
                                   _%hdlen99699%_
                                   _%ostr99640%_
                                   _%k99649%_))
                                _%ostr99640%_))))))
                (if (pair? _%rest9966599673%_)
                    (let ((_%hd9967099704%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9966599673%_)))
                          (_%tl9967199706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9966599673%_))))
                      (let* ((_%hd99709%_ _%hd9967099704%_)
                             (_%rest99711%_ _%tl9967199706%_))
                        (_%K9966999701%_ _%rest99711%_ _%hd99709%_)))
                    (_%else9966799681%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes99551%_ _%port99552%_ _%start99553%_ _%end99554%_)
        (if (u8vector? _%bytes99551%_)
            (let ((_%bytes99558%_ _%bytes99551%_))
              (if (input-port? _%port99552%_)
                  (let ((_%port99568%_ _%port99552%_))
                    (if ((lambda (_%o99577%_)
                           (and (fixnum? _%o99577%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o99577%_ '0))
                                (let ((__tmp104717
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes99558%_))))
                                  (declare (not safe))
                                  (##fx< _%o99577%_ __tmp104717))))
                         _%start99553%_)
                        (let ((_%start99581%_ _%start99553%_))
                          (if ((lambda (_%o99590%_)
                                 (and (fixnum? _%o99590%_)
                                      (let ((__tmp104718
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes99558%_))))
                                        (declare (not safe))
                                        (##fx<= _%start99581%_
                                                _%o99590%_
                                                __tmp104718))))
                               _%end99554%_)
                              (let ((_%end99594%_ _%end99554%_))
                                (__read-u8vector__%
                                 _%bytes99558%_
                                 _%port99568%_
                                 _%start99581%_
                                 _%end99594%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@818.22-818.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end99554%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start99553%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port99552%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes99551%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes99607%_ _%port99608%_)
        (let* ((_%start99610%_ '0)
               (_%end99612%_ (u8vector-length _%bytes99607%_)))
          (read-u8vector__%
           _%bytes99607%_
           _%port99608%_
           _%start99610%_
           _%end99612%_))))
    (define read-u8vector__1
      (lambda (_%bytes99614%_ _%port99615%_ _%start99616%_)
        (let ((_%end99618%_ (u8vector-length _%bytes99614%_)))
          (read-u8vector__%
           _%bytes99614%_
           _%port99615%_
           _%start99616%_
           _%end99618%_))))
    (define read-u8vector
      (lambda _g104719_
        (let ((_g104720_ (let () (declare (not safe)) (##length _g104719_))))
          (cond ((let () (declare (not safe)) (##fx= _g104720_ 2))
                 (apply read-u8vector__0 _g104719_))
                ((let () (declare (not safe)) (##fx= _g104720_ 3))
                 (apply read-u8vector__1 _g104719_))
                ((let () (declare (not safe)) (##fx= _g104720_ 4))
                 (apply read-u8vector__% _g104719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g104719_))))))
    (define __read-u8vector__%
      (lambda (_%bytes99490%_ _%port99491%_ _%start99492%_ _%end99493%_)
        (let* ((_%bytes99496%_ _%bytes99490%_)
               (_%port99504%_ _%port99491%_)
               (_%start99512%_ _%start99492%_)
               (_%end99520%_ _%end99493%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes99496%_
           _%start99512%_
           _%end99520%_
           _%port99504%_))))
    (define __read-u8vector__0
      (lambda (_%bytes99532%_ _%port99533%_)
        (let* ((_%start99535%_ '0)
               (_%end99537%_ (u8vector-length _%bytes99532%_)))
          (__read-u8vector__%
           _%bytes99532%_
           _%port99533%_
           _%start99535%_
           _%end99537%_))))
    (define __read-u8vector__1
      (lambda (_%bytes99539%_ _%port99540%_ _%start99541%_)
        (let ((_%end99543%_ (u8vector-length _%bytes99539%_)))
          (__read-u8vector__%
           _%bytes99539%_
           _%port99540%_
           _%start99541%_
           _%end99543%_))))
    (define __read-u8vector
      (lambda _g104721_
        (let ((_g104722_ (let () (declare (not safe)) (##length _g104721_))))
          (cond ((let () (declare (not safe)) (##fx= _g104722_ 2))
                 (apply __read-u8vector__0 _g104721_))
                ((let () (declare (not safe)) (##fx= _g104722_ 3))
                 (apply __read-u8vector__1 _g104721_))
                ((let () (declare (not safe)) (##fx= _g104722_ 4))
                 (apply __read-u8vector__% _g104721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g104721_))))))
    (define write-u8vector__%
      (lambda (_%bytes99420%_ _%port99421%_ _%start99422%_ _%end99423%_)
        (if (u8vector? _%bytes99420%_)
            (let ((_%bytes99427%_ _%bytes99420%_))
              (if (output-port? _%port99421%_)
                  (let* ((_%port99437%_ _%port99421%_)
                         (_%start99446%_ _%start99422%_))
                    (if ((lambda (_%o99454%_)
                           (and (fixnum? _%o99454%_)
                                (let ((__tmp104723
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes99427%_))))
                                  (declare (not safe))
                                  (##fx<= _%start99446%_
                                          _%o99454%_
                                          __tmp104723))))
                         _%end99423%_)
                        (let ((_%end99458%_ _%end99423%_))
                          (__write-u8vector__%
                           _%bytes99427%_
                           _%port99437%_
                           _%start99446%_
                           _%end99458%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end99423%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port99421%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes99420%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes99471%_ _%port99472%_)
        (let* ((_%start99474%_ '0)
               (_%end99476%_ (u8vector-length _%bytes99471%_)))
          (write-u8vector__%
           _%bytes99471%_
           _%port99472%_
           _%start99474%_
           _%end99476%_))))
    (define write-u8vector__1
      (lambda (_%bytes99478%_ _%port99479%_ _%start99480%_)
        (let ((_%end99482%_ (u8vector-length _%bytes99478%_)))
          (write-u8vector__%
           _%bytes99478%_
           _%port99479%_
           _%start99480%_
           _%end99482%_))))
    (define write-u8vector
      (lambda _g104724_
        (let ((_g104725_ (let () (declare (not safe)) (##length _g104724_))))
          (cond ((let () (declare (not safe)) (##fx= _g104725_ 2))
                 (apply write-u8vector__0 _g104724_))
                ((let () (declare (not safe)) (##fx= _g104725_ 3))
                 (apply write-u8vector__1 _g104724_))
                ((let () (declare (not safe)) (##fx= _g104725_ 4))
                 (apply write-u8vector__% _g104724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g104724_))))))
    (define __write-u8vector__%
      (lambda (_%bytes99359%_ _%port99360%_ _%start99361%_ _%end99362%_)
        (let* ((_%bytes99365%_ _%bytes99359%_)
               (_%port99373%_ _%port99360%_)
               (_%start99381%_ _%start99361%_)
               (_%end99389%_ _%end99362%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes99365%_
           _%start99381%_
           _%end99389%_
           _%port99373%_))))
    (define __write-u8vector__0
      (lambda (_%bytes99401%_ _%port99402%_)
        (let* ((_%start99404%_ '0)
               (_%end99406%_ (u8vector-length _%bytes99401%_)))
          (__write-u8vector__%
           _%bytes99401%_
           _%port99402%_
           _%start99404%_
           _%end99406%_))))
    (define __write-u8vector__1
      (lambda (_%bytes99408%_ _%port99409%_ _%start99410%_)
        (let ((_%end99412%_ (u8vector-length _%bytes99408%_)))
          (__write-u8vector__%
           _%bytes99408%_
           _%port99409%_
           _%start99410%_
           _%end99412%_))))
    (define __write-u8vector
      (lambda _g104726_
        (let ((_g104727_ (let () (declare (not safe)) (##length _g104726_))))
          (cond ((let () (declare (not safe)) (##fx= _g104727_ 2))
                 (apply __write-u8vector__0 _g104726_))
                ((let () (declare (not safe)) (##fx= _g104727_ 3))
                 (apply __write-u8vector__1 _g104726_))
                ((let () (declare (not safe)) (##fx= _g104727_ 4))
                 (apply __write-u8vector__% _g104726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g104726_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag99327%_
               _%dbg-exprs99328%_
               _%dbg-thunks99329%_
               _%expr99330%_
               _%thunk99331%_)
        (letrec ((_%o99333%_ (current-output-port))
                 (_%e99334%_ (current-error-port))
                 (_%p99335%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f99336%_
                  (lambda ()
                    (force-output _%o99333%_)
                    (force-output _%e99334%_)))
                 (_%d99337%_
                  (lambda (_%x99344%_) (display _%x99344%_ _%e99334%_)))
                 (_%w99338%_
                  (lambda (_%x99346%_) (_%p99335%_ _%x99346%_ _%e99334%_)))
                 (_%n99339%_ (lambda () (newline _%e99334%_)))
                 (_%v99340%_
                  (lambda (_%l99349%_)
                    (for-each
                     (lambda (_%x99351%_)
                       (_%d99337%_ '" ")
                       (_%w99338%_ _%x99351%_))
                     _%l99349%_)
                    (_%n99339%_)))
                 (_%x99341%_
                  (lambda (_%expr99353%_ _%thunk99354%_)
                    (_%f99336%_)
                    (_%d99337%_ '"  ")
                    (_%w99338%_ _%expr99353%_)
                    (_%d99337%_ '" =>")
                    (call-with-values
                     _%thunk99354%_
                     (lambda _%x99356%_
                       (_%v99340%_ _%x99356%_)
                       (_%f99336%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x99356%_)))))))
          (if _%tag99327%_
              (begin
                (if (eq? _%tag99327%_ '#!void)
                    '#!void
                    (begin
                      (_%f99336%_)
                      (_%d99337%_ _%tag99327%_)
                      (_%n99339%_)))
                (for-each _%x99341%_ _%dbg-exprs99328%_ _%dbg-thunks99329%_)
                (if _%thunk99331%_
                    (_%x99341%_ _%expr99330%_ _%thunk99331%_)
                    '#!void))
              (if _%thunk99331%_ (_%thunk99331%_) '#!void)))))))
