(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1783939344)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args115193%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args115193%_))
          (newline))))
    (define display*
      (lambda _%args115190%_
        (let () (declare (not safe)) (##for-each display _%args115190%_))))
    (define __file-newer?
      (lambda (_%file1114981%_ _%file2114982%_)
        (let* ((_%file1114985%_ _%file1114981%_)
               (_%file2114993%_ _%file2114982%_))
          (letrec ((_%__modification-time115137%_
                    (lambda (_%file115178%_)
                      (let* ((_%file115181%_ _%file115178%_)
                             (__tmp118073
                              (let ((__tmp118074
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file115181%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp118074))))
                        (declare (not safe))
                        (##time->seconds __tmp118073))))
                   (_%modification-time115138%_
                    (lambda (_%file115166%_)
                      (let ((_%file115169%_ _%file115166%_))
                        (_%__modification-time115137%_ _%file115169%_)))))
            (let ((__tmp118076
                   (let* ((_%file115140%_ _%file1114985%_)
                          (_%file115144%_ _%file115140%_))
                     (_%__modification-time115137%_ _%file115144%_)))
                  (__tmp118075
                   (let* ((_%file115153%_ _%file2114993%_)
                          (_%file115157%_ _%file115153%_))
                     (_%__modification-time115137%_ _%file115157%_))))
              (declare (not safe))
              (##fl> __tmp118076 __tmp118075))))))
    (define file-newer?
      (lambda (_%file1114956%_ _%file2114957%_)
        (if (string? _%file1114956%_)
            (let ((_%file1114961%_ _%file1114956%_))
              (if (string? _%file2114957%_)
                  (let ((_%file2114971%_ _%file2114957%_))
                    (__file-newer? _%file1114961%_ _%file2114971%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2114957%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1114956%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir114666%_ _%perms114667%_)
        (let* ((_%dir114670%_ _%dir114666%_) (_%perms114678%_ _%perms114667%_))
          (letrec ((_%__create1114822%_
                    (lambda (_%path114931%_)
                      (let ((_%path114934%_ _%path114931%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path114934%_))
                            (if (eq? (file-type _%path114934%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path114934%_)
                                  '#!void))
                            (if _%perms114678%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path114934%_
                                             (cons 'permissions:
                                                   (cons _%perms114678%_
                                                         '())))))
                                (create-directory _%path114934%_))))))
                   (_%create1114823%_
                    (lambda (_%path114919%_)
                      (let ((_%path114922%_ _%path114919%_))
                        (_%__create1114822%_ _%path114922%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir114670%_))
                '#!void
                (let _%lp114825%_ ((_%start114827%_ '0))
                  (let ((_%$e114884%_
                         (let* ((_%str114829%_ _%dir114670%_)
                                (_%criterion114832%_ '#\/)
                                (_%start114835%_ _%start114827%_)
                                (_%end114838%_ '#f)
                                (_%str114843%_ _%str114829%_))
                           (if (nonnegative-fixnum? _%start114835%_)
                               (let ((_%start114858%_ _%start114835%_))
                                 (if (let ((_%$e114870%_ '#t))
                                       (and _%$e114870%_ _%$e114870%_))
                                     (let ((_%end114874%_ _%end114838%_))
                                       (__string-index__%
                                        _%str114843%_
                                        _%criterion114832%_
                                        _%start114858%_
                                        _%end114874%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end114838%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start114835%_)
                                 '#!void)))))
                    (if _%$e114884%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e114884%_ '0))
                              (let* ((_%path114889%_
                                      (substring
                                       _%dir114670%_
                                       '0
                                       _%$e114884%_))
                                     (_%path114893%_ _%path114889%_))
                                (_%__create1114822%_ _%path114893%_))
                              '#!void)
                          (_%lp114825%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e114884%_ '1))))
                        (let* ((_%path114905%_ _%dir114670%_)
                               (_%path114909%_ _%path114905%_))
                          (_%__create1114822%_ _%path114909%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir114949%_)
        (let ((_%perms114951%_ '493))
          (__create-directory*__% _%dir114949%_ _%perms114951%_))))
    (define __create-directory*
      (lambda _g118077_
        (let ((_g118078_ (let () (declare (not safe)) (##length _g118077_))))
          (cond ((let () (declare (not safe)) (##fx= _g118078_ 1))
                 (apply __create-directory*__0 _g118077_))
                ((let () (declare (not safe)) (##fx= _g118078_ 2))
                 (apply __create-directory*__% _g118077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g118077_))))))
    (define create-directory*__%
      (lambda (_%dir114630%_ _%perms114631%_)
        (if (string? _%dir114630%_)
            (let ((_%dir114635%_ _%dir114630%_))
              (if (fixnum? _%perms114631%_)
                  (let ((_%perms114645%_ _%perms114631%_))
                    (__create-directory*__% _%dir114635%_ _%perms114645%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms114631%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir114630%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir114658%_)
        (let ((_%perms114660%_ '493))
          (create-directory*__% _%dir114658%_ _%perms114660%_))))
    (define create-directory*
      (lambda _g118079_
        (let ((_g118080_ (let () (declare (not safe)) (##length _g118079_))))
          (cond ((let () (declare (not safe)) (##fx= _g118080_ 1))
                 (apply create-directory*__0 _g118079_))
                ((let () (declare (not safe)) (##fx= _g118080_ 2))
                 (apply create-directory*__% _g118079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g118079_))))))
    (define __move-file__%
      (lambda (_%src114573%_ _%dest114574%_ _%replace?114575%_)
        (let* ((_%src114578%_ _%src114573%_)
               (_%dest114586%_ _%dest114574%_)
               (_%replace?114594%_ _%replace?114575%_))
          (letrec ((_%force-move-it114603%_
                    (lambda ()
                      (let ((_%tmp114609%_
                             (if _%replace?114594%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest114586%_))
                                     (let ((__tmp118081
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest114586%_
                                        '"."
                                        __tmp118081))
                                     '#f)
                                 '#f)))
                        (if _%tmp114609%_
                            (rename-file _%dest114586%_ _%tmp114609%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e114611%_)
                           (if _%tmp114609%_
                               (rename-file _%tmp114609%_ _%dest114586%_ '#t)
                               '#!void)
                           (raise _%e114611%_))
                         (lambda ()
                           (let ((_%fi114614%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src114578%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi114614%_))
                                      'symbolic-link)
                                 (let ((__tmp118082
                                        (path-normalize _%src114578%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp118082
                                    _%dest114586%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src114578%_
                                    _%dest114586%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src114578%_))
                           (if _%tmp114609%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp114609%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e114605%_)
               (if (let () (declare (not safe)) (##file-exists? _%src114578%_))
                   (_%force-move-it114603%_)
                   (raise _%e114605%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src114578%_
                  _%dest114586%_
                  _%replace?114594%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src114620%_ _%dest114621%_)
        (let ((_%replace?114623%_ '#t))
          (__move-file__% _%src114620%_ _%dest114621%_ _%replace?114623%_))))
    (define __move-file
      (lambda _g118083_
        (let ((_g118084_ (let () (declare (not safe)) (##length _g118083_))))
          (cond ((let () (declare (not safe)) (##fx= _g118084_ 2))
                 (apply __move-file__0 _g118083_))
                ((let () (declare (not safe)) (##fx= _g118084_ 3))
                 (apply __move-file__% _g118083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g118083_))))))
    (define move-file__%
      (lambda (_%src114524%_ _%dest114525%_ _%replace?114526%_)
        (if (string? _%src114524%_)
            (let ((_%src114530%_ _%src114524%_))
              (if (string? _%dest114525%_)
                  (let ((_%dest114540%_ _%dest114525%_))
                    (if (boolean? _%replace?114526%_)
                        (let ((_%replace?114550%_ _%replace?114526%_))
                          (__move-file__%
                           _%src114530%_
                           _%dest114540%_
                           _%replace?114550%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?114526%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest114525%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src114524%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src114563%_ _%dest114564%_)
        (let ((_%replace?114566%_ '#t))
          (move-file__% _%src114563%_ _%dest114564%_ _%replace?114566%_))))
    (define move-file
      (lambda _g118085_
        (let ((_g118086_ (let () (declare (not safe)) (##length _g118085_))))
          (cond ((let () (declare (not safe)) (##fx= _g118086_ 2))
                 (apply move-file__0 _g118085_))
                ((let () (declare (not safe)) (##fx= _g118086_ 3))
                 (apply move-file__% _g118085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g118085_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore114520%_ '#t))
    (define true? (lambda (_%obj114517%_) (eq? _%obj114517%_ '#t)))
    (define false (lambda _%ignore114514%_ '#f))
    (define void (lambda _%ignore114511%_ '#!void))
    (define void? (lambda (_%obj114508%_) (eq? _%obj114508%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj114505%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj114505%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj114502%_) (eq? _%obj114502%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj114499%_) (eq? _%obj114499%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj114496%_) (eq? _%obj114496%_ '#!optional)))
    (define immediate?
      (lambda (_%obj114493%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj114493%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj114490%_)
        (if (fixnum? _%obj114490%_)
            (let () (declare (not safe)) (##fx>= _%obj114490%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj114484%_)
        (let ((_%$e114487%_ (pair? _%obj114484%_)))
          (if _%$e114487%_ _%$e114487%_ (null? _%obj114484%_)))))
    (define values-count
      (lambda (_%obj114481%_)
        (if (let () (declare (not safe)) (##values? _%obj114481%_))
            (let () (declare (not safe)) (##values-length _%obj114481%_))
            '1)))
    (define __values-ref
      (lambda (_%obj114468%_ _%k114469%_)
        (let ((_%k114472%_ _%k114469%_))
          (if (let () (declare (not safe)) (##values? _%obj114468%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj114468%_ _%k114472%_))
              _%obj114468%_))))
    (define values-ref
      (lambda (_%obj114453%_ _%k114454%_)
        (if (fixnum? _%k114454%_)
            (let ((_%k114458%_ _%k114454%_))
              (__values-ref _%obj114453%_ _%k114458%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k114454%_)
              '#!void))))
    (define values->list
      (lambda (_%obj114450%_)
        (if (let () (declare (not safe)) (##values? _%obj114450%_))
            (let () (declare (not safe)) (##values->list _%obj114450%_))
            (list _%obj114450%_))))
    (define __foldl1
      (lambda (_%f114398%_ _%iv114399%_ _%lst114400%_)
        (let ((_%f114403%_ _%f114398%_))
          (let _%lp114412%_ ((_%rest114414%_ _%lst114400%_)
                             (_%r114415%_ _%iv114399%_))
            (let* ((_%$%rest114416114424%_ _%rest114414%_)
                   (_%$%else114418114432%_ (lambda () _%r114415%_))
                   (_%$%K114420114438%_
                    (lambda (_%rest114435%_ _%x114436%_)
                      (_%lp114412%_
                       _%rest114435%_
                       (let ()
                         (declare (not safe))
                         (_%f114403%_ _%x114436%_ _%r114415%_))))))
              (if (pair? _%$%rest114416114424%_)
                  (let ((_%$%hd114421114441%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114416114424%_)))
                        (_%$%tl114422114443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114416114424%_))))
                    (let* ((_%x114446%_ _%$%hd114421114441%_)
                           (_%rest114448%_ _%$%tl114422114443%_))
                      (_%$%K114420114438%_ _%rest114448%_ _%x114446%_)))
                  (_%$%else114418114432%_)))))))
    (define foldl1
      (lambda (_%f114382%_ _%iv114383%_ _%lst114384%_)
        (if (procedure? _%f114382%_)
            (let ((_%f114388%_ _%f114382%_))
              (__foldl1 _%f114388%_ _%iv114383%_ _%lst114384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f114382%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f114295%_ _%iv114296%_ _%lst1114297%_ _%lst2114298%_)
        (let ((_%f114301%_ _%f114295%_))
          (let _%lp114310%_ ((_%rest1114312%_ _%lst1114297%_)
                             (_%rest2114313%_ _%lst2114298%_)
                             (_%r114314%_ _%iv114296%_))
            (let* ((_%$%rest1114315114323%_ _%rest1114312%_)
                   (_%$%else114317114331%_ (lambda () _%r114314%_))
                   (_%$%K114319114370%_
                    (lambda (_%rest1114334%_ _%x1114335%_)
                      (let* ((_%$%rest2114336114344%_ _%rest2114313%_)
                             (_%$%else114338114352%_ (lambda () _%r114314%_))
                             (_%$%K114340114358%_
                              (lambda (_%rest2114355%_ _%x2114356%_)
                                (_%lp114310%_
                                 _%rest1114334%_
                                 _%rest2114355%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f114301%_
                                    _%x1114335%_
                                    _%x2114356%_
                                    _%r114314%_))))))
                        (if (pair? _%$%rest2114336114344%_)
                            (let ((_%$%hd114341114361%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2114336114344%_)))
                                  (_%$%tl114342114363%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2114336114344%_))))
                              (let* ((_%x2114366%_ _%$%hd114341114361%_)
                                     (_%rest2114368%_ _%$%tl114342114363%_))
                                (_%$%K114340114358%_
                                 _%rest2114368%_
                                 _%x2114366%_)))
                            (_%$%else114338114352%_))))))
              (if (pair? _%$%rest1114315114323%_)
                  (let ((_%$%hd114320114373%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1114315114323%_)))
                        (_%$%tl114321114375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1114315114323%_))))
                    (let* ((_%x1114378%_ _%$%hd114320114373%_)
                           (_%rest1114380%_ _%$%tl114321114375%_))
                      (_%$%K114319114370%_ _%rest1114380%_ _%x1114378%_)))
                  (_%$%else114317114331%_)))))))
    (define foldl2
      (lambda (_%f114278%_ _%iv114279%_ _%lst1114280%_ _%lst2114281%_)
        (if (procedure? _%f114278%_)
            (let ((_%f114285%_ _%f114278%_))
              (__foldl2
               _%f114285%_
               _%iv114279%_
               _%lst1114280%_
               _%lst2114281%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f114278%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f114211%_ _%iv114212%_ _%lst114213%_)
        (let* ((_%f114215%_ _%f114211%_)
               (_%iv114218%_ _%iv114212%_)
               (_%lst114221%_ _%lst114213%_))
          (if (procedure? _%f114215%_)
              (let ((_%f114226%_ _%f114215%_))
                (__foldl1 _%f114226%_ _%iv114218%_ _%lst114221%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f114215%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f114239%_ _%iv114240%_ _%lst1114241%_ _%lst2114242%_)
        (let* ((_%f114244%_ _%f114239%_)
               (_%iv114247%_ _%iv114240%_)
               (_%lst1114250%_ _%lst1114241%_)
               (_%lst2114253%_ _%lst2114242%_))
          (if (procedure? _%f114244%_)
              (let ((_%f114258%_ _%f114244%_))
                (__foldl2
                 _%f114258%_
                 _%iv114247%_
                 _%lst1114250%_
                 _%lst2114253%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f114244%_)
                '#!void)))))
    (define foldl
      (lambda _g118087_
        (let ((_g118088_ (let () (declare (not safe)) (##length _g118087_))))
          (cond ((let () (declare (not safe)) (##fx= _g118088_ 3))
                 (apply foldl__0 _g118087_))
                ((let () (declare (not safe)) (##fx= _g118088_ 4))
                 (apply foldl__1 _g118087_))
                ((let () (declare (not safe)) (##fx>= _g118088_ 4))
                 (apply foldl* _g118087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g118087_))))))
    (define __foldl*
      (lambda (_%f114142%_ _%iv114143%_ . _%rest114144%_)
        (let ((_%f114147%_ _%f114142%_))
          (let _%recur114156%_ ((_%iv114158%_ _%iv114143%_)
                                (_%rest114159%_ _%rest114144%_))
            (if (let* ((_%f114161%_ pair?)
                       (_%lst114164%_ _%rest114159%_)
                       (_%f114169%_ _%f114161%_))
                  (__andmap1 _%f114169%_ _%lst114164%_))
                (_%recur114156%_
                 (let ((__tmp118089
                        (let* ((_%f114188%_
                                (lambda (_%xs114185%_ _%r114186%_)
                                  (cons (car _%xs114185%_) _%r114186%_)))
                               (_%iv114191%_ (list _%iv114158%_))
                               (_%lst114194%_ _%rest114159%_)
                               (_%f114199%_ _%f114188%_))
                          (__foldr1 _%f114199%_ _%iv114191%_ _%lst114194%_))))
                   (declare (not safe))
                   (##apply _%f114147%_ __tmp118089))
                 (map cdr _%rest114159%_))
                _%iv114158%_)))))
    (define foldl*
      (lambda (_%f114126%_ _%iv114127%_ . _%rest114128%_)
        (if (procedure? _%f114126%_)
            (let ((_%f114132%_ _%f114126%_))
              (declare (not safe))
              (##apply __foldl* _%f114132%_ _%iv114127%_ _%rest114128%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f114126%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f114075%_ _%iv114076%_ _%lst114077%_)
        (let ((_%f114080%_ _%f114075%_))
          (let _%recur114089%_ ((_%rest114091%_ _%lst114077%_))
            (let* ((_%$%rest114092114100%_ _%rest114091%_)
                   (_%$%else114094114108%_ (lambda () _%iv114076%_))
                   (_%$%K114096114114%_
                    (lambda (_%rest114111%_ _%x114112%_)
                      (let ((__tmp118090 (_%recur114089%_ _%rest114111%_)))
                        (declare (not safe))
                        (_%f114080%_ _%x114112%_ __tmp118090)))))
              (if (pair? _%$%rest114092114100%_)
                  (let ((_%$%hd114097114117%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114092114100%_)))
                        (_%$%tl114098114119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114092114100%_))))
                    (let* ((_%x114122%_ _%$%hd114097114117%_)
                           (_%rest114124%_ _%$%tl114098114119%_))
                      (_%$%K114096114114%_ _%rest114124%_ _%x114122%_)))
                  (_%$%else114094114108%_)))))))
    (define foldr1
      (lambda (_%f114059%_ _%iv114060%_ _%lst114061%_)
        (if (procedure? _%f114059%_)
            (let ((_%f114065%_ _%f114059%_))
              (__foldr1 _%f114065%_ _%iv114060%_ _%lst114061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f114059%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f113973%_ _%iv113974%_ _%lst1113975%_ _%lst2113976%_)
        (let ((_%f113979%_ _%f113973%_))
          (let _%recur113988%_ ((_%rest1113990%_ _%lst1113975%_)
                                (_%rest2113991%_ _%lst2113976%_))
            (let* ((_%$%rest1113992114000%_ _%rest1113990%_)
                   (_%$%else113994114008%_ (lambda () _%iv113974%_))
                   (_%$%K113996114047%_
                    (lambda (_%rest1114011%_ _%x1114012%_)
                      (let* ((_%$%rest2114013114021%_ _%rest2113991%_)
                             (_%$%else114015114029%_ (lambda () _%iv113974%_))
                             (_%$%K114017114035%_
                              (lambda (_%rest2114032%_ _%x2114033%_)
                                (let ((__tmp118091
                                       (_%recur113988%_
                                        _%rest1114011%_
                                        _%rest2114032%_)))
                                  (declare (not safe))
                                  (_%f113979%_
                                   _%x1114012%_
                                   _%x2114033%_
                                   __tmp118091)))))
                        (if (pair? _%$%rest2114013114021%_)
                            (let ((_%$%hd114018114038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2114013114021%_)))
                                  (_%$%tl114019114040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2114013114021%_))))
                              (let* ((_%x2114043%_ _%$%hd114018114038%_)
                                     (_%rest2114045%_ _%$%tl114019114040%_))
                                (_%$%K114017114035%_
                                 _%rest2114045%_
                                 _%x2114043%_)))
                            (_%$%else114015114029%_))))))
              (if (pair? _%$%rest1113992114000%_)
                  (let ((_%$%hd113997114050%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113992114000%_)))
                        (_%$%tl113998114052%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113992114000%_))))
                    (let* ((_%x1114055%_ _%$%hd113997114050%_)
                           (_%rest1114057%_ _%$%tl113998114052%_))
                      (_%$%K113996114047%_ _%rest1114057%_ _%x1114055%_)))
                  (_%$%else113994114008%_)))))))
    (define foldr2
      (lambda (_%f113956%_ _%iv113957%_ _%lst1113958%_ _%lst2113959%_)
        (if (procedure? _%f113956%_)
            (let ((_%f113963%_ _%f113956%_))
              (__foldr2
               _%f113963%_
               _%iv113957%_
               _%lst1113958%_
               _%lst2113959%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f113956%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f113889%_ _%iv113890%_ _%lst113891%_)
        (let* ((_%f113893%_ _%f113889%_)
               (_%iv113896%_ _%iv113890%_)
               (_%lst113899%_ _%lst113891%_))
          (if (procedure? _%f113893%_)
              (let ((_%f113904%_ _%f113893%_))
                (__foldr1 _%f113904%_ _%iv113896%_ _%lst113899%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113893%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f113917%_ _%iv113918%_ _%lst1113919%_ _%lst2113920%_)
        (let* ((_%f113922%_ _%f113917%_)
               (_%iv113925%_ _%iv113918%_)
               (_%lst1113928%_ _%lst1113919%_)
               (_%lst2113931%_ _%lst2113920%_))
          (if (procedure? _%f113922%_)
              (let ((_%f113936%_ _%f113922%_))
                (__foldr2
                 _%f113936%_
                 _%iv113925%_
                 _%lst1113928%_
                 _%lst2113931%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113922%_)
                '#!void)))))
    (define foldr
      (lambda _g118092_
        (let ((_g118093_ (let () (declare (not safe)) (##length _g118092_))))
          (cond ((let () (declare (not safe)) (##fx= _g118093_ 3))
                 (apply foldr__0 _g118092_))
                ((let () (declare (not safe)) (##fx= _g118093_ 4))
                 (apply foldr__1 _g118092_))
                ((let () (declare (not safe)) (##fx>= _g118093_ 4))
                 (apply foldr* _g118092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g118092_))))))
    (define __foldr*
      (lambda (_%f113821%_ _%iv113822%_ . _%rest113823%_)
        (let ((_%f113826%_ _%f113821%_))
          (let _%recur113835%_ ((_%rest113837%_ _%rest113823%_))
            (if (let* ((_%f113839%_ pair?)
                       (_%lst113842%_ _%rest113837%_)
                       (_%f113847%_ _%f113839%_))
                  (__andmap1 _%f113847%_ _%lst113842%_))
                (let ((__tmp118094
                       (let* ((_%f113866%_
                               (lambda (_%xs113863%_ _%r113864%_)
                                 (cons (car _%xs113863%_) _%r113864%_)))
                              (_%iv113869%_
                               (list (_%recur113835%_
                                      (map cdr _%rest113837%_))))
                              (_%lst113872%_ _%rest113837%_)
                              (_%f113877%_ _%f113866%_))
                         (__foldr1 _%f113877%_ _%iv113869%_ _%lst113872%_))))
                  (declare (not safe))
                  (##apply _%f113826%_ __tmp118094))
                _%iv113822%_)))))
    (define foldr*
      (lambda (_%f113805%_ _%iv113806%_ . _%rest113807%_)
        (if (procedure? _%f113805%_)
            (let ((_%f113811%_ _%f113805%_))
              (declare (not safe))
              (##apply __foldr* _%f113811%_ _%iv113806%_ _%rest113807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f113805%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists113692%_)
        (letrec ((_%process-tails!113694%_
                  (lambda (_%previous-cell113749%_ _%rest113750%_)
                    (let* ((_%$%rest113751113764%_ _%rest113750%_)
                           (_%$%E113755113768%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest113751113764%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K113760113795%_
                             (lambda (_%r113793%_)
                               (let ((__tmp118096 _%previous-cell113749%_)
                                     (__tmp118095 (remove-nulls! _%r113793%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp118096 __tmp118095))))
                            (_%$%K113757113782%_
                             (lambda (_%r113780%_)
                               (_%process-tails!113694%_
                                _%rest113750%_
                                _%r113780%_)))
                            (_%$%K113756113773%_ (lambda () '#!void)))
                        (if (pair? _%$%rest113751113764%_)
                            (let ((_%$%tl113762113800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest113751113764%_)))
                                  (_%$%hd113761113798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest113751113764%_))))
                              (if (null? _%$%hd113761113798%_)
                                  (let ((_%r113803%_ _%$%tl113762113800%_))
                                    (_%$%K113760113795%_ _%r113803%_))
                                  (let ((_%r113788%_ _%$%tl113762113800%_))
                                    (_%$%K113757113782%_ _%r113788%_))))
                            '#!void))))))
          (let* ((_%$%lists113695113708%_ _%lists113692%_)
                 (_%$%E113699113712%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists113695113708%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K113704113739%_
                   (lambda (_%r113737%_) (remove-nulls! _%r113737%_)))
                  (_%$%K113701113726%_
                   (lambda (_%r113724%_)
                     (_%process-tails!113694%_ _%lists113692%_ _%r113724%_)
                     _%lists113692%_))
                  (_%$%K113700113717%_ (lambda () _%lists113692%_)))
              (if (pair? _%$%lists113695113708%_)
                  (let ((_%$%tl113706113744%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists113695113708%_)))
                        (_%$%hd113705113742%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists113695113708%_))))
                    (if (null? _%$%hd113705113742%_)
                        (let ((_%r113747%_ _%$%tl113706113744%_))
                          (remove-nulls! _%r113747%_))
                        (let ((_%r113732%_ _%$%tl113706113744%_))
                          (_%$%K113701113726%_ _%r113732%_))))
                  (_%$%K113700113717%_)))))))
    (define append1!
      (lambda (_%l113677%_ _%x113678%_)
        (let ((_%l2113681%_ (cons _%x113678%_ '())))
          (if (pair? _%l113677%_)
              (let ((_%l113683%_ _%l113677%_))
                (let ((__tmp118097
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l113683%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp118097 _%l2113681%_))
                _%l113683%_)
              _%l2113681%_))))
    (define __append-reverse-until
      (lambda (_%pred113619%_ _%rhead113620%_ _%tail113621%_)
        (let ((_%pred113624%_ _%pred113619%_))
          (let _%loop113633%_ ((_%rhead113635%_ _%rhead113620%_)
                               (_%tail113636%_ _%tail113621%_))
            (let* ((_%$%rhead113638113647%_ _%rhead113635%_)
                   (_%$%E113641113651%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead113638113647%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K113645113674%_
                     (lambda () (values '() _%tail113636%_)))
                    (_%$%K113642113658%_
                     (lambda (_%r113655%_ _%a113656%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred113624%_ _%a113656%_))
                           (values _%rhead113635%_ _%tail113636%_)
                           (_%loop113633%_
                            _%r113655%_
                            (cons _%a113656%_ _%tail113636%_))))))
                (let ((_%$%try-match113640113670%_
                       (lambda ()
                         (if (pair? _%$%rhead113638113647%_)
                             (let ((_%$%tl113644113663%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead113638113647%_)))
                                   (_%$%hd113643113661%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead113638113647%_))))
                               (let ((_%a113666%_ _%$%hd113643113661%_)
                                     (_%r113668%_ _%$%tl113644113663%_))
                                 (_%$%K113642113658%_
                                  _%r113668%_
                                  _%a113666%_)))
                             (_%$%E113641113651%_)))))
                  (if (null? _%$%rhead113638113647%_)
                      (_%$%K113645113674%_)
                      (_%$%try-match113640113670%_)))))))))
    (define append-reverse-until
      (lambda (_%pred113603%_ _%rhead113604%_ _%tail113605%_)
        (if (procedure? _%pred113603%_)
            (let ((_%pred113609%_ _%pred113603%_))
              (__append-reverse-until
               _%pred113609%_
               _%rhead113604%_
               _%tail113605%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred113603%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f113552%_ _%lst113553%_)
        (let ((_%f113556%_ _%f113552%_))
          (let _%lp113565%_ ((_%rest113567%_ _%lst113553%_))
            (let* ((_%$%rest113569113577%_ _%rest113567%_)
                   (_%$%else113571113585%_ (lambda () '#t))
                   (_%$%K113573113591%_
                    (lambda (_%rest113588%_ _%x113589%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f113556%_ _%x113589%_))
                          (_%lp113565%_ _%rest113588%_)
                          '#f))))
              (if (pair? _%$%rest113569113577%_)
                  (let ((_%$%hd113574113594%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113569113577%_)))
                        (_%$%tl113575113596%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113569113577%_))))
                    (let* ((_%x113599%_ _%$%hd113574113594%_)
                           (_%rest113601%_ _%$%tl113575113596%_))
                      (_%$%K113573113591%_ _%rest113601%_ _%x113599%_)))
                  (_%$%else113571113585%_)))))))
    (define andmap1
      (lambda (_%f113537%_ _%lst113538%_)
        (if (procedure? _%f113537%_)
            (let ((_%f113542%_ _%f113537%_))
              (__andmap1 _%f113542%_ _%lst113538%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f113537%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f113451%_ _%lst1113452%_ _%lst2113453%_)
        (let ((_%f113456%_ _%f113451%_))
          (let _%lp113465%_ ((_%rest1113467%_ _%lst1113452%_)
                             (_%rest2113468%_ _%lst2113453%_))
            (let* ((_%$%rest1113470113478%_ _%rest1113467%_)
                   (_%$%else113472113486%_ (lambda () '#t))
                   (_%$%K113474113525%_
                    (lambda (_%rest1113489%_ _%x1113490%_)
                      (let* ((_%$%rest2113491113499%_ _%rest2113468%_)
                             (_%$%else113493113507%_ (lambda () '#t))
                             (_%$%K113495113513%_
                              (lambda (_%rest2113510%_ _%x2113511%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f113456%_ _%x1113490%_ _%x2113511%_))
                                    (_%lp113465%_
                                     _%rest1113489%_
                                     _%rest2113510%_)
                                    '#f))))
                        (if (pair? _%$%rest2113491113499%_)
                            (let ((_%$%hd113496113516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113491113499%_)))
                                  (_%$%tl113497113518%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113491113499%_))))
                              (let* ((_%x2113521%_ _%$%hd113496113516%_)
                                     (_%rest2113523%_ _%$%tl113497113518%_))
                                (_%$%K113495113513%_
                                 _%rest2113523%_
                                 _%x2113521%_)))
                            (_%$%else113493113507%_))))))
              (if (pair? _%$%rest1113470113478%_)
                  (let ((_%$%hd113475113528%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113470113478%_)))
                        (_%$%tl113476113530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113470113478%_))))
                    (let* ((_%x1113533%_ _%$%hd113475113528%_)
                           (_%rest1113535%_ _%$%tl113476113530%_))
                      (_%$%K113474113525%_ _%rest1113535%_ _%x1113533%_)))
                  (_%$%else113472113486%_)))))))
    (define andmap2
      (lambda (_%f113435%_ _%lst1113436%_ _%lst2113437%_)
        (if (procedure? _%f113435%_)
            (let ((_%f113441%_ _%f113435%_))
              (__andmap2 _%f113441%_ _%lst1113436%_ _%lst2113437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f113435%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f113379%_ _%lst113380%_)
        (let* ((_%f113382%_ _%f113379%_) (_%lst113385%_ _%lst113380%_))
          (if (procedure? _%f113382%_)
              (let ((_%f113390%_ _%f113382%_))
                (__andmap1 _%f113390%_ _%lst113385%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113382%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f113402%_ _%lst1113403%_ _%lst2113404%_)
        (let* ((_%f113406%_ _%f113402%_)
               (_%lst1113409%_ _%lst1113403%_)
               (_%lst2113412%_ _%lst2113404%_))
          (if (procedure? _%f113406%_)
              (let ((_%f113417%_ _%f113406%_))
                (__andmap2 _%f113417%_ _%lst1113409%_ _%lst2113412%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113406%_)
                '#!void)))))
    (define andmap
      (lambda _g118098_
        (let ((_g118099_ (let () (declare (not safe)) (##length _g118098_))))
          (cond ((let () (declare (not safe)) (##fx= _g118099_ 2))
                 (apply andmap__0 _g118098_))
                ((let () (declare (not safe)) (##fx= _g118099_ 3))
                 (apply andmap__1 _g118098_))
                ((let () (declare (not safe)) (##fx>= _g118099_ 3))
                 (apply andmap* _g118098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g118098_))))))
    (define __andmap*
      (lambda (_%f113336%_ . _%rest113337%_)
        (let ((_%f113340%_ _%f113336%_))
          (let _%recur113349%_ ((_%rest113351%_ _%rest113337%_))
            (if (let* ((_%f113354%_ pair?)
                       (_%lst113357%_ _%rest113351%_)
                       (_%f113362%_ _%f113354%_))
                  (__andmap1 _%f113362%_ _%lst113357%_))
                (if (let ((__tmp118100 (map car _%rest113351%_)))
                      (declare (not safe))
                      (##apply _%f113340%_ __tmp118100))
                    (_%recur113349%_ (map cdr _%rest113351%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f113321%_ . _%rest113322%_)
        (if (procedure? _%f113321%_)
            (let ((_%f113326%_ _%f113321%_))
              (declare (not safe))
              (##apply __andmap* _%f113326%_ _%rest113322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f113321%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f113268%_ _%lst113269%_)
        (let ((_%f113272%_ _%f113268%_))
          (let _%lp113281%_ ((_%rest113283%_ _%lst113269%_))
            (let* ((_%$%rest113284113292%_ _%rest113283%_)
                   (_%$%else113286113300%_ (lambda () '#f))
                   (_%$%K113288113309%_
                    (lambda (_%rest113303%_ _%x113304%_)
                      (let ((_%$e113306%_
                             (let ()
                               (declare (not safe))
                               (_%f113272%_ _%x113304%_))))
                        (if _%$e113306%_
                            _%$e113306%_
                            (_%lp113281%_ _%rest113303%_))))))
              (if (pair? _%$%rest113284113292%_)
                  (let ((_%$%hd113289113312%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113284113292%_)))
                        (_%$%tl113290113314%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113284113292%_))))
                    (let* ((_%x113317%_ _%$%hd113289113312%_)
                           (_%rest113319%_ _%$%tl113290113314%_))
                      (_%$%K113288113309%_ _%rest113319%_ _%x113317%_)))
                  (_%$%else113286113300%_)))))))
    (define ormap1
      (lambda (_%f113253%_ _%lst113254%_)
        (if (procedure? _%f113253%_)
            (let ((_%f113258%_ _%f113253%_))
              (__ormap1 _%f113258%_ _%lst113254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f113253%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f113165%_ _%lst1113166%_ _%lst2113167%_)
        (let ((_%f113170%_ _%f113165%_))
          (let _%lp113179%_ ((_%rest1113181%_ _%lst1113166%_)
                             (_%rest2113182%_ _%lst2113167%_))
            (let* ((_%$%rest1113183113191%_ _%rest1113181%_)
                   (_%$%else113185113199%_ (lambda () '#f))
                   (_%$%K113187113241%_
                    (lambda (_%rest1113202%_ _%x1113203%_)
                      (let* ((_%$%rest2113204113212%_ _%rest2113182%_)
                             (_%$%else113206113220%_ (lambda () '#f))
                             (_%$%K113208113229%_
                              (lambda (_%rest2113223%_ _%x2113224%_)
                                (let ((_%$e113226%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f113170%_
                                          _%x1113203%_
                                          _%x2113224%_))))
                                  (if _%$e113226%_
                                      _%$e113226%_
                                      (_%lp113179%_
                                       _%rest1113202%_
                                       _%rest2113223%_))))))
                        (if (pair? _%$%rest2113204113212%_)
                            (let ((_%$%hd113209113232%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113204113212%_)))
                                  (_%$%tl113210113234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113204113212%_))))
                              (let* ((_%x2113237%_ _%$%hd113209113232%_)
                                     (_%rest2113239%_ _%$%tl113210113234%_))
                                (_%$%K113208113229%_
                                 _%rest2113239%_
                                 _%x2113237%_)))
                            (_%$%else113206113220%_))))))
              (if (pair? _%$%rest1113183113191%_)
                  (let ((_%$%hd113188113244%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113183113191%_)))
                        (_%$%tl113189113246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113183113191%_))))
                    (let* ((_%x1113249%_ _%$%hd113188113244%_)
                           (_%rest1113251%_ _%$%tl113189113246%_))
                      (_%$%K113187113241%_ _%rest1113251%_ _%x1113249%_)))
                  (_%$%else113185113199%_)))))))
    (define ormap2
      (lambda (_%f113149%_ _%lst1113150%_ _%lst2113151%_)
        (if (procedure? _%f113149%_)
            (let ((_%f113155%_ _%f113149%_))
              (__ormap2 _%f113155%_ _%lst1113150%_ _%lst2113151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f113149%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f113093%_ _%lst113094%_)
        (let* ((_%f113096%_ _%f113093%_) (_%lst113099%_ _%lst113094%_))
          (if (procedure? _%f113096%_)
              (let ((_%f113104%_ _%f113096%_))
                (__ormap1 _%f113104%_ _%lst113099%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113096%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f113116%_ _%lst1113117%_ _%lst2113118%_)
        (let* ((_%f113120%_ _%f113116%_)
               (_%lst1113123%_ _%lst1113117%_)
               (_%lst2113126%_ _%lst2113118%_))
          (if (procedure? _%f113120%_)
              (let ((_%f113131%_ _%f113120%_))
                (__ormap2 _%f113131%_ _%lst1113123%_ _%lst2113126%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113120%_)
                '#!void)))))
    (define ormap
      (lambda _g118101_
        (let ((_g118102_ (let () (declare (not safe)) (##length _g118101_))))
          (cond ((let () (declare (not safe)) (##fx= _g118102_ 2))
                 (apply ormap__0 _g118101_))
                ((let () (declare (not safe)) (##fx= _g118102_ 3))
                 (apply ormap__1 _g118101_))
                ((let () (declare (not safe)) (##fx>= _g118102_ 3))
                 (apply ormap* _g118101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g118101_))))))
    (define __ormap*
      (lambda (_%f113049%_ . _%rest113050%_)
        (let ((_%f113053%_ _%f113049%_))
          (let _%recur113062%_ ((_%rest113064%_ _%rest113050%_))
            (if (let* ((_%f113066%_ pair?)
                       (_%lst113069%_ _%rest113064%_)
                       (_%f113074%_ _%f113066%_))
                  (__andmap1 _%f113074%_ _%lst113069%_))
                (let ((_%$e113090%_
                       (let ((__tmp118103 (map car _%rest113064%_)))
                         (declare (not safe))
                         (##apply _%f113053%_ __tmp118103))))
                  (if _%$e113090%_
                      _%$e113090%_
                      (_%recur113062%_ (map cdr _%rest113064%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f113034%_ . _%rest113035%_)
        (if (procedure? _%f113034%_)
            (let ((_%f113039%_ _%f113034%_))
              (declare (not safe))
              (##apply __ormap* _%f113039%_ _%rest113035%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f113034%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f112977%_ _%lst112978%_)
        (let ((_%f112981%_ _%f112977%_))
          (let _%recur112990%_ ((_%rest112992%_ _%lst112978%_))
            (let* ((_%$%rest112994113002%_ _%rest112992%_)
                   (_%$%else112996113010%_ (lambda () '()))
                   (_%$%K112998113022%_
                    (lambda (_%rest113013%_ _%x113014%_)
                      (let ((_%$e113016%_
                             (let ()
                               (declare (not safe))
                               (_%f112981%_ _%x113014%_))))
                        (if _%$e113016%_
                            (cons _%$e113016%_
                                  (_%recur112990%_ _%rest113013%_))
                            (_%recur112990%_ _%rest113013%_))))))
              (if (pair? _%$%rest112994113002%_)
                  (let ((_%$%hd112999113025%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112994113002%_)))
                        (_%$%tl113000113027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112994113002%_))))
                    (let* ((_%x113030%_ _%$%hd112999113025%_)
                           (_%rest113032%_ _%$%tl113000113027%_))
                      (_%$%K112998113022%_ _%rest113032%_ _%x113030%_)))
                  (_%$%else112996113010%_)))))))
    (define filter-map1
      (lambda (_%f112962%_ _%lst112963%_)
        (if (procedure? _%f112962%_)
            (let ((_%f112967%_ _%f112962%_))
              (__filter-map1 _%f112967%_ _%lst112963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f112962%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f112870%_ _%lst1112871%_ _%lst2112872%_)
        (let ((_%f112875%_ _%f112870%_))
          (let _%recur112884%_ ((_%rest1112886%_ _%lst1112871%_)
                                (_%rest2112887%_ _%lst2112872%_))
            (let* ((_%$%rest1112889112897%_ _%rest1112886%_)
                   (_%$%else112891112905%_ (lambda () '()))
                   (_%$%K112893112950%_
                    (lambda (_%rest1112908%_ _%x1112909%_)
                      (let* ((_%$%rest2112910112918%_ _%rest2112887%_)
                             (_%$%else112912112926%_ (lambda () '()))
                             (_%$%K112914112938%_
                              (lambda (_%rest2112929%_ _%x2112930%_)
                                (let ((_%$e112932%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f112875%_
                                          _%x1112909%_
                                          _%x2112930%_))))
                                  (if _%$e112932%_
                                      (cons _%$e112932%_
                                            (_%recur112884%_
                                             _%rest1112908%_
                                             _%rest2112929%_))
                                      (_%recur112884%_
                                       _%rest1112908%_
                                       _%rest2112929%_))))))
                        (if (pair? _%$%rest2112910112918%_)
                            (let ((_%$%hd112915112941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2112910112918%_)))
                                  (_%$%tl112916112943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2112910112918%_))))
                              (let* ((_%x2112946%_ _%$%hd112915112941%_)
                                     (_%rest2112948%_ _%$%tl112916112943%_))
                                (_%$%K112914112938%_
                                 _%rest2112948%_
                                 _%x2112946%_)))
                            (_%$%else112912112926%_))))))
              (if (pair? _%$%rest1112889112897%_)
                  (let ((_%$%hd112894112953%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1112889112897%_)))
                        (_%$%tl112895112955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1112889112897%_))))
                    (let* ((_%x1112958%_ _%$%hd112894112953%_)
                           (_%rest1112960%_ _%$%tl112895112955%_))
                      (_%$%K112893112950%_ _%rest1112960%_ _%x1112958%_)))
                  (_%$%else112891112905%_)))))))
    (define filter-map2
      (lambda (_%f112854%_ _%lst1112855%_ _%lst2112856%_)
        (if (procedure? _%f112854%_)
            (let ((_%f112860%_ _%f112854%_))
              (__filter-map2 _%f112860%_ _%lst1112855%_ _%lst2112856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f112854%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f112798%_ _%lst112799%_)
        (let* ((_%f112801%_ _%f112798%_) (_%lst112804%_ _%lst112799%_))
          (if (procedure? _%f112801%_)
              (let ((_%f112809%_ _%f112801%_))
                (__filter-map1 _%f112809%_ _%lst112804%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112801%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f112821%_ _%lst1112822%_ _%lst2112823%_)
        (let* ((_%f112825%_ _%f112821%_)
               (_%lst1112828%_ _%lst1112822%_)
               (_%lst2112831%_ _%lst2112823%_))
          (if (procedure? _%f112825%_)
              (let ((_%f112836%_ _%f112825%_))
                (__filter-map2 _%f112836%_ _%lst1112828%_ _%lst2112831%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112825%_)
                '#!void)))))
    (define filter-map
      (lambda _g118104_
        (let ((_g118105_ (let () (declare (not safe)) (##length _g118104_))))
          (cond ((let () (declare (not safe)) (##fx= _g118105_ 2))
                 (apply filter-map__0 _g118104_))
                ((let () (declare (not safe)) (##fx= _g118105_ 3))
                 (apply filter-map__1 _g118104_))
                ((let () (declare (not safe)) (##fx>= _g118105_ 3))
                 (apply filter-map* _g118104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g118104_))))))
    (define __filter-map*
      (lambda (_%f112749%_ . _%rest112750%_)
        (let ((_%f112753%_ _%f112749%_))
          (let _%recur112762%_ ((_%rest112764%_ _%rest112750%_))
            (if (let* ((_%f112767%_ pair?)
                       (_%lst112770%_ _%rest112764%_)
                       (_%f112775%_ _%f112767%_))
                  (__andmap1 _%f112775%_ _%lst112770%_))
                (let ((_%$e112792%_
                       (let ((__tmp118106 (map car _%rest112764%_)))
                         (declare (not safe))
                         (##apply _%f112753%_ __tmp118106))))
                  (if _%$e112792%_
                      (cons _%$e112792%_
                            (_%recur112762%_ (map cdr _%rest112764%_)))
                      (_%recur112762%_ (map cdr _%rest112764%_))))
                '())))))
    (define filter-map*
      (lambda (_%f112734%_ . _%rest112735%_)
        (if (procedure? _%f112734%_)
            (let ((_%f112739%_ _%f112734%_))
              (declare (not safe))
              (##apply __filter-map* _%f112739%_ _%rest112735%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f112734%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key112710%_ _%lst112712%_ _%default112714%_)
        (let ((_%$e112717%_
               (if (pair? _%lst112712%_)
                   (assq _%key112710%_ _%lst112712%_)
                   '#f)))
          (if _%$e112717%_
              (cdr _%$e112717%_)
              (if (procedure? _%default112714%_)
                  (_%default112714%_ _%key112710%_)
                  _%default112714%_)))))
    (define agetq__0
      (lambda (_%key112725%_ _%lst112726%_)
        (let ((_%default112728%_ '#f))
          (agetq__% _%key112725%_ _%lst112726%_ _%default112728%_))))
    (define agetq
      (lambda _g118107_
        (let ((_g118108_ (let () (declare (not safe)) (##length _g118107_))))
          (cond ((let () (declare (not safe)) (##fx= _g118108_ 2))
                 (apply agetq__0 _g118107_))
                ((let () (declare (not safe)) (##fx= _g118108_ 3))
                 (apply agetq__% _g118107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g118107_))))))
    (define agetv__%
      (lambda (_%key112685%_ _%lst112687%_ _%default112689%_)
        (let ((_%$e112692%_
               (if (pair? _%lst112687%_)
                   (assv _%key112685%_ _%lst112687%_)
                   '#f)))
          (if _%$e112692%_
              (cdr _%$e112692%_)
              (if (procedure? _%default112689%_)
                  (_%default112689%_ _%key112685%_)
                  _%default112689%_)))))
    (define agetv__0
      (lambda (_%key112700%_ _%lst112701%_)
        (let ((_%default112703%_ '#f))
          (agetv__% _%key112700%_ _%lst112701%_ _%default112703%_))))
    (define agetv
      (lambda _g118109_
        (let ((_g118110_ (let () (declare (not safe)) (##length _g118109_))))
          (cond ((let () (declare (not safe)) (##fx= _g118110_ 2))
                 (apply agetv__0 _g118109_))
                ((let () (declare (not safe)) (##fx= _g118110_ 3))
                 (apply agetv__% _g118109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g118109_))))))
    (define aget__%
      (lambda (_%key112660%_ _%lst112662%_ _%default112664%_)
        (let ((_%$e112667%_
               (if (pair? _%lst112662%_)
                   (assoc _%key112660%_ _%lst112662%_)
                   '#f)))
          (if _%$e112667%_
              (cdr _%$e112667%_)
              (if (procedure? _%default112664%_)
                  (_%default112664%_ _%key112660%_)
                  _%default112664%_)))))
    (define aget__0
      (lambda (_%key112675%_ _%lst112676%_)
        (let ((_%default112678%_ '#f))
          (aget__% _%key112675%_ _%lst112676%_ _%default112678%_))))
    (define aget
      (lambda _g118111_
        (let ((_g118112_ (let () (declare (not safe)) (##length _g118111_))))
          (cond ((let () (declare (not safe)) (##fx= _g118112_ 2))
                 (apply aget__0 _g118111_))
                ((let () (declare (not safe)) (##fx= _g118112_ 3))
                 (apply aget__% _g118111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g118111_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key112589%_ _%lst112591%_ _%default112593%_)
        (let _%lp112596%_ ((_%rest112599%_ _%lst112591%_))
          (let* ((_%$%rest112601112611%_ _%rest112599%_)
                 (_%$%else112603112619%_
                  (lambda ()
                    (if (procedure? _%default112593%_)
                        (_%default112593%_ _%key112589%_)
                        _%default112593%_)))
                 (_%$%K112605112628%_
                  (lambda (_%rest112622%_ _%v112623%_ _%k112625%_)
                    (if (eq? _%k112625%_ _%key112589%_)
                        _%v112623%_
                        (_%lp112596%_ _%rest112622%_)))))
            (if (pair? _%$%rest112601112611%_)
                (let ((_%$%hd112606112631%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112601112611%_)))
                      (_%$%tl112607112633%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112601112611%_))))
                  (let ((_%k112636%_ _%$%hd112606112631%_))
                    (if (pair? _%$%tl112607112633%_)
                        (let ((_%$%hd112608112638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112607112633%_)))
                              (_%$%tl112609112640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112607112633%_))))
                          (let* ((_%v112643%_ _%$%hd112608112638%_)
                                 (_%rest112645%_ _%$%tl112609112640%_))
                            (_%$%K112605112628%_
                             _%rest112645%_
                             _%v112643%_
                             _%k112636%_)))
                        (_%$%else112603112619%_))))
                (_%$%else112603112619%_))))))
    (define pgetq__0
      (lambda (_%key112650%_ _%lst112651%_)
        (let ((_%default112653%_ '#f))
          (pgetq__% _%key112650%_ _%lst112651%_ _%default112653%_))))
    (define pgetq
      (lambda _g118113_
        (let ((_g118114_ (let () (declare (not safe)) (##length _g118113_))))
          (cond ((let () (declare (not safe)) (##fx= _g118114_ 2))
                 (apply pgetq__0 _g118113_))
                ((let () (declare (not safe)) (##fx= _g118114_ 3))
                 (apply pgetq__% _g118113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g118113_))))))
    (define pgetv__%
      (lambda (_%key112518%_ _%lst112520%_ _%default112522%_)
        (let _%lp112525%_ ((_%rest112528%_ _%lst112520%_))
          (let* ((_%$%rest112530112540%_ _%rest112528%_)
                 (_%$%else112532112548%_
                  (lambda ()
                    (if (procedure? _%default112522%_)
                        (_%default112522%_ _%key112518%_)
                        _%default112522%_)))
                 (_%$%K112534112557%_
                  (lambda (_%rest112551%_ _%v112552%_ _%k112554%_)
                    (if (eqv? _%k112554%_ _%key112518%_)
                        _%v112552%_
                        (_%lp112525%_ _%rest112551%_)))))
            (if (pair? _%$%rest112530112540%_)
                (let ((_%$%hd112535112560%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112530112540%_)))
                      (_%$%tl112536112562%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112530112540%_))))
                  (let ((_%k112565%_ _%$%hd112535112560%_))
                    (if (pair? _%$%tl112536112562%_)
                        (let ((_%$%hd112537112567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112536112562%_)))
                              (_%$%tl112538112569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112536112562%_))))
                          (let* ((_%v112572%_ _%$%hd112537112567%_)
                                 (_%rest112574%_ _%$%tl112538112569%_))
                            (_%$%K112534112557%_
                             _%rest112574%_
                             _%v112572%_
                             _%k112565%_)))
                        (_%$%else112532112548%_))))
                (_%$%else112532112548%_))))))
    (define pgetv__0
      (lambda (_%key112579%_ _%lst112580%_)
        (let ((_%default112582%_ '#f))
          (pgetv__% _%key112579%_ _%lst112580%_ _%default112582%_))))
    (define pgetv
      (lambda _g118115_
        (let ((_g118116_ (let () (declare (not safe)) (##length _g118115_))))
          (cond ((let () (declare (not safe)) (##fx= _g118116_ 2))
                 (apply pgetv__0 _g118115_))
                ((let () (declare (not safe)) (##fx= _g118116_ 3))
                 (apply pgetv__% _g118115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g118115_))))))
    (define pget__%
      (lambda (_%key112447%_ _%lst112449%_ _%default112451%_)
        (let _%lp112454%_ ((_%rest112457%_ _%lst112449%_))
          (let* ((_%$%rest112459112469%_ _%rest112457%_)
                 (_%$%else112461112477%_
                  (lambda ()
                    (if (procedure? _%default112451%_)
                        (_%default112451%_ _%key112447%_)
                        _%default112451%_)))
                 (_%$%K112463112486%_
                  (lambda (_%rest112480%_ _%v112481%_ _%k112483%_)
                    (if (equal? _%k112483%_ _%key112447%_)
                        _%v112481%_
                        (_%lp112454%_ _%rest112480%_)))))
            (if (pair? _%$%rest112459112469%_)
                (let ((_%$%hd112464112489%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112459112469%_)))
                      (_%$%tl112465112491%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112459112469%_))))
                  (let ((_%k112494%_ _%$%hd112464112489%_))
                    (if (pair? _%$%tl112465112491%_)
                        (let ((_%$%hd112466112496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112465112491%_)))
                              (_%$%tl112467112498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112465112491%_))))
                          (let* ((_%v112501%_ _%$%hd112466112496%_)
                                 (_%rest112503%_ _%$%tl112467112498%_))
                            (_%$%K112463112486%_
                             _%rest112503%_
                             _%v112501%_
                             _%k112494%_)))
                        (_%$%else112461112477%_))))
                (_%$%else112461112477%_))))))
    (define pget__0
      (lambda (_%key112508%_ _%lst112509%_)
        (let ((_%default112511%_ '#f))
          (pget__% _%key112508%_ _%lst112509%_ _%default112511%_))))
    (define pget
      (lambda _g118117_
        (let ((_g118118_ (let () (declare (not safe)) (##length _g118117_))))
          (cond ((let () (declare (not safe)) (##fx= _g118118_ 2))
                 (apply pget__0 _g118117_))
                ((let () (declare (not safe)) (##fx= _g118118_ 3))
                 (apply pget__% _g118117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g118117_))))))
    (define __find
      (lambda (_%pred112407%_ _%lst112408%_)
        (let* ((_%pred112411%_ _%pred112407%_)
               (_%$e112442%_
                (let* ((_%proc112420%_ _%pred112411%_)
                       (_%lst112423%_ _%lst112408%_)
                       (_%proc112428%_ _%proc112420%_))
                  (__memf _%proc112428%_ _%lst112423%_))))
          (if _%$e112442%_
              (let () (declare (not safe)) (##car _%$e112442%_))
              '#f))))
    (define find
      (lambda (_%pred112392%_ _%lst112393%_)
        (if (procedure? _%pred112392%_)
            (let ((_%pred112397%_ _%pred112392%_))
              (__find _%pred112397%_ _%lst112393%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred112392%_)
              '#!void))))
    (define __memf
      (lambda (_%proc112342%_ _%lst112343%_)
        (let ((_%proc112346%_ _%proc112342%_))
          (let _%lp112355%_ ((_%rest112357%_ _%lst112343%_))
            (let* ((_%$%rest112358112366%_ _%rest112357%_)
                   (_%$%else112360112374%_ (lambda () '#f))
                   (_%$%K112362112380%_
                    (lambda (_%tl112377%_ _%hd112378%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc112346%_ _%hd112378%_))
                          _%rest112357%_
                          (_%lp112355%_ _%tl112377%_)))))
              (if (pair? _%$%rest112358112366%_)
                  (let ((_%$%hd112363112383%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112358112366%_)))
                        (_%$%tl112364112385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112358112366%_))))
                    (let* ((_%hd112388%_ _%$%hd112363112383%_)
                           (_%tl112390%_ _%$%tl112364112385%_))
                      (_%$%K112362112380%_ _%tl112390%_ _%hd112388%_)))
                  (_%$%else112360112374%_)))))))
    (define memf
      (lambda (_%proc112327%_ _%lst112328%_)
        (if (procedure? _%proc112327%_)
            (let ((_%proc112332%_ _%proc112327%_))
              (__memf _%proc112332%_ _%lst112328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc112327%_)
              '#!void))))
    (define remove1
      (lambda (_%el112250%_ _%lst112252%_)
        (let _%lp112255%_ ((_%rest112258%_ _%lst112252%_) (_%r112260%_ '()))
          (let* ((_%$%rest112262112270%_ _%rest112258%_)
                 (_%$%else112264112278%_ (lambda () _%lst112252%_))
                 (_%$%K112266112315%_
                  (lambda (_%rest112281%_ _%hd112282%_)
                    (if (equal? _%el112250%_ _%hd112282%_)
                        (let* ((_%f112285%_ cons)
                               (_%iv112288%_ _%rest112281%_)
                               (_%lst112291%_ _%r112260%_)
                               (_%f112296%_ _%f112285%_))
                          (__foldl1 _%f112296%_ _%iv112288%_ _%lst112291%_))
                        (_%lp112255%_
                         _%rest112281%_
                         (cons _%hd112282%_ _%r112260%_))))))
            (if (pair? _%$%rest112262112270%_)
                (let ((_%$%hd112267112318%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112262112270%_)))
                      (_%$%tl112268112320%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112262112270%_))))
                  (let* ((_%hd112323%_ _%$%hd112267112318%_)
                         (_%rest112325%_ _%$%tl112268112320%_))
                    (_%$%K112266112315%_ _%rest112325%_ _%hd112323%_)))
                (_%$%else112264112278%_))))))
    (define remv1
      (lambda (_%el112173%_ _%lst112175%_)
        (let _%lp112178%_ ((_%rest112181%_ _%lst112175%_) (_%r112183%_ '()))
          (let* ((_%$%rest112185112193%_ _%rest112181%_)
                 (_%$%else112187112201%_ (lambda () _%lst112175%_))
                 (_%$%K112189112238%_
                  (lambda (_%rest112204%_ _%hd112205%_)
                    (if (eqv? _%el112173%_ _%hd112205%_)
                        (let* ((_%f112208%_ cons)
                               (_%iv112211%_ _%rest112204%_)
                               (_%lst112214%_ _%r112183%_)
                               (_%f112219%_ _%f112208%_))
                          (__foldl1 _%f112219%_ _%iv112211%_ _%lst112214%_))
                        (_%lp112178%_
                         _%rest112204%_
                         (cons _%hd112205%_ _%r112183%_))))))
            (if (pair? _%$%rest112185112193%_)
                (let ((_%$%hd112190112241%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112185112193%_)))
                      (_%$%tl112191112243%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112185112193%_))))
                  (let* ((_%hd112246%_ _%$%hd112190112241%_)
                         (_%rest112248%_ _%$%tl112191112243%_))
                    (_%$%K112189112238%_ _%rest112248%_ _%hd112246%_)))
                (_%$%else112187112201%_))))))
    (define remq1
      (lambda (_%el112096%_ _%lst112098%_)
        (let _%lp112101%_ ((_%rest112104%_ _%lst112098%_) (_%r112106%_ '()))
          (let* ((_%$%rest112108112116%_ _%rest112104%_)
                 (_%$%else112110112124%_ (lambda () _%lst112098%_))
                 (_%$%K112112112161%_
                  (lambda (_%rest112127%_ _%hd112128%_)
                    (if (eq? _%el112096%_ _%hd112128%_)
                        (let* ((_%f112131%_ cons)
                               (_%iv112134%_ _%rest112127%_)
                               (_%lst112137%_ _%r112106%_)
                               (_%f112142%_ _%f112131%_))
                          (__foldl1 _%f112142%_ _%iv112134%_ _%lst112137%_))
                        (_%lp112101%_
                         _%rest112127%_
                         (cons _%hd112128%_ _%r112106%_))))))
            (if (pair? _%$%rest112108112116%_)
                (let ((_%$%hd112113112164%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112108112116%_)))
                      (_%$%tl112114112166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112108112116%_))))
                  (let* ((_%hd112169%_ _%$%hd112113112164%_)
                         (_%rest112171%_ _%$%tl112114112166%_))
                    (_%$%K112112112161%_ _%rest112171%_ _%hd112169%_)))
                (_%$%else112110112124%_))))))
    (define __remf
      (lambda (_%proc112013%_ _%lst112014%_)
        (let ((_%proc112017%_ _%proc112013%_))
          (let _%lp112026%_ ((_%rest112028%_ _%lst112014%_) (_%r112029%_ '()))
            (let* ((_%$%rest112030112038%_ _%rest112028%_)
                   (_%$%else112032112046%_ (lambda () _%lst112014%_))
                   (_%$%K112034112084%_
                    (lambda (_%rest112049%_ _%hd112050%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc112017%_ _%hd112050%_))
                          (let* ((_%f112052%_ cons)
                                 (_%iv112055%_ _%rest112049%_)
                                 (_%lst112058%_ _%r112029%_)
                                 (_%f112063%_ _%f112052%_))
                            (__foldl1 _%f112063%_ _%iv112055%_ _%lst112058%_))
                          (_%lp112026%_
                           _%rest112049%_
                           (cons _%hd112050%_ _%r112029%_))))))
              (if (pair? _%$%rest112030112038%_)
                  (let ((_%$%hd112035112087%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112030112038%_)))
                        (_%$%tl112036112089%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112030112038%_))))
                    (let* ((_%hd112092%_ _%$%hd112035112087%_)
                           (_%rest112094%_ _%$%tl112036112089%_))
                      (_%$%K112034112084%_ _%rest112094%_ _%hd112092%_)))
                  (_%$%else112032112046%_)))))))
    (define remf
      (lambda (_%proc111998%_ _%lst111999%_)
        (if (procedure? _%proc111998%_)
            (let ((_%proc112003%_ _%proc111998%_))
              (__remf _%proc112003%_ _%lst111999%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc111998%_)
              '#!void))))
    (define __1+
      (lambda (_%x111986%_)
        (let ((_%x111989%_ _%x111986%_)) (+ _%x111989%_ '1))))
    (define 1+
      (lambda (_%x111972%_)
        (if (number? _%x111972%_)
            (let ((_%x111976%_ _%x111972%_)) (__1+ _%x111976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x111972%_)
              '#!void))))
    (define __1-
      (lambda (_%x111960%_)
        (let ((_%x111963%_ _%x111960%_)) (- _%x111963%_ '1))))
    (define 1-
      (lambda (_%x111946%_)
        (if (number? _%x111946%_)
            (let ((_%x111950%_ _%x111946%_)) (__1- _%x111950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x111946%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x111934%_)
        (let ((_%x111937%_ _%x111934%_))
          (declare (not safe))
          (##fx+ _%x111937%_ '1))))
    (define fx1+
      (lambda (_%x111920%_)
        (if (fixnum? _%x111920%_)
            (let ((_%x111924%_ _%x111920%_)) (__fx1+ _%x111924%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x111920%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x111908%_)
        (let ((_%x111911%_ _%x111908%_))
          (declare (not safe))
          (##fx- _%x111911%_ '1))))
    (define fx1-
      (lambda (_%x111894%_)
        (if (fixnum? _%x111894%_)
            (let ((_%x111898%_ _%x111894%_)) (__fx1- _%x111898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x111894%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x111891%_)
        (if (fixnum? _%x111891%_)
            (let () (declare (not safe)) (##fx>= _%x111891%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x111888%_)
        (if (fixnum? _%x111888%_)
            (let () (declare (not safe)) (##fx> _%x111888%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x111885%_)
        (let () (declare (not safe)) (##fx= _%x111885%_ '0))))
    (define fx<0?
      (lambda (_%x111882%_)
        (if (fixnum? _%x111882%_)
            (let () (declare (not safe)) (##fx< _%x111882%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x111879%_)
        (if (fixnum? _%x111879%_)
            (let () (declare (not safe)) (##fx<= _%x111879%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x111876%_)
        (if (symbol? _%x111876%_) (not (uninterned-symbol? _%x111876%_)) '#f)))
    (define __display-as-string
      (lambda (_%x111770%_ _%port111771%_)
        (let ((_%port111774%_ _%port111771%_))
          (if (or (string? _%x111770%_)
                  (symbol? _%x111770%_)
                  (keyword? _%x111770%_)
                  (number? _%x111770%_)
                  (char? _%x111770%_))
              (display _%x111770%_ _%port111774%_)
              (if (pair? _%x111770%_)
                  (let ()
                    (let* ((_%x111797%_
                            (let () (declare (not safe)) (##car _%x111770%_)))
                           (_%port111800%_ _%port111774%_))
                      (if (output-port? _%port111800%_)
                          (let ((_%port111805%_ _%port111800%_))
                            (__display-as-string _%x111797%_ _%port111805%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port111800%_)
                            '#!void)))
                    (let* ((_%x111820%_
                            (let () (declare (not safe)) (##cdr _%x111770%_)))
                           (_%port111823%_ _%port111774%_))
                      (if (output-port? _%port111823%_)
                          (let ((_%port111828%_ _%port111823%_))
                            (__display-as-string _%x111820%_ _%port111828%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port111823%_)
                            '#!void))))
                  (if (vector? _%x111770%_)
                      (vector-for-each
                       (lambda (_%$%g111839111841%_)
                         (let* ((_%x111844%_ _%$%g111839111841%_)
                                (_%port111847%_ _%port111774%_))
                           (if (output-port? _%port111847%_)
                               (let ((_%port111852%_ _%port111847%_))
                                 (__display-as-string
                                  _%x111844%_
                                  _%port111852%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port111847%_)
                                 '#!void))))
                       _%x111770%_)
                      (if (or (null? _%x111770%_)
                              (eq? _%x111770%_ '#!void)
                              (eof-object? _%x111770%_)
                              (boolean? _%x111770%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x111770%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x111755%_ _%port111756%_)
        (if (output-port? _%port111756%_)
            (let ((_%port111760%_ _%port111756%_))
              (__display-as-string _%x111755%_ _%port111760%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port111756%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x111695%_)
        (if (string? _%x111695%_)
            _%x111695%_
            (if (symbol? _%x111695%_)
                (let () (declare (not safe)) (##symbol->string _%x111695%_))
                (if (keyword? _%x111695%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x111695%_))
                    (if (number? _%x111695%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x111695%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g111701111703%_)
                           (let* ((_%x111706%_ _%x111695%_)
                                  (_%port111709%_ _%$%g111701111703%_))
                             (if (output-port? _%port111709%_)
                                 (let ((_%port111714%_ _%port111709%_))
                                   (__display-as-string
                                    _%x111706%_
                                    _%port111714%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port111709%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args111728%_
        (call-with-output-string
         '()
         (lambda (_%$%g111729111731%_)
           (let* ((_%x111734%_ _%args111728%_)
                  (_%port111737%_ _%$%g111729111731%_))
             (if (output-port? _%port111737%_)
                 (let ((_%port111742%_ _%port111737%_))
                   (__display-as-string _%x111734%_ _%port111742%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port111737%_)
                   '#!void)))))))
    (define as-string
      (lambda _g118119_
        (let ((_g118120_ (let () (declare (not safe)) (##length _g118119_))))
          (cond ((let () (declare (not safe)) (##fx= _g118120_ 1))
                 (apply as-string__0 _g118119_))
                (#t
                 (apply (lambda _%args111728%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args111728%_)))
                        _g118119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g118119_))))))
    (define make-symbol__0
      (lambda (_%x111691%_)
        (if (interned-symbol? _%x111691%_)
            _%x111691%_
            (let ((__tmp118121 (as-string__0 _%x111691%_)))
              (declare (not safe))
              (##string->symbol __tmp118121)))))
    (define make-symbol__1
      (lambda _%args111693%_
        (let ((__tmp118122
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args111693%_))))
          (declare (not safe))
          (##string->symbol __tmp118122))))
    (define make-symbol
      (lambda _g118123_
        (let ((_g118124_ (let () (declare (not safe)) (##length _g118123_))))
          (cond ((let () (declare (not safe)) (##fx= _g118124_ 1))
                 (apply make-symbol__0 _g118123_))
                (#t
                 (apply (lambda _%args111693%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args111693%_)))
                        _g118123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g118123_))))))
    (define make-keyword__0
      (lambda (_%x111687%_)
        (if (interned-keyword? _%x111687%_)
            _%x111687%_
            (let ((__tmp118125 (as-string__0 _%x111687%_)))
              (declare (not safe))
              (##string->keyword __tmp118125)))))
    (define make-keyword__1
      (lambda _%args111689%_
        (let ((__tmp118126
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args111689%_))))
          (declare (not safe))
          (##string->keyword __tmp118126))))
    (define make-keyword
      (lambda _g118127_
        (let ((_g118128_ (let () (declare (not safe)) (##length _g118127_))))
          (cond ((let () (declare (not safe)) (##fx= _g118128_ 1))
                 (apply make-keyword__0 _g118127_))
                (#t
                 (apply (lambda _%args111689%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args111689%_)))
                        _g118127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g118127_))))))
    (define interned-keyword?
      (lambda (_%x111684%_)
        (if (keyword? _%x111684%_)
            (not (uninterned-keyword? _%x111684%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym111672%_)
        (let ((_%sym111675%_ _%sym111672%_))
          (if (uninterned-symbol? _%sym111675%_)
              (let ((__tmp118129
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym111675%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp118129))
              (let ((__tmp118130
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym111675%_))))
                (declare (not safe))
                (##string->keyword __tmp118130))))))
    (define symbol->keyword
      (lambda (_%sym111658%_)
        (if (symbol? _%sym111658%_)
            (let ((_%sym111662%_ _%sym111658%_))
              (__symbol->keyword _%sym111662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym111658%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym111646%_)
        (let ((_%sym111649%_ _%sym111646%_))
          (if (uninterned-keyword? _%sym111649%_)
              (let ((__tmp118131
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym111649%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp118131))
              (let ((__tmp118132
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym111649%_))))
                (declare (not safe))
                (##string->symbol __tmp118132))))))
    (define keyword->symbol
      (lambda (_%sym111632%_)
        (if (keyword? _%sym111632%_)
            (let ((_%sym111636%_ _%sym111632%_))
              (__keyword->symbol _%sym111636%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym111632%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr111592%_ _%enc111593%_)
        (let* ((_%bstr111596%_ _%bstr111592%_) (_%enc111604%_ _%enc111593%_))
          (if (eq? _%enc111604%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr111596%_))
              (let* ((_%in111613%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc111604%_
                                   (cons 'init: (cons _%bstr111596%_ '()))))))
                     (_%len111615%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr111596%_)))
                     (_%out111617%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len111615%_)))
                     (_%n111619%_
                      (read-substring
                       _%out111617%_
                       '0
                       _%len111615%_
                       _%in111613%_)))
                (string-shrink! _%out111617%_ _%n111619%_)
                _%out111617%_)))))
    (define __bytes->string__0
      (lambda (_%bstr111625%_)
        (let ((_%enc111627%_ 'UTF-8))
          (__bytes->string__% _%bstr111625%_ _%enc111627%_))))
    (define __bytes->string
      (lambda _g118133_
        (let ((_g118134_ (let () (declare (not safe)) (##length _g118133_))))
          (cond ((let () (declare (not safe)) (##fx= _g118134_ 1))
                 (apply __bytes->string__0 _g118133_))
                ((let () (declare (not safe)) (##fx= _g118134_ 2))
                 (apply __bytes->string__% _g118133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g118133_))))))
    (define bytes->string__%
      (lambda (_%bstr111556%_ _%enc111557%_)
        (if (u8vector? _%bstr111556%_)
            (let ((_%bstr111561%_ _%bstr111556%_))
              (if (symbol? _%enc111557%_)
                  (let ((_%enc111571%_ _%enc111557%_))
                    (__bytes->string__% _%bstr111561%_ _%enc111571%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc111557%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr111556%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr111584%_)
        (let ((_%enc111586%_ 'UTF-8))
          (bytes->string__% _%bstr111584%_ _%enc111586%_))))
    (define bytes->string
      (lambda _g118135_
        (let ((_g118136_ (let () (declare (not safe)) (##length _g118135_))))
          (cond ((let () (declare (not safe)) (##fx= _g118136_ 1))
                 (apply bytes->string__0 _g118135_))
                ((let () (declare (not safe)) (##fx= _g118136_ 2))
                 (apply bytes->string__% _g118135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g118135_))))))
    (define __string->bytes__%
      (lambda (_%str111474%_ _%enc111475%_)
        (let* ((_%str111478%_ _%str111474%_) (_%enc111486%_ _%enc111475%_))
          (if (eq? _%enc111486%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str111478%_))
              (let* ((_%str111495%_ _%str111478%_)
                     (_%start111498%_ '0)
                     (_%end111501%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str111478%_)))
                     (_%enc111504%_ _%enc111486%_)
                     (_%str111509%_ _%str111495%_))
                (if (nonnegative-fixnum? _%start111498%_)
                    (let ((_%start111525%_ _%start111498%_))
                      (if (nonnegative-fixnum? _%end111501%_)
                          (let ((_%end111535%_ _%end111501%_))
                            (__substring->bytes__%
                             _%str111509%_
                             _%start111525%_
                             _%end111535%_
                             _%enc111504%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end111501%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start111498%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str111548%_)
        (let ((_%enc111550%_ 'UTF-8))
          (__string->bytes__% _%str111548%_ _%enc111550%_))))
    (define __string->bytes
      (lambda _g118137_
        (let ((_g118138_ (let () (declare (not safe)) (##length _g118137_))))
          (cond ((let () (declare (not safe)) (##fx= _g118138_ 1))
                 (apply __string->bytes__0 _g118137_))
                ((let () (declare (not safe)) (##fx= _g118138_ 2))
                 (apply __string->bytes__% _g118137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g118137_))))))
    (define string->bytes__%
      (lambda (_%str111438%_ _%enc111439%_)
        (if (string? _%str111438%_)
            (let ((_%str111443%_ _%str111438%_))
              (if (symbol? _%enc111439%_)
                  (let ((_%enc111453%_ _%enc111439%_))
                    (__string->bytes__% _%str111443%_ _%enc111453%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc111439%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str111438%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str111466%_)
        (let ((_%enc111468%_ 'UTF-8))
          (string->bytes__% _%str111466%_ _%enc111468%_))))
    (define string->bytes
      (lambda _g118139_
        (let ((_g118140_ (let () (declare (not safe)) (##length _g118139_))))
          (cond ((let () (declare (not safe)) (##fx= _g118140_ 1))
                 (apply string->bytes__0 _g118139_))
                ((let () (declare (not safe)) (##fx= _g118140_ 2))
                 (apply string->bytes__% _g118139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g118139_))))))
    (define __substring->bytes__%
      (lambda (_%str111390%_ _%start111391%_ _%end111392%_ _%enc111393%_)
        (let* ((_%str111396%_ _%str111390%_)
               (_%start111404%_ _%start111391%_)
               (_%end111412%_ _%end111392%_))
          (if (eq? _%enc111393%_ 'UTF-8)
              (string->utf8 _%str111396%_ _%start111404%_ _%end111412%_)
              (let ((_%out111421%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc111393%_ '())))))
                (write-substring
                 _%str111396%_
                 _%start111404%_
                 _%end111412%_
                 _%out111421%_)
                (get-output-u8vector _%out111421%_))))))
    (define __substring->bytes__0
      (lambda (_%str111426%_ _%start111427%_ _%end111428%_)
        (let ((_%enc111430%_ 'UTF-8))
          (__substring->bytes__%
           _%str111426%_
           _%start111427%_
           _%end111428%_
           _%enc111430%_))))
    (define __substring->bytes
      (lambda _g118141_
        (let ((_g118142_ (let () (declare (not safe)) (##length _g118141_))))
          (cond ((let () (declare (not safe)) (##fx= _g118142_ 3))
                 (apply __substring->bytes__0 _g118141_))
                ((let () (declare (not safe)) (##fx= _g118142_ 4))
                 (apply __substring->bytes__% _g118141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g118141_))))))
    (define substring->bytes__%
      (lambda (_%str111338%_ _%start111339%_ _%end111340%_ _%enc111341%_)
        (if (string? _%str111338%_)
            (let ((_%str111345%_ _%str111338%_))
              (if (nonnegative-fixnum? _%start111339%_)
                  (let ((_%start111355%_ _%start111339%_))
                    (if (nonnegative-fixnum? _%end111340%_)
                        (let ((_%end111365%_ _%end111340%_))
                          (__substring->bytes__%
                           _%str111345%_
                           _%start111355%_
                           _%end111365%_
                           _%enc111341%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end111340%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start111339%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str111338%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str111378%_ _%start111379%_ _%end111380%_)
        (let ((_%enc111382%_ 'UTF-8))
          (substring->bytes__%
           _%str111378%_
           _%start111379%_
           _%end111380%_
           _%enc111382%_))))
    (define substring->bytes
      (lambda _g118143_
        (let ((_g118144_ (let () (declare (not safe)) (##length _g118143_))))
          (cond ((let () (declare (not safe)) (##fx= _g118144_ 3))
                 (apply substring->bytes__0 _g118143_))
                ((let () (declare (not safe)) (##fx= _g118144_ 4))
                 (apply substring->bytes__% _g118143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g118143_))))))
    (define __string-empty?
      (lambda (_%str111325%_)
        (let* ((_%str111328%_ _%str111325%_)
               (__tmp118145
                (let () (declare (not safe)) (##string-length _%str111328%_))))
          (declare (not safe))
          (##fxzero? __tmp118145))))
    (define string-empty?
      (lambda (_%str111311%_)
        (if (string? _%str111311%_)
            (let ((_%str111315%_ _%str111311%_))
              (__string-empty? _%str111315%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str111311%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str111145%_ _%criterion111146%_ _%start111147%_ _%end111148%_)
        (let* ((_%str111151%_ _%str111145%_)
               (_%start111159%_ _%start111147%_)
               (_%end111167%_ _%end111148%_)
               (_%end111179%_
                (let ((_%$e111176%_ _%end111167%_))
                  (if _%$e111176%_
                      _%$e111176%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str111151%_))))))
          (if (< _%start111159%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str111151%_ (cons _%start111159%_ '())))
                '#!void)
              (if (> _%end111179%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str111151%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str111151%_ (cons _%end111179%_ '())))
                    '#!void)
                  (if (char? _%criterion111146%_)
                      (let* ((_%str111184%_ _%str111151%_)
                             (_%char111187%_ _%criterion111146%_)
                             (_%start111190%_ _%start111159%_)
                             (_%end111193%_ _%end111179%_)
                             (_%str111197%_ _%str111184%_)
                             (_%char111213%_ _%char111187%_)
                             (_%start111221%_ _%start111190%_)
                             (_%end111229%_ _%end111193%_))
                        (____string-index/char
                         _%str111197%_
                         _%char111213%_
                         _%start111221%_
                         _%end111229%_))
                      (if (procedure? _%criterion111146%_)
                          (let* ((_%str111239%_ _%str111151%_)
                                 (_%pred?111242%_ _%criterion111146%_)
                                 (_%start111245%_ _%start111159%_)
                                 (_%end111248%_ _%end111179%_)
                                 (_%str111252%_ _%str111239%_)
                                 (_%pred?111264%_ _%pred?111242%_)
                                 (_%start111272%_ _%start111245%_)
                                 (_%end111280%_ _%end111248%_))
                            (____string-index/pred
                             _%str111252%_
                             _%pred?111264%_
                             _%start111272%_
                             _%end111280%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion111146%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str111293%_ _%criterion111294%_)
        (let* ((_%start111296%_ '0) (_%end111298%_ '#f))
          (__string-index__%
           _%str111293%_
           _%criterion111294%_
           _%start111296%_
           _%end111298%_))))
    (define __string-index__1
      (lambda (_%str111300%_ _%criterion111301%_ _%start111302%_)
        (let ((_%end111304%_ '#f))
          (__string-index__%
           _%str111300%_
           _%criterion111301%_
           _%start111302%_
           _%end111304%_))))
    (define __string-index
      (lambda _g118146_
        (let ((_g118147_ (let () (declare (not safe)) (##length _g118146_))))
          (cond ((let () (declare (not safe)) (##fx= _g118147_ 2))
                 (apply __string-index__0 _g118146_))
                ((let () (declare (not safe)) (##fx= _g118147_ 3))
                 (apply __string-index__1 _g118146_))
                ((let () (declare (not safe)) (##fx= _g118147_ 4))
                 (apply __string-index__% _g118146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g118146_))))))
    (define string-index__%
      (lambda (_%str111080%_ _%criterion111081%_ _%start111082%_ _%end111083%_)
        (if (string? _%str111080%_)
            (let ((_%str111087%_ _%str111080%_))
              (if (nonnegative-fixnum? _%start111082%_)
                  (let ((_%start111097%_ _%start111082%_))
                    (if (or (not _%end111083%_) (fixnum? _%end111083%_))
                        (let ((_%end111113%_ _%end111083%_))
                          (__string-index__%
                           _%str111087%_
                           _%criterion111081%_
                           _%start111097%_
                           _%end111113%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end111083%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start111082%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str111080%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str111126%_ _%criterion111127%_)
        (let* ((_%start111129%_ '0) (_%end111131%_ '#f))
          (string-index__%
           _%str111126%_
           _%criterion111127%_
           _%start111129%_
           _%end111131%_))))
    (define string-index__1
      (lambda (_%str111133%_ _%criterion111134%_ _%start111135%_)
        (let ((_%end111137%_ '#f))
          (string-index__%
           _%str111133%_
           _%criterion111134%_
           _%start111135%_
           _%end111137%_))))
    (define string-index
      (lambda _g118148_
        (let ((_g118149_ (let () (declare (not safe)) (##length _g118148_))))
          (cond ((let () (declare (not safe)) (##fx= _g118149_ 2))
                 (apply string-index__0 _g118148_))
                ((let () (declare (not safe)) (##fx= _g118149_ 3))
                 (apply string-index__1 _g118148_))
                ((let () (declare (not safe)) (##fx= _g118149_ 4))
                 (apply string-index__% _g118148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g118148_))))))
    (define ____string-index/char
      (lambda (_%str111025%_ _%char111026%_ _%start111027%_ _%end111028%_)
        (let* ((_%str111031%_ _%str111025%_)
               (_%char111039%_ _%char111026%_)
               (_%start111047%_ _%start111027%_)
               (_%end111055%_ _%end111028%_))
          (let _%lp111064%_ ((_%k111066%_ _%start111047%_))
            (let ((_%k111068%_ _%k111066%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k111068%_ _%end111055%_))
                  (if (eq? _%char111039%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str111031%_ _%k111068%_)))
                      _%k111068%_
                      (_%lp111064%_
                       (let () (declare (not safe)) (##fx+ _%k111068%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str110986%_ _%char110987%_ _%start110988%_ _%end110989%_)
        (let* ((_%str110992%_ _%str110986%_)
               (_%char111000%_ _%char110987%_)
               (_%start111008%_ _%start110988%_)
               (_%end111016%_ _%end110989%_))
          (____string-index/char
           _%str110992%_
           _%char111000%_
           _%start111008%_
           _%end111016%_))))
    (define ____string-index/pred
      (lambda (_%str110932%_ _%pred?110933%_ _%start110934%_ _%end110935%_)
        (let* ((_%str110938%_ _%str110932%_)
               (_%pred?110946%_ _%pred?110933%_)
               (_%start110954%_ _%start110934%_)
               (_%end110962%_ _%end110935%_))
          (let _%lp110971%_ ((_%k110973%_ _%start110954%_))
            (let ((_%k110975%_ _%k110973%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k110975%_ _%end110962%_))
                  (if (let ((__tmp118150
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str110938%_ _%k110975%_))))
                        (declare (not safe))
                        (_%pred?110946%_ __tmp118150))
                      _%k110975%_
                      (_%lp110971%_
                       (let () (declare (not safe)) (##fx+ _%k110975%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str110893%_ _%pred?110894%_ _%start110895%_ _%end110896%_)
        (let* ((_%str110899%_ _%str110893%_)
               (_%pred?110907%_ _%pred?110894%_)
               (_%start110915%_ _%start110895%_)
               (_%end110923%_ _%end110896%_))
          (____string-index/pred
           _%str110899%_
           _%pred?110907%_
           _%start110915%_
           _%end110923%_))))
    (define __string-rindex__%
      (lambda (_%str110733%_ _%criterion110734%_ _%start110735%_ _%end110736%_)
        (let* ((_%str110739%_ _%str110733%_)
               (_%start110747%_ _%start110735%_)
               (_%end110755%_ _%end110736%_))
          (if (>= _%start110747%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str110739%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str110739%_ (cons _%start110747%_ '())))
                '#!void)
              (if (< _%end110755%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str110739%_ (cons _%end110755%_ '())))
                    '#!void)
                  (if (char? _%criterion110734%_)
                      (let* ((_%str110767%_ _%str110739%_)
                             (_%char110770%_ _%criterion110734%_)
                             (_%start110773%_ _%start110747%_)
                             (_%end110776%_ _%end110755%_)
                             (_%str110780%_ _%str110767%_)
                             (_%char110795%_ _%char110770%_)
                             (_%start110803%_ _%start110773%_)
                             (_%end110811%_ _%end110776%_))
                        (____string-rindex/char
                         _%str110780%_
                         _%char110795%_
                         _%start110803%_
                         _%end110811%_))
                      (if (procedure? _%criterion110734%_)
                          (let* ((_%str110821%_ _%str110739%_)
                                 (_%pred?110824%_ _%criterion110734%_)
                                 (_%start110827%_ _%start110747%_)
                                 (_%end110830%_ _%end110755%_)
                                 (_%str110834%_ _%str110821%_)
                                 (_%pred?110846%_ _%pred?110824%_)
                                 (_%start110854%_ _%start110827%_)
                                 (_%end110862%_ _%end110830%_))
                            (____string-rindex/pred
                             _%str110834%_
                             _%pred?110846%_
                             _%start110854%_
                             _%end110862%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion110734%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str110875%_ _%criterion110876%_)
        (let* ((_%start110878%_
                (let ((__tmp118151 (string-length _%str110875%_)))
                  (declare (not safe))
                  (##fx- __tmp118151 '1)))
               (_%end110880%_ '0))
          (__string-rindex__%
           _%str110875%_
           _%criterion110876%_
           _%start110878%_
           _%end110880%_))))
    (define __string-rindex__1
      (lambda (_%str110882%_ _%criterion110883%_ _%start110884%_)
        (let ((_%end110886%_ '0))
          (__string-rindex__%
           _%str110882%_
           _%criterion110883%_
           _%start110884%_
           _%end110886%_))))
    (define __string-rindex
      (lambda _g118152_
        (let ((_g118153_ (let () (declare (not safe)) (##length _g118152_))))
          (cond ((let () (declare (not safe)) (##fx= _g118153_ 2))
                 (apply __string-rindex__0 _g118152_))
                ((let () (declare (not safe)) (##fx= _g118153_ 3))
                 (apply __string-rindex__1 _g118152_))
                ((let () (declare (not safe)) (##fx= _g118153_ 4))
                 (apply __string-rindex__% _g118152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g118152_))))))
    (define string-rindex__%
      (lambda (_%str110674%_ _%criterion110675%_ _%start110676%_ _%end110677%_)
        (if (string? _%str110674%_)
            (let ((_%str110681%_ _%str110674%_))
              (if (fixnum? _%start110676%_)
                  (let ((_%start110691%_ _%start110676%_))
                    (if (fixnum? _%end110677%_)
                        (let ((_%end110701%_ _%end110677%_))
                          (__string-rindex__%
                           _%str110681%_
                           _%criterion110675%_
                           _%start110691%_
                           _%end110701%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end110677%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start110676%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str110674%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str110714%_ _%criterion110715%_)
        (let* ((_%start110717%_
                (let ((__tmp118154 (string-length _%str110714%_)))
                  (declare (not safe))
                  (##fx- __tmp118154 '1)))
               (_%end110719%_ '0))
          (string-rindex__%
           _%str110714%_
           _%criterion110715%_
           _%start110717%_
           _%end110719%_))))
    (define string-rindex__1
      (lambda (_%str110721%_ _%criterion110722%_ _%start110723%_)
        (let ((_%end110725%_ '0))
          (string-rindex__%
           _%str110721%_
           _%criterion110722%_
           _%start110723%_
           _%end110725%_))))
    (define string-rindex
      (lambda _g118155_
        (let ((_g118156_ (let () (declare (not safe)) (##length _g118155_))))
          (cond ((let () (declare (not safe)) (##fx= _g118156_ 2))
                 (apply string-rindex__0 _g118155_))
                ((let () (declare (not safe)) (##fx= _g118156_ 3))
                 (apply string-rindex__1 _g118155_))
                ((let () (declare (not safe)) (##fx= _g118156_ 4))
                 (apply string-rindex__% _g118155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g118155_))))))
    (define ____string-rindex/char
      (lambda (_%str110619%_ _%char110620%_ _%start110621%_ _%end110622%_)
        (let* ((_%str110625%_ _%str110619%_)
               (_%char110633%_ _%char110620%_)
               (_%start110641%_ _%start110621%_)
               (_%end110649%_ _%end110622%_))
          (let _%lp110658%_ ((_%k110660%_ _%start110641%_))
            (let ((_%k110662%_ _%k110660%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k110662%_ _%end110649%_))
                  (if (eq? _%char110633%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str110625%_ _%k110662%_)))
                      _%k110662%_
                      (_%lp110658%_
                       (let () (declare (not safe)) (##fx- _%k110662%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str110580%_ _%char110581%_ _%start110582%_ _%end110583%_)
        (let* ((_%str110586%_ _%str110580%_)
               (_%char110594%_ _%char110581%_)
               (_%start110602%_ _%start110582%_)
               (_%end110610%_ _%end110583%_))
          (____string-rindex/char
           _%str110586%_
           _%char110594%_
           _%start110602%_
           _%end110610%_))))
    (define ____string-rindex/pred
      (lambda (_%str110526%_ _%pred?110527%_ _%start110528%_ _%end110529%_)
        (let* ((_%str110532%_ _%str110526%_)
               (_%pred?110540%_ _%pred?110527%_)
               (_%start110548%_ _%start110528%_)
               (_%end110556%_ _%end110529%_))
          (let _%lp110565%_ ((_%k110567%_ _%start110548%_))
            (let ((_%k110569%_ _%k110567%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k110569%_ _%end110556%_))
                  (if (let ((__tmp118157
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str110532%_ _%k110569%_))))
                        (declare (not safe))
                        (_%pred?110540%_ __tmp118157))
                      _%k110569%_
                      (_%lp110565%_
                       (let () (declare (not safe)) (##fx- _%k110569%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str110487%_ _%pred?110488%_ _%start110489%_ _%end110490%_)
        (let* ((_%str110493%_ _%str110487%_)
               (_%pred?110501%_ _%pred?110488%_)
               (_%start110509%_ _%start110489%_)
               (_%end110517%_ _%end110490%_))
          (____string-rindex/pred
           _%str110493%_
           _%pred?110501%_
           _%start110509%_
           _%end110517%_))))
    (define __string-split
      (lambda (_%str110375%_ _%char110376%_)
        (let* ((_%str110379%_ _%str110375%_)
               (_%char110387%_ _%char110376%_)
               (_%len110396%_
                (let () (declare (not safe)) (##string-length _%str110379%_))))
          (let _%lp110398%_ ((_%start110400%_ '0) (_%r110401%_ '()))
            (let* ((_%start110404%_ _%start110400%_)
                   (_%$e110472%_
                    (let* ((_%str110417%_ _%str110379%_)
                           (_%criterion110420%_ _%char110387%_)
                           (_%start110423%_ _%start110404%_)
                           (_%end110426%_ '#f)
                           (_%str110431%_ _%str110417%_))
                      (if (nonnegative-fixnum? _%start110423%_)
                          (let ((_%start110446%_ _%start110423%_))
                            (if (let ((_%$e110458%_ '#t))
                                  (and _%$e110458%_ _%$e110458%_))
                                (let ((_%end110462%_ _%end110426%_))
                                  (__string-index__%
                                   _%str110431%_
                                   _%criterion110420%_
                                   _%start110446%_
                                   _%end110462%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end110426%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start110423%_)
                            '#!void)))))
              (if _%$e110472%_
                  (let ((_%end110477%_ _%$e110472%_))
                    (_%lp110398%_
                     (let () (declare (not safe)) (##fx+ _%end110477%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str110379%_
                              _%start110404%_
                              _%end110477%_))
                           _%r110401%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start110404%_ _%len110396%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str110379%_
                                _%start110404%_
                                _%len110396%_)))
                       _%r110401%_)
                      (reverse! _%r110401%_))))))))
    (define string-split
      (lambda (_%str110350%_ _%char110351%_)
        (if (string? _%str110350%_)
            (let ((_%str110355%_ _%str110350%_))
              (if (char? _%char110351%_)
                  (let ((_%char110365%_ _%char110351%_))
                    (__string-split _%str110355%_ _%char110365%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char110351%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str110350%_)
              '#!void))))
    (define string-join
      (lambda (_%strs110200%_ _%join110201%_)
        (letrec ((_%join-length110204%_
                  (lambda (_%strs110288%_ _%jlen110289%_)
                    (let _%lp110291%_ ((_%rest110293%_ _%strs110288%_)
                                       (_%len110294%_ '0))
                      (let* ((_%len110296%_ _%len110294%_)
                             (_%$%rest110304110312%_ _%rest110293%_)
                             (_%$%else110306110320%_ (lambda () '0))
                             (_%$%K110308110338%_
                              (lambda (_%rest110323%_ _%hd110324%_)
                                (if (string? _%hd110324%_)
                                    (let ((_%hd110326%_ _%hd110324%_))
                                      (if (pair? _%rest110323%_)
                                          (_%lp110291%_
                                           _%rest110323%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd110326%_))
                                                _%jlen110289%_
                                                _%len110296%_))
                                          (let ((__tmp118158
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd110326%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp118158
                                                   _%len110296%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd110324%_)
                                      '#!void)))))
                        (if (pair? _%$%rest110304110312%_)
                            (let ((_%$%hd110309110341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest110304110312%_)))
                                  (_%$%tl110310110343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest110304110312%_))))
                              (let* ((_%hd110346%_ _%$%hd110309110341%_)
                                     (_%rest110348%_ _%$%tl110310110343%_))
                                (_%$%K110308110338%_
                                 _%rest110348%_
                                 _%hd110346%_)))
                            (_%$%else110306110320%_)))))))
          (let* ((_%join110209%_
                  (if (char? _%join110201%_)
                      (let () (declare (not safe)) (##string _%join110201%_))
                      (if (string? _%join110201%_)
                          _%join110201%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join110201%_)
                            '#!void))))
                 (_%jlen110211%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join110209%_)))
                 (_%olen110213%_
                  (_%join-length110204%_ _%strs110200%_ _%jlen110211%_))
                 (_%ostr110215%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen110213%_))))
            (let _%lp110218%_ ((_%rest110220%_ _%strs110200%_)
                               (_%k110221%_ '0))
              (let* ((_%k110224%_ _%k110221%_)
                     (_%$%rest110240110248%_ _%rest110220%_)
                     (_%$%else110242110256%_ (lambda () '""))
                     (_%$%K110244110276%_
                      (lambda (_%rest110259%_ _%hd110260%_)
                        (let* ((_%hd110262%_ _%hd110260%_)
                               (_%hdlen110274%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd110262%_))))
                          (if (pair? _%rest110259%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd110262%_
                                   '0
                                   _%hdlen110274%_
                                   _%ostr110215%_
                                   _%k110224%_))
                                (let ((__tmp118159
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k110224%_ _%hdlen110274%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join110209%_
                                   '0
                                   _%jlen110211%_
                                   _%ostr110215%_
                                   __tmp118159))
                                (_%lp110218%_
                                 _%rest110259%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k110224%_
                                          _%hdlen110274%_
                                          _%jlen110211%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd110262%_
                                   '0
                                   _%hdlen110274%_
                                   _%ostr110215%_
                                   _%k110224%_))
                                _%ostr110215%_))))))
                (if (pair? _%$%rest110240110248%_)
                    (let ((_%$%hd110245110279%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest110240110248%_)))
                          (_%$%tl110246110281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest110240110248%_))))
                      (let* ((_%hd110284%_ _%$%hd110245110279%_)
                             (_%rest110286%_ _%$%tl110246110281%_))
                        (_%$%K110244110276%_ _%rest110286%_ _%hd110284%_)))
                    (_%$%else110242110256%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes110140%_ _%port110141%_ _%start110142%_ _%end110143%_)
        (let* ((_%bytes110146%_ _%bytes110140%_)
               (_%port110154%_ _%port110141%_)
               (_%start110162%_ _%start110142%_)
               (_%end110170%_ _%end110143%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes110146%_
           _%start110162%_
           _%end110170%_
           _%port110154%_))))
    (define __read-u8vector__0
      (lambda (_%bytes110182%_ _%port110183%_)
        (let* ((_%start110185%_ '0)
               (_%end110187%_ (u8vector-length _%bytes110182%_)))
          (__read-u8vector__%
           _%bytes110182%_
           _%port110183%_
           _%start110185%_
           _%end110187%_))))
    (define __read-u8vector__1
      (lambda (_%bytes110189%_ _%port110190%_ _%start110191%_)
        (let ((_%end110193%_ (u8vector-length _%bytes110189%_)))
          (__read-u8vector__%
           _%bytes110189%_
           _%port110190%_
           _%start110191%_
           _%end110193%_))))
    (define __read-u8vector
      (lambda _g118160_
        (let ((_g118161_ (let () (declare (not safe)) (##length _g118160_))))
          (cond ((let () (declare (not safe)) (##fx= _g118161_ 2))
                 (apply __read-u8vector__0 _g118160_))
                ((let () (declare (not safe)) (##fx= _g118161_ 3))
                 (apply __read-u8vector__1 _g118160_))
                ((let () (declare (not safe)) (##fx= _g118161_ 4))
                 (apply __read-u8vector__% _g118160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g118160_))))))
    (define read-u8vector__%
      (lambda (_%bytes110065%_ _%port110066%_ _%start110067%_ _%end110068%_)
        (if (u8vector? _%bytes110065%_)
            (let ((_%bytes110072%_ _%bytes110065%_))
              (if (input-port? _%port110066%_)
                  (let ((_%port110082%_ _%port110066%_))
                    (if (and (fixnum? _%start110067%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start110067%_ '0))
                             (let ((__tmp118162
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes110072%_))))
                               (declare (not safe))
                               (##fx< _%start110067%_ __tmp118162)))
                        (let ((_%start110095%_ _%start110067%_))
                          (if (and (fixnum? _%end110068%_)
                                   (let ((__tmp118163
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes110072%_))))
                                     (declare (not safe))
                                     (##fx<= _%start110095%_
                                             _%end110068%_
                                             __tmp118163)))
                              (let ((_%end110108%_ _%end110068%_))
                                (__read-u8vector__%
                                 _%bytes110072%_
                                 _%port110082%_
                                 _%start110095%_
                                 _%end110108%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@863.22-863.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end110068%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start110067%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port110066%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes110065%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes110121%_ _%port110122%_)
        (let* ((_%start110124%_ '0)
               (_%end110126%_ (u8vector-length _%bytes110121%_)))
          (read-u8vector__%
           _%bytes110121%_
           _%port110122%_
           _%start110124%_
           _%end110126%_))))
    (define read-u8vector__1
      (lambda (_%bytes110128%_ _%port110129%_ _%start110130%_)
        (let ((_%end110132%_ (u8vector-length _%bytes110128%_)))
          (read-u8vector__%
           _%bytes110128%_
           _%port110129%_
           _%start110130%_
           _%end110132%_))))
    (define read-u8vector
      (lambda _g118164_
        (let ((_g118165_ (let () (declare (not safe)) (##length _g118164_))))
          (cond ((let () (declare (not safe)) (##fx= _g118165_ 2))
                 (apply read-u8vector__0 _g118164_))
                ((let () (declare (not safe)) (##fx= _g118165_ 3))
                 (apply read-u8vector__1 _g118164_))
                ((let () (declare (not safe)) (##fx= _g118165_ 4))
                 (apply read-u8vector__% _g118164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g118164_))))))
    (define __write-u8vector__%
      (lambda (_%bytes110004%_ _%port110005%_ _%start110006%_ _%end110007%_)
        (let* ((_%bytes110010%_ _%bytes110004%_)
               (_%port110018%_ _%port110005%_)
               (_%start110026%_ _%start110006%_)
               (_%end110034%_ _%end110007%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes110010%_
           _%start110026%_
           _%end110034%_
           _%port110018%_))))
    (define __write-u8vector__0
      (lambda (_%bytes110046%_ _%port110047%_)
        (let* ((_%start110049%_ '0)
               (_%end110051%_ (u8vector-length _%bytes110046%_)))
          (__write-u8vector__%
           _%bytes110046%_
           _%port110047%_
           _%start110049%_
           _%end110051%_))))
    (define __write-u8vector__1
      (lambda (_%bytes110053%_ _%port110054%_ _%start110055%_)
        (let ((_%end110057%_ (u8vector-length _%bytes110053%_)))
          (__write-u8vector__%
           _%bytes110053%_
           _%port110054%_
           _%start110055%_
           _%end110057%_))))
    (define __write-u8vector
      (lambda _g118166_
        (let ((_g118167_ (let () (declare (not safe)) (##length _g118166_))))
          (cond ((let () (declare (not safe)) (##fx= _g118167_ 2))
                 (apply __write-u8vector__0 _g118166_))
                ((let () (declare (not safe)) (##fx= _g118167_ 3))
                 (apply __write-u8vector__1 _g118166_))
                ((let () (declare (not safe)) (##fx= _g118167_ 4))
                 (apply __write-u8vector__% _g118166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g118166_))))))
    (define write-u8vector__%
      (lambda (_%bytes109934%_ _%port109935%_ _%start109936%_ _%end109937%_)
        (if (u8vector? _%bytes109934%_)
            (let ((_%bytes109941%_ _%bytes109934%_))
              (if (output-port? _%port109935%_)
                  (let* ((_%port109951%_ _%port109935%_)
                         (_%start109960%_ _%start109936%_))
                    (if (and (fixnum? _%end109937%_)
                             (let ((__tmp118168
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes109941%_))))
                               (declare (not safe))
                               (##fx<= _%start109960%_
                                       _%end109937%_
                                       __tmp118168)))
                        (let ((_%end109972%_ _%end109937%_))
                          (__write-u8vector__%
                           _%bytes109941%_
                           _%port109951%_
                           _%start109960%_
                           _%end109972%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end109937%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port109935%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes109934%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes109985%_ _%port109986%_)
        (let* ((_%start109988%_ '0)
               (_%end109990%_ (u8vector-length _%bytes109985%_)))
          (write-u8vector__%
           _%bytes109985%_
           _%port109986%_
           _%start109988%_
           _%end109990%_))))
    (define write-u8vector__1
      (lambda (_%bytes109992%_ _%port109993%_ _%start109994%_)
        (let ((_%end109996%_ (u8vector-length _%bytes109992%_)))
          (write-u8vector__%
           _%bytes109992%_
           _%port109993%_
           _%start109994%_
           _%end109996%_))))
    (define write-u8vector
      (lambda _g118169_
        (let ((_g118170_ (let () (declare (not safe)) (##length _g118169_))))
          (cond ((let () (declare (not safe)) (##fx= _g118170_ 2))
                 (apply write-u8vector__0 _g118169_))
                ((let () (declare (not safe)) (##fx= _g118170_ 3))
                 (apply write-u8vector__1 _g118169_))
                ((let () (declare (not safe)) (##fx= _g118170_ 4))
                 (apply write-u8vector__% _g118169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g118169_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag109902%_
               _%dbg-exprs109903%_
               _%dbg-thunks109904%_
               _%expr109905%_
               _%thunk109906%_)
        (letrec ((_%o109908%_ (current-output-port))
                 (_%e109909%_ (current-error-port))
                 (_%p109910%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f109911%_
                  (lambda ()
                    (force-output _%o109908%_)
                    (force-output _%e109909%_)))
                 (_%d109912%_
                  (lambda (_%x109919%_) (display _%x109919%_ _%e109909%_)))
                 (_%w109913%_
                  (lambda (_%x109921%_) (_%p109910%_ _%x109921%_ _%e109909%_)))
                 (_%n109914%_ (lambda () (newline _%e109909%_)))
                 (_%v109915%_
                  (lambda (_%l109924%_)
                    (for-each
                     (lambda (_%x109926%_)
                       (_%d109912%_ '" ")
                       (_%w109913%_ _%x109926%_))
                     _%l109924%_)
                    (_%n109914%_)))
                 (_%x109916%_
                  (lambda (_%expr109928%_ _%thunk109929%_)
                    (_%f109911%_)
                    (_%d109912%_ '"  ")
                    (_%w109913%_ _%expr109928%_)
                    (_%d109912%_ '" =>")
                    (call-with-values
                     _%thunk109929%_
                     (lambda _%x109931%_
                       (_%v109915%_ _%x109931%_)
                       (_%f109911%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x109931%_)))))))
          (if _%tag109902%_
              (begin
                (if (eq? _%tag109902%_ '#!void)
                    '#!void
                    (begin
                      (_%f109911%_)
                      (_%d109912%_ _%tag109902%_)
                      (_%n109914%_)))
                (for-each _%x109916%_ _%dbg-exprs109903%_ _%dbg-thunks109904%_)
                (if _%thunk109906%_
                    (_%x109916%_ _%expr109905%_ _%thunk109906%_)
                    '#!void))
              (if _%thunk109906%_ (_%thunk109906%_) '#!void)))))))
