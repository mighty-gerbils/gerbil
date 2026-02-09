(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770660762)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args110371%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args110371%_))
          (newline))))
    (define display*
      (lambda _%args110368%_
        (let () (declare (not safe)) (##for-each display _%args110368%_))))
    (define __file-newer?
      (lambda (_%file1110159%_ _%file2110160%_)
        (let* ((_%file1110163%_ _%file1110159%_)
               (_%file2110171%_ _%file2110160%_))
          (letrec ((_%__modification-time110315%_
                    (lambda (_%file110356%_)
                      (let* ((_%file110359%_ _%file110356%_)
                             (__tmp113147
                              (let ((__tmp113148
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file110359%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp113148))))
                        (declare (not safe))
                        (##time->seconds __tmp113147))))
                   (_%modification-time110316%_
                    (lambda (_%file110344%_)
                      (let ((_%file110347%_ _%file110344%_))
                        (_%__modification-time110315%_ _%file110347%_)))))
            (let ((__tmp113150
                   (let* ((_%file110318%_ _%file1110163%_)
                          (_%file110322%_ _%file110318%_))
                     (_%__modification-time110315%_ _%file110322%_)))
                  (__tmp113149
                   (let* ((_%file110331%_ _%file2110171%_)
                          (_%file110335%_ _%file110331%_))
                     (_%__modification-time110315%_ _%file110335%_))))
              (declare (not safe))
              (##fl> __tmp113150 __tmp113149))))))
    (define file-newer?
      (lambda (_%file199745%_ _%file299746%_)
        (if (string? _%file199745%_)
            (let ((_%file199750%_ _%file199745%_))
              (if (string? _%file299746%_)
                  (let ((_%file299760%_ _%file299746%_))
                    (__file-newer? _%file199750%_ _%file299760%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file299746%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file199745%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir109879%_ _%perms109880%_)
        (let* ((_%dir109883%_ _%dir109879%_) (_%perms109891%_ _%perms109880%_))
          (letrec ((_%__create1110035%_
                    (lambda (_%path110134%_)
                      (let ((_%path110137%_ _%path110134%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path110137%_))
                            (if (eq? (file-type _%path110137%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path110137%_))
                            (if _%perms109891%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path110137%_
                                             (cons 'permissions:
                                                   (cons _%perms109891%_
                                                         '())))))
                                (create-directory _%path110137%_))))))
                   (_%create1110036%_
                    (lambda (_%path110122%_)
                      (let ((_%path110125%_ _%path110122%_))
                        (_%__create1110035%_ _%path110125%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir109883%_))
                '#!void
                (let _%lp110038%_ ((_%start110040%_ '0))
                  (let ((_%$e110087%_
                         (let* ((_%str110042%_ _%dir109883%_)
                                (_%char110045%_ '#\/)
                                (_%start110048%_ _%start110040%_)
                                (_%str110053%_ _%str110042%_)
                                (_%char110067%_ _%char110045%_))
                           (if (nonnegative-fixnum? _%start110048%_)
                               (let ((_%start110077%_ _%start110048%_))
                                 (__string-index__%
                                  _%str110053%_
                                  _%char110067%_
                                  _%start110077%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start110048%_)
                                 '#!void)))))
                    (if _%$e110087%_
                        ((lambda (_%x110090%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x110090%_ '0))
                               (let* ((_%path110092%_
                                       (substring
                                        _%dir109883%_
                                        '0
                                        _%x110090%_))
                                      (_%path110096%_ _%path110092%_))
                                 (_%__create1110035%_ _%path110096%_))
                               '#!void)
                           (_%lp110038%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x110090%_ '1))))
                         _%$e110087%_)
                        (let* ((_%path110108%_ _%dir109883%_)
                               (_%path110112%_ _%path110108%_))
                          (_%__create1110035%_ _%path110112%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir110152%_)
        (let ((_%perms110154%_ '493))
          (__create-directory*__% _%dir110152%_ _%perms110154%_))))
    (define __create-directory*
      (lambda _g113151_
        (let ((_g113152_ (let () (declare (not safe)) (##length _g113151_))))
          (cond ((let () (declare (not safe)) (##fx= _g113152_ 1))
                 (apply __create-directory*__0 _g113151_))
                ((let () (declare (not safe)) (##fx= _g113152_ 2))
                 (apply __create-directory*__% _g113151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g113151_))))))
    (define create-directory*__%
      (lambda (_%dir99891%_ _%perms99892%_)
        (if (string? _%dir99891%_)
            (let ((_%dir99896%_ _%dir99891%_))
              (if (fixnum? _%perms99892%_)
                  (let ((_%perms99906%_ _%perms99892%_))
                    (__create-directory*__% _%dir99896%_ _%perms99906%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms99892%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir99891%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir99919%_)
        (let ((_%perms99921%_ '493))
          (create-directory*__% _%dir99919%_ _%perms99921%_))))
    (define create-directory*
      (lambda _g113153_
        (let ((_g113154_ (let () (declare (not safe)) (##length _g113153_))))
          (cond ((let () (declare (not safe)) (##fx= _g113154_ 1))
                 (apply create-directory*__0 _g113153_))
                ((let () (declare (not safe)) (##fx= _g113154_ 2))
                 (apply create-directory*__% _g113153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g113153_))))))
    (define __move-file__%
      (lambda (_%src109822%_ _%dest109823%_ _%replace?109824%_)
        (let* ((_%src109827%_ _%src109822%_)
               (_%dest109835%_ _%dest109823%_)
               (_%replace?109843%_ _%replace?109824%_))
          (letrec ((_%force-move-it109852%_
                    (lambda ()
                      (let ((_%tmp109858%_
                             (if _%replace?109843%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest109835%_))
                                     (let ((__tmp113155
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest109835%_
                                        '"."
                                        __tmp113155))
                                     '#f)
                                 '#f)))
                        (if _%tmp109858%_
                            (rename-file _%dest109835%_ _%tmp109858%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e109860%_)
                           (if _%tmp109858%_
                               (rename-file _%tmp109858%_ _%dest109835%_ '#t)
                               '#!void)
                           (raise _%e109860%_))
                         (lambda ()
                           (let ((_%fi109863%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src109827%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi109863%_))
                                      'symbolic-link)
                                 (let ((__tmp113156
                                        (path-normalize _%src109827%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp113156
                                    _%dest109835%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src109827%_
                                    _%dest109835%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src109827%_))
                           (if _%tmp109858%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp109858%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e109854%_)
               (if (let () (declare (not safe)) (##file-exists? _%src109827%_))
                   (_%force-move-it109852%_)
                   (raise _%e109854%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src109827%_
                  _%dest109835%_
                  _%replace?109843%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src109869%_ _%dest109870%_)
        (let ((_%replace?109872%_ '#t))
          (__move-file__% _%src109869%_ _%dest109870%_ _%replace?109872%_))))
    (define __move-file
      (lambda _g113157_
        (let ((_g113158_ (let () (declare (not safe)) (##length _g113157_))))
          (cond ((let () (declare (not safe)) (##fx= _g113158_ 2))
                 (apply __move-file__0 _g113157_))
                ((let () (declare (not safe)) (##fx= _g113158_ 3))
                 (apply __move-file__% _g113157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g113157_))))))
    (define move-file__%
      (lambda (_%src100047%_ _%dest100048%_ _%replace?100049%_)
        (if (string? _%src100047%_)
            (let ((_%src100053%_ _%src100047%_))
              (if (string? _%dest100048%_)
                  (let ((_%dest100063%_ _%dest100048%_))
                    (if (boolean? _%replace?100049%_)
                        (let ((_%replace?100073%_ _%replace?100049%_))
                          (__move-file__%
                           _%src100053%_
                           _%dest100063%_
                           _%replace?100073%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?100049%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest100048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src100047%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src100086%_ _%dest100087%_)
        (let ((_%replace?100089%_ '#t))
          (move-file__% _%src100086%_ _%dest100087%_ _%replace?100089%_))))
    (define move-file
      (lambda _g113159_
        (let ((_g113160_ (let () (declare (not safe)) (##length _g113159_))))
          (cond ((let () (declare (not safe)) (##fx= _g113160_ 2))
                 (apply move-file__0 _g113159_))
                ((let () (declare (not safe)) (##fx= _g113160_ 3))
                 (apply move-file__% _g113159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g113159_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore109818%_ '#t))
    (define true? (lambda (_%obj109815%_) (eq? _%obj109815%_ '#t)))
    (define false (lambda _%ignore109812%_ '#f))
    (define void (lambda _%ignore109809%_ '#!void))
    (define void? (lambda (_%obj109806%_) (eq? _%obj109806%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj109803%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj109803%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj109800%_) (eq? _%obj109800%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj109797%_) (eq? _%obj109797%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj109794%_) (eq? _%obj109794%_ '#!optional)))
    (define immediate?
      (lambda (_%obj109791%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj109791%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj109788%_)
        (if (fixnum? _%obj109788%_)
            (let () (declare (not safe)) (##fx>= _%obj109788%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj109782%_)
        (let ((_%$e109785%_ (pair? _%obj109782%_)))
          (if _%$e109785%_ _%$e109785%_ (null? _%obj109782%_)))))
    (define values-count
      (lambda (_%obj109779%_)
        (if (let () (declare (not safe)) (##values? _%obj109779%_))
            (let () (declare (not safe)) (##values-length _%obj109779%_))
            '1)))
    (define __values-ref
      (lambda (_%obj109766%_ _%k109767%_)
        (let ((_%k109770%_ _%k109767%_))
          (if (let () (declare (not safe)) (##values? _%obj109766%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj109766%_ _%k109770%_))
              _%obj109766%_))))
    (define values-ref
      (lambda (_%obj100215%_ _%k100216%_)
        (if (fixnum? _%k100216%_)
            (let ((_%k100220%_ _%k100216%_))
              (__values-ref _%obj100215%_ _%k100220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k100216%_)
              '#!void))))
    (define values->list
      (lambda (_%obj109763%_)
        (if (let () (declare (not safe)) (##values? _%obj109763%_))
            (let () (declare (not safe)) (##values->list _%obj109763%_))
            (list _%obj109763%_))))
    (define __foldl1
      (lambda (_%f109711%_ _%iv109712%_ _%lst109713%_)
        (let ((_%f109716%_ _%f109711%_))
          (let _%lp109725%_ ((_%rest109727%_ _%lst109713%_)
                             (_%r109728%_ _%iv109712%_))
            (let* ((_%rest109729109737%_ _%rest109727%_)
                   (_%else109731109745%_ (lambda () _%r109728%_))
                   (_%K109733109751%_
                    (lambda (_%rest109748%_ _%x109749%_)
                      (_%lp109725%_
                       _%rest109748%_
                       (let ()
                         (declare (not safe))
                         (_%f109716%_ _%x109749%_ _%r109728%_))))))
              (if (pair? _%rest109729109737%_)
                  (let ((_%hd109734109754%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109729109737%_)))
                        (_%tl109735109756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109729109737%_))))
                    (let* ((_%x109759%_ _%hd109734109754%_)
                           (_%rest109761%_ _%tl109735109756%_))
                      (_%K109733109751%_ _%rest109761%_ _%x109759%_)))
                  (_%else109731109745%_)))))))
    (define foldl1
      (lambda (_%f100350%_ _%iv100351%_ _%lst100352%_)
        (if (procedure? _%f100350%_)
            (let ((_%f100356%_ _%f100350%_))
              (__foldl1 _%f100356%_ _%iv100351%_ _%lst100352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f100350%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f109624%_ _%iv109625%_ _%lst1109626%_ _%lst2109627%_)
        (let ((_%f109630%_ _%f109624%_))
          (let _%lp109639%_ ((_%rest1109641%_ _%lst1109626%_)
                             (_%rest2109642%_ _%lst2109627%_)
                             (_%r109643%_ _%iv109625%_))
            (let* ((_%rest1109644109652%_ _%rest1109641%_)
                   (_%else109646109660%_ (lambda () _%r109643%_))
                   (_%K109648109699%_
                    (lambda (_%rest1109663%_ _%x1109664%_)
                      (let* ((_%rest2109665109673%_ _%rest2109642%_)
                             (_%else109667109681%_ (lambda () _%r109643%_))
                             (_%K109669109687%_
                              (lambda (_%rest2109684%_ _%x2109685%_)
                                (_%lp109639%_
                                 _%rest1109663%_
                                 _%rest2109684%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f109630%_
                                    _%x1109664%_
                                    _%x2109685%_
                                    _%r109643%_))))))
                        (if (pair? _%rest2109665109673%_)
                            (let ((_%hd109670109690%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109665109673%_)))
                                  (_%tl109671109692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109665109673%_))))
                              (let* ((_%x2109695%_ _%hd109670109690%_)
                                     (_%rest2109697%_ _%tl109671109692%_))
                                (_%K109669109687%_
                                 _%rest2109697%_
                                 _%x2109695%_)))
                            (_%else109667109681%_))))))
              (if (pair? _%rest1109644109652%_)
                  (let ((_%hd109649109702%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109644109652%_)))
                        (_%tl109650109704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109644109652%_))))
                    (let* ((_%x1109707%_ _%hd109649109702%_)
                           (_%rest1109709%_ _%tl109650109704%_))
                      (_%K109648109699%_ _%rest1109709%_ _%x1109707%_)))
                  (_%else109646109660%_)))))))
    (define foldl2
      (lambda (_%f100486%_ _%iv100487%_ _%lst1100488%_ _%lst2100489%_)
        (if (procedure? _%f100486%_)
            (let ((_%f100493%_ _%f100486%_))
              (__foldl2
               _%f100493%_
               _%iv100487%_
               _%lst1100488%_
               _%lst2100489%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f100486%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f109557%_ _%iv109558%_ _%lst109559%_)
        (let* ((_%f109561%_ _%f109557%_)
               (_%iv109564%_ _%iv109558%_)
               (_%lst109567%_ _%lst109559%_))
          (if (procedure? _%f109561%_)
              (let ((_%f109572%_ _%f109561%_))
                (__foldl1 _%f109572%_ _%iv109564%_ _%lst109567%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109561%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f109585%_ _%iv109586%_ _%lst1109587%_ _%lst2109588%_)
        (let* ((_%f109590%_ _%f109585%_)
               (_%iv109593%_ _%iv109586%_)
               (_%lst1109596%_ _%lst1109587%_)
               (_%lst2109599%_ _%lst2109588%_))
          (if (procedure? _%f109590%_)
              (let ((_%f109604%_ _%f109590%_))
                (__foldl2
                 _%f109604%_
                 _%iv109593%_
                 _%lst1109596%_
                 _%lst2109599%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109590%_)
                '#!void)))))
    (define foldl
      (lambda _g113161_
        (let ((_g113162_ (let () (declare (not safe)) (##length _g113161_))))
          (cond ((let () (declare (not safe)) (##fx= _g113162_ 3))
                 (apply foldl__0 _g113161_))
                ((let () (declare (not safe)) (##fx= _g113162_ 4))
                 (apply foldl__1 _g113161_))
                ((let () (declare (not safe)) (##fx>= _g113162_ 4))
                 (apply foldl* _g113161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g113161_))))))
    (define __foldl*
      (lambda (_%f109488%_ _%iv109489%_ . _%rest109490%_)
        (let ((_%f109493%_ _%f109488%_))
          (let _%recur109502%_ ((_%iv109504%_ _%iv109489%_)
                                (_%rest109505%_ _%rest109490%_))
            (if (let* ((_%f109507%_ pair?)
                       (_%lst109510%_ _%rest109505%_)
                       (_%f109515%_ _%f109507%_))
                  (__andmap1 _%f109515%_ _%lst109510%_))
                (_%recur109502%_
                 (let ((__tmp113163
                        (let* ((_%f109534%_
                                (lambda (_%xs109531%_ _%r109532%_)
                                  (cons (car _%xs109531%_) _%r109532%_)))
                               (_%iv109537%_ (list _%iv109504%_))
                               (_%lst109540%_ _%rest109505%_)
                               (_%f109545%_ _%f109534%_))
                          (__foldr1 _%f109545%_ _%iv109537%_ _%lst109540%_))))
                   (declare (not safe))
                   (##apply _%f109493%_ __tmp113163))
                 (map cdr _%rest109505%_))
                _%iv109504%_)))))
    (define foldl*
      (lambda (_%f100623%_ _%iv100624%_ . _%rest100625%_)
        (if (procedure? _%f100623%_)
            (let ((_%f100629%_ _%f100623%_))
              (declare (not safe))
              (##apply __foldl* _%f100629%_ _%iv100624%_ _%rest100625%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f100623%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f109437%_ _%iv109438%_ _%lst109439%_)
        (let ((_%f109442%_ _%f109437%_))
          (let _%recur109451%_ ((_%rest109453%_ _%lst109439%_))
            (let* ((_%rest109454109462%_ _%rest109453%_)
                   (_%else109456109470%_ (lambda () _%iv109438%_))
                   (_%K109458109476%_
                    (lambda (_%rest109473%_ _%x109474%_)
                      (let ((__tmp113164 (_%recur109451%_ _%rest109473%_)))
                        (declare (not safe))
                        (_%f109442%_ _%x109474%_ __tmp113164)))))
              (if (pair? _%rest109454109462%_)
                  (let ((_%hd109459109479%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109454109462%_)))
                        (_%tl109460109481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109454109462%_))))
                    (let* ((_%x109484%_ _%hd109459109479%_)
                           (_%rest109486%_ _%tl109460109481%_))
                      (_%K109458109476%_ _%rest109486%_ _%x109484%_)))
                  (_%else109456109470%_)))))))
    (define foldr1
      (lambda (_%f100759%_ _%iv100760%_ _%lst100761%_)
        (if (procedure? _%f100759%_)
            (let ((_%f100765%_ _%f100759%_))
              (__foldr1 _%f100765%_ _%iv100760%_ _%lst100761%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f100759%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f109351%_ _%iv109352%_ _%lst1109353%_ _%lst2109354%_)
        (let ((_%f109357%_ _%f109351%_))
          (let _%recur109366%_ ((_%rest1109368%_ _%lst1109353%_)
                                (_%rest2109369%_ _%lst2109354%_))
            (let* ((_%rest1109370109378%_ _%rest1109368%_)
                   (_%else109372109386%_ (lambda () _%iv109352%_))
                   (_%K109374109425%_
                    (lambda (_%rest1109389%_ _%x1109390%_)
                      (let* ((_%rest2109391109399%_ _%rest2109369%_)
                             (_%else109393109407%_ (lambda () _%iv109352%_))
                             (_%K109395109413%_
                              (lambda (_%rest2109410%_ _%x2109411%_)
                                (let ((__tmp113165
                                       (_%recur109366%_
                                        _%rest1109389%_
                                        _%rest2109410%_)))
                                  (declare (not safe))
                                  (_%f109357%_
                                   _%x1109390%_
                                   _%x2109411%_
                                   __tmp113165)))))
                        (if (pair? _%rest2109391109399%_)
                            (let ((_%hd109396109416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109391109399%_)))
                                  (_%tl109397109418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109391109399%_))))
                              (let* ((_%x2109421%_ _%hd109396109416%_)
                                     (_%rest2109423%_ _%tl109397109418%_))
                                (_%K109395109413%_
                                 _%rest2109423%_
                                 _%x2109421%_)))
                            (_%else109393109407%_))))))
              (if (pair? _%rest1109370109378%_)
                  (let ((_%hd109375109428%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109370109378%_)))
                        (_%tl109376109430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109370109378%_))))
                    (let* ((_%x1109433%_ _%hd109375109428%_)
                           (_%rest1109435%_ _%tl109376109430%_))
                      (_%K109374109425%_ _%rest1109435%_ _%x1109433%_)))
                  (_%else109372109386%_)))))))
    (define foldr2
      (lambda (_%f100895%_ _%iv100896%_ _%lst1100897%_ _%lst2100898%_)
        (if (procedure? _%f100895%_)
            (let ((_%f100902%_ _%f100895%_))
              (__foldr2
               _%f100902%_
               _%iv100896%_
               _%lst1100897%_
               _%lst2100898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f100895%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f109284%_ _%iv109285%_ _%lst109286%_)
        (let* ((_%f109288%_ _%f109284%_)
               (_%iv109291%_ _%iv109285%_)
               (_%lst109294%_ _%lst109286%_))
          (if (procedure? _%f109288%_)
              (let ((_%f109299%_ _%f109288%_))
                (__foldr1 _%f109299%_ _%iv109291%_ _%lst109294%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109288%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f109312%_ _%iv109313%_ _%lst1109314%_ _%lst2109315%_)
        (let* ((_%f109317%_ _%f109312%_)
               (_%iv109320%_ _%iv109313%_)
               (_%lst1109323%_ _%lst1109314%_)
               (_%lst2109326%_ _%lst2109315%_))
          (if (procedure? _%f109317%_)
              (let ((_%f109331%_ _%f109317%_))
                (__foldr2
                 _%f109331%_
                 _%iv109320%_
                 _%lst1109323%_
                 _%lst2109326%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109317%_)
                '#!void)))))
    (define foldr
      (lambda _g113166_
        (let ((_g113167_ (let () (declare (not safe)) (##length _g113166_))))
          (cond ((let () (declare (not safe)) (##fx= _g113167_ 3))
                 (apply foldr__0 _g113166_))
                ((let () (declare (not safe)) (##fx= _g113167_ 4))
                 (apply foldr__1 _g113166_))
                ((let () (declare (not safe)) (##fx>= _g113167_ 4))
                 (apply foldr* _g113166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g113166_))))))
    (define __foldr*
      (lambda (_%f109216%_ _%iv109217%_ . _%rest109218%_)
        (let ((_%f109221%_ _%f109216%_))
          (let _%recur109230%_ ((_%rest109232%_ _%rest109218%_))
            (if (let* ((_%f109234%_ pair?)
                       (_%lst109237%_ _%rest109232%_)
                       (_%f109242%_ _%f109234%_))
                  (__andmap1 _%f109242%_ _%lst109237%_))
                (let ((__tmp113168
                       (let* ((_%f109261%_
                               (lambda (_%xs109258%_ _%r109259%_)
                                 (cons (car _%xs109258%_) _%r109259%_)))
                              (_%iv109264%_
                               (list (_%recur109230%_
                                      (map cdr _%rest109232%_))))
                              (_%lst109267%_ _%rest109232%_)
                              (_%f109272%_ _%f109261%_))
                         (__foldr1 _%f109272%_ _%iv109264%_ _%lst109267%_))))
                  (declare (not safe))
                  (##apply _%f109221%_ __tmp113168))
                _%iv109217%_)))))
    (define foldr*
      (lambda (_%f101032%_ _%iv101033%_ . _%rest101034%_)
        (if (procedure? _%f101032%_)
            (let ((_%f101038%_ _%f101032%_))
              (declare (not safe))
              (##apply __foldr* _%f101038%_ _%iv101033%_ _%rest101034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f101032%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l109103%_)
        (let* ((_%l109104109117%_ _%l109103%_)
               (_%E109108109121%_
                (lambda ()
                  (error '"No clause matching"
                         _%l109104109117%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K109113109206%_
                 (lambda (_%r109204%_) (remove-nulls! _%r109204%_)))
                (_%K109110109193%_
                 (lambda (_%r109133%_)
                   (let _%loop109135%_ ((_%l109137%_ _%l109103%_)
                                        (_%r109138%_ _%r109133%_))
                     (let* ((_%r109139109152%_ _%r109138%_)
                            (_%E109143109156%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r109139109152%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K109148109183%_
                              (lambda (_%rr109181%_)
                                (let ((__tmp113170 _%l109137%_)
                                      (__tmp113169
                                       (remove-nulls! _%rr109181%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp113170 __tmp113169))))
                             (_%K109145109170%_
                              (lambda (_%rr109168%_)
                                (_%loop109135%_ _%r109138%_ _%rr109168%_)))
                             (_%K109144109161%_ (lambda () '#!void)))
                         (if (pair? _%r109139109152%_)
                             (let ((_%tl109150109188%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r109139109152%_)))
                                   (_%hd109149109186%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r109139109152%_))))
                               (if (null? _%hd109149109186%_)
                                   (let ((_%rr109191%_ _%tl109150109188%_))
                                     (_%K109148109183%_ _%rr109191%_))
                                   (let ((_%rr109176%_ _%tl109150109188%_))
                                     (_%K109145109170%_ _%rr109176%_))))
                             '#!void))))
                   _%l109103%_))
                (_%K109109109126%_ (lambda () _%l109103%_)))
            (if (pair? _%l109104109117%_)
                (let ((_%tl109115109211%_
                       (let () (declare (not safe)) (##cdr _%l109104109117%_)))
                      (_%hd109114109209%_
                       (let ()
                         (declare (not safe))
                         (##car _%l109104109117%_))))
                  (if (null? _%hd109114109209%_)
                      (let ((_%r109214%_ _%tl109115109211%_))
                        (remove-nulls! _%r109214%_))
                      (let ((_%r109199%_ _%tl109115109211%_))
                        (_%K109110109193%_ _%r109199%_))))
                (_%K109109109126%_))))))
    (define append1!
      (lambda (_%l109088%_ _%x109089%_)
        (let ((_%l2109092%_ (cons _%x109089%_ '())))
          (if (pair? _%l109088%_)
              (let ((_%l109094%_ _%l109088%_))
                (let ((__tmp113171
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l109094%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp113171 _%l2109092%_))
                _%l109094%_)
              _%l2109092%_))))
    (define __append-reverse-until
      (lambda (_%pred109030%_ _%rhead109031%_ _%tail109032%_)
        (let ((_%pred109035%_ _%pred109030%_))
          (let _%loop109044%_ ((_%rhead109046%_ _%rhead109031%_)
                               (_%tail109047%_ _%tail109032%_))
            (let* ((_%rhead109049109058%_ _%rhead109046%_)
                   (_%E109052109062%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead109049109058%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K109056109085%_ (lambda () (values '() _%tail109047%_)))
                    (_%K109053109069%_
                     (lambda (_%r109066%_ _%a109067%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred109035%_ _%a109067%_))
                           (values _%rhead109046%_ _%tail109047%_)
                           (_%loop109044%_
                            _%r109066%_
                            (cons _%a109067%_ _%tail109047%_))))))
                (let ((_%try-match109051109081%_
                       (lambda ()
                         (if (pair? _%rhead109049109058%_)
                             (let ((_%tl109055109074%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead109049109058%_)))
                                   (_%hd109054109072%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead109049109058%_))))
                               (let ((_%a109077%_ _%hd109054109072%_)
                                     (_%r109079%_ _%tl109055109074%_))
                                 (_%K109053109069%_ _%r109079%_ _%a109077%_)))
                             (_%E109052109062%_)))))
                  (if (null? _%rhead109049109058%_)
                      (_%K109056109085%_)
                      (_%try-match109051109081%_)))))))))
    (define append-reverse-until
      (lambda (_%pred101168%_ _%rhead101169%_ _%tail101170%_)
        (if (procedure? _%pred101168%_)
            (let ((_%pred101174%_ _%pred101168%_))
              (__append-reverse-until
               _%pred101174%_
               _%rhead101169%_
               _%tail101170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred101168%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f108979%_ _%lst108980%_)
        (let ((_%f108983%_ _%f108979%_))
          (let _%lp108992%_ ((_%rest108994%_ _%lst108980%_))
            (let* ((_%rest108996109004%_ _%rest108994%_)
                   (_%else108998109012%_ (lambda () '#t))
                   (_%K109000109018%_
                    (lambda (_%rest109015%_ _%x109016%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f108983%_ _%x109016%_))
                          (_%lp108992%_ _%rest109015%_)
                          '#f))))
              (if (pair? _%rest108996109004%_)
                  (let ((_%hd109001109021%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108996109004%_)))
                        (_%tl109002109023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108996109004%_))))
                    (let* ((_%x109026%_ _%hd109001109021%_)
                           (_%rest109028%_ _%tl109002109023%_))
                      (_%K109000109018%_ _%rest109028%_ _%x109026%_)))
                  (_%else108998109012%_)))))))
    (define andmap1
      (lambda (_%f101304%_ _%lst101305%_)
        (if (procedure? _%f101304%_)
            (let ((_%f101309%_ _%f101304%_))
              (__andmap1 _%f101309%_ _%lst101305%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f101304%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f108893%_ _%lst1108894%_ _%lst2108895%_)
        (let ((_%f108898%_ _%f108893%_))
          (let _%lp108907%_ ((_%rest1108909%_ _%lst1108894%_)
                             (_%rest2108910%_ _%lst2108895%_))
            (let* ((_%rest1108912108920%_ _%rest1108909%_)
                   (_%else108914108928%_ (lambda () '#t))
                   (_%K108916108967%_
                    (lambda (_%rest1108931%_ _%x1108932%_)
                      (let* ((_%rest2108933108941%_ _%rest2108910%_)
                             (_%else108935108949%_ (lambda () '#t))
                             (_%K108937108955%_
                              (lambda (_%rest2108952%_ _%x2108953%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f108898%_ _%x1108932%_ _%x2108953%_))
                                    (_%lp108907%_
                                     _%rest1108931%_
                                     _%rest2108952%_)
                                    '#f))))
                        (if (pair? _%rest2108933108941%_)
                            (let ((_%hd108938108958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108933108941%_)))
                                  (_%tl108939108960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108933108941%_))))
                              (let* ((_%x2108963%_ _%hd108938108958%_)
                                     (_%rest2108965%_ _%tl108939108960%_))
                                (_%K108937108955%_
                                 _%rest2108965%_
                                 _%x2108963%_)))
                            (_%else108935108949%_))))))
              (if (pair? _%rest1108912108920%_)
                  (let ((_%hd108917108970%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108912108920%_)))
                        (_%tl108918108972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108912108920%_))))
                    (let* ((_%x1108975%_ _%hd108917108970%_)
                           (_%rest1108977%_ _%tl108918108972%_))
                      (_%K108916108967%_ _%rest1108977%_ _%x1108975%_)))
                  (_%else108914108928%_)))))))
    (define andmap2
      (lambda (_%f101439%_ _%lst1101440%_ _%lst2101441%_)
        (if (procedure? _%f101439%_)
            (let ((_%f101445%_ _%f101439%_))
              (__andmap2 _%f101445%_ _%lst1101440%_ _%lst2101441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f101439%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f108837%_ _%lst108838%_)
        (let* ((_%f108840%_ _%f108837%_) (_%lst108843%_ _%lst108838%_))
          (if (procedure? _%f108840%_)
              (let ((_%f108848%_ _%f108840%_))
                (__andmap1 _%f108848%_ _%lst108843%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108840%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f108860%_ _%lst1108861%_ _%lst2108862%_)
        (let* ((_%f108864%_ _%f108860%_)
               (_%lst1108867%_ _%lst1108861%_)
               (_%lst2108870%_ _%lst2108862%_))
          (if (procedure? _%f108864%_)
              (let ((_%f108875%_ _%f108864%_))
                (__andmap2 _%f108875%_ _%lst1108867%_ _%lst2108870%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108864%_)
                '#!void)))))
    (define andmap
      (lambda _g113172_
        (let ((_g113173_ (let () (declare (not safe)) (##length _g113172_))))
          (cond ((let () (declare (not safe)) (##fx= _g113173_ 2))
                 (apply andmap__0 _g113172_))
                ((let () (declare (not safe)) (##fx= _g113173_ 3))
                 (apply andmap__1 _g113172_))
                ((let () (declare (not safe)) (##fx>= _g113173_ 3))
                 (apply andmap* _g113172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g113172_))))))
    (define __andmap*
      (lambda (_%f108794%_ . _%rest108795%_)
        (let ((_%f108798%_ _%f108794%_))
          (let _%recur108807%_ ((_%rest108809%_ _%rest108795%_))
            (if (let* ((_%f108812%_ pair?)
                       (_%lst108815%_ _%rest108809%_)
                       (_%f108820%_ _%f108812%_))
                  (__andmap1 _%f108820%_ _%lst108815%_))
                (if (let ((__tmp113174 (map car _%rest108809%_)))
                      (declare (not safe))
                      (##apply _%f108798%_ __tmp113174))
                    (_%recur108807%_ (map cdr _%rest108809%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f101575%_ . _%rest101576%_)
        (if (procedure? _%f101575%_)
            (let ((_%f101580%_ _%f101575%_))
              (declare (not safe))
              (##apply __andmap* _%f101580%_ _%rest101576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f101575%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f108741%_ _%lst108742%_)
        (let ((_%f108745%_ _%f108741%_))
          (let _%lp108754%_ ((_%rest108756%_ _%lst108742%_))
            (let* ((_%rest108757108765%_ _%rest108756%_)
                   (_%else108759108773%_ (lambda () '#f))
                   (_%K108761108782%_
                    (lambda (_%rest108776%_ _%x108777%_)
                      (let ((_%$e108779%_
                             (let ()
                               (declare (not safe))
                               (_%f108745%_ _%x108777%_))))
                        (if _%$e108779%_
                            _%$e108779%_
                            (_%lp108754%_ _%rest108776%_))))))
              (if (pair? _%rest108757108765%_)
                  (let ((_%hd108762108785%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108757108765%_)))
                        (_%tl108763108787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108757108765%_))))
                    (let* ((_%x108790%_ _%hd108762108785%_)
                           (_%rest108792%_ _%tl108763108787%_))
                      (_%K108761108782%_ _%rest108792%_ _%x108790%_)))
                  (_%else108759108773%_)))))))
    (define ormap1
      (lambda (_%f101710%_ _%lst101711%_)
        (if (procedure? _%f101710%_)
            (let ((_%f101715%_ _%f101710%_))
              (__ormap1 _%f101715%_ _%lst101711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f101710%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f108653%_ _%lst1108654%_ _%lst2108655%_)
        (let ((_%f108658%_ _%f108653%_))
          (let _%lp108667%_ ((_%rest1108669%_ _%lst1108654%_)
                             (_%rest2108670%_ _%lst2108655%_))
            (let* ((_%rest1108671108679%_ _%rest1108669%_)
                   (_%else108673108687%_ (lambda () '#f))
                   (_%K108675108729%_
                    (lambda (_%rest1108690%_ _%x1108691%_)
                      (let* ((_%rest2108692108700%_ _%rest2108670%_)
                             (_%else108694108708%_ (lambda () '#f))
                             (_%K108696108717%_
                              (lambda (_%rest2108711%_ _%x2108712%_)
                                (let ((_%$e108714%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f108658%_
                                          _%x1108691%_
                                          _%x2108712%_))))
                                  (if _%$e108714%_
                                      _%$e108714%_
                                      (_%lp108667%_
                                       _%rest1108690%_
                                       _%rest2108711%_))))))
                        (if (pair? _%rest2108692108700%_)
                            (let ((_%hd108697108720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108692108700%_)))
                                  (_%tl108698108722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108692108700%_))))
                              (let* ((_%x2108725%_ _%hd108697108720%_)
                                     (_%rest2108727%_ _%tl108698108722%_))
                                (_%K108696108717%_
                                 _%rest2108727%_
                                 _%x2108725%_)))
                            (_%else108694108708%_))))))
              (if (pair? _%rest1108671108679%_)
                  (let ((_%hd108676108732%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108671108679%_)))
                        (_%tl108677108734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108671108679%_))))
                    (let* ((_%x1108737%_ _%hd108676108732%_)
                           (_%rest1108739%_ _%tl108677108734%_))
                      (_%K108675108729%_ _%rest1108739%_ _%x1108737%_)))
                  (_%else108673108687%_)))))))
    (define ormap2
      (lambda (_%f101845%_ _%lst1101846%_ _%lst2101847%_)
        (if (procedure? _%f101845%_)
            (let ((_%f101851%_ _%f101845%_))
              (__ormap2 _%f101851%_ _%lst1101846%_ _%lst2101847%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f101845%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f108597%_ _%lst108598%_)
        (let* ((_%f108600%_ _%f108597%_) (_%lst108603%_ _%lst108598%_))
          (if (procedure? _%f108600%_)
              (let ((_%f108608%_ _%f108600%_))
                (__ormap1 _%f108608%_ _%lst108603%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108600%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f108620%_ _%lst1108621%_ _%lst2108622%_)
        (let* ((_%f108624%_ _%f108620%_)
               (_%lst1108627%_ _%lst1108621%_)
               (_%lst2108630%_ _%lst2108622%_))
          (if (procedure? _%f108624%_)
              (let ((_%f108635%_ _%f108624%_))
                (__ormap2 _%f108635%_ _%lst1108627%_ _%lst2108630%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108624%_)
                '#!void)))))
    (define ormap
      (lambda _g113175_
        (let ((_g113176_ (let () (declare (not safe)) (##length _g113175_))))
          (cond ((let () (declare (not safe)) (##fx= _g113176_ 2))
                 (apply ormap__0 _g113175_))
                ((let () (declare (not safe)) (##fx= _g113176_ 3))
                 (apply ormap__1 _g113175_))
                ((let () (declare (not safe)) (##fx>= _g113176_ 3))
                 (apply ormap* _g113175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g113175_))))))
    (define __ormap*
      (lambda (_%f108553%_ . _%rest108554%_)
        (let ((_%f108557%_ _%f108553%_))
          (let _%recur108566%_ ((_%rest108568%_ _%rest108554%_))
            (if (let* ((_%f108570%_ pair?)
                       (_%lst108573%_ _%rest108568%_)
                       (_%f108578%_ _%f108570%_))
                  (__andmap1 _%f108578%_ _%lst108573%_))
                (let ((_%$e108594%_
                       (let ((__tmp113177 (map car _%rest108568%_)))
                         (declare (not safe))
                         (##apply _%f108557%_ __tmp113177))))
                  (if _%$e108594%_
                      _%$e108594%_
                      (_%recur108566%_ (map cdr _%rest108568%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f101981%_ . _%rest101982%_)
        (if (procedure? _%f101981%_)
            (let ((_%f101986%_ _%f101981%_))
              (declare (not safe))
              (##apply __ormap* _%f101986%_ _%rest101982%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f101981%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f108496%_ _%lst108497%_)
        (let ((_%f108500%_ _%f108496%_))
          (let _%recur108509%_ ((_%rest108511%_ _%lst108497%_))
            (let* ((_%rest108513108521%_ _%rest108511%_)
                   (_%else108515108529%_ (lambda () '()))
                   (_%K108517108541%_
                    (lambda (_%rest108532%_ _%x108533%_)
                      (let ((_%$e108535%_
                             (let ()
                               (declare (not safe))
                               (_%f108500%_ _%x108533%_))))
                        (if _%$e108535%_
                            ((lambda (_%r108538%_)
                               (cons _%r108538%_
                                     (_%recur108509%_ _%rest108532%_)))
                             _%$e108535%_)
                            (_%recur108509%_ _%rest108532%_))))))
              (if (pair? _%rest108513108521%_)
                  (let ((_%hd108518108544%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108513108521%_)))
                        (_%tl108519108546%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108513108521%_))))
                    (let* ((_%x108549%_ _%hd108518108544%_)
                           (_%rest108551%_ _%tl108519108546%_))
                      (_%K108517108541%_ _%rest108551%_ _%x108549%_)))
                  (_%else108515108529%_)))))))
    (define filter-map1
      (lambda (_%f102116%_ _%lst102117%_)
        (if (procedure? _%f102116%_)
            (let ((_%f102121%_ _%f102116%_))
              (__filter-map1 _%f102121%_ _%lst102117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f102116%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f108404%_ _%lst1108405%_ _%lst2108406%_)
        (let ((_%f108409%_ _%f108404%_))
          (let _%recur108418%_ ((_%rest1108420%_ _%lst1108405%_)
                                (_%rest2108421%_ _%lst2108406%_))
            (let* ((_%rest1108423108431%_ _%rest1108420%_)
                   (_%else108425108439%_ (lambda () '()))
                   (_%K108427108484%_
                    (lambda (_%rest1108442%_ _%x1108443%_)
                      (let* ((_%rest2108444108452%_ _%rest2108421%_)
                             (_%else108446108460%_ (lambda () '()))
                             (_%K108448108472%_
                              (lambda (_%rest2108463%_ _%x2108464%_)
                                (let ((_%$e108466%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f108409%_
                                          _%x1108443%_
                                          _%x2108464%_))))
                                  (if _%$e108466%_
                                      ((lambda (_%r108469%_)
                                         (cons _%r108469%_
                                               (_%recur108418%_
                                                _%rest1108442%_
                                                _%rest2108463%_)))
                                       _%$e108466%_)
                                      (_%recur108418%_
                                       _%rest1108442%_
                                       _%rest2108463%_))))))
                        (if (pair? _%rest2108444108452%_)
                            (let ((_%hd108449108475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108444108452%_)))
                                  (_%tl108450108477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108444108452%_))))
                              (let* ((_%x2108480%_ _%hd108449108475%_)
                                     (_%rest2108482%_ _%tl108450108477%_))
                                (_%K108448108472%_
                                 _%rest2108482%_
                                 _%x2108480%_)))
                            (_%else108446108460%_))))))
              (if (pair? _%rest1108423108431%_)
                  (let ((_%hd108428108487%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108423108431%_)))
                        (_%tl108429108489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108423108431%_))))
                    (let* ((_%x1108492%_ _%hd108428108487%_)
                           (_%rest1108494%_ _%tl108429108489%_))
                      (_%K108427108484%_ _%rest1108494%_ _%x1108492%_)))
                  (_%else108425108439%_)))))))
    (define filter-map2
      (lambda (_%f102251%_ _%lst1102252%_ _%lst2102253%_)
        (if (procedure? _%f102251%_)
            (let ((_%f102257%_ _%f102251%_))
              (__filter-map2 _%f102257%_ _%lst1102252%_ _%lst2102253%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f102251%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f108348%_ _%lst108349%_)
        (let* ((_%f108351%_ _%f108348%_) (_%lst108354%_ _%lst108349%_))
          (if (procedure? _%f108351%_)
              (let ((_%f108359%_ _%f108351%_))
                (__filter-map1 _%f108359%_ _%lst108354%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108351%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f108371%_ _%lst1108372%_ _%lst2108373%_)
        (let* ((_%f108375%_ _%f108371%_)
               (_%lst1108378%_ _%lst1108372%_)
               (_%lst2108381%_ _%lst2108373%_))
          (if (procedure? _%f108375%_)
              (let ((_%f108386%_ _%f108375%_))
                (__filter-map2 _%f108386%_ _%lst1108378%_ _%lst2108381%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108375%_)
                '#!void)))))
    (define filter-map
      (lambda _g113178_
        (let ((_g113179_ (let () (declare (not safe)) (##length _g113178_))))
          (cond ((let () (declare (not safe)) (##fx= _g113179_ 2))
                 (apply filter-map__0 _g113178_))
                ((let () (declare (not safe)) (##fx= _g113179_ 3))
                 (apply filter-map__1 _g113178_))
                ((let () (declare (not safe)) (##fx>= _g113179_ 3))
                 (apply filter-map* _g113178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g113178_))))))
    (define __filter-map*
      (lambda (_%f108299%_ . _%rest108300%_)
        (let ((_%f108303%_ _%f108299%_))
          (let _%recur108312%_ ((_%rest108314%_ _%rest108300%_))
            (if (let* ((_%f108317%_ pair?)
                       (_%lst108320%_ _%rest108314%_)
                       (_%f108325%_ _%f108317%_))
                  (__andmap1 _%f108325%_ _%lst108320%_))
                (let ((_%$e108342%_
                       (let ((__tmp113180 (map car _%rest108314%_)))
                         (declare (not safe))
                         (##apply _%f108303%_ __tmp113180))))
                  (if _%$e108342%_
                      ((lambda (_%r108345%_)
                         (cons _%r108345%_
                               (_%recur108312%_ (map cdr _%rest108314%_))))
                       _%$e108342%_)
                      (_%recur108312%_ (map cdr _%rest108314%_))))
                '())))))
    (define filter-map*
      (lambda (_%f102387%_ . _%rest102388%_)
        (if (procedure? _%f102387%_)
            (let ((_%f102392%_ _%f102387%_))
              (declare (not safe))
              (##apply __filter-map* _%f102392%_ _%rest102388%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f102387%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key108275%_ _%lst108277%_ _%default108279%_)
        (let ((_%$e108282%_
               (if (pair? _%lst108277%_)
                   (assq _%key108275%_ _%lst108277%_)
                   '#f)))
          (if _%$e108282%_
              (cdr _%$e108282%_)
              (if (procedure? _%default108279%_)
                  (_%default108279%_ _%key108275%_)
                  _%default108279%_)))))
    (define agetq__0
      (lambda (_%key108290%_ _%lst108291%_)
        (let ((_%default108293%_ '#f))
          (agetq__% _%key108290%_ _%lst108291%_ _%default108293%_))))
    (define agetq
      (lambda _g113181_
        (let ((_g113182_ (let () (declare (not safe)) (##length _g113181_))))
          (cond ((let () (declare (not safe)) (##fx= _g113182_ 2))
                 (apply agetq__0 _g113181_))
                ((let () (declare (not safe)) (##fx= _g113182_ 3))
                 (apply agetq__% _g113181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g113181_))))))
    (define agetv__%
      (lambda (_%key108250%_ _%lst108252%_ _%default108254%_)
        (let ((_%$e108257%_
               (if (pair? _%lst108252%_)
                   (assv _%key108250%_ _%lst108252%_)
                   '#f)))
          (if _%$e108257%_
              (cdr _%$e108257%_)
              (if (procedure? _%default108254%_)
                  (_%default108254%_ _%key108250%_)
                  _%default108254%_)))))
    (define agetv__0
      (lambda (_%key108265%_ _%lst108266%_)
        (let ((_%default108268%_ '#f))
          (agetv__% _%key108265%_ _%lst108266%_ _%default108268%_))))
    (define agetv
      (lambda _g113183_
        (let ((_g113184_ (let () (declare (not safe)) (##length _g113183_))))
          (cond ((let () (declare (not safe)) (##fx= _g113184_ 2))
                 (apply agetv__0 _g113183_))
                ((let () (declare (not safe)) (##fx= _g113184_ 3))
                 (apply agetv__% _g113183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g113183_))))))
    (define aget__%
      (lambda (_%key108225%_ _%lst108227%_ _%default108229%_)
        (let ((_%$e108232%_
               (if (pair? _%lst108227%_)
                   (assoc _%key108225%_ _%lst108227%_)
                   '#f)))
          (if _%$e108232%_
              (cdr _%$e108232%_)
              (if (procedure? _%default108229%_)
                  (_%default108229%_ _%key108225%_)
                  _%default108229%_)))))
    (define aget__0
      (lambda (_%key108240%_ _%lst108241%_)
        (let ((_%default108243%_ '#f))
          (aget__% _%key108240%_ _%lst108241%_ _%default108243%_))))
    (define aget
      (lambda _g113185_
        (let ((_g113186_ (let () (declare (not safe)) (##length _g113185_))))
          (cond ((let () (declare (not safe)) (##fx= _g113186_ 2))
                 (apply aget__0 _g113185_))
                ((let () (declare (not safe)) (##fx= _g113186_ 3))
                 (apply aget__% _g113185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g113185_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key108154%_ _%lst108156%_ _%default108158%_)
        (let _%lp108161%_ ((_%rest108164%_ _%lst108156%_))
          (let* ((_%rest108166108176%_ _%rest108164%_)
                 (_%else108168108184%_
                  (lambda ()
                    (if (procedure? _%default108158%_)
                        (_%default108158%_ _%key108154%_)
                        _%default108158%_)))
                 (_%K108170108193%_
                  (lambda (_%rest108187%_ _%v108188%_ _%k108190%_)
                    (if (eq? _%k108190%_ _%key108154%_)
                        _%v108188%_
                        (_%lp108161%_ _%rest108187%_)))))
            (if (pair? _%rest108166108176%_)
                (let ((_%hd108171108196%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108166108176%_)))
                      (_%tl108172108198%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108166108176%_))))
                  (let ((_%k108201%_ _%hd108171108196%_))
                    (if (pair? _%tl108172108198%_)
                        (let ((_%hd108173108203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108172108198%_)))
                              (_%tl108174108205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108172108198%_))))
                          (let* ((_%v108208%_ _%hd108173108203%_)
                                 (_%rest108210%_ _%tl108174108205%_))
                            (_%K108170108193%_
                             _%rest108210%_
                             _%v108208%_
                             _%k108201%_)))
                        (_%else108168108184%_))))
                (_%else108168108184%_))))))
    (define pgetq__0
      (lambda (_%key108215%_ _%lst108216%_)
        (let ((_%default108218%_ '#f))
          (pgetq__% _%key108215%_ _%lst108216%_ _%default108218%_))))
    (define pgetq
      (lambda _g113187_
        (let ((_g113188_ (let () (declare (not safe)) (##length _g113187_))))
          (cond ((let () (declare (not safe)) (##fx= _g113188_ 2))
                 (apply pgetq__0 _g113187_))
                ((let () (declare (not safe)) (##fx= _g113188_ 3))
                 (apply pgetq__% _g113187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g113187_))))))
    (define pgetv__%
      (lambda (_%key108083%_ _%lst108085%_ _%default108087%_)
        (let _%lp108090%_ ((_%rest108093%_ _%lst108085%_))
          (let* ((_%rest108095108105%_ _%rest108093%_)
                 (_%else108097108113%_
                  (lambda ()
                    (if (procedure? _%default108087%_)
                        (_%default108087%_ _%key108083%_)
                        _%default108087%_)))
                 (_%K108099108122%_
                  (lambda (_%rest108116%_ _%v108117%_ _%k108119%_)
                    (if (eqv? _%k108119%_ _%key108083%_)
                        _%v108117%_
                        (_%lp108090%_ _%rest108116%_)))))
            (if (pair? _%rest108095108105%_)
                (let ((_%hd108100108125%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108095108105%_)))
                      (_%tl108101108127%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108095108105%_))))
                  (let ((_%k108130%_ _%hd108100108125%_))
                    (if (pair? _%tl108101108127%_)
                        (let ((_%hd108102108132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108101108127%_)))
                              (_%tl108103108134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108101108127%_))))
                          (let* ((_%v108137%_ _%hd108102108132%_)
                                 (_%rest108139%_ _%tl108103108134%_))
                            (_%K108099108122%_
                             _%rest108139%_
                             _%v108137%_
                             _%k108130%_)))
                        (_%else108097108113%_))))
                (_%else108097108113%_))))))
    (define pgetv__0
      (lambda (_%key108144%_ _%lst108145%_)
        (let ((_%default108147%_ '#f))
          (pgetv__% _%key108144%_ _%lst108145%_ _%default108147%_))))
    (define pgetv
      (lambda _g113189_
        (let ((_g113190_ (let () (declare (not safe)) (##length _g113189_))))
          (cond ((let () (declare (not safe)) (##fx= _g113190_ 2))
                 (apply pgetv__0 _g113189_))
                ((let () (declare (not safe)) (##fx= _g113190_ 3))
                 (apply pgetv__% _g113189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g113189_))))))
    (define pget__%
      (lambda (_%key108012%_ _%lst108014%_ _%default108016%_)
        (let _%lp108019%_ ((_%rest108022%_ _%lst108014%_))
          (let* ((_%rest108024108034%_ _%rest108022%_)
                 (_%else108026108042%_
                  (lambda ()
                    (if (procedure? _%default108016%_)
                        (_%default108016%_ _%key108012%_)
                        _%default108016%_)))
                 (_%K108028108051%_
                  (lambda (_%rest108045%_ _%v108046%_ _%k108048%_)
                    (if (equal? _%k108048%_ _%key108012%_)
                        _%v108046%_
                        (_%lp108019%_ _%rest108045%_)))))
            (if (pair? _%rest108024108034%_)
                (let ((_%hd108029108054%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108024108034%_)))
                      (_%tl108030108056%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108024108034%_))))
                  (let ((_%k108059%_ _%hd108029108054%_))
                    (if (pair? _%tl108030108056%_)
                        (let ((_%hd108031108061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108030108056%_)))
                              (_%tl108032108063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108030108056%_))))
                          (let* ((_%v108066%_ _%hd108031108061%_)
                                 (_%rest108068%_ _%tl108032108063%_))
                            (_%K108028108051%_
                             _%rest108068%_
                             _%v108066%_
                             _%k108059%_)))
                        (_%else108026108042%_))))
                (_%else108026108042%_))))))
    (define pget__0
      (lambda (_%key108073%_ _%lst108074%_)
        (let ((_%default108076%_ '#f))
          (pget__% _%key108073%_ _%lst108074%_ _%default108076%_))))
    (define pget
      (lambda _g113191_
        (let ((_g113192_ (let () (declare (not safe)) (##length _g113191_))))
          (cond ((let () (declare (not safe)) (##fx= _g113192_ 2))
                 (apply pget__0 _g113191_))
                ((let () (declare (not safe)) (##fx= _g113192_ 3))
                 (apply pget__% _g113191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g113191_))))))
    (define __find
      (lambda (_%pred107972%_ _%lst107973%_)
        (let* ((_%pred107976%_ _%pred107972%_)
               (_%$e108007%_
                (let* ((_%proc107985%_ _%pred107976%_)
                       (_%lst107988%_ _%lst107973%_)
                       (_%proc107993%_ _%proc107985%_))
                  (__memf _%proc107993%_ _%lst107988%_))))
          (if _%$e108007%_
              (let () (declare (not safe)) (##car _%$e108007%_))
              '#f))))
    (define find
      (lambda (_%pred102684%_ _%lst102685%_)
        (if (procedure? _%pred102684%_)
            (let ((_%pred102689%_ _%pred102684%_))
              (__find _%pred102689%_ _%lst102685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred102684%_)
              '#!void))))
    (define __memf
      (lambda (_%proc107922%_ _%lst107923%_)
        (let ((_%proc107926%_ _%proc107922%_))
          (let _%lp107935%_ ((_%rest107937%_ _%lst107923%_))
            (let* ((_%rest107938107946%_ _%rest107937%_)
                   (_%else107940107954%_ (lambda () '#f))
                   (_%K107942107960%_
                    (lambda (_%tl107957%_ _%hd107958%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc107926%_ _%hd107958%_))
                          _%rest107937%_
                          (_%lp107935%_ _%tl107957%_)))))
              (if (pair? _%rest107938107946%_)
                  (let ((_%hd107943107963%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107938107946%_)))
                        (_%tl107944107965%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107938107946%_))))
                    (let* ((_%hd107968%_ _%hd107943107963%_)
                           (_%tl107970%_ _%tl107944107965%_))
                      (_%K107942107960%_ _%tl107970%_ _%hd107968%_)))
                  (_%else107940107954%_)))))))
    (define memf
      (lambda (_%proc102819%_ _%lst102820%_)
        (if (procedure? _%proc102819%_)
            (let ((_%proc102824%_ _%proc102819%_))
              (__memf _%proc102824%_ _%lst102820%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc102819%_)
              '#!void))))
    (define remove1
      (lambda (_%el107845%_ _%lst107847%_)
        (let _%lp107850%_ ((_%rest107853%_ _%lst107847%_) (_%r107855%_ '()))
          (let* ((_%rest107857107865%_ _%rest107853%_)
                 (_%else107859107873%_ (lambda () _%lst107847%_))
                 (_%K107861107910%_
                  (lambda (_%rest107876%_ _%hd107877%_)
                    (if (equal? _%el107845%_ _%hd107877%_)
                        (let* ((_%f107880%_ cons)
                               (_%iv107883%_ _%rest107876%_)
                               (_%lst107886%_ _%r107855%_)
                               (_%f107891%_ _%f107880%_))
                          (__foldl1 _%f107891%_ _%iv107883%_ _%lst107886%_))
                        (_%lp107850%_
                         _%rest107876%_
                         (cons _%hd107877%_ _%r107855%_))))))
            (if (pair? _%rest107857107865%_)
                (let ((_%hd107862107913%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107857107865%_)))
                      (_%tl107863107915%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107857107865%_))))
                  (let* ((_%hd107918%_ _%hd107862107913%_)
                         (_%rest107920%_ _%tl107863107915%_))
                    (_%K107861107910%_ _%rest107920%_ _%hd107918%_)))
                (_%else107859107873%_))))))
    (define remv1
      (lambda (_%el107768%_ _%lst107770%_)
        (let _%lp107773%_ ((_%rest107776%_ _%lst107770%_) (_%r107778%_ '()))
          (let* ((_%rest107780107788%_ _%rest107776%_)
                 (_%else107782107796%_ (lambda () _%lst107770%_))
                 (_%K107784107833%_
                  (lambda (_%rest107799%_ _%hd107800%_)
                    (if (eqv? _%el107768%_ _%hd107800%_)
                        (let* ((_%f107803%_ cons)
                               (_%iv107806%_ _%rest107799%_)
                               (_%lst107809%_ _%r107778%_)
                               (_%f107814%_ _%f107803%_))
                          (__foldl1 _%f107814%_ _%iv107806%_ _%lst107809%_))
                        (_%lp107773%_
                         _%rest107799%_
                         (cons _%hd107800%_ _%r107778%_))))))
            (if (pair? _%rest107780107788%_)
                (let ((_%hd107785107836%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107780107788%_)))
                      (_%tl107786107838%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107780107788%_))))
                  (let* ((_%hd107841%_ _%hd107785107836%_)
                         (_%rest107843%_ _%tl107786107838%_))
                    (_%K107784107833%_ _%rest107843%_ _%hd107841%_)))
                (_%else107782107796%_))))))
    (define remq1
      (lambda (_%el107691%_ _%lst107693%_)
        (let _%lp107696%_ ((_%rest107699%_ _%lst107693%_) (_%r107701%_ '()))
          (let* ((_%rest107703107711%_ _%rest107699%_)
                 (_%else107705107719%_ (lambda () _%lst107693%_))
                 (_%K107707107756%_
                  (lambda (_%rest107722%_ _%hd107723%_)
                    (if (eq? _%el107691%_ _%hd107723%_)
                        (let* ((_%f107726%_ cons)
                               (_%iv107729%_ _%rest107722%_)
                               (_%lst107732%_ _%r107701%_)
                               (_%f107737%_ _%f107726%_))
                          (__foldl1 _%f107737%_ _%iv107729%_ _%lst107732%_))
                        (_%lp107696%_
                         _%rest107722%_
                         (cons _%hd107723%_ _%r107701%_))))))
            (if (pair? _%rest107703107711%_)
                (let ((_%hd107708107759%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107703107711%_)))
                      (_%tl107709107761%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107703107711%_))))
                  (let* ((_%hd107764%_ _%hd107708107759%_)
                         (_%rest107766%_ _%tl107709107761%_))
                    (_%K107707107756%_ _%rest107766%_ _%hd107764%_)))
                (_%else107705107719%_))))))
    (define __remf
      (lambda (_%proc107608%_ _%lst107609%_)
        (let ((_%proc107612%_ _%proc107608%_))
          (let _%lp107621%_ ((_%rest107623%_ _%lst107609%_) (_%r107624%_ '()))
            (let* ((_%rest107625107633%_ _%rest107623%_)
                   (_%else107627107641%_ (lambda () _%lst107609%_))
                   (_%K107629107679%_
                    (lambda (_%rest107644%_ _%hd107645%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc107612%_ _%hd107645%_))
                          (let* ((_%f107647%_ cons)
                                 (_%iv107650%_ _%rest107644%_)
                                 (_%lst107653%_ _%r107624%_)
                                 (_%f107658%_ _%f107647%_))
                            (__foldl1 _%f107658%_ _%iv107650%_ _%lst107653%_))
                          (_%lp107621%_
                           _%rest107644%_
                           (cons _%hd107645%_ _%r107624%_))))))
              (if (pair? _%rest107625107633%_)
                  (let ((_%hd107630107682%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107625107633%_)))
                        (_%tl107631107684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107625107633%_))))
                    (let* ((_%hd107687%_ _%hd107630107682%_)
                           (_%rest107689%_ _%tl107631107684%_))
                      (_%K107629107679%_ _%rest107689%_ _%hd107687%_)))
                  (_%else107627107641%_)))))))
    (define remf
      (lambda (_%proc103035%_ _%lst103036%_)
        (if (procedure? _%proc103035%_)
            (let ((_%proc103040%_ _%proc103035%_))
              (__remf _%proc103040%_ _%lst103036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc103035%_)
              '#!void))))
    (define __1+
      (lambda (_%x107596%_)
        (let ((_%x107599%_ _%x107596%_)) (+ _%x107599%_ '1))))
    (define 1+
      (lambda (_%x103170%_)
        (if (number? _%x103170%_)
            (let ((_%x103174%_ _%x103170%_)) (__1+ _%x103174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x103170%_)
              '#!void))))
    (define __1-
      (lambda (_%x107584%_)
        (let ((_%x107587%_ _%x107584%_)) (- _%x107587%_ '1))))
    (define 1-
      (lambda (_%x103304%_)
        (if (number? _%x103304%_)
            (let ((_%x103308%_ _%x103304%_)) (__1- _%x103308%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x103304%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x107572%_)
        (let ((_%x107575%_ _%x107572%_))
          (declare (not safe))
          (##fx+ _%x107575%_ '1))))
    (define fx1+
      (lambda (_%x103438%_)
        (if (fixnum? _%x103438%_)
            (let ((_%x103442%_ _%x103438%_)) (__fx1+ _%x103442%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x103438%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x107560%_)
        (let ((_%x107563%_ _%x107560%_))
          (declare (not safe))
          (##fx- _%x107563%_ '1))))
    (define fx1-
      (lambda (_%x103572%_)
        (if (fixnum? _%x103572%_)
            (let ((_%x103576%_ _%x103572%_)) (__fx1- _%x103576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x103572%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x107557%_)
        (if (fixnum? _%x107557%_)
            (let () (declare (not safe)) (##fx>= _%x107557%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x107554%_)
        (if (fixnum? _%x107554%_)
            (let () (declare (not safe)) (##fx> _%x107554%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x107551%_)
        (let () (declare (not safe)) (##fx= _%x107551%_ '0))))
    (define fx<0?
      (lambda (_%x107548%_)
        (if (fixnum? _%x107548%_)
            (let () (declare (not safe)) (##fx< _%x107548%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x107545%_)
        (if (fixnum? _%x107545%_)
            (let () (declare (not safe)) (##fx<= _%x107545%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x107542%_)
        (if (symbol? _%x107542%_) (not (uninterned-symbol? _%x107542%_)) '#f)))
    (define __display-as-string
      (lambda (_%x107436%_ _%port107437%_)
        (let ((_%port107440%_ _%port107437%_))
          (if (or (string? _%x107436%_)
                  (symbol? _%x107436%_)
                  (keyword? _%x107436%_)
                  (number? _%x107436%_)
                  (char? _%x107436%_))
              (display _%x107436%_ _%port107440%_)
              (if (pair? _%x107436%_)
                  (let ()
                    (let* ((_%x107463%_
                            (let () (declare (not safe)) (##car _%x107436%_)))
                           (_%port107466%_ _%port107440%_))
                      (if (output-port? _%port107466%_)
                          (let ((_%port107471%_ _%port107466%_))
                            (__display-as-string _%x107463%_ _%port107471%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port107466%_)
                            '#!void)))
                    (let* ((_%x107486%_
                            (let () (declare (not safe)) (##cdr _%x107436%_)))
                           (_%port107489%_ _%port107440%_))
                      (if (output-port? _%port107489%_)
                          (let ((_%port107494%_ _%port107489%_))
                            (__display-as-string _%x107486%_ _%port107494%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port107489%_)
                            '#!void))))
                  (if (vector? _%x107436%_)
                      (vector-for-each
                       (lambda (_%g107505107507%_)
                         (let* ((_%x107510%_ _%g107505107507%_)
                                (_%port107513%_ _%port107440%_))
                           (if (output-port? _%port107513%_)
                               (let ((_%port107518%_ _%port107513%_))
                                 (__display-as-string
                                  _%x107510%_
                                  _%port107518%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port107513%_)
                                 '#!void))))
                       _%x107436%_)
                      (if (or (null? _%x107436%_)
                              (eq? _%x107436%_ '#!void)
                              (eof-object? _%x107436%_)
                              (boolean? _%x107436%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x107436%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x103706%_ _%port103707%_)
        (if (output-port? _%port103707%_)
            (let ((_%port103711%_ _%port103707%_))
              (__display-as-string _%x103706%_ _%port103711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port103707%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x107376%_)
        (if (string? _%x107376%_)
            _%x107376%_
            (if (symbol? _%x107376%_)
                (let () (declare (not safe)) (##symbol->string _%x107376%_))
                (if (keyword? _%x107376%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x107376%_))
                    (if (number? _%x107376%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x107376%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g107382107384%_)
                           (let* ((_%x107387%_ _%x107376%_)
                                  (_%port107390%_ _%g107382107384%_))
                             (if (output-port? _%port107390%_)
                                 (let ((_%port107395%_ _%port107390%_))
                                   (__display-as-string
                                    _%x107387%_
                                    _%port107395%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port107390%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args107409%_
        (call-with-output-string
         '()
         (lambda (_%g107410107412%_)
           (let* ((_%x107415%_ _%args107409%_)
                  (_%port107418%_ _%g107410107412%_))
             (if (output-port? _%port107418%_)
                 (let ((_%port107423%_ _%port107418%_))
                   (__display-as-string _%x107415%_ _%port107423%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port107418%_)
                   '#!void)))))))
    (define as-string
      (lambda _g113193_
        (let ((_g113194_ (let () (declare (not safe)) (##length _g113193_))))
          (cond ((let () (declare (not safe)) (##fx= _g113194_ 1))
                 (apply as-string__0 _g113193_))
                (#t
                 (apply (lambda _%args107409%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args107409%_)))
                        _g113193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g113193_))))))
    (define make-symbol__0
      (lambda (_%x107372%_)
        (if (interned-symbol? _%x107372%_)
            _%x107372%_
            (let ((__tmp113195 (as-string__0 _%x107372%_)))
              (declare (not safe))
              (##string->symbol __tmp113195)))))
    (define make-symbol__1
      (lambda _%args107374%_
        (let ((__tmp113196
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args107374%_))))
          (declare (not safe))
          (##string->symbol __tmp113196))))
    (define make-symbol
      (lambda _g113197_
        (let ((_g113198_ (let () (declare (not safe)) (##length _g113197_))))
          (cond ((let () (declare (not safe)) (##fx= _g113198_ 1))
                 (apply make-symbol__0 _g113197_))
                (#t
                 (apply (lambda _%args107374%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args107374%_)))
                        _g113197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g113197_))))))
    (define make-keyword__0
      (lambda (_%x107368%_)
        (if (interned-keyword? _%x107368%_)
            _%x107368%_
            (let ((__tmp113199 (as-string__0 _%x107368%_)))
              (declare (not safe))
              (##string->keyword __tmp113199)))))
    (define make-keyword__1
      (lambda _%args107370%_
        (let ((__tmp113200
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args107370%_))))
          (declare (not safe))
          (##string->keyword __tmp113200))))
    (define make-keyword
      (lambda _g113201_
        (let ((_g113202_ (let () (declare (not safe)) (##length _g113201_))))
          (cond ((let () (declare (not safe)) (##fx= _g113202_ 1))
                 (apply make-keyword__0 _g113201_))
                (#t
                 (apply (lambda _%args107370%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args107370%_)))
                        _g113201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g113201_))))))
    (define interned-keyword?
      (lambda (_%x107365%_)
        (if (keyword? _%x107365%_)
            (not (uninterned-keyword? _%x107365%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym107353%_)
        (let ((_%sym107356%_ _%sym107353%_))
          (if (uninterned-symbol? _%sym107356%_)
              (let ((__tmp113203
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym107356%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp113203))
              (let ((__tmp113204
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym107356%_))))
                (declare (not safe))
                (##string->keyword __tmp113204))))))
    (define symbol->keyword
      (lambda (_%sym103841%_)
        (if (symbol? _%sym103841%_)
            (let ((_%sym103845%_ _%sym103841%_))
              (__symbol->keyword _%sym103845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym103841%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym107341%_)
        (let ((_%sym107344%_ _%sym107341%_))
          (if (uninterned-keyword? _%sym107344%_)
              (let ((__tmp113205
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym107344%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp113205))
              (let ((__tmp113206
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym107344%_))))
                (declare (not safe))
                (##string->symbol __tmp113206))))))
    (define keyword->symbol
      (lambda (_%sym103975%_)
        (if (keyword? _%sym103975%_)
            (let ((_%sym103979%_ _%sym103975%_))
              (__keyword->symbol _%sym103979%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym103975%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr107301%_ _%enc107302%_)
        (let* ((_%bstr107305%_ _%bstr107301%_) (_%enc107313%_ _%enc107302%_))
          (if (eq? _%enc107313%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr107305%_))
              (let* ((_%in107322%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc107313%_
                                   (cons 'init: (cons _%bstr107305%_ '()))))))
                     (_%len107324%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr107305%_)))
                     (_%out107326%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len107324%_)))
                     (_%n107328%_
                      (read-substring
                       _%out107326%_
                       '0
                       _%len107324%_
                       _%in107322%_)))
                (string-shrink! _%out107326%_ _%n107328%_)
                _%out107326%_)))))
    (define __bytes->string__0
      (lambda (_%bstr107334%_)
        (let ((_%enc107336%_ 'UTF-8))
          (__bytes->string__% _%bstr107334%_ _%enc107336%_))))
    (define __bytes->string
      (lambda _g113207_
        (let ((_g113208_ (let () (declare (not safe)) (##length _g113207_))))
          (cond ((let () (declare (not safe)) (##fx= _g113208_ 1))
                 (apply __bytes->string__0 _g113207_))
                ((let () (declare (not safe)) (##fx= _g113208_ 2))
                 (apply __bytes->string__% _g113207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g113207_))))))
    (define bytes->string__%
      (lambda (_%bstr104110%_ _%enc104111%_)
        (if (u8vector? _%bstr104110%_)
            (let ((_%bstr104115%_ _%bstr104110%_))
              (if (symbol? _%enc104111%_)
                  (let ((_%enc104125%_ _%enc104111%_))
                    (__bytes->string__% _%bstr104115%_ _%enc104125%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc104111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr104110%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr104138%_)
        (let ((_%enc104140%_ 'UTF-8))
          (bytes->string__% _%bstr104138%_ _%enc104140%_))))
    (define bytes->string
      (lambda _g113209_
        (let ((_g113210_ (let () (declare (not safe)) (##length _g113209_))))
          (cond ((let () (declare (not safe)) (##fx= _g113210_ 1))
                 (apply bytes->string__0 _g113209_))
                ((let () (declare (not safe)) (##fx= _g113210_ 2))
                 (apply bytes->string__% _g113209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g113209_))))))
    (define __string->bytes__%
      (lambda (_%str107219%_ _%enc107220%_)
        (let* ((_%str107223%_ _%str107219%_) (_%enc107231%_ _%enc107220%_))
          (if (eq? _%enc107231%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str107223%_))
              (let* ((_%str107240%_ _%str107223%_)
                     (_%start107243%_ '0)
                     (_%end107246%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str107223%_)))
                     (_%enc107249%_ _%enc107231%_)
                     (_%str107254%_ _%str107240%_))
                (if (nonnegative-fixnum? _%start107243%_)
                    (let ((_%start107270%_ _%start107243%_))
                      (if (nonnegative-fixnum? _%end107246%_)
                          (let ((_%end107280%_ _%end107246%_))
                            (__substring->bytes__%
                             _%str107254%_
                             _%start107270%_
                             _%end107280%_
                             _%enc107249%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end107246%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start107243%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str107293%_)
        (let ((_%enc107295%_ 'UTF-8))
          (__string->bytes__% _%str107293%_ _%enc107295%_))))
    (define __string->bytes
      (lambda _g113211_
        (let ((_g113212_ (let () (declare (not safe)) (##length _g113211_))))
          (cond ((let () (declare (not safe)) (##fx= _g113212_ 1))
                 (apply __string->bytes__0 _g113211_))
                ((let () (declare (not safe)) (##fx= _g113212_ 2))
                 (apply __string->bytes__% _g113211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g113211_))))))
    (define string->bytes__%
      (lambda (_%str104266%_ _%enc104267%_)
        (if (string? _%str104266%_)
            (let ((_%str104271%_ _%str104266%_))
              (if (symbol? _%enc104267%_)
                  (let ((_%enc104281%_ _%enc104267%_))
                    (__string->bytes__% _%str104271%_ _%enc104281%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc104267%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str104266%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str104294%_)
        (let ((_%enc104296%_ 'UTF-8))
          (string->bytes__% _%str104294%_ _%enc104296%_))))
    (define string->bytes
      (lambda _g113213_
        (let ((_g113214_ (let () (declare (not safe)) (##length _g113213_))))
          (cond ((let () (declare (not safe)) (##fx= _g113214_ 1))
                 (apply string->bytes__0 _g113213_))
                ((let () (declare (not safe)) (##fx= _g113214_ 2))
                 (apply string->bytes__% _g113213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g113213_))))))
    (define __substring->bytes__%
      (lambda (_%str107171%_ _%start107172%_ _%end107173%_ _%enc107174%_)
        (let* ((_%str107177%_ _%str107171%_)
               (_%start107185%_ _%start107172%_)
               (_%end107193%_ _%end107173%_))
          (if (eq? _%enc107174%_ 'UTF-8)
              (string->utf8 _%str107177%_ _%start107185%_ _%end107193%_)
              (let ((_%out107202%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc107174%_ '())))))
                (write-substring
                 _%str107177%_
                 _%start107185%_
                 _%end107193%_
                 _%out107202%_)
                (get-output-u8vector _%out107202%_))))))
    (define __substring->bytes__0
      (lambda (_%str107207%_ _%start107208%_ _%end107209%_)
        (let ((_%enc107211%_ 'UTF-8))
          (__substring->bytes__%
           _%str107207%_
           _%start107208%_
           _%end107209%_
           _%enc107211%_))))
    (define __substring->bytes
      (lambda _g113215_
        (let ((_g113216_ (let () (declare (not safe)) (##length _g113215_))))
          (cond ((let () (declare (not safe)) (##fx= _g113216_ 3))
                 (apply __substring->bytes__0 _g113215_))
                ((let () (declare (not safe)) (##fx= _g113216_ 4))
                 (apply __substring->bytes__% _g113215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g113215_))))))
    (define substring->bytes__%
      (lambda (_%str104422%_ _%start104423%_ _%end104424%_ _%enc104425%_)
        (if (string? _%str104422%_)
            (let ((_%str104429%_ _%str104422%_))
              (if (nonnegative-fixnum? _%start104423%_)
                  (let ((_%start104439%_ _%start104423%_))
                    (if (nonnegative-fixnum? _%end104424%_)
                        (let ((_%end104449%_ _%end104424%_))
                          (__substring->bytes__%
                           _%str104429%_
                           _%start104439%_
                           _%end104449%_
                           _%enc104425%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end104424%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start104423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str104422%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str104462%_ _%start104463%_ _%end104464%_)
        (let ((_%enc104466%_ 'UTF-8))
          (substring->bytes__%
           _%str104462%_
           _%start104463%_
           _%end104464%_
           _%enc104466%_))))
    (define substring->bytes
      (lambda _g113217_
        (let ((_g113218_ (let () (declare (not safe)) (##length _g113217_))))
          (cond ((let () (declare (not safe)) (##fx= _g113218_ 3))
                 (apply substring->bytes__0 _g113217_))
                ((let () (declare (not safe)) (##fx= _g113218_ 4))
                 (apply substring->bytes__% _g113217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g113217_))))))
    (define __string-empty?
      (lambda (_%str107158%_)
        (let* ((_%str107161%_ _%str107158%_)
               (__tmp113219
                (let () (declare (not safe)) (##string-length _%str107161%_))))
          (declare (not safe))
          (##fxzero? __tmp113219))))
    (define string-empty?
      (lambda (_%str104593%_)
        (if (string? _%str104593%_)
            (let ((_%str104597%_ _%str104593%_))
              (__string-empty? _%str104597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str104593%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str107098%_ _%char107099%_ _%start107100%_)
        (let* ((_%str107103%_ _%str107098%_)
               (_%char107111%_ _%char107099%_)
               (_%start107119%_ _%start107100%_)
               (_%len107128%_
                (let () (declare (not safe)) (##string-length _%str107103%_))))
          (let _%lp107130%_ ((_%k107132%_ _%start107119%_))
            (let ((_%k107134%_ _%k107132%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k107134%_ _%len107128%_))
                  (if (eq? _%char107111%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str107103%_ _%k107134%_)))
                      _%k107134%_
                      (_%lp107130%_
                       (let () (declare (not safe)) (##fx+ _%k107134%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str107149%_ _%char107150%_)
        (let ((_%start107152%_ '0))
          (__string-index__% _%str107149%_ _%char107150%_ _%start107152%_))))
    (define __string-index
      (lambda _g113220_
        (let ((_g113221_ (let () (declare (not safe)) (##length _g113220_))))
          (cond ((let () (declare (not safe)) (##fx= _g113221_ 2))
                 (apply __string-index__0 _g113220_))
                ((let () (declare (not safe)) (##fx= _g113221_ 3))
                 (apply __string-index__% _g113220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g113220_))))))
    (define string-index__%
      (lambda (_%str104728%_ _%char104729%_ _%start104730%_)
        (if (string? _%str104728%_)
            (let ((_%str104734%_ _%str104728%_))
              (if (char? _%char104729%_)
                  (let ((_%char104744%_ _%char104729%_))
                    (if (nonnegative-fixnum? _%start104730%_)
                        (let ((_%start104754%_ _%start104730%_))
                          (__string-index__%
                           _%str104734%_
                           _%char104744%_
                           _%start104754%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start104730%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char104729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str104728%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str104767%_ _%char104768%_)
        (let ((_%start104770%_ '0))
          (string-index__% _%str104767%_ _%char104768%_ _%start104770%_))))
    (define string-index
      (lambda _g113222_
        (let ((_g113223_ (let () (declare (not safe)) (##length _g113222_))))
          (cond ((let () (declare (not safe)) (##fx= _g113223_ 2))
                 (apply string-index__0 _g113222_))
                ((let () (declare (not safe)) (##fx= _g113223_ 3))
                 (apply string-index__% _g113222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g113222_))))))
    (define __string-rindex__%
      (lambda (_%str107040%_ _%char107041%_ _%start107042%_)
        (let* ((_%str107045%_ _%str107040%_)
               (_%char107053%_ _%char107041%_)
               (_%len107062%_
                (let () (declare (not safe)) (##string-length _%str107045%_)))
               (_%start107064%_
                (if (fixnum? _%start107042%_)
                    _%start107042%_
                    (let () (declare (not safe)) (##fx- _%len107062%_ '1)))))
          (let _%lp107067%_ ((_%k107069%_ _%start107064%_))
            (let ((_%k107071%_ _%k107069%_))
              (if (let () (declare (not safe)) (##fx>= _%k107071%_ '0))
                  (if (eq? _%char107053%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str107045%_ _%k107071%_)))
                      _%k107071%_
                      (_%lp107067%_
                       (let () (declare (not safe)) (##fx- _%k107071%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str107088%_ _%char107089%_)
        (let ((_%start107091%_ '#f))
          (__string-rindex__% _%str107088%_ _%char107089%_ _%start107091%_))))
    (define __string-rindex
      (lambda _g113224_
        (let ((_g113225_ (let () (declare (not safe)) (##length _g113224_))))
          (cond ((let () (declare (not safe)) (##fx= _g113225_ 2))
                 (apply __string-rindex__0 _g113224_))
                ((let () (declare (not safe)) (##fx= _g113225_ 3))
                 (apply __string-rindex__% _g113224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g113224_))))))
    (define string-rindex__%
      (lambda (_%str104897%_ _%char104898%_ _%start104899%_)
        (if (string? _%str104897%_)
            (let ((_%str104903%_ _%str104897%_))
              (if (char? _%char104898%_)
                  (let ((_%char104913%_ _%char104898%_))
                    (__string-rindex__%
                     _%str104903%_
                     _%char104913%_
                     _%start104899%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char104898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str104897%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str104926%_ _%char104927%_)
        (let ((_%start104929%_ '#f))
          (string-rindex__% _%str104926%_ _%char104927%_ _%start104929%_))))
    (define string-rindex
      (lambda _g113226_
        (let ((_g113227_ (let () (declare (not safe)) (##length _g113226_))))
          (cond ((let () (declare (not safe)) (##fx= _g113227_ 2))
                 (apply string-rindex__0 _g113226_))
                ((let () (declare (not safe)) (##fx= _g113227_ 3))
                 (apply string-rindex__% _g113226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g113226_))))))
    (define __string-split
      (lambda (_%str106937%_ _%char106938%_)
        (let* ((_%str106941%_ _%str106937%_)
               (_%char106949%_ _%char106938%_)
               (_%len106958%_
                (let () (declare (not safe)) (##string-length _%str106941%_))))
          (let _%lp106960%_ ((_%start106962%_ '0) (_%r106963%_ '()))
            (let* ((_%start106966%_ _%start106962%_)
                   (_%$e107024%_
                    (let* ((_%str106979%_ _%str106941%_)
                           (_%char106982%_ _%char106949%_)
                           (_%start106985%_ _%start106966%_)
                           (_%str106990%_ _%str106979%_)
                           (_%char107004%_ _%char106982%_))
                      (if (nonnegative-fixnum? _%start106985%_)
                          (let ((_%start107014%_ _%start106985%_))
                            (__string-index__%
                             _%str106990%_
                             _%char107004%_
                             _%start107014%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start106985%_)
                            '#!void)))))
              (if _%$e107024%_
                  ((lambda (_%end107027%_)
                     (let ((_%end107029%_ _%end107027%_))
                       (_%lp106960%_
                        (let () (declare (not safe)) (##fx+ _%end107029%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str106941%_
                                 _%start106966%_
                                 _%end107029%_))
                              _%r106963%_))))
                   _%$e107024%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start106966%_ _%len106958%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str106941%_
                                _%start106966%_
                                _%len106958%_)))
                       _%r106963%_)
                      (reverse! _%r106963%_))))))))
    (define string-split
      (lambda (_%str105055%_ _%char105056%_)
        (if (string? _%str105055%_)
            (let ((_%str105060%_ _%str105055%_))
              (if (char? _%char105056%_)
                  (let ((_%char105070%_ _%char105056%_))
                    (__string-split _%str105060%_ _%char105070%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char105056%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str105055%_)
              '#!void))))
    (define string-join
      (lambda (_%strs106787%_ _%join106788%_)
        (letrec ((_%join-length106791%_
                  (lambda (_%strs106875%_ _%jlen106876%_)
                    (let _%lp106878%_ ((_%rest106880%_ _%strs106875%_)
                                       (_%len106881%_ '0))
                      (let* ((_%len106883%_ _%len106881%_)
                             (_%rest106891106899%_ _%rest106880%_)
                             (_%else106893106907%_ (lambda () '0))
                             (_%K106895106925%_
                              (lambda (_%rest106910%_ _%hd106911%_)
                                (if (string? _%hd106911%_)
                                    (let ((_%hd106913%_ _%hd106911%_))
                                      (if (pair? _%rest106910%_)
                                          (_%lp106878%_
                                           _%rest106910%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd106913%_))
                                                _%jlen106876%_
                                                _%len106883%_))
                                          (let ((__tmp113228
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd106913%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp113228
                                                   _%len106883%_))))
                                    (error '"expected string" _%hd106911%_)))))
                        (if (pair? _%rest106891106899%_)
                            (let ((_%hd106896106928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest106891106899%_)))
                                  (_%tl106897106930%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest106891106899%_))))
                              (let* ((_%hd106933%_ _%hd106896106928%_)
                                     (_%rest106935%_ _%tl106897106930%_))
                                (_%K106895106925%_
                                 _%rest106935%_
                                 _%hd106933%_)))
                            (_%else106893106907%_)))))))
          (let* ((_%join106796%_
                  (if (char? _%join106788%_)
                      (let () (declare (not safe)) (##string _%join106788%_))
                      (if (string? _%join106788%_)
                          _%join106788%_
                          (error '"expected string or char" _%join106788%_))))
                 (_%jlen106798%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join106796%_)))
                 (_%olen106800%_
                  (_%join-length106791%_ _%strs106787%_ _%jlen106798%_))
                 (_%ostr106802%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen106800%_))))
            (let _%lp106805%_ ((_%rest106807%_ _%strs106787%_)
                               (_%k106808%_ '0))
              (let* ((_%k106811%_ _%k106808%_)
                     (_%rest106827106835%_ _%rest106807%_)
                     (_%else106829106843%_ (lambda () '""))
                     (_%K106831106863%_
                      (lambda (_%rest106846%_ _%hd106847%_)
                        (let* ((_%hd106849%_ _%hd106847%_)
                               (_%hdlen106861%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd106849%_))))
                          (if (pair? _%rest106846%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd106849%_
                                   '0
                                   _%hdlen106861%_
                                   _%ostr106802%_
                                   _%k106811%_))
                                (let ((__tmp113229
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k106811%_ _%hdlen106861%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join106796%_
                                   '0
                                   _%jlen106798%_
                                   _%ostr106802%_
                                   __tmp113229))
                                (_%lp106805%_
                                 _%rest106846%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k106811%_
                                          _%hdlen106861%_
                                          _%jlen106798%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd106849%_
                                   '0
                                   _%hdlen106861%_
                                   _%ostr106802%_
                                   _%k106811%_))
                                _%ostr106802%_))))))
                (if (pair? _%rest106827106835%_)
                    (let ((_%hd106832106866%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest106827106835%_)))
                          (_%tl106833106868%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest106827106835%_))))
                      (let* ((_%hd106871%_ _%hd106832106866%_)
                             (_%rest106873%_ _%tl106833106868%_))
                        (_%K106831106863%_ _%rest106873%_ _%hd106871%_)))
                    (_%else106829106843%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes106727%_ _%port106728%_ _%start106729%_ _%end106730%_)
        (let* ((_%bytes106733%_ _%bytes106727%_)
               (_%port106741%_ _%port106728%_)
               (_%start106749%_ _%start106729%_)
               (_%end106757%_ _%end106730%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes106733%_
           _%start106749%_
           _%end106757%_
           _%port106741%_))))
    (define __read-u8vector__0
      (lambda (_%bytes106769%_ _%port106770%_)
        (let* ((_%start106772%_ '0)
               (_%end106774%_ (u8vector-length _%bytes106769%_)))
          (__read-u8vector__%
           _%bytes106769%_
           _%port106770%_
           _%start106772%_
           _%end106774%_))))
    (define __read-u8vector__1
      (lambda (_%bytes106776%_ _%port106777%_ _%start106778%_)
        (let ((_%end106780%_ (u8vector-length _%bytes106776%_)))
          (__read-u8vector__%
           _%bytes106776%_
           _%port106777%_
           _%start106778%_
           _%end106780%_))))
    (define __read-u8vector
      (lambda _g113230_
        (let ((_g113231_ (let () (declare (not safe)) (##length _g113230_))))
          (cond ((let () (declare (not safe)) (##fx= _g113231_ 2))
                 (apply __read-u8vector__0 _g113230_))
                ((let () (declare (not safe)) (##fx= _g113231_ 3))
                 (apply __read-u8vector__1 _g113230_))
                ((let () (declare (not safe)) (##fx= _g113231_ 4))
                 (apply __read-u8vector__% _g113230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g113230_))))))
    (define read-u8vector__%
      (lambda (_%bytes105201%_ _%port105202%_ _%start105203%_ _%end105204%_)
        (if (u8vector? _%bytes105201%_)
            (let ((_%bytes105208%_ _%bytes105201%_))
              (if (input-port? _%port105202%_)
                  (let ((_%port105218%_ _%port105202%_))
                    (if ((lambda (_%o105227%_)
                           (and (fixnum? _%o105227%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o105227%_ '0))
                                (let ((__tmp113232
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes105208%_))))
                                  (declare (not safe))
                                  (##fx< _%o105227%_ __tmp113232))))
                         _%start105203%_)
                        (let ((_%start105231%_ _%start105203%_))
                          (if ((lambda (_%o105240%_)
                                 (and (fixnum? _%o105240%_)
                                      (let ((__tmp113233
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes105208%_))))
                                        (declare (not safe))
                                        (##fx<= _%start105231%_
                                                _%o105240%_
                                                __tmp113233))))
                               _%end105204%_)
                              (let ((_%end105244%_ _%end105204%_))
                                (__read-u8vector__%
                                 _%bytes105208%_
                                 _%port105218%_
                                 _%start105231%_
                                 _%end105244%_))
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
                                 _%end105204%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start105203%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port105202%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes105201%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes105257%_ _%port105258%_)
        (let* ((_%start105260%_ '0)
               (_%end105262%_ (u8vector-length _%bytes105257%_)))
          (read-u8vector__%
           _%bytes105257%_
           _%port105258%_
           _%start105260%_
           _%end105262%_))))
    (define read-u8vector__1
      (lambda (_%bytes105264%_ _%port105265%_ _%start105266%_)
        (let ((_%end105268%_ (u8vector-length _%bytes105264%_)))
          (read-u8vector__%
           _%bytes105264%_
           _%port105265%_
           _%start105266%_
           _%end105268%_))))
    (define read-u8vector
      (lambda _g113234_
        (let ((_g113235_ (let () (declare (not safe)) (##length _g113234_))))
          (cond ((let () (declare (not safe)) (##fx= _g113235_ 2))
                 (apply read-u8vector__0 _g113234_))
                ((let () (declare (not safe)) (##fx= _g113235_ 3))
                 (apply read-u8vector__1 _g113234_))
                ((let () (declare (not safe)) (##fx= _g113235_ 4))
                 (apply read-u8vector__% _g113234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g113234_))))))
    (define __write-u8vector__%
      (lambda (_%bytes106666%_ _%port106667%_ _%start106668%_ _%end106669%_)
        (let* ((_%bytes106672%_ _%bytes106666%_)
               (_%port106680%_ _%port106667%_)
               (_%start106688%_ _%start106668%_)
               (_%end106696%_ _%end106669%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes106672%_
           _%start106688%_
           _%end106696%_
           _%port106680%_))))
    (define __write-u8vector__0
      (lambda (_%bytes106708%_ _%port106709%_)
        (let* ((_%start106711%_ '0)
               (_%end106713%_ (u8vector-length _%bytes106708%_)))
          (__write-u8vector__%
           _%bytes106708%_
           _%port106709%_
           _%start106711%_
           _%end106713%_))))
    (define __write-u8vector__1
      (lambda (_%bytes106715%_ _%port106716%_ _%start106717%_)
        (let ((_%end106719%_ (u8vector-length _%bytes106715%_)))
          (__write-u8vector__%
           _%bytes106715%_
           _%port106716%_
           _%start106717%_
           _%end106719%_))))
    (define __write-u8vector
      (lambda _g113236_
        (let ((_g113237_ (let () (declare (not safe)) (##length _g113236_))))
          (cond ((let () (declare (not safe)) (##fx= _g113237_ 2))
                 (apply __write-u8vector__0 _g113236_))
                ((let () (declare (not safe)) (##fx= _g113237_ 3))
                 (apply __write-u8vector__1 _g113236_))
                ((let () (declare (not safe)) (##fx= _g113237_ 4))
                 (apply __write-u8vector__% _g113236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g113236_))))))
    (define write-u8vector__%
      (lambda (_%bytes105396%_ _%port105397%_ _%start105398%_ _%end105399%_)
        (if (u8vector? _%bytes105396%_)
            (let ((_%bytes105403%_ _%bytes105396%_))
              (if (output-port? _%port105397%_)
                  (let* ((_%port105413%_ _%port105397%_)
                         (_%start105422%_ _%start105398%_))
                    (if ((lambda (_%o105430%_)
                           (and (fixnum? _%o105430%_)
                                (let ((__tmp113238
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes105403%_))))
                                  (declare (not safe))
                                  (##fx<= _%start105422%_
                                          _%o105430%_
                                          __tmp113238))))
                         _%end105399%_)
                        (let ((_%end105434%_ _%end105399%_))
                          (__write-u8vector__%
                           _%bytes105403%_
                           _%port105413%_
                           _%start105422%_
                           _%end105434%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end105399%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port105397%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes105396%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes105447%_ _%port105448%_)
        (let* ((_%start105450%_ '0)
               (_%end105452%_ (u8vector-length _%bytes105447%_)))
          (write-u8vector__%
           _%bytes105447%_
           _%port105448%_
           _%start105450%_
           _%end105452%_))))
    (define write-u8vector__1
      (lambda (_%bytes105454%_ _%port105455%_ _%start105456%_)
        (let ((_%end105458%_ (u8vector-length _%bytes105454%_)))
          (write-u8vector__%
           _%bytes105454%_
           _%port105455%_
           _%start105456%_
           _%end105458%_))))
    (define write-u8vector
      (lambda _g113239_
        (let ((_g113240_ (let () (declare (not safe)) (##length _g113239_))))
          (cond ((let () (declare (not safe)) (##fx= _g113240_ 2))
                 (apply write-u8vector__0 _g113239_))
                ((let () (declare (not safe)) (##fx= _g113240_ 3))
                 (apply write-u8vector__1 _g113239_))
                ((let () (declare (not safe)) (##fx= _g113240_ 4))
                 (apply write-u8vector__% _g113239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g113239_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag106634%_
               _%dbg-exprs106635%_
               _%dbg-thunks106636%_
               _%expr106637%_
               _%thunk106638%_)
        (letrec ((_%o106640%_ (current-output-port))
                 (_%e106641%_ (current-error-port))
                 (_%p106642%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f106643%_
                  (lambda ()
                    (force-output _%o106640%_)
                    (force-output _%e106641%_)))
                 (_%d106644%_
                  (lambda (_%x106651%_) (display _%x106651%_ _%e106641%_)))
                 (_%w106645%_
                  (lambda (_%x106653%_) (_%p106642%_ _%x106653%_ _%e106641%_)))
                 (_%n106646%_ (lambda () (newline _%e106641%_)))
                 (_%v106647%_
                  (lambda (_%l106656%_)
                    (for-each
                     (lambda (_%x106658%_)
                       (_%d106644%_ '" ")
                       (_%w106645%_ _%x106658%_))
                     _%l106656%_)
                    (_%n106646%_)))
                 (_%x106648%_
                  (lambda (_%expr106660%_ _%thunk106661%_)
                    (_%f106643%_)
                    (_%d106644%_ '"  ")
                    (_%w106645%_ _%expr106660%_)
                    (_%d106644%_ '" =>")
                    (call-with-values
                     _%thunk106661%_
                     (lambda _%x106663%_
                       (_%v106647%_ _%x106663%_)
                       (_%f106643%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x106663%_)))))))
          (if _%tag106634%_
              (begin
                (if (eq? _%tag106634%_ '#!void)
                    '#!void
                    (begin
                      (_%f106643%_)
                      (_%d106644%_ _%tag106634%_)
                      (_%n106646%_)))
                (for-each _%x106648%_ _%dbg-exprs106635%_ _%dbg-thunks106636%_)
                (if _%thunk106638%_
                    (_%x106648%_ _%expr106637%_ _%thunk106638%_)
                    '#!void))
              (if _%thunk106638%_ (_%thunk106638%_) '#!void)))))))
