(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1771036666)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args294529%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args294529%_))
          (newline))))
    (define display*
      (lambda _%args294526%_
        (let () (declare (not safe)) (##for-each display _%args294526%_))))
    (define __file-newer?
      (lambda (_%file1294317%_ _%file2294318%_)
        (let* ((_%file1294321%_ _%file1294317%_)
               (_%file2294329%_ _%file2294318%_))
          (letrec ((_%__modification-time294473%_
                    (lambda (_%file294514%_)
                      (let* ((_%file294517%_ _%file294514%_)
                             (__tmp297305
                              (let ((__tmp297306
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file294517%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp297306))))
                        (declare (not safe))
                        (##time->seconds __tmp297305))))
                   (_%modification-time294474%_
                    (lambda (_%file294502%_)
                      (let ((_%file294505%_ _%file294502%_))
                        (_%__modification-time294473%_ _%file294505%_)))))
            (let ((__tmp297308
                   (let* ((_%file294476%_ _%file1294321%_)
                          (_%file294480%_ _%file294476%_))
                     (_%__modification-time294473%_ _%file294480%_)))
                  (__tmp297307
                   (let* ((_%file294489%_ _%file2294329%_)
                          (_%file294493%_ _%file294489%_))
                     (_%__modification-time294473%_ _%file294493%_))))
              (declare (not safe))
              (##fl> __tmp297308 __tmp297307))))))
    (define file-newer?
      (lambda (_%file1283903%_ _%file2283904%_)
        (if (string? _%file1283903%_)
            (let ((_%file1283908%_ _%file1283903%_))
              (if (string? _%file2283904%_)
                  (let ((_%file2283918%_ _%file2283904%_))
                    (__file-newer? _%file1283908%_ _%file2283918%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@98.20-98.25"
                     'contract:
                     'string?
                     'value:
                     _%file2283904%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@97.20-97.25"
               'contract:
               'string?
               'value:
               _%file1283903%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir294037%_ _%perms294038%_)
        (let* ((_%dir294041%_ _%dir294037%_) (_%perms294049%_ _%perms294038%_))
          (letrec ((_%__create1294193%_
                    (lambda (_%path294292%_)
                      (let ((_%path294295%_ _%path294292%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path294295%_))
                            (if (eq? (file-type _%path294295%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path294295%_))
                            (if _%perms294049%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path294295%_
                                             (cons 'permissions:
                                                   (cons _%perms294049%_
                                                         '())))))
                                (create-directory _%path294295%_))))))
                   (_%create1294194%_
                    (lambda (_%path294280%_)
                      (let ((_%path294283%_ _%path294280%_))
                        (_%__create1294193%_ _%path294283%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir294041%_))
                '#!void
                (let _%lp294196%_ ((_%start294198%_ '0))
                  (let ((_%$e294245%_
                         (let* ((_%str294200%_ _%dir294041%_)
                                (_%char294203%_ '#\/)
                                (_%start294206%_ _%start294198%_)
                                (_%str294211%_ _%str294200%_)
                                (_%char294225%_ _%char294203%_))
                           (if (nonnegative-fixnum? _%start294206%_)
                               (let ((_%start294235%_ _%start294206%_))
                                 (__string-index__%
                                  _%str294211%_
                                  _%char294225%_
                                  _%start294235%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start294206%_)
                                 '#!void)))))
                    (if _%$e294245%_
                        ((lambda (_%x294248%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x294248%_ '0))
                               (let* ((_%path294250%_
                                       (substring
                                        _%dir294041%_
                                        '0
                                        _%x294248%_))
                                      (_%path294254%_ _%path294250%_))
                                 (_%__create1294193%_ _%path294254%_))
                               '#!void)
                           (_%lp294196%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x294248%_ '1))))
                         _%$e294245%_)
                        (let* ((_%path294266%_ _%dir294041%_)
                               (_%path294270%_ _%path294266%_))
                          (_%__create1294193%_ _%path294270%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir294310%_)
        (let ((_%perms294312%_ '493))
          (__create-directory*__% _%dir294310%_ _%perms294312%_))))
    (define __create-directory*
      (lambda _g297309_
        (let ((_g297310_ (let () (declare (not safe)) (##length _g297309_))))
          (cond ((let () (declare (not safe)) (##fx= _g297310_ 1))
                 (apply __create-directory*__0 _g297309_))
                ((let () (declare (not safe)) (##fx= _g297310_ 2))
                 (apply __create-directory*__% _g297309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g297309_))))))
    (define create-directory*__%
      (lambda (_%dir284049%_ _%perms284050%_)
        (if (string? _%dir284049%_)
            (let ((_%dir284054%_ _%dir284049%_))
              (if (fixnum? _%perms284050%_)
                  (let ((_%perms284064%_ _%perms284050%_))
                    (__create-directory*__% _%dir284054%_ _%perms284064%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@109.26-109.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms284050%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@108.26-108.29"
               'contract:
               'string?
               'value:
               _%dir284049%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir284077%_)
        (let ((_%perms284079%_ '493))
          (create-directory*__% _%dir284077%_ _%perms284079%_))))
    (define create-directory*
      (lambda _g297311_
        (let ((_g297312_ (let () (declare (not safe)) (##length _g297311_))))
          (cond ((let () (declare (not safe)) (##fx= _g297312_ 1))
                 (apply create-directory*__0 _g297311_))
                ((let () (declare (not safe)) (##fx= _g297312_ 2))
                 (apply create-directory*__% _g297311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g297311_))))))
    (define __move-file__%
      (lambda (_%src293980%_ _%dest293981%_ _%replace?293982%_)
        (let* ((_%src293985%_ _%src293980%_)
               (_%dest293993%_ _%dest293981%_)
               (_%replace?294001%_ _%replace?293982%_))
          (letrec ((_%force-move-it294010%_
                    (lambda ()
                      (let ((_%tmp294016%_
                             (if _%replace?294001%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest293993%_))
                                     (let ((__tmp297313
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest293993%_
                                        '"."
                                        __tmp297313))
                                     '#f)
                                 '#f)))
                        (if _%tmp294016%_
                            (rename-file _%dest293993%_ _%tmp294016%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e294018%_)
                           (if _%tmp294016%_
                               (rename-file _%tmp294016%_ _%dest293993%_ '#t)
                               '#!void)
                           (raise _%e294018%_))
                         (lambda ()
                           (let ((_%fi294021%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src293985%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi294021%_))
                                      'symbolic-link)
                                 (let ((__tmp297314
                                        (path-normalize _%src293985%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp297314
                                    _%dest293993%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src293985%_
                                    _%dest293993%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src293985%_))
                           (if _%tmp294016%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp294016%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e294012%_)
               (if (let () (declare (not safe)) (##file-exists? _%src293985%_))
                   (_%force-move-it294010%_)
                   (raise _%e294012%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src293985%_
                  _%dest293993%_
                  _%replace?294001%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src294027%_ _%dest294028%_)
        (let ((_%replace?294030%_ '#t))
          (__move-file__% _%src294027%_ _%dest294028%_ _%replace?294030%_))))
    (define __move-file
      (lambda _g297315_
        (let ((_g297316_ (let () (declare (not safe)) (##length _g297315_))))
          (cond ((let () (declare (not safe)) (##fx= _g297316_ 2))
                 (apply __move-file__0 _g297315_))
                ((let () (declare (not safe)) (##fx= _g297316_ 3))
                 (apply __move-file__% _g297315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g297315_))))))
    (define move-file__%
      (lambda (_%src284205%_ _%dest284206%_ _%replace?284207%_)
        (if (string? _%src284205%_)
            (let ((_%src284211%_ _%src284205%_))
              (if (string? _%dest284206%_)
                  (let ((_%dest284221%_ _%dest284206%_))
                    (if (boolean? _%replace?284207%_)
                        (let ((_%replace?284231%_ _%replace?284207%_))
                          (__move-file__%
                           _%src284211%_
                           _%dest284221%_
                           _%replace?284231%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@133.51-133.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?284207%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@133.34-133.38"
                     'contract:
                     'string?
                     'value:
                     _%dest284206%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@133.18-133.21"
               'contract:
               'string?
               'value:
               _%src284205%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src284244%_ _%dest284245%_)
        (let ((_%replace?284247%_ '#t))
          (move-file__% _%src284244%_ _%dest284245%_ _%replace?284247%_))))
    (define move-file
      (lambda _g297317_
        (let ((_g297318_ (let () (declare (not safe)) (##length _g297317_))))
          (cond ((let () (declare (not safe)) (##fx= _g297318_ 2))
                 (apply move-file__0 _g297317_))
                ((let () (declare (not safe)) (##fx= _g297318_ 3))
                 (apply move-file__% _g297317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g297317_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore293976%_ '#t))
    (define true? (lambda (_%obj293973%_) (eq? _%obj293973%_ '#t)))
    (define false (lambda _%ignore293970%_ '#f))
    (define void (lambda _%ignore293967%_ '#!void))
    (define void? (lambda (_%obj293964%_) (eq? _%obj293964%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj293961%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj293961%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj293958%_) (eq? _%obj293958%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj293955%_) (eq? _%obj293955%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj293952%_) (eq? _%obj293952%_ '#!optional)))
    (define immediate?
      (lambda (_%obj293949%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj293949%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj293946%_)
        (if (fixnum? _%obj293946%_)
            (let () (declare (not safe)) (##fx>= _%obj293946%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj293940%_)
        (let ((_%$e293943%_ (pair? _%obj293940%_)))
          (if _%$e293943%_ _%$e293943%_ (null? _%obj293940%_)))))
    (define values-count
      (lambda (_%obj293937%_)
        (if (let () (declare (not safe)) (##values? _%obj293937%_))
            (let () (declare (not safe)) (##values-length _%obj293937%_))
            '1)))
    (define __values-ref
      (lambda (_%obj293924%_ _%k293925%_)
        (let ((_%k293928%_ _%k293925%_))
          (if (let () (declare (not safe)) (##values? _%obj293924%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj293924%_ _%k293928%_))
              _%obj293924%_))))
    (define values-ref
      (lambda (_%obj284373%_ _%k284374%_)
        (if (fixnum? _%k284374%_)
            (let ((_%k284378%_ _%k284374%_))
              (__values-ref _%obj284373%_ _%k284378%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.23-267.24"
               'contract:
               'fixnum?
               'value:
               _%k284374%_)
              '#!void))))
    (define values->list
      (lambda (_%obj293921%_)
        (if (let () (declare (not safe)) (##values? _%obj293921%_))
            (let () (declare (not safe)) (##values->list _%obj293921%_))
            (list _%obj293921%_))))
    (define __foldl1
      (lambda (_%f293869%_ _%iv293870%_ _%lst293871%_)
        (let ((_%f293874%_ _%f293869%_))
          (let _%lp293883%_ ((_%rest293885%_ _%lst293871%_)
                             (_%r293886%_ _%iv293870%_))
            (let* ((_%rest293887293895%_ _%rest293885%_)
                   (_%else293889293903%_ (lambda () _%r293886%_))
                   (_%K293891293909%_
                    (lambda (_%rest293906%_ _%x293907%_)
                      (_%lp293883%_
                       _%rest293906%_
                       (let ()
                         (declare (not safe))
                         (_%f293874%_ _%x293907%_ _%r293886%_))))))
              (if (pair? _%rest293887293895%_)
                  (let ((_%hd293892293912%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest293887293895%_)))
                        (_%tl293893293914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest293887293895%_))))
                    (let* ((_%x293917%_ _%hd293892293912%_)
                           (_%rest293919%_ _%tl293893293914%_))
                      (_%K293891293909%_ _%rest293919%_ _%x293917%_)))
                  (_%else293889293903%_)))))))
    (define foldl1
      (lambda (_%f284508%_ _%iv284509%_ _%lst284510%_)
        (if (procedure? _%f284508%_)
            (let ((_%f284514%_ _%f284508%_))
              (__foldl1 _%f284514%_ _%iv284509%_ _%lst284510%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@290.15-290.16"
               'contract:
               'procedure?
               'value:
               _%f284508%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f293782%_ _%iv293783%_ _%lst1293784%_ _%lst2293785%_)
        (let ((_%f293788%_ _%f293782%_))
          (let _%lp293797%_ ((_%rest1293799%_ _%lst1293784%_)
                             (_%rest2293800%_ _%lst2293785%_)
                             (_%r293801%_ _%iv293783%_))
            (let* ((_%rest1293802293810%_ _%rest1293799%_)
                   (_%else293804293818%_ (lambda () _%r293801%_))
                   (_%K293806293857%_
                    (lambda (_%rest1293821%_ _%x1293822%_)
                      (let* ((_%rest2293823293831%_ _%rest2293800%_)
                             (_%else293825293839%_ (lambda () _%r293801%_))
                             (_%K293827293845%_
                              (lambda (_%rest2293842%_ _%x2293843%_)
                                (_%lp293797%_
                                 _%rest1293821%_
                                 _%rest2293842%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f293788%_
                                    _%x1293822%_
                                    _%x2293843%_
                                    _%r293801%_))))))
                        (if (pair? _%rest2293823293831%_)
                            (let ((_%hd293828293848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2293823293831%_)))
                                  (_%tl293829293850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2293823293831%_))))
                              (let* ((_%x2293853%_ _%hd293828293848%_)
                                     (_%rest2293855%_ _%tl293829293850%_))
                                (_%K293827293845%_
                                 _%rest2293855%_
                                 _%x2293853%_)))
                            (_%else293825293839%_))))))
              (if (pair? _%rest1293802293810%_)
                  (let ((_%hd293807293860%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1293802293810%_)))
                        (_%tl293808293862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1293802293810%_))))
                    (let* ((_%x1293865%_ _%hd293807293860%_)
                           (_%rest1293867%_ _%tl293808293862%_))
                      (_%K293806293857%_ _%rest1293867%_ _%x1293865%_)))
                  (_%else293804293818%_)))))))
    (define foldl2
      (lambda (_%f284644%_ _%iv284645%_ _%lst1284646%_ _%lst2284647%_)
        (if (procedure? _%f284644%_)
            (let ((_%f284651%_ _%f284644%_))
              (__foldl2
               _%f284651%_
               _%iv284645%_
               _%lst1284646%_
               _%lst2284647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@297.15-297.16"
               'contract:
               'procedure?
               'value:
               _%f284644%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f293715%_ _%iv293716%_ _%lst293717%_)
        (let* ((_%f293719%_ _%f293715%_)
               (_%iv293722%_ _%iv293716%_)
               (_%lst293725%_ _%lst293717%_))
          (if (procedure? _%f293719%_)
              (let ((_%f293730%_ _%f293719%_))
                (__foldl1 _%f293730%_ _%iv293722%_ _%lst293725%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f293719%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f293743%_ _%iv293744%_ _%lst1293745%_ _%lst2293746%_)
        (let* ((_%f293748%_ _%f293743%_)
               (_%iv293751%_ _%iv293744%_)
               (_%lst1293754%_ _%lst1293745%_)
               (_%lst2293757%_ _%lst2293746%_))
          (if (procedure? _%f293748%_)
              (let ((_%f293762%_ _%f293748%_))
                (__foldl2
                 _%f293762%_
                 _%iv293751%_
                 _%lst1293754%_
                 _%lst2293757%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f293748%_)
                '#!void)))))
    (define foldl
      (lambda _g297319_
        (let ((_g297320_ (let () (declare (not safe)) (##length _g297319_))))
          (cond ((let () (declare (not safe)) (##fx= _g297320_ 3))
                 (apply foldl__0 _g297319_))
                ((let () (declare (not safe)) (##fx= _g297320_ 4))
                 (apply foldl__1 _g297319_))
                ((let () (declare (not safe)) (##fx>= _g297320_ 4))
                 (apply foldl* _g297319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g297319_))))))
    (define __foldl*
      (lambda (_%f293646%_ _%iv293647%_ . _%rest293648%_)
        (let ((_%f293651%_ _%f293646%_))
          (let _%recur293660%_ ((_%iv293662%_ _%iv293647%_)
                                (_%rest293663%_ _%rest293648%_))
            (if (let* ((_%f293665%_ pair?)
                       (_%lst293668%_ _%rest293663%_)
                       (_%f293673%_ _%f293665%_))
                  (__andmap1 _%f293673%_ _%lst293668%_))
                (_%recur293660%_
                 (let ((__tmp297321
                        (let* ((_%f293692%_
                                (lambda (_%xs293689%_ _%r293690%_)
                                  (cons (car _%xs293689%_) _%r293690%_)))
                               (_%iv293695%_ (list _%iv293662%_))
                               (_%lst293698%_ _%rest293663%_)
                               (_%f293703%_ _%f293692%_))
                          (__foldr1 _%f293703%_ _%iv293695%_ _%lst293698%_))))
                   (declare (not safe))
                   (##apply _%f293651%_ __tmp297321))
                 (map cdr _%rest293663%_))
                _%iv293662%_)))))
    (define foldl*
      (lambda (_%f284781%_ _%iv284782%_ . _%rest284783%_)
        (if (procedure? _%f284781%_)
            (let ((_%f284787%_ _%f284781%_))
              (declare (not safe))
              (##apply __foldl* _%f284787%_ _%iv284782%_ _%rest284783%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@315.15-315.16"
               'contract:
               'procedure?
               'value:
               _%f284781%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f293595%_ _%iv293596%_ _%lst293597%_)
        (let ((_%f293600%_ _%f293595%_))
          (let _%recur293609%_ ((_%rest293611%_ _%lst293597%_))
            (let* ((_%rest293612293620%_ _%rest293611%_)
                   (_%else293614293628%_ (lambda () _%iv293596%_))
                   (_%K293616293634%_
                    (lambda (_%rest293631%_ _%x293632%_)
                      (let ((__tmp297322 (_%recur293609%_ _%rest293631%_)))
                        (declare (not safe))
                        (_%f293600%_ _%x293632%_ __tmp297322)))))
              (if (pair? _%rest293612293620%_)
                  (let ((_%hd293617293637%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest293612293620%_)))
                        (_%tl293618293639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest293612293620%_))))
                    (let* ((_%x293642%_ _%hd293617293637%_)
                           (_%rest293644%_ _%tl293618293639%_))
                      (_%K293616293634%_ _%rest293644%_ _%x293642%_)))
                  (_%else293614293628%_)))))))
    (define foldr1
      (lambda (_%f284917%_ _%iv284918%_ _%lst284919%_)
        (if (procedure? _%f284917%_)
            (let ((_%f284923%_ _%f284917%_))
              (__foldr1 _%f284923%_ _%iv284918%_ _%lst284919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@325.15-325.16"
               'contract:
               'procedure?
               'value:
               _%f284917%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f293509%_ _%iv293510%_ _%lst1293511%_ _%lst2293512%_)
        (let ((_%f293515%_ _%f293509%_))
          (let _%recur293524%_ ((_%rest1293526%_ _%lst1293511%_)
                                (_%rest2293527%_ _%lst2293512%_))
            (let* ((_%rest1293528293536%_ _%rest1293526%_)
                   (_%else293530293544%_ (lambda () _%iv293510%_))
                   (_%K293532293583%_
                    (lambda (_%rest1293547%_ _%x1293548%_)
                      (let* ((_%rest2293549293557%_ _%rest2293527%_)
                             (_%else293551293565%_ (lambda () _%iv293510%_))
                             (_%K293553293571%_
                              (lambda (_%rest2293568%_ _%x2293569%_)
                                (let ((__tmp297323
                                       (_%recur293524%_
                                        _%rest1293547%_
                                        _%rest2293568%_)))
                                  (declare (not safe))
                                  (_%f293515%_
                                   _%x1293548%_
                                   _%x2293569%_
                                   __tmp297323)))))
                        (if (pair? _%rest2293549293557%_)
                            (let ((_%hd293554293574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2293549293557%_)))
                                  (_%tl293555293576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2293549293557%_))))
                              (let* ((_%x2293579%_ _%hd293554293574%_)
                                     (_%rest2293581%_ _%tl293555293576%_))
                                (_%K293553293571%_
                                 _%rest2293581%_
                                 _%x2293579%_)))
                            (_%else293551293565%_))))))
              (if (pair? _%rest1293528293536%_)
                  (let ((_%hd293533293586%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1293528293536%_)))
                        (_%tl293534293588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1293528293536%_))))
                    (let* ((_%x1293591%_ _%hd293533293586%_)
                           (_%rest1293593%_ _%tl293534293588%_))
                      (_%K293532293583%_ _%rest1293593%_ _%x1293591%_)))
                  (_%else293530293544%_)))))))
    (define foldr2
      (lambda (_%f285053%_ _%iv285054%_ _%lst1285055%_ _%lst2285056%_)
        (if (procedure? _%f285053%_)
            (let ((_%f285060%_ _%f285053%_))
              (__foldr2
               _%f285060%_
               _%iv285054%_
               _%lst1285055%_
               _%lst2285056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.15-332.16"
               'contract:
               'procedure?
               'value:
               _%f285053%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f293442%_ _%iv293443%_ _%lst293444%_)
        (let* ((_%f293446%_ _%f293442%_)
               (_%iv293449%_ _%iv293443%_)
               (_%lst293452%_ _%lst293444%_))
          (if (procedure? _%f293446%_)
              (let ((_%f293457%_ _%f293446%_))
                (__foldr1 _%f293457%_ _%iv293449%_ _%lst293452%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f293446%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f293470%_ _%iv293471%_ _%lst1293472%_ _%lst2293473%_)
        (let* ((_%f293475%_ _%f293470%_)
               (_%iv293478%_ _%iv293471%_)
               (_%lst1293481%_ _%lst1293472%_)
               (_%lst2293484%_ _%lst2293473%_))
          (if (procedure? _%f293475%_)
              (let ((_%f293489%_ _%f293475%_))
                (__foldr2
                 _%f293489%_
                 _%iv293478%_
                 _%lst1293481%_
                 _%lst2293484%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f293475%_)
                '#!void)))))
    (define foldr
      (lambda _g297324_
        (let ((_g297325_ (let () (declare (not safe)) (##length _g297324_))))
          (cond ((let () (declare (not safe)) (##fx= _g297325_ 3))
                 (apply foldr__0 _g297324_))
                ((let () (declare (not safe)) (##fx= _g297325_ 4))
                 (apply foldr__1 _g297324_))
                ((let () (declare (not safe)) (##fx>= _g297325_ 4))
                 (apply foldr* _g297324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g297324_))))))
    (define __foldr*
      (lambda (_%f293374%_ _%iv293375%_ . _%rest293376%_)
        (let ((_%f293379%_ _%f293374%_))
          (let _%recur293388%_ ((_%rest293390%_ _%rest293376%_))
            (if (let* ((_%f293392%_ pair?)
                       (_%lst293395%_ _%rest293390%_)
                       (_%f293400%_ _%f293392%_))
                  (__andmap1 _%f293400%_ _%lst293395%_))
                (let ((__tmp297326
                       (let* ((_%f293419%_
                               (lambda (_%xs293416%_ _%r293417%_)
                                 (cons (car _%xs293416%_) _%r293417%_)))
                              (_%iv293422%_
                               (list (_%recur293388%_
                                      (map cdr _%rest293390%_))))
                              (_%lst293425%_ _%rest293390%_)
                              (_%f293430%_ _%f293419%_))
                         (__foldr1 _%f293430%_ _%iv293422%_ _%lst293425%_))))
                  (declare (not safe))
                  (##apply _%f293379%_ __tmp297326))
                _%iv293375%_)))))
    (define foldr*
      (lambda (_%f285190%_ _%iv285191%_ . _%rest285192%_)
        (if (procedure? _%f285190%_)
            (let ((_%f285196%_ _%f285190%_))
              (declare (not safe))
              (##apply __foldr* _%f285196%_ _%iv285191%_ _%rest285192%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@350.15-350.16"
               'contract:
               'procedure?
               'value:
               _%f285190%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l293261%_)
        (let* ((_%l293262293275%_ _%l293261%_)
               (_%E293266293279%_
                (lambda ()
                  (error '"No clause matching"
                         _%l293262293275%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K293271293364%_
                 (lambda (_%r293362%_) (remove-nulls! _%r293362%_)))
                (_%K293268293351%_
                 (lambda (_%r293291%_)
                   (let _%loop293293%_ ((_%l293295%_ _%l293261%_)
                                        (_%r293296%_ _%r293291%_))
                     (let* ((_%r293297293310%_ _%r293296%_)
                            (_%E293301293314%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r293297293310%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K293306293341%_
                              (lambda (_%rr293339%_)
                                (let ((__tmp297328 _%l293295%_)
                                      (__tmp297327
                                       (remove-nulls! _%rr293339%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp297328 __tmp297327))))
                             (_%K293303293328%_
                              (lambda (_%rr293326%_)
                                (_%loop293293%_ _%r293296%_ _%rr293326%_)))
                             (_%K293302293319%_ (lambda () '#!void)))
                         (if (pair? _%r293297293310%_)
                             (let ((_%tl293308293346%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r293297293310%_)))
                                   (_%hd293307293344%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r293297293310%_))))
                               (if (null? _%hd293307293344%_)
                                   (let ((_%rr293349%_ _%tl293308293346%_))
                                     (_%K293306293341%_ _%rr293349%_))
                                   (let ((_%rr293334%_ _%tl293308293346%_))
                                     (_%K293303293328%_ _%rr293334%_))))
                             '#!void))))
                   _%l293261%_))
                (_%K293267293284%_ (lambda () _%l293261%_)))
            (if (pair? _%l293262293275%_)
                (let ((_%tl293273293369%_
                       (let () (declare (not safe)) (##cdr _%l293262293275%_)))
                      (_%hd293272293367%_
                       (let ()
                         (declare (not safe))
                         (##car _%l293262293275%_))))
                  (if (null? _%hd293272293367%_)
                      (let ((_%r293372%_ _%tl293273293369%_))
                        (remove-nulls! _%r293372%_))
                      (let ((_%r293357%_ _%tl293273293369%_))
                        (_%K293268293351%_ _%r293357%_))))
                (_%K293267293284%_))))))
    (define append1!
      (lambda (_%l293246%_ _%x293247%_)
        (let ((_%l2293250%_ (cons _%x293247%_ '())))
          (if (pair? _%l293246%_)
              (let ((_%l293252%_ _%l293246%_))
                (let ((__tmp297329
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l293252%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp297329 _%l2293250%_))
                _%l293252%_)
              _%l2293250%_))))
    (define __append-reverse-until
      (lambda (_%pred293188%_ _%rhead293189%_ _%tail293190%_)
        (let ((_%pred293193%_ _%pred293188%_))
          (let _%loop293202%_ ((_%rhead293204%_ _%rhead293189%_)
                               (_%tail293205%_ _%tail293190%_))
            (let* ((_%rhead293207293216%_ _%rhead293204%_)
                   (_%E293210293220%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead293207293216%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K293214293243%_ (lambda () (values '() _%tail293205%_)))
                    (_%K293211293227%_
                     (lambda (_%r293224%_ _%a293225%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred293193%_ _%a293225%_))
                           (values _%rhead293204%_ _%tail293205%_)
                           (_%loop293202%_
                            _%r293224%_
                            (cons _%a293225%_ _%tail293205%_))))))
                (let ((_%try-match293209293239%_
                       (lambda ()
                         (if (pair? _%rhead293207293216%_)
                             (let ((_%tl293213293232%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead293207293216%_)))
                                   (_%hd293212293230%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead293207293216%_))))
                               (let ((_%a293235%_ _%hd293212293230%_)
                                     (_%r293237%_ _%tl293213293232%_))
                                 (_%K293211293227%_ _%r293237%_ _%a293235%_)))
                             (_%E293210293220%_)))))
                  (if (null? _%rhead293207293216%_)
                      (_%K293214293243%_)
                      (_%try-match293209293239%_)))))))))
    (define append-reverse-until
      (lambda (_%pred285326%_ _%rhead285327%_ _%tail285328%_)
        (if (procedure? _%pred285326%_)
            (let ((_%pred285332%_ _%pred285326%_))
              (__append-reverse-until
               _%pred285332%_
               _%rhead285327%_
               _%tail285328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@390.29-390.33"
               'contract:
               'procedure?
               'value:
               _%pred285326%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f293137%_ _%lst293138%_)
        (let ((_%f293141%_ _%f293137%_))
          (let _%lp293150%_ ((_%rest293152%_ _%lst293138%_))
            (let* ((_%rest293154293162%_ _%rest293152%_)
                   (_%else293156293170%_ (lambda () '#t))
                   (_%K293158293176%_
                    (lambda (_%rest293173%_ _%x293174%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f293141%_ _%x293174%_))
                          (_%lp293150%_ _%rest293173%_)
                          '#f))))
              (if (pair? _%rest293154293162%_)
                  (let ((_%hd293159293179%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest293154293162%_)))
                        (_%tl293160293181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest293154293162%_))))
                    (let* ((_%x293184%_ _%hd293159293179%_)
                           (_%rest293186%_ _%tl293160293181%_))
                      (_%K293158293176%_ _%rest293186%_ _%x293184%_)))
                  (_%else293156293170%_)))))))
    (define andmap1
      (lambda (_%f285462%_ _%lst285463%_)
        (if (procedure? _%f285462%_)
            (let ((_%f285467%_ _%f285462%_))
              (__andmap1 _%f285467%_ _%lst285463%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@401.16-401.17"
               'contract:
               'procedure?
               'value:
               _%f285462%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f293051%_ _%lst1293052%_ _%lst2293053%_)
        (let ((_%f293056%_ _%f293051%_))
          (let _%lp293065%_ ((_%rest1293067%_ _%lst1293052%_)
                             (_%rest2293068%_ _%lst2293053%_))
            (let* ((_%rest1293070293078%_ _%rest1293067%_)
                   (_%else293072293086%_ (lambda () '#t))
                   (_%K293074293125%_
                    (lambda (_%rest1293089%_ _%x1293090%_)
                      (let* ((_%rest2293091293099%_ _%rest2293068%_)
                             (_%else293093293107%_ (lambda () '#t))
                             (_%K293095293113%_
                              (lambda (_%rest2293110%_ _%x2293111%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f293056%_ _%x1293090%_ _%x2293111%_))
                                    (_%lp293065%_
                                     _%rest1293089%_
                                     _%rest2293110%_)
                                    '#f))))
                        (if (pair? _%rest2293091293099%_)
                            (let ((_%hd293096293116%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2293091293099%_)))
                                  (_%tl293097293118%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2293091293099%_))))
                              (let* ((_%x2293121%_ _%hd293096293116%_)
                                     (_%rest2293123%_ _%tl293097293118%_))
                                (_%K293095293113%_
                                 _%rest2293123%_
                                 _%x2293121%_)))
                            (_%else293093293107%_))))))
              (if (pair? _%rest1293070293078%_)
                  (let ((_%hd293075293128%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1293070293078%_)))
                        (_%tl293076293130%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1293070293078%_))))
                    (let* ((_%x1293133%_ _%hd293075293128%_)
                           (_%rest1293135%_ _%tl293076293130%_))
                      (_%K293074293125%_ _%rest1293135%_ _%x1293133%_)))
                  (_%else293072293086%_)))))))
    (define andmap2
      (lambda (_%f285597%_ _%lst1285598%_ _%lst2285599%_)
        (if (procedure? _%f285597%_)
            (let ((_%f285603%_ _%f285597%_))
              (__andmap2 _%f285603%_ _%lst1285598%_ _%lst2285599%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@410.16-410.17"
               'contract:
               'procedure?
               'value:
               _%f285597%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f292995%_ _%lst292996%_)
        (let* ((_%f292998%_ _%f292995%_) (_%lst293001%_ _%lst292996%_))
          (if (procedure? _%f292998%_)
              (let ((_%f293006%_ _%f292998%_))
                (__andmap1 _%f293006%_ _%lst293001%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f292998%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f293018%_ _%lst1293019%_ _%lst2293020%_)
        (let* ((_%f293022%_ _%f293018%_)
               (_%lst1293025%_ _%lst1293019%_)
               (_%lst2293028%_ _%lst2293020%_))
          (if (procedure? _%f293022%_)
              (let ((_%f293033%_ _%f293022%_))
                (__andmap2 _%f293033%_ _%lst1293025%_ _%lst2293028%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f293022%_)
                '#!void)))))
    (define andmap
      (lambda _g297330_
        (let ((_g297331_ (let () (declare (not safe)) (##length _g297330_))))
          (cond ((let () (declare (not safe)) (##fx= _g297331_ 2))
                 (apply andmap__0 _g297330_))
                ((let () (declare (not safe)) (##fx= _g297331_ 3))
                 (apply andmap__1 _g297330_))
                ((let () (declare (not safe)) (##fx>= _g297331_ 3))
                 (apply andmap* _g297330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g297330_))))))
    (define __andmap*
      (lambda (_%f292952%_ . _%rest292953%_)
        (let ((_%f292956%_ _%f292952%_))
          (let _%recur292965%_ ((_%rest292967%_ _%rest292953%_))
            (if (let* ((_%f292970%_ pair?)
                       (_%lst292973%_ _%rest292967%_)
                       (_%f292978%_ _%f292970%_))
                  (__andmap1 _%f292978%_ _%lst292973%_))
                (if (let ((__tmp297332 (map car _%rest292967%_)))
                      (declare (not safe))
                      (##apply _%f292956%_ __tmp297332))
                    (_%recur292965%_ (map cdr _%rest292967%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f285733%_ . _%rest285734%_)
        (if (procedure? _%f285733%_)
            (let ((_%f285738%_ _%f285733%_))
              (declare (not safe))
              (##apply __andmap* _%f285738%_ _%rest285734%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@430.16-430.17"
               'contract:
               'procedure?
               'value:
               _%f285733%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f292899%_ _%lst292900%_)
        (let ((_%f292903%_ _%f292899%_))
          (let _%lp292912%_ ((_%rest292914%_ _%lst292900%_))
            (let* ((_%rest292915292923%_ _%rest292914%_)
                   (_%else292917292931%_ (lambda () '#f))
                   (_%K292919292940%_
                    (lambda (_%rest292934%_ _%x292935%_)
                      (let ((_%$e292937%_
                             (let ()
                               (declare (not safe))
                               (_%f292903%_ _%x292935%_))))
                        (if _%$e292937%_
                            _%$e292937%_
                            (_%lp292912%_ _%rest292934%_))))))
              (if (pair? _%rest292915292923%_)
                  (let ((_%hd292920292943%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest292915292923%_)))
                        (_%tl292921292945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest292915292923%_))))
                    (let* ((_%x292948%_ _%hd292920292943%_)
                           (_%rest292950%_ _%tl292921292945%_))
                      (_%K292919292940%_ _%rest292950%_ _%x292948%_)))
                  (_%else292917292931%_)))))))
    (define ormap1
      (lambda (_%f285868%_ _%lst285869%_)
        (if (procedure? _%f285868%_)
            (let ((_%f285873%_ _%f285868%_))
              (__ormap1 _%f285873%_ _%lst285869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f285868%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f292811%_ _%lst1292812%_ _%lst2292813%_)
        (let ((_%f292816%_ _%f292811%_))
          (let _%lp292825%_ ((_%rest1292827%_ _%lst1292812%_)
                             (_%rest2292828%_ _%lst2292813%_))
            (let* ((_%rest1292829292837%_ _%rest1292827%_)
                   (_%else292831292845%_ (lambda () '#f))
                   (_%K292833292887%_
                    (lambda (_%rest1292848%_ _%x1292849%_)
                      (let* ((_%rest2292850292858%_ _%rest2292828%_)
                             (_%else292852292866%_ (lambda () '#f))
                             (_%K292854292875%_
                              (lambda (_%rest2292869%_ _%x2292870%_)
                                (let ((_%$e292872%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f292816%_
                                          _%x1292849%_
                                          _%x2292870%_))))
                                  (if _%$e292872%_
                                      _%$e292872%_
                                      (_%lp292825%_
                                       _%rest1292848%_
                                       _%rest2292869%_))))))
                        (if (pair? _%rest2292850292858%_)
                            (let ((_%hd292855292878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2292850292858%_)))
                                  (_%tl292856292880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2292850292858%_))))
                              (let* ((_%x2292883%_ _%hd292855292878%_)
                                     (_%rest2292885%_ _%tl292856292880%_))
                                (_%K292854292875%_
                                 _%rest2292885%_
                                 _%x2292883%_)))
                            (_%else292852292866%_))))))
              (if (pair? _%rest1292829292837%_)
                  (let ((_%hd292834292890%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1292829292837%_)))
                        (_%tl292835292892%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1292829292837%_))))
                    (let* ((_%x1292895%_ _%hd292834292890%_)
                           (_%rest1292897%_ _%tl292835292892%_))
                      (_%K292833292887%_ _%rest1292897%_ _%x1292895%_)))
                  (_%else292831292845%_)))))))
    (define ormap2
      (lambda (_%f286003%_ _%lst1286004%_ _%lst2286005%_)
        (if (procedure? _%f286003%_)
            (let ((_%f286009%_ _%f286003%_))
              (__ormap2 _%f286009%_ _%lst1286004%_ _%lst2286005%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.15-446.16"
               'contract:
               'procedure?
               'value:
               _%f286003%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f292755%_ _%lst292756%_)
        (let* ((_%f292758%_ _%f292755%_) (_%lst292761%_ _%lst292756%_))
          (if (procedure? _%f292758%_)
              (let ((_%f292766%_ _%f292758%_))
                (__ormap1 _%f292766%_ _%lst292761%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f292758%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f292778%_ _%lst1292779%_ _%lst2292780%_)
        (let* ((_%f292782%_ _%f292778%_)
               (_%lst1292785%_ _%lst1292779%_)
               (_%lst2292788%_ _%lst2292780%_))
          (if (procedure? _%f292782%_)
              (let ((_%f292793%_ _%f292782%_))
                (__ormap2 _%f292793%_ _%lst1292785%_ _%lst2292788%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f292782%_)
                '#!void)))))
    (define ormap
      (lambda _g297333_
        (let ((_g297334_ (let () (declare (not safe)) (##length _g297333_))))
          (cond ((let () (declare (not safe)) (##fx= _g297334_ 2))
                 (apply ormap__0 _g297333_))
                ((let () (declare (not safe)) (##fx= _g297334_ 3))
                 (apply ormap__1 _g297333_))
                ((let () (declare (not safe)) (##fx>= _g297334_ 3))
                 (apply ormap* _g297333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g297333_))))))
    (define __ormap*
      (lambda (_%f292711%_ . _%rest292712%_)
        (let ((_%f292715%_ _%f292711%_))
          (let _%recur292724%_ ((_%rest292726%_ _%rest292712%_))
            (if (let* ((_%f292728%_ pair?)
                       (_%lst292731%_ _%rest292726%_)
                       (_%f292736%_ _%f292728%_))
                  (__andmap1 _%f292736%_ _%lst292731%_))
                (let ((_%$e292752%_
                       (let ((__tmp297335 (map car _%rest292726%_)))
                         (declare (not safe))
                         (##apply _%f292715%_ __tmp297335))))
                  (if _%$e292752%_
                      _%$e292752%_
                      (_%recur292724%_ (map cdr _%rest292726%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f286139%_ . _%rest286140%_)
        (if (procedure? _%f286139%_)
            (let ((_%f286144%_ _%f286139%_))
              (declare (not safe))
              (##apply __ormap* _%f286144%_ _%rest286140%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@464.15-464.16"
               'contract:
               'procedure?
               'value:
               _%f286139%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f292654%_ _%lst292655%_)
        (let ((_%f292658%_ _%f292654%_))
          (let _%recur292667%_ ((_%rest292669%_ _%lst292655%_))
            (let* ((_%rest292671292679%_ _%rest292669%_)
                   (_%else292673292687%_ (lambda () '()))
                   (_%K292675292699%_
                    (lambda (_%rest292690%_ _%x292691%_)
                      (let ((_%$e292693%_
                             (let ()
                               (declare (not safe))
                               (_%f292658%_ _%x292691%_))))
                        (if _%$e292693%_
                            ((lambda (_%r292696%_)
                               (cons _%r292696%_
                                     (_%recur292667%_ _%rest292690%_)))
                             _%$e292693%_)
                            (_%recur292667%_ _%rest292690%_))))))
              (if (pair? _%rest292671292679%_)
                  (let ((_%hd292676292702%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest292671292679%_)))
                        (_%tl292677292704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest292671292679%_))))
                    (let* ((_%x292707%_ _%hd292676292702%_)
                           (_%rest292709%_ _%tl292677292704%_))
                      (_%K292675292699%_ _%rest292709%_ _%x292707%_)))
                  (_%else292673292687%_)))))))
    (define filter-map1
      (lambda (_%f286274%_ _%lst286275%_)
        (if (procedure? _%f286274%_)
            (let ((_%f286279%_ _%f286274%_))
              (__filter-map1 _%f286279%_ _%lst286275%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f286274%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f292562%_ _%lst1292563%_ _%lst2292564%_)
        (let ((_%f292567%_ _%f292562%_))
          (let _%recur292576%_ ((_%rest1292578%_ _%lst1292563%_)
                                (_%rest2292579%_ _%lst2292564%_))
            (let* ((_%rest1292581292589%_ _%rest1292578%_)
                   (_%else292583292597%_ (lambda () '()))
                   (_%K292585292642%_
                    (lambda (_%rest1292600%_ _%x1292601%_)
                      (let* ((_%rest2292602292610%_ _%rest2292579%_)
                             (_%else292604292618%_ (lambda () '()))
                             (_%K292606292630%_
                              (lambda (_%rest2292621%_ _%x2292622%_)
                                (let ((_%$e292624%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f292567%_
                                          _%x1292601%_
                                          _%x2292622%_))))
                                  (if _%$e292624%_
                                      ((lambda (_%r292627%_)
                                         (cons _%r292627%_
                                               (_%recur292576%_
                                                _%rest1292600%_
                                                _%rest2292621%_)))
                                       _%$e292624%_)
                                      (_%recur292576%_
                                       _%rest1292600%_
                                       _%rest2292621%_))))))
                        (if (pair? _%rest2292602292610%_)
                            (let ((_%hd292607292633%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2292602292610%_)))
                                  (_%tl292608292635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2292602292610%_))))
                              (let* ((_%x2292638%_ _%hd292607292633%_)
                                     (_%rest2292640%_ _%tl292608292635%_))
                                (_%K292606292630%_
                                 _%rest2292640%_
                                 _%x2292638%_)))
                            (_%else292604292618%_))))))
              (if (pair? _%rest1292581292589%_)
                  (let ((_%hd292586292645%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1292581292589%_)))
                        (_%tl292587292647%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1292581292589%_))))
                    (let* ((_%x1292650%_ _%hd292586292645%_)
                           (_%rest1292652%_ _%tl292587292647%_))
                      (_%K292585292642%_ _%rest1292652%_ _%x1292650%_)))
                  (_%else292583292597%_)))))))
    (define filter-map2
      (lambda (_%f286409%_ _%lst1286410%_ _%lst2286411%_)
        (if (procedure? _%f286409%_)
            (let ((_%f286415%_ _%f286409%_))
              (__filter-map2 _%f286415%_ _%lst1286410%_ _%lst2286411%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.20-482.21"
               'contract:
               'procedure?
               'value:
               _%f286409%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f292506%_ _%lst292507%_)
        (let* ((_%f292509%_ _%f292506%_) (_%lst292512%_ _%lst292507%_))
          (if (procedure? _%f292509%_)
              (let ((_%f292517%_ _%f292509%_))
                (__filter-map1 _%f292517%_ _%lst292512%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f292509%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f292529%_ _%lst1292530%_ _%lst2292531%_)
        (let* ((_%f292533%_ _%f292529%_)
               (_%lst1292536%_ _%lst1292530%_)
               (_%lst2292539%_ _%lst2292531%_))
          (if (procedure? _%f292533%_)
              (let ((_%f292544%_ _%f292533%_))
                (__filter-map2 _%f292544%_ _%lst1292536%_ _%lst2292539%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f292533%_)
                '#!void)))))
    (define filter-map
      (lambda _g297336_
        (let ((_g297337_ (let () (declare (not safe)) (##length _g297336_))))
          (cond ((let () (declare (not safe)) (##fx= _g297337_ 2))
                 (apply filter-map__0 _g297336_))
                ((let () (declare (not safe)) (##fx= _g297337_ 3))
                 (apply filter-map__1 _g297336_))
                ((let () (declare (not safe)) (##fx>= _g297337_ 3))
                 (apply filter-map* _g297336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g297336_))))))
    (define __filter-map*
      (lambda (_%f292457%_ . _%rest292458%_)
        (let ((_%f292461%_ _%f292457%_))
          (let _%recur292470%_ ((_%rest292472%_ _%rest292458%_))
            (if (let* ((_%f292475%_ pair?)
                       (_%lst292478%_ _%rest292472%_)
                       (_%f292483%_ _%f292475%_))
                  (__andmap1 _%f292483%_ _%lst292478%_))
                (let ((_%$e292500%_
                       (let ((__tmp297338 (map car _%rest292472%_)))
                         (declare (not safe))
                         (##apply _%f292461%_ __tmp297338))))
                  (if _%$e292500%_
                      ((lambda (_%r292503%_)
                         (cons _%r292503%_
                               (_%recur292470%_ (map cdr _%rest292472%_))))
                       _%$e292500%_)
                      (_%recur292470%_ (map cdr _%rest292472%_))))
                '())))))
    (define filter-map*
      (lambda (_%f286545%_ . _%rest286546%_)
        (if (procedure? _%f286545%_)
            (let ((_%f286550%_ _%f286545%_))
              (declare (not safe))
              (##apply __filter-map* _%f286550%_ _%rest286546%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@504.20-504.21"
               'contract:
               'procedure?
               'value:
               _%f286545%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key292433%_ _%lst292435%_ _%default292437%_)
        (let ((_%$e292440%_
               (if (pair? _%lst292435%_)
                   (assq _%key292433%_ _%lst292435%_)
                   '#f)))
          (if _%$e292440%_
              (cdr _%$e292440%_)
              (if (procedure? _%default292437%_)
                  (_%default292437%_ _%key292433%_)
                  _%default292437%_)))))
    (define agetq__0
      (lambda (_%key292448%_ _%lst292449%_)
        (let ((_%default292451%_ '#f))
          (agetq__% _%key292448%_ _%lst292449%_ _%default292451%_))))
    (define agetq
      (lambda _g297339_
        (let ((_g297340_ (let () (declare (not safe)) (##length _g297339_))))
          (cond ((let () (declare (not safe)) (##fx= _g297340_ 2))
                 (apply agetq__0 _g297339_))
                ((let () (declare (not safe)) (##fx= _g297340_ 3))
                 (apply agetq__% _g297339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g297339_))))))
    (define agetv__%
      (lambda (_%key292408%_ _%lst292410%_ _%default292412%_)
        (let ((_%$e292415%_
               (if (pair? _%lst292410%_)
                   (assv _%key292408%_ _%lst292410%_)
                   '#f)))
          (if _%$e292415%_
              (cdr _%$e292415%_)
              (if (procedure? _%default292412%_)
                  (_%default292412%_ _%key292408%_)
                  _%default292412%_)))))
    (define agetv__0
      (lambda (_%key292423%_ _%lst292424%_)
        (let ((_%default292426%_ '#f))
          (agetv__% _%key292423%_ _%lst292424%_ _%default292426%_))))
    (define agetv
      (lambda _g297341_
        (let ((_g297342_ (let () (declare (not safe)) (##length _g297341_))))
          (cond ((let () (declare (not safe)) (##fx= _g297342_ 2))
                 (apply agetv__0 _g297341_))
                ((let () (declare (not safe)) (##fx= _g297342_ 3))
                 (apply agetv__% _g297341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g297341_))))))
    (define aget__%
      (lambda (_%key292383%_ _%lst292385%_ _%default292387%_)
        (let ((_%$e292390%_
               (if (pair? _%lst292385%_)
                   (assoc _%key292383%_ _%lst292385%_)
                   '#f)))
          (if _%$e292390%_
              (cdr _%$e292390%_)
              (if (procedure? _%default292387%_)
                  (_%default292387%_ _%key292383%_)
                  _%default292387%_)))))
    (define aget__0
      (lambda (_%key292398%_ _%lst292399%_)
        (let ((_%default292401%_ '#f))
          (aget__% _%key292398%_ _%lst292399%_ _%default292401%_))))
    (define aget
      (lambda _g297343_
        (let ((_g297344_ (let () (declare (not safe)) (##length _g297343_))))
          (cond ((let () (declare (not safe)) (##fx= _g297344_ 2))
                 (apply aget__0 _g297343_))
                ((let () (declare (not safe)) (##fx= _g297344_ 3))
                 (apply aget__% _g297343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g297343_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key292312%_ _%lst292314%_ _%default292316%_)
        (let _%lp292319%_ ((_%rest292322%_ _%lst292314%_))
          (let* ((_%rest292324292334%_ _%rest292322%_)
                 (_%else292326292342%_
                  (lambda ()
                    (if (procedure? _%default292316%_)
                        (_%default292316%_ _%key292312%_)
                        _%default292316%_)))
                 (_%K292328292351%_
                  (lambda (_%rest292345%_ _%v292346%_ _%k292348%_)
                    (if (eq? _%k292348%_ _%key292312%_)
                        _%v292346%_
                        (_%lp292319%_ _%rest292345%_)))))
            (if (pair? _%rest292324292334%_)
                (let ((_%hd292329292354%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest292324292334%_)))
                      (_%tl292330292356%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest292324292334%_))))
                  (let ((_%k292359%_ _%hd292329292354%_))
                    (if (pair? _%tl292330292356%_)
                        (let ((_%hd292331292361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl292330292356%_)))
                              (_%tl292332292363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl292330292356%_))))
                          (let* ((_%v292366%_ _%hd292331292361%_)
                                 (_%rest292368%_ _%tl292332292363%_))
                            (_%K292328292351%_
                             _%rest292368%_
                             _%v292366%_
                             _%k292359%_)))
                        (_%else292326292342%_))))
                (_%else292326292342%_))))))
    (define pgetq__0
      (lambda (_%key292373%_ _%lst292374%_)
        (let ((_%default292376%_ '#f))
          (pgetq__% _%key292373%_ _%lst292374%_ _%default292376%_))))
    (define pgetq
      (lambda _g297345_
        (let ((_g297346_ (let () (declare (not safe)) (##length _g297345_))))
          (cond ((let () (declare (not safe)) (##fx= _g297346_ 2))
                 (apply pgetq__0 _g297345_))
                ((let () (declare (not safe)) (##fx= _g297346_ 3))
                 (apply pgetq__% _g297345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g297345_))))))
    (define pgetv__%
      (lambda (_%key292241%_ _%lst292243%_ _%default292245%_)
        (let _%lp292248%_ ((_%rest292251%_ _%lst292243%_))
          (let* ((_%rest292253292263%_ _%rest292251%_)
                 (_%else292255292271%_
                  (lambda ()
                    (if (procedure? _%default292245%_)
                        (_%default292245%_ _%key292241%_)
                        _%default292245%_)))
                 (_%K292257292280%_
                  (lambda (_%rest292274%_ _%v292275%_ _%k292277%_)
                    (if (eqv? _%k292277%_ _%key292241%_)
                        _%v292275%_
                        (_%lp292248%_ _%rest292274%_)))))
            (if (pair? _%rest292253292263%_)
                (let ((_%hd292258292283%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest292253292263%_)))
                      (_%tl292259292285%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest292253292263%_))))
                  (let ((_%k292288%_ _%hd292258292283%_))
                    (if (pair? _%tl292259292285%_)
                        (let ((_%hd292260292290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl292259292285%_)))
                              (_%tl292261292292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl292259292285%_))))
                          (let* ((_%v292295%_ _%hd292260292290%_)
                                 (_%rest292297%_ _%tl292261292292%_))
                            (_%K292257292280%_
                             _%rest292297%_
                             _%v292295%_
                             _%k292288%_)))
                        (_%else292255292271%_))))
                (_%else292255292271%_))))))
    (define pgetv__0
      (lambda (_%key292302%_ _%lst292303%_)
        (let ((_%default292305%_ '#f))
          (pgetv__% _%key292302%_ _%lst292303%_ _%default292305%_))))
    (define pgetv
      (lambda _g297347_
        (let ((_g297348_ (let () (declare (not safe)) (##length _g297347_))))
          (cond ((let () (declare (not safe)) (##fx= _g297348_ 2))
                 (apply pgetv__0 _g297347_))
                ((let () (declare (not safe)) (##fx= _g297348_ 3))
                 (apply pgetv__% _g297347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g297347_))))))
    (define pget__%
      (lambda (_%key292170%_ _%lst292172%_ _%default292174%_)
        (let _%lp292177%_ ((_%rest292180%_ _%lst292172%_))
          (let* ((_%rest292182292192%_ _%rest292180%_)
                 (_%else292184292200%_
                  (lambda ()
                    (if (procedure? _%default292174%_)
                        (_%default292174%_ _%key292170%_)
                        _%default292174%_)))
                 (_%K292186292209%_
                  (lambda (_%rest292203%_ _%v292204%_ _%k292206%_)
                    (if (equal? _%k292206%_ _%key292170%_)
                        _%v292204%_
                        (_%lp292177%_ _%rest292203%_)))))
            (if (pair? _%rest292182292192%_)
                (let ((_%hd292187292212%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest292182292192%_)))
                      (_%tl292188292214%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest292182292192%_))))
                  (let ((_%k292217%_ _%hd292187292212%_))
                    (if (pair? _%tl292188292214%_)
                        (let ((_%hd292189292219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl292188292214%_)))
                              (_%tl292190292221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl292188292214%_))))
                          (let* ((_%v292224%_ _%hd292189292219%_)
                                 (_%rest292226%_ _%tl292190292221%_))
                            (_%K292186292209%_
                             _%rest292226%_
                             _%v292224%_
                             _%k292217%_)))
                        (_%else292184292200%_))))
                (_%else292184292200%_))))))
    (define pget__0
      (lambda (_%key292231%_ _%lst292232%_)
        (let ((_%default292234%_ '#f))
          (pget__% _%key292231%_ _%lst292232%_ _%default292234%_))))
    (define pget
      (lambda _g297349_
        (let ((_g297350_ (let () (declare (not safe)) (##length _g297349_))))
          (cond ((let () (declare (not safe)) (##fx= _g297350_ 2))
                 (apply pget__0 _g297349_))
                ((let () (declare (not safe)) (##fx= _g297350_ 3))
                 (apply pget__% _g297349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g297349_))))))
    (define __find
      (lambda (_%pred292130%_ _%lst292131%_)
        (let* ((_%pred292134%_ _%pred292130%_)
               (_%$e292165%_
                (let* ((_%proc292143%_ _%pred292134%_)
                       (_%lst292146%_ _%lst292131%_)
                       (_%proc292151%_ _%proc292143%_))
                  (__memf _%proc292151%_ _%lst292146%_))))
          (if _%$e292165%_
              (let () (declare (not safe)) (##car _%$e292165%_))
              '#f))))
    (define find
      (lambda (_%pred286842%_ _%lst286843%_)
        (if (procedure? _%pred286842%_)
            (let ((_%pred286847%_ _%pred286842%_))
              (__find _%pred286847%_ _%lst286843%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@550.13-550.17"
               'contract:
               'procedure?
               'value:
               _%pred286842%_)
              '#!void))))
    (define __memf
      (lambda (_%proc292080%_ _%lst292081%_)
        (let ((_%proc292084%_ _%proc292080%_))
          (let _%lp292093%_ ((_%rest292095%_ _%lst292081%_))
            (let* ((_%rest292096292104%_ _%rest292095%_)
                   (_%else292098292112%_ (lambda () '#f))
                   (_%K292100292118%_
                    (lambda (_%tl292115%_ _%hd292116%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc292084%_ _%hd292116%_))
                          _%rest292095%_
                          (_%lp292093%_ _%tl292115%_)))))
              (if (pair? _%rest292096292104%_)
                  (let ((_%hd292101292121%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest292096292104%_)))
                        (_%tl292102292123%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest292096292104%_))))
                    (let* ((_%hd292126%_ _%hd292101292121%_)
                           (_%tl292128%_ _%tl292102292123%_))
                      (_%K292100292118%_ _%tl292128%_ _%hd292126%_)))
                  (_%else292098292112%_)))))))
    (define memf
      (lambda (_%proc286977%_ _%lst286978%_)
        (if (procedure? _%proc286977%_)
            (let ((_%proc286982%_ _%proc286977%_))
              (__memf _%proc286982%_ _%lst286978%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@555.13-555.17"
               'contract:
               'procedure?
               'value:
               _%proc286977%_)
              '#!void))))
    (define remove1
      (lambda (_%el292003%_ _%lst292005%_)
        (let _%lp292008%_ ((_%rest292011%_ _%lst292005%_) (_%r292013%_ '()))
          (let* ((_%rest292015292023%_ _%rest292011%_)
                 (_%else292017292031%_ (lambda () _%lst292005%_))
                 (_%K292019292068%_
                  (lambda (_%rest292034%_ _%hd292035%_)
                    (if (equal? _%el292003%_ _%hd292035%_)
                        (let* ((_%f292038%_ cons)
                               (_%iv292041%_ _%rest292034%_)
                               (_%lst292044%_ _%r292013%_)
                               (_%f292049%_ _%f292038%_))
                          (__foldl1 _%f292049%_ _%iv292041%_ _%lst292044%_))
                        (_%lp292008%_
                         _%rest292034%_
                         (cons _%hd292035%_ _%r292013%_))))))
            (if (pair? _%rest292015292023%_)
                (let ((_%hd292020292071%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest292015292023%_)))
                      (_%tl292021292073%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest292015292023%_))))
                  (let* ((_%hd292076%_ _%hd292020292071%_)
                         (_%rest292078%_ _%tl292021292073%_))
                    (_%K292019292068%_ _%rest292078%_ _%hd292076%_)))
                (_%else292017292031%_))))))
    (define remv1
      (lambda (_%el291926%_ _%lst291928%_)
        (let _%lp291931%_ ((_%rest291934%_ _%lst291928%_) (_%r291936%_ '()))
          (let* ((_%rest291938291946%_ _%rest291934%_)
                 (_%else291940291954%_ (lambda () _%lst291928%_))
                 (_%K291942291991%_
                  (lambda (_%rest291957%_ _%hd291958%_)
                    (if (eqv? _%el291926%_ _%hd291958%_)
                        (let* ((_%f291961%_ cons)
                               (_%iv291964%_ _%rest291957%_)
                               (_%lst291967%_ _%r291936%_)
                               (_%f291972%_ _%f291961%_))
                          (__foldl1 _%f291972%_ _%iv291964%_ _%lst291967%_))
                        (_%lp291931%_
                         _%rest291957%_
                         (cons _%hd291958%_ _%r291936%_))))))
            (if (pair? _%rest291938291946%_)
                (let ((_%hd291943291994%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest291938291946%_)))
                      (_%tl291944291996%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest291938291946%_))))
                  (let* ((_%hd291999%_ _%hd291943291994%_)
                         (_%rest292001%_ _%tl291944291996%_))
                    (_%K291942291991%_ _%rest292001%_ _%hd291999%_)))
                (_%else291940291954%_))))))
    (define remq1
      (lambda (_%el291849%_ _%lst291851%_)
        (let _%lp291854%_ ((_%rest291857%_ _%lst291851%_) (_%r291859%_ '()))
          (let* ((_%rest291861291869%_ _%rest291857%_)
                 (_%else291863291877%_ (lambda () _%lst291851%_))
                 (_%K291865291914%_
                  (lambda (_%rest291880%_ _%hd291881%_)
                    (if (eq? _%el291849%_ _%hd291881%_)
                        (let* ((_%f291884%_ cons)
                               (_%iv291887%_ _%rest291880%_)
                               (_%lst291890%_ _%r291859%_)
                               (_%f291895%_ _%f291884%_))
                          (__foldl1 _%f291895%_ _%iv291887%_ _%lst291890%_))
                        (_%lp291854%_
                         _%rest291880%_
                         (cons _%hd291881%_ _%r291859%_))))))
            (if (pair? _%rest291861291869%_)
                (let ((_%hd291866291917%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest291861291869%_)))
                      (_%tl291867291919%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest291861291869%_))))
                  (let* ((_%hd291922%_ _%hd291866291917%_)
                         (_%rest291924%_ _%tl291867291919%_))
                    (_%K291865291914%_ _%rest291924%_ _%hd291922%_)))
                (_%else291863291877%_))))))
    (define __remf
      (lambda (_%proc291766%_ _%lst291767%_)
        (let ((_%proc291770%_ _%proc291766%_))
          (let _%lp291779%_ ((_%rest291781%_ _%lst291767%_) (_%r291782%_ '()))
            (let* ((_%rest291783291791%_ _%rest291781%_)
                   (_%else291785291799%_ (lambda () _%lst291767%_))
                   (_%K291787291837%_
                    (lambda (_%rest291802%_ _%hd291803%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc291770%_ _%hd291803%_))
                          (let* ((_%f291805%_ cons)
                                 (_%iv291808%_ _%rest291802%_)
                                 (_%lst291811%_ _%r291782%_)
                                 (_%f291816%_ _%f291805%_))
                            (__foldl1 _%f291816%_ _%iv291808%_ _%lst291811%_))
                          (_%lp291779%_
                           _%rest291802%_
                           (cons _%hd291803%_ _%r291782%_))))))
              (if (pair? _%rest291783291791%_)
                  (let ((_%hd291788291840%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest291783291791%_)))
                        (_%tl291789291842%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest291783291791%_))))
                    (let* ((_%hd291845%_ _%hd291788291840%_)
                           (_%rest291847%_ _%tl291789291842%_))
                      (_%K291787291837%_ _%rest291847%_ _%hd291845%_)))
                  (_%else291785291799%_)))))))
    (define remf
      (lambda (_%proc287193%_ _%lst287194%_)
        (if (procedure? _%proc287193%_)
            (let ((_%proc287198%_ _%proc287193%_))
              (__remf _%proc287198%_ _%lst287194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.17"
               'contract:
               'procedure?
               'value:
               _%proc287193%_)
              '#!void))))
    (define __1+
      (lambda (_%x291754%_)
        (let ((_%x291757%_ _%x291754%_)) (+ _%x291757%_ '1))))
    (define 1+
      (lambda (_%x287328%_)
        (if (number? _%x287328%_)
            (let ((_%x287332%_ _%x287328%_)) (__1+ _%x287332%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.11-586.12"
               'contract:
               'number?
               'value:
               _%x287328%_)
              '#!void))))
    (define __1-
      (lambda (_%x291742%_)
        (let ((_%x291745%_ _%x291742%_)) (- _%x291745%_ '1))))
    (define 1-
      (lambda (_%x287462%_)
        (if (number? _%x287462%_)
            (let ((_%x287466%_ _%x287462%_)) (__1- _%x287466%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@594.11-594.12"
               'contract:
               'number?
               'value:
               _%x287462%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x291730%_)
        (let ((_%x291733%_ _%x291730%_))
          (declare (not safe))
          (##fx+ _%x291733%_ '1))))
    (define fx1+
      (lambda (_%x287596%_)
        (if (fixnum? _%x287596%_)
            (let ((_%x287600%_ _%x287596%_)) (__fx1+ _%x287600%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@602.13-602.14"
               'contract:
               'fixnum?
               'value:
               _%x287596%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x291718%_)
        (let ((_%x291721%_ _%x291718%_))
          (declare (not safe))
          (##fx- _%x291721%_ '1))))
    (define fx1-
      (lambda (_%x287730%_)
        (if (fixnum? _%x287730%_)
            (let ((_%x287734%_ _%x287730%_)) (__fx1- _%x287734%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@610.13-610.14"
               'contract:
               'fixnum?
               'value:
               _%x287730%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x291715%_)
        (if (fixnum? _%x291715%_)
            (let () (declare (not safe)) (##fx>= _%x291715%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x291712%_)
        (if (fixnum? _%x291712%_)
            (let () (declare (not safe)) (##fx> _%x291712%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x291709%_)
        (let () (declare (not safe)) (##fx= _%x291709%_ '0))))
    (define fx<0?
      (lambda (_%x291706%_)
        (if (fixnum? _%x291706%_)
            (let () (declare (not safe)) (##fx< _%x291706%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x291703%_)
        (if (fixnum? _%x291703%_)
            (let () (declare (not safe)) (##fx<= _%x291703%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x291700%_)
        (if (symbol? _%x291700%_) (not (uninterned-symbol? _%x291700%_)) '#f)))
    (define __display-as-string
      (lambda (_%x291594%_ _%port291595%_)
        (let ((_%port291598%_ _%port291595%_))
          (if (or (string? _%x291594%_)
                  (symbol? _%x291594%_)
                  (keyword? _%x291594%_)
                  (number? _%x291594%_)
                  (char? _%x291594%_))
              (display _%x291594%_ _%port291598%_)
              (if (pair? _%x291594%_)
                  (let ()
                    (let* ((_%x291621%_
                            (let () (declare (not safe)) (##car _%x291594%_)))
                           (_%port291624%_ _%port291598%_))
                      (if (output-port? _%port291624%_)
                          (let ((_%port291629%_ _%port291624%_))
                            (__display-as-string _%x291621%_ _%port291629%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port291624%_)
                            '#!void)))
                    (let* ((_%x291644%_
                            (let () (declare (not safe)) (##cdr _%x291594%_)))
                           (_%port291647%_ _%port291598%_))
                      (if (output-port? _%port291647%_)
                          (let ((_%port291652%_ _%port291647%_))
                            (__display-as-string _%x291644%_ _%port291652%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port291647%_)
                            '#!void))))
                  (if (vector? _%x291594%_)
                      (vector-for-each
                       (lambda (_%g291663291665%_)
                         (let* ((_%x291668%_ _%g291663291665%_)
                                (_%port291671%_ _%port291598%_))
                           (if (output-port? _%port291671%_)
                               (let ((_%port291676%_ _%port291671%_))
                                 (__display-as-string
                                  _%x291668%_
                                  _%port291676%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port291671%_)
                                 '#!void))))
                       _%x291594%_)
                      (if (or (null? _%x291594%_)
                              (eq? _%x291594%_ '#!void)
                              (eof-object? _%x291594%_)
                              (boolean? _%x291594%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x291594%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x287864%_ _%port287865%_)
        (if (output-port? _%port287865%_)
            (let ((_%port287869%_ _%port287865%_))
              (__display-as-string _%x287864%_ _%port287869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@640.28-640.32"
               'contract:
               'output-port?
               'value:
               _%port287865%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x291534%_)
        (if (string? _%x291534%_)
            _%x291534%_
            (if (symbol? _%x291534%_)
                (let () (declare (not safe)) (##symbol->string _%x291534%_))
                (if (keyword? _%x291534%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x291534%_))
                    (if (number? _%x291534%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x291534%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g291540291542%_)
                           (let* ((_%x291545%_ _%x291534%_)
                                  (_%port291548%_ _%g291540291542%_))
                             (if (output-port? _%port291548%_)
                                 (let ((_%port291553%_ _%port291548%_))
                                   (__display-as-string
                                    _%x291545%_
                                    _%port291553%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port291548%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args291567%_
        (call-with-output-string
         '()
         (lambda (_%g291568291570%_)
           (let* ((_%x291573%_ _%args291567%_)
                  (_%port291576%_ _%g291568291570%_))
             (if (output-port? _%port291576%_)
                 (let ((_%port291581%_ _%port291576%_))
                   (__display-as-string _%x291573%_ _%port291581%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port291576%_)
                   '#!void)))))))
    (define as-string
      (lambda _g297351_
        (let ((_g297352_ (let () (declare (not safe)) (##length _g297351_))))
          (cond ((let () (declare (not safe)) (##fx= _g297352_ 1))
                 (apply as-string__0 _g297351_))
                (#t
                 (apply (lambda _%args291567%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args291567%_)))
                        _g297351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g297351_))))))
    (define make-symbol__0
      (lambda (_%x291530%_)
        (if (interned-symbol? _%x291530%_)
            _%x291530%_
            (let ((__tmp297353 (as-string__0 _%x291530%_)))
              (declare (not safe))
              (##string->symbol __tmp297353)))))
    (define make-symbol__1
      (lambda _%args291532%_
        (let ((__tmp297354
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args291532%_))))
          (declare (not safe))
          (##string->symbol __tmp297354))))
    (define make-symbol
      (lambda _g297355_
        (let ((_g297356_ (let () (declare (not safe)) (##length _g297355_))))
          (cond ((let () (declare (not safe)) (##fx= _g297356_ 1))
                 (apply make-symbol__0 _g297355_))
                (#t
                 (apply (lambda _%args291532%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args291532%_)))
                        _g297355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g297355_))))))
    (define make-keyword__0
      (lambda (_%x291526%_)
        (if (interned-keyword? _%x291526%_)
            _%x291526%_
            (let ((__tmp297357 (as-string__0 _%x291526%_)))
              (declare (not safe))
              (##string->keyword __tmp297357)))))
    (define make-keyword__1
      (lambda _%args291528%_
        (let ((__tmp297358
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args291528%_))))
          (declare (not safe))
          (##string->keyword __tmp297358))))
    (define make-keyword
      (lambda _g297359_
        (let ((_g297360_ (let () (declare (not safe)) (##length _g297359_))))
          (cond ((let () (declare (not safe)) (##fx= _g297360_ 1))
                 (apply make-keyword__0 _g297359_))
                (#t
                 (apply (lambda _%args291528%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args291528%_)))
                        _g297359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g297359_))))))
    (define interned-keyword?
      (lambda (_%x291523%_)
        (if (keyword? _%x291523%_)
            (not (uninterned-keyword? _%x291523%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym291511%_)
        (let ((_%sym291514%_ _%sym291511%_))
          (if (uninterned-symbol? _%sym291514%_)
              (let ((__tmp297361
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym291514%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp297361))
              (let ((__tmp297362
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym291514%_))))
                (declare (not safe))
                (##string->keyword __tmp297362))))))
    (define symbol->keyword
      (lambda (_%sym287999%_)
        (if (symbol? _%sym287999%_)
            (let ((_%sym288003%_ _%sym287999%_))
              (__symbol->keyword _%sym288003%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.24-683.27"
               'contract:
               'symbol?
               'value:
               _%sym287999%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym291499%_)
        (let ((_%sym291502%_ _%sym291499%_))
          (if (uninterned-keyword? _%sym291502%_)
              (let ((__tmp297363
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym291502%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp297363))
              (let ((__tmp297364
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym291502%_))))
                (declare (not safe))
                (##string->symbol __tmp297364))))))
    (define keyword->symbol
      (lambda (_%sym288133%_)
        (if (keyword? _%sym288133%_)
            (let ((_%sym288137%_ _%sym288133%_))
              (__keyword->symbol _%sym288137%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.24-689.27"
               'contract:
               'keyword?
               'value:
               _%sym288133%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr291459%_ _%enc291460%_)
        (let* ((_%bstr291463%_ _%bstr291459%_) (_%enc291471%_ _%enc291460%_))
          (if (eq? _%enc291471%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr291463%_))
              (let* ((_%in291480%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc291471%_
                                   (cons 'init: (cons _%bstr291463%_ '()))))))
                     (_%len291482%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr291463%_)))
                     (_%out291484%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len291482%_)))
                     (_%n291486%_
                      (read-substring
                       _%out291484%_
                       '0
                       _%len291482%_
                       _%in291480%_)))
                (string-shrink! _%out291484%_ _%n291486%_)
                _%out291484%_)))))
    (define __bytes->string__0
      (lambda (_%bstr291492%_)
        (let ((_%enc291494%_ 'UTF-8))
          (__bytes->string__% _%bstr291492%_ _%enc291494%_))))
    (define __bytes->string
      (lambda _g297365_
        (let ((_g297366_ (let () (declare (not safe)) (##length _g297365_))))
          (cond ((let () (declare (not safe)) (##fx= _g297366_ 1))
                 (apply __bytes->string__0 _g297365_))
                ((let () (declare (not safe)) (##fx= _g297366_ 2))
                 (apply __bytes->string__% _g297365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g297365_))))))
    (define bytes->string__%
      (lambda (_%bstr288268%_ _%enc288269%_)
        (if (u8vector? _%bstr288268%_)
            (let ((_%bstr288273%_ _%bstr288268%_))
              (if (symbol? _%enc288269%_)
                  (let ((_%enc288283%_ _%enc288269%_))
                    (__bytes->string__% _%bstr288273%_ _%enc288283%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@696.25-696.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc288269%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@695.22-695.26"
               'contract:
               'u8vector?
               'value:
               _%bstr288268%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr288296%_)
        (let ((_%enc288298%_ 'UTF-8))
          (bytes->string__% _%bstr288296%_ _%enc288298%_))))
    (define bytes->string
      (lambda _g297367_
        (let ((_g297368_ (let () (declare (not safe)) (##length _g297367_))))
          (cond ((let () (declare (not safe)) (##fx= _g297368_ 1))
                 (apply bytes->string__0 _g297367_))
                ((let () (declare (not safe)) (##fx= _g297368_ 2))
                 (apply bytes->string__% _g297367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g297367_))))))
    (define __string->bytes__%
      (lambda (_%str291377%_ _%enc291378%_)
        (let* ((_%str291381%_ _%str291377%_) (_%enc291389%_ _%enc291378%_))
          (if (eq? _%enc291389%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str291381%_))
              (let* ((_%str291398%_ _%str291381%_)
                     (_%start291401%_ '0)
                     (_%end291404%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str291381%_)))
                     (_%enc291407%_ _%enc291389%_)
                     (_%str291412%_ _%str291398%_))
                (if (nonnegative-fixnum? _%start291401%_)
                    (let ((_%start291428%_ _%start291401%_))
                      (if (nonnegative-fixnum? _%end291404%_)
                          (let ((_%end291438%_ _%end291404%_))
                            (__substring->bytes__%
                             _%str291412%_
                             _%start291428%_
                             _%end291438%_
                             _%enc291407%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end291404%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start291401%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str291451%_)
        (let ((_%enc291453%_ 'UTF-8))
          (__string->bytes__% _%str291451%_ _%enc291453%_))))
    (define __string->bytes
      (lambda _g297369_
        (let ((_g297370_ (let () (declare (not safe)) (##length _g297369_))))
          (cond ((let () (declare (not safe)) (##fx= _g297370_ 1))
                 (apply __string->bytes__0 _g297369_))
                ((let () (declare (not safe)) (##fx= _g297370_ 2))
                 (apply __string->bytes__% _g297369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g297369_))))))
    (define string->bytes__%
      (lambda (_%str288424%_ _%enc288425%_)
        (if (string? _%str288424%_)
            (let ((_%str288429%_ _%str288424%_))
              (if (symbol? _%enc288425%_)
                  (let ((_%enc288439%_ _%enc288425%_))
                    (__string->bytes__% _%str288429%_ _%enc288439%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@708.25-708.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc288425%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@707.22-707.25"
               'contract:
               'string?
               'value:
               _%str288424%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str288452%_)
        (let ((_%enc288454%_ 'UTF-8))
          (string->bytes__% _%str288452%_ _%enc288454%_))))
    (define string->bytes
      (lambda _g297371_
        (let ((_g297372_ (let () (declare (not safe)) (##length _g297371_))))
          (cond ((let () (declare (not safe)) (##fx= _g297372_ 1))
                 (apply string->bytes__0 _g297371_))
                ((let () (declare (not safe)) (##fx= _g297372_ 2))
                 (apply string->bytes__% _g297371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g297371_))))))
    (define __substring->bytes__%
      (lambda (_%str291329%_ _%start291330%_ _%end291331%_ _%enc291332%_)
        (let* ((_%str291335%_ _%str291329%_)
               (_%start291343%_ _%start291330%_)
               (_%end291351%_ _%end291331%_))
          (if (eq? _%enc291332%_ 'UTF-8)
              (string->utf8 _%str291335%_ _%start291343%_ _%end291351%_)
              (let ((_%out291360%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc291332%_ '())))))
                (write-substring
                 _%str291335%_
                 _%start291343%_
                 _%end291351%_
                 _%out291360%_)
                (get-output-u8vector _%out291360%_))))))
    (define __substring->bytes__0
      (lambda (_%str291365%_ _%start291366%_ _%end291367%_)
        (let ((_%enc291369%_ 'UTF-8))
          (__substring->bytes__%
           _%str291365%_
           _%start291366%_
           _%end291367%_
           _%enc291369%_))))
    (define __substring->bytes
      (lambda _g297373_
        (let ((_g297374_ (let () (declare (not safe)) (##length _g297373_))))
          (cond ((let () (declare (not safe)) (##fx= _g297374_ 3))
                 (apply __substring->bytes__0 _g297373_))
                ((let () (declare (not safe)) (##fx= _g297374_ 4))
                 (apply __substring->bytes__% _g297373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g297373_))))))
    (define substring->bytes__%
      (lambda (_%str288580%_ _%start288581%_ _%end288582%_ _%enc288583%_)
        (if (string? _%str288580%_)
            (let ((_%str288587%_ _%str288580%_))
              (if (nonnegative-fixnum? _%start288581%_)
                  (let ((_%start288597%_ _%start288581%_))
                    (if (nonnegative-fixnum? _%end288582%_)
                        (let ((_%end288607%_ _%end288582%_))
                          (__substring->bytes__%
                           _%str288587%_
                           _%start288597%_
                           _%end288607%_
                           _%enc288583%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@716.25-716.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end288582%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@715.25-715.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start288581%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@714.25-714.28"
               'contract:
               'string?
               'value:
               _%str288580%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str288620%_ _%start288621%_ _%end288622%_)
        (let ((_%enc288624%_ 'UTF-8))
          (substring->bytes__%
           _%str288620%_
           _%start288621%_
           _%end288622%_
           _%enc288624%_))))
    (define substring->bytes
      (lambda _g297375_
        (let ((_g297376_ (let () (declare (not safe)) (##length _g297375_))))
          (cond ((let () (declare (not safe)) (##fx= _g297376_ 3))
                 (apply substring->bytes__0 _g297375_))
                ((let () (declare (not safe)) (##fx= _g297376_ 4))
                 (apply substring->bytes__% _g297375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g297375_))))))
    (define __string-empty?
      (lambda (_%str291316%_)
        (let* ((_%str291319%_ _%str291316%_)
               (__tmp297377
                (let () (declare (not safe)) (##string-length _%str291319%_))))
          (declare (not safe))
          (##fxzero? __tmp297377))))
    (define string-empty?
      (lambda (_%str288751%_)
        (if (string? _%str288751%_)
            (let ((_%str288755%_ _%str288751%_))
              (__string-empty? _%str288755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@725.22-725.25"
               'contract:
               'string?
               'value:
               _%str288751%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str291256%_ _%char291257%_ _%start291258%_)
        (let* ((_%str291261%_ _%str291256%_)
               (_%char291269%_ _%char291257%_)
               (_%start291277%_ _%start291258%_)
               (_%len291286%_
                (let () (declare (not safe)) (##string-length _%str291261%_))))
          (let _%lp291288%_ ((_%k291290%_ _%start291277%_))
            (let ((_%k291292%_ _%k291290%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k291292%_ _%len291286%_))
                  (if (eq? _%char291269%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str291261%_ _%k291292%_)))
                      _%k291292%_
                      (_%lp291288%_
                       (let () (declare (not safe)) (##fx+ _%k291292%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str291307%_ _%char291308%_)
        (let ((_%start291310%_ '0))
          (__string-index__% _%str291307%_ _%char291308%_ _%start291310%_))))
    (define __string-index
      (lambda _g297378_
        (let ((_g297379_ (let () (declare (not safe)) (##length _g297378_))))
          (cond ((let () (declare (not safe)) (##fx= _g297379_ 2))
                 (apply __string-index__0 _g297378_))
                ((let () (declare (not safe)) (##fx= _g297379_ 3))
                 (apply __string-index__% _g297378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g297378_))))))
    (define string-index__%
      (lambda (_%str288886%_ _%char288887%_ _%start288888%_)
        (if (string? _%str288886%_)
            (let ((_%str288892%_ _%str288886%_))
              (if (char? _%char288887%_)
                  (let ((_%char288902%_ _%char288887%_))
                    (if (nonnegative-fixnum? _%start288888%_)
                        (let ((_%start288912%_ _%start288888%_))
                          (__string-index__%
                           _%str288892%_
                           _%char288902%_
                           _%start288912%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@731.21-731.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start288888%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@730.21-730.25"
                     'contract:
                     'char?
                     'value:
                     _%char288887%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str288886%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str288925%_ _%char288926%_)
        (let ((_%start288928%_ '0))
          (string-index__% _%str288925%_ _%char288926%_ _%start288928%_))))
    (define string-index
      (lambda _g297380_
        (let ((_g297381_ (let () (declare (not safe)) (##length _g297380_))))
          (cond ((let () (declare (not safe)) (##fx= _g297381_ 2))
                 (apply string-index__0 _g297380_))
                ((let () (declare (not safe)) (##fx= _g297381_ 3))
                 (apply string-index__% _g297380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g297380_))))))
    (define __string-rindex__%
      (lambda (_%str291198%_ _%char291199%_ _%start291200%_)
        (let* ((_%str291203%_ _%str291198%_)
               (_%char291211%_ _%char291199%_)
               (_%len291220%_
                (let () (declare (not safe)) (##string-length _%str291203%_)))
               (_%start291222%_
                (if (fixnum? _%start291200%_)
                    _%start291200%_
                    (let () (declare (not safe)) (##fx- _%len291220%_ '1)))))
          (let _%lp291225%_ ((_%k291227%_ _%start291222%_))
            (let ((_%k291229%_ _%k291227%_))
              (if (let () (declare (not safe)) (##fx>= _%k291229%_ '0))
                  (if (eq? _%char291211%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str291203%_ _%k291229%_)))
                      _%k291229%_
                      (_%lp291225%_
                       (let () (declare (not safe)) (##fx- _%k291229%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str291246%_ _%char291247%_)
        (let ((_%start291249%_ '#f))
          (__string-rindex__% _%str291246%_ _%char291247%_ _%start291249%_))))
    (define __string-rindex
      (lambda _g297382_
        (let ((_g297383_ (let () (declare (not safe)) (##length _g297382_))))
          (cond ((let () (declare (not safe)) (##fx= _g297383_ 2))
                 (apply __string-rindex__0 _g297382_))
                ((let () (declare (not safe)) (##fx= _g297383_ 3))
                 (apply __string-rindex__% _g297382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g297382_))))))
    (define string-rindex__%
      (lambda (_%str289055%_ _%char289056%_ _%start289057%_)
        (if (string? _%str289055%_)
            (let ((_%str289061%_ _%str289055%_))
              (if (char? _%char289056%_)
                  (let ((_%char289071%_ _%char289056%_))
                    (__string-rindex__%
                     _%str289061%_
                     _%char289071%_
                     _%start289057%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@741.25-741.29"
                     'contract:
                     'char?
                     'value:
                     _%char289056%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@740.22-740.25"
               'contract:
               'string?
               'value:
               _%str289055%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str289084%_ _%char289085%_)
        (let ((_%start289087%_ '#f))
          (string-rindex__% _%str289084%_ _%char289085%_ _%start289087%_))))
    (define string-rindex
      (lambda _g297384_
        (let ((_g297385_ (let () (declare (not safe)) (##length _g297384_))))
          (cond ((let () (declare (not safe)) (##fx= _g297385_ 2))
                 (apply string-rindex__0 _g297384_))
                ((let () (declare (not safe)) (##fx= _g297385_ 3))
                 (apply string-rindex__% _g297384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g297384_))))))
    (define __string-split
      (lambda (_%str291095%_ _%char291096%_)
        (let* ((_%str291099%_ _%str291095%_)
               (_%char291107%_ _%char291096%_)
               (_%len291116%_
                (let () (declare (not safe)) (##string-length _%str291099%_))))
          (let _%lp291118%_ ((_%start291120%_ '0) (_%r291121%_ '()))
            (let* ((_%start291124%_ _%start291120%_)
                   (_%$e291182%_
                    (let* ((_%str291137%_ _%str291099%_)
                           (_%char291140%_ _%char291107%_)
                           (_%start291143%_ _%start291124%_)
                           (_%str291148%_ _%str291137%_)
                           (_%char291162%_ _%char291140%_))
                      (if (nonnegative-fixnum? _%start291143%_)
                          (let ((_%start291172%_ _%start291143%_))
                            (__string-index__%
                             _%str291148%_
                             _%char291162%_
                             _%start291172%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start291143%_)
                            '#!void)))))
              (if _%$e291182%_
                  ((lambda (_%end291185%_)
                     (let ((_%end291187%_ _%end291185%_))
                       (_%lp291118%_
                        (let () (declare (not safe)) (##fx+ _%end291187%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str291099%_
                                 _%start291124%_
                                 _%end291187%_))
                              _%r291121%_))))
                   _%$e291182%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start291124%_ _%len291116%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str291099%_
                                _%start291124%_
                                _%len291116%_)))
                       _%r291121%_)
                      (reverse! _%r291121%_))))))))
    (define string-split
      (lambda (_%str289213%_ _%char289214%_)
        (if (string? _%str289213%_)
            (let ((_%str289218%_ _%str289213%_))
              (if (char? _%char289214%_)
                  (let ((_%char289228%_ _%char289214%_))
                    (__string-split _%str289218%_ _%char289228%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@752.37-752.41"
                     'contract:
                     'char?
                     'value:
                     _%char289214%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@752.21-752.24"
               'contract:
               'string?
               'value:
               _%str289213%_)
              '#!void))))
    (define string-join
      (lambda (_%strs290945%_ _%join290946%_)
        (letrec ((_%join-length290949%_
                  (lambda (_%strs291033%_ _%jlen291034%_)
                    (let _%lp291036%_ ((_%rest291038%_ _%strs291033%_)
                                       (_%len291039%_ '0))
                      (let* ((_%len291041%_ _%len291039%_)
                             (_%rest291049291057%_ _%rest291038%_)
                             (_%else291051291065%_ (lambda () '0))
                             (_%K291053291083%_
                              (lambda (_%rest291068%_ _%hd291069%_)
                                (if (string? _%hd291069%_)
                                    (let ((_%hd291071%_ _%hd291069%_))
                                      (if (pair? _%rest291068%_)
                                          (_%lp291036%_
                                           _%rest291068%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd291071%_))
                                                _%jlen291034%_
                                                _%len291041%_))
                                          (let ((__tmp297386
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd291071%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp297386
                                                   _%len291041%_))))
                                    (error '"expected string" _%hd291069%_)))))
                        (if (pair? _%rest291049291057%_)
                            (let ((_%hd291054291086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest291049291057%_)))
                                  (_%tl291055291088%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest291049291057%_))))
                              (let* ((_%hd291091%_ _%hd291054291086%_)
                                     (_%rest291093%_ _%tl291055291088%_))
                                (_%K291053291083%_
                                 _%rest291093%_
                                 _%hd291091%_)))
                            (_%else291051291065%_)))))))
          (let* ((_%join290954%_
                  (if (char? _%join290946%_)
                      (let () (declare (not safe)) (##string _%join290946%_))
                      (if (string? _%join290946%_)
                          _%join290946%_
                          (error '"expected string or char" _%join290946%_))))
                 (_%jlen290956%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join290954%_)))
                 (_%olen290958%_
                  (_%join-length290949%_ _%strs290945%_ _%jlen290956%_))
                 (_%ostr290960%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen290958%_))))
            (let _%lp290963%_ ((_%rest290965%_ _%strs290945%_)
                               (_%k290966%_ '0))
              (let* ((_%k290969%_ _%k290966%_)
                     (_%rest290985290993%_ _%rest290965%_)
                     (_%else290987291001%_ (lambda () '""))
                     (_%K290989291021%_
                      (lambda (_%rest291004%_ _%hd291005%_)
                        (let* ((_%hd291007%_ _%hd291005%_)
                               (_%hdlen291019%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd291007%_))))
                          (if (pair? _%rest291004%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd291007%_
                                   '0
                                   _%hdlen291019%_
                                   _%ostr290960%_
                                   _%k290969%_))
                                (let ((__tmp297387
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k290969%_ _%hdlen291019%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join290954%_
                                   '0
                                   _%jlen290956%_
                                   _%ostr290960%_
                                   __tmp297387))
                                (_%lp290963%_
                                 _%rest291004%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k290969%_
                                          _%hdlen291019%_
                                          _%jlen290956%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd291007%_
                                   '0
                                   _%hdlen291019%_
                                   _%ostr290960%_
                                   _%k290969%_))
                                _%ostr290960%_))))))
                (if (pair? _%rest290985290993%_)
                    (let ((_%hd290990291024%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest290985290993%_)))
                          (_%tl290991291026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest290985290993%_))))
                      (let* ((_%hd291029%_ _%hd290990291024%_)
                             (_%rest291031%_ _%tl290991291026%_))
                        (_%K290989291021%_ _%rest291031%_ _%hd291029%_)))
                    (_%else290987291001%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes290885%_ _%port290886%_ _%start290887%_ _%end290888%_)
        (let* ((_%bytes290891%_ _%bytes290885%_)
               (_%port290899%_ _%port290886%_)
               (_%start290907%_ _%start290887%_)
               (_%end290915%_ _%end290888%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes290891%_
           _%start290907%_
           _%end290915%_
           _%port290899%_))))
    (define __read-u8vector__0
      (lambda (_%bytes290927%_ _%port290928%_)
        (let* ((_%start290930%_ '0)
               (_%end290932%_ (u8vector-length _%bytes290927%_)))
          (__read-u8vector__%
           _%bytes290927%_
           _%port290928%_
           _%start290930%_
           _%end290932%_))))
    (define __read-u8vector__1
      (lambda (_%bytes290934%_ _%port290935%_ _%start290936%_)
        (let ((_%end290938%_ (u8vector-length _%bytes290934%_)))
          (__read-u8vector__%
           _%bytes290934%_
           _%port290935%_
           _%start290936%_
           _%end290938%_))))
    (define __read-u8vector
      (lambda _g297388_
        (let ((_g297389_ (let () (declare (not safe)) (##length _g297388_))))
          (cond ((let () (declare (not safe)) (##fx= _g297389_ 2))
                 (apply __read-u8vector__0 _g297388_))
                ((let () (declare (not safe)) (##fx= _g297389_ 3))
                 (apply __read-u8vector__1 _g297388_))
                ((let () (declare (not safe)) (##fx= _g297389_ 4))
                 (apply __read-u8vector__% _g297388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g297388_))))))
    (define read-u8vector__%
      (lambda (_%bytes289359%_ _%port289360%_ _%start289361%_ _%end289362%_)
        (if (u8vector? _%bytes289359%_)
            (let ((_%bytes289366%_ _%bytes289359%_))
              (if (input-port? _%port289360%_)
                  (let ((_%port289376%_ _%port289360%_))
                    (if ((lambda (_%o289385%_)
                           (and (fixnum? _%o289385%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o289385%_ '0))
                                (let ((__tmp297390
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes289366%_))))
                                  (declare (not safe))
                                  (##fx< _%o289385%_ __tmp297390))))
                         _%start289361%_)
                        (let ((_%start289389%_ _%start289361%_))
                          (if ((lambda (_%o289398%_)
                                 (and (fixnum? _%o289398%_)
                                      (let ((__tmp297391
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes289366%_))))
                                        (declare (not safe))
                                        (##fx<= _%start289389%_
                                                _%o289398%_
                                                __tmp297391))))
                               _%end289362%_)
                              (let ((_%end289402%_ _%end289362%_))
                                (__read-u8vector__%
                                 _%bytes289366%_
                                 _%port289376%_
                                 _%start289389%_
                                 _%end289402%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@819.22-819.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end289362%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@817.22-817.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start289361%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@816.22-816.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port289360%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@815.22-815.27"
               'contract:
               'u8vector?
               'value:
               _%bytes289359%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes289415%_ _%port289416%_)
        (let* ((_%start289418%_ '0)
               (_%end289420%_ (u8vector-length _%bytes289415%_)))
          (read-u8vector__%
           _%bytes289415%_
           _%port289416%_
           _%start289418%_
           _%end289420%_))))
    (define read-u8vector__1
      (lambda (_%bytes289422%_ _%port289423%_ _%start289424%_)
        (let ((_%end289426%_ (u8vector-length _%bytes289422%_)))
          (read-u8vector__%
           _%bytes289422%_
           _%port289423%_
           _%start289424%_
           _%end289426%_))))
    (define read-u8vector
      (lambda _g297392_
        (let ((_g297393_ (let () (declare (not safe)) (##length _g297392_))))
          (cond ((let () (declare (not safe)) (##fx= _g297393_ 2))
                 (apply read-u8vector__0 _g297392_))
                ((let () (declare (not safe)) (##fx= _g297393_ 3))
                 (apply read-u8vector__1 _g297392_))
                ((let () (declare (not safe)) (##fx= _g297393_ 4))
                 (apply read-u8vector__% _g297392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g297392_))))))
    (define __write-u8vector__%
      (lambda (_%bytes290824%_ _%port290825%_ _%start290826%_ _%end290827%_)
        (let* ((_%bytes290830%_ _%bytes290824%_)
               (_%port290838%_ _%port290825%_)
               (_%start290846%_ _%start290826%_)
               (_%end290854%_ _%end290827%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes290830%_
           _%start290846%_
           _%end290854%_
           _%port290838%_))))
    (define __write-u8vector__0
      (lambda (_%bytes290866%_ _%port290867%_)
        (let* ((_%start290869%_ '0)
               (_%end290871%_ (u8vector-length _%bytes290866%_)))
          (__write-u8vector__%
           _%bytes290866%_
           _%port290867%_
           _%start290869%_
           _%end290871%_))))
    (define __write-u8vector__1
      (lambda (_%bytes290873%_ _%port290874%_ _%start290875%_)
        (let ((_%end290877%_ (u8vector-length _%bytes290873%_)))
          (__write-u8vector__%
           _%bytes290873%_
           _%port290874%_
           _%start290875%_
           _%end290877%_))))
    (define __write-u8vector
      (lambda _g297394_
        (let ((_g297395_ (let () (declare (not safe)) (##length _g297394_))))
          (cond ((let () (declare (not safe)) (##fx= _g297395_ 2))
                 (apply __write-u8vector__0 _g297394_))
                ((let () (declare (not safe)) (##fx= _g297395_ 3))
                 (apply __write-u8vector__1 _g297394_))
                ((let () (declare (not safe)) (##fx= _g297395_ 4))
                 (apply __write-u8vector__% _g297394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g297394_))))))
    (define write-u8vector__%
      (lambda (_%bytes289554%_ _%port289555%_ _%start289556%_ _%end289557%_)
        (if (u8vector? _%bytes289554%_)
            (let ((_%bytes289561%_ _%bytes289554%_))
              (if (output-port? _%port289555%_)
                  (let* ((_%port289571%_ _%port289555%_)
                         (_%start289580%_ _%start289556%_))
                    (if ((lambda (_%o289588%_)
                           (and (fixnum? _%o289588%_)
                                (let ((__tmp297396
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes289561%_))))
                                  (declare (not safe))
                                  (##fx<= _%start289580%_
                                          _%o289588%_
                                          __tmp297396))))
                         _%end289557%_)
                        (let ((_%end289592%_ _%end289557%_))
                          (__write-u8vector__%
                           _%bytes289561%_
                           _%port289571%_
                           _%start289580%_
                           _%end289592%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@828.23-828.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end289557%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@826.23-826.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port289555%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@825.23-825.28"
               'contract:
               'u8vector?
               'value:
               _%bytes289554%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes289605%_ _%port289606%_)
        (let* ((_%start289608%_ '0)
               (_%end289610%_ (u8vector-length _%bytes289605%_)))
          (write-u8vector__%
           _%bytes289605%_
           _%port289606%_
           _%start289608%_
           _%end289610%_))))
    (define write-u8vector__1
      (lambda (_%bytes289612%_ _%port289613%_ _%start289614%_)
        (let ((_%end289616%_ (u8vector-length _%bytes289612%_)))
          (write-u8vector__%
           _%bytes289612%_
           _%port289613%_
           _%start289614%_
           _%end289616%_))))
    (define write-u8vector
      (lambda _g297397_
        (let ((_g297398_ (let () (declare (not safe)) (##length _g297397_))))
          (cond ((let () (declare (not safe)) (##fx= _g297398_ 2))
                 (apply write-u8vector__0 _g297397_))
                ((let () (declare (not safe)) (##fx= _g297398_ 3))
                 (apply write-u8vector__1 _g297397_))
                ((let () (declare (not safe)) (##fx= _g297398_ 4))
                 (apply write-u8vector__% _g297397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g297397_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag290792%_
               _%dbg-exprs290793%_
               _%dbg-thunks290794%_
               _%expr290795%_
               _%thunk290796%_)
        (letrec ((_%o290798%_ (current-output-port))
                 (_%e290799%_ (current-error-port))
                 (_%p290800%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f290801%_
                  (lambda ()
                    (force-output _%o290798%_)
                    (force-output _%e290799%_)))
                 (_%d290802%_
                  (lambda (_%x290809%_) (display _%x290809%_ _%e290799%_)))
                 (_%w290803%_
                  (lambda (_%x290811%_) (_%p290800%_ _%x290811%_ _%e290799%_)))
                 (_%n290804%_ (lambda () (newline _%e290799%_)))
                 (_%v290805%_
                  (lambda (_%l290814%_)
                    (for-each
                     (lambda (_%x290816%_)
                       (_%d290802%_ '" ")
                       (_%w290803%_ _%x290816%_))
                     _%l290814%_)
                    (_%n290804%_)))
                 (_%x290806%_
                  (lambda (_%expr290818%_ _%thunk290819%_)
                    (_%f290801%_)
                    (_%d290802%_ '"  ")
                    (_%w290803%_ _%expr290818%_)
                    (_%d290802%_ '" =>")
                    (call-with-values
                     _%thunk290819%_
                     (lambda _%x290821%_
                       (_%v290805%_ _%x290821%_)
                       (_%f290801%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x290821%_)))))))
          (if _%tag290792%_
              (begin
                (if (eq? _%tag290792%_ '#!void)
                    '#!void
                    (begin
                      (_%f290801%_)
                      (_%d290802%_ _%tag290792%_)
                      (_%n290804%_)))
                (for-each _%x290806%_ _%dbg-exprs290793%_ _%dbg-thunks290794%_)
                (if _%thunk290796%_
                    (_%x290806%_ _%expr290795%_ _%thunk290796%_)
                    '#!void))
              (if _%thunk290796%_ (_%thunk290796%_) '#!void)))))))
