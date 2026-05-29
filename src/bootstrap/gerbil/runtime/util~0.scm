(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1779967239)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args112833%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args112833%_))
          (newline))))
    (define display*
      (lambda _%args112830%_
        (let () (declare (not safe)) (##for-each display _%args112830%_))))
    (define __file-newer?
      (lambda (_%file1112621%_ _%file2112622%_)
        (let* ((_%file1112625%_ _%file1112621%_)
               (_%file2112633%_ _%file2112622%_))
          (letrec ((_%__modification-time112777%_
                    (lambda (_%file112818%_)
                      (let* ((_%file112821%_ _%file112818%_)
                             (__tmp115609
                              (let ((__tmp115610
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file112821%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp115610))))
                        (declare (not safe))
                        (##time->seconds __tmp115609))))
                   (_%modification-time112778%_
                    (lambda (_%file112806%_)
                      (let ((_%file112809%_ _%file112806%_))
                        (_%__modification-time112777%_ _%file112809%_)))))
            (let ((__tmp115612
                   (let* ((_%file112780%_ _%file1112625%_)
                          (_%file112784%_ _%file112780%_))
                     (_%__modification-time112777%_ _%file112784%_)))
                  (__tmp115611
                   (let* ((_%file112793%_ _%file2112633%_)
                          (_%file112797%_ _%file112793%_))
                     (_%__modification-time112777%_ _%file112797%_))))
              (declare (not safe))
              (##fl> __tmp115612 __tmp115611))))))
    (define file-newer?
      (lambda (_%file1112596%_ _%file2112597%_)
        (if (string? _%file1112596%_)
            (let ((_%file1112601%_ _%file1112596%_))
              (if (string? _%file2112597%_)
                  (let ((_%file2112611%_ _%file2112597%_))
                    (__file-newer? _%file1112601%_ _%file2112611%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2112597%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1112596%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir112316%_ _%perms112317%_)
        (let* ((_%dir112320%_ _%dir112316%_) (_%perms112328%_ _%perms112317%_))
          (letrec ((_%__create1112472%_
                    (lambda (_%path112571%_)
                      (let ((_%path112574%_ _%path112571%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path112574%_))
                            (if (eq? (file-type _%path112574%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path112574%_))
                            (if _%perms112328%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path112574%_
                                             (cons 'permissions:
                                                   (cons _%perms112328%_
                                                         '())))))
                                (create-directory _%path112574%_))))))
                   (_%create1112473%_
                    (lambda (_%path112559%_)
                      (let ((_%path112562%_ _%path112559%_))
                        (_%__create1112472%_ _%path112562%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir112320%_))
                '#!void
                (let _%lp112475%_ ((_%start112477%_ '0))
                  (let ((_%$e112524%_
                         (let* ((_%str112479%_ _%dir112320%_)
                                (_%char112482%_ '#\/)
                                (_%start112485%_ _%start112477%_)
                                (_%str112490%_ _%str112479%_)
                                (_%char112504%_ _%char112482%_))
                           (if (nonnegative-fixnum? _%start112485%_)
                               (let ((_%start112514%_ _%start112485%_))
                                 (__string-index__%
                                  _%str112490%_
                                  _%char112504%_
                                  _%start112514%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start112485%_)
                                 '#!void)))))
                    (if _%$e112524%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e112524%_ '0))
                              (let* ((_%path112529%_
                                      (substring
                                       _%dir112320%_
                                       '0
                                       _%$e112524%_))
                                     (_%path112533%_ _%path112529%_))
                                (_%__create1112472%_ _%path112533%_))
                              '#!void)
                          (_%lp112475%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e112524%_ '1))))
                        (let* ((_%path112545%_ _%dir112320%_)
                               (_%path112549%_ _%path112545%_))
                          (_%__create1112472%_ _%path112549%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir112589%_)
        (let ((_%perms112591%_ '493))
          (__create-directory*__% _%dir112589%_ _%perms112591%_))))
    (define __create-directory*
      (lambda _g115613_
        (let ((_g115614_ (let () (declare (not safe)) (##length _g115613_))))
          (cond ((let () (declare (not safe)) (##fx= _g115614_ 1))
                 (apply __create-directory*__0 _g115613_))
                ((let () (declare (not safe)) (##fx= _g115614_ 2))
                 (apply __create-directory*__% _g115613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g115613_))))))
    (define create-directory*__%
      (lambda (_%dir112280%_ _%perms112281%_)
        (if (string? _%dir112280%_)
            (let ((_%dir112285%_ _%dir112280%_))
              (if (fixnum? _%perms112281%_)
                  (let ((_%perms112295%_ _%perms112281%_))
                    (__create-directory*__% _%dir112285%_ _%perms112295%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms112281%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir112280%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir112308%_)
        (let ((_%perms112310%_ '493))
          (create-directory*__% _%dir112308%_ _%perms112310%_))))
    (define create-directory*
      (lambda _g115615_
        (let ((_g115616_ (let () (declare (not safe)) (##length _g115615_))))
          (cond ((let () (declare (not safe)) (##fx= _g115616_ 1))
                 (apply create-directory*__0 _g115615_))
                ((let () (declare (not safe)) (##fx= _g115616_ 2))
                 (apply create-directory*__% _g115615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g115615_))))))
    (define __move-file__%
      (lambda (_%src112223%_ _%dest112224%_ _%replace?112225%_)
        (let* ((_%src112228%_ _%src112223%_)
               (_%dest112236%_ _%dest112224%_)
               (_%replace?112244%_ _%replace?112225%_))
          (letrec ((_%force-move-it112253%_
                    (lambda ()
                      (let ((_%tmp112259%_
                             (if _%replace?112244%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest112236%_))
                                     (let ((__tmp115617
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest112236%_
                                        '"."
                                        __tmp115617))
                                     '#f)
                                 '#f)))
                        (if _%tmp112259%_
                            (rename-file _%dest112236%_ _%tmp112259%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e112261%_)
                           (if _%tmp112259%_
                               (rename-file _%tmp112259%_ _%dest112236%_ '#t)
                               '#!void)
                           (raise _%e112261%_))
                         (lambda ()
                           (let ((_%fi112264%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src112228%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi112264%_))
                                      'symbolic-link)
                                 (let ((__tmp115618
                                        (path-normalize _%src112228%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp115618
                                    _%dest112236%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src112228%_
                                    _%dest112236%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src112228%_))
                           (if _%tmp112259%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp112259%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e112255%_)
               (if (let () (declare (not safe)) (##file-exists? _%src112228%_))
                   (_%force-move-it112253%_)
                   (raise _%e112255%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src112228%_
                  _%dest112236%_
                  _%replace?112244%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src112270%_ _%dest112271%_)
        (let ((_%replace?112273%_ '#t))
          (__move-file__% _%src112270%_ _%dest112271%_ _%replace?112273%_))))
    (define __move-file
      (lambda _g115619_
        (let ((_g115620_ (let () (declare (not safe)) (##length _g115619_))))
          (cond ((let () (declare (not safe)) (##fx= _g115620_ 2))
                 (apply __move-file__0 _g115619_))
                ((let () (declare (not safe)) (##fx= _g115620_ 3))
                 (apply __move-file__% _g115619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g115619_))))))
    (define move-file__%
      (lambda (_%src112174%_ _%dest112175%_ _%replace?112176%_)
        (if (string? _%src112174%_)
            (let ((_%src112180%_ _%src112174%_))
              (if (string? _%dest112175%_)
                  (let ((_%dest112190%_ _%dest112175%_))
                    (if (boolean? _%replace?112176%_)
                        (let ((_%replace?112200%_ _%replace?112176%_))
                          (__move-file__%
                           _%src112180%_
                           _%dest112190%_
                           _%replace?112200%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?112176%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest112175%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src112174%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src112213%_ _%dest112214%_)
        (let ((_%replace?112216%_ '#t))
          (move-file__% _%src112213%_ _%dest112214%_ _%replace?112216%_))))
    (define move-file
      (lambda _g115621_
        (let ((_g115622_ (let () (declare (not safe)) (##length _g115621_))))
          (cond ((let () (declare (not safe)) (##fx= _g115622_ 2))
                 (apply move-file__0 _g115621_))
                ((let () (declare (not safe)) (##fx= _g115622_ 3))
                 (apply move-file__% _g115621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g115621_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore112170%_ '#t))
    (define true? (lambda (_%obj112167%_) (eq? _%obj112167%_ '#t)))
    (define false (lambda _%ignore112164%_ '#f))
    (define void (lambda _%ignore112161%_ '#!void))
    (define void? (lambda (_%obj112158%_) (eq? _%obj112158%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj112155%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj112155%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj112152%_) (eq? _%obj112152%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj112149%_) (eq? _%obj112149%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj112146%_) (eq? _%obj112146%_ '#!optional)))
    (define immediate?
      (lambda (_%obj112143%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj112143%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj112140%_)
        (if (fixnum? _%obj112140%_)
            (let () (declare (not safe)) (##fx>= _%obj112140%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj112134%_)
        (let ((_%$e112137%_ (pair? _%obj112134%_)))
          (if _%$e112137%_ _%$e112137%_ (null? _%obj112134%_)))))
    (define values-count
      (lambda (_%obj112131%_)
        (if (let () (declare (not safe)) (##values? _%obj112131%_))
            (let () (declare (not safe)) (##values-length _%obj112131%_))
            '1)))
    (define __values-ref
      (lambda (_%obj112118%_ _%k112119%_)
        (let ((_%k112122%_ _%k112119%_))
          (if (let () (declare (not safe)) (##values? _%obj112118%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj112118%_ _%k112122%_))
              _%obj112118%_))))
    (define values-ref
      (lambda (_%obj112103%_ _%k112104%_)
        (if (fixnum? _%k112104%_)
            (let ((_%k112108%_ _%k112104%_))
              (__values-ref _%obj112103%_ _%k112108%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k112104%_)
              '#!void))))
    (define values->list
      (lambda (_%obj112100%_)
        (if (let () (declare (not safe)) (##values? _%obj112100%_))
            (let () (declare (not safe)) (##values->list _%obj112100%_))
            (list _%obj112100%_))))
    (define __foldl1
      (lambda (_%f112048%_ _%iv112049%_ _%lst112050%_)
        (let ((_%f112053%_ _%f112048%_))
          (let _%lp112062%_ ((_%rest112064%_ _%lst112050%_)
                             (_%r112065%_ _%iv112049%_))
            (let* ((_%rest112066112074%_ _%rest112064%_)
                   (_%else112068112082%_ (lambda () _%r112065%_))
                   (_%K112070112088%_
                    (lambda (_%rest112085%_ _%x112086%_)
                      (_%lp112062%_
                       _%rest112085%_
                       (let ()
                         (declare (not safe))
                         (_%f112053%_ _%x112086%_ _%r112065%_))))))
              (if (pair? _%rest112066112074%_)
                  (let ((_%hd112071112091%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112066112074%_)))
                        (_%tl112072112093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112066112074%_))))
                    (let* ((_%x112096%_ _%hd112071112091%_)
                           (_%rest112098%_ _%tl112072112093%_))
                      (_%K112070112088%_ _%rest112098%_ _%x112096%_)))
                  (_%else112068112082%_)))))))
    (define foldl1
      (lambda (_%f112032%_ _%iv112033%_ _%lst112034%_)
        (if (procedure? _%f112032%_)
            (let ((_%f112038%_ _%f112032%_))
              (__foldl1 _%f112038%_ _%iv112033%_ _%lst112034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f112032%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f111945%_ _%iv111946%_ _%lst1111947%_ _%lst2111948%_)
        (let ((_%f111951%_ _%f111945%_))
          (let _%lp111960%_ ((_%rest1111962%_ _%lst1111947%_)
                             (_%rest2111963%_ _%lst2111948%_)
                             (_%r111964%_ _%iv111946%_))
            (let* ((_%rest1111965111973%_ _%rest1111962%_)
                   (_%else111967111981%_ (lambda () _%r111964%_))
                   (_%K111969112020%_
                    (lambda (_%rest1111984%_ _%x1111985%_)
                      (let* ((_%rest2111986111994%_ _%rest2111963%_)
                             (_%else111988112002%_ (lambda () _%r111964%_))
                             (_%K111990112008%_
                              (lambda (_%rest2112005%_ _%x2112006%_)
                                (_%lp111960%_
                                 _%rest1111984%_
                                 _%rest2112005%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f111951%_
                                    _%x1111985%_
                                    _%x2112006%_
                                    _%r111964%_))))))
                        (if (pair? _%rest2111986111994%_)
                            (let ((_%hd111991112011%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111986111994%_)))
                                  (_%tl111992112013%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111986111994%_))))
                              (let* ((_%x2112016%_ _%hd111991112011%_)
                                     (_%rest2112018%_ _%tl111992112013%_))
                                (_%K111990112008%_
                                 _%rest2112018%_
                                 _%x2112016%_)))
                            (_%else111988112002%_))))))
              (if (pair? _%rest1111965111973%_)
                  (let ((_%hd111970112023%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111965111973%_)))
                        (_%tl111971112025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111965111973%_))))
                    (let* ((_%x1112028%_ _%hd111970112023%_)
                           (_%rest1112030%_ _%tl111971112025%_))
                      (_%K111969112020%_ _%rest1112030%_ _%x1112028%_)))
                  (_%else111967111981%_)))))))
    (define foldl2
      (lambda (_%f111928%_ _%iv111929%_ _%lst1111930%_ _%lst2111931%_)
        (if (procedure? _%f111928%_)
            (let ((_%f111935%_ _%f111928%_))
              (__foldl2
               _%f111935%_
               _%iv111929%_
               _%lst1111930%_
               _%lst2111931%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f111928%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f111861%_ _%iv111862%_ _%lst111863%_)
        (let* ((_%f111865%_ _%f111861%_)
               (_%iv111868%_ _%iv111862%_)
               (_%lst111871%_ _%lst111863%_))
          (if (procedure? _%f111865%_)
              (let ((_%f111876%_ _%f111865%_))
                (__foldl1 _%f111876%_ _%iv111868%_ _%lst111871%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111865%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f111889%_ _%iv111890%_ _%lst1111891%_ _%lst2111892%_)
        (let* ((_%f111894%_ _%f111889%_)
               (_%iv111897%_ _%iv111890%_)
               (_%lst1111900%_ _%lst1111891%_)
               (_%lst2111903%_ _%lst2111892%_))
          (if (procedure? _%f111894%_)
              (let ((_%f111908%_ _%f111894%_))
                (__foldl2
                 _%f111908%_
                 _%iv111897%_
                 _%lst1111900%_
                 _%lst2111903%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111894%_)
                '#!void)))))
    (define foldl
      (lambda _g115623_
        (let ((_g115624_ (let () (declare (not safe)) (##length _g115623_))))
          (cond ((let () (declare (not safe)) (##fx= _g115624_ 3))
                 (apply foldl__0 _g115623_))
                ((let () (declare (not safe)) (##fx= _g115624_ 4))
                 (apply foldl__1 _g115623_))
                ((let () (declare (not safe)) (##fx>= _g115624_ 4))
                 (apply foldl* _g115623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g115623_))))))
    (define __foldl*
      (lambda (_%f111792%_ _%iv111793%_ . _%rest111794%_)
        (let ((_%f111797%_ _%f111792%_))
          (let _%recur111806%_ ((_%iv111808%_ _%iv111793%_)
                                (_%rest111809%_ _%rest111794%_))
            (if (let* ((_%f111811%_ pair?)
                       (_%lst111814%_ _%rest111809%_)
                       (_%f111819%_ _%f111811%_))
                  (__andmap1 _%f111819%_ _%lst111814%_))
                (_%recur111806%_
                 (let ((__tmp115625
                        (let* ((_%f111838%_
                                (lambda (_%xs111835%_ _%r111836%_)
                                  (cons (car _%xs111835%_) _%r111836%_)))
                               (_%iv111841%_ (list _%iv111808%_))
                               (_%lst111844%_ _%rest111809%_)
                               (_%f111849%_ _%f111838%_))
                          (__foldr1 _%f111849%_ _%iv111841%_ _%lst111844%_))))
                   (declare (not safe))
                   (##apply _%f111797%_ __tmp115625))
                 (map cdr _%rest111809%_))
                _%iv111808%_)))))
    (define foldl*
      (lambda (_%f111776%_ _%iv111777%_ . _%rest111778%_)
        (if (procedure? _%f111776%_)
            (let ((_%f111782%_ _%f111776%_))
              (declare (not safe))
              (##apply __foldl* _%f111782%_ _%iv111777%_ _%rest111778%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f111776%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f111725%_ _%iv111726%_ _%lst111727%_)
        (let ((_%f111730%_ _%f111725%_))
          (let _%recur111739%_ ((_%rest111741%_ _%lst111727%_))
            (let* ((_%rest111742111750%_ _%rest111741%_)
                   (_%else111744111758%_ (lambda () _%iv111726%_))
                   (_%K111746111764%_
                    (lambda (_%rest111761%_ _%x111762%_)
                      (let ((__tmp115626 (_%recur111739%_ _%rest111761%_)))
                        (declare (not safe))
                        (_%f111730%_ _%x111762%_ __tmp115626)))))
              (if (pair? _%rest111742111750%_)
                  (let ((_%hd111747111767%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111742111750%_)))
                        (_%tl111748111769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111742111750%_))))
                    (let* ((_%x111772%_ _%hd111747111767%_)
                           (_%rest111774%_ _%tl111748111769%_))
                      (_%K111746111764%_ _%rest111774%_ _%x111772%_)))
                  (_%else111744111758%_)))))))
    (define foldr1
      (lambda (_%f111709%_ _%iv111710%_ _%lst111711%_)
        (if (procedure? _%f111709%_)
            (let ((_%f111715%_ _%f111709%_))
              (__foldr1 _%f111715%_ _%iv111710%_ _%lst111711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f111709%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f111623%_ _%iv111624%_ _%lst1111625%_ _%lst2111626%_)
        (let ((_%f111629%_ _%f111623%_))
          (let _%recur111638%_ ((_%rest1111640%_ _%lst1111625%_)
                                (_%rest2111641%_ _%lst2111626%_))
            (let* ((_%rest1111642111650%_ _%rest1111640%_)
                   (_%else111644111658%_ (lambda () _%iv111624%_))
                   (_%K111646111697%_
                    (lambda (_%rest1111661%_ _%x1111662%_)
                      (let* ((_%rest2111663111671%_ _%rest2111641%_)
                             (_%else111665111679%_ (lambda () _%iv111624%_))
                             (_%K111667111685%_
                              (lambda (_%rest2111682%_ _%x2111683%_)
                                (let ((__tmp115627
                                       (_%recur111638%_
                                        _%rest1111661%_
                                        _%rest2111682%_)))
                                  (declare (not safe))
                                  (_%f111629%_
                                   _%x1111662%_
                                   _%x2111683%_
                                   __tmp115627)))))
                        (if (pair? _%rest2111663111671%_)
                            (let ((_%hd111668111688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111663111671%_)))
                                  (_%tl111669111690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111663111671%_))))
                              (let* ((_%x2111693%_ _%hd111668111688%_)
                                     (_%rest2111695%_ _%tl111669111690%_))
                                (_%K111667111685%_
                                 _%rest2111695%_
                                 _%x2111693%_)))
                            (_%else111665111679%_))))))
              (if (pair? _%rest1111642111650%_)
                  (let ((_%hd111647111700%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111642111650%_)))
                        (_%tl111648111702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111642111650%_))))
                    (let* ((_%x1111705%_ _%hd111647111700%_)
                           (_%rest1111707%_ _%tl111648111702%_))
                      (_%K111646111697%_ _%rest1111707%_ _%x1111705%_)))
                  (_%else111644111658%_)))))))
    (define foldr2
      (lambda (_%f111606%_ _%iv111607%_ _%lst1111608%_ _%lst2111609%_)
        (if (procedure? _%f111606%_)
            (let ((_%f111613%_ _%f111606%_))
              (__foldr2
               _%f111613%_
               _%iv111607%_
               _%lst1111608%_
               _%lst2111609%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f111606%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f111539%_ _%iv111540%_ _%lst111541%_)
        (let* ((_%f111543%_ _%f111539%_)
               (_%iv111546%_ _%iv111540%_)
               (_%lst111549%_ _%lst111541%_))
          (if (procedure? _%f111543%_)
              (let ((_%f111554%_ _%f111543%_))
                (__foldr1 _%f111554%_ _%iv111546%_ _%lst111549%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111543%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f111567%_ _%iv111568%_ _%lst1111569%_ _%lst2111570%_)
        (let* ((_%f111572%_ _%f111567%_)
               (_%iv111575%_ _%iv111568%_)
               (_%lst1111578%_ _%lst1111569%_)
               (_%lst2111581%_ _%lst2111570%_))
          (if (procedure? _%f111572%_)
              (let ((_%f111586%_ _%f111572%_))
                (__foldr2
                 _%f111586%_
                 _%iv111575%_
                 _%lst1111578%_
                 _%lst2111581%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111572%_)
                '#!void)))))
    (define foldr
      (lambda _g115628_
        (let ((_g115629_ (let () (declare (not safe)) (##length _g115628_))))
          (cond ((let () (declare (not safe)) (##fx= _g115629_ 3))
                 (apply foldr__0 _g115628_))
                ((let () (declare (not safe)) (##fx= _g115629_ 4))
                 (apply foldr__1 _g115628_))
                ((let () (declare (not safe)) (##fx>= _g115629_ 4))
                 (apply foldr* _g115628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g115628_))))))
    (define __foldr*
      (lambda (_%f111471%_ _%iv111472%_ . _%rest111473%_)
        (let ((_%f111476%_ _%f111471%_))
          (let _%recur111485%_ ((_%rest111487%_ _%rest111473%_))
            (if (let* ((_%f111489%_ pair?)
                       (_%lst111492%_ _%rest111487%_)
                       (_%f111497%_ _%f111489%_))
                  (__andmap1 _%f111497%_ _%lst111492%_))
                (let ((__tmp115630
                       (let* ((_%f111516%_
                               (lambda (_%xs111513%_ _%r111514%_)
                                 (cons (car _%xs111513%_) _%r111514%_)))
                              (_%iv111519%_
                               (list (_%recur111485%_
                                      (map cdr _%rest111487%_))))
                              (_%lst111522%_ _%rest111487%_)
                              (_%f111527%_ _%f111516%_))
                         (__foldr1 _%f111527%_ _%iv111519%_ _%lst111522%_))))
                  (declare (not safe))
                  (##apply _%f111476%_ __tmp115630))
                _%iv111472%_)))))
    (define foldr*
      (lambda (_%f111455%_ _%iv111456%_ . _%rest111457%_)
        (if (procedure? _%f111455%_)
            (let ((_%f111461%_ _%f111455%_))
              (declare (not safe))
              (##apply __foldr* _%f111461%_ _%iv111456%_ _%rest111457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f111455%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l111342%_)
        (let* ((_%l111343111356%_ _%l111342%_)
               (_%E111347111360%_
                (lambda ()
                  (error '"No clause matching"
                         _%l111343111356%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K111352111445%_
                 (lambda (_%r111443%_) (remove-nulls! _%r111443%_)))
                (_%K111349111432%_
                 (lambda (_%r111372%_)
                   (let _%loop111374%_ ((_%l111376%_ _%l111342%_)
                                        (_%r111377%_ _%r111372%_))
                     (let* ((_%r111378111391%_ _%r111377%_)
                            (_%E111382111395%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r111378111391%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K111387111422%_
                              (lambda (_%rr111420%_)
                                (let ((__tmp115632 _%l111376%_)
                                      (__tmp115631
                                       (remove-nulls! _%rr111420%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp115632 __tmp115631))))
                             (_%K111384111409%_
                              (lambda (_%rr111407%_)
                                (_%loop111374%_ _%r111377%_ _%rr111407%_)))
                             (_%K111383111400%_ (lambda () '#!void)))
                         (if (pair? _%r111378111391%_)
                             (let ((_%tl111389111427%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r111378111391%_)))
                                   (_%hd111388111425%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r111378111391%_))))
                               (if (null? _%hd111388111425%_)
                                   (let ((_%rr111430%_ _%tl111389111427%_))
                                     (_%K111387111422%_ _%rr111430%_))
                                   (let ((_%rr111415%_ _%tl111389111427%_))
                                     (_%K111384111409%_ _%rr111415%_))))
                             '#!void))))
                   _%l111342%_))
                (_%K111348111365%_ (lambda () _%l111342%_)))
            (if (pair? _%l111343111356%_)
                (let ((_%tl111354111450%_
                       (let () (declare (not safe)) (##cdr _%l111343111356%_)))
                      (_%hd111353111448%_
                       (let ()
                         (declare (not safe))
                         (##car _%l111343111356%_))))
                  (if (null? _%hd111353111448%_)
                      (let ((_%r111453%_ _%tl111354111450%_))
                        (remove-nulls! _%r111453%_))
                      (let ((_%r111438%_ _%tl111354111450%_))
                        (_%K111349111432%_ _%r111438%_))))
                (_%K111348111365%_))))))
    (define append1!
      (lambda (_%l111327%_ _%x111328%_)
        (let ((_%l2111331%_ (cons _%x111328%_ '())))
          (if (pair? _%l111327%_)
              (let ((_%l111333%_ _%l111327%_))
                (let ((__tmp115633
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l111333%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp115633 _%l2111331%_))
                _%l111333%_)
              _%l2111331%_))))
    (define __append-reverse-until
      (lambda (_%pred111269%_ _%rhead111270%_ _%tail111271%_)
        (let ((_%pred111274%_ _%pred111269%_))
          (let _%loop111283%_ ((_%rhead111285%_ _%rhead111270%_)
                               (_%tail111286%_ _%tail111271%_))
            (let* ((_%rhead111288111297%_ _%rhead111285%_)
                   (_%E111291111301%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead111288111297%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K111295111324%_ (lambda () (values '() _%tail111286%_)))
                    (_%K111292111308%_
                     (lambda (_%r111305%_ _%a111306%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred111274%_ _%a111306%_))
                           (values _%rhead111285%_ _%tail111286%_)
                           (_%loop111283%_
                            _%r111305%_
                            (cons _%a111306%_ _%tail111286%_))))))
                (let ((_%try-match111290111320%_
                       (lambda ()
                         (if (pair? _%rhead111288111297%_)
                             (let ((_%tl111294111313%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead111288111297%_)))
                                   (_%hd111293111311%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead111288111297%_))))
                               (let ((_%a111316%_ _%hd111293111311%_)
                                     (_%r111318%_ _%tl111294111313%_))
                                 (_%K111292111308%_ _%r111318%_ _%a111316%_)))
                             (_%E111291111301%_)))))
                  (if (null? _%rhead111288111297%_)
                      (_%K111295111324%_)
                      (_%try-match111290111320%_)))))))))
    (define append-reverse-until
      (lambda (_%pred111253%_ _%rhead111254%_ _%tail111255%_)
        (if (procedure? _%pred111253%_)
            (let ((_%pred111259%_ _%pred111253%_))
              (__append-reverse-until
               _%pred111259%_
               _%rhead111254%_
               _%tail111255%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred111253%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f111202%_ _%lst111203%_)
        (let ((_%f111206%_ _%f111202%_))
          (let _%lp111215%_ ((_%rest111217%_ _%lst111203%_))
            (let* ((_%rest111219111227%_ _%rest111217%_)
                   (_%else111221111235%_ (lambda () '#t))
                   (_%K111223111241%_
                    (lambda (_%rest111238%_ _%x111239%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f111206%_ _%x111239%_))
                          (_%lp111215%_ _%rest111238%_)
                          '#f))))
              (if (pair? _%rest111219111227%_)
                  (let ((_%hd111224111244%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111219111227%_)))
                        (_%tl111225111246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111219111227%_))))
                    (let* ((_%x111249%_ _%hd111224111244%_)
                           (_%rest111251%_ _%tl111225111246%_))
                      (_%K111223111241%_ _%rest111251%_ _%x111249%_)))
                  (_%else111221111235%_)))))))
    (define andmap1
      (lambda (_%f111187%_ _%lst111188%_)
        (if (procedure? _%f111187%_)
            (let ((_%f111192%_ _%f111187%_))
              (__andmap1 _%f111192%_ _%lst111188%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f111187%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f111101%_ _%lst1111102%_ _%lst2111103%_)
        (let ((_%f111106%_ _%f111101%_))
          (let _%lp111115%_ ((_%rest1111117%_ _%lst1111102%_)
                             (_%rest2111118%_ _%lst2111103%_))
            (let* ((_%rest1111120111128%_ _%rest1111117%_)
                   (_%else111122111136%_ (lambda () '#t))
                   (_%K111124111175%_
                    (lambda (_%rest1111139%_ _%x1111140%_)
                      (let* ((_%rest2111141111149%_ _%rest2111118%_)
                             (_%else111143111157%_ (lambda () '#t))
                             (_%K111145111163%_
                              (lambda (_%rest2111160%_ _%x2111161%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f111106%_ _%x1111140%_ _%x2111161%_))
                                    (_%lp111115%_
                                     _%rest1111139%_
                                     _%rest2111160%_)
                                    '#f))))
                        (if (pair? _%rest2111141111149%_)
                            (let ((_%hd111146111166%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111141111149%_)))
                                  (_%tl111147111168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111141111149%_))))
                              (let* ((_%x2111171%_ _%hd111146111166%_)
                                     (_%rest2111173%_ _%tl111147111168%_))
                                (_%K111145111163%_
                                 _%rest2111173%_
                                 _%x2111171%_)))
                            (_%else111143111157%_))))))
              (if (pair? _%rest1111120111128%_)
                  (let ((_%hd111125111178%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111120111128%_)))
                        (_%tl111126111180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111120111128%_))))
                    (let* ((_%x1111183%_ _%hd111125111178%_)
                           (_%rest1111185%_ _%tl111126111180%_))
                      (_%K111124111175%_ _%rest1111185%_ _%x1111183%_)))
                  (_%else111122111136%_)))))))
    (define andmap2
      (lambda (_%f111085%_ _%lst1111086%_ _%lst2111087%_)
        (if (procedure? _%f111085%_)
            (let ((_%f111091%_ _%f111085%_))
              (__andmap2 _%f111091%_ _%lst1111086%_ _%lst2111087%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f111085%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f111029%_ _%lst111030%_)
        (let* ((_%f111032%_ _%f111029%_) (_%lst111035%_ _%lst111030%_))
          (if (procedure? _%f111032%_)
              (let ((_%f111040%_ _%f111032%_))
                (__andmap1 _%f111040%_ _%lst111035%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111032%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f111052%_ _%lst1111053%_ _%lst2111054%_)
        (let* ((_%f111056%_ _%f111052%_)
               (_%lst1111059%_ _%lst1111053%_)
               (_%lst2111062%_ _%lst2111054%_))
          (if (procedure? _%f111056%_)
              (let ((_%f111067%_ _%f111056%_))
                (__andmap2 _%f111067%_ _%lst1111059%_ _%lst2111062%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111056%_)
                '#!void)))))
    (define andmap
      (lambda _g115634_
        (let ((_g115635_ (let () (declare (not safe)) (##length _g115634_))))
          (cond ((let () (declare (not safe)) (##fx= _g115635_ 2))
                 (apply andmap__0 _g115634_))
                ((let () (declare (not safe)) (##fx= _g115635_ 3))
                 (apply andmap__1 _g115634_))
                ((let () (declare (not safe)) (##fx>= _g115635_ 3))
                 (apply andmap* _g115634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g115634_))))))
    (define __andmap*
      (lambda (_%f110986%_ . _%rest110987%_)
        (let ((_%f110990%_ _%f110986%_))
          (let _%recur110999%_ ((_%rest111001%_ _%rest110987%_))
            (if (let* ((_%f111004%_ pair?)
                       (_%lst111007%_ _%rest111001%_)
                       (_%f111012%_ _%f111004%_))
                  (__andmap1 _%f111012%_ _%lst111007%_))
                (if (let ((__tmp115636 (map car _%rest111001%_)))
                      (declare (not safe))
                      (##apply _%f110990%_ __tmp115636))
                    (_%recur110999%_ (map cdr _%rest111001%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f110971%_ . _%rest110972%_)
        (if (procedure? _%f110971%_)
            (let ((_%f110976%_ _%f110971%_))
              (declare (not safe))
              (##apply __andmap* _%f110976%_ _%rest110972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f110971%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f110918%_ _%lst110919%_)
        (let ((_%f110922%_ _%f110918%_))
          (let _%lp110931%_ ((_%rest110933%_ _%lst110919%_))
            (let* ((_%rest110934110942%_ _%rest110933%_)
                   (_%else110936110950%_ (lambda () '#f))
                   (_%K110938110959%_
                    (lambda (_%rest110953%_ _%x110954%_)
                      (let ((_%$e110956%_
                             (let ()
                               (declare (not safe))
                               (_%f110922%_ _%x110954%_))))
                        (if _%$e110956%_
                            _%$e110956%_
                            (_%lp110931%_ _%rest110953%_))))))
              (if (pair? _%rest110934110942%_)
                  (let ((_%hd110939110962%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110934110942%_)))
                        (_%tl110940110964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110934110942%_))))
                    (let* ((_%x110967%_ _%hd110939110962%_)
                           (_%rest110969%_ _%tl110940110964%_))
                      (_%K110938110959%_ _%rest110969%_ _%x110967%_)))
                  (_%else110936110950%_)))))))
    (define ormap1
      (lambda (_%f110903%_ _%lst110904%_)
        (if (procedure? _%f110903%_)
            (let ((_%f110908%_ _%f110903%_))
              (__ormap1 _%f110908%_ _%lst110904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f110903%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f110815%_ _%lst1110816%_ _%lst2110817%_)
        (let ((_%f110820%_ _%f110815%_))
          (let _%lp110829%_ ((_%rest1110831%_ _%lst1110816%_)
                             (_%rest2110832%_ _%lst2110817%_))
            (let* ((_%rest1110833110841%_ _%rest1110831%_)
                   (_%else110835110849%_ (lambda () '#f))
                   (_%K110837110891%_
                    (lambda (_%rest1110852%_ _%x1110853%_)
                      (let* ((_%rest2110854110862%_ _%rest2110832%_)
                             (_%else110856110870%_ (lambda () '#f))
                             (_%K110858110879%_
                              (lambda (_%rest2110873%_ _%x2110874%_)
                                (let ((_%$e110876%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110820%_
                                          _%x1110853%_
                                          _%x2110874%_))))
                                  (if _%$e110876%_
                                      _%$e110876%_
                                      (_%lp110829%_
                                       _%rest1110852%_
                                       _%rest2110873%_))))))
                        (if (pair? _%rest2110854110862%_)
                            (let ((_%hd110859110882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110854110862%_)))
                                  (_%tl110860110884%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110854110862%_))))
                              (let* ((_%x2110887%_ _%hd110859110882%_)
                                     (_%rest2110889%_ _%tl110860110884%_))
                                (_%K110858110879%_
                                 _%rest2110889%_
                                 _%x2110887%_)))
                            (_%else110856110870%_))))))
              (if (pair? _%rest1110833110841%_)
                  (let ((_%hd110838110894%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110833110841%_)))
                        (_%tl110839110896%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110833110841%_))))
                    (let* ((_%x1110899%_ _%hd110838110894%_)
                           (_%rest1110901%_ _%tl110839110896%_))
                      (_%K110837110891%_ _%rest1110901%_ _%x1110899%_)))
                  (_%else110835110849%_)))))))
    (define ormap2
      (lambda (_%f110799%_ _%lst1110800%_ _%lst2110801%_)
        (if (procedure? _%f110799%_)
            (let ((_%f110805%_ _%f110799%_))
              (__ormap2 _%f110805%_ _%lst1110800%_ _%lst2110801%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f110799%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f110743%_ _%lst110744%_)
        (let* ((_%f110746%_ _%f110743%_) (_%lst110749%_ _%lst110744%_))
          (if (procedure? _%f110746%_)
              (let ((_%f110754%_ _%f110746%_))
                (__ormap1 _%f110754%_ _%lst110749%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110746%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f110766%_ _%lst1110767%_ _%lst2110768%_)
        (let* ((_%f110770%_ _%f110766%_)
               (_%lst1110773%_ _%lst1110767%_)
               (_%lst2110776%_ _%lst2110768%_))
          (if (procedure? _%f110770%_)
              (let ((_%f110781%_ _%f110770%_))
                (__ormap2 _%f110781%_ _%lst1110773%_ _%lst2110776%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110770%_)
                '#!void)))))
    (define ormap
      (lambda _g115637_
        (let ((_g115638_ (let () (declare (not safe)) (##length _g115637_))))
          (cond ((let () (declare (not safe)) (##fx= _g115638_ 2))
                 (apply ormap__0 _g115637_))
                ((let () (declare (not safe)) (##fx= _g115638_ 3))
                 (apply ormap__1 _g115637_))
                ((let () (declare (not safe)) (##fx>= _g115638_ 3))
                 (apply ormap* _g115637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g115637_))))))
    (define __ormap*
      (lambda (_%f110699%_ . _%rest110700%_)
        (let ((_%f110703%_ _%f110699%_))
          (let _%recur110712%_ ((_%rest110714%_ _%rest110700%_))
            (if (let* ((_%f110716%_ pair?)
                       (_%lst110719%_ _%rest110714%_)
                       (_%f110724%_ _%f110716%_))
                  (__andmap1 _%f110724%_ _%lst110719%_))
                (let ((_%$e110740%_
                       (let ((__tmp115639 (map car _%rest110714%_)))
                         (declare (not safe))
                         (##apply _%f110703%_ __tmp115639))))
                  (if _%$e110740%_
                      _%$e110740%_
                      (_%recur110712%_ (map cdr _%rest110714%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f110684%_ . _%rest110685%_)
        (if (procedure? _%f110684%_)
            (let ((_%f110689%_ _%f110684%_))
              (declare (not safe))
              (##apply __ormap* _%f110689%_ _%rest110685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f110684%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f110627%_ _%lst110628%_)
        (let ((_%f110631%_ _%f110627%_))
          (let _%recur110640%_ ((_%rest110642%_ _%lst110628%_))
            (let* ((_%rest110644110652%_ _%rest110642%_)
                   (_%else110646110660%_ (lambda () '()))
                   (_%K110648110672%_
                    (lambda (_%rest110663%_ _%x110664%_)
                      (let ((_%$e110666%_
                             (let ()
                               (declare (not safe))
                               (_%f110631%_ _%x110664%_))))
                        (if _%$e110666%_
                            (cons _%$e110666%_
                                  (_%recur110640%_ _%rest110663%_))
                            (_%recur110640%_ _%rest110663%_))))))
              (if (pair? _%rest110644110652%_)
                  (let ((_%hd110649110675%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110644110652%_)))
                        (_%tl110650110677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110644110652%_))))
                    (let* ((_%x110680%_ _%hd110649110675%_)
                           (_%rest110682%_ _%tl110650110677%_))
                      (_%K110648110672%_ _%rest110682%_ _%x110680%_)))
                  (_%else110646110660%_)))))))
    (define filter-map1
      (lambda (_%f110612%_ _%lst110613%_)
        (if (procedure? _%f110612%_)
            (let ((_%f110617%_ _%f110612%_))
              (__filter-map1 _%f110617%_ _%lst110613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f110612%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f110520%_ _%lst1110521%_ _%lst2110522%_)
        (let ((_%f110525%_ _%f110520%_))
          (let _%recur110534%_ ((_%rest1110536%_ _%lst1110521%_)
                                (_%rest2110537%_ _%lst2110522%_))
            (let* ((_%rest1110539110547%_ _%rest1110536%_)
                   (_%else110541110555%_ (lambda () '()))
                   (_%K110543110600%_
                    (lambda (_%rest1110558%_ _%x1110559%_)
                      (let* ((_%rest2110560110568%_ _%rest2110537%_)
                             (_%else110562110576%_ (lambda () '()))
                             (_%K110564110588%_
                              (lambda (_%rest2110579%_ _%x2110580%_)
                                (let ((_%$e110582%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110525%_
                                          _%x1110559%_
                                          _%x2110580%_))))
                                  (if _%$e110582%_
                                      (cons _%$e110582%_
                                            (_%recur110534%_
                                             _%rest1110558%_
                                             _%rest2110579%_))
                                      (_%recur110534%_
                                       _%rest1110558%_
                                       _%rest2110579%_))))))
                        (if (pair? _%rest2110560110568%_)
                            (let ((_%hd110565110591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110560110568%_)))
                                  (_%tl110566110593%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110560110568%_))))
                              (let* ((_%x2110596%_ _%hd110565110591%_)
                                     (_%rest2110598%_ _%tl110566110593%_))
                                (_%K110564110588%_
                                 _%rest2110598%_
                                 _%x2110596%_)))
                            (_%else110562110576%_))))))
              (if (pair? _%rest1110539110547%_)
                  (let ((_%hd110544110603%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110539110547%_)))
                        (_%tl110545110605%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110539110547%_))))
                    (let* ((_%x1110608%_ _%hd110544110603%_)
                           (_%rest1110610%_ _%tl110545110605%_))
                      (_%K110543110600%_ _%rest1110610%_ _%x1110608%_)))
                  (_%else110541110555%_)))))))
    (define filter-map2
      (lambda (_%f110504%_ _%lst1110505%_ _%lst2110506%_)
        (if (procedure? _%f110504%_)
            (let ((_%f110510%_ _%f110504%_))
              (__filter-map2 _%f110510%_ _%lst1110505%_ _%lst2110506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f110504%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f110448%_ _%lst110449%_)
        (let* ((_%f110451%_ _%f110448%_) (_%lst110454%_ _%lst110449%_))
          (if (procedure? _%f110451%_)
              (let ((_%f110459%_ _%f110451%_))
                (__filter-map1 _%f110459%_ _%lst110454%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110451%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f110471%_ _%lst1110472%_ _%lst2110473%_)
        (let* ((_%f110475%_ _%f110471%_)
               (_%lst1110478%_ _%lst1110472%_)
               (_%lst2110481%_ _%lst2110473%_))
          (if (procedure? _%f110475%_)
              (let ((_%f110486%_ _%f110475%_))
                (__filter-map2 _%f110486%_ _%lst1110478%_ _%lst2110481%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110475%_)
                '#!void)))))
    (define filter-map
      (lambda _g115640_
        (let ((_g115641_ (let () (declare (not safe)) (##length _g115640_))))
          (cond ((let () (declare (not safe)) (##fx= _g115641_ 2))
                 (apply filter-map__0 _g115640_))
                ((let () (declare (not safe)) (##fx= _g115641_ 3))
                 (apply filter-map__1 _g115640_))
                ((let () (declare (not safe)) (##fx>= _g115641_ 3))
                 (apply filter-map* _g115640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g115640_))))))
    (define __filter-map*
      (lambda (_%f110399%_ . _%rest110400%_)
        (let ((_%f110403%_ _%f110399%_))
          (let _%recur110412%_ ((_%rest110414%_ _%rest110400%_))
            (if (let* ((_%f110417%_ pair?)
                       (_%lst110420%_ _%rest110414%_)
                       (_%f110425%_ _%f110417%_))
                  (__andmap1 _%f110425%_ _%lst110420%_))
                (let ((_%$e110442%_
                       (let ((__tmp115642 (map car _%rest110414%_)))
                         (declare (not safe))
                         (##apply _%f110403%_ __tmp115642))))
                  (if _%$e110442%_
                      (cons _%$e110442%_
                            (_%recur110412%_ (map cdr _%rest110414%_)))
                      (_%recur110412%_ (map cdr _%rest110414%_))))
                '())))))
    (define filter-map*
      (lambda (_%f110384%_ . _%rest110385%_)
        (if (procedure? _%f110384%_)
            (let ((_%f110389%_ _%f110384%_))
              (declare (not safe))
              (##apply __filter-map* _%f110389%_ _%rest110385%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f110384%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key110360%_ _%lst110362%_ _%default110364%_)
        (let ((_%$e110367%_
               (if (pair? _%lst110362%_)
                   (assq _%key110360%_ _%lst110362%_)
                   '#f)))
          (if _%$e110367%_
              (cdr _%$e110367%_)
              (if (procedure? _%default110364%_)
                  (_%default110364%_ _%key110360%_)
                  _%default110364%_)))))
    (define agetq__0
      (lambda (_%key110375%_ _%lst110376%_)
        (let ((_%default110378%_ '#f))
          (agetq__% _%key110375%_ _%lst110376%_ _%default110378%_))))
    (define agetq
      (lambda _g115643_
        (let ((_g115644_ (let () (declare (not safe)) (##length _g115643_))))
          (cond ((let () (declare (not safe)) (##fx= _g115644_ 2))
                 (apply agetq__0 _g115643_))
                ((let () (declare (not safe)) (##fx= _g115644_ 3))
                 (apply agetq__% _g115643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g115643_))))))
    (define agetv__%
      (lambda (_%key110335%_ _%lst110337%_ _%default110339%_)
        (let ((_%$e110342%_
               (if (pair? _%lst110337%_)
                   (assv _%key110335%_ _%lst110337%_)
                   '#f)))
          (if _%$e110342%_
              (cdr _%$e110342%_)
              (if (procedure? _%default110339%_)
                  (_%default110339%_ _%key110335%_)
                  _%default110339%_)))))
    (define agetv__0
      (lambda (_%key110350%_ _%lst110351%_)
        (let ((_%default110353%_ '#f))
          (agetv__% _%key110350%_ _%lst110351%_ _%default110353%_))))
    (define agetv
      (lambda _g115645_
        (let ((_g115646_ (let () (declare (not safe)) (##length _g115645_))))
          (cond ((let () (declare (not safe)) (##fx= _g115646_ 2))
                 (apply agetv__0 _g115645_))
                ((let () (declare (not safe)) (##fx= _g115646_ 3))
                 (apply agetv__% _g115645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g115645_))))))
    (define aget__%
      (lambda (_%key110310%_ _%lst110312%_ _%default110314%_)
        (let ((_%$e110317%_
               (if (pair? _%lst110312%_)
                   (assoc _%key110310%_ _%lst110312%_)
                   '#f)))
          (if _%$e110317%_
              (cdr _%$e110317%_)
              (if (procedure? _%default110314%_)
                  (_%default110314%_ _%key110310%_)
                  _%default110314%_)))))
    (define aget__0
      (lambda (_%key110325%_ _%lst110326%_)
        (let ((_%default110328%_ '#f))
          (aget__% _%key110325%_ _%lst110326%_ _%default110328%_))))
    (define aget
      (lambda _g115647_
        (let ((_g115648_ (let () (declare (not safe)) (##length _g115647_))))
          (cond ((let () (declare (not safe)) (##fx= _g115648_ 2))
                 (apply aget__0 _g115647_))
                ((let () (declare (not safe)) (##fx= _g115648_ 3))
                 (apply aget__% _g115647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g115647_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key110239%_ _%lst110241%_ _%default110243%_)
        (let _%lp110246%_ ((_%rest110249%_ _%lst110241%_))
          (let* ((_%rest110251110261%_ _%rest110249%_)
                 (_%else110253110269%_
                  (lambda ()
                    (if (procedure? _%default110243%_)
                        (_%default110243%_ _%key110239%_)
                        _%default110243%_)))
                 (_%K110255110278%_
                  (lambda (_%rest110272%_ _%v110273%_ _%k110275%_)
                    (if (eq? _%k110275%_ _%key110239%_)
                        _%v110273%_
                        (_%lp110246%_ _%rest110272%_)))))
            (if (pair? _%rest110251110261%_)
                (let ((_%hd110256110281%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110251110261%_)))
                      (_%tl110257110283%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110251110261%_))))
                  (let ((_%k110286%_ _%hd110256110281%_))
                    (if (pair? _%tl110257110283%_)
                        (let ((_%hd110258110288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110257110283%_)))
                              (_%tl110259110290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110257110283%_))))
                          (let* ((_%v110293%_ _%hd110258110288%_)
                                 (_%rest110295%_ _%tl110259110290%_))
                            (_%K110255110278%_
                             _%rest110295%_
                             _%v110293%_
                             _%k110286%_)))
                        (_%else110253110269%_))))
                (_%else110253110269%_))))))
    (define pgetq__0
      (lambda (_%key110300%_ _%lst110301%_)
        (let ((_%default110303%_ '#f))
          (pgetq__% _%key110300%_ _%lst110301%_ _%default110303%_))))
    (define pgetq
      (lambda _g115649_
        (let ((_g115650_ (let () (declare (not safe)) (##length _g115649_))))
          (cond ((let () (declare (not safe)) (##fx= _g115650_ 2))
                 (apply pgetq__0 _g115649_))
                ((let () (declare (not safe)) (##fx= _g115650_ 3))
                 (apply pgetq__% _g115649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g115649_))))))
    (define pgetv__%
      (lambda (_%key110168%_ _%lst110170%_ _%default110172%_)
        (let _%lp110175%_ ((_%rest110178%_ _%lst110170%_))
          (let* ((_%rest110180110190%_ _%rest110178%_)
                 (_%else110182110198%_
                  (lambda ()
                    (if (procedure? _%default110172%_)
                        (_%default110172%_ _%key110168%_)
                        _%default110172%_)))
                 (_%K110184110207%_
                  (lambda (_%rest110201%_ _%v110202%_ _%k110204%_)
                    (if (eqv? _%k110204%_ _%key110168%_)
                        _%v110202%_
                        (_%lp110175%_ _%rest110201%_)))))
            (if (pair? _%rest110180110190%_)
                (let ((_%hd110185110210%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110180110190%_)))
                      (_%tl110186110212%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110180110190%_))))
                  (let ((_%k110215%_ _%hd110185110210%_))
                    (if (pair? _%tl110186110212%_)
                        (let ((_%hd110187110217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110186110212%_)))
                              (_%tl110188110219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110186110212%_))))
                          (let* ((_%v110222%_ _%hd110187110217%_)
                                 (_%rest110224%_ _%tl110188110219%_))
                            (_%K110184110207%_
                             _%rest110224%_
                             _%v110222%_
                             _%k110215%_)))
                        (_%else110182110198%_))))
                (_%else110182110198%_))))))
    (define pgetv__0
      (lambda (_%key110229%_ _%lst110230%_)
        (let ((_%default110232%_ '#f))
          (pgetv__% _%key110229%_ _%lst110230%_ _%default110232%_))))
    (define pgetv
      (lambda _g115651_
        (let ((_g115652_ (let () (declare (not safe)) (##length _g115651_))))
          (cond ((let () (declare (not safe)) (##fx= _g115652_ 2))
                 (apply pgetv__0 _g115651_))
                ((let () (declare (not safe)) (##fx= _g115652_ 3))
                 (apply pgetv__% _g115651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g115651_))))))
    (define pget__%
      (lambda (_%key110097%_ _%lst110099%_ _%default110101%_)
        (let _%lp110104%_ ((_%rest110107%_ _%lst110099%_))
          (let* ((_%rest110109110119%_ _%rest110107%_)
                 (_%else110111110127%_
                  (lambda ()
                    (if (procedure? _%default110101%_)
                        (_%default110101%_ _%key110097%_)
                        _%default110101%_)))
                 (_%K110113110136%_
                  (lambda (_%rest110130%_ _%v110131%_ _%k110133%_)
                    (if (equal? _%k110133%_ _%key110097%_)
                        _%v110131%_
                        (_%lp110104%_ _%rest110130%_)))))
            (if (pair? _%rest110109110119%_)
                (let ((_%hd110114110139%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110109110119%_)))
                      (_%tl110115110141%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110109110119%_))))
                  (let ((_%k110144%_ _%hd110114110139%_))
                    (if (pair? _%tl110115110141%_)
                        (let ((_%hd110116110146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110115110141%_)))
                              (_%tl110117110148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110115110141%_))))
                          (let* ((_%v110151%_ _%hd110116110146%_)
                                 (_%rest110153%_ _%tl110117110148%_))
                            (_%K110113110136%_
                             _%rest110153%_
                             _%v110151%_
                             _%k110144%_)))
                        (_%else110111110127%_))))
                (_%else110111110127%_))))))
    (define pget__0
      (lambda (_%key110158%_ _%lst110159%_)
        (let ((_%default110161%_ '#f))
          (pget__% _%key110158%_ _%lst110159%_ _%default110161%_))))
    (define pget
      (lambda _g115653_
        (let ((_g115654_ (let () (declare (not safe)) (##length _g115653_))))
          (cond ((let () (declare (not safe)) (##fx= _g115654_ 2))
                 (apply pget__0 _g115653_))
                ((let () (declare (not safe)) (##fx= _g115654_ 3))
                 (apply pget__% _g115653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g115653_))))))
    (define __find
      (lambda (_%pred110057%_ _%lst110058%_)
        (let* ((_%pred110061%_ _%pred110057%_)
               (_%$e110092%_
                (let* ((_%proc110070%_ _%pred110061%_)
                       (_%lst110073%_ _%lst110058%_)
                       (_%proc110078%_ _%proc110070%_))
                  (__memf _%proc110078%_ _%lst110073%_))))
          (if _%$e110092%_
              (let () (declare (not safe)) (##car _%$e110092%_))
              '#f))))
    (define find
      (lambda (_%pred110042%_ _%lst110043%_)
        (if (procedure? _%pred110042%_)
            (let ((_%pred110047%_ _%pred110042%_))
              (__find _%pred110047%_ _%lst110043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred110042%_)
              '#!void))))
    (define __memf
      (lambda (_%proc109992%_ _%lst109993%_)
        (let ((_%proc109996%_ _%proc109992%_))
          (let _%lp110005%_ ((_%rest110007%_ _%lst109993%_))
            (let* ((_%rest110008110016%_ _%rest110007%_)
                   (_%else110010110024%_ (lambda () '#f))
                   (_%K110012110030%_
                    (lambda (_%tl110027%_ _%hd110028%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109996%_ _%hd110028%_))
                          _%rest110007%_
                          (_%lp110005%_ _%tl110027%_)))))
              (if (pair? _%rest110008110016%_)
                  (let ((_%hd110013110033%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110008110016%_)))
                        (_%tl110014110035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110008110016%_))))
                    (let* ((_%hd110038%_ _%hd110013110033%_)
                           (_%tl110040%_ _%tl110014110035%_))
                      (_%K110012110030%_ _%tl110040%_ _%hd110038%_)))
                  (_%else110010110024%_)))))))
    (define memf
      (lambda (_%proc109977%_ _%lst109978%_)
        (if (procedure? _%proc109977%_)
            (let ((_%proc109982%_ _%proc109977%_))
              (__memf _%proc109982%_ _%lst109978%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc109977%_)
              '#!void))))
    (define remove1
      (lambda (_%el109900%_ _%lst109902%_)
        (let _%lp109905%_ ((_%rest109908%_ _%lst109902%_) (_%r109910%_ '()))
          (let* ((_%rest109912109920%_ _%rest109908%_)
                 (_%else109914109928%_ (lambda () _%lst109902%_))
                 (_%K109916109965%_
                  (lambda (_%rest109931%_ _%hd109932%_)
                    (if (equal? _%el109900%_ _%hd109932%_)
                        (let* ((_%f109935%_ cons)
                               (_%iv109938%_ _%rest109931%_)
                               (_%lst109941%_ _%r109910%_)
                               (_%f109946%_ _%f109935%_))
                          (__foldl1 _%f109946%_ _%iv109938%_ _%lst109941%_))
                        (_%lp109905%_
                         _%rest109931%_
                         (cons _%hd109932%_ _%r109910%_))))))
            (if (pair? _%rest109912109920%_)
                (let ((_%hd109917109968%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109912109920%_)))
                      (_%tl109918109970%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109912109920%_))))
                  (let* ((_%hd109973%_ _%hd109917109968%_)
                         (_%rest109975%_ _%tl109918109970%_))
                    (_%K109916109965%_ _%rest109975%_ _%hd109973%_)))
                (_%else109914109928%_))))))
    (define remv1
      (lambda (_%el109823%_ _%lst109825%_)
        (let _%lp109828%_ ((_%rest109831%_ _%lst109825%_) (_%r109833%_ '()))
          (let* ((_%rest109835109843%_ _%rest109831%_)
                 (_%else109837109851%_ (lambda () _%lst109825%_))
                 (_%K109839109888%_
                  (lambda (_%rest109854%_ _%hd109855%_)
                    (if (eqv? _%el109823%_ _%hd109855%_)
                        (let* ((_%f109858%_ cons)
                               (_%iv109861%_ _%rest109854%_)
                               (_%lst109864%_ _%r109833%_)
                               (_%f109869%_ _%f109858%_))
                          (__foldl1 _%f109869%_ _%iv109861%_ _%lst109864%_))
                        (_%lp109828%_
                         _%rest109854%_
                         (cons _%hd109855%_ _%r109833%_))))))
            (if (pair? _%rest109835109843%_)
                (let ((_%hd109840109891%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109835109843%_)))
                      (_%tl109841109893%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109835109843%_))))
                  (let* ((_%hd109896%_ _%hd109840109891%_)
                         (_%rest109898%_ _%tl109841109893%_))
                    (_%K109839109888%_ _%rest109898%_ _%hd109896%_)))
                (_%else109837109851%_))))))
    (define remq1
      (lambda (_%el109746%_ _%lst109748%_)
        (let _%lp109751%_ ((_%rest109754%_ _%lst109748%_) (_%r109756%_ '()))
          (let* ((_%rest109758109766%_ _%rest109754%_)
                 (_%else109760109774%_ (lambda () _%lst109748%_))
                 (_%K109762109811%_
                  (lambda (_%rest109777%_ _%hd109778%_)
                    (if (eq? _%el109746%_ _%hd109778%_)
                        (let* ((_%f109781%_ cons)
                               (_%iv109784%_ _%rest109777%_)
                               (_%lst109787%_ _%r109756%_)
                               (_%f109792%_ _%f109781%_))
                          (__foldl1 _%f109792%_ _%iv109784%_ _%lst109787%_))
                        (_%lp109751%_
                         _%rest109777%_
                         (cons _%hd109778%_ _%r109756%_))))))
            (if (pair? _%rest109758109766%_)
                (let ((_%hd109763109814%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109758109766%_)))
                      (_%tl109764109816%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109758109766%_))))
                  (let* ((_%hd109819%_ _%hd109763109814%_)
                         (_%rest109821%_ _%tl109764109816%_))
                    (_%K109762109811%_ _%rest109821%_ _%hd109819%_)))
                (_%else109760109774%_))))))
    (define __remf
      (lambda (_%proc109663%_ _%lst109664%_)
        (let ((_%proc109667%_ _%proc109663%_))
          (let _%lp109676%_ ((_%rest109678%_ _%lst109664%_) (_%r109679%_ '()))
            (let* ((_%rest109680109688%_ _%rest109678%_)
                   (_%else109682109696%_ (lambda () _%lst109664%_))
                   (_%K109684109734%_
                    (lambda (_%rest109699%_ _%hd109700%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109667%_ _%hd109700%_))
                          (let* ((_%f109702%_ cons)
                                 (_%iv109705%_ _%rest109699%_)
                                 (_%lst109708%_ _%r109679%_)
                                 (_%f109713%_ _%f109702%_))
                            (__foldl1 _%f109713%_ _%iv109705%_ _%lst109708%_))
                          (_%lp109676%_
                           _%rest109699%_
                           (cons _%hd109700%_ _%r109679%_))))))
              (if (pair? _%rest109680109688%_)
                  (let ((_%hd109685109737%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109680109688%_)))
                        (_%tl109686109739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109680109688%_))))
                    (let* ((_%hd109742%_ _%hd109685109737%_)
                           (_%rest109744%_ _%tl109686109739%_))
                      (_%K109684109734%_ _%rest109744%_ _%hd109742%_)))
                  (_%else109682109696%_)))))))
    (define remf
      (lambda (_%proc109648%_ _%lst109649%_)
        (if (procedure? _%proc109648%_)
            (let ((_%proc109653%_ _%proc109648%_))
              (__remf _%proc109653%_ _%lst109649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc109648%_)
              '#!void))))
    (define __1+
      (lambda (_%x109636%_)
        (let ((_%x109639%_ _%x109636%_)) (+ _%x109639%_ '1))))
    (define 1+
      (lambda (_%x109622%_)
        (if (number? _%x109622%_)
            (let ((_%x109626%_ _%x109622%_)) (__1+ _%x109626%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x109622%_)
              '#!void))))
    (define __1-
      (lambda (_%x109610%_)
        (let ((_%x109613%_ _%x109610%_)) (- _%x109613%_ '1))))
    (define 1-
      (lambda (_%x109596%_)
        (if (number? _%x109596%_)
            (let ((_%x109600%_ _%x109596%_)) (__1- _%x109600%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x109596%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x109584%_)
        (let ((_%x109587%_ _%x109584%_))
          (declare (not safe))
          (##fx+ _%x109587%_ '1))))
    (define fx1+
      (lambda (_%x109570%_)
        (if (fixnum? _%x109570%_)
            (let ((_%x109574%_ _%x109570%_)) (__fx1+ _%x109574%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x109570%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x109558%_)
        (let ((_%x109561%_ _%x109558%_))
          (declare (not safe))
          (##fx- _%x109561%_ '1))))
    (define fx1-
      (lambda (_%x109544%_)
        (if (fixnum? _%x109544%_)
            (let ((_%x109548%_ _%x109544%_)) (__fx1- _%x109548%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x109544%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x109541%_)
        (if (fixnum? _%x109541%_)
            (let () (declare (not safe)) (##fx>= _%x109541%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x109538%_)
        (if (fixnum? _%x109538%_)
            (let () (declare (not safe)) (##fx> _%x109538%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x109535%_)
        (let () (declare (not safe)) (##fx= _%x109535%_ '0))))
    (define fx<0?
      (lambda (_%x109532%_)
        (if (fixnum? _%x109532%_)
            (let () (declare (not safe)) (##fx< _%x109532%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x109529%_)
        (if (fixnum? _%x109529%_)
            (let () (declare (not safe)) (##fx<= _%x109529%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x109526%_)
        (if (symbol? _%x109526%_) (not (uninterned-symbol? _%x109526%_)) '#f)))
    (define __display-as-string
      (lambda (_%x109420%_ _%port109421%_)
        (let ((_%port109424%_ _%port109421%_))
          (if (or (string? _%x109420%_)
                  (symbol? _%x109420%_)
                  (keyword? _%x109420%_)
                  (number? _%x109420%_)
                  (char? _%x109420%_))
              (display _%x109420%_ _%port109424%_)
              (if (pair? _%x109420%_)
                  (let ()
                    (let* ((_%x109447%_
                            (let () (declare (not safe)) (##car _%x109420%_)))
                           (_%port109450%_ _%port109424%_))
                      (if (output-port? _%port109450%_)
                          (let ((_%port109455%_ _%port109450%_))
                            (__display-as-string _%x109447%_ _%port109455%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109450%_)
                            '#!void)))
                    (let* ((_%x109470%_
                            (let () (declare (not safe)) (##cdr _%x109420%_)))
                           (_%port109473%_ _%port109424%_))
                      (if (output-port? _%port109473%_)
                          (let ((_%port109478%_ _%port109473%_))
                            (__display-as-string _%x109470%_ _%port109478%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109473%_)
                            '#!void))))
                  (if (vector? _%x109420%_)
                      (vector-for-each
                       (lambda (_%g109489109491%_)
                         (let* ((_%x109494%_ _%g109489109491%_)
                                (_%port109497%_ _%port109424%_))
                           (if (output-port? _%port109497%_)
                               (let ((_%port109502%_ _%port109497%_))
                                 (__display-as-string
                                  _%x109494%_
                                  _%port109502%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port109497%_)
                                 '#!void))))
                       _%x109420%_)
                      (if (or (null? _%x109420%_)
                              (eq? _%x109420%_ '#!void)
                              (eof-object? _%x109420%_)
                              (boolean? _%x109420%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x109420%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x109405%_ _%port109406%_)
        (if (output-port? _%port109406%_)
            (let ((_%port109410%_ _%port109406%_))
              (__display-as-string _%x109405%_ _%port109410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port109406%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x109345%_)
        (if (string? _%x109345%_)
            _%x109345%_
            (if (symbol? _%x109345%_)
                (let () (declare (not safe)) (##symbol->string _%x109345%_))
                (if (keyword? _%x109345%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x109345%_))
                    (if (number? _%x109345%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x109345%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g109351109353%_)
                           (let* ((_%x109356%_ _%x109345%_)
                                  (_%port109359%_ _%g109351109353%_))
                             (if (output-port? _%port109359%_)
                                 (let ((_%port109364%_ _%port109359%_))
                                   (__display-as-string
                                    _%x109356%_
                                    _%port109364%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port109359%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args109378%_
        (call-with-output-string
         '()
         (lambda (_%g109379109381%_)
           (let* ((_%x109384%_ _%args109378%_)
                  (_%port109387%_ _%g109379109381%_))
             (if (output-port? _%port109387%_)
                 (let ((_%port109392%_ _%port109387%_))
                   (__display-as-string _%x109384%_ _%port109392%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port109387%_)
                   '#!void)))))))
    (define as-string
      (lambda _g115655_
        (let ((_g115656_ (let () (declare (not safe)) (##length _g115655_))))
          (cond ((let () (declare (not safe)) (##fx= _g115656_ 1))
                 (apply as-string__0 _g115655_))
                (#t
                 (apply (lambda _%args109378%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args109378%_)))
                        _g115655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g115655_))))))
    (define make-symbol__0
      (lambda (_%x109341%_)
        (if (interned-symbol? _%x109341%_)
            _%x109341%_
            (let ((__tmp115657 (as-string__0 _%x109341%_)))
              (declare (not safe))
              (##string->symbol __tmp115657)))))
    (define make-symbol__1
      (lambda _%args109343%_
        (let ((__tmp115658
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109343%_))))
          (declare (not safe))
          (##string->symbol __tmp115658))))
    (define make-symbol
      (lambda _g115659_
        (let ((_g115660_ (let () (declare (not safe)) (##length _g115659_))))
          (cond ((let () (declare (not safe)) (##fx= _g115660_ 1))
                 (apply make-symbol__0 _g115659_))
                (#t
                 (apply (lambda _%args109343%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args109343%_)))
                        _g115659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g115659_))))))
    (define make-keyword__0
      (lambda (_%x109337%_)
        (if (interned-keyword? _%x109337%_)
            _%x109337%_
            (let ((__tmp115661 (as-string__0 _%x109337%_)))
              (declare (not safe))
              (##string->keyword __tmp115661)))))
    (define make-keyword__1
      (lambda _%args109339%_
        (let ((__tmp115662
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109339%_))))
          (declare (not safe))
          (##string->keyword __tmp115662))))
    (define make-keyword
      (lambda _g115663_
        (let ((_g115664_ (let () (declare (not safe)) (##length _g115663_))))
          (cond ((let () (declare (not safe)) (##fx= _g115664_ 1))
                 (apply make-keyword__0 _g115663_))
                (#t
                 (apply (lambda _%args109339%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args109339%_)))
                        _g115663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g115663_))))))
    (define interned-keyword?
      (lambda (_%x109334%_)
        (if (keyword? _%x109334%_)
            (not (uninterned-keyword? _%x109334%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym109322%_)
        (let ((_%sym109325%_ _%sym109322%_))
          (if (uninterned-symbol? _%sym109325%_)
              (let ((__tmp115665
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109325%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp115665))
              (let ((__tmp115666
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109325%_))))
                (declare (not safe))
                (##string->keyword __tmp115666))))))
    (define symbol->keyword
      (lambda (_%sym109308%_)
        (if (symbol? _%sym109308%_)
            (let ((_%sym109312%_ _%sym109308%_))
              (__symbol->keyword _%sym109312%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym109308%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym109296%_)
        (let ((_%sym109299%_ _%sym109296%_))
          (if (uninterned-keyword? _%sym109299%_)
              (let ((__tmp115667
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109299%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp115667))
              (let ((__tmp115668
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109299%_))))
                (declare (not safe))
                (##string->symbol __tmp115668))))))
    (define keyword->symbol
      (lambda (_%sym109282%_)
        (if (keyword? _%sym109282%_)
            (let ((_%sym109286%_ _%sym109282%_))
              (__keyword->symbol _%sym109286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym109282%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr109242%_ _%enc109243%_)
        (let* ((_%bstr109246%_ _%bstr109242%_) (_%enc109254%_ _%enc109243%_))
          (if (eq? _%enc109254%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr109246%_))
              (let* ((_%in109263%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc109254%_
                                   (cons 'init: (cons _%bstr109246%_ '()))))))
                     (_%len109265%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr109246%_)))
                     (_%out109267%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len109265%_)))
                     (_%n109269%_
                      (read-substring
                       _%out109267%_
                       '0
                       _%len109265%_
                       _%in109263%_)))
                (string-shrink! _%out109267%_ _%n109269%_)
                _%out109267%_)))))
    (define __bytes->string__0
      (lambda (_%bstr109275%_)
        (let ((_%enc109277%_ 'UTF-8))
          (__bytes->string__% _%bstr109275%_ _%enc109277%_))))
    (define __bytes->string
      (lambda _g115669_
        (let ((_g115670_ (let () (declare (not safe)) (##length _g115669_))))
          (cond ((let () (declare (not safe)) (##fx= _g115670_ 1))
                 (apply __bytes->string__0 _g115669_))
                ((let () (declare (not safe)) (##fx= _g115670_ 2))
                 (apply __bytes->string__% _g115669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g115669_))))))
    (define bytes->string__%
      (lambda (_%bstr109206%_ _%enc109207%_)
        (if (u8vector? _%bstr109206%_)
            (let ((_%bstr109211%_ _%bstr109206%_))
              (if (symbol? _%enc109207%_)
                  (let ((_%enc109221%_ _%enc109207%_))
                    (__bytes->string__% _%bstr109211%_ _%enc109221%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc109207%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr109206%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr109234%_)
        (let ((_%enc109236%_ 'UTF-8))
          (bytes->string__% _%bstr109234%_ _%enc109236%_))))
    (define bytes->string
      (lambda _g115671_
        (let ((_g115672_ (let () (declare (not safe)) (##length _g115671_))))
          (cond ((let () (declare (not safe)) (##fx= _g115672_ 1))
                 (apply bytes->string__0 _g115671_))
                ((let () (declare (not safe)) (##fx= _g115672_ 2))
                 (apply bytes->string__% _g115671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g115671_))))))
    (define __string->bytes__%
      (lambda (_%str109124%_ _%enc109125%_)
        (let* ((_%str109128%_ _%str109124%_) (_%enc109136%_ _%enc109125%_))
          (if (eq? _%enc109136%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str109128%_))
              (let* ((_%str109145%_ _%str109128%_)
                     (_%start109148%_ '0)
                     (_%end109151%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str109128%_)))
                     (_%enc109154%_ _%enc109136%_)
                     (_%str109159%_ _%str109145%_))
                (if (nonnegative-fixnum? _%start109148%_)
                    (let ((_%start109175%_ _%start109148%_))
                      (if (nonnegative-fixnum? _%end109151%_)
                          (let ((_%end109185%_ _%end109151%_))
                            (__substring->bytes__%
                             _%str109159%_
                             _%start109175%_
                             _%end109185%_
                             _%enc109154%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end109151%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start109148%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str109198%_)
        (let ((_%enc109200%_ 'UTF-8))
          (__string->bytes__% _%str109198%_ _%enc109200%_))))
    (define __string->bytes
      (lambda _g115673_
        (let ((_g115674_ (let () (declare (not safe)) (##length _g115673_))))
          (cond ((let () (declare (not safe)) (##fx= _g115674_ 1))
                 (apply __string->bytes__0 _g115673_))
                ((let () (declare (not safe)) (##fx= _g115674_ 2))
                 (apply __string->bytes__% _g115673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g115673_))))))
    (define string->bytes__%
      (lambda (_%str109088%_ _%enc109089%_)
        (if (string? _%str109088%_)
            (let ((_%str109093%_ _%str109088%_))
              (if (symbol? _%enc109089%_)
                  (let ((_%enc109103%_ _%enc109089%_))
                    (__string->bytes__% _%str109093%_ _%enc109103%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc109089%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str109088%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str109116%_)
        (let ((_%enc109118%_ 'UTF-8))
          (string->bytes__% _%str109116%_ _%enc109118%_))))
    (define string->bytes
      (lambda _g115675_
        (let ((_g115676_ (let () (declare (not safe)) (##length _g115675_))))
          (cond ((let () (declare (not safe)) (##fx= _g115676_ 1))
                 (apply string->bytes__0 _g115675_))
                ((let () (declare (not safe)) (##fx= _g115676_ 2))
                 (apply string->bytes__% _g115675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g115675_))))))
    (define __substring->bytes__%
      (lambda (_%str109040%_ _%start109041%_ _%end109042%_ _%enc109043%_)
        (let* ((_%str109046%_ _%str109040%_)
               (_%start109054%_ _%start109041%_)
               (_%end109062%_ _%end109042%_))
          (if (eq? _%enc109043%_ 'UTF-8)
              (string->utf8 _%str109046%_ _%start109054%_ _%end109062%_)
              (let ((_%out109071%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc109043%_ '())))))
                (write-substring
                 _%str109046%_
                 _%start109054%_
                 _%end109062%_
                 _%out109071%_)
                (get-output-u8vector _%out109071%_))))))
    (define __substring->bytes__0
      (lambda (_%str109076%_ _%start109077%_ _%end109078%_)
        (let ((_%enc109080%_ 'UTF-8))
          (__substring->bytes__%
           _%str109076%_
           _%start109077%_
           _%end109078%_
           _%enc109080%_))))
    (define __substring->bytes
      (lambda _g115677_
        (let ((_g115678_ (let () (declare (not safe)) (##length _g115677_))))
          (cond ((let () (declare (not safe)) (##fx= _g115678_ 3))
                 (apply __substring->bytes__0 _g115677_))
                ((let () (declare (not safe)) (##fx= _g115678_ 4))
                 (apply __substring->bytes__% _g115677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g115677_))))))
    (define substring->bytes__%
      (lambda (_%str108988%_ _%start108989%_ _%end108990%_ _%enc108991%_)
        (if (string? _%str108988%_)
            (let ((_%str108995%_ _%str108988%_))
              (if (nonnegative-fixnum? _%start108989%_)
                  (let ((_%start109005%_ _%start108989%_))
                    (if (nonnegative-fixnum? _%end108990%_)
                        (let ((_%end109015%_ _%end108990%_))
                          (__substring->bytes__%
                           _%str108995%_
                           _%start109005%_
                           _%end109015%_
                           _%enc108991%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end108990%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start108989%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str108988%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str109028%_ _%start109029%_ _%end109030%_)
        (let ((_%enc109032%_ 'UTF-8))
          (substring->bytes__%
           _%str109028%_
           _%start109029%_
           _%end109030%_
           _%enc109032%_))))
    (define substring->bytes
      (lambda _g115679_
        (let ((_g115680_ (let () (declare (not safe)) (##length _g115679_))))
          (cond ((let () (declare (not safe)) (##fx= _g115680_ 3))
                 (apply substring->bytes__0 _g115679_))
                ((let () (declare (not safe)) (##fx= _g115680_ 4))
                 (apply substring->bytes__% _g115679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g115679_))))))
    (define __string-empty?
      (lambda (_%str108975%_)
        (let* ((_%str108978%_ _%str108975%_)
               (__tmp115681
                (let () (declare (not safe)) (##string-length _%str108978%_))))
          (declare (not safe))
          (##fxzero? __tmp115681))))
    (define string-empty?
      (lambda (_%str108961%_)
        (if (string? _%str108961%_)
            (let ((_%str108965%_ _%str108961%_))
              (__string-empty? _%str108965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str108961%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str108901%_ _%char108902%_ _%start108903%_)
        (let* ((_%str108906%_ _%str108901%_)
               (_%char108914%_ _%char108902%_)
               (_%start108922%_ _%start108903%_)
               (_%len108931%_
                (let () (declare (not safe)) (##string-length _%str108906%_))))
          (let _%lp108933%_ ((_%k108935%_ _%start108922%_))
            (let ((_%k108937%_ _%k108935%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k108937%_ _%len108931%_))
                  (if (eq? _%char108914%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108906%_ _%k108937%_)))
                      _%k108937%_
                      (_%lp108933%_
                       (let () (declare (not safe)) (##fx+ _%k108937%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str108952%_ _%char108953%_)
        (let ((_%start108955%_ '0))
          (__string-index__% _%str108952%_ _%char108953%_ _%start108955%_))))
    (define __string-index
      (lambda _g115682_
        (let ((_g115683_ (let () (declare (not safe)) (##length _g115682_))))
          (cond ((let () (declare (not safe)) (##fx= _g115683_ 2))
                 (apply __string-index__0 _g115682_))
                ((let () (declare (not safe)) (##fx= _g115683_ 3))
                 (apply __string-index__% _g115682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g115682_))))))
    (define string-index__%
      (lambda (_%str108852%_ _%char108853%_ _%start108854%_)
        (if (string? _%str108852%_)
            (let ((_%str108858%_ _%str108852%_))
              (if (char? _%char108853%_)
                  (let ((_%char108868%_ _%char108853%_))
                    (if (nonnegative-fixnum? _%start108854%_)
                        (let ((_%start108878%_ _%start108854%_))
                          (__string-index__%
                           _%str108858%_
                           _%char108868%_
                           _%start108878%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start108854%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                     'contract:
                     'char?
                     'value:
                     _%char108853%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.21-706.24"
               'contract:
               'string?
               'value:
               _%str108852%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str108891%_ _%char108892%_)
        (let ((_%start108894%_ '0))
          (string-index__% _%str108891%_ _%char108892%_ _%start108894%_))))
    (define string-index
      (lambda _g115684_
        (let ((_g115685_ (let () (declare (not safe)) (##length _g115684_))))
          (cond ((let () (declare (not safe)) (##fx= _g115685_ 2))
                 (apply string-index__0 _g115684_))
                ((let () (declare (not safe)) (##fx= _g115685_ 3))
                 (apply string-index__% _g115684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g115684_))))))
    (define __string-rindex__%
      (lambda (_%str108794%_ _%char108795%_ _%start108796%_)
        (let* ((_%str108799%_ _%str108794%_)
               (_%char108807%_ _%char108795%_)
               (_%len108816%_
                (let () (declare (not safe)) (##string-length _%str108799%_)))
               (_%start108818%_
                (if (fixnum? _%start108796%_)
                    _%start108796%_
                    (let () (declare (not safe)) (##fx- _%len108816%_ '1)))))
          (let _%lp108821%_ ((_%k108823%_ _%start108818%_))
            (let ((_%k108825%_ _%k108823%_))
              (if (let () (declare (not safe)) (##fx>= _%k108825%_ '0))
                  (if (eq? _%char108807%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108799%_ _%k108825%_)))
                      _%k108825%_
                      (_%lp108821%_
                       (let () (declare (not safe)) (##fx- _%k108825%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str108842%_ _%char108843%_)
        (let ((_%start108845%_ '#f))
          (__string-rindex__% _%str108842%_ _%char108843%_ _%start108845%_))))
    (define __string-rindex
      (lambda _g115686_
        (let ((_g115687_ (let () (declare (not safe)) (##length _g115686_))))
          (cond ((let () (declare (not safe)) (##fx= _g115687_ 2))
                 (apply __string-rindex__0 _g115686_))
                ((let () (declare (not safe)) (##fx= _g115687_ 3))
                 (apply __string-rindex__% _g115686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g115686_))))))
    (define string-rindex__%
      (lambda (_%str108755%_ _%char108756%_ _%start108757%_)
        (if (string? _%str108755%_)
            (let ((_%str108761%_ _%str108755%_))
              (if (char? _%char108756%_)
                  (let ((_%char108771%_ _%char108756%_))
                    (__string-rindex__%
                     _%str108761%_
                     _%char108771%_
                     _%start108757%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                     'contract:
                     'char?
                     'value:
                     _%char108756%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.22-717.25"
               'contract:
               'string?
               'value:
               _%str108755%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str108784%_ _%char108785%_)
        (let ((_%start108787%_ '#f))
          (string-rindex__% _%str108784%_ _%char108785%_ _%start108787%_))))
    (define string-rindex
      (lambda _g115688_
        (let ((_g115689_ (let () (declare (not safe)) (##length _g115688_))))
          (cond ((let () (declare (not safe)) (##fx= _g115689_ 2))
                 (apply string-rindex__0 _g115688_))
                ((let () (declare (not safe)) (##fx= _g115689_ 3))
                 (apply string-rindex__% _g115688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g115688_))))))
    (define __string-split
      (lambda (_%str108652%_ _%char108653%_)
        (let* ((_%str108656%_ _%str108652%_)
               (_%char108664%_ _%char108653%_)
               (_%len108673%_
                (let () (declare (not safe)) (##string-length _%str108656%_))))
          (let _%lp108675%_ ((_%start108677%_ '0) (_%r108678%_ '()))
            (let* ((_%start108681%_ _%start108677%_)
                   (_%$e108739%_
                    (let* ((_%str108694%_ _%str108656%_)
                           (_%char108697%_ _%char108664%_)
                           (_%start108700%_ _%start108681%_)
                           (_%str108705%_ _%str108694%_)
                           (_%char108719%_ _%char108697%_))
                      (if (nonnegative-fixnum? _%start108700%_)
                          (let ((_%start108729%_ _%start108700%_))
                            (__string-index__%
                             _%str108705%_
                             _%char108719%_
                             _%start108729%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108700%_)
                            '#!void)))))
              (if _%$e108739%_
                  (let ((_%end108744%_ _%$e108739%_))
                    (_%lp108675%_
                     (let () (declare (not safe)) (##fx+ _%end108744%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str108656%_
                              _%start108681%_
                              _%end108744%_))
                           _%r108678%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108681%_ _%len108673%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108656%_
                                _%start108681%_
                                _%len108673%_)))
                       _%r108678%_)
                      (reverse! _%r108678%_))))))))
    (define string-split
      (lambda (_%str108627%_ _%char108628%_)
        (if (string? _%str108627%_)
            (let ((_%str108632%_ _%str108627%_))
              (if (char? _%char108628%_)
                  (let ((_%char108642%_ _%char108628%_))
                    (__string-split _%str108632%_ _%char108642%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char108628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str108627%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108477%_ _%join108478%_)
        (letrec ((_%join-length108481%_
                  (lambda (_%strs108565%_ _%jlen108566%_)
                    (let _%lp108568%_ ((_%rest108570%_ _%strs108565%_)
                                       (_%len108571%_ '0))
                      (let* ((_%len108573%_ _%len108571%_)
                             (_%rest108581108589%_ _%rest108570%_)
                             (_%else108583108597%_ (lambda () '0))
                             (_%K108585108615%_
                              (lambda (_%rest108600%_ _%hd108601%_)
                                (if (string? _%hd108601%_)
                                    (let ((_%hd108603%_ _%hd108601%_))
                                      (if (pair? _%rest108600%_)
                                          (_%lp108568%_
                                           _%rest108600%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108603%_))
                                                _%jlen108566%_
                                                _%len108573%_))
                                          (let ((__tmp115690
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108603%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp115690
                                                   _%len108573%_))))
                                    (error '"expected string" _%hd108601%_)))))
                        (if (pair? _%rest108581108589%_)
                            (let ((_%hd108586108618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest108581108589%_)))
                                  (_%tl108587108620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest108581108589%_))))
                              (let* ((_%hd108623%_ _%hd108586108618%_)
                                     (_%rest108625%_ _%tl108587108620%_))
                                (_%K108585108615%_
                                 _%rest108625%_
                                 _%hd108623%_)))
                            (_%else108583108597%_)))))))
          (let* ((_%join108486%_
                  (if (char? _%join108478%_)
                      (let () (declare (not safe)) (##string _%join108478%_))
                      (if (string? _%join108478%_)
                          _%join108478%_
                          (error '"expected string or char" _%join108478%_))))
                 (_%jlen108488%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108486%_)))
                 (_%olen108490%_
                  (_%join-length108481%_ _%strs108477%_ _%jlen108488%_))
                 (_%ostr108492%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108490%_))))
            (let _%lp108495%_ ((_%rest108497%_ _%strs108477%_)
                               (_%k108498%_ '0))
              (let* ((_%k108501%_ _%k108498%_)
                     (_%rest108517108525%_ _%rest108497%_)
                     (_%else108519108533%_ (lambda () '""))
                     (_%K108521108553%_
                      (lambda (_%rest108536%_ _%hd108537%_)
                        (let* ((_%hd108539%_ _%hd108537%_)
                               (_%hdlen108551%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108539%_))))
                          (if (pair? _%rest108536%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108539%_
                                   '0
                                   _%hdlen108551%_
                                   _%ostr108492%_
                                   _%k108501%_))
                                (let ((__tmp115691
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108501%_ _%hdlen108551%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108486%_
                                   '0
                                   _%jlen108488%_
                                   _%ostr108492%_
                                   __tmp115691))
                                (_%lp108495%_
                                 _%rest108536%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108501%_
                                          _%hdlen108551%_
                                          _%jlen108488%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108539%_
                                   '0
                                   _%hdlen108551%_
                                   _%ostr108492%_
                                   _%k108501%_))
                                _%ostr108492%_))))))
                (if (pair? _%rest108517108525%_)
                    (let ((_%hd108522108556%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest108517108525%_)))
                          (_%tl108523108558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest108517108525%_))))
                      (let* ((_%hd108561%_ _%hd108522108556%_)
                             (_%rest108563%_ _%tl108523108558%_))
                        (_%K108521108553%_ _%rest108563%_ _%hd108561%_)))
                    (_%else108519108533%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108417%_ _%port108418%_ _%start108419%_ _%end108420%_)
        (let* ((_%bytes108423%_ _%bytes108417%_)
               (_%port108431%_ _%port108418%_)
               (_%start108439%_ _%start108419%_)
               (_%end108447%_ _%end108420%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108423%_
           _%start108439%_
           _%end108447%_
           _%port108431%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108459%_ _%port108460%_)
        (let* ((_%start108462%_ '0)
               (_%end108464%_ (u8vector-length _%bytes108459%_)))
          (__read-u8vector__%
           _%bytes108459%_
           _%port108460%_
           _%start108462%_
           _%end108464%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108466%_ _%port108467%_ _%start108468%_)
        (let ((_%end108470%_ (u8vector-length _%bytes108466%_)))
          (__read-u8vector__%
           _%bytes108466%_
           _%port108467%_
           _%start108468%_
           _%end108470%_))))
    (define __read-u8vector
      (lambda _g115692_
        (let ((_g115693_ (let () (declare (not safe)) (##length _g115692_))))
          (cond ((let () (declare (not safe)) (##fx= _g115693_ 2))
                 (apply __read-u8vector__0 _g115692_))
                ((let () (declare (not safe)) (##fx= _g115693_ 3))
                 (apply __read-u8vector__1 _g115692_))
                ((let () (declare (not safe)) (##fx= _g115693_ 4))
                 (apply __read-u8vector__% _g115692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g115692_))))))
    (define read-u8vector__%
      (lambda (_%bytes108342%_ _%port108343%_ _%start108344%_ _%end108345%_)
        (if (u8vector? _%bytes108342%_)
            (let ((_%bytes108349%_ _%bytes108342%_))
              (if (input-port? _%port108343%_)
                  (let ((_%port108359%_ _%port108343%_))
                    (if (and (fixnum? _%start108344%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start108344%_ '0))
                             (let ((__tmp115694
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes108349%_))))
                               (declare (not safe))
                               (##fx< _%start108344%_ __tmp115694)))
                        (let ((_%start108372%_ _%start108344%_))
                          (if (and (fixnum? _%end108345%_)
                                   (let ((__tmp115695
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes108349%_))))
                                     (declare (not safe))
                                     (##fx<= _%start108372%_
                                             _%end108345%_
                                             __tmp115695)))
                              (let ((_%end108385%_ _%end108345%_))
                                (__read-u8vector__%
                                 _%bytes108349%_
                                 _%port108359%_
                                 _%start108372%_
                                 _%end108385%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@796.22-796.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end108345%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start108344%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port108343%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@792.22-792.27"
               'contract:
               'u8vector?
               'value:
               _%bytes108342%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes108398%_ _%port108399%_)
        (let* ((_%start108401%_ '0)
               (_%end108403%_ (u8vector-length _%bytes108398%_)))
          (read-u8vector__%
           _%bytes108398%_
           _%port108399%_
           _%start108401%_
           _%end108403%_))))
    (define read-u8vector__1
      (lambda (_%bytes108405%_ _%port108406%_ _%start108407%_)
        (let ((_%end108409%_ (u8vector-length _%bytes108405%_)))
          (read-u8vector__%
           _%bytes108405%_
           _%port108406%_
           _%start108407%_
           _%end108409%_))))
    (define read-u8vector
      (lambda _g115696_
        (let ((_g115697_ (let () (declare (not safe)) (##length _g115696_))))
          (cond ((let () (declare (not safe)) (##fx= _g115697_ 2))
                 (apply read-u8vector__0 _g115696_))
                ((let () (declare (not safe)) (##fx= _g115697_ 3))
                 (apply read-u8vector__1 _g115696_))
                ((let () (declare (not safe)) (##fx= _g115697_ 4))
                 (apply read-u8vector__% _g115696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g115696_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108281%_ _%port108282%_ _%start108283%_ _%end108284%_)
        (let* ((_%bytes108287%_ _%bytes108281%_)
               (_%port108295%_ _%port108282%_)
               (_%start108303%_ _%start108283%_)
               (_%end108311%_ _%end108284%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108287%_
           _%start108303%_
           _%end108311%_
           _%port108295%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108323%_ _%port108324%_)
        (let* ((_%start108326%_ '0)
               (_%end108328%_ (u8vector-length _%bytes108323%_)))
          (__write-u8vector__%
           _%bytes108323%_
           _%port108324%_
           _%start108326%_
           _%end108328%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108330%_ _%port108331%_ _%start108332%_)
        (let ((_%end108334%_ (u8vector-length _%bytes108330%_)))
          (__write-u8vector__%
           _%bytes108330%_
           _%port108331%_
           _%start108332%_
           _%end108334%_))))
    (define __write-u8vector
      (lambda _g115698_
        (let ((_g115699_ (let () (declare (not safe)) (##length _g115698_))))
          (cond ((let () (declare (not safe)) (##fx= _g115699_ 2))
                 (apply __write-u8vector__0 _g115698_))
                ((let () (declare (not safe)) (##fx= _g115699_ 3))
                 (apply __write-u8vector__1 _g115698_))
                ((let () (declare (not safe)) (##fx= _g115699_ 4))
                 (apply __write-u8vector__% _g115698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g115698_))))))
    (define write-u8vector__%
      (lambda (_%bytes108211%_ _%port108212%_ _%start108213%_ _%end108214%_)
        (if (u8vector? _%bytes108211%_)
            (let ((_%bytes108218%_ _%bytes108211%_))
              (if (output-port? _%port108212%_)
                  (let* ((_%port108228%_ _%port108212%_)
                         (_%start108237%_ _%start108213%_))
                    (if (and (fixnum? _%end108214%_)
                             (let ((__tmp115700
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes108218%_))))
                               (declare (not safe))
                               (##fx<= _%start108237%_
                                       _%end108214%_
                                       __tmp115700)))
                        (let ((_%end108249%_ _%end108214%_))
                          (__write-u8vector__%
                           _%bytes108218%_
                           _%port108228%_
                           _%start108237%_
                           _%end108249%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end108214%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port108212%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@802.23-802.28"
               'contract:
               'u8vector?
               'value:
               _%bytes108211%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes108262%_ _%port108263%_)
        (let* ((_%start108265%_ '0)
               (_%end108267%_ (u8vector-length _%bytes108262%_)))
          (write-u8vector__%
           _%bytes108262%_
           _%port108263%_
           _%start108265%_
           _%end108267%_))))
    (define write-u8vector__1
      (lambda (_%bytes108269%_ _%port108270%_ _%start108271%_)
        (let ((_%end108273%_ (u8vector-length _%bytes108269%_)))
          (write-u8vector__%
           _%bytes108269%_
           _%port108270%_
           _%start108271%_
           _%end108273%_))))
    (define write-u8vector
      (lambda _g115701_
        (let ((_g115702_ (let () (declare (not safe)) (##length _g115701_))))
          (cond ((let () (declare (not safe)) (##fx= _g115702_ 2))
                 (apply write-u8vector__0 _g115701_))
                ((let () (declare (not safe)) (##fx= _g115702_ 3))
                 (apply write-u8vector__1 _g115701_))
                ((let () (declare (not safe)) (##fx= _g115702_ 4))
                 (apply write-u8vector__% _g115701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g115701_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag108179%_
               _%dbg-exprs108180%_
               _%dbg-thunks108181%_
               _%expr108182%_
               _%thunk108183%_)
        (letrec ((_%o108185%_ (current-output-port))
                 (_%e108186%_ (current-error-port))
                 (_%p108187%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f108188%_
                  (lambda ()
                    (force-output _%o108185%_)
                    (force-output _%e108186%_)))
                 (_%d108189%_
                  (lambda (_%x108196%_) (display _%x108196%_ _%e108186%_)))
                 (_%w108190%_
                  (lambda (_%x108198%_) (_%p108187%_ _%x108198%_ _%e108186%_)))
                 (_%n108191%_ (lambda () (newline _%e108186%_)))
                 (_%v108192%_
                  (lambda (_%l108201%_)
                    (for-each
                     (lambda (_%x108203%_)
                       (_%d108189%_ '" ")
                       (_%w108190%_ _%x108203%_))
                     _%l108201%_)
                    (_%n108191%_)))
                 (_%x108193%_
                  (lambda (_%expr108205%_ _%thunk108206%_)
                    (_%f108188%_)
                    (_%d108189%_ '"  ")
                    (_%w108190%_ _%expr108205%_)
                    (_%d108189%_ '" =>")
                    (call-with-values
                     _%thunk108206%_
                     (lambda _%x108208%_
                       (_%v108192%_ _%x108208%_)
                       (_%f108188%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x108208%_)))))))
          (if _%tag108179%_
              (begin
                (if (eq? _%tag108179%_ '#!void)
                    '#!void
                    (begin
                      (_%f108188%_)
                      (_%d108189%_ _%tag108179%_)
                      (_%n108191%_)))
                (for-each _%x108193%_ _%dbg-exprs108180%_ _%dbg-thunks108181%_)
                (if _%thunk108183%_
                    (_%x108193%_ _%expr108182%_ _%thunk108183%_)
                    '#!void))
              (if _%thunk108183%_ (_%thunk108183%_) '#!void)))))))
