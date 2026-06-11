(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1781138344)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args112929%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args112929%_))
          (newline))))
    (define display*
      (lambda _%args112926%_
        (let () (declare (not safe)) (##for-each display _%args112926%_))))
    (define __file-newer?
      (lambda (_%file1112717%_ _%file2112718%_)
        (let* ((_%file1112721%_ _%file1112717%_)
               (_%file2112729%_ _%file2112718%_))
          (letrec ((_%__modification-time112873%_
                    (lambda (_%file112914%_)
                      (let* ((_%file112917%_ _%file112914%_)
                             (__tmp115705
                              (let ((__tmp115706
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file112917%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp115706))))
                        (declare (not safe))
                        (##time->seconds __tmp115705))))
                   (_%modification-time112874%_
                    (lambda (_%file112902%_)
                      (let ((_%file112905%_ _%file112902%_))
                        (_%__modification-time112873%_ _%file112905%_)))))
            (let ((__tmp115708
                   (let* ((_%file112876%_ _%file1112721%_)
                          (_%file112880%_ _%file112876%_))
                     (_%__modification-time112873%_ _%file112880%_)))
                  (__tmp115707
                   (let* ((_%file112889%_ _%file2112729%_)
                          (_%file112893%_ _%file112889%_))
                     (_%__modification-time112873%_ _%file112893%_))))
              (declare (not safe))
              (##fl> __tmp115708 __tmp115707))))))
    (define file-newer?
      (lambda (_%file1112692%_ _%file2112693%_)
        (if (string? _%file1112692%_)
            (let ((_%file1112697%_ _%file1112692%_))
              (if (string? _%file2112693%_)
                  (let ((_%file2112707%_ _%file2112693%_))
                    (__file-newer? _%file1112697%_ _%file2112707%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2112693%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1112692%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir112412%_ _%perms112413%_)
        (let* ((_%dir112416%_ _%dir112412%_) (_%perms112424%_ _%perms112413%_))
          (letrec ((_%__create1112568%_
                    (lambda (_%path112667%_)
                      (let ((_%path112670%_ _%path112667%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path112670%_))
                            (if (eq? (file-type _%path112670%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path112670%_))
                            (if _%perms112424%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path112670%_
                                             (cons 'permissions:
                                                   (cons _%perms112424%_
                                                         '())))))
                                (create-directory _%path112670%_))))))
                   (_%create1112569%_
                    (lambda (_%path112655%_)
                      (let ((_%path112658%_ _%path112655%_))
                        (_%__create1112568%_ _%path112658%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir112416%_))
                '#!void
                (let _%lp112571%_ ((_%start112573%_ '0))
                  (let ((_%$e112620%_
                         (let* ((_%str112575%_ _%dir112416%_)
                                (_%char112578%_ '#\/)
                                (_%start112581%_ _%start112573%_)
                                (_%str112586%_ _%str112575%_)
                                (_%char112600%_ _%char112578%_))
                           (if (nonnegative-fixnum? _%start112581%_)
                               (let ((_%start112610%_ _%start112581%_))
                                 (__string-index__%
                                  _%str112586%_
                                  _%char112600%_
                                  _%start112610%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start112581%_)
                                 '#!void)))))
                    (if _%$e112620%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e112620%_ '0))
                              (let* ((_%path112625%_
                                      (substring
                                       _%dir112416%_
                                       '0
                                       _%$e112620%_))
                                     (_%path112629%_ _%path112625%_))
                                (_%__create1112568%_ _%path112629%_))
                              '#!void)
                          (_%lp112571%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e112620%_ '1))))
                        (let* ((_%path112641%_ _%dir112416%_)
                               (_%path112645%_ _%path112641%_))
                          (_%__create1112568%_ _%path112645%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir112685%_)
        (let ((_%perms112687%_ '493))
          (__create-directory*__% _%dir112685%_ _%perms112687%_))))
    (define __create-directory*
      (lambda _g115709_
        (let ((_g115710_ (let () (declare (not safe)) (##length _g115709_))))
          (cond ((let () (declare (not safe)) (##fx= _g115710_ 1))
                 (apply __create-directory*__0 _g115709_))
                ((let () (declare (not safe)) (##fx= _g115710_ 2))
                 (apply __create-directory*__% _g115709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g115709_))))))
    (define create-directory*__%
      (lambda (_%dir112376%_ _%perms112377%_)
        (if (string? _%dir112376%_)
            (let ((_%dir112381%_ _%dir112376%_))
              (if (fixnum? _%perms112377%_)
                  (let ((_%perms112391%_ _%perms112377%_))
                    (__create-directory*__% _%dir112381%_ _%perms112391%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms112377%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir112376%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir112404%_)
        (let ((_%perms112406%_ '493))
          (create-directory*__% _%dir112404%_ _%perms112406%_))))
    (define create-directory*
      (lambda _g115711_
        (let ((_g115712_ (let () (declare (not safe)) (##length _g115711_))))
          (cond ((let () (declare (not safe)) (##fx= _g115712_ 1))
                 (apply create-directory*__0 _g115711_))
                ((let () (declare (not safe)) (##fx= _g115712_ 2))
                 (apply create-directory*__% _g115711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g115711_))))))
    (define __move-file__%
      (lambda (_%src112319%_ _%dest112320%_ _%replace?112321%_)
        (let* ((_%src112324%_ _%src112319%_)
               (_%dest112332%_ _%dest112320%_)
               (_%replace?112340%_ _%replace?112321%_))
          (letrec ((_%force-move-it112349%_
                    (lambda ()
                      (let ((_%tmp112355%_
                             (if _%replace?112340%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest112332%_))
                                     (let ((__tmp115713
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest112332%_
                                        '"."
                                        __tmp115713))
                                     '#f)
                                 '#f)))
                        (if _%tmp112355%_
                            (rename-file _%dest112332%_ _%tmp112355%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e112357%_)
                           (if _%tmp112355%_
                               (rename-file _%tmp112355%_ _%dest112332%_ '#t)
                               '#!void)
                           (raise _%e112357%_))
                         (lambda ()
                           (let ((_%fi112360%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src112324%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi112360%_))
                                      'symbolic-link)
                                 (let ((__tmp115714
                                        (path-normalize _%src112324%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp115714
                                    _%dest112332%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src112324%_
                                    _%dest112332%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src112324%_))
                           (if _%tmp112355%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp112355%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e112351%_)
               (if (let () (declare (not safe)) (##file-exists? _%src112324%_))
                   (_%force-move-it112349%_)
                   (raise _%e112351%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src112324%_
                  _%dest112332%_
                  _%replace?112340%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src112366%_ _%dest112367%_)
        (let ((_%replace?112369%_ '#t))
          (__move-file__% _%src112366%_ _%dest112367%_ _%replace?112369%_))))
    (define __move-file
      (lambda _g115715_
        (let ((_g115716_ (let () (declare (not safe)) (##length _g115715_))))
          (cond ((let () (declare (not safe)) (##fx= _g115716_ 2))
                 (apply __move-file__0 _g115715_))
                ((let () (declare (not safe)) (##fx= _g115716_ 3))
                 (apply __move-file__% _g115715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g115715_))))))
    (define move-file__%
      (lambda (_%src112270%_ _%dest112271%_ _%replace?112272%_)
        (if (string? _%src112270%_)
            (let ((_%src112276%_ _%src112270%_))
              (if (string? _%dest112271%_)
                  (let ((_%dest112286%_ _%dest112271%_))
                    (if (boolean? _%replace?112272%_)
                        (let ((_%replace?112296%_ _%replace?112272%_))
                          (__move-file__%
                           _%src112276%_
                           _%dest112286%_
                           _%replace?112296%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?112272%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest112271%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src112270%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src112309%_ _%dest112310%_)
        (let ((_%replace?112312%_ '#t))
          (move-file__% _%src112309%_ _%dest112310%_ _%replace?112312%_))))
    (define move-file
      (lambda _g115717_
        (let ((_g115718_ (let () (declare (not safe)) (##length _g115717_))))
          (cond ((let () (declare (not safe)) (##fx= _g115718_ 2))
                 (apply move-file__0 _g115717_))
                ((let () (declare (not safe)) (##fx= _g115718_ 3))
                 (apply move-file__% _g115717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g115717_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore112266%_ '#t))
    (define true? (lambda (_%obj112263%_) (eq? _%obj112263%_ '#t)))
    (define false (lambda _%ignore112260%_ '#f))
    (define void (lambda _%ignore112257%_ '#!void))
    (define void? (lambda (_%obj112254%_) (eq? _%obj112254%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj112251%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj112251%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj112248%_) (eq? _%obj112248%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj112245%_) (eq? _%obj112245%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj112242%_) (eq? _%obj112242%_ '#!optional)))
    (define immediate?
      (lambda (_%obj112239%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj112239%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj112236%_)
        (if (fixnum? _%obj112236%_)
            (let () (declare (not safe)) (##fx>= _%obj112236%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj112230%_)
        (let ((_%$e112233%_ (pair? _%obj112230%_)))
          (if _%$e112233%_ _%$e112233%_ (null? _%obj112230%_)))))
    (define values-count
      (lambda (_%obj112227%_)
        (if (let () (declare (not safe)) (##values? _%obj112227%_))
            (let () (declare (not safe)) (##values-length _%obj112227%_))
            '1)))
    (define __values-ref
      (lambda (_%obj112214%_ _%k112215%_)
        (let ((_%k112218%_ _%k112215%_))
          (if (let () (declare (not safe)) (##values? _%obj112214%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj112214%_ _%k112218%_))
              _%obj112214%_))))
    (define values-ref
      (lambda (_%obj112199%_ _%k112200%_)
        (if (fixnum? _%k112200%_)
            (let ((_%k112204%_ _%k112200%_))
              (__values-ref _%obj112199%_ _%k112204%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k112200%_)
              '#!void))))
    (define values->list
      (lambda (_%obj112196%_)
        (if (let () (declare (not safe)) (##values? _%obj112196%_))
            (let () (declare (not safe)) (##values->list _%obj112196%_))
            (list _%obj112196%_))))
    (define __foldl1
      (lambda (_%f112144%_ _%iv112145%_ _%lst112146%_)
        (let ((_%f112149%_ _%f112144%_))
          (let _%lp112158%_ ((_%rest112160%_ _%lst112146%_)
                             (_%r112161%_ _%iv112145%_))
            (let* ((_%$%rest112162112170%_ _%rest112160%_)
                   (_%$%else112164112178%_ (lambda () _%r112161%_))
                   (_%$%K112166112184%_
                    (lambda (_%rest112181%_ _%x112182%_)
                      (_%lp112158%_
                       _%rest112181%_
                       (let ()
                         (declare (not safe))
                         (_%f112149%_ _%x112182%_ _%r112161%_))))))
              (if (pair? _%$%rest112162112170%_)
                  (let ((_%$%hd112167112187%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112162112170%_)))
                        (_%$%tl112168112189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112162112170%_))))
                    (let* ((_%x112192%_ _%$%hd112167112187%_)
                           (_%rest112194%_ _%$%tl112168112189%_))
                      (_%$%K112166112184%_ _%rest112194%_ _%x112192%_)))
                  (_%$%else112164112178%_)))))))
    (define foldl1
      (lambda (_%f112128%_ _%iv112129%_ _%lst112130%_)
        (if (procedure? _%f112128%_)
            (let ((_%f112134%_ _%f112128%_))
              (__foldl1 _%f112134%_ _%iv112129%_ _%lst112130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f112128%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f112041%_ _%iv112042%_ _%lst1112043%_ _%lst2112044%_)
        (let ((_%f112047%_ _%f112041%_))
          (let _%lp112056%_ ((_%rest1112058%_ _%lst1112043%_)
                             (_%rest2112059%_ _%lst2112044%_)
                             (_%r112060%_ _%iv112042%_))
            (let* ((_%$%rest1112061112069%_ _%rest1112058%_)
                   (_%$%else112063112077%_ (lambda () _%r112060%_))
                   (_%$%K112065112116%_
                    (lambda (_%rest1112080%_ _%x1112081%_)
                      (let* ((_%$%rest2112082112090%_ _%rest2112059%_)
                             (_%$%else112084112098%_ (lambda () _%r112060%_))
                             (_%$%K112086112104%_
                              (lambda (_%rest2112101%_ _%x2112102%_)
                                (_%lp112056%_
                                 _%rest1112080%_
                                 _%rest2112101%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f112047%_
                                    _%x1112081%_
                                    _%x2112102%_
                                    _%r112060%_))))))
                        (if (pair? _%$%rest2112082112090%_)
                            (let ((_%$%hd112087112107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2112082112090%_)))
                                  (_%$%tl112088112109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2112082112090%_))))
                              (let* ((_%x2112112%_ _%$%hd112087112107%_)
                                     (_%rest2112114%_ _%$%tl112088112109%_))
                                (_%$%K112086112104%_
                                 _%rest2112114%_
                                 _%x2112112%_)))
                            (_%$%else112084112098%_))))))
              (if (pair? _%$%rest1112061112069%_)
                  (let ((_%$%hd112066112119%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1112061112069%_)))
                        (_%$%tl112067112121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1112061112069%_))))
                    (let* ((_%x1112124%_ _%$%hd112066112119%_)
                           (_%rest1112126%_ _%$%tl112067112121%_))
                      (_%$%K112065112116%_ _%rest1112126%_ _%x1112124%_)))
                  (_%$%else112063112077%_)))))))
    (define foldl2
      (lambda (_%f112024%_ _%iv112025%_ _%lst1112026%_ _%lst2112027%_)
        (if (procedure? _%f112024%_)
            (let ((_%f112031%_ _%f112024%_))
              (__foldl2
               _%f112031%_
               _%iv112025%_
               _%lst1112026%_
               _%lst2112027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f112024%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f111957%_ _%iv111958%_ _%lst111959%_)
        (let* ((_%f111961%_ _%f111957%_)
               (_%iv111964%_ _%iv111958%_)
               (_%lst111967%_ _%lst111959%_))
          (if (procedure? _%f111961%_)
              (let ((_%f111972%_ _%f111961%_))
                (__foldl1 _%f111972%_ _%iv111964%_ _%lst111967%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111961%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f111985%_ _%iv111986%_ _%lst1111987%_ _%lst2111988%_)
        (let* ((_%f111990%_ _%f111985%_)
               (_%iv111993%_ _%iv111986%_)
               (_%lst1111996%_ _%lst1111987%_)
               (_%lst2111999%_ _%lst2111988%_))
          (if (procedure? _%f111990%_)
              (let ((_%f112004%_ _%f111990%_))
                (__foldl2
                 _%f112004%_
                 _%iv111993%_
                 _%lst1111996%_
                 _%lst2111999%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111990%_)
                '#!void)))))
    (define foldl
      (lambda _g115719_
        (let ((_g115720_ (let () (declare (not safe)) (##length _g115719_))))
          (cond ((let () (declare (not safe)) (##fx= _g115720_ 3))
                 (apply foldl__0 _g115719_))
                ((let () (declare (not safe)) (##fx= _g115720_ 4))
                 (apply foldl__1 _g115719_))
                ((let () (declare (not safe)) (##fx>= _g115720_ 4))
                 (apply foldl* _g115719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g115719_))))))
    (define __foldl*
      (lambda (_%f111888%_ _%iv111889%_ . _%rest111890%_)
        (let ((_%f111893%_ _%f111888%_))
          (let _%recur111902%_ ((_%iv111904%_ _%iv111889%_)
                                (_%rest111905%_ _%rest111890%_))
            (if (let* ((_%f111907%_ pair?)
                       (_%lst111910%_ _%rest111905%_)
                       (_%f111915%_ _%f111907%_))
                  (__andmap1 _%f111915%_ _%lst111910%_))
                (_%recur111902%_
                 (let ((__tmp115721
                        (let* ((_%f111934%_
                                (lambda (_%xs111931%_ _%r111932%_)
                                  (cons (car _%xs111931%_) _%r111932%_)))
                               (_%iv111937%_ (list _%iv111904%_))
                               (_%lst111940%_ _%rest111905%_)
                               (_%f111945%_ _%f111934%_))
                          (__foldr1 _%f111945%_ _%iv111937%_ _%lst111940%_))))
                   (declare (not safe))
                   (##apply _%f111893%_ __tmp115721))
                 (map cdr _%rest111905%_))
                _%iv111904%_)))))
    (define foldl*
      (lambda (_%f111872%_ _%iv111873%_ . _%rest111874%_)
        (if (procedure? _%f111872%_)
            (let ((_%f111878%_ _%f111872%_))
              (declare (not safe))
              (##apply __foldl* _%f111878%_ _%iv111873%_ _%rest111874%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f111872%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f111821%_ _%iv111822%_ _%lst111823%_)
        (let ((_%f111826%_ _%f111821%_))
          (let _%recur111835%_ ((_%rest111837%_ _%lst111823%_))
            (let* ((_%$%rest111838111846%_ _%rest111837%_)
                   (_%$%else111840111854%_ (lambda () _%iv111822%_))
                   (_%$%K111842111860%_
                    (lambda (_%rest111857%_ _%x111858%_)
                      (let ((__tmp115722 (_%recur111835%_ _%rest111857%_)))
                        (declare (not safe))
                        (_%f111826%_ _%x111858%_ __tmp115722)))))
              (if (pair? _%$%rest111838111846%_)
                  (let ((_%$%hd111843111863%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111838111846%_)))
                        (_%$%tl111844111865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111838111846%_))))
                    (let* ((_%x111868%_ _%$%hd111843111863%_)
                           (_%rest111870%_ _%$%tl111844111865%_))
                      (_%$%K111842111860%_ _%rest111870%_ _%x111868%_)))
                  (_%$%else111840111854%_)))))))
    (define foldr1
      (lambda (_%f111805%_ _%iv111806%_ _%lst111807%_)
        (if (procedure? _%f111805%_)
            (let ((_%f111811%_ _%f111805%_))
              (__foldr1 _%f111811%_ _%iv111806%_ _%lst111807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f111805%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f111719%_ _%iv111720%_ _%lst1111721%_ _%lst2111722%_)
        (let ((_%f111725%_ _%f111719%_))
          (let _%recur111734%_ ((_%rest1111736%_ _%lst1111721%_)
                                (_%rest2111737%_ _%lst2111722%_))
            (let* ((_%$%rest1111738111746%_ _%rest1111736%_)
                   (_%$%else111740111754%_ (lambda () _%iv111720%_))
                   (_%$%K111742111793%_
                    (lambda (_%rest1111757%_ _%x1111758%_)
                      (let* ((_%$%rest2111759111767%_ _%rest2111737%_)
                             (_%$%else111761111775%_ (lambda () _%iv111720%_))
                             (_%$%K111763111781%_
                              (lambda (_%rest2111778%_ _%x2111779%_)
                                (let ((__tmp115723
                                       (_%recur111734%_
                                        _%rest1111757%_
                                        _%rest2111778%_)))
                                  (declare (not safe))
                                  (_%f111725%_
                                   _%x1111758%_
                                   _%x2111779%_
                                   __tmp115723)))))
                        (if (pair? _%$%rest2111759111767%_)
                            (let ((_%$%hd111764111784%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2111759111767%_)))
                                  (_%$%tl111765111786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2111759111767%_))))
                              (let* ((_%x2111789%_ _%$%hd111764111784%_)
                                     (_%rest2111791%_ _%$%tl111765111786%_))
                                (_%$%K111763111781%_
                                 _%rest2111791%_
                                 _%x2111789%_)))
                            (_%$%else111761111775%_))))))
              (if (pair? _%$%rest1111738111746%_)
                  (let ((_%$%hd111743111796%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1111738111746%_)))
                        (_%$%tl111744111798%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1111738111746%_))))
                    (let* ((_%x1111801%_ _%$%hd111743111796%_)
                           (_%rest1111803%_ _%$%tl111744111798%_))
                      (_%$%K111742111793%_ _%rest1111803%_ _%x1111801%_)))
                  (_%$%else111740111754%_)))))))
    (define foldr2
      (lambda (_%f111702%_ _%iv111703%_ _%lst1111704%_ _%lst2111705%_)
        (if (procedure? _%f111702%_)
            (let ((_%f111709%_ _%f111702%_))
              (__foldr2
               _%f111709%_
               _%iv111703%_
               _%lst1111704%_
               _%lst2111705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f111702%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f111635%_ _%iv111636%_ _%lst111637%_)
        (let* ((_%f111639%_ _%f111635%_)
               (_%iv111642%_ _%iv111636%_)
               (_%lst111645%_ _%lst111637%_))
          (if (procedure? _%f111639%_)
              (let ((_%f111650%_ _%f111639%_))
                (__foldr1 _%f111650%_ _%iv111642%_ _%lst111645%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111639%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f111663%_ _%iv111664%_ _%lst1111665%_ _%lst2111666%_)
        (let* ((_%f111668%_ _%f111663%_)
               (_%iv111671%_ _%iv111664%_)
               (_%lst1111674%_ _%lst1111665%_)
               (_%lst2111677%_ _%lst2111666%_))
          (if (procedure? _%f111668%_)
              (let ((_%f111682%_ _%f111668%_))
                (__foldr2
                 _%f111682%_
                 _%iv111671%_
                 _%lst1111674%_
                 _%lst2111677%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111668%_)
                '#!void)))))
    (define foldr
      (lambda _g115724_
        (let ((_g115725_ (let () (declare (not safe)) (##length _g115724_))))
          (cond ((let () (declare (not safe)) (##fx= _g115725_ 3))
                 (apply foldr__0 _g115724_))
                ((let () (declare (not safe)) (##fx= _g115725_ 4))
                 (apply foldr__1 _g115724_))
                ((let () (declare (not safe)) (##fx>= _g115725_ 4))
                 (apply foldr* _g115724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g115724_))))))
    (define __foldr*
      (lambda (_%f111567%_ _%iv111568%_ . _%rest111569%_)
        (let ((_%f111572%_ _%f111567%_))
          (let _%recur111581%_ ((_%rest111583%_ _%rest111569%_))
            (if (let* ((_%f111585%_ pair?)
                       (_%lst111588%_ _%rest111583%_)
                       (_%f111593%_ _%f111585%_))
                  (__andmap1 _%f111593%_ _%lst111588%_))
                (let ((__tmp115726
                       (let* ((_%f111612%_
                               (lambda (_%xs111609%_ _%r111610%_)
                                 (cons (car _%xs111609%_) _%r111610%_)))
                              (_%iv111615%_
                               (list (_%recur111581%_
                                      (map cdr _%rest111583%_))))
                              (_%lst111618%_ _%rest111583%_)
                              (_%f111623%_ _%f111612%_))
                         (__foldr1 _%f111623%_ _%iv111615%_ _%lst111618%_))))
                  (declare (not safe))
                  (##apply _%f111572%_ __tmp115726))
                _%iv111568%_)))))
    (define foldr*
      (lambda (_%f111551%_ _%iv111552%_ . _%rest111553%_)
        (if (procedure? _%f111551%_)
            (let ((_%f111557%_ _%f111551%_))
              (declare (not safe))
              (##apply __foldr* _%f111557%_ _%iv111552%_ _%rest111553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f111551%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l111438%_)
        (let* ((_%$%l111439111452%_ _%l111438%_)
               (_%$%E111443111456%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%l111439111452%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%$%K111448111541%_
                 (lambda (_%r111539%_) (remove-nulls! _%r111539%_)))
                (_%$%K111445111528%_
                 (lambda (_%r111468%_)
                   (let _%loop111470%_ ((_%l111472%_ _%l111438%_)
                                        (_%r111473%_ _%r111468%_))
                     (let* ((_%$%r111474111487%_ _%r111473%_)
                            (_%$%E111478111491%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%r111474111487%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%$%K111483111518%_
                              (lambda (_%rr111516%_)
                                (let ((__tmp115728 _%l111472%_)
                                      (__tmp115727
                                       (remove-nulls! _%rr111516%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp115728 __tmp115727))))
                             (_%$%K111480111505%_
                              (lambda (_%rr111503%_)
                                (_%loop111470%_ _%r111473%_ _%rr111503%_)))
                             (_%$%K111479111496%_ (lambda () '#!void)))
                         (if (pair? _%$%r111474111487%_)
                             (let ((_%$%tl111485111523%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%r111474111487%_)))
                                   (_%$%hd111484111521%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%r111474111487%_))))
                               (if (null? _%$%hd111484111521%_)
                                   (let ((_%rr111526%_ _%$%tl111485111523%_))
                                     (_%$%K111483111518%_ _%rr111526%_))
                                   (let ((_%rr111511%_ _%$%tl111485111523%_))
                                     (_%$%K111480111505%_ _%rr111511%_))))
                             '#!void))))
                   _%l111438%_))
                (_%$%K111444111461%_ (lambda () _%l111438%_)))
            (if (pair? _%$%l111439111452%_)
                (let ((_%$%tl111450111546%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%l111439111452%_)))
                      (_%$%hd111449111544%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%l111439111452%_))))
                  (if (null? _%$%hd111449111544%_)
                      (let ((_%r111549%_ _%$%tl111450111546%_))
                        (remove-nulls! _%r111549%_))
                      (let ((_%r111534%_ _%$%tl111450111546%_))
                        (_%$%K111445111528%_ _%r111534%_))))
                (_%$%K111444111461%_))))))
    (define append1!
      (lambda (_%l111423%_ _%x111424%_)
        (let ((_%l2111427%_ (cons _%x111424%_ '())))
          (if (pair? _%l111423%_)
              (let ((_%l111429%_ _%l111423%_))
                (let ((__tmp115729
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l111429%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp115729 _%l2111427%_))
                _%l111429%_)
              _%l2111427%_))))
    (define __append-reverse-until
      (lambda (_%pred111365%_ _%rhead111366%_ _%tail111367%_)
        (let ((_%pred111370%_ _%pred111365%_))
          (let _%loop111379%_ ((_%rhead111381%_ _%rhead111366%_)
                               (_%tail111382%_ _%tail111367%_))
            (let* ((_%$%rhead111384111393%_ _%rhead111381%_)
                   (_%$%E111387111397%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead111384111393%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K111391111420%_
                     (lambda () (values '() _%tail111382%_)))
                    (_%$%K111388111404%_
                     (lambda (_%r111401%_ _%a111402%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred111370%_ _%a111402%_))
                           (values _%rhead111381%_ _%tail111382%_)
                           (_%loop111379%_
                            _%r111401%_
                            (cons _%a111402%_ _%tail111382%_))))))
                (let ((_%$%try-match111386111416%_
                       (lambda ()
                         (if (pair? _%$%rhead111384111393%_)
                             (let ((_%$%tl111390111409%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead111384111393%_)))
                                   (_%$%hd111389111407%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead111384111393%_))))
                               (let ((_%a111412%_ _%$%hd111389111407%_)
                                     (_%r111414%_ _%$%tl111390111409%_))
                                 (_%$%K111388111404%_
                                  _%r111414%_
                                  _%a111412%_)))
                             (_%$%E111387111397%_)))))
                  (if (null? _%$%rhead111384111393%_)
                      (_%$%K111391111420%_)
                      (_%$%try-match111386111416%_)))))))))
    (define append-reverse-until
      (lambda (_%pred111349%_ _%rhead111350%_ _%tail111351%_)
        (if (procedure? _%pred111349%_)
            (let ((_%pred111355%_ _%pred111349%_))
              (__append-reverse-until
               _%pred111355%_
               _%rhead111350%_
               _%tail111351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred111349%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f111298%_ _%lst111299%_)
        (let ((_%f111302%_ _%f111298%_))
          (let _%lp111311%_ ((_%rest111313%_ _%lst111299%_))
            (let* ((_%$%rest111315111323%_ _%rest111313%_)
                   (_%$%else111317111331%_ (lambda () '#t))
                   (_%$%K111319111337%_
                    (lambda (_%rest111334%_ _%x111335%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f111302%_ _%x111335%_))
                          (_%lp111311%_ _%rest111334%_)
                          '#f))))
              (if (pair? _%$%rest111315111323%_)
                  (let ((_%$%hd111320111340%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111315111323%_)))
                        (_%$%tl111321111342%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111315111323%_))))
                    (let* ((_%x111345%_ _%$%hd111320111340%_)
                           (_%rest111347%_ _%$%tl111321111342%_))
                      (_%$%K111319111337%_ _%rest111347%_ _%x111345%_)))
                  (_%$%else111317111331%_)))))))
    (define andmap1
      (lambda (_%f111283%_ _%lst111284%_)
        (if (procedure? _%f111283%_)
            (let ((_%f111288%_ _%f111283%_))
              (__andmap1 _%f111288%_ _%lst111284%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f111283%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f111197%_ _%lst1111198%_ _%lst2111199%_)
        (let ((_%f111202%_ _%f111197%_))
          (let _%lp111211%_ ((_%rest1111213%_ _%lst1111198%_)
                             (_%rest2111214%_ _%lst2111199%_))
            (let* ((_%$%rest1111216111224%_ _%rest1111213%_)
                   (_%$%else111218111232%_ (lambda () '#t))
                   (_%$%K111220111271%_
                    (lambda (_%rest1111235%_ _%x1111236%_)
                      (let* ((_%$%rest2111237111245%_ _%rest2111214%_)
                             (_%$%else111239111253%_ (lambda () '#t))
                             (_%$%K111241111259%_
                              (lambda (_%rest2111256%_ _%x2111257%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f111202%_ _%x1111236%_ _%x2111257%_))
                                    (_%lp111211%_
                                     _%rest1111235%_
                                     _%rest2111256%_)
                                    '#f))))
                        (if (pair? _%$%rest2111237111245%_)
                            (let ((_%$%hd111242111262%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2111237111245%_)))
                                  (_%$%tl111243111264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2111237111245%_))))
                              (let* ((_%x2111267%_ _%$%hd111242111262%_)
                                     (_%rest2111269%_ _%$%tl111243111264%_))
                                (_%$%K111241111259%_
                                 _%rest2111269%_
                                 _%x2111267%_)))
                            (_%$%else111239111253%_))))))
              (if (pair? _%$%rest1111216111224%_)
                  (let ((_%$%hd111221111274%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1111216111224%_)))
                        (_%$%tl111222111276%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1111216111224%_))))
                    (let* ((_%x1111279%_ _%$%hd111221111274%_)
                           (_%rest1111281%_ _%$%tl111222111276%_))
                      (_%$%K111220111271%_ _%rest1111281%_ _%x1111279%_)))
                  (_%$%else111218111232%_)))))))
    (define andmap2
      (lambda (_%f111181%_ _%lst1111182%_ _%lst2111183%_)
        (if (procedure? _%f111181%_)
            (let ((_%f111187%_ _%f111181%_))
              (__andmap2 _%f111187%_ _%lst1111182%_ _%lst2111183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f111181%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f111125%_ _%lst111126%_)
        (let* ((_%f111128%_ _%f111125%_) (_%lst111131%_ _%lst111126%_))
          (if (procedure? _%f111128%_)
              (let ((_%f111136%_ _%f111128%_))
                (__andmap1 _%f111136%_ _%lst111131%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111128%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f111148%_ _%lst1111149%_ _%lst2111150%_)
        (let* ((_%f111152%_ _%f111148%_)
               (_%lst1111155%_ _%lst1111149%_)
               (_%lst2111158%_ _%lst2111150%_))
          (if (procedure? _%f111152%_)
              (let ((_%f111163%_ _%f111152%_))
                (__andmap2 _%f111163%_ _%lst1111155%_ _%lst2111158%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111152%_)
                '#!void)))))
    (define andmap
      (lambda _g115730_
        (let ((_g115731_ (let () (declare (not safe)) (##length _g115730_))))
          (cond ((let () (declare (not safe)) (##fx= _g115731_ 2))
                 (apply andmap__0 _g115730_))
                ((let () (declare (not safe)) (##fx= _g115731_ 3))
                 (apply andmap__1 _g115730_))
                ((let () (declare (not safe)) (##fx>= _g115731_ 3))
                 (apply andmap* _g115730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g115730_))))))
    (define __andmap*
      (lambda (_%f111082%_ . _%rest111083%_)
        (let ((_%f111086%_ _%f111082%_))
          (let _%recur111095%_ ((_%rest111097%_ _%rest111083%_))
            (if (let* ((_%f111100%_ pair?)
                       (_%lst111103%_ _%rest111097%_)
                       (_%f111108%_ _%f111100%_))
                  (__andmap1 _%f111108%_ _%lst111103%_))
                (if (let ((__tmp115732 (map car _%rest111097%_)))
                      (declare (not safe))
                      (##apply _%f111086%_ __tmp115732))
                    (_%recur111095%_ (map cdr _%rest111097%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f111067%_ . _%rest111068%_)
        (if (procedure? _%f111067%_)
            (let ((_%f111072%_ _%f111067%_))
              (declare (not safe))
              (##apply __andmap* _%f111072%_ _%rest111068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f111067%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f111014%_ _%lst111015%_)
        (let ((_%f111018%_ _%f111014%_))
          (let _%lp111027%_ ((_%rest111029%_ _%lst111015%_))
            (let* ((_%$%rest111030111038%_ _%rest111029%_)
                   (_%$%else111032111046%_ (lambda () '#f))
                   (_%$%K111034111055%_
                    (lambda (_%rest111049%_ _%x111050%_)
                      (let ((_%$e111052%_
                             (let ()
                               (declare (not safe))
                               (_%f111018%_ _%x111050%_))))
                        (if _%$e111052%_
                            _%$e111052%_
                            (_%lp111027%_ _%rest111049%_))))))
              (if (pair? _%$%rest111030111038%_)
                  (let ((_%$%hd111035111058%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111030111038%_)))
                        (_%$%tl111036111060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111030111038%_))))
                    (let* ((_%x111063%_ _%$%hd111035111058%_)
                           (_%rest111065%_ _%$%tl111036111060%_))
                      (_%$%K111034111055%_ _%rest111065%_ _%x111063%_)))
                  (_%$%else111032111046%_)))))))
    (define ormap1
      (lambda (_%f110999%_ _%lst111000%_)
        (if (procedure? _%f110999%_)
            (let ((_%f111004%_ _%f110999%_))
              (__ormap1 _%f111004%_ _%lst111000%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f110999%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f110911%_ _%lst1110912%_ _%lst2110913%_)
        (let ((_%f110916%_ _%f110911%_))
          (let _%lp110925%_ ((_%rest1110927%_ _%lst1110912%_)
                             (_%rest2110928%_ _%lst2110913%_))
            (let* ((_%$%rest1110929110937%_ _%rest1110927%_)
                   (_%$%else110931110945%_ (lambda () '#f))
                   (_%$%K110933110987%_
                    (lambda (_%rest1110948%_ _%x1110949%_)
                      (let* ((_%$%rest2110950110958%_ _%rest2110928%_)
                             (_%$%else110952110966%_ (lambda () '#f))
                             (_%$%K110954110975%_
                              (lambda (_%rest2110969%_ _%x2110970%_)
                                (let ((_%$e110972%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110916%_
                                          _%x1110949%_
                                          _%x2110970%_))))
                                  (if _%$e110972%_
                                      _%$e110972%_
                                      (_%lp110925%_
                                       _%rest1110948%_
                                       _%rest2110969%_))))))
                        (if (pair? _%$%rest2110950110958%_)
                            (let ((_%$%hd110955110978%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2110950110958%_)))
                                  (_%$%tl110956110980%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2110950110958%_))))
                              (let* ((_%x2110983%_ _%$%hd110955110978%_)
                                     (_%rest2110985%_ _%$%tl110956110980%_))
                                (_%$%K110954110975%_
                                 _%rest2110985%_
                                 _%x2110983%_)))
                            (_%$%else110952110966%_))))))
              (if (pair? _%$%rest1110929110937%_)
                  (let ((_%$%hd110934110990%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1110929110937%_)))
                        (_%$%tl110935110992%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1110929110937%_))))
                    (let* ((_%x1110995%_ _%$%hd110934110990%_)
                           (_%rest1110997%_ _%$%tl110935110992%_))
                      (_%$%K110933110987%_ _%rest1110997%_ _%x1110995%_)))
                  (_%$%else110931110945%_)))))))
    (define ormap2
      (lambda (_%f110895%_ _%lst1110896%_ _%lst2110897%_)
        (if (procedure? _%f110895%_)
            (let ((_%f110901%_ _%f110895%_))
              (__ormap2 _%f110901%_ _%lst1110896%_ _%lst2110897%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f110895%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f110839%_ _%lst110840%_)
        (let* ((_%f110842%_ _%f110839%_) (_%lst110845%_ _%lst110840%_))
          (if (procedure? _%f110842%_)
              (let ((_%f110850%_ _%f110842%_))
                (__ormap1 _%f110850%_ _%lst110845%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110842%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f110862%_ _%lst1110863%_ _%lst2110864%_)
        (let* ((_%f110866%_ _%f110862%_)
               (_%lst1110869%_ _%lst1110863%_)
               (_%lst2110872%_ _%lst2110864%_))
          (if (procedure? _%f110866%_)
              (let ((_%f110877%_ _%f110866%_))
                (__ormap2 _%f110877%_ _%lst1110869%_ _%lst2110872%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110866%_)
                '#!void)))))
    (define ormap
      (lambda _g115733_
        (let ((_g115734_ (let () (declare (not safe)) (##length _g115733_))))
          (cond ((let () (declare (not safe)) (##fx= _g115734_ 2))
                 (apply ormap__0 _g115733_))
                ((let () (declare (not safe)) (##fx= _g115734_ 3))
                 (apply ormap__1 _g115733_))
                ((let () (declare (not safe)) (##fx>= _g115734_ 3))
                 (apply ormap* _g115733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g115733_))))))
    (define __ormap*
      (lambda (_%f110795%_ . _%rest110796%_)
        (let ((_%f110799%_ _%f110795%_))
          (let _%recur110808%_ ((_%rest110810%_ _%rest110796%_))
            (if (let* ((_%f110812%_ pair?)
                       (_%lst110815%_ _%rest110810%_)
                       (_%f110820%_ _%f110812%_))
                  (__andmap1 _%f110820%_ _%lst110815%_))
                (let ((_%$e110836%_
                       (let ((__tmp115735 (map car _%rest110810%_)))
                         (declare (not safe))
                         (##apply _%f110799%_ __tmp115735))))
                  (if _%$e110836%_
                      _%$e110836%_
                      (_%recur110808%_ (map cdr _%rest110810%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f110780%_ . _%rest110781%_)
        (if (procedure? _%f110780%_)
            (let ((_%f110785%_ _%f110780%_))
              (declare (not safe))
              (##apply __ormap* _%f110785%_ _%rest110781%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f110780%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f110723%_ _%lst110724%_)
        (let ((_%f110727%_ _%f110723%_))
          (let _%recur110736%_ ((_%rest110738%_ _%lst110724%_))
            (let* ((_%$%rest110740110748%_ _%rest110738%_)
                   (_%$%else110742110756%_ (lambda () '()))
                   (_%$%K110744110768%_
                    (lambda (_%rest110759%_ _%x110760%_)
                      (let ((_%$e110762%_
                             (let ()
                               (declare (not safe))
                               (_%f110727%_ _%x110760%_))))
                        (if _%$e110762%_
                            (cons _%$e110762%_
                                  (_%recur110736%_ _%rest110759%_))
                            (_%recur110736%_ _%rest110759%_))))))
              (if (pair? _%$%rest110740110748%_)
                  (let ((_%$%hd110745110771%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest110740110748%_)))
                        (_%$%tl110746110773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest110740110748%_))))
                    (let* ((_%x110776%_ _%$%hd110745110771%_)
                           (_%rest110778%_ _%$%tl110746110773%_))
                      (_%$%K110744110768%_ _%rest110778%_ _%x110776%_)))
                  (_%$%else110742110756%_)))))))
    (define filter-map1
      (lambda (_%f110708%_ _%lst110709%_)
        (if (procedure? _%f110708%_)
            (let ((_%f110713%_ _%f110708%_))
              (__filter-map1 _%f110713%_ _%lst110709%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f110708%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f110616%_ _%lst1110617%_ _%lst2110618%_)
        (let ((_%f110621%_ _%f110616%_))
          (let _%recur110630%_ ((_%rest1110632%_ _%lst1110617%_)
                                (_%rest2110633%_ _%lst2110618%_))
            (let* ((_%$%rest1110635110643%_ _%rest1110632%_)
                   (_%$%else110637110651%_ (lambda () '()))
                   (_%$%K110639110696%_
                    (lambda (_%rest1110654%_ _%x1110655%_)
                      (let* ((_%$%rest2110656110664%_ _%rest2110633%_)
                             (_%$%else110658110672%_ (lambda () '()))
                             (_%$%K110660110684%_
                              (lambda (_%rest2110675%_ _%x2110676%_)
                                (let ((_%$e110678%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110621%_
                                          _%x1110655%_
                                          _%x2110676%_))))
                                  (if _%$e110678%_
                                      (cons _%$e110678%_
                                            (_%recur110630%_
                                             _%rest1110654%_
                                             _%rest2110675%_))
                                      (_%recur110630%_
                                       _%rest1110654%_
                                       _%rest2110675%_))))))
                        (if (pair? _%$%rest2110656110664%_)
                            (let ((_%$%hd110661110687%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2110656110664%_)))
                                  (_%$%tl110662110689%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2110656110664%_))))
                              (let* ((_%x2110692%_ _%$%hd110661110687%_)
                                     (_%rest2110694%_ _%$%tl110662110689%_))
                                (_%$%K110660110684%_
                                 _%rest2110694%_
                                 _%x2110692%_)))
                            (_%$%else110658110672%_))))))
              (if (pair? _%$%rest1110635110643%_)
                  (let ((_%$%hd110640110699%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1110635110643%_)))
                        (_%$%tl110641110701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1110635110643%_))))
                    (let* ((_%x1110704%_ _%$%hd110640110699%_)
                           (_%rest1110706%_ _%$%tl110641110701%_))
                      (_%$%K110639110696%_ _%rest1110706%_ _%x1110704%_)))
                  (_%$%else110637110651%_)))))))
    (define filter-map2
      (lambda (_%f110600%_ _%lst1110601%_ _%lst2110602%_)
        (if (procedure? _%f110600%_)
            (let ((_%f110606%_ _%f110600%_))
              (__filter-map2 _%f110606%_ _%lst1110601%_ _%lst2110602%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f110600%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f110544%_ _%lst110545%_)
        (let* ((_%f110547%_ _%f110544%_) (_%lst110550%_ _%lst110545%_))
          (if (procedure? _%f110547%_)
              (let ((_%f110555%_ _%f110547%_))
                (__filter-map1 _%f110555%_ _%lst110550%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110547%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f110567%_ _%lst1110568%_ _%lst2110569%_)
        (let* ((_%f110571%_ _%f110567%_)
               (_%lst1110574%_ _%lst1110568%_)
               (_%lst2110577%_ _%lst2110569%_))
          (if (procedure? _%f110571%_)
              (let ((_%f110582%_ _%f110571%_))
                (__filter-map2 _%f110582%_ _%lst1110574%_ _%lst2110577%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110571%_)
                '#!void)))))
    (define filter-map
      (lambda _g115736_
        (let ((_g115737_ (let () (declare (not safe)) (##length _g115736_))))
          (cond ((let () (declare (not safe)) (##fx= _g115737_ 2))
                 (apply filter-map__0 _g115736_))
                ((let () (declare (not safe)) (##fx= _g115737_ 3))
                 (apply filter-map__1 _g115736_))
                ((let () (declare (not safe)) (##fx>= _g115737_ 3))
                 (apply filter-map* _g115736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g115736_))))))
    (define __filter-map*
      (lambda (_%f110495%_ . _%rest110496%_)
        (let ((_%f110499%_ _%f110495%_))
          (let _%recur110508%_ ((_%rest110510%_ _%rest110496%_))
            (if (let* ((_%f110513%_ pair?)
                       (_%lst110516%_ _%rest110510%_)
                       (_%f110521%_ _%f110513%_))
                  (__andmap1 _%f110521%_ _%lst110516%_))
                (let ((_%$e110538%_
                       (let ((__tmp115738 (map car _%rest110510%_)))
                         (declare (not safe))
                         (##apply _%f110499%_ __tmp115738))))
                  (if _%$e110538%_
                      (cons _%$e110538%_
                            (_%recur110508%_ (map cdr _%rest110510%_)))
                      (_%recur110508%_ (map cdr _%rest110510%_))))
                '())))))
    (define filter-map*
      (lambda (_%f110480%_ . _%rest110481%_)
        (if (procedure? _%f110480%_)
            (let ((_%f110485%_ _%f110480%_))
              (declare (not safe))
              (##apply __filter-map* _%f110485%_ _%rest110481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f110480%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key110456%_ _%lst110458%_ _%default110460%_)
        (let ((_%$e110463%_
               (if (pair? _%lst110458%_)
                   (assq _%key110456%_ _%lst110458%_)
                   '#f)))
          (if _%$e110463%_
              (cdr _%$e110463%_)
              (if (procedure? _%default110460%_)
                  (_%default110460%_ _%key110456%_)
                  _%default110460%_)))))
    (define agetq__0
      (lambda (_%key110471%_ _%lst110472%_)
        (let ((_%default110474%_ '#f))
          (agetq__% _%key110471%_ _%lst110472%_ _%default110474%_))))
    (define agetq
      (lambda _g115739_
        (let ((_g115740_ (let () (declare (not safe)) (##length _g115739_))))
          (cond ((let () (declare (not safe)) (##fx= _g115740_ 2))
                 (apply agetq__0 _g115739_))
                ((let () (declare (not safe)) (##fx= _g115740_ 3))
                 (apply agetq__% _g115739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g115739_))))))
    (define agetv__%
      (lambda (_%key110431%_ _%lst110433%_ _%default110435%_)
        (let ((_%$e110438%_
               (if (pair? _%lst110433%_)
                   (assv _%key110431%_ _%lst110433%_)
                   '#f)))
          (if _%$e110438%_
              (cdr _%$e110438%_)
              (if (procedure? _%default110435%_)
                  (_%default110435%_ _%key110431%_)
                  _%default110435%_)))))
    (define agetv__0
      (lambda (_%key110446%_ _%lst110447%_)
        (let ((_%default110449%_ '#f))
          (agetv__% _%key110446%_ _%lst110447%_ _%default110449%_))))
    (define agetv
      (lambda _g115741_
        (let ((_g115742_ (let () (declare (not safe)) (##length _g115741_))))
          (cond ((let () (declare (not safe)) (##fx= _g115742_ 2))
                 (apply agetv__0 _g115741_))
                ((let () (declare (not safe)) (##fx= _g115742_ 3))
                 (apply agetv__% _g115741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g115741_))))))
    (define aget__%
      (lambda (_%key110406%_ _%lst110408%_ _%default110410%_)
        (let ((_%$e110413%_
               (if (pair? _%lst110408%_)
                   (assoc _%key110406%_ _%lst110408%_)
                   '#f)))
          (if _%$e110413%_
              (cdr _%$e110413%_)
              (if (procedure? _%default110410%_)
                  (_%default110410%_ _%key110406%_)
                  _%default110410%_)))))
    (define aget__0
      (lambda (_%key110421%_ _%lst110422%_)
        (let ((_%default110424%_ '#f))
          (aget__% _%key110421%_ _%lst110422%_ _%default110424%_))))
    (define aget
      (lambda _g115743_
        (let ((_g115744_ (let () (declare (not safe)) (##length _g115743_))))
          (cond ((let () (declare (not safe)) (##fx= _g115744_ 2))
                 (apply aget__0 _g115743_))
                ((let () (declare (not safe)) (##fx= _g115744_ 3))
                 (apply aget__% _g115743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g115743_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key110335%_ _%lst110337%_ _%default110339%_)
        (let _%lp110342%_ ((_%rest110345%_ _%lst110337%_))
          (let* ((_%$%rest110347110357%_ _%rest110345%_)
                 (_%$%else110349110365%_
                  (lambda ()
                    (if (procedure? _%default110339%_)
                        (_%default110339%_ _%key110335%_)
                        _%default110339%_)))
                 (_%$%K110351110374%_
                  (lambda (_%rest110368%_ _%v110369%_ _%k110371%_)
                    (if (eq? _%k110371%_ _%key110335%_)
                        _%v110369%_
                        (_%lp110342%_ _%rest110368%_)))))
            (if (pair? _%$%rest110347110357%_)
                (let ((_%$%hd110352110377%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110347110357%_)))
                      (_%$%tl110353110379%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110347110357%_))))
                  (let ((_%k110382%_ _%$%hd110352110377%_))
                    (if (pair? _%$%tl110353110379%_)
                        (let ((_%$%hd110354110384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl110353110379%_)))
                              (_%$%tl110355110386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl110353110379%_))))
                          (let* ((_%v110389%_ _%$%hd110354110384%_)
                                 (_%rest110391%_ _%$%tl110355110386%_))
                            (_%$%K110351110374%_
                             _%rest110391%_
                             _%v110389%_
                             _%k110382%_)))
                        (_%$%else110349110365%_))))
                (_%$%else110349110365%_))))))
    (define pgetq__0
      (lambda (_%key110396%_ _%lst110397%_)
        (let ((_%default110399%_ '#f))
          (pgetq__% _%key110396%_ _%lst110397%_ _%default110399%_))))
    (define pgetq
      (lambda _g115745_
        (let ((_g115746_ (let () (declare (not safe)) (##length _g115745_))))
          (cond ((let () (declare (not safe)) (##fx= _g115746_ 2))
                 (apply pgetq__0 _g115745_))
                ((let () (declare (not safe)) (##fx= _g115746_ 3))
                 (apply pgetq__% _g115745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g115745_))))))
    (define pgetv__%
      (lambda (_%key110264%_ _%lst110266%_ _%default110268%_)
        (let _%lp110271%_ ((_%rest110274%_ _%lst110266%_))
          (let* ((_%$%rest110276110286%_ _%rest110274%_)
                 (_%$%else110278110294%_
                  (lambda ()
                    (if (procedure? _%default110268%_)
                        (_%default110268%_ _%key110264%_)
                        _%default110268%_)))
                 (_%$%K110280110303%_
                  (lambda (_%rest110297%_ _%v110298%_ _%k110300%_)
                    (if (eqv? _%k110300%_ _%key110264%_)
                        _%v110298%_
                        (_%lp110271%_ _%rest110297%_)))))
            (if (pair? _%$%rest110276110286%_)
                (let ((_%$%hd110281110306%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110276110286%_)))
                      (_%$%tl110282110308%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110276110286%_))))
                  (let ((_%k110311%_ _%$%hd110281110306%_))
                    (if (pair? _%$%tl110282110308%_)
                        (let ((_%$%hd110283110313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl110282110308%_)))
                              (_%$%tl110284110315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl110282110308%_))))
                          (let* ((_%v110318%_ _%$%hd110283110313%_)
                                 (_%rest110320%_ _%$%tl110284110315%_))
                            (_%$%K110280110303%_
                             _%rest110320%_
                             _%v110318%_
                             _%k110311%_)))
                        (_%$%else110278110294%_))))
                (_%$%else110278110294%_))))))
    (define pgetv__0
      (lambda (_%key110325%_ _%lst110326%_)
        (let ((_%default110328%_ '#f))
          (pgetv__% _%key110325%_ _%lst110326%_ _%default110328%_))))
    (define pgetv
      (lambda _g115747_
        (let ((_g115748_ (let () (declare (not safe)) (##length _g115747_))))
          (cond ((let () (declare (not safe)) (##fx= _g115748_ 2))
                 (apply pgetv__0 _g115747_))
                ((let () (declare (not safe)) (##fx= _g115748_ 3))
                 (apply pgetv__% _g115747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g115747_))))))
    (define pget__%
      (lambda (_%key110193%_ _%lst110195%_ _%default110197%_)
        (let _%lp110200%_ ((_%rest110203%_ _%lst110195%_))
          (let* ((_%$%rest110205110215%_ _%rest110203%_)
                 (_%$%else110207110223%_
                  (lambda ()
                    (if (procedure? _%default110197%_)
                        (_%default110197%_ _%key110193%_)
                        _%default110197%_)))
                 (_%$%K110209110232%_
                  (lambda (_%rest110226%_ _%v110227%_ _%k110229%_)
                    (if (equal? _%k110229%_ _%key110193%_)
                        _%v110227%_
                        (_%lp110200%_ _%rest110226%_)))))
            (if (pair? _%$%rest110205110215%_)
                (let ((_%$%hd110210110235%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110205110215%_)))
                      (_%$%tl110211110237%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110205110215%_))))
                  (let ((_%k110240%_ _%$%hd110210110235%_))
                    (if (pair? _%$%tl110211110237%_)
                        (let ((_%$%hd110212110242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl110211110237%_)))
                              (_%$%tl110213110244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl110211110237%_))))
                          (let* ((_%v110247%_ _%$%hd110212110242%_)
                                 (_%rest110249%_ _%$%tl110213110244%_))
                            (_%$%K110209110232%_
                             _%rest110249%_
                             _%v110247%_
                             _%k110240%_)))
                        (_%$%else110207110223%_))))
                (_%$%else110207110223%_))))))
    (define pget__0
      (lambda (_%key110254%_ _%lst110255%_)
        (let ((_%default110257%_ '#f))
          (pget__% _%key110254%_ _%lst110255%_ _%default110257%_))))
    (define pget
      (lambda _g115749_
        (let ((_g115750_ (let () (declare (not safe)) (##length _g115749_))))
          (cond ((let () (declare (not safe)) (##fx= _g115750_ 2))
                 (apply pget__0 _g115749_))
                ((let () (declare (not safe)) (##fx= _g115750_ 3))
                 (apply pget__% _g115749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g115749_))))))
    (define __find
      (lambda (_%pred110153%_ _%lst110154%_)
        (let* ((_%pred110157%_ _%pred110153%_)
               (_%$e110188%_
                (let* ((_%proc110166%_ _%pred110157%_)
                       (_%lst110169%_ _%lst110154%_)
                       (_%proc110174%_ _%proc110166%_))
                  (__memf _%proc110174%_ _%lst110169%_))))
          (if _%$e110188%_
              (let () (declare (not safe)) (##car _%$e110188%_))
              '#f))))
    (define find
      (lambda (_%pred110138%_ _%lst110139%_)
        (if (procedure? _%pred110138%_)
            (let ((_%pred110143%_ _%pred110138%_))
              (__find _%pred110143%_ _%lst110139%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred110138%_)
              '#!void))))
    (define __memf
      (lambda (_%proc110088%_ _%lst110089%_)
        (let ((_%proc110092%_ _%proc110088%_))
          (let _%lp110101%_ ((_%rest110103%_ _%lst110089%_))
            (let* ((_%$%rest110104110112%_ _%rest110103%_)
                   (_%$%else110106110120%_ (lambda () '#f))
                   (_%$%K110108110126%_
                    (lambda (_%tl110123%_ _%hd110124%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc110092%_ _%hd110124%_))
                          _%rest110103%_
                          (_%lp110101%_ _%tl110123%_)))))
              (if (pair? _%$%rest110104110112%_)
                  (let ((_%$%hd110109110129%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest110104110112%_)))
                        (_%$%tl110110110131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest110104110112%_))))
                    (let* ((_%hd110134%_ _%$%hd110109110129%_)
                           (_%tl110136%_ _%$%tl110110110131%_))
                      (_%$%K110108110126%_ _%tl110136%_ _%hd110134%_)))
                  (_%$%else110106110120%_)))))))
    (define memf
      (lambda (_%proc110073%_ _%lst110074%_)
        (if (procedure? _%proc110073%_)
            (let ((_%proc110078%_ _%proc110073%_))
              (__memf _%proc110078%_ _%lst110074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc110073%_)
              '#!void))))
    (define remove1
      (lambda (_%el109996%_ _%lst109998%_)
        (let _%lp110001%_ ((_%rest110004%_ _%lst109998%_) (_%r110006%_ '()))
          (let* ((_%$%rest110008110016%_ _%rest110004%_)
                 (_%$%else110010110024%_ (lambda () _%lst109998%_))
                 (_%$%K110012110061%_
                  (lambda (_%rest110027%_ _%hd110028%_)
                    (if (equal? _%el109996%_ _%hd110028%_)
                        (let* ((_%f110031%_ cons)
                               (_%iv110034%_ _%rest110027%_)
                               (_%lst110037%_ _%r110006%_)
                               (_%f110042%_ _%f110031%_))
                          (__foldl1 _%f110042%_ _%iv110034%_ _%lst110037%_))
                        (_%lp110001%_
                         _%rest110027%_
                         (cons _%hd110028%_ _%r110006%_))))))
            (if (pair? _%$%rest110008110016%_)
                (let ((_%$%hd110013110064%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110008110016%_)))
                      (_%$%tl110014110066%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110008110016%_))))
                  (let* ((_%hd110069%_ _%$%hd110013110064%_)
                         (_%rest110071%_ _%$%tl110014110066%_))
                    (_%$%K110012110061%_ _%rest110071%_ _%hd110069%_)))
                (_%$%else110010110024%_))))))
    (define remv1
      (lambda (_%el109919%_ _%lst109921%_)
        (let _%lp109924%_ ((_%rest109927%_ _%lst109921%_) (_%r109929%_ '()))
          (let* ((_%$%rest109931109939%_ _%rest109927%_)
                 (_%$%else109933109947%_ (lambda () _%lst109921%_))
                 (_%$%K109935109984%_
                  (lambda (_%rest109950%_ _%hd109951%_)
                    (if (eqv? _%el109919%_ _%hd109951%_)
                        (let* ((_%f109954%_ cons)
                               (_%iv109957%_ _%rest109950%_)
                               (_%lst109960%_ _%r109929%_)
                               (_%f109965%_ _%f109954%_))
                          (__foldl1 _%f109965%_ _%iv109957%_ _%lst109960%_))
                        (_%lp109924%_
                         _%rest109950%_
                         (cons _%hd109951%_ _%r109929%_))))))
            (if (pair? _%$%rest109931109939%_)
                (let ((_%$%hd109936109987%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest109931109939%_)))
                      (_%$%tl109937109989%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest109931109939%_))))
                  (let* ((_%hd109992%_ _%$%hd109936109987%_)
                         (_%rest109994%_ _%$%tl109937109989%_))
                    (_%$%K109935109984%_ _%rest109994%_ _%hd109992%_)))
                (_%$%else109933109947%_))))))
    (define remq1
      (lambda (_%el109842%_ _%lst109844%_)
        (let _%lp109847%_ ((_%rest109850%_ _%lst109844%_) (_%r109852%_ '()))
          (let* ((_%$%rest109854109862%_ _%rest109850%_)
                 (_%$%else109856109870%_ (lambda () _%lst109844%_))
                 (_%$%K109858109907%_
                  (lambda (_%rest109873%_ _%hd109874%_)
                    (if (eq? _%el109842%_ _%hd109874%_)
                        (let* ((_%f109877%_ cons)
                               (_%iv109880%_ _%rest109873%_)
                               (_%lst109883%_ _%r109852%_)
                               (_%f109888%_ _%f109877%_))
                          (__foldl1 _%f109888%_ _%iv109880%_ _%lst109883%_))
                        (_%lp109847%_
                         _%rest109873%_
                         (cons _%hd109874%_ _%r109852%_))))))
            (if (pair? _%$%rest109854109862%_)
                (let ((_%$%hd109859109910%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest109854109862%_)))
                      (_%$%tl109860109912%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest109854109862%_))))
                  (let* ((_%hd109915%_ _%$%hd109859109910%_)
                         (_%rest109917%_ _%$%tl109860109912%_))
                    (_%$%K109858109907%_ _%rest109917%_ _%hd109915%_)))
                (_%$%else109856109870%_))))))
    (define __remf
      (lambda (_%proc109759%_ _%lst109760%_)
        (let ((_%proc109763%_ _%proc109759%_))
          (let _%lp109772%_ ((_%rest109774%_ _%lst109760%_) (_%r109775%_ '()))
            (let* ((_%$%rest109776109784%_ _%rest109774%_)
                   (_%$%else109778109792%_ (lambda () _%lst109760%_))
                   (_%$%K109780109830%_
                    (lambda (_%rest109795%_ _%hd109796%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109763%_ _%hd109796%_))
                          (let* ((_%f109798%_ cons)
                                 (_%iv109801%_ _%rest109795%_)
                                 (_%lst109804%_ _%r109775%_)
                                 (_%f109809%_ _%f109798%_))
                            (__foldl1 _%f109809%_ _%iv109801%_ _%lst109804%_))
                          (_%lp109772%_
                           _%rest109795%_
                           (cons _%hd109796%_ _%r109775%_))))))
              (if (pair? _%$%rest109776109784%_)
                  (let ((_%$%hd109781109833%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest109776109784%_)))
                        (_%$%tl109782109835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest109776109784%_))))
                    (let* ((_%hd109838%_ _%$%hd109781109833%_)
                           (_%rest109840%_ _%$%tl109782109835%_))
                      (_%$%K109780109830%_ _%rest109840%_ _%hd109838%_)))
                  (_%$%else109778109792%_)))))))
    (define remf
      (lambda (_%proc109744%_ _%lst109745%_)
        (if (procedure? _%proc109744%_)
            (let ((_%proc109749%_ _%proc109744%_))
              (__remf _%proc109749%_ _%lst109745%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc109744%_)
              '#!void))))
    (define __1+
      (lambda (_%x109732%_)
        (let ((_%x109735%_ _%x109732%_)) (+ _%x109735%_ '1))))
    (define 1+
      (lambda (_%x109718%_)
        (if (number? _%x109718%_)
            (let ((_%x109722%_ _%x109718%_)) (__1+ _%x109722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x109718%_)
              '#!void))))
    (define __1-
      (lambda (_%x109706%_)
        (let ((_%x109709%_ _%x109706%_)) (- _%x109709%_ '1))))
    (define 1-
      (lambda (_%x109692%_)
        (if (number? _%x109692%_)
            (let ((_%x109696%_ _%x109692%_)) (__1- _%x109696%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x109692%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x109680%_)
        (let ((_%x109683%_ _%x109680%_))
          (declare (not safe))
          (##fx+ _%x109683%_ '1))))
    (define fx1+
      (lambda (_%x109666%_)
        (if (fixnum? _%x109666%_)
            (let ((_%x109670%_ _%x109666%_)) (__fx1+ _%x109670%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x109666%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x109654%_)
        (let ((_%x109657%_ _%x109654%_))
          (declare (not safe))
          (##fx- _%x109657%_ '1))))
    (define fx1-
      (lambda (_%x109640%_)
        (if (fixnum? _%x109640%_)
            (let ((_%x109644%_ _%x109640%_)) (__fx1- _%x109644%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x109640%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x109637%_)
        (if (fixnum? _%x109637%_)
            (let () (declare (not safe)) (##fx>= _%x109637%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x109634%_)
        (if (fixnum? _%x109634%_)
            (let () (declare (not safe)) (##fx> _%x109634%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x109631%_)
        (let () (declare (not safe)) (##fx= _%x109631%_ '0))))
    (define fx<0?
      (lambda (_%x109628%_)
        (if (fixnum? _%x109628%_)
            (let () (declare (not safe)) (##fx< _%x109628%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x109625%_)
        (if (fixnum? _%x109625%_)
            (let () (declare (not safe)) (##fx<= _%x109625%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x109622%_)
        (if (symbol? _%x109622%_) (not (uninterned-symbol? _%x109622%_)) '#f)))
    (define __display-as-string
      (lambda (_%x109516%_ _%port109517%_)
        (let ((_%port109520%_ _%port109517%_))
          (if (or (string? _%x109516%_)
                  (symbol? _%x109516%_)
                  (keyword? _%x109516%_)
                  (number? _%x109516%_)
                  (char? _%x109516%_))
              (display _%x109516%_ _%port109520%_)
              (if (pair? _%x109516%_)
                  (let ()
                    (let* ((_%x109543%_
                            (let () (declare (not safe)) (##car _%x109516%_)))
                           (_%port109546%_ _%port109520%_))
                      (if (output-port? _%port109546%_)
                          (let ((_%port109551%_ _%port109546%_))
                            (__display-as-string _%x109543%_ _%port109551%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109546%_)
                            '#!void)))
                    (let* ((_%x109566%_
                            (let () (declare (not safe)) (##cdr _%x109516%_)))
                           (_%port109569%_ _%port109520%_))
                      (if (output-port? _%port109569%_)
                          (let ((_%port109574%_ _%port109569%_))
                            (__display-as-string _%x109566%_ _%port109574%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109569%_)
                            '#!void))))
                  (if (vector? _%x109516%_)
                      (vector-for-each
                       (lambda (_%$%g109585109587%_)
                         (let* ((_%x109590%_ _%$%g109585109587%_)
                                (_%port109593%_ _%port109520%_))
                           (if (output-port? _%port109593%_)
                               (let ((_%port109598%_ _%port109593%_))
                                 (__display-as-string
                                  _%x109590%_
                                  _%port109598%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port109593%_)
                                 '#!void))))
                       _%x109516%_)
                      (if (or (null? _%x109516%_)
                              (eq? _%x109516%_ '#!void)
                              (eof-object? _%x109516%_)
                              (boolean? _%x109516%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x109516%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x109501%_ _%port109502%_)
        (if (output-port? _%port109502%_)
            (let ((_%port109506%_ _%port109502%_))
              (__display-as-string _%x109501%_ _%port109506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port109502%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x109441%_)
        (if (string? _%x109441%_)
            _%x109441%_
            (if (symbol? _%x109441%_)
                (let () (declare (not safe)) (##symbol->string _%x109441%_))
                (if (keyword? _%x109441%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x109441%_))
                    (if (number? _%x109441%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x109441%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g109447109449%_)
                           (let* ((_%x109452%_ _%x109441%_)
                                  (_%port109455%_ _%$%g109447109449%_))
                             (if (output-port? _%port109455%_)
                                 (let ((_%port109460%_ _%port109455%_))
                                   (__display-as-string
                                    _%x109452%_
                                    _%port109460%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port109455%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args109474%_
        (call-with-output-string
         '()
         (lambda (_%$%g109475109477%_)
           (let* ((_%x109480%_ _%args109474%_)
                  (_%port109483%_ _%$%g109475109477%_))
             (if (output-port? _%port109483%_)
                 (let ((_%port109488%_ _%port109483%_))
                   (__display-as-string _%x109480%_ _%port109488%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port109483%_)
                   '#!void)))))))
    (define as-string
      (lambda _g115751_
        (let ((_g115752_ (let () (declare (not safe)) (##length _g115751_))))
          (cond ((let () (declare (not safe)) (##fx= _g115752_ 1))
                 (apply as-string__0 _g115751_))
                (#t
                 (apply (lambda _%args109474%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args109474%_)))
                        _g115751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g115751_))))))
    (define make-symbol__0
      (lambda (_%x109437%_)
        (if (interned-symbol? _%x109437%_)
            _%x109437%_
            (let ((__tmp115753 (as-string__0 _%x109437%_)))
              (declare (not safe))
              (##string->symbol __tmp115753)))))
    (define make-symbol__1
      (lambda _%args109439%_
        (let ((__tmp115754
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109439%_))))
          (declare (not safe))
          (##string->symbol __tmp115754))))
    (define make-symbol
      (lambda _g115755_
        (let ((_g115756_ (let () (declare (not safe)) (##length _g115755_))))
          (cond ((let () (declare (not safe)) (##fx= _g115756_ 1))
                 (apply make-symbol__0 _g115755_))
                (#t
                 (apply (lambda _%args109439%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args109439%_)))
                        _g115755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g115755_))))))
    (define make-keyword__0
      (lambda (_%x109433%_)
        (if (interned-keyword? _%x109433%_)
            _%x109433%_
            (let ((__tmp115757 (as-string__0 _%x109433%_)))
              (declare (not safe))
              (##string->keyword __tmp115757)))))
    (define make-keyword__1
      (lambda _%args109435%_
        (let ((__tmp115758
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109435%_))))
          (declare (not safe))
          (##string->keyword __tmp115758))))
    (define make-keyword
      (lambda _g115759_
        (let ((_g115760_ (let () (declare (not safe)) (##length _g115759_))))
          (cond ((let () (declare (not safe)) (##fx= _g115760_ 1))
                 (apply make-keyword__0 _g115759_))
                (#t
                 (apply (lambda _%args109435%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args109435%_)))
                        _g115759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g115759_))))))
    (define interned-keyword?
      (lambda (_%x109430%_)
        (if (keyword? _%x109430%_)
            (not (uninterned-keyword? _%x109430%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym109418%_)
        (let ((_%sym109421%_ _%sym109418%_))
          (if (uninterned-symbol? _%sym109421%_)
              (let ((__tmp115761
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109421%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp115761))
              (let ((__tmp115762
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109421%_))))
                (declare (not safe))
                (##string->keyword __tmp115762))))))
    (define symbol->keyword
      (lambda (_%sym109404%_)
        (if (symbol? _%sym109404%_)
            (let ((_%sym109408%_ _%sym109404%_))
              (__symbol->keyword _%sym109408%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym109404%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym109392%_)
        (let ((_%sym109395%_ _%sym109392%_))
          (if (uninterned-keyword? _%sym109395%_)
              (let ((__tmp115763
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109395%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp115763))
              (let ((__tmp115764
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109395%_))))
                (declare (not safe))
                (##string->symbol __tmp115764))))))
    (define keyword->symbol
      (lambda (_%sym109378%_)
        (if (keyword? _%sym109378%_)
            (let ((_%sym109382%_ _%sym109378%_))
              (__keyword->symbol _%sym109382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym109378%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr109338%_ _%enc109339%_)
        (let* ((_%bstr109342%_ _%bstr109338%_) (_%enc109350%_ _%enc109339%_))
          (if (eq? _%enc109350%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr109342%_))
              (let* ((_%in109359%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc109350%_
                                   (cons 'init: (cons _%bstr109342%_ '()))))))
                     (_%len109361%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr109342%_)))
                     (_%out109363%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len109361%_)))
                     (_%n109365%_
                      (read-substring
                       _%out109363%_
                       '0
                       _%len109361%_
                       _%in109359%_)))
                (string-shrink! _%out109363%_ _%n109365%_)
                _%out109363%_)))))
    (define __bytes->string__0
      (lambda (_%bstr109371%_)
        (let ((_%enc109373%_ 'UTF-8))
          (__bytes->string__% _%bstr109371%_ _%enc109373%_))))
    (define __bytes->string
      (lambda _g115765_
        (let ((_g115766_ (let () (declare (not safe)) (##length _g115765_))))
          (cond ((let () (declare (not safe)) (##fx= _g115766_ 1))
                 (apply __bytes->string__0 _g115765_))
                ((let () (declare (not safe)) (##fx= _g115766_ 2))
                 (apply __bytes->string__% _g115765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g115765_))))))
    (define bytes->string__%
      (lambda (_%bstr109302%_ _%enc109303%_)
        (if (u8vector? _%bstr109302%_)
            (let ((_%bstr109307%_ _%bstr109302%_))
              (if (symbol? _%enc109303%_)
                  (let ((_%enc109317%_ _%enc109303%_))
                    (__bytes->string__% _%bstr109307%_ _%enc109317%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc109303%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr109302%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr109330%_)
        (let ((_%enc109332%_ 'UTF-8))
          (bytes->string__% _%bstr109330%_ _%enc109332%_))))
    (define bytes->string
      (lambda _g115767_
        (let ((_g115768_ (let () (declare (not safe)) (##length _g115767_))))
          (cond ((let () (declare (not safe)) (##fx= _g115768_ 1))
                 (apply bytes->string__0 _g115767_))
                ((let () (declare (not safe)) (##fx= _g115768_ 2))
                 (apply bytes->string__% _g115767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g115767_))))))
    (define __string->bytes__%
      (lambda (_%str109220%_ _%enc109221%_)
        (let* ((_%str109224%_ _%str109220%_) (_%enc109232%_ _%enc109221%_))
          (if (eq? _%enc109232%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str109224%_))
              (let* ((_%str109241%_ _%str109224%_)
                     (_%start109244%_ '0)
                     (_%end109247%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str109224%_)))
                     (_%enc109250%_ _%enc109232%_)
                     (_%str109255%_ _%str109241%_))
                (if (nonnegative-fixnum? _%start109244%_)
                    (let ((_%start109271%_ _%start109244%_))
                      (if (nonnegative-fixnum? _%end109247%_)
                          (let ((_%end109281%_ _%end109247%_))
                            (__substring->bytes__%
                             _%str109255%_
                             _%start109271%_
                             _%end109281%_
                             _%enc109250%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end109247%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start109244%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str109294%_)
        (let ((_%enc109296%_ 'UTF-8))
          (__string->bytes__% _%str109294%_ _%enc109296%_))))
    (define __string->bytes
      (lambda _g115769_
        (let ((_g115770_ (let () (declare (not safe)) (##length _g115769_))))
          (cond ((let () (declare (not safe)) (##fx= _g115770_ 1))
                 (apply __string->bytes__0 _g115769_))
                ((let () (declare (not safe)) (##fx= _g115770_ 2))
                 (apply __string->bytes__% _g115769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g115769_))))))
    (define string->bytes__%
      (lambda (_%str109184%_ _%enc109185%_)
        (if (string? _%str109184%_)
            (let ((_%str109189%_ _%str109184%_))
              (if (symbol? _%enc109185%_)
                  (let ((_%enc109199%_ _%enc109185%_))
                    (__string->bytes__% _%str109189%_ _%enc109199%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc109185%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str109184%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str109212%_)
        (let ((_%enc109214%_ 'UTF-8))
          (string->bytes__% _%str109212%_ _%enc109214%_))))
    (define string->bytes
      (lambda _g115771_
        (let ((_g115772_ (let () (declare (not safe)) (##length _g115771_))))
          (cond ((let () (declare (not safe)) (##fx= _g115772_ 1))
                 (apply string->bytes__0 _g115771_))
                ((let () (declare (not safe)) (##fx= _g115772_ 2))
                 (apply string->bytes__% _g115771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g115771_))))))
    (define __substring->bytes__%
      (lambda (_%str109136%_ _%start109137%_ _%end109138%_ _%enc109139%_)
        (let* ((_%str109142%_ _%str109136%_)
               (_%start109150%_ _%start109137%_)
               (_%end109158%_ _%end109138%_))
          (if (eq? _%enc109139%_ 'UTF-8)
              (string->utf8 _%str109142%_ _%start109150%_ _%end109158%_)
              (let ((_%out109167%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc109139%_ '())))))
                (write-substring
                 _%str109142%_
                 _%start109150%_
                 _%end109158%_
                 _%out109167%_)
                (get-output-u8vector _%out109167%_))))))
    (define __substring->bytes__0
      (lambda (_%str109172%_ _%start109173%_ _%end109174%_)
        (let ((_%enc109176%_ 'UTF-8))
          (__substring->bytes__%
           _%str109172%_
           _%start109173%_
           _%end109174%_
           _%enc109176%_))))
    (define __substring->bytes
      (lambda _g115773_
        (let ((_g115774_ (let () (declare (not safe)) (##length _g115773_))))
          (cond ((let () (declare (not safe)) (##fx= _g115774_ 3))
                 (apply __substring->bytes__0 _g115773_))
                ((let () (declare (not safe)) (##fx= _g115774_ 4))
                 (apply __substring->bytes__% _g115773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g115773_))))))
    (define substring->bytes__%
      (lambda (_%str109084%_ _%start109085%_ _%end109086%_ _%enc109087%_)
        (if (string? _%str109084%_)
            (let ((_%str109091%_ _%str109084%_))
              (if (nonnegative-fixnum? _%start109085%_)
                  (let ((_%start109101%_ _%start109085%_))
                    (if (nonnegative-fixnum? _%end109086%_)
                        (let ((_%end109111%_ _%end109086%_))
                          (__substring->bytes__%
                           _%str109091%_
                           _%start109101%_
                           _%end109111%_
                           _%enc109087%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end109086%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start109085%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str109084%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str109124%_ _%start109125%_ _%end109126%_)
        (let ((_%enc109128%_ 'UTF-8))
          (substring->bytes__%
           _%str109124%_
           _%start109125%_
           _%end109126%_
           _%enc109128%_))))
    (define substring->bytes
      (lambda _g115775_
        (let ((_g115776_ (let () (declare (not safe)) (##length _g115775_))))
          (cond ((let () (declare (not safe)) (##fx= _g115776_ 3))
                 (apply substring->bytes__0 _g115775_))
                ((let () (declare (not safe)) (##fx= _g115776_ 4))
                 (apply substring->bytes__% _g115775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g115775_))))))
    (define __string-empty?
      (lambda (_%str109071%_)
        (let* ((_%str109074%_ _%str109071%_)
               (__tmp115777
                (let () (declare (not safe)) (##string-length _%str109074%_))))
          (declare (not safe))
          (##fxzero? __tmp115777))))
    (define string-empty?
      (lambda (_%str109057%_)
        (if (string? _%str109057%_)
            (let ((_%str109061%_ _%str109057%_))
              (__string-empty? _%str109061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str109057%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str108997%_ _%char108998%_ _%start108999%_)
        (let* ((_%str109002%_ _%str108997%_)
               (_%char109010%_ _%char108998%_)
               (_%start109018%_ _%start108999%_)
               (_%len109027%_
                (let () (declare (not safe)) (##string-length _%str109002%_))))
          (let _%lp109029%_ ((_%k109031%_ _%start109018%_))
            (let ((_%k109033%_ _%k109031%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k109033%_ _%len109027%_))
                  (if (eq? _%char109010%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109002%_ _%k109033%_)))
                      _%k109033%_
                      (_%lp109029%_
                       (let () (declare (not safe)) (##fx+ _%k109033%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str109048%_ _%char109049%_)
        (let ((_%start109051%_ '0))
          (__string-index__% _%str109048%_ _%char109049%_ _%start109051%_))))
    (define __string-index
      (lambda _g115778_
        (let ((_g115779_ (let () (declare (not safe)) (##length _g115778_))))
          (cond ((let () (declare (not safe)) (##fx= _g115779_ 2))
                 (apply __string-index__0 _g115778_))
                ((let () (declare (not safe)) (##fx= _g115779_ 3))
                 (apply __string-index__% _g115778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g115778_))))))
    (define string-index__%
      (lambda (_%str108948%_ _%char108949%_ _%start108950%_)
        (if (string? _%str108948%_)
            (let ((_%str108954%_ _%str108948%_))
              (if (char? _%char108949%_)
                  (let ((_%char108964%_ _%char108949%_))
                    (if (nonnegative-fixnum? _%start108950%_)
                        (let ((_%start108974%_ _%start108950%_))
                          (__string-index__%
                           _%str108954%_
                           _%char108964%_
                           _%start108974%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start108950%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                     'contract:
                     'char?
                     'value:
                     _%char108949%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.21-706.24"
               'contract:
               'string?
               'value:
               _%str108948%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str108987%_ _%char108988%_)
        (let ((_%start108990%_ '0))
          (string-index__% _%str108987%_ _%char108988%_ _%start108990%_))))
    (define string-index
      (lambda _g115780_
        (let ((_g115781_ (let () (declare (not safe)) (##length _g115780_))))
          (cond ((let () (declare (not safe)) (##fx= _g115781_ 2))
                 (apply string-index__0 _g115780_))
                ((let () (declare (not safe)) (##fx= _g115781_ 3))
                 (apply string-index__% _g115780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g115780_))))))
    (define __string-rindex__%
      (lambda (_%str108890%_ _%char108891%_ _%start108892%_)
        (let* ((_%str108895%_ _%str108890%_)
               (_%char108903%_ _%char108891%_)
               (_%len108912%_
                (let () (declare (not safe)) (##string-length _%str108895%_)))
               (_%start108914%_
                (if (fixnum? _%start108892%_)
                    _%start108892%_
                    (let () (declare (not safe)) (##fx- _%len108912%_ '1)))))
          (let _%lp108917%_ ((_%k108919%_ _%start108914%_))
            (let ((_%k108921%_ _%k108919%_))
              (if (let () (declare (not safe)) (##fx>= _%k108921%_ '0))
                  (if (eq? _%char108903%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108895%_ _%k108921%_)))
                      _%k108921%_
                      (_%lp108917%_
                       (let () (declare (not safe)) (##fx- _%k108921%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str108938%_ _%char108939%_)
        (let ((_%start108941%_ '#f))
          (__string-rindex__% _%str108938%_ _%char108939%_ _%start108941%_))))
    (define __string-rindex
      (lambda _g115782_
        (let ((_g115783_ (let () (declare (not safe)) (##length _g115782_))))
          (cond ((let () (declare (not safe)) (##fx= _g115783_ 2))
                 (apply __string-rindex__0 _g115782_))
                ((let () (declare (not safe)) (##fx= _g115783_ 3))
                 (apply __string-rindex__% _g115782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g115782_))))))
    (define string-rindex__%
      (lambda (_%str108851%_ _%char108852%_ _%start108853%_)
        (if (string? _%str108851%_)
            (let ((_%str108857%_ _%str108851%_))
              (if (char? _%char108852%_)
                  (let ((_%char108867%_ _%char108852%_))
                    (__string-rindex__%
                     _%str108857%_
                     _%char108867%_
                     _%start108853%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                     'contract:
                     'char?
                     'value:
                     _%char108852%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.22-717.25"
               'contract:
               'string?
               'value:
               _%str108851%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str108880%_ _%char108881%_)
        (let ((_%start108883%_ '#f))
          (string-rindex__% _%str108880%_ _%char108881%_ _%start108883%_))))
    (define string-rindex
      (lambda _g115784_
        (let ((_g115785_ (let () (declare (not safe)) (##length _g115784_))))
          (cond ((let () (declare (not safe)) (##fx= _g115785_ 2))
                 (apply string-rindex__0 _g115784_))
                ((let () (declare (not safe)) (##fx= _g115785_ 3))
                 (apply string-rindex__% _g115784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g115784_))))))
    (define __string-split
      (lambda (_%str108748%_ _%char108749%_)
        (let* ((_%str108752%_ _%str108748%_)
               (_%char108760%_ _%char108749%_)
               (_%len108769%_
                (let () (declare (not safe)) (##string-length _%str108752%_))))
          (let _%lp108771%_ ((_%start108773%_ '0) (_%r108774%_ '()))
            (let* ((_%start108777%_ _%start108773%_)
                   (_%$e108835%_
                    (let* ((_%str108790%_ _%str108752%_)
                           (_%char108793%_ _%char108760%_)
                           (_%start108796%_ _%start108777%_)
                           (_%str108801%_ _%str108790%_)
                           (_%char108815%_ _%char108793%_))
                      (if (nonnegative-fixnum? _%start108796%_)
                          (let ((_%start108825%_ _%start108796%_))
                            (__string-index__%
                             _%str108801%_
                             _%char108815%_
                             _%start108825%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108796%_)
                            '#!void)))))
              (if _%$e108835%_
                  (let ((_%end108840%_ _%$e108835%_))
                    (_%lp108771%_
                     (let () (declare (not safe)) (##fx+ _%end108840%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str108752%_
                              _%start108777%_
                              _%end108840%_))
                           _%r108774%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108777%_ _%len108769%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108752%_
                                _%start108777%_
                                _%len108769%_)))
                       _%r108774%_)
                      (reverse! _%r108774%_))))))))
    (define string-split
      (lambda (_%str108723%_ _%char108724%_)
        (if (string? _%str108723%_)
            (let ((_%str108728%_ _%str108723%_))
              (if (char? _%char108724%_)
                  (let ((_%char108738%_ _%char108724%_))
                    (__string-split _%str108728%_ _%char108738%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char108724%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str108723%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108573%_ _%join108574%_)
        (letrec ((_%join-length108577%_
                  (lambda (_%strs108661%_ _%jlen108662%_)
                    (let _%lp108664%_ ((_%rest108666%_ _%strs108661%_)
                                       (_%len108667%_ '0))
                      (let* ((_%len108669%_ _%len108667%_)
                             (_%$%rest108677108685%_ _%rest108666%_)
                             (_%$%else108679108693%_ (lambda () '0))
                             (_%$%K108681108711%_
                              (lambda (_%rest108696%_ _%hd108697%_)
                                (if (string? _%hd108697%_)
                                    (let ((_%hd108699%_ _%hd108697%_))
                                      (if (pair? _%rest108696%_)
                                          (_%lp108664%_
                                           _%rest108696%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108699%_))
                                                _%jlen108662%_
                                                _%len108669%_))
                                          (let ((__tmp115786
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108699%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp115786
                                                   _%len108669%_))))
                                    (error '"expected string" _%hd108697%_)))))
                        (if (pair? _%$%rest108677108685%_)
                            (let ((_%$%hd108682108714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest108677108685%_)))
                                  (_%$%tl108683108716%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest108677108685%_))))
                              (let* ((_%hd108719%_ _%$%hd108682108714%_)
                                     (_%rest108721%_ _%$%tl108683108716%_))
                                (_%$%K108681108711%_
                                 _%rest108721%_
                                 _%hd108719%_)))
                            (_%$%else108679108693%_)))))))
          (let* ((_%join108582%_
                  (if (char? _%join108574%_)
                      (let () (declare (not safe)) (##string _%join108574%_))
                      (if (string? _%join108574%_)
                          _%join108574%_
                          (error '"expected string or char" _%join108574%_))))
                 (_%jlen108584%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108582%_)))
                 (_%olen108586%_
                  (_%join-length108577%_ _%strs108573%_ _%jlen108584%_))
                 (_%ostr108588%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108586%_))))
            (let _%lp108591%_ ((_%rest108593%_ _%strs108573%_)
                               (_%k108594%_ '0))
              (let* ((_%k108597%_ _%k108594%_)
                     (_%$%rest108613108621%_ _%rest108593%_)
                     (_%$%else108615108629%_ (lambda () '""))
                     (_%$%K108617108649%_
                      (lambda (_%rest108632%_ _%hd108633%_)
                        (let* ((_%hd108635%_ _%hd108633%_)
                               (_%hdlen108647%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108635%_))))
                          (if (pair? _%rest108632%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108635%_
                                   '0
                                   _%hdlen108647%_
                                   _%ostr108588%_
                                   _%k108597%_))
                                (let ((__tmp115787
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108597%_ _%hdlen108647%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108582%_
                                   '0
                                   _%jlen108584%_
                                   _%ostr108588%_
                                   __tmp115787))
                                (_%lp108591%_
                                 _%rest108632%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108597%_
                                          _%hdlen108647%_
                                          _%jlen108584%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108635%_
                                   '0
                                   _%hdlen108647%_
                                   _%ostr108588%_
                                   _%k108597%_))
                                _%ostr108588%_))))))
                (if (pair? _%$%rest108613108621%_)
                    (let ((_%$%hd108618108652%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest108613108621%_)))
                          (_%$%tl108619108654%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest108613108621%_))))
                      (let* ((_%hd108657%_ _%$%hd108618108652%_)
                             (_%rest108659%_ _%$%tl108619108654%_))
                        (_%$%K108617108649%_ _%rest108659%_ _%hd108657%_)))
                    (_%$%else108615108629%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108513%_ _%port108514%_ _%start108515%_ _%end108516%_)
        (let* ((_%bytes108519%_ _%bytes108513%_)
               (_%port108527%_ _%port108514%_)
               (_%start108535%_ _%start108515%_)
               (_%end108543%_ _%end108516%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108519%_
           _%start108535%_
           _%end108543%_
           _%port108527%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108555%_ _%port108556%_)
        (let* ((_%start108558%_ '0)
               (_%end108560%_ (u8vector-length _%bytes108555%_)))
          (__read-u8vector__%
           _%bytes108555%_
           _%port108556%_
           _%start108558%_
           _%end108560%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108562%_ _%port108563%_ _%start108564%_)
        (let ((_%end108566%_ (u8vector-length _%bytes108562%_)))
          (__read-u8vector__%
           _%bytes108562%_
           _%port108563%_
           _%start108564%_
           _%end108566%_))))
    (define __read-u8vector
      (lambda _g115788_
        (let ((_g115789_ (let () (declare (not safe)) (##length _g115788_))))
          (cond ((let () (declare (not safe)) (##fx= _g115789_ 2))
                 (apply __read-u8vector__0 _g115788_))
                ((let () (declare (not safe)) (##fx= _g115789_ 3))
                 (apply __read-u8vector__1 _g115788_))
                ((let () (declare (not safe)) (##fx= _g115789_ 4))
                 (apply __read-u8vector__% _g115788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g115788_))))))
    (define read-u8vector__%
      (lambda (_%bytes108438%_ _%port108439%_ _%start108440%_ _%end108441%_)
        (if (u8vector? _%bytes108438%_)
            (let ((_%bytes108445%_ _%bytes108438%_))
              (if (input-port? _%port108439%_)
                  (let ((_%port108455%_ _%port108439%_))
                    (if (and (fixnum? _%start108440%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start108440%_ '0))
                             (let ((__tmp115790
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes108445%_))))
                               (declare (not safe))
                               (##fx< _%start108440%_ __tmp115790)))
                        (let ((_%start108468%_ _%start108440%_))
                          (if (and (fixnum? _%end108441%_)
                                   (let ((__tmp115791
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes108445%_))))
                                     (declare (not safe))
                                     (##fx<= _%start108468%_
                                             _%end108441%_
                                             __tmp115791)))
                              (let ((_%end108481%_ _%end108441%_))
                                (__read-u8vector__%
                                 _%bytes108445%_
                                 _%port108455%_
                                 _%start108468%_
                                 _%end108481%_))
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
                                 _%end108441%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start108440%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port108439%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@792.22-792.27"
               'contract:
               'u8vector?
               'value:
               _%bytes108438%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes108494%_ _%port108495%_)
        (let* ((_%start108497%_ '0)
               (_%end108499%_ (u8vector-length _%bytes108494%_)))
          (read-u8vector__%
           _%bytes108494%_
           _%port108495%_
           _%start108497%_
           _%end108499%_))))
    (define read-u8vector__1
      (lambda (_%bytes108501%_ _%port108502%_ _%start108503%_)
        (let ((_%end108505%_ (u8vector-length _%bytes108501%_)))
          (read-u8vector__%
           _%bytes108501%_
           _%port108502%_
           _%start108503%_
           _%end108505%_))))
    (define read-u8vector
      (lambda _g115792_
        (let ((_g115793_ (let () (declare (not safe)) (##length _g115792_))))
          (cond ((let () (declare (not safe)) (##fx= _g115793_ 2))
                 (apply read-u8vector__0 _g115792_))
                ((let () (declare (not safe)) (##fx= _g115793_ 3))
                 (apply read-u8vector__1 _g115792_))
                ((let () (declare (not safe)) (##fx= _g115793_ 4))
                 (apply read-u8vector__% _g115792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g115792_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108377%_ _%port108378%_ _%start108379%_ _%end108380%_)
        (let* ((_%bytes108383%_ _%bytes108377%_)
               (_%port108391%_ _%port108378%_)
               (_%start108399%_ _%start108379%_)
               (_%end108407%_ _%end108380%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108383%_
           _%start108399%_
           _%end108407%_
           _%port108391%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108419%_ _%port108420%_)
        (let* ((_%start108422%_ '0)
               (_%end108424%_ (u8vector-length _%bytes108419%_)))
          (__write-u8vector__%
           _%bytes108419%_
           _%port108420%_
           _%start108422%_
           _%end108424%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108426%_ _%port108427%_ _%start108428%_)
        (let ((_%end108430%_ (u8vector-length _%bytes108426%_)))
          (__write-u8vector__%
           _%bytes108426%_
           _%port108427%_
           _%start108428%_
           _%end108430%_))))
    (define __write-u8vector
      (lambda _g115794_
        (let ((_g115795_ (let () (declare (not safe)) (##length _g115794_))))
          (cond ((let () (declare (not safe)) (##fx= _g115795_ 2))
                 (apply __write-u8vector__0 _g115794_))
                ((let () (declare (not safe)) (##fx= _g115795_ 3))
                 (apply __write-u8vector__1 _g115794_))
                ((let () (declare (not safe)) (##fx= _g115795_ 4))
                 (apply __write-u8vector__% _g115794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g115794_))))))
    (define write-u8vector__%
      (lambda (_%bytes108307%_ _%port108308%_ _%start108309%_ _%end108310%_)
        (if (u8vector? _%bytes108307%_)
            (let ((_%bytes108314%_ _%bytes108307%_))
              (if (output-port? _%port108308%_)
                  (let* ((_%port108324%_ _%port108308%_)
                         (_%start108333%_ _%start108309%_))
                    (if (and (fixnum? _%end108310%_)
                             (let ((__tmp115796
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes108314%_))))
                               (declare (not safe))
                               (##fx<= _%start108333%_
                                       _%end108310%_
                                       __tmp115796)))
                        (let ((_%end108345%_ _%end108310%_))
                          (__write-u8vector__%
                           _%bytes108314%_
                           _%port108324%_
                           _%start108333%_
                           _%end108345%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end108310%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port108308%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@802.23-802.28"
               'contract:
               'u8vector?
               'value:
               _%bytes108307%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes108358%_ _%port108359%_)
        (let* ((_%start108361%_ '0)
               (_%end108363%_ (u8vector-length _%bytes108358%_)))
          (write-u8vector__%
           _%bytes108358%_
           _%port108359%_
           _%start108361%_
           _%end108363%_))))
    (define write-u8vector__1
      (lambda (_%bytes108365%_ _%port108366%_ _%start108367%_)
        (let ((_%end108369%_ (u8vector-length _%bytes108365%_)))
          (write-u8vector__%
           _%bytes108365%_
           _%port108366%_
           _%start108367%_
           _%end108369%_))))
    (define write-u8vector
      (lambda _g115797_
        (let ((_g115798_ (let () (declare (not safe)) (##length _g115797_))))
          (cond ((let () (declare (not safe)) (##fx= _g115798_ 2))
                 (apply write-u8vector__0 _g115797_))
                ((let () (declare (not safe)) (##fx= _g115798_ 3))
                 (apply write-u8vector__1 _g115797_))
                ((let () (declare (not safe)) (##fx= _g115798_ 4))
                 (apply write-u8vector__% _g115797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g115797_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag108275%_
               _%dbg-exprs108276%_
               _%dbg-thunks108277%_
               _%expr108278%_
               _%thunk108279%_)
        (letrec ((_%o108281%_ (current-output-port))
                 (_%e108282%_ (current-error-port))
                 (_%p108283%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f108284%_
                  (lambda ()
                    (force-output _%o108281%_)
                    (force-output _%e108282%_)))
                 (_%d108285%_
                  (lambda (_%x108292%_) (display _%x108292%_ _%e108282%_)))
                 (_%w108286%_
                  (lambda (_%x108294%_) (_%p108283%_ _%x108294%_ _%e108282%_)))
                 (_%n108287%_ (lambda () (newline _%e108282%_)))
                 (_%v108288%_
                  (lambda (_%l108297%_)
                    (for-each
                     (lambda (_%x108299%_)
                       (_%d108285%_ '" ")
                       (_%w108286%_ _%x108299%_))
                     _%l108297%_)
                    (_%n108287%_)))
                 (_%x108289%_
                  (lambda (_%expr108301%_ _%thunk108302%_)
                    (_%f108284%_)
                    (_%d108285%_ '"  ")
                    (_%w108286%_ _%expr108301%_)
                    (_%d108285%_ '" =>")
                    (call-with-values
                     _%thunk108302%_
                     (lambda _%x108304%_
                       (_%v108288%_ _%x108304%_)
                       (_%f108284%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x108304%_)))))))
          (if _%tag108275%_
              (begin
                (if (eq? _%tag108275%_ '#!void)
                    '#!void
                    (begin
                      (_%f108284%_)
                      (_%d108285%_ _%tag108275%_)
                      (_%n108287%_)))
                (for-each _%x108289%_ _%dbg-exprs108276%_ _%dbg-thunks108277%_)
                (if _%thunk108279%_
                    (_%x108289%_ _%expr108278%_ _%thunk108279%_)
                    '#!void))
              (if _%thunk108279%_ (_%thunk108279%_) '#!void)))))))
