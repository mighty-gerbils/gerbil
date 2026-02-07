(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770505708)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args109217%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args109217%_))
          (newline))))
    (define display*
      (lambda _%args109214%_
        (let () (declare (not safe)) (##for-each display _%args109214%_))))
    (define __file-newer?
      (lambda (_%file1109005%_ _%file2109006%_)
        (let* ((_%file1109009%_ _%file1109005%_)
               (_%file2109017%_ _%file2109006%_))
          (letrec ((_%__modification-time109161%_
                    (lambda (_%file109202%_)
                      (let* ((_%file109205%_ _%file109202%_)
                             (__tmp111993
                              (let ((__tmp111994
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file109205%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp111994))))
                        (declare (not safe))
                        (##time->seconds __tmp111993))))
                   (_%modification-time109162%_
                    (lambda (_%file109190%_)
                      (let ((_%file109193%_ _%file109190%_))
                        (_%__modification-time109161%_ _%file109193%_)))))
            (let ((__tmp111996
                   (let* ((_%file109164%_ _%file1109009%_)
                          (_%file109168%_ _%file109164%_))
                     (_%__modification-time109161%_ _%file109168%_)))
                  (__tmp111995
                   (let* ((_%file109177%_ _%file2109017%_)
                          (_%file109181%_ _%file109177%_))
                     (_%__modification-time109161%_ _%file109181%_))))
              (declare (not safe))
              (##fl> __tmp111996 __tmp111995))))))
    (define file-newer?
      (lambda (_%file198591%_ _%file298592%_)
        (if (string? _%file198591%_)
            (let ((_%file198596%_ _%file198591%_))
              (if (string? _%file298592%_)
                  (let ((_%file298606%_ _%file298592%_))
                    (__file-newer? _%file198596%_ _%file298606%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298592%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198591%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir108725%_ _%perms108726%_)
        (let* ((_%dir108729%_ _%dir108725%_) (_%perms108737%_ _%perms108726%_))
          (letrec ((_%__create1108881%_
                    (lambda (_%path108980%_)
                      (let ((_%path108983%_ _%path108980%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path108983%_))
                            (if (eq? (file-type _%path108983%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path108983%_))
                            (if _%perms108737%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path108983%_
                                             (cons 'permissions:
                                                   (cons _%perms108737%_
                                                         '())))))
                                (create-directory _%path108983%_))))))
                   (_%create1108882%_
                    (lambda (_%path108968%_)
                      (let ((_%path108971%_ _%path108968%_))
                        (_%__create1108881%_ _%path108971%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir108729%_))
                '#!void
                (let _%lp108884%_ ((_%start108886%_ '0))
                  (let ((_%$e108933%_
                         (let* ((_%str108888%_ _%dir108729%_)
                                (_%char108891%_ '#\/)
                                (_%start108894%_ _%start108886%_)
                                (_%str108899%_ _%str108888%_)
                                (_%char108913%_ _%char108891%_))
                           (if (nonnegative-fixnum? _%start108894%_)
                               (let ((_%start108923%_ _%start108894%_))
                                 (__string-index__%
                                  _%str108899%_
                                  _%char108913%_
                                  _%start108923%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start108894%_)
                                 '#!void)))))
                    (if _%$e108933%_
                        ((lambda (_%x108936%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x108936%_ '0))
                               (let* ((_%path108938%_
                                       (substring
                                        _%dir108729%_
                                        '0
                                        _%x108936%_))
                                      (_%path108942%_ _%path108938%_))
                                 (_%__create1108881%_ _%path108942%_))
                               '#!void)
                           (_%lp108884%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x108936%_ '1))))
                         _%$e108933%_)
                        (let* ((_%path108954%_ _%dir108729%_)
                               (_%path108958%_ _%path108954%_))
                          (_%__create1108881%_ _%path108958%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir108998%_)
        (let ((_%perms109000%_ '493))
          (__create-directory*__% _%dir108998%_ _%perms109000%_))))
    (define __create-directory*
      (lambda _g111997_
        (let ((_g111998_ (let () (declare (not safe)) (##length _g111997_))))
          (cond ((let () (declare (not safe)) (##fx= _g111998_ 1))
                 (apply __create-directory*__0 _g111997_))
                ((let () (declare (not safe)) (##fx= _g111998_ 2))
                 (apply __create-directory*__% _g111997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g111997_))))))
    (define create-directory*__%
      (lambda (_%dir98737%_ _%perms98738%_)
        (if (string? _%dir98737%_)
            (let ((_%dir98742%_ _%dir98737%_))
              (if (fixnum? _%perms98738%_)
                  (let ((_%perms98752%_ _%perms98738%_))
                    (__create-directory*__% _%dir98742%_ _%perms98752%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98738%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98737%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98765%_)
        (let ((_%perms98767%_ '493))
          (create-directory*__% _%dir98765%_ _%perms98767%_))))
    (define create-directory*
      (lambda _g111999_
        (let ((_g112000_ (let () (declare (not safe)) (##length _g111999_))))
          (cond ((let () (declare (not safe)) (##fx= _g112000_ 1))
                 (apply create-directory*__0 _g111999_))
                ((let () (declare (not safe)) (##fx= _g112000_ 2))
                 (apply create-directory*__% _g111999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g111999_))))))
    (define __move-file__%
      (lambda (_%src108668%_ _%dest108669%_ _%replace?108670%_)
        (let* ((_%src108673%_ _%src108668%_)
               (_%dest108681%_ _%dest108669%_)
               (_%replace?108689%_ _%replace?108670%_))
          (letrec ((_%force-move-it108698%_
                    (lambda ()
                      (let ((_%tmp108704%_
                             (if _%replace?108689%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest108681%_))
                                     (let ((__tmp112001
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest108681%_
                                        '"."
                                        __tmp112001))
                                     '#f)
                                 '#f)))
                        (if _%tmp108704%_
                            (rename-file _%dest108681%_ _%tmp108704%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e108706%_)
                           (if _%tmp108704%_
                               (rename-file _%tmp108704%_ _%dest108681%_ '#t)
                               '#!void)
                           (raise _%e108706%_))
                         (lambda ()
                           (let ((_%fi108709%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src108673%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi108709%_))
                                      'symbolic-link)
                                 (let ((__tmp112002
                                        (path-normalize _%src108673%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp112002
                                    _%dest108681%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src108673%_
                                    _%dest108681%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src108673%_))
                           (if _%tmp108704%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp108704%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e108700%_)
               (if (let () (declare (not safe)) (##file-exists? _%src108673%_))
                   (_%force-move-it108698%_)
                   (raise _%e108700%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src108673%_
                  _%dest108681%_
                  _%replace?108689%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src108715%_ _%dest108716%_)
        (let ((_%replace?108718%_ '#t))
          (__move-file__% _%src108715%_ _%dest108716%_ _%replace?108718%_))))
    (define __move-file
      (lambda _g112003_
        (let ((_g112004_ (let () (declare (not safe)) (##length _g112003_))))
          (cond ((let () (declare (not safe)) (##fx= _g112004_ 2))
                 (apply __move-file__0 _g112003_))
                ((let () (declare (not safe)) (##fx= _g112004_ 3))
                 (apply __move-file__% _g112003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g112003_))))))
    (define move-file__%
      (lambda (_%src98893%_ _%dest98894%_ _%replace?98895%_)
        (if (string? _%src98893%_)
            (let ((_%src98899%_ _%src98893%_))
              (if (string? _%dest98894%_)
                  (let ((_%dest98909%_ _%dest98894%_))
                    (if (boolean? _%replace?98895%_)
                        (let ((_%replace?98919%_ _%replace?98895%_))
                          (__move-file__%
                           _%src98899%_
                           _%dest98909%_
                           _%replace?98919%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98895%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98894%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98893%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src98932%_ _%dest98933%_)
        (let ((_%replace?98935%_ '#t))
          (move-file__% _%src98932%_ _%dest98933%_ _%replace?98935%_))))
    (define move-file
      (lambda _g112005_
        (let ((_g112006_ (let () (declare (not safe)) (##length _g112005_))))
          (cond ((let () (declare (not safe)) (##fx= _g112006_ 2))
                 (apply move-file__0 _g112005_))
                ((let () (declare (not safe)) (##fx= _g112006_ 3))
                 (apply move-file__% _g112005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g112005_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore108664%_ '#t))
    (define true? (lambda (_%obj108661%_) (eq? _%obj108661%_ '#t)))
    (define false (lambda _%ignore108658%_ '#f))
    (define void (lambda _%ignore108655%_ '#!void))
    (define void? (lambda (_%obj108652%_) (eq? _%obj108652%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj108649%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj108649%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj108646%_) (eq? _%obj108646%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj108643%_) (eq? _%obj108643%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj108640%_) (eq? _%obj108640%_ '#!optional)))
    (define immediate?
      (lambda (_%obj108637%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj108637%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj108634%_)
        (if (fixnum? _%obj108634%_)
            (let () (declare (not safe)) (##fx>= _%obj108634%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj108628%_)
        (let ((_%$e108631%_ (pair? _%obj108628%_)))
          (if _%$e108631%_ _%$e108631%_ (null? _%obj108628%_)))))
    (define values-count
      (lambda (_%obj108625%_)
        (if (let () (declare (not safe)) (##values? _%obj108625%_))
            (let () (declare (not safe)) (##values-length _%obj108625%_))
            '1)))
    (define __values-ref
      (lambda (_%obj108612%_ _%k108613%_)
        (let ((_%k108616%_ _%k108613%_))
          (if (let () (declare (not safe)) (##values? _%obj108612%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj108612%_ _%k108616%_))
              _%obj108612%_))))
    (define values-ref
      (lambda (_%obj99061%_ _%k99062%_)
        (if (fixnum? _%k99062%_)
            (let ((_%k99066%_ _%k99062%_))
              (__values-ref _%obj99061%_ _%k99066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k99062%_)
              '#!void))))
    (define values->list
      (lambda (_%obj108609%_)
        (if (let () (declare (not safe)) (##values? _%obj108609%_))
            (let () (declare (not safe)) (##values->list _%obj108609%_))
            (list _%obj108609%_))))
    (define __foldl1
      (lambda (_%f108557%_ _%iv108558%_ _%lst108559%_)
        (let ((_%f108562%_ _%f108557%_))
          (let _%lp108571%_ ((_%rest108573%_ _%lst108559%_)
                             (_%r108574%_ _%iv108558%_))
            (let* ((_%rest108575108583%_ _%rest108573%_)
                   (_%else108577108591%_ (lambda () _%r108574%_))
                   (_%K108579108597%_
                    (lambda (_%rest108594%_ _%x108595%_)
                      (_%lp108571%_
                       _%rest108594%_
                       (let ()
                         (declare (not safe))
                         (_%f108562%_ _%x108595%_ _%r108574%_))))))
              (if (pair? _%rest108575108583%_)
                  (let ((_%hd108580108600%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108575108583%_)))
                        (_%tl108581108602%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108575108583%_))))
                    (let* ((_%x108605%_ _%hd108580108600%_)
                           (_%rest108607%_ _%tl108581108602%_))
                      (_%K108579108597%_ _%rest108607%_ _%x108605%_)))
                  (_%else108577108591%_)))))))
    (define foldl1
      (lambda (_%f99196%_ _%iv99197%_ _%lst99198%_)
        (if (procedure? _%f99196%_)
            (let ((_%f99202%_ _%f99196%_))
              (__foldl1 _%f99202%_ _%iv99197%_ _%lst99198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f99196%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f108470%_ _%iv108471%_ _%lst1108472%_ _%lst2108473%_)
        (let ((_%f108476%_ _%f108470%_))
          (let _%lp108485%_ ((_%rest1108487%_ _%lst1108472%_)
                             (_%rest2108488%_ _%lst2108473%_)
                             (_%r108489%_ _%iv108471%_))
            (let* ((_%rest1108490108498%_ _%rest1108487%_)
                   (_%else108492108506%_ (lambda () _%r108489%_))
                   (_%K108494108545%_
                    (lambda (_%rest1108509%_ _%x1108510%_)
                      (let* ((_%rest2108511108519%_ _%rest2108488%_)
                             (_%else108513108527%_ (lambda () _%r108489%_))
                             (_%K108515108533%_
                              (lambda (_%rest2108530%_ _%x2108531%_)
                                (_%lp108485%_
                                 _%rest1108509%_
                                 _%rest2108530%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f108476%_
                                    _%x1108510%_
                                    _%x2108531%_
                                    _%r108489%_))))))
                        (if (pair? _%rest2108511108519%_)
                            (let ((_%hd108516108536%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108511108519%_)))
                                  (_%tl108517108538%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108511108519%_))))
                              (let* ((_%x2108541%_ _%hd108516108536%_)
                                     (_%rest2108543%_ _%tl108517108538%_))
                                (_%K108515108533%_
                                 _%rest2108543%_
                                 _%x2108541%_)))
                            (_%else108513108527%_))))))
              (if (pair? _%rest1108490108498%_)
                  (let ((_%hd108495108548%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108490108498%_)))
                        (_%tl108496108550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108490108498%_))))
                    (let* ((_%x1108553%_ _%hd108495108548%_)
                           (_%rest1108555%_ _%tl108496108550%_))
                      (_%K108494108545%_ _%rest1108555%_ _%x1108553%_)))
                  (_%else108492108506%_)))))))
    (define foldl2
      (lambda (_%f99332%_ _%iv99333%_ _%lst199334%_ _%lst299335%_)
        (if (procedure? _%f99332%_)
            (let ((_%f99339%_ _%f99332%_))
              (__foldl2 _%f99339%_ _%iv99333%_ _%lst199334%_ _%lst299335%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f99332%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f108403%_ _%iv108404%_ _%lst108405%_)
        (let* ((_%f108407%_ _%f108403%_)
               (_%iv108410%_ _%iv108404%_)
               (_%lst108413%_ _%lst108405%_))
          (if (procedure? _%f108407%_)
              (let ((_%f108418%_ _%f108407%_))
                (__foldl1 _%f108418%_ _%iv108410%_ _%lst108413%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108407%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f108431%_ _%iv108432%_ _%lst1108433%_ _%lst2108434%_)
        (let* ((_%f108436%_ _%f108431%_)
               (_%iv108439%_ _%iv108432%_)
               (_%lst1108442%_ _%lst1108433%_)
               (_%lst2108445%_ _%lst2108434%_))
          (if (procedure? _%f108436%_)
              (let ((_%f108450%_ _%f108436%_))
                (__foldl2
                 _%f108450%_
                 _%iv108439%_
                 _%lst1108442%_
                 _%lst2108445%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108436%_)
                '#!void)))))
    (define foldl
      (lambda _g112007_
        (let ((_g112008_ (let () (declare (not safe)) (##length _g112007_))))
          (cond ((let () (declare (not safe)) (##fx= _g112008_ 3))
                 (apply foldl__0 _g112007_))
                ((let () (declare (not safe)) (##fx= _g112008_ 4))
                 (apply foldl__1 _g112007_))
                ((let () (declare (not safe)) (##fx>= _g112008_ 4))
                 (apply foldl* _g112007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g112007_))))))
    (define __foldl*
      (lambda (_%f108334%_ _%iv108335%_ . _%rest108336%_)
        (let ((_%f108339%_ _%f108334%_))
          (let _%recur108348%_ ((_%iv108350%_ _%iv108335%_)
                                (_%rest108351%_ _%rest108336%_))
            (if (let* ((_%f108353%_ pair?)
                       (_%lst108356%_ _%rest108351%_)
                       (_%f108361%_ _%f108353%_))
                  (__andmap1 _%f108361%_ _%lst108356%_))
                (_%recur108348%_
                 (let ((__tmp112009
                        (let* ((_%f108380%_
                                (lambda (_%xs108377%_ _%r108378%_)
                                  (cons (car _%xs108377%_) _%r108378%_)))
                               (_%iv108383%_ (list _%iv108350%_))
                               (_%lst108386%_ _%rest108351%_)
                               (_%f108391%_ _%f108380%_))
                          (__foldr1 _%f108391%_ _%iv108383%_ _%lst108386%_))))
                   (declare (not safe))
                   (##apply _%f108339%_ __tmp112009))
                 (map cdr _%rest108351%_))
                _%iv108350%_)))))
    (define foldl*
      (lambda (_%f99469%_ _%iv99470%_ . _%rest99471%_)
        (if (procedure? _%f99469%_)
            (let ((_%f99475%_ _%f99469%_))
              (declare (not safe))
              (##apply __foldl* _%f99475%_ _%iv99470%_ _%rest99471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f99469%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f108283%_ _%iv108284%_ _%lst108285%_)
        (let ((_%f108288%_ _%f108283%_))
          (let _%recur108297%_ ((_%rest108299%_ _%lst108285%_))
            (let* ((_%rest108300108308%_ _%rest108299%_)
                   (_%else108302108316%_ (lambda () _%iv108284%_))
                   (_%K108304108322%_
                    (lambda (_%rest108319%_ _%x108320%_)
                      (let ((__tmp112010 (_%recur108297%_ _%rest108319%_)))
                        (declare (not safe))
                        (_%f108288%_ _%x108320%_ __tmp112010)))))
              (if (pair? _%rest108300108308%_)
                  (let ((_%hd108305108325%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108300108308%_)))
                        (_%tl108306108327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108300108308%_))))
                    (let* ((_%x108330%_ _%hd108305108325%_)
                           (_%rest108332%_ _%tl108306108327%_))
                      (_%K108304108322%_ _%rest108332%_ _%x108330%_)))
                  (_%else108302108316%_)))))))
    (define foldr1
      (lambda (_%f99605%_ _%iv99606%_ _%lst99607%_)
        (if (procedure? _%f99605%_)
            (let ((_%f99611%_ _%f99605%_))
              (__foldr1 _%f99611%_ _%iv99606%_ _%lst99607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f99605%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f108197%_ _%iv108198%_ _%lst1108199%_ _%lst2108200%_)
        (let ((_%f108203%_ _%f108197%_))
          (let _%recur108212%_ ((_%rest1108214%_ _%lst1108199%_)
                                (_%rest2108215%_ _%lst2108200%_))
            (let* ((_%rest1108216108224%_ _%rest1108214%_)
                   (_%else108218108232%_ (lambda () _%iv108198%_))
                   (_%K108220108271%_
                    (lambda (_%rest1108235%_ _%x1108236%_)
                      (let* ((_%rest2108237108245%_ _%rest2108215%_)
                             (_%else108239108253%_ (lambda () _%iv108198%_))
                             (_%K108241108259%_
                              (lambda (_%rest2108256%_ _%x2108257%_)
                                (let ((__tmp112011
                                       (_%recur108212%_
                                        _%rest1108235%_
                                        _%rest2108256%_)))
                                  (declare (not safe))
                                  (_%f108203%_
                                   _%x1108236%_
                                   _%x2108257%_
                                   __tmp112011)))))
                        (if (pair? _%rest2108237108245%_)
                            (let ((_%hd108242108262%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108237108245%_)))
                                  (_%tl108243108264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108237108245%_))))
                              (let* ((_%x2108267%_ _%hd108242108262%_)
                                     (_%rest2108269%_ _%tl108243108264%_))
                                (_%K108241108259%_
                                 _%rest2108269%_
                                 _%x2108267%_)))
                            (_%else108239108253%_))))))
              (if (pair? _%rest1108216108224%_)
                  (let ((_%hd108221108274%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108216108224%_)))
                        (_%tl108222108276%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108216108224%_))))
                    (let* ((_%x1108279%_ _%hd108221108274%_)
                           (_%rest1108281%_ _%tl108222108276%_))
                      (_%K108220108271%_ _%rest1108281%_ _%x1108279%_)))
                  (_%else108218108232%_)))))))
    (define foldr2
      (lambda (_%f99741%_ _%iv99742%_ _%lst199743%_ _%lst299744%_)
        (if (procedure? _%f99741%_)
            (let ((_%f99748%_ _%f99741%_))
              (__foldr2 _%f99748%_ _%iv99742%_ _%lst199743%_ _%lst299744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f99741%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f108130%_ _%iv108131%_ _%lst108132%_)
        (let* ((_%f108134%_ _%f108130%_)
               (_%iv108137%_ _%iv108131%_)
               (_%lst108140%_ _%lst108132%_))
          (if (procedure? _%f108134%_)
              (let ((_%f108145%_ _%f108134%_))
                (__foldr1 _%f108145%_ _%iv108137%_ _%lst108140%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108134%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f108158%_ _%iv108159%_ _%lst1108160%_ _%lst2108161%_)
        (let* ((_%f108163%_ _%f108158%_)
               (_%iv108166%_ _%iv108159%_)
               (_%lst1108169%_ _%lst1108160%_)
               (_%lst2108172%_ _%lst2108161%_))
          (if (procedure? _%f108163%_)
              (let ((_%f108177%_ _%f108163%_))
                (__foldr2
                 _%f108177%_
                 _%iv108166%_
                 _%lst1108169%_
                 _%lst2108172%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108163%_)
                '#!void)))))
    (define foldr
      (lambda _g112012_
        (let ((_g112013_ (let () (declare (not safe)) (##length _g112012_))))
          (cond ((let () (declare (not safe)) (##fx= _g112013_ 3))
                 (apply foldr__0 _g112012_))
                ((let () (declare (not safe)) (##fx= _g112013_ 4))
                 (apply foldr__1 _g112012_))
                ((let () (declare (not safe)) (##fx>= _g112013_ 4))
                 (apply foldr* _g112012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g112012_))))))
    (define __foldr*
      (lambda (_%f108062%_ _%iv108063%_ . _%rest108064%_)
        (let ((_%f108067%_ _%f108062%_))
          (let _%recur108076%_ ((_%rest108078%_ _%rest108064%_))
            (if (let* ((_%f108080%_ pair?)
                       (_%lst108083%_ _%rest108078%_)
                       (_%f108088%_ _%f108080%_))
                  (__andmap1 _%f108088%_ _%lst108083%_))
                (let ((__tmp112014
                       (let* ((_%f108107%_
                               (lambda (_%xs108104%_ _%r108105%_)
                                 (cons (car _%xs108104%_) _%r108105%_)))
                              (_%iv108110%_
                               (list (_%recur108076%_
                                      (map cdr _%rest108078%_))))
                              (_%lst108113%_ _%rest108078%_)
                              (_%f108118%_ _%f108107%_))
                         (__foldr1 _%f108118%_ _%iv108110%_ _%lst108113%_))))
                  (declare (not safe))
                  (##apply _%f108067%_ __tmp112014))
                _%iv108063%_)))))
    (define foldr*
      (lambda (_%f99878%_ _%iv99879%_ . _%rest99880%_)
        (if (procedure? _%f99878%_)
            (let ((_%f99884%_ _%f99878%_))
              (declare (not safe))
              (##apply __foldr* _%f99884%_ _%iv99879%_ _%rest99880%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f99878%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l107949%_)
        (let* ((_%l107950107963%_ _%l107949%_)
               (_%E107954107967%_
                (lambda ()
                  (error '"No clause matching"
                         _%l107950107963%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K107959108052%_
                 (lambda (_%r108050%_) (remove-nulls! _%r108050%_)))
                (_%K107956108039%_
                 (lambda (_%r107979%_)
                   (let _%loop107981%_ ((_%l107983%_ _%l107949%_)
                                        (_%r107984%_ _%r107979%_))
                     (let* ((_%r107985107998%_ _%r107984%_)
                            (_%E107989108002%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r107985107998%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K107994108029%_
                              (lambda (_%rr108027%_)
                                (let ((__tmp112016 _%l107983%_)
                                      (__tmp112015
                                       (remove-nulls! _%rr108027%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp112016 __tmp112015))))
                             (_%K107991108016%_
                              (lambda (_%rr108014%_)
                                (_%loop107981%_ _%r107984%_ _%rr108014%_)))
                             (_%K107990108007%_ (lambda () '#!void)))
                         (if (pair? _%r107985107998%_)
                             (let ((_%tl107996108034%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r107985107998%_)))
                                   (_%hd107995108032%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r107985107998%_))))
                               (if (null? _%hd107995108032%_)
                                   (let ((_%rr108037%_ _%tl107996108034%_))
                                     (_%K107994108029%_ _%rr108037%_))
                                   (let ((_%rr108022%_ _%tl107996108034%_))
                                     (_%K107991108016%_ _%rr108022%_))))
                             '#!void))))
                   _%l107949%_))
                (_%K107955107972%_ (lambda () _%l107949%_)))
            (if (pair? _%l107950107963%_)
                (let ((_%tl107961108057%_
                       (let () (declare (not safe)) (##cdr _%l107950107963%_)))
                      (_%hd107960108055%_
                       (let ()
                         (declare (not safe))
                         (##car _%l107950107963%_))))
                  (if (null? _%hd107960108055%_)
                      (let ((_%r108060%_ _%tl107961108057%_))
                        (remove-nulls! _%r108060%_))
                      (let ((_%r108045%_ _%tl107961108057%_))
                        (_%K107956108039%_ _%r108045%_))))
                (_%K107955107972%_))))))
    (define append1!
      (lambda (_%l107934%_ _%x107935%_)
        (let ((_%l2107938%_ (cons _%x107935%_ '())))
          (if (pair? _%l107934%_)
              (let ((_%l107940%_ _%l107934%_))
                (let ((__tmp112017
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l107940%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp112017 _%l2107938%_))
                _%l107940%_)
              _%l2107938%_))))
    (define __append-reverse-until
      (lambda (_%pred107876%_ _%rhead107877%_ _%tail107878%_)
        (let ((_%pred107881%_ _%pred107876%_))
          (let _%loop107890%_ ((_%rhead107892%_ _%rhead107877%_)
                               (_%tail107893%_ _%tail107878%_))
            (let* ((_%rhead107895107904%_ _%rhead107892%_)
                   (_%E107898107908%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead107895107904%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K107902107931%_ (lambda () (values '() _%tail107893%_)))
                    (_%K107899107915%_
                     (lambda (_%r107912%_ _%a107913%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred107881%_ _%a107913%_))
                           (values _%rhead107892%_ _%tail107893%_)
                           (_%loop107890%_
                            _%r107912%_
                            (cons _%a107913%_ _%tail107893%_))))))
                (let ((_%try-match107897107927%_
                       (lambda ()
                         (if (pair? _%rhead107895107904%_)
                             (let ((_%tl107901107920%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead107895107904%_)))
                                   (_%hd107900107918%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead107895107904%_))))
                               (let ((_%a107923%_ _%hd107900107918%_)
                                     (_%r107925%_ _%tl107901107920%_))
                                 (_%K107899107915%_ _%r107925%_ _%a107923%_)))
                             (_%E107898107908%_)))))
                  (if (null? _%rhead107895107904%_)
                      (_%K107902107931%_)
                      (_%try-match107897107927%_)))))))))
    (define append-reverse-until
      (lambda (_%pred100014%_ _%rhead100015%_ _%tail100016%_)
        (if (procedure? _%pred100014%_)
            (let ((_%pred100020%_ _%pred100014%_))
              (__append-reverse-until
               _%pred100020%_
               _%rhead100015%_
               _%tail100016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred100014%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f107825%_ _%lst107826%_)
        (let ((_%f107829%_ _%f107825%_))
          (let _%lp107838%_ ((_%rest107840%_ _%lst107826%_))
            (let* ((_%rest107842107850%_ _%rest107840%_)
                   (_%else107844107858%_ (lambda () '#t))
                   (_%K107846107864%_
                    (lambda (_%rest107861%_ _%x107862%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f107829%_ _%x107862%_))
                          (_%lp107838%_ _%rest107861%_)
                          '#f))))
              (if (pair? _%rest107842107850%_)
                  (let ((_%hd107847107867%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107842107850%_)))
                        (_%tl107848107869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107842107850%_))))
                    (let* ((_%x107872%_ _%hd107847107867%_)
                           (_%rest107874%_ _%tl107848107869%_))
                      (_%K107846107864%_ _%rest107874%_ _%x107872%_)))
                  (_%else107844107858%_)))))))
    (define andmap1
      (lambda (_%f100150%_ _%lst100151%_)
        (if (procedure? _%f100150%_)
            (let ((_%f100155%_ _%f100150%_))
              (__andmap1 _%f100155%_ _%lst100151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f100150%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f107739%_ _%lst1107740%_ _%lst2107741%_)
        (let ((_%f107744%_ _%f107739%_))
          (let _%lp107753%_ ((_%rest1107755%_ _%lst1107740%_)
                             (_%rest2107756%_ _%lst2107741%_))
            (let* ((_%rest1107758107766%_ _%rest1107755%_)
                   (_%else107760107774%_ (lambda () '#t))
                   (_%K107762107813%_
                    (lambda (_%rest1107777%_ _%x1107778%_)
                      (let* ((_%rest2107779107787%_ _%rest2107756%_)
                             (_%else107781107795%_ (lambda () '#t))
                             (_%K107783107801%_
                              (lambda (_%rest2107798%_ _%x2107799%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f107744%_ _%x1107778%_ _%x2107799%_))
                                    (_%lp107753%_
                                     _%rest1107777%_
                                     _%rest2107798%_)
                                    '#f))))
                        (if (pair? _%rest2107779107787%_)
                            (let ((_%hd107784107804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107779107787%_)))
                                  (_%tl107785107806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107779107787%_))))
                              (let* ((_%x2107809%_ _%hd107784107804%_)
                                     (_%rest2107811%_ _%tl107785107806%_))
                                (_%K107783107801%_
                                 _%rest2107811%_
                                 _%x2107809%_)))
                            (_%else107781107795%_))))))
              (if (pair? _%rest1107758107766%_)
                  (let ((_%hd107763107816%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107758107766%_)))
                        (_%tl107764107818%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107758107766%_))))
                    (let* ((_%x1107821%_ _%hd107763107816%_)
                           (_%rest1107823%_ _%tl107764107818%_))
                      (_%K107762107813%_ _%rest1107823%_ _%x1107821%_)))
                  (_%else107760107774%_)))))))
    (define andmap2
      (lambda (_%f100285%_ _%lst1100286%_ _%lst2100287%_)
        (if (procedure? _%f100285%_)
            (let ((_%f100291%_ _%f100285%_))
              (__andmap2 _%f100291%_ _%lst1100286%_ _%lst2100287%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f100285%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f107683%_ _%lst107684%_)
        (let* ((_%f107686%_ _%f107683%_) (_%lst107689%_ _%lst107684%_))
          (if (procedure? _%f107686%_)
              (let ((_%f107694%_ _%f107686%_))
                (__andmap1 _%f107694%_ _%lst107689%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107686%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f107706%_ _%lst1107707%_ _%lst2107708%_)
        (let* ((_%f107710%_ _%f107706%_)
               (_%lst1107713%_ _%lst1107707%_)
               (_%lst2107716%_ _%lst2107708%_))
          (if (procedure? _%f107710%_)
              (let ((_%f107721%_ _%f107710%_))
                (__andmap2 _%f107721%_ _%lst1107713%_ _%lst2107716%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107710%_)
                '#!void)))))
    (define andmap
      (lambda _g112018_
        (let ((_g112019_ (let () (declare (not safe)) (##length _g112018_))))
          (cond ((let () (declare (not safe)) (##fx= _g112019_ 2))
                 (apply andmap__0 _g112018_))
                ((let () (declare (not safe)) (##fx= _g112019_ 3))
                 (apply andmap__1 _g112018_))
                ((let () (declare (not safe)) (##fx>= _g112019_ 3))
                 (apply andmap* _g112018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g112018_))))))
    (define __andmap*
      (lambda (_%f107640%_ . _%rest107641%_)
        (let ((_%f107644%_ _%f107640%_))
          (let _%recur107653%_ ((_%rest107655%_ _%rest107641%_))
            (if (let* ((_%f107658%_ pair?)
                       (_%lst107661%_ _%rest107655%_)
                       (_%f107666%_ _%f107658%_))
                  (__andmap1 _%f107666%_ _%lst107661%_))
                (if (let ((__tmp112020 (map car _%rest107655%_)))
                      (declare (not safe))
                      (##apply _%f107644%_ __tmp112020))
                    (_%recur107653%_ (map cdr _%rest107655%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f100421%_ . _%rest100422%_)
        (if (procedure? _%f100421%_)
            (let ((_%f100426%_ _%f100421%_))
              (declare (not safe))
              (##apply __andmap* _%f100426%_ _%rest100422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f100421%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f107587%_ _%lst107588%_)
        (let ((_%f107591%_ _%f107587%_))
          (let _%lp107600%_ ((_%rest107602%_ _%lst107588%_))
            (let* ((_%rest107603107611%_ _%rest107602%_)
                   (_%else107605107619%_ (lambda () '#f))
                   (_%K107607107628%_
                    (lambda (_%rest107622%_ _%x107623%_)
                      (let ((_%$e107625%_
                             (let ()
                               (declare (not safe))
                               (_%f107591%_ _%x107623%_))))
                        (if _%$e107625%_
                            _%$e107625%_
                            (_%lp107600%_ _%rest107622%_))))))
              (if (pair? _%rest107603107611%_)
                  (let ((_%hd107608107631%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107603107611%_)))
                        (_%tl107609107633%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107603107611%_))))
                    (let* ((_%x107636%_ _%hd107608107631%_)
                           (_%rest107638%_ _%tl107609107633%_))
                      (_%K107607107628%_ _%rest107638%_ _%x107636%_)))
                  (_%else107605107619%_)))))))
    (define ormap1
      (lambda (_%f100556%_ _%lst100557%_)
        (if (procedure? _%f100556%_)
            (let ((_%f100561%_ _%f100556%_))
              (__ormap1 _%f100561%_ _%lst100557%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f100556%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f107499%_ _%lst1107500%_ _%lst2107501%_)
        (let ((_%f107504%_ _%f107499%_))
          (let _%lp107513%_ ((_%rest1107515%_ _%lst1107500%_)
                             (_%rest2107516%_ _%lst2107501%_))
            (let* ((_%rest1107517107525%_ _%rest1107515%_)
                   (_%else107519107533%_ (lambda () '#f))
                   (_%K107521107575%_
                    (lambda (_%rest1107536%_ _%x1107537%_)
                      (let* ((_%rest2107538107546%_ _%rest2107516%_)
                             (_%else107540107554%_ (lambda () '#f))
                             (_%K107542107563%_
                              (lambda (_%rest2107557%_ _%x2107558%_)
                                (let ((_%$e107560%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107504%_
                                          _%x1107537%_
                                          _%x2107558%_))))
                                  (if _%$e107560%_
                                      _%$e107560%_
                                      (_%lp107513%_
                                       _%rest1107536%_
                                       _%rest2107557%_))))))
                        (if (pair? _%rest2107538107546%_)
                            (let ((_%hd107543107566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107538107546%_)))
                                  (_%tl107544107568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107538107546%_))))
                              (let* ((_%x2107571%_ _%hd107543107566%_)
                                     (_%rest2107573%_ _%tl107544107568%_))
                                (_%K107542107563%_
                                 _%rest2107573%_
                                 _%x2107571%_)))
                            (_%else107540107554%_))))))
              (if (pair? _%rest1107517107525%_)
                  (let ((_%hd107522107578%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107517107525%_)))
                        (_%tl107523107580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107517107525%_))))
                    (let* ((_%x1107583%_ _%hd107522107578%_)
                           (_%rest1107585%_ _%tl107523107580%_))
                      (_%K107521107575%_ _%rest1107585%_ _%x1107583%_)))
                  (_%else107519107533%_)))))))
    (define ormap2
      (lambda (_%f100691%_ _%lst1100692%_ _%lst2100693%_)
        (if (procedure? _%f100691%_)
            (let ((_%f100697%_ _%f100691%_))
              (__ormap2 _%f100697%_ _%lst1100692%_ _%lst2100693%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f100691%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f107443%_ _%lst107444%_)
        (let* ((_%f107446%_ _%f107443%_) (_%lst107449%_ _%lst107444%_))
          (if (procedure? _%f107446%_)
              (let ((_%f107454%_ _%f107446%_))
                (__ormap1 _%f107454%_ _%lst107449%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107446%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f107466%_ _%lst1107467%_ _%lst2107468%_)
        (let* ((_%f107470%_ _%f107466%_)
               (_%lst1107473%_ _%lst1107467%_)
               (_%lst2107476%_ _%lst2107468%_))
          (if (procedure? _%f107470%_)
              (let ((_%f107481%_ _%f107470%_))
                (__ormap2 _%f107481%_ _%lst1107473%_ _%lst2107476%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107470%_)
                '#!void)))))
    (define ormap
      (lambda _g112021_
        (let ((_g112022_ (let () (declare (not safe)) (##length _g112021_))))
          (cond ((let () (declare (not safe)) (##fx= _g112022_ 2))
                 (apply ormap__0 _g112021_))
                ((let () (declare (not safe)) (##fx= _g112022_ 3))
                 (apply ormap__1 _g112021_))
                ((let () (declare (not safe)) (##fx>= _g112022_ 3))
                 (apply ormap* _g112021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g112021_))))))
    (define __ormap*
      (lambda (_%f107399%_ . _%rest107400%_)
        (let ((_%f107403%_ _%f107399%_))
          (let _%recur107412%_ ((_%rest107414%_ _%rest107400%_))
            (if (let* ((_%f107416%_ pair?)
                       (_%lst107419%_ _%rest107414%_)
                       (_%f107424%_ _%f107416%_))
                  (__andmap1 _%f107424%_ _%lst107419%_))
                (let ((_%$e107440%_
                       (let ((__tmp112023 (map car _%rest107414%_)))
                         (declare (not safe))
                         (##apply _%f107403%_ __tmp112023))))
                  (if _%$e107440%_
                      _%$e107440%_
                      (_%recur107412%_ (map cdr _%rest107414%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f100827%_ . _%rest100828%_)
        (if (procedure? _%f100827%_)
            (let ((_%f100832%_ _%f100827%_))
              (declare (not safe))
              (##apply __ormap* _%f100832%_ _%rest100828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f100827%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f107342%_ _%lst107343%_)
        (let ((_%f107346%_ _%f107342%_))
          (let _%recur107355%_ ((_%rest107357%_ _%lst107343%_))
            (let* ((_%rest107359107367%_ _%rest107357%_)
                   (_%else107361107375%_ (lambda () '()))
                   (_%K107363107387%_
                    (lambda (_%rest107378%_ _%x107379%_)
                      (let ((_%$e107381%_
                             (let ()
                               (declare (not safe))
                               (_%f107346%_ _%x107379%_))))
                        (if _%$e107381%_
                            ((lambda (_%r107384%_)
                               (cons _%r107384%_
                                     (_%recur107355%_ _%rest107378%_)))
                             _%$e107381%_)
                            (_%recur107355%_ _%rest107378%_))))))
              (if (pair? _%rest107359107367%_)
                  (let ((_%hd107364107390%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107359107367%_)))
                        (_%tl107365107392%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107359107367%_))))
                    (let* ((_%x107395%_ _%hd107364107390%_)
                           (_%rest107397%_ _%tl107365107392%_))
                      (_%K107363107387%_ _%rest107397%_ _%x107395%_)))
                  (_%else107361107375%_)))))))
    (define filter-map1
      (lambda (_%f100962%_ _%lst100963%_)
        (if (procedure? _%f100962%_)
            (let ((_%f100967%_ _%f100962%_))
              (__filter-map1 _%f100967%_ _%lst100963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f100962%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f107250%_ _%lst1107251%_ _%lst2107252%_)
        (let ((_%f107255%_ _%f107250%_))
          (let _%recur107264%_ ((_%rest1107266%_ _%lst1107251%_)
                                (_%rest2107267%_ _%lst2107252%_))
            (let* ((_%rest1107269107277%_ _%rest1107266%_)
                   (_%else107271107285%_ (lambda () '()))
                   (_%K107273107330%_
                    (lambda (_%rest1107288%_ _%x1107289%_)
                      (let* ((_%rest2107290107298%_ _%rest2107267%_)
                             (_%else107292107306%_ (lambda () '()))
                             (_%K107294107318%_
                              (lambda (_%rest2107309%_ _%x2107310%_)
                                (let ((_%$e107312%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107255%_
                                          _%x1107289%_
                                          _%x2107310%_))))
                                  (if _%$e107312%_
                                      ((lambda (_%r107315%_)
                                         (cons _%r107315%_
                                               (_%recur107264%_
                                                _%rest1107288%_
                                                _%rest2107309%_)))
                                       _%$e107312%_)
                                      (_%recur107264%_
                                       _%rest1107288%_
                                       _%rest2107309%_))))))
                        (if (pair? _%rest2107290107298%_)
                            (let ((_%hd107295107321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107290107298%_)))
                                  (_%tl107296107323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107290107298%_))))
                              (let* ((_%x2107326%_ _%hd107295107321%_)
                                     (_%rest2107328%_ _%tl107296107323%_))
                                (_%K107294107318%_
                                 _%rest2107328%_
                                 _%x2107326%_)))
                            (_%else107292107306%_))))))
              (if (pair? _%rest1107269107277%_)
                  (let ((_%hd107274107333%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107269107277%_)))
                        (_%tl107275107335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107269107277%_))))
                    (let* ((_%x1107338%_ _%hd107274107333%_)
                           (_%rest1107340%_ _%tl107275107335%_))
                      (_%K107273107330%_ _%rest1107340%_ _%x1107338%_)))
                  (_%else107271107285%_)))))))
    (define filter-map2
      (lambda (_%f101097%_ _%lst1101098%_ _%lst2101099%_)
        (if (procedure? _%f101097%_)
            (let ((_%f101103%_ _%f101097%_))
              (__filter-map2 _%f101103%_ _%lst1101098%_ _%lst2101099%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f101097%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f107194%_ _%lst107195%_)
        (let* ((_%f107197%_ _%f107194%_) (_%lst107200%_ _%lst107195%_))
          (if (procedure? _%f107197%_)
              (let ((_%f107205%_ _%f107197%_))
                (__filter-map1 _%f107205%_ _%lst107200%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107197%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f107217%_ _%lst1107218%_ _%lst2107219%_)
        (let* ((_%f107221%_ _%f107217%_)
               (_%lst1107224%_ _%lst1107218%_)
               (_%lst2107227%_ _%lst2107219%_))
          (if (procedure? _%f107221%_)
              (let ((_%f107232%_ _%f107221%_))
                (__filter-map2 _%f107232%_ _%lst1107224%_ _%lst2107227%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107221%_)
                '#!void)))))
    (define filter-map
      (lambda _g112024_
        (let ((_g112025_ (let () (declare (not safe)) (##length _g112024_))))
          (cond ((let () (declare (not safe)) (##fx= _g112025_ 2))
                 (apply filter-map__0 _g112024_))
                ((let () (declare (not safe)) (##fx= _g112025_ 3))
                 (apply filter-map__1 _g112024_))
                ((let () (declare (not safe)) (##fx>= _g112025_ 3))
                 (apply filter-map* _g112024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g112024_))))))
    (define __filter-map*
      (lambda (_%f107145%_ . _%rest107146%_)
        (let ((_%f107149%_ _%f107145%_))
          (let _%recur107158%_ ((_%rest107160%_ _%rest107146%_))
            (if (let* ((_%f107163%_ pair?)
                       (_%lst107166%_ _%rest107160%_)
                       (_%f107171%_ _%f107163%_))
                  (__andmap1 _%f107171%_ _%lst107166%_))
                (let ((_%$e107188%_
                       (let ((__tmp112026 (map car _%rest107160%_)))
                         (declare (not safe))
                         (##apply _%f107149%_ __tmp112026))))
                  (if _%$e107188%_
                      ((lambda (_%r107191%_)
                         (cons _%r107191%_
                               (_%recur107158%_ (map cdr _%rest107160%_))))
                       _%$e107188%_)
                      (_%recur107158%_ (map cdr _%rest107160%_))))
                '())))))
    (define filter-map*
      (lambda (_%f101233%_ . _%rest101234%_)
        (if (procedure? _%f101233%_)
            (let ((_%f101238%_ _%f101233%_))
              (declare (not safe))
              (##apply __filter-map* _%f101238%_ _%rest101234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f101233%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key107121%_ _%lst107123%_ _%default107125%_)
        (let ((_%$e107128%_
               (if (pair? _%lst107123%_)
                   (assq _%key107121%_ _%lst107123%_)
                   '#f)))
          (if _%$e107128%_
              (cdr _%$e107128%_)
              (if (procedure? _%default107125%_)
                  (_%default107125%_ _%key107121%_)
                  _%default107125%_)))))
    (define agetq__0
      (lambda (_%key107136%_ _%lst107137%_)
        (let ((_%default107139%_ '#f))
          (agetq__% _%key107136%_ _%lst107137%_ _%default107139%_))))
    (define agetq
      (lambda _g112027_
        (let ((_g112028_ (let () (declare (not safe)) (##length _g112027_))))
          (cond ((let () (declare (not safe)) (##fx= _g112028_ 2))
                 (apply agetq__0 _g112027_))
                ((let () (declare (not safe)) (##fx= _g112028_ 3))
                 (apply agetq__% _g112027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g112027_))))))
    (define agetv__%
      (lambda (_%key107096%_ _%lst107098%_ _%default107100%_)
        (let ((_%$e107103%_
               (if (pair? _%lst107098%_)
                   (assv _%key107096%_ _%lst107098%_)
                   '#f)))
          (if _%$e107103%_
              (cdr _%$e107103%_)
              (if (procedure? _%default107100%_)
                  (_%default107100%_ _%key107096%_)
                  _%default107100%_)))))
    (define agetv__0
      (lambda (_%key107111%_ _%lst107112%_)
        (let ((_%default107114%_ '#f))
          (agetv__% _%key107111%_ _%lst107112%_ _%default107114%_))))
    (define agetv
      (lambda _g112029_
        (let ((_g112030_ (let () (declare (not safe)) (##length _g112029_))))
          (cond ((let () (declare (not safe)) (##fx= _g112030_ 2))
                 (apply agetv__0 _g112029_))
                ((let () (declare (not safe)) (##fx= _g112030_ 3))
                 (apply agetv__% _g112029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g112029_))))))
    (define aget__%
      (lambda (_%key107071%_ _%lst107073%_ _%default107075%_)
        (let ((_%$e107078%_
               (if (pair? _%lst107073%_)
                   (assoc _%key107071%_ _%lst107073%_)
                   '#f)))
          (if _%$e107078%_
              (cdr _%$e107078%_)
              (if (procedure? _%default107075%_)
                  (_%default107075%_ _%key107071%_)
                  _%default107075%_)))))
    (define aget__0
      (lambda (_%key107086%_ _%lst107087%_)
        (let ((_%default107089%_ '#f))
          (aget__% _%key107086%_ _%lst107087%_ _%default107089%_))))
    (define aget
      (lambda _g112031_
        (let ((_g112032_ (let () (declare (not safe)) (##length _g112031_))))
          (cond ((let () (declare (not safe)) (##fx= _g112032_ 2))
                 (apply aget__0 _g112031_))
                ((let () (declare (not safe)) (##fx= _g112032_ 3))
                 (apply aget__% _g112031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g112031_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key107000%_ _%lst107002%_ _%default107004%_)
        (let _%lp107007%_ ((_%rest107010%_ _%lst107002%_))
          (let* ((_%rest107012107022%_ _%rest107010%_)
                 (_%else107014107030%_
                  (lambda ()
                    (if (procedure? _%default107004%_)
                        (_%default107004%_ _%key107000%_)
                        _%default107004%_)))
                 (_%K107016107039%_
                  (lambda (_%rest107033%_ _%v107034%_ _%k107036%_)
                    (if (eq? _%k107036%_ _%key107000%_)
                        _%v107034%_
                        (_%lp107007%_ _%rest107033%_)))))
            (if (pair? _%rest107012107022%_)
                (let ((_%hd107017107042%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107012107022%_)))
                      (_%tl107018107044%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107012107022%_))))
                  (let ((_%k107047%_ _%hd107017107042%_))
                    (if (pair? _%tl107018107044%_)
                        (let ((_%hd107019107049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl107018107044%_)))
                              (_%tl107020107051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl107018107044%_))))
                          (let* ((_%v107054%_ _%hd107019107049%_)
                                 (_%rest107056%_ _%tl107020107051%_))
                            (_%K107016107039%_
                             _%rest107056%_
                             _%v107054%_
                             _%k107047%_)))
                        (_%else107014107030%_))))
                (_%else107014107030%_))))))
    (define pgetq__0
      (lambda (_%key107061%_ _%lst107062%_)
        (let ((_%default107064%_ '#f))
          (pgetq__% _%key107061%_ _%lst107062%_ _%default107064%_))))
    (define pgetq
      (lambda _g112033_
        (let ((_g112034_ (let () (declare (not safe)) (##length _g112033_))))
          (cond ((let () (declare (not safe)) (##fx= _g112034_ 2))
                 (apply pgetq__0 _g112033_))
                ((let () (declare (not safe)) (##fx= _g112034_ 3))
                 (apply pgetq__% _g112033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g112033_))))))
    (define pgetv__%
      (lambda (_%key106929%_ _%lst106931%_ _%default106933%_)
        (let _%lp106936%_ ((_%rest106939%_ _%lst106931%_))
          (let* ((_%rest106941106951%_ _%rest106939%_)
                 (_%else106943106959%_
                  (lambda ()
                    (if (procedure? _%default106933%_)
                        (_%default106933%_ _%key106929%_)
                        _%default106933%_)))
                 (_%K106945106968%_
                  (lambda (_%rest106962%_ _%v106963%_ _%k106965%_)
                    (if (eqv? _%k106965%_ _%key106929%_)
                        _%v106963%_
                        (_%lp106936%_ _%rest106962%_)))))
            (if (pair? _%rest106941106951%_)
                (let ((_%hd106946106971%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106941106951%_)))
                      (_%tl106947106973%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106941106951%_))))
                  (let ((_%k106976%_ _%hd106946106971%_))
                    (if (pair? _%tl106947106973%_)
                        (let ((_%hd106948106978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106947106973%_)))
                              (_%tl106949106980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106947106973%_))))
                          (let* ((_%v106983%_ _%hd106948106978%_)
                                 (_%rest106985%_ _%tl106949106980%_))
                            (_%K106945106968%_
                             _%rest106985%_
                             _%v106983%_
                             _%k106976%_)))
                        (_%else106943106959%_))))
                (_%else106943106959%_))))))
    (define pgetv__0
      (lambda (_%key106990%_ _%lst106991%_)
        (let ((_%default106993%_ '#f))
          (pgetv__% _%key106990%_ _%lst106991%_ _%default106993%_))))
    (define pgetv
      (lambda _g112035_
        (let ((_g112036_ (let () (declare (not safe)) (##length _g112035_))))
          (cond ((let () (declare (not safe)) (##fx= _g112036_ 2))
                 (apply pgetv__0 _g112035_))
                ((let () (declare (not safe)) (##fx= _g112036_ 3))
                 (apply pgetv__% _g112035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g112035_))))))
    (define pget__%
      (lambda (_%key106858%_ _%lst106860%_ _%default106862%_)
        (let _%lp106865%_ ((_%rest106868%_ _%lst106860%_))
          (let* ((_%rest106870106880%_ _%rest106868%_)
                 (_%else106872106888%_
                  (lambda ()
                    (if (procedure? _%default106862%_)
                        (_%default106862%_ _%key106858%_)
                        _%default106862%_)))
                 (_%K106874106897%_
                  (lambda (_%rest106891%_ _%v106892%_ _%k106894%_)
                    (if (equal? _%k106894%_ _%key106858%_)
                        _%v106892%_
                        (_%lp106865%_ _%rest106891%_)))))
            (if (pair? _%rest106870106880%_)
                (let ((_%hd106875106900%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106870106880%_)))
                      (_%tl106876106902%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106870106880%_))))
                  (let ((_%k106905%_ _%hd106875106900%_))
                    (if (pair? _%tl106876106902%_)
                        (let ((_%hd106877106907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106876106902%_)))
                              (_%tl106878106909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106876106902%_))))
                          (let* ((_%v106912%_ _%hd106877106907%_)
                                 (_%rest106914%_ _%tl106878106909%_))
                            (_%K106874106897%_
                             _%rest106914%_
                             _%v106912%_
                             _%k106905%_)))
                        (_%else106872106888%_))))
                (_%else106872106888%_))))))
    (define pget__0
      (lambda (_%key106919%_ _%lst106920%_)
        (let ((_%default106922%_ '#f))
          (pget__% _%key106919%_ _%lst106920%_ _%default106922%_))))
    (define pget
      (lambda _g112037_
        (let ((_g112038_ (let () (declare (not safe)) (##length _g112037_))))
          (cond ((let () (declare (not safe)) (##fx= _g112038_ 2))
                 (apply pget__0 _g112037_))
                ((let () (declare (not safe)) (##fx= _g112038_ 3))
                 (apply pget__% _g112037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g112037_))))))
    (define __find
      (lambda (_%pred106818%_ _%lst106819%_)
        (let* ((_%pred106822%_ _%pred106818%_)
               (_%$e106853%_
                (let* ((_%proc106831%_ _%pred106822%_)
                       (_%lst106834%_ _%lst106819%_)
                       (_%proc106839%_ _%proc106831%_))
                  (__memf _%proc106839%_ _%lst106834%_))))
          (if _%$e106853%_
              (let () (declare (not safe)) (##car _%$e106853%_))
              '#f))))
    (define find
      (lambda (_%pred101530%_ _%lst101531%_)
        (if (procedure? _%pred101530%_)
            (let ((_%pred101535%_ _%pred101530%_))
              (__find _%pred101535%_ _%lst101531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred101530%_)
              '#!void))))
    (define __memf
      (lambda (_%proc106768%_ _%lst106769%_)
        (let ((_%proc106772%_ _%proc106768%_))
          (let _%lp106781%_ ((_%rest106783%_ _%lst106769%_))
            (let* ((_%rest106784106792%_ _%rest106783%_)
                   (_%else106786106800%_ (lambda () '#f))
                   (_%K106788106806%_
                    (lambda (_%tl106803%_ _%hd106804%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106772%_ _%hd106804%_))
                          _%rest106783%_
                          (_%lp106781%_ _%tl106803%_)))))
              (if (pair? _%rest106784106792%_)
                  (let ((_%hd106789106809%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106784106792%_)))
                        (_%tl106790106811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106784106792%_))))
                    (let* ((_%hd106814%_ _%hd106789106809%_)
                           (_%tl106816%_ _%tl106790106811%_))
                      (_%K106788106806%_ _%tl106816%_ _%hd106814%_)))
                  (_%else106786106800%_)))))))
    (define memf
      (lambda (_%proc101665%_ _%lst101666%_)
        (if (procedure? _%proc101665%_)
            (let ((_%proc101670%_ _%proc101665%_))
              (__memf _%proc101670%_ _%lst101666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc101665%_)
              '#!void))))
    (define remove1
      (lambda (_%el106691%_ _%lst106693%_)
        (let _%lp106696%_ ((_%rest106699%_ _%lst106693%_) (_%r106701%_ '()))
          (let* ((_%rest106703106711%_ _%rest106699%_)
                 (_%else106705106719%_ (lambda () _%lst106693%_))
                 (_%K106707106756%_
                  (lambda (_%rest106722%_ _%hd106723%_)
                    (if (equal? _%el106691%_ _%hd106723%_)
                        (let* ((_%f106726%_ cons)
                               (_%iv106729%_ _%rest106722%_)
                               (_%lst106732%_ _%r106701%_)
                               (_%f106737%_ _%f106726%_))
                          (__foldl1 _%f106737%_ _%iv106729%_ _%lst106732%_))
                        (_%lp106696%_
                         _%rest106722%_
                         (cons _%hd106723%_ _%r106701%_))))))
            (if (pair? _%rest106703106711%_)
                (let ((_%hd106708106759%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106703106711%_)))
                      (_%tl106709106761%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106703106711%_))))
                  (let* ((_%hd106764%_ _%hd106708106759%_)
                         (_%rest106766%_ _%tl106709106761%_))
                    (_%K106707106756%_ _%rest106766%_ _%hd106764%_)))
                (_%else106705106719%_))))))
    (define remv1
      (lambda (_%el106614%_ _%lst106616%_)
        (let _%lp106619%_ ((_%rest106622%_ _%lst106616%_) (_%r106624%_ '()))
          (let* ((_%rest106626106634%_ _%rest106622%_)
                 (_%else106628106642%_ (lambda () _%lst106616%_))
                 (_%K106630106679%_
                  (lambda (_%rest106645%_ _%hd106646%_)
                    (if (eqv? _%el106614%_ _%hd106646%_)
                        (let* ((_%f106649%_ cons)
                               (_%iv106652%_ _%rest106645%_)
                               (_%lst106655%_ _%r106624%_)
                               (_%f106660%_ _%f106649%_))
                          (__foldl1 _%f106660%_ _%iv106652%_ _%lst106655%_))
                        (_%lp106619%_
                         _%rest106645%_
                         (cons _%hd106646%_ _%r106624%_))))))
            (if (pair? _%rest106626106634%_)
                (let ((_%hd106631106682%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106626106634%_)))
                      (_%tl106632106684%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106626106634%_))))
                  (let* ((_%hd106687%_ _%hd106631106682%_)
                         (_%rest106689%_ _%tl106632106684%_))
                    (_%K106630106679%_ _%rest106689%_ _%hd106687%_)))
                (_%else106628106642%_))))))
    (define remq1
      (lambda (_%el106537%_ _%lst106539%_)
        (let _%lp106542%_ ((_%rest106545%_ _%lst106539%_) (_%r106547%_ '()))
          (let* ((_%rest106549106557%_ _%rest106545%_)
                 (_%else106551106565%_ (lambda () _%lst106539%_))
                 (_%K106553106602%_
                  (lambda (_%rest106568%_ _%hd106569%_)
                    (if (eq? _%el106537%_ _%hd106569%_)
                        (let* ((_%f106572%_ cons)
                               (_%iv106575%_ _%rest106568%_)
                               (_%lst106578%_ _%r106547%_)
                               (_%f106583%_ _%f106572%_))
                          (__foldl1 _%f106583%_ _%iv106575%_ _%lst106578%_))
                        (_%lp106542%_
                         _%rest106568%_
                         (cons _%hd106569%_ _%r106547%_))))))
            (if (pair? _%rest106549106557%_)
                (let ((_%hd106554106605%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106549106557%_)))
                      (_%tl106555106607%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106549106557%_))))
                  (let* ((_%hd106610%_ _%hd106554106605%_)
                         (_%rest106612%_ _%tl106555106607%_))
                    (_%K106553106602%_ _%rest106612%_ _%hd106610%_)))
                (_%else106551106565%_))))))
    (define __remf
      (lambda (_%proc106454%_ _%lst106455%_)
        (let ((_%proc106458%_ _%proc106454%_))
          (let _%lp106467%_ ((_%rest106469%_ _%lst106455%_) (_%r106470%_ '()))
            (let* ((_%rest106471106479%_ _%rest106469%_)
                   (_%else106473106487%_ (lambda () _%lst106455%_))
                   (_%K106475106525%_
                    (lambda (_%rest106490%_ _%hd106491%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106458%_ _%hd106491%_))
                          (let* ((_%f106493%_ cons)
                                 (_%iv106496%_ _%rest106490%_)
                                 (_%lst106499%_ _%r106470%_)
                                 (_%f106504%_ _%f106493%_))
                            (__foldl1 _%f106504%_ _%iv106496%_ _%lst106499%_))
                          (_%lp106467%_
                           _%rest106490%_
                           (cons _%hd106491%_ _%r106470%_))))))
              (if (pair? _%rest106471106479%_)
                  (let ((_%hd106476106528%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106471106479%_)))
                        (_%tl106477106530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106471106479%_))))
                    (let* ((_%hd106533%_ _%hd106476106528%_)
                           (_%rest106535%_ _%tl106477106530%_))
                      (_%K106475106525%_ _%rest106535%_ _%hd106533%_)))
                  (_%else106473106487%_)))))))
    (define remf
      (lambda (_%proc101881%_ _%lst101882%_)
        (if (procedure? _%proc101881%_)
            (let ((_%proc101886%_ _%proc101881%_))
              (__remf _%proc101886%_ _%lst101882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc101881%_)
              '#!void))))
    (define __1+
      (lambda (_%x106442%_)
        (let ((_%x106445%_ _%x106442%_)) (+ _%x106445%_ '1))))
    (define 1+
      (lambda (_%x102016%_)
        (if (number? _%x102016%_)
            (let ((_%x102020%_ _%x102016%_)) (__1+ _%x102020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x102016%_)
              '#!void))))
    (define __1-
      (lambda (_%x106430%_)
        (let ((_%x106433%_ _%x106430%_)) (- _%x106433%_ '1))))
    (define 1-
      (lambda (_%x102150%_)
        (if (number? _%x102150%_)
            (let ((_%x102154%_ _%x102150%_)) (__1- _%x102154%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x102150%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x106418%_)
        (let ((_%x106421%_ _%x106418%_))
          (declare (not safe))
          (##fx+ _%x106421%_ '1))))
    (define fx1+
      (lambda (_%x102284%_)
        (if (fixnum? _%x102284%_)
            (let ((_%x102288%_ _%x102284%_)) (__fx1+ _%x102288%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x102284%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x106406%_)
        (let ((_%x106409%_ _%x106406%_))
          (declare (not safe))
          (##fx- _%x106409%_ '1))))
    (define fx1-
      (lambda (_%x102418%_)
        (if (fixnum? _%x102418%_)
            (let ((_%x102422%_ _%x102418%_)) (__fx1- _%x102422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x102418%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x106403%_)
        (if (fixnum? _%x106403%_)
            (let () (declare (not safe)) (##fx>= _%x106403%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x106400%_)
        (if (fixnum? _%x106400%_)
            (let () (declare (not safe)) (##fx> _%x106400%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x106397%_)
        (let () (declare (not safe)) (##fx= _%x106397%_ '0))))
    (define fx<0?
      (lambda (_%x106394%_)
        (if (fixnum? _%x106394%_)
            (let () (declare (not safe)) (##fx< _%x106394%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x106391%_)
        (if (fixnum? _%x106391%_)
            (let () (declare (not safe)) (##fx<= _%x106391%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x106388%_)
        (if (symbol? _%x106388%_) (not (uninterned-symbol? _%x106388%_)) '#f)))
    (define __display-as-string
      (lambda (_%x106282%_ _%port106283%_)
        (let ((_%port106286%_ _%port106283%_))
          (if (or (string? _%x106282%_)
                  (symbol? _%x106282%_)
                  (keyword? _%x106282%_)
                  (number? _%x106282%_)
                  (char? _%x106282%_))
              (display _%x106282%_ _%port106286%_)
              (if (pair? _%x106282%_)
                  (let ()
                    (let* ((_%x106309%_
                            (let () (declare (not safe)) (##car _%x106282%_)))
                           (_%port106312%_ _%port106286%_))
                      (if (output-port? _%port106312%_)
                          (let ((_%port106317%_ _%port106312%_))
                            (__display-as-string _%x106309%_ _%port106317%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106312%_)
                            '#!void)))
                    (let* ((_%x106332%_
                            (let () (declare (not safe)) (##cdr _%x106282%_)))
                           (_%port106335%_ _%port106286%_))
                      (if (output-port? _%port106335%_)
                          (let ((_%port106340%_ _%port106335%_))
                            (__display-as-string _%x106332%_ _%port106340%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106335%_)
                            '#!void))))
                  (if (vector? _%x106282%_)
                      (vector-for-each
                       (lambda (_%g106351106353%_)
                         (let* ((_%x106356%_ _%g106351106353%_)
                                (_%port106359%_ _%port106286%_))
                           (if (output-port? _%port106359%_)
                               (let ((_%port106364%_ _%port106359%_))
                                 (__display-as-string
                                  _%x106356%_
                                  _%port106364%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port106359%_)
                                 '#!void))))
                       _%x106282%_)
                      (if (or (null? _%x106282%_)
                              (eq? _%x106282%_ '#!void)
                              (eof-object? _%x106282%_)
                              (boolean? _%x106282%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x106282%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x102552%_ _%port102553%_)
        (if (output-port? _%port102553%_)
            (let ((_%port102557%_ _%port102553%_))
              (__display-as-string _%x102552%_ _%port102557%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port102553%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x106222%_)
        (if (string? _%x106222%_)
            _%x106222%_
            (if (symbol? _%x106222%_)
                (let () (declare (not safe)) (##symbol->string _%x106222%_))
                (if (keyword? _%x106222%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x106222%_))
                    (if (number? _%x106222%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x106222%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g106228106230%_)
                           (let* ((_%x106233%_ _%x106222%_)
                                  (_%port106236%_ _%g106228106230%_))
                             (if (output-port? _%port106236%_)
                                 (let ((_%port106241%_ _%port106236%_))
                                   (__display-as-string
                                    _%x106233%_
                                    _%port106241%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port106236%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args106255%_
        (call-with-output-string
         '()
         (lambda (_%g106256106258%_)
           (let* ((_%x106261%_ _%args106255%_)
                  (_%port106264%_ _%g106256106258%_))
             (if (output-port? _%port106264%_)
                 (let ((_%port106269%_ _%port106264%_))
                   (__display-as-string _%x106261%_ _%port106269%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port106264%_)
                   '#!void)))))))
    (define as-string
      (lambda _g112039_
        (let ((_g112040_ (let () (declare (not safe)) (##length _g112039_))))
          (cond ((let () (declare (not safe)) (##fx= _g112040_ 1))
                 (apply as-string__0 _g112039_))
                (#t
                 (apply (lambda _%args106255%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args106255%_)))
                        _g112039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g112039_))))))
    (define make-symbol__0
      (lambda (_%x106218%_)
        (if (interned-symbol? _%x106218%_)
            _%x106218%_
            (let ((__tmp112041 (as-string__0 _%x106218%_)))
              (declare (not safe))
              (##string->symbol __tmp112041)))))
    (define make-symbol__1
      (lambda _%args106220%_
        (let ((__tmp112042
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106220%_))))
          (declare (not safe))
          (##string->symbol __tmp112042))))
    (define make-symbol
      (lambda _g112043_
        (let ((_g112044_ (let () (declare (not safe)) (##length _g112043_))))
          (cond ((let () (declare (not safe)) (##fx= _g112044_ 1))
                 (apply make-symbol__0 _g112043_))
                (#t
                 (apply (lambda _%args106220%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args106220%_)))
                        _g112043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g112043_))))))
    (define make-keyword__0
      (lambda (_%x106214%_)
        (if (interned-keyword? _%x106214%_)
            _%x106214%_
            (let ((__tmp112045 (as-string__0 _%x106214%_)))
              (declare (not safe))
              (##string->keyword __tmp112045)))))
    (define make-keyword__1
      (lambda _%args106216%_
        (let ((__tmp112046
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106216%_))))
          (declare (not safe))
          (##string->keyword __tmp112046))))
    (define make-keyword
      (lambda _g112047_
        (let ((_g112048_ (let () (declare (not safe)) (##length _g112047_))))
          (cond ((let () (declare (not safe)) (##fx= _g112048_ 1))
                 (apply make-keyword__0 _g112047_))
                (#t
                 (apply (lambda _%args106216%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args106216%_)))
                        _g112047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g112047_))))))
    (define interned-keyword?
      (lambda (_%x106211%_)
        (if (keyword? _%x106211%_)
            (not (uninterned-keyword? _%x106211%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym106199%_)
        (let ((_%sym106202%_ _%sym106199%_))
          (if (uninterned-symbol? _%sym106202%_)
              (let ((__tmp112049
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106202%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp112049))
              (let ((__tmp112050
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106202%_))))
                (declare (not safe))
                (##string->keyword __tmp112050))))))
    (define symbol->keyword
      (lambda (_%sym102687%_)
        (if (symbol? _%sym102687%_)
            (let ((_%sym102691%_ _%sym102687%_))
              (__symbol->keyword _%sym102691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym102687%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym106187%_)
        (let ((_%sym106190%_ _%sym106187%_))
          (if (uninterned-keyword? _%sym106190%_)
              (let ((__tmp112051
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106190%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp112051))
              (let ((__tmp112052
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106190%_))))
                (declare (not safe))
                (##string->symbol __tmp112052))))))
    (define keyword->symbol
      (lambda (_%sym102821%_)
        (if (keyword? _%sym102821%_)
            (let ((_%sym102825%_ _%sym102821%_))
              (__keyword->symbol _%sym102825%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym102821%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr106147%_ _%enc106148%_)
        (let* ((_%bstr106151%_ _%bstr106147%_) (_%enc106159%_ _%enc106148%_))
          (if (eq? _%enc106159%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr106151%_))
              (let* ((_%in106168%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc106159%_
                                   (cons 'init: (cons _%bstr106151%_ '()))))))
                     (_%len106170%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr106151%_)))
                     (_%out106172%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len106170%_)))
                     (_%n106174%_
                      (read-substring
                       _%out106172%_
                       '0
                       _%len106170%_
                       _%in106168%_)))
                (string-shrink! _%out106172%_ _%n106174%_)
                _%out106172%_)))))
    (define __bytes->string__0
      (lambda (_%bstr106180%_)
        (let ((_%enc106182%_ 'UTF-8))
          (__bytes->string__% _%bstr106180%_ _%enc106182%_))))
    (define __bytes->string
      (lambda _g112053_
        (let ((_g112054_ (let () (declare (not safe)) (##length _g112053_))))
          (cond ((let () (declare (not safe)) (##fx= _g112054_ 1))
                 (apply __bytes->string__0 _g112053_))
                ((let () (declare (not safe)) (##fx= _g112054_ 2))
                 (apply __bytes->string__% _g112053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g112053_))))))
    (define bytes->string__%
      (lambda (_%bstr102956%_ _%enc102957%_)
        (if (u8vector? _%bstr102956%_)
            (let ((_%bstr102961%_ _%bstr102956%_))
              (if (symbol? _%enc102957%_)
                  (let ((_%enc102971%_ _%enc102957%_))
                    (__bytes->string__% _%bstr102961%_ _%enc102971%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc102957%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr102956%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr102984%_)
        (let ((_%enc102986%_ 'UTF-8))
          (bytes->string__% _%bstr102984%_ _%enc102986%_))))
    (define bytes->string
      (lambda _g112055_
        (let ((_g112056_ (let () (declare (not safe)) (##length _g112055_))))
          (cond ((let () (declare (not safe)) (##fx= _g112056_ 1))
                 (apply bytes->string__0 _g112055_))
                ((let () (declare (not safe)) (##fx= _g112056_ 2))
                 (apply bytes->string__% _g112055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g112055_))))))
    (define __string->bytes__%
      (lambda (_%str106065%_ _%enc106066%_)
        (let* ((_%str106069%_ _%str106065%_) (_%enc106077%_ _%enc106066%_))
          (if (eq? _%enc106077%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str106069%_))
              (let* ((_%str106086%_ _%str106069%_)
                     (_%start106089%_ '0)
                     (_%end106092%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str106069%_)))
                     (_%enc106095%_ _%enc106077%_)
                     (_%str106100%_ _%str106086%_))
                (if (nonnegative-fixnum? _%start106089%_)
                    (let ((_%start106116%_ _%start106089%_))
                      (if (nonnegative-fixnum? _%end106092%_)
                          (let ((_%end106126%_ _%end106092%_))
                            (__substring->bytes__%
                             _%str106100%_
                             _%start106116%_
                             _%end106126%_
                             _%enc106095%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end106092%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start106089%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str106139%_)
        (let ((_%enc106141%_ 'UTF-8))
          (__string->bytes__% _%str106139%_ _%enc106141%_))))
    (define __string->bytes
      (lambda _g112057_
        (let ((_g112058_ (let () (declare (not safe)) (##length _g112057_))))
          (cond ((let () (declare (not safe)) (##fx= _g112058_ 1))
                 (apply __string->bytes__0 _g112057_))
                ((let () (declare (not safe)) (##fx= _g112058_ 2))
                 (apply __string->bytes__% _g112057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g112057_))))))
    (define string->bytes__%
      (lambda (_%str103112%_ _%enc103113%_)
        (if (string? _%str103112%_)
            (let ((_%str103117%_ _%str103112%_))
              (if (symbol? _%enc103113%_)
                  (let ((_%enc103127%_ _%enc103113%_))
                    (__string->bytes__% _%str103117%_ _%enc103127%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc103113%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str103112%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str103140%_)
        (let ((_%enc103142%_ 'UTF-8))
          (string->bytes__% _%str103140%_ _%enc103142%_))))
    (define string->bytes
      (lambda _g112059_
        (let ((_g112060_ (let () (declare (not safe)) (##length _g112059_))))
          (cond ((let () (declare (not safe)) (##fx= _g112060_ 1))
                 (apply string->bytes__0 _g112059_))
                ((let () (declare (not safe)) (##fx= _g112060_ 2))
                 (apply string->bytes__% _g112059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g112059_))))))
    (define __substring->bytes__%
      (lambda (_%str106017%_ _%start106018%_ _%end106019%_ _%enc106020%_)
        (let* ((_%str106023%_ _%str106017%_)
               (_%start106031%_ _%start106018%_)
               (_%end106039%_ _%end106019%_))
          (if (eq? _%enc106020%_ 'UTF-8)
              (string->utf8 _%str106023%_ _%start106031%_ _%end106039%_)
              (let ((_%out106048%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc106020%_ '())))))
                (write-substring
                 _%str106023%_
                 _%start106031%_
                 _%end106039%_
                 _%out106048%_)
                (get-output-u8vector _%out106048%_))))))
    (define __substring->bytes__0
      (lambda (_%str106053%_ _%start106054%_ _%end106055%_)
        (let ((_%enc106057%_ 'UTF-8))
          (__substring->bytes__%
           _%str106053%_
           _%start106054%_
           _%end106055%_
           _%enc106057%_))))
    (define __substring->bytes
      (lambda _g112061_
        (let ((_g112062_ (let () (declare (not safe)) (##length _g112061_))))
          (cond ((let () (declare (not safe)) (##fx= _g112062_ 3))
                 (apply __substring->bytes__0 _g112061_))
                ((let () (declare (not safe)) (##fx= _g112062_ 4))
                 (apply __substring->bytes__% _g112061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g112061_))))))
    (define substring->bytes__%
      (lambda (_%str103268%_ _%start103269%_ _%end103270%_ _%enc103271%_)
        (if (string? _%str103268%_)
            (let ((_%str103275%_ _%str103268%_))
              (if (nonnegative-fixnum? _%start103269%_)
                  (let ((_%start103285%_ _%start103269%_))
                    (if (nonnegative-fixnum? _%end103270%_)
                        (let ((_%end103295%_ _%end103270%_))
                          (__substring->bytes__%
                           _%str103275%_
                           _%start103285%_
                           _%end103295%_
                           _%enc103271%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end103270%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start103269%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str103268%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str103308%_ _%start103309%_ _%end103310%_)
        (let ((_%enc103312%_ 'UTF-8))
          (substring->bytes__%
           _%str103308%_
           _%start103309%_
           _%end103310%_
           _%enc103312%_))))
    (define substring->bytes
      (lambda _g112063_
        (let ((_g112064_ (let () (declare (not safe)) (##length _g112063_))))
          (cond ((let () (declare (not safe)) (##fx= _g112064_ 3))
                 (apply substring->bytes__0 _g112063_))
                ((let () (declare (not safe)) (##fx= _g112064_ 4))
                 (apply substring->bytes__% _g112063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g112063_))))))
    (define __string-empty?
      (lambda (_%str106004%_)
        (let* ((_%str106007%_ _%str106004%_)
               (__tmp112065
                (let () (declare (not safe)) (##string-length _%str106007%_))))
          (declare (not safe))
          (##fxzero? __tmp112065))))
    (define string-empty?
      (lambda (_%str103439%_)
        (if (string? _%str103439%_)
            (let ((_%str103443%_ _%str103439%_))
              (__string-empty? _%str103443%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str103439%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str105944%_ _%char105945%_ _%start105946%_)
        (let* ((_%str105949%_ _%str105944%_)
               (_%char105957%_ _%char105945%_)
               (_%start105965%_ _%start105946%_)
               (_%len105974%_
                (let () (declare (not safe)) (##string-length _%str105949%_))))
          (let _%lp105976%_ ((_%k105978%_ _%start105965%_))
            (let ((_%k105980%_ _%k105978%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k105980%_ _%len105974%_))
                  (if (eq? _%char105957%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105949%_ _%k105980%_)))
                      _%k105980%_
                      (_%lp105976%_
                       (let () (declare (not safe)) (##fx+ _%k105980%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str105995%_ _%char105996%_)
        (let ((_%start105998%_ '0))
          (__string-index__% _%str105995%_ _%char105996%_ _%start105998%_))))
    (define __string-index
      (lambda _g112066_
        (let ((_g112067_ (let () (declare (not safe)) (##length _g112066_))))
          (cond ((let () (declare (not safe)) (##fx= _g112067_ 2))
                 (apply __string-index__0 _g112066_))
                ((let () (declare (not safe)) (##fx= _g112067_ 3))
                 (apply __string-index__% _g112066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g112066_))))))
    (define string-index__%
      (lambda (_%str103574%_ _%char103575%_ _%start103576%_)
        (if (string? _%str103574%_)
            (let ((_%str103580%_ _%str103574%_))
              (if (char? _%char103575%_)
                  (let ((_%char103590%_ _%char103575%_))
                    (if (nonnegative-fixnum? _%start103576%_)
                        (let ((_%start103600%_ _%start103576%_))
                          (__string-index__%
                           _%str103580%_
                           _%char103590%_
                           _%start103600%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start103576%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char103575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str103574%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str103613%_ _%char103614%_)
        (let ((_%start103616%_ '0))
          (string-index__% _%str103613%_ _%char103614%_ _%start103616%_))))
    (define string-index
      (lambda _g112068_
        (let ((_g112069_ (let () (declare (not safe)) (##length _g112068_))))
          (cond ((let () (declare (not safe)) (##fx= _g112069_ 2))
                 (apply string-index__0 _g112068_))
                ((let () (declare (not safe)) (##fx= _g112069_ 3))
                 (apply string-index__% _g112068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g112068_))))))
    (define __string-rindex__%
      (lambda (_%str105886%_ _%char105887%_ _%start105888%_)
        (let* ((_%str105891%_ _%str105886%_)
               (_%char105899%_ _%char105887%_)
               (_%len105908%_
                (let () (declare (not safe)) (##string-length _%str105891%_)))
               (_%start105910%_
                (if (fixnum? _%start105888%_)
                    _%start105888%_
                    (let () (declare (not safe)) (##fx- _%len105908%_ '1)))))
          (let _%lp105913%_ ((_%k105915%_ _%start105910%_))
            (let ((_%k105917%_ _%k105915%_))
              (if (let () (declare (not safe)) (##fx>= _%k105917%_ '0))
                  (if (eq? _%char105899%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105891%_ _%k105917%_)))
                      _%k105917%_
                      (_%lp105913%_
                       (let () (declare (not safe)) (##fx- _%k105917%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str105934%_ _%char105935%_)
        (let ((_%start105937%_ '#f))
          (__string-rindex__% _%str105934%_ _%char105935%_ _%start105937%_))))
    (define __string-rindex
      (lambda _g112070_
        (let ((_g112071_ (let () (declare (not safe)) (##length _g112070_))))
          (cond ((let () (declare (not safe)) (##fx= _g112071_ 2))
                 (apply __string-rindex__0 _g112070_))
                ((let () (declare (not safe)) (##fx= _g112071_ 3))
                 (apply __string-rindex__% _g112070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g112070_))))))
    (define string-rindex__%
      (lambda (_%str103743%_ _%char103744%_ _%start103745%_)
        (if (string? _%str103743%_)
            (let ((_%str103749%_ _%str103743%_))
              (if (char? _%char103744%_)
                  (let ((_%char103759%_ _%char103744%_))
                    (__string-rindex__%
                     _%str103749%_
                     _%char103759%_
                     _%start103745%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char103744%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str103743%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str103772%_ _%char103773%_)
        (let ((_%start103775%_ '#f))
          (string-rindex__% _%str103772%_ _%char103773%_ _%start103775%_))))
    (define string-rindex
      (lambda _g112072_
        (let ((_g112073_ (let () (declare (not safe)) (##length _g112072_))))
          (cond ((let () (declare (not safe)) (##fx= _g112073_ 2))
                 (apply string-rindex__0 _g112072_))
                ((let () (declare (not safe)) (##fx= _g112073_ 3))
                 (apply string-rindex__% _g112072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g112072_))))))
    (define __string-split
      (lambda (_%str105783%_ _%char105784%_)
        (let* ((_%str105787%_ _%str105783%_)
               (_%char105795%_ _%char105784%_)
               (_%len105804%_
                (let () (declare (not safe)) (##string-length _%str105787%_))))
          (let _%lp105806%_ ((_%start105808%_ '0) (_%r105809%_ '()))
            (let* ((_%start105812%_ _%start105808%_)
                   (_%$e105870%_
                    (let* ((_%str105825%_ _%str105787%_)
                           (_%char105828%_ _%char105795%_)
                           (_%start105831%_ _%start105812%_)
                           (_%str105836%_ _%str105825%_)
                           (_%char105850%_ _%char105828%_))
                      (if (nonnegative-fixnum? _%start105831%_)
                          (let ((_%start105860%_ _%start105831%_))
                            (__string-index__%
                             _%str105836%_
                             _%char105850%_
                             _%start105860%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start105831%_)
                            '#!void)))))
              (if _%$e105870%_
                  ((lambda (_%end105873%_)
                     (let ((_%end105875%_ _%end105873%_))
                       (_%lp105806%_
                        (let () (declare (not safe)) (##fx+ _%end105875%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str105787%_
                                 _%start105812%_
                                 _%end105875%_))
                              _%r105809%_))))
                   _%$e105870%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start105812%_ _%len105804%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str105787%_
                                _%start105812%_
                                _%len105804%_)))
                       _%r105809%_)
                      (reverse! _%r105809%_))))))))
    (define string-split
      (lambda (_%str103901%_ _%char103902%_)
        (if (string? _%str103901%_)
            (let ((_%str103906%_ _%str103901%_))
              (if (char? _%char103902%_)
                  (let ((_%char103916%_ _%char103902%_))
                    (__string-split _%str103906%_ _%char103916%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char103902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str103901%_)
              '#!void))))
    (define string-join
      (lambda (_%strs105633%_ _%join105634%_)
        (letrec ((_%join-length105637%_
                  (lambda (_%strs105721%_ _%jlen105722%_)
                    (let _%lp105724%_ ((_%rest105726%_ _%strs105721%_)
                                       (_%len105727%_ '0))
                      (let* ((_%len105729%_ _%len105727%_)
                             (_%rest105737105745%_ _%rest105726%_)
                             (_%else105739105753%_ (lambda () '0))
                             (_%K105741105771%_
                              (lambda (_%rest105756%_ _%hd105757%_)
                                (if (string? _%hd105757%_)
                                    (let ((_%hd105759%_ _%hd105757%_))
                                      (if (pair? _%rest105756%_)
                                          (_%lp105724%_
                                           _%rest105756%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd105759%_))
                                                _%jlen105722%_
                                                _%len105729%_))
                                          (let ((__tmp112074
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd105759%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp112074
                                                   _%len105729%_))))
                                    (error '"expected string" _%hd105757%_)))))
                        (if (pair? _%rest105737105745%_)
                            (let ((_%hd105742105774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest105737105745%_)))
                                  (_%tl105743105776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest105737105745%_))))
                              (let* ((_%hd105779%_ _%hd105742105774%_)
                                     (_%rest105781%_ _%tl105743105776%_))
                                (_%K105741105771%_
                                 _%rest105781%_
                                 _%hd105779%_)))
                            (_%else105739105753%_)))))))
          (let* ((_%join105642%_
                  (if (char? _%join105634%_)
                      (let () (declare (not safe)) (##string _%join105634%_))
                      (if (string? _%join105634%_)
                          _%join105634%_
                          (error '"expected string or char" _%join105634%_))))
                 (_%jlen105644%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join105642%_)))
                 (_%olen105646%_
                  (_%join-length105637%_ _%strs105633%_ _%jlen105644%_))
                 (_%ostr105648%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen105646%_))))
            (let _%lp105651%_ ((_%rest105653%_ _%strs105633%_)
                               (_%k105654%_ '0))
              (let* ((_%k105657%_ _%k105654%_)
                     (_%rest105673105681%_ _%rest105653%_)
                     (_%else105675105689%_ (lambda () '""))
                     (_%K105677105709%_
                      (lambda (_%rest105692%_ _%hd105693%_)
                        (let* ((_%hd105695%_ _%hd105693%_)
                               (_%hdlen105707%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd105695%_))))
                          (if (pair? _%rest105692%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105695%_
                                   '0
                                   _%hdlen105707%_
                                   _%ostr105648%_
                                   _%k105657%_))
                                (let ((__tmp112075
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k105657%_ _%hdlen105707%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join105642%_
                                   '0
                                   _%jlen105644%_
                                   _%ostr105648%_
                                   __tmp112075))
                                (_%lp105651%_
                                 _%rest105692%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k105657%_
                                          _%hdlen105707%_
                                          _%jlen105644%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105695%_
                                   '0
                                   _%hdlen105707%_
                                   _%ostr105648%_
                                   _%k105657%_))
                                _%ostr105648%_))))))
                (if (pair? _%rest105673105681%_)
                    (let ((_%hd105678105712%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105673105681%_)))
                          (_%tl105679105714%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105673105681%_))))
                      (let* ((_%hd105717%_ _%hd105678105712%_)
                             (_%rest105719%_ _%tl105679105714%_))
                        (_%K105677105709%_ _%rest105719%_ _%hd105717%_)))
                    (_%else105675105689%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes105573%_ _%port105574%_ _%start105575%_ _%end105576%_)
        (let* ((_%bytes105579%_ _%bytes105573%_)
               (_%port105587%_ _%port105574%_)
               (_%start105595%_ _%start105575%_)
               (_%end105603%_ _%end105576%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes105579%_
           _%start105595%_
           _%end105603%_
           _%port105587%_))))
    (define __read-u8vector__0
      (lambda (_%bytes105615%_ _%port105616%_)
        (let* ((_%start105618%_ '0)
               (_%end105620%_ (u8vector-length _%bytes105615%_)))
          (__read-u8vector__%
           _%bytes105615%_
           _%port105616%_
           _%start105618%_
           _%end105620%_))))
    (define __read-u8vector__1
      (lambda (_%bytes105622%_ _%port105623%_ _%start105624%_)
        (let ((_%end105626%_ (u8vector-length _%bytes105622%_)))
          (__read-u8vector__%
           _%bytes105622%_
           _%port105623%_
           _%start105624%_
           _%end105626%_))))
    (define __read-u8vector
      (lambda _g112076_
        (let ((_g112077_ (let () (declare (not safe)) (##length _g112076_))))
          (cond ((let () (declare (not safe)) (##fx= _g112077_ 2))
                 (apply __read-u8vector__0 _g112076_))
                ((let () (declare (not safe)) (##fx= _g112077_ 3))
                 (apply __read-u8vector__1 _g112076_))
                ((let () (declare (not safe)) (##fx= _g112077_ 4))
                 (apply __read-u8vector__% _g112076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g112076_))))))
    (define read-u8vector__%
      (lambda (_%bytes104047%_ _%port104048%_ _%start104049%_ _%end104050%_)
        (if (u8vector? _%bytes104047%_)
            (let ((_%bytes104054%_ _%bytes104047%_))
              (if (input-port? _%port104048%_)
                  (let ((_%port104064%_ _%port104048%_))
                    (if ((lambda (_%o104073%_)
                           (and (fixnum? _%o104073%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o104073%_ '0))
                                (let ((__tmp112078
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104054%_))))
                                  (declare (not safe))
                                  (##fx< _%o104073%_ __tmp112078))))
                         _%start104049%_)
                        (let ((_%start104077%_ _%start104049%_))
                          (if ((lambda (_%o104086%_)
                                 (and (fixnum? _%o104086%_)
                                      (let ((__tmp112079
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes104054%_))))
                                        (declare (not safe))
                                        (##fx<= _%start104077%_
                                                _%o104086%_
                                                __tmp112079))))
                               _%end104050%_)
                              (let ((_%end104090%_ _%end104050%_))
                                (__read-u8vector__%
                                 _%bytes104054%_
                                 _%port104064%_
                                 _%start104077%_
                                 _%end104090%_))
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
                                 _%end104050%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start104049%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port104048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes104047%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes104103%_ _%port104104%_)
        (let* ((_%start104106%_ '0)
               (_%end104108%_ (u8vector-length _%bytes104103%_)))
          (read-u8vector__%
           _%bytes104103%_
           _%port104104%_
           _%start104106%_
           _%end104108%_))))
    (define read-u8vector__1
      (lambda (_%bytes104110%_ _%port104111%_ _%start104112%_)
        (let ((_%end104114%_ (u8vector-length _%bytes104110%_)))
          (read-u8vector__%
           _%bytes104110%_
           _%port104111%_
           _%start104112%_
           _%end104114%_))))
    (define read-u8vector
      (lambda _g112080_
        (let ((_g112081_ (let () (declare (not safe)) (##length _g112080_))))
          (cond ((let () (declare (not safe)) (##fx= _g112081_ 2))
                 (apply read-u8vector__0 _g112080_))
                ((let () (declare (not safe)) (##fx= _g112081_ 3))
                 (apply read-u8vector__1 _g112080_))
                ((let () (declare (not safe)) (##fx= _g112081_ 4))
                 (apply read-u8vector__% _g112080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g112080_))))))
    (define __write-u8vector__%
      (lambda (_%bytes105512%_ _%port105513%_ _%start105514%_ _%end105515%_)
        (let* ((_%bytes105518%_ _%bytes105512%_)
               (_%port105526%_ _%port105513%_)
               (_%start105534%_ _%start105514%_)
               (_%end105542%_ _%end105515%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes105518%_
           _%start105534%_
           _%end105542%_
           _%port105526%_))))
    (define __write-u8vector__0
      (lambda (_%bytes105554%_ _%port105555%_)
        (let* ((_%start105557%_ '0)
               (_%end105559%_ (u8vector-length _%bytes105554%_)))
          (__write-u8vector__%
           _%bytes105554%_
           _%port105555%_
           _%start105557%_
           _%end105559%_))))
    (define __write-u8vector__1
      (lambda (_%bytes105561%_ _%port105562%_ _%start105563%_)
        (let ((_%end105565%_ (u8vector-length _%bytes105561%_)))
          (__write-u8vector__%
           _%bytes105561%_
           _%port105562%_
           _%start105563%_
           _%end105565%_))))
    (define __write-u8vector
      (lambda _g112082_
        (let ((_g112083_ (let () (declare (not safe)) (##length _g112082_))))
          (cond ((let () (declare (not safe)) (##fx= _g112083_ 2))
                 (apply __write-u8vector__0 _g112082_))
                ((let () (declare (not safe)) (##fx= _g112083_ 3))
                 (apply __write-u8vector__1 _g112082_))
                ((let () (declare (not safe)) (##fx= _g112083_ 4))
                 (apply __write-u8vector__% _g112082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g112082_))))))
    (define write-u8vector__%
      (lambda (_%bytes104242%_ _%port104243%_ _%start104244%_ _%end104245%_)
        (if (u8vector? _%bytes104242%_)
            (let ((_%bytes104249%_ _%bytes104242%_))
              (if (output-port? _%port104243%_)
                  (let* ((_%port104259%_ _%port104243%_)
                         (_%start104268%_ _%start104244%_))
                    (if ((lambda (_%o104276%_)
                           (and (fixnum? _%o104276%_)
                                (let ((__tmp112084
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104249%_))))
                                  (declare (not safe))
                                  (##fx<= _%start104268%_
                                          _%o104276%_
                                          __tmp112084))))
                         _%end104245%_)
                        (let ((_%end104280%_ _%end104245%_))
                          (__write-u8vector__%
                           _%bytes104249%_
                           _%port104259%_
                           _%start104268%_
                           _%end104280%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end104245%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port104243%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes104242%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes104293%_ _%port104294%_)
        (let* ((_%start104296%_ '0)
               (_%end104298%_ (u8vector-length _%bytes104293%_)))
          (write-u8vector__%
           _%bytes104293%_
           _%port104294%_
           _%start104296%_
           _%end104298%_))))
    (define write-u8vector__1
      (lambda (_%bytes104300%_ _%port104301%_ _%start104302%_)
        (let ((_%end104304%_ (u8vector-length _%bytes104300%_)))
          (write-u8vector__%
           _%bytes104300%_
           _%port104301%_
           _%start104302%_
           _%end104304%_))))
    (define write-u8vector
      (lambda _g112085_
        (let ((_g112086_ (let () (declare (not safe)) (##length _g112085_))))
          (cond ((let () (declare (not safe)) (##fx= _g112086_ 2))
                 (apply write-u8vector__0 _g112085_))
                ((let () (declare (not safe)) (##fx= _g112086_ 3))
                 (apply write-u8vector__1 _g112085_))
                ((let () (declare (not safe)) (##fx= _g112086_ 4))
                 (apply write-u8vector__% _g112085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g112085_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag105480%_
               _%dbg-exprs105481%_
               _%dbg-thunks105482%_
               _%expr105483%_
               _%thunk105484%_)
        (letrec ((_%o105486%_ (current-output-port))
                 (_%e105487%_ (current-error-port))
                 (_%p105488%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f105489%_
                  (lambda ()
                    (force-output _%o105486%_)
                    (force-output _%e105487%_)))
                 (_%d105490%_
                  (lambda (_%x105497%_) (display _%x105497%_ _%e105487%_)))
                 (_%w105491%_
                  (lambda (_%x105499%_) (_%p105488%_ _%x105499%_ _%e105487%_)))
                 (_%n105492%_ (lambda () (newline _%e105487%_)))
                 (_%v105493%_
                  (lambda (_%l105502%_)
                    (for-each
                     (lambda (_%x105504%_)
                       (_%d105490%_ '" ")
                       (_%w105491%_ _%x105504%_))
                     _%l105502%_)
                    (_%n105492%_)))
                 (_%x105494%_
                  (lambda (_%expr105506%_ _%thunk105507%_)
                    (_%f105489%_)
                    (_%d105490%_ '"  ")
                    (_%w105491%_ _%expr105506%_)
                    (_%d105490%_ '" =>")
                    (call-with-values
                     _%thunk105507%_
                     (lambda _%x105509%_
                       (_%v105493%_ _%x105509%_)
                       (_%f105489%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x105509%_)))))))
          (if _%tag105480%_
              (begin
                (if (eq? _%tag105480%_ '#!void)
                    '#!void
                    (begin
                      (_%f105489%_)
                      (_%d105490%_ _%tag105480%_)
                      (_%n105492%_)))
                (for-each _%x105494%_ _%dbg-exprs105481%_ _%dbg-thunks105482%_)
                (if _%thunk105484%_
                    (_%x105494%_ _%expr105483%_ _%thunk105484%_)
                    '#!void))
              (if _%thunk105484%_ (_%thunk105484%_) '#!void)))))))
