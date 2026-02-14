(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1771037605)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args120714%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args120714%_))
          (newline))))
    (define display*
      (lambda _%args120711%_
        (let () (declare (not safe)) (##for-each display _%args120711%_))))
    (define __file-newer?
      (lambda (_%file1120502%_ _%file2120503%_)
        (let* ((_%file1120506%_ _%file1120502%_)
               (_%file2120514%_ _%file2120503%_))
          (letrec ((_%__modification-time120658%_
                    (lambda (_%file120699%_)
                      (let* ((_%file120702%_ _%file120699%_)
                             (__tmp123490
                              (let ((__tmp123491
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file120702%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp123491))))
                        (declare (not safe))
                        (##time->seconds __tmp123490))))
                   (_%modification-time120659%_
                    (lambda (_%file120687%_)
                      (let ((_%file120690%_ _%file120687%_))
                        (_%__modification-time120658%_ _%file120690%_)))))
            (let ((__tmp123493
                   (let* ((_%file120661%_ _%file1120506%_)
                          (_%file120665%_ _%file120661%_))
                     (_%__modification-time120658%_ _%file120665%_)))
                  (__tmp123492
                   (let* ((_%file120674%_ _%file2120514%_)
                          (_%file120678%_ _%file120674%_))
                     (_%__modification-time120658%_ _%file120678%_))))
              (declare (not safe))
              (##fl> __tmp123493 __tmp123492))))))
    (define file-newer?
      (lambda (_%file1110088%_ _%file2110089%_)
        (if (string? _%file1110088%_)
            (let ((_%file1110093%_ _%file1110088%_))
              (if (string? _%file2110089%_)
                  (let ((_%file2110103%_ _%file2110089%_))
                    (__file-newer? _%file1110093%_ _%file2110103%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@98.20-98.25"
                     'contract:
                     'string?
                     'value:
                     _%file2110089%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@97.20-97.25"
               'contract:
               'string?
               'value:
               _%file1110088%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir120222%_ _%perms120223%_)
        (let* ((_%dir120226%_ _%dir120222%_) (_%perms120234%_ _%perms120223%_))
          (letrec ((_%__create1120378%_
                    (lambda (_%path120477%_)
                      (let ((_%path120480%_ _%path120477%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path120480%_))
                            (if (eq? (file-type _%path120480%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path120480%_))
                            (if _%perms120234%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path120480%_
                                             (cons 'permissions:
                                                   (cons _%perms120234%_
                                                         '())))))
                                (create-directory _%path120480%_))))))
                   (_%create1120379%_
                    (lambda (_%path120465%_)
                      (let ((_%path120468%_ _%path120465%_))
                        (_%__create1120378%_ _%path120468%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir120226%_))
                '#!void
                (let _%lp120381%_ ((_%start120383%_ '0))
                  (let ((_%$e120430%_
                         (let* ((_%str120385%_ _%dir120226%_)
                                (_%char120388%_ '#\/)
                                (_%start120391%_ _%start120383%_)
                                (_%str120396%_ _%str120385%_)
                                (_%char120410%_ _%char120388%_))
                           (if (nonnegative-fixnum? _%start120391%_)
                               (let ((_%start120420%_ _%start120391%_))
                                 (__string-index__%
                                  _%str120396%_
                                  _%char120410%_
                                  _%start120420%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start120391%_)
                                 '#!void)))))
                    (if _%$e120430%_
                        ((lambda (_%x120433%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x120433%_ '0))
                               (let* ((_%path120435%_
                                       (substring
                                        _%dir120226%_
                                        '0
                                        _%x120433%_))
                                      (_%path120439%_ _%path120435%_))
                                 (_%__create1120378%_ _%path120439%_))
                               '#!void)
                           (_%lp120381%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x120433%_ '1))))
                         _%$e120430%_)
                        (let* ((_%path120451%_ _%dir120226%_)
                               (_%path120455%_ _%path120451%_))
                          (_%__create1120378%_ _%path120455%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir120495%_)
        (let ((_%perms120497%_ '493))
          (__create-directory*__% _%dir120495%_ _%perms120497%_))))
    (define __create-directory*
      (lambda _g123494_
        (let ((_g123495_ (let () (declare (not safe)) (##length _g123494_))))
          (cond ((let () (declare (not safe)) (##fx= _g123495_ 1))
                 (apply __create-directory*__0 _g123494_))
                ((let () (declare (not safe)) (##fx= _g123495_ 2))
                 (apply __create-directory*__% _g123494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g123494_))))))
    (define create-directory*__%
      (lambda (_%dir110234%_ _%perms110235%_)
        (if (string? _%dir110234%_)
            (let ((_%dir110239%_ _%dir110234%_))
              (if (fixnum? _%perms110235%_)
                  (let ((_%perms110249%_ _%perms110235%_))
                    (__create-directory*__% _%dir110239%_ _%perms110249%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@109.26-109.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms110235%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@108.26-108.29"
               'contract:
               'string?
               'value:
               _%dir110234%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir110262%_)
        (let ((_%perms110264%_ '493))
          (create-directory*__% _%dir110262%_ _%perms110264%_))))
    (define create-directory*
      (lambda _g123496_
        (let ((_g123497_ (let () (declare (not safe)) (##length _g123496_))))
          (cond ((let () (declare (not safe)) (##fx= _g123497_ 1))
                 (apply create-directory*__0 _g123496_))
                ((let () (declare (not safe)) (##fx= _g123497_ 2))
                 (apply create-directory*__% _g123496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g123496_))))))
    (define __move-file__%
      (lambda (_%src120165%_ _%dest120166%_ _%replace?120167%_)
        (let* ((_%src120170%_ _%src120165%_)
               (_%dest120178%_ _%dest120166%_)
               (_%replace?120186%_ _%replace?120167%_))
          (letrec ((_%force-move-it120195%_
                    (lambda ()
                      (let ((_%tmp120201%_
                             (if _%replace?120186%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest120178%_))
                                     (let ((__tmp123498
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest120178%_
                                        '"."
                                        __tmp123498))
                                     '#f)
                                 '#f)))
                        (if _%tmp120201%_
                            (rename-file _%dest120178%_ _%tmp120201%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e120203%_)
                           (if _%tmp120201%_
                               (rename-file _%tmp120201%_ _%dest120178%_ '#t)
                               '#!void)
                           (raise _%e120203%_))
                         (lambda ()
                           (let ((_%fi120206%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src120170%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi120206%_))
                                      'symbolic-link)
                                 (let ((__tmp123499
                                        (path-normalize _%src120170%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp123499
                                    _%dest120178%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src120170%_
                                    _%dest120178%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src120170%_))
                           (if _%tmp120201%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp120201%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e120197%_)
               (if (let () (declare (not safe)) (##file-exists? _%src120170%_))
                   (_%force-move-it120195%_)
                   (raise _%e120197%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src120170%_
                  _%dest120178%_
                  _%replace?120186%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src120212%_ _%dest120213%_)
        (let ((_%replace?120215%_ '#t))
          (__move-file__% _%src120212%_ _%dest120213%_ _%replace?120215%_))))
    (define __move-file
      (lambda _g123500_
        (let ((_g123501_ (let () (declare (not safe)) (##length _g123500_))))
          (cond ((let () (declare (not safe)) (##fx= _g123501_ 2))
                 (apply __move-file__0 _g123500_))
                ((let () (declare (not safe)) (##fx= _g123501_ 3))
                 (apply __move-file__% _g123500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g123500_))))))
    (define move-file__%
      (lambda (_%src110390%_ _%dest110391%_ _%replace?110392%_)
        (if (string? _%src110390%_)
            (let ((_%src110396%_ _%src110390%_))
              (if (string? _%dest110391%_)
                  (let ((_%dest110406%_ _%dest110391%_))
                    (if (boolean? _%replace?110392%_)
                        (let ((_%replace?110416%_ _%replace?110392%_))
                          (__move-file__%
                           _%src110396%_
                           _%dest110406%_
                           _%replace?110416%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@133.51-133.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?110392%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@133.34-133.38"
                     'contract:
                     'string?
                     'value:
                     _%dest110391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@133.18-133.21"
               'contract:
               'string?
               'value:
               _%src110390%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src110429%_ _%dest110430%_)
        (let ((_%replace?110432%_ '#t))
          (move-file__% _%src110429%_ _%dest110430%_ _%replace?110432%_))))
    (define move-file
      (lambda _g123502_
        (let ((_g123503_ (let () (declare (not safe)) (##length _g123502_))))
          (cond ((let () (declare (not safe)) (##fx= _g123503_ 2))
                 (apply move-file__0 _g123502_))
                ((let () (declare (not safe)) (##fx= _g123503_ 3))
                 (apply move-file__% _g123502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g123502_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore120161%_ '#t))
    (define true? (lambda (_%obj120158%_) (eq? _%obj120158%_ '#t)))
    (define false (lambda _%ignore120155%_ '#f))
    (define void (lambda _%ignore120152%_ '#!void))
    (define void? (lambda (_%obj120149%_) (eq? _%obj120149%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj120146%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj120146%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj120143%_) (eq? _%obj120143%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj120140%_) (eq? _%obj120140%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj120137%_) (eq? _%obj120137%_ '#!optional)))
    (define immediate?
      (lambda (_%obj120134%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj120134%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj120131%_)
        (if (fixnum? _%obj120131%_)
            (let () (declare (not safe)) (##fx>= _%obj120131%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj120125%_)
        (let ((_%$e120128%_ (pair? _%obj120125%_)))
          (if _%$e120128%_ _%$e120128%_ (null? _%obj120125%_)))))
    (define values-count
      (lambda (_%obj120122%_)
        (if (let () (declare (not safe)) (##values? _%obj120122%_))
            (let () (declare (not safe)) (##values-length _%obj120122%_))
            '1)))
    (define __values-ref
      (lambda (_%obj120109%_ _%k120110%_)
        (let ((_%k120113%_ _%k120110%_))
          (if (let () (declare (not safe)) (##values? _%obj120109%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj120109%_ _%k120113%_))
              _%obj120109%_))))
    (define values-ref
      (lambda (_%obj110558%_ _%k110559%_)
        (if (fixnum? _%k110559%_)
            (let ((_%k110563%_ _%k110559%_))
              (__values-ref _%obj110558%_ _%k110563%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.23-267.24"
               'contract:
               'fixnum?
               'value:
               _%k110559%_)
              '#!void))))
    (define values->list
      (lambda (_%obj120106%_)
        (if (let () (declare (not safe)) (##values? _%obj120106%_))
            (let () (declare (not safe)) (##values->list _%obj120106%_))
            (list _%obj120106%_))))
    (define __foldl1
      (lambda (_%f120054%_ _%iv120055%_ _%lst120056%_)
        (let ((_%f120059%_ _%f120054%_))
          (let _%lp120068%_ ((_%rest120070%_ _%lst120056%_)
                             (_%r120071%_ _%iv120055%_))
            (let* ((_%rest120072120080%_ _%rest120070%_)
                   (_%else120074120088%_ (lambda () _%r120071%_))
                   (_%K120076120094%_
                    (lambda (_%rest120091%_ _%x120092%_)
                      (_%lp120068%_
                       _%rest120091%_
                       (let ()
                         (declare (not safe))
                         (_%f120059%_ _%x120092%_ _%r120071%_))))))
              (if (pair? _%rest120072120080%_)
                  (let ((_%hd120077120097%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest120072120080%_)))
                        (_%tl120078120099%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest120072120080%_))))
                    (let* ((_%x120102%_ _%hd120077120097%_)
                           (_%rest120104%_ _%tl120078120099%_))
                      (_%K120076120094%_ _%rest120104%_ _%x120102%_)))
                  (_%else120074120088%_)))))))
    (define foldl1
      (lambda (_%f110693%_ _%iv110694%_ _%lst110695%_)
        (if (procedure? _%f110693%_)
            (let ((_%f110699%_ _%f110693%_))
              (__foldl1 _%f110699%_ _%iv110694%_ _%lst110695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@290.15-290.16"
               'contract:
               'procedure?
               'value:
               _%f110693%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f119967%_ _%iv119968%_ _%lst1119969%_ _%lst2119970%_)
        (let ((_%f119973%_ _%f119967%_))
          (let _%lp119982%_ ((_%rest1119984%_ _%lst1119969%_)
                             (_%rest2119985%_ _%lst2119970%_)
                             (_%r119986%_ _%iv119968%_))
            (let* ((_%rest1119987119995%_ _%rest1119984%_)
                   (_%else119989120003%_ (lambda () _%r119986%_))
                   (_%K119991120042%_
                    (lambda (_%rest1120006%_ _%x1120007%_)
                      (let* ((_%rest2120008120016%_ _%rest2119985%_)
                             (_%else120010120024%_ (lambda () _%r119986%_))
                             (_%K120012120030%_
                              (lambda (_%rest2120027%_ _%x2120028%_)
                                (_%lp119982%_
                                 _%rest1120006%_
                                 _%rest2120027%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f119973%_
                                    _%x1120007%_
                                    _%x2120028%_
                                    _%r119986%_))))))
                        (if (pair? _%rest2120008120016%_)
                            (let ((_%hd120013120033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2120008120016%_)))
                                  (_%tl120014120035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2120008120016%_))))
                              (let* ((_%x2120038%_ _%hd120013120033%_)
                                     (_%rest2120040%_ _%tl120014120035%_))
                                (_%K120012120030%_
                                 _%rest2120040%_
                                 _%x2120038%_)))
                            (_%else120010120024%_))))))
              (if (pair? _%rest1119987119995%_)
                  (let ((_%hd119992120045%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1119987119995%_)))
                        (_%tl119993120047%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1119987119995%_))))
                    (let* ((_%x1120050%_ _%hd119992120045%_)
                           (_%rest1120052%_ _%tl119993120047%_))
                      (_%K119991120042%_ _%rest1120052%_ _%x1120050%_)))
                  (_%else119989120003%_)))))))
    (define foldl2
      (lambda (_%f110829%_ _%iv110830%_ _%lst1110831%_ _%lst2110832%_)
        (if (procedure? _%f110829%_)
            (let ((_%f110836%_ _%f110829%_))
              (__foldl2
               _%f110836%_
               _%iv110830%_
               _%lst1110831%_
               _%lst2110832%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@297.15-297.16"
               'contract:
               'procedure?
               'value:
               _%f110829%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f119900%_ _%iv119901%_ _%lst119902%_)
        (let* ((_%f119904%_ _%f119900%_)
               (_%iv119907%_ _%iv119901%_)
               (_%lst119910%_ _%lst119902%_))
          (if (procedure? _%f119904%_)
              (let ((_%f119915%_ _%f119904%_))
                (__foldl1 _%f119915%_ _%iv119907%_ _%lst119910%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119904%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f119928%_ _%iv119929%_ _%lst1119930%_ _%lst2119931%_)
        (let* ((_%f119933%_ _%f119928%_)
               (_%iv119936%_ _%iv119929%_)
               (_%lst1119939%_ _%lst1119930%_)
               (_%lst2119942%_ _%lst2119931%_))
          (if (procedure? _%f119933%_)
              (let ((_%f119947%_ _%f119933%_))
                (__foldl2
                 _%f119947%_
                 _%iv119936%_
                 _%lst1119939%_
                 _%lst2119942%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119933%_)
                '#!void)))))
    (define foldl
      (lambda _g123504_
        (let ((_g123505_ (let () (declare (not safe)) (##length _g123504_))))
          (cond ((let () (declare (not safe)) (##fx= _g123505_ 3))
                 (apply foldl__0 _g123504_))
                ((let () (declare (not safe)) (##fx= _g123505_ 4))
                 (apply foldl__1 _g123504_))
                ((let () (declare (not safe)) (##fx>= _g123505_ 4))
                 (apply foldl* _g123504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g123504_))))))
    (define __foldl*
      (lambda (_%f119831%_ _%iv119832%_ . _%rest119833%_)
        (let ((_%f119836%_ _%f119831%_))
          (let _%recur119845%_ ((_%iv119847%_ _%iv119832%_)
                                (_%rest119848%_ _%rest119833%_))
            (if (let* ((_%f119850%_ pair?)
                       (_%lst119853%_ _%rest119848%_)
                       (_%f119858%_ _%f119850%_))
                  (__andmap1 _%f119858%_ _%lst119853%_))
                (_%recur119845%_
                 (let ((__tmp123506
                        (let* ((_%f119877%_
                                (lambda (_%xs119874%_ _%r119875%_)
                                  (cons (car _%xs119874%_) _%r119875%_)))
                               (_%iv119880%_ (list _%iv119847%_))
                               (_%lst119883%_ _%rest119848%_)
                               (_%f119888%_ _%f119877%_))
                          (__foldr1 _%f119888%_ _%iv119880%_ _%lst119883%_))))
                   (declare (not safe))
                   (##apply _%f119836%_ __tmp123506))
                 (map cdr _%rest119848%_))
                _%iv119847%_)))))
    (define foldl*
      (lambda (_%f110966%_ _%iv110967%_ . _%rest110968%_)
        (if (procedure? _%f110966%_)
            (let ((_%f110972%_ _%f110966%_))
              (declare (not safe))
              (##apply __foldl* _%f110972%_ _%iv110967%_ _%rest110968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@315.15-315.16"
               'contract:
               'procedure?
               'value:
               _%f110966%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f119780%_ _%iv119781%_ _%lst119782%_)
        (let ((_%f119785%_ _%f119780%_))
          (let _%recur119794%_ ((_%rest119796%_ _%lst119782%_))
            (let* ((_%rest119797119805%_ _%rest119796%_)
                   (_%else119799119813%_ (lambda () _%iv119781%_))
                   (_%K119801119819%_
                    (lambda (_%rest119816%_ _%x119817%_)
                      (let ((__tmp123507 (_%recur119794%_ _%rest119816%_)))
                        (declare (not safe))
                        (_%f119785%_ _%x119817%_ __tmp123507)))))
              (if (pair? _%rest119797119805%_)
                  (let ((_%hd119802119822%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119797119805%_)))
                        (_%tl119803119824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119797119805%_))))
                    (let* ((_%x119827%_ _%hd119802119822%_)
                           (_%rest119829%_ _%tl119803119824%_))
                      (_%K119801119819%_ _%rest119829%_ _%x119827%_)))
                  (_%else119799119813%_)))))))
    (define foldr1
      (lambda (_%f111102%_ _%iv111103%_ _%lst111104%_)
        (if (procedure? _%f111102%_)
            (let ((_%f111108%_ _%f111102%_))
              (__foldr1 _%f111108%_ _%iv111103%_ _%lst111104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@325.15-325.16"
               'contract:
               'procedure?
               'value:
               _%f111102%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f119694%_ _%iv119695%_ _%lst1119696%_ _%lst2119697%_)
        (let ((_%f119700%_ _%f119694%_))
          (let _%recur119709%_ ((_%rest1119711%_ _%lst1119696%_)
                                (_%rest2119712%_ _%lst2119697%_))
            (let* ((_%rest1119713119721%_ _%rest1119711%_)
                   (_%else119715119729%_ (lambda () _%iv119695%_))
                   (_%K119717119768%_
                    (lambda (_%rest1119732%_ _%x1119733%_)
                      (let* ((_%rest2119734119742%_ _%rest2119712%_)
                             (_%else119736119750%_ (lambda () _%iv119695%_))
                             (_%K119738119756%_
                              (lambda (_%rest2119753%_ _%x2119754%_)
                                (let ((__tmp123508
                                       (_%recur119709%_
                                        _%rest1119732%_
                                        _%rest2119753%_)))
                                  (declare (not safe))
                                  (_%f119700%_
                                   _%x1119733%_
                                   _%x2119754%_
                                   __tmp123508)))))
                        (if (pair? _%rest2119734119742%_)
                            (let ((_%hd119739119759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2119734119742%_)))
                                  (_%tl119740119761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2119734119742%_))))
                              (let* ((_%x2119764%_ _%hd119739119759%_)
                                     (_%rest2119766%_ _%tl119740119761%_))
                                (_%K119738119756%_
                                 _%rest2119766%_
                                 _%x2119764%_)))
                            (_%else119736119750%_))))))
              (if (pair? _%rest1119713119721%_)
                  (let ((_%hd119718119771%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1119713119721%_)))
                        (_%tl119719119773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1119713119721%_))))
                    (let* ((_%x1119776%_ _%hd119718119771%_)
                           (_%rest1119778%_ _%tl119719119773%_))
                      (_%K119717119768%_ _%rest1119778%_ _%x1119776%_)))
                  (_%else119715119729%_)))))))
    (define foldr2
      (lambda (_%f111238%_ _%iv111239%_ _%lst1111240%_ _%lst2111241%_)
        (if (procedure? _%f111238%_)
            (let ((_%f111245%_ _%f111238%_))
              (__foldr2
               _%f111245%_
               _%iv111239%_
               _%lst1111240%_
               _%lst2111241%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.15-332.16"
               'contract:
               'procedure?
               'value:
               _%f111238%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f119627%_ _%iv119628%_ _%lst119629%_)
        (let* ((_%f119631%_ _%f119627%_)
               (_%iv119634%_ _%iv119628%_)
               (_%lst119637%_ _%lst119629%_))
          (if (procedure? _%f119631%_)
              (let ((_%f119642%_ _%f119631%_))
                (__foldr1 _%f119642%_ _%iv119634%_ _%lst119637%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119631%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f119655%_ _%iv119656%_ _%lst1119657%_ _%lst2119658%_)
        (let* ((_%f119660%_ _%f119655%_)
               (_%iv119663%_ _%iv119656%_)
               (_%lst1119666%_ _%lst1119657%_)
               (_%lst2119669%_ _%lst2119658%_))
          (if (procedure? _%f119660%_)
              (let ((_%f119674%_ _%f119660%_))
                (__foldr2
                 _%f119674%_
                 _%iv119663%_
                 _%lst1119666%_
                 _%lst2119669%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119660%_)
                '#!void)))))
    (define foldr
      (lambda _g123509_
        (let ((_g123510_ (let () (declare (not safe)) (##length _g123509_))))
          (cond ((let () (declare (not safe)) (##fx= _g123510_ 3))
                 (apply foldr__0 _g123509_))
                ((let () (declare (not safe)) (##fx= _g123510_ 4))
                 (apply foldr__1 _g123509_))
                ((let () (declare (not safe)) (##fx>= _g123510_ 4))
                 (apply foldr* _g123509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g123509_))))))
    (define __foldr*
      (lambda (_%f119559%_ _%iv119560%_ . _%rest119561%_)
        (let ((_%f119564%_ _%f119559%_))
          (let _%recur119573%_ ((_%rest119575%_ _%rest119561%_))
            (if (let* ((_%f119577%_ pair?)
                       (_%lst119580%_ _%rest119575%_)
                       (_%f119585%_ _%f119577%_))
                  (__andmap1 _%f119585%_ _%lst119580%_))
                (let ((__tmp123511
                       (let* ((_%f119604%_
                               (lambda (_%xs119601%_ _%r119602%_)
                                 (cons (car _%xs119601%_) _%r119602%_)))
                              (_%iv119607%_
                               (list (_%recur119573%_
                                      (map cdr _%rest119575%_))))
                              (_%lst119610%_ _%rest119575%_)
                              (_%f119615%_ _%f119604%_))
                         (__foldr1 _%f119615%_ _%iv119607%_ _%lst119610%_))))
                  (declare (not safe))
                  (##apply _%f119564%_ __tmp123511))
                _%iv119560%_)))))
    (define foldr*
      (lambda (_%f111375%_ _%iv111376%_ . _%rest111377%_)
        (if (procedure? _%f111375%_)
            (let ((_%f111381%_ _%f111375%_))
              (declare (not safe))
              (##apply __foldr* _%f111381%_ _%iv111376%_ _%rest111377%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@350.15-350.16"
               'contract:
               'procedure?
               'value:
               _%f111375%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l119446%_)
        (let* ((_%l119447119460%_ _%l119446%_)
               (_%E119451119464%_
                (lambda ()
                  (error '"No clause matching"
                         _%l119447119460%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K119456119549%_
                 (lambda (_%r119547%_) (remove-nulls! _%r119547%_)))
                (_%K119453119536%_
                 (lambda (_%r119476%_)
                   (let _%loop119478%_ ((_%l119480%_ _%l119446%_)
                                        (_%r119481%_ _%r119476%_))
                     (let* ((_%r119482119495%_ _%r119481%_)
                            (_%E119486119499%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r119482119495%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K119491119526%_
                              (lambda (_%rr119524%_)
                                (let ((__tmp123513 _%l119480%_)
                                      (__tmp123512
                                       (remove-nulls! _%rr119524%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp123513 __tmp123512))))
                             (_%K119488119513%_
                              (lambda (_%rr119511%_)
                                (_%loop119478%_ _%r119481%_ _%rr119511%_)))
                             (_%K119487119504%_ (lambda () '#!void)))
                         (if (pair? _%r119482119495%_)
                             (let ((_%tl119493119531%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r119482119495%_)))
                                   (_%hd119492119529%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r119482119495%_))))
                               (if (null? _%hd119492119529%_)
                                   (let ((_%rr119534%_ _%tl119493119531%_))
                                     (_%K119491119526%_ _%rr119534%_))
                                   (let ((_%rr119519%_ _%tl119493119531%_))
                                     (_%K119488119513%_ _%rr119519%_))))
                             '#!void))))
                   _%l119446%_))
                (_%K119452119469%_ (lambda () _%l119446%_)))
            (if (pair? _%l119447119460%_)
                (let ((_%tl119458119554%_
                       (let () (declare (not safe)) (##cdr _%l119447119460%_)))
                      (_%hd119457119552%_
                       (let ()
                         (declare (not safe))
                         (##car _%l119447119460%_))))
                  (if (null? _%hd119457119552%_)
                      (let ((_%r119557%_ _%tl119458119554%_))
                        (remove-nulls! _%r119557%_))
                      (let ((_%r119542%_ _%tl119458119554%_))
                        (_%K119453119536%_ _%r119542%_))))
                (_%K119452119469%_))))))
    (define append1!
      (lambda (_%l119431%_ _%x119432%_)
        (let ((_%l2119435%_ (cons _%x119432%_ '())))
          (if (pair? _%l119431%_)
              (let ((_%l119437%_ _%l119431%_))
                (let ((__tmp123514
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l119437%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp123514 _%l2119435%_))
                _%l119437%_)
              _%l2119435%_))))
    (define __append-reverse-until
      (lambda (_%pred119373%_ _%rhead119374%_ _%tail119375%_)
        (let ((_%pred119378%_ _%pred119373%_))
          (let _%loop119387%_ ((_%rhead119389%_ _%rhead119374%_)
                               (_%tail119390%_ _%tail119375%_))
            (let* ((_%rhead119392119401%_ _%rhead119389%_)
                   (_%E119395119405%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead119392119401%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K119399119428%_ (lambda () (values '() _%tail119390%_)))
                    (_%K119396119412%_
                     (lambda (_%r119409%_ _%a119410%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred119378%_ _%a119410%_))
                           (values _%rhead119389%_ _%tail119390%_)
                           (_%loop119387%_
                            _%r119409%_
                            (cons _%a119410%_ _%tail119390%_))))))
                (let ((_%try-match119394119424%_
                       (lambda ()
                         (if (pair? _%rhead119392119401%_)
                             (let ((_%tl119398119417%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead119392119401%_)))
                                   (_%hd119397119415%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead119392119401%_))))
                               (let ((_%a119420%_ _%hd119397119415%_)
                                     (_%r119422%_ _%tl119398119417%_))
                                 (_%K119396119412%_ _%r119422%_ _%a119420%_)))
                             (_%E119395119405%_)))))
                  (if (null? _%rhead119392119401%_)
                      (_%K119399119428%_)
                      (_%try-match119394119424%_)))))))))
    (define append-reverse-until
      (lambda (_%pred111511%_ _%rhead111512%_ _%tail111513%_)
        (if (procedure? _%pred111511%_)
            (let ((_%pred111517%_ _%pred111511%_))
              (__append-reverse-until
               _%pred111517%_
               _%rhead111512%_
               _%tail111513%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@390.29-390.33"
               'contract:
               'procedure?
               'value:
               _%pred111511%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f119322%_ _%lst119323%_)
        (let ((_%f119326%_ _%f119322%_))
          (let _%lp119335%_ ((_%rest119337%_ _%lst119323%_))
            (let* ((_%rest119339119347%_ _%rest119337%_)
                   (_%else119341119355%_ (lambda () '#t))
                   (_%K119343119361%_
                    (lambda (_%rest119358%_ _%x119359%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f119326%_ _%x119359%_))
                          (_%lp119335%_ _%rest119358%_)
                          '#f))))
              (if (pair? _%rest119339119347%_)
                  (let ((_%hd119344119364%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119339119347%_)))
                        (_%tl119345119366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119339119347%_))))
                    (let* ((_%x119369%_ _%hd119344119364%_)
                           (_%rest119371%_ _%tl119345119366%_))
                      (_%K119343119361%_ _%rest119371%_ _%x119369%_)))
                  (_%else119341119355%_)))))))
    (define andmap1
      (lambda (_%f111647%_ _%lst111648%_)
        (if (procedure? _%f111647%_)
            (let ((_%f111652%_ _%f111647%_))
              (__andmap1 _%f111652%_ _%lst111648%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@401.16-401.17"
               'contract:
               'procedure?
               'value:
               _%f111647%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f119236%_ _%lst1119237%_ _%lst2119238%_)
        (let ((_%f119241%_ _%f119236%_))
          (let _%lp119250%_ ((_%rest1119252%_ _%lst1119237%_)
                             (_%rest2119253%_ _%lst2119238%_))
            (let* ((_%rest1119255119263%_ _%rest1119252%_)
                   (_%else119257119271%_ (lambda () '#t))
                   (_%K119259119310%_
                    (lambda (_%rest1119274%_ _%x1119275%_)
                      (let* ((_%rest2119276119284%_ _%rest2119253%_)
                             (_%else119278119292%_ (lambda () '#t))
                             (_%K119280119298%_
                              (lambda (_%rest2119295%_ _%x2119296%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f119241%_ _%x1119275%_ _%x2119296%_))
                                    (_%lp119250%_
                                     _%rest1119274%_
                                     _%rest2119295%_)
                                    '#f))))
                        (if (pair? _%rest2119276119284%_)
                            (let ((_%hd119281119301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2119276119284%_)))
                                  (_%tl119282119303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2119276119284%_))))
                              (let* ((_%x2119306%_ _%hd119281119301%_)
                                     (_%rest2119308%_ _%tl119282119303%_))
                                (_%K119280119298%_
                                 _%rest2119308%_
                                 _%x2119306%_)))
                            (_%else119278119292%_))))))
              (if (pair? _%rest1119255119263%_)
                  (let ((_%hd119260119313%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1119255119263%_)))
                        (_%tl119261119315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1119255119263%_))))
                    (let* ((_%x1119318%_ _%hd119260119313%_)
                           (_%rest1119320%_ _%tl119261119315%_))
                      (_%K119259119310%_ _%rest1119320%_ _%x1119318%_)))
                  (_%else119257119271%_)))))))
    (define andmap2
      (lambda (_%f111782%_ _%lst1111783%_ _%lst2111784%_)
        (if (procedure? _%f111782%_)
            (let ((_%f111788%_ _%f111782%_))
              (__andmap2 _%f111788%_ _%lst1111783%_ _%lst2111784%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@410.16-410.17"
               'contract:
               'procedure?
               'value:
               _%f111782%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f119180%_ _%lst119181%_)
        (let* ((_%f119183%_ _%f119180%_) (_%lst119186%_ _%lst119181%_))
          (if (procedure? _%f119183%_)
              (let ((_%f119191%_ _%f119183%_))
                (__andmap1 _%f119191%_ _%lst119186%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119183%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f119203%_ _%lst1119204%_ _%lst2119205%_)
        (let* ((_%f119207%_ _%f119203%_)
               (_%lst1119210%_ _%lst1119204%_)
               (_%lst2119213%_ _%lst2119205%_))
          (if (procedure? _%f119207%_)
              (let ((_%f119218%_ _%f119207%_))
                (__andmap2 _%f119218%_ _%lst1119210%_ _%lst2119213%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119207%_)
                '#!void)))))
    (define andmap
      (lambda _g123515_
        (let ((_g123516_ (let () (declare (not safe)) (##length _g123515_))))
          (cond ((let () (declare (not safe)) (##fx= _g123516_ 2))
                 (apply andmap__0 _g123515_))
                ((let () (declare (not safe)) (##fx= _g123516_ 3))
                 (apply andmap__1 _g123515_))
                ((let () (declare (not safe)) (##fx>= _g123516_ 3))
                 (apply andmap* _g123515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g123515_))))))
    (define __andmap*
      (lambda (_%f119137%_ . _%rest119138%_)
        (let ((_%f119141%_ _%f119137%_))
          (let _%recur119150%_ ((_%rest119152%_ _%rest119138%_))
            (if (let* ((_%f119155%_ pair?)
                       (_%lst119158%_ _%rest119152%_)
                       (_%f119163%_ _%f119155%_))
                  (__andmap1 _%f119163%_ _%lst119158%_))
                (if (let ((__tmp123517 (map car _%rest119152%_)))
                      (declare (not safe))
                      (##apply _%f119141%_ __tmp123517))
                    (_%recur119150%_ (map cdr _%rest119152%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f111918%_ . _%rest111919%_)
        (if (procedure? _%f111918%_)
            (let ((_%f111923%_ _%f111918%_))
              (declare (not safe))
              (##apply __andmap* _%f111923%_ _%rest111919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@430.16-430.17"
               'contract:
               'procedure?
               'value:
               _%f111918%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f119084%_ _%lst119085%_)
        (let ((_%f119088%_ _%f119084%_))
          (let _%lp119097%_ ((_%rest119099%_ _%lst119085%_))
            (let* ((_%rest119100119108%_ _%rest119099%_)
                   (_%else119102119116%_ (lambda () '#f))
                   (_%K119104119125%_
                    (lambda (_%rest119119%_ _%x119120%_)
                      (let ((_%$e119122%_
                             (let ()
                               (declare (not safe))
                               (_%f119088%_ _%x119120%_))))
                        (if _%$e119122%_
                            _%$e119122%_
                            (_%lp119097%_ _%rest119119%_))))))
              (if (pair? _%rest119100119108%_)
                  (let ((_%hd119105119128%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119100119108%_)))
                        (_%tl119106119130%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119100119108%_))))
                    (let* ((_%x119133%_ _%hd119105119128%_)
                           (_%rest119135%_ _%tl119106119130%_))
                      (_%K119104119125%_ _%rest119135%_ _%x119133%_)))
                  (_%else119102119116%_)))))))
    (define ormap1
      (lambda (_%f112053%_ _%lst112054%_)
        (if (procedure? _%f112053%_)
            (let ((_%f112058%_ _%f112053%_))
              (__ormap1 _%f112058%_ _%lst112054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f112053%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f118996%_ _%lst1118997%_ _%lst2118998%_)
        (let ((_%f119001%_ _%f118996%_))
          (let _%lp119010%_ ((_%rest1119012%_ _%lst1118997%_)
                             (_%rest2119013%_ _%lst2118998%_))
            (let* ((_%rest1119014119022%_ _%rest1119012%_)
                   (_%else119016119030%_ (lambda () '#f))
                   (_%K119018119072%_
                    (lambda (_%rest1119033%_ _%x1119034%_)
                      (let* ((_%rest2119035119043%_ _%rest2119013%_)
                             (_%else119037119051%_ (lambda () '#f))
                             (_%K119039119060%_
                              (lambda (_%rest2119054%_ _%x2119055%_)
                                (let ((_%$e119057%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f119001%_
                                          _%x1119034%_
                                          _%x2119055%_))))
                                  (if _%$e119057%_
                                      _%$e119057%_
                                      (_%lp119010%_
                                       _%rest1119033%_
                                       _%rest2119054%_))))))
                        (if (pair? _%rest2119035119043%_)
                            (let ((_%hd119040119063%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2119035119043%_)))
                                  (_%tl119041119065%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2119035119043%_))))
                              (let* ((_%x2119068%_ _%hd119040119063%_)
                                     (_%rest2119070%_ _%tl119041119065%_))
                                (_%K119039119060%_
                                 _%rest2119070%_
                                 _%x2119068%_)))
                            (_%else119037119051%_))))))
              (if (pair? _%rest1119014119022%_)
                  (let ((_%hd119019119075%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1119014119022%_)))
                        (_%tl119020119077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1119014119022%_))))
                    (let* ((_%x1119080%_ _%hd119019119075%_)
                           (_%rest1119082%_ _%tl119020119077%_))
                      (_%K119018119072%_ _%rest1119082%_ _%x1119080%_)))
                  (_%else119016119030%_)))))))
    (define ormap2
      (lambda (_%f112188%_ _%lst1112189%_ _%lst2112190%_)
        (if (procedure? _%f112188%_)
            (let ((_%f112194%_ _%f112188%_))
              (__ormap2 _%f112194%_ _%lst1112189%_ _%lst2112190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.15-446.16"
               'contract:
               'procedure?
               'value:
               _%f112188%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f118940%_ _%lst118941%_)
        (let* ((_%f118943%_ _%f118940%_) (_%lst118946%_ _%lst118941%_))
          (if (procedure? _%f118943%_)
              (let ((_%f118951%_ _%f118943%_))
                (__ormap1 _%f118951%_ _%lst118946%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118943%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f118963%_ _%lst1118964%_ _%lst2118965%_)
        (let* ((_%f118967%_ _%f118963%_)
               (_%lst1118970%_ _%lst1118964%_)
               (_%lst2118973%_ _%lst2118965%_))
          (if (procedure? _%f118967%_)
              (let ((_%f118978%_ _%f118967%_))
                (__ormap2 _%f118978%_ _%lst1118970%_ _%lst2118973%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118967%_)
                '#!void)))))
    (define ormap
      (lambda _g123518_
        (let ((_g123519_ (let () (declare (not safe)) (##length _g123518_))))
          (cond ((let () (declare (not safe)) (##fx= _g123519_ 2))
                 (apply ormap__0 _g123518_))
                ((let () (declare (not safe)) (##fx= _g123519_ 3))
                 (apply ormap__1 _g123518_))
                ((let () (declare (not safe)) (##fx>= _g123519_ 3))
                 (apply ormap* _g123518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g123518_))))))
    (define __ormap*
      (lambda (_%f118896%_ . _%rest118897%_)
        (let ((_%f118900%_ _%f118896%_))
          (let _%recur118909%_ ((_%rest118911%_ _%rest118897%_))
            (if (let* ((_%f118913%_ pair?)
                       (_%lst118916%_ _%rest118911%_)
                       (_%f118921%_ _%f118913%_))
                  (__andmap1 _%f118921%_ _%lst118916%_))
                (let ((_%$e118937%_
                       (let ((__tmp123520 (map car _%rest118911%_)))
                         (declare (not safe))
                         (##apply _%f118900%_ __tmp123520))))
                  (if _%$e118937%_
                      _%$e118937%_
                      (_%recur118909%_ (map cdr _%rest118911%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f112324%_ . _%rest112325%_)
        (if (procedure? _%f112324%_)
            (let ((_%f112329%_ _%f112324%_))
              (declare (not safe))
              (##apply __ormap* _%f112329%_ _%rest112325%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@464.15-464.16"
               'contract:
               'procedure?
               'value:
               _%f112324%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f118839%_ _%lst118840%_)
        (let ((_%f118843%_ _%f118839%_))
          (let _%recur118852%_ ((_%rest118854%_ _%lst118840%_))
            (let* ((_%rest118856118864%_ _%rest118854%_)
                   (_%else118858118872%_ (lambda () '()))
                   (_%K118860118884%_
                    (lambda (_%rest118875%_ _%x118876%_)
                      (let ((_%$e118878%_
                             (let ()
                               (declare (not safe))
                               (_%f118843%_ _%x118876%_))))
                        (if _%$e118878%_
                            ((lambda (_%r118881%_)
                               (cons _%r118881%_
                                     (_%recur118852%_ _%rest118875%_)))
                             _%$e118878%_)
                            (_%recur118852%_ _%rest118875%_))))))
              (if (pair? _%rest118856118864%_)
                  (let ((_%hd118861118887%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest118856118864%_)))
                        (_%tl118862118889%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest118856118864%_))))
                    (let* ((_%x118892%_ _%hd118861118887%_)
                           (_%rest118894%_ _%tl118862118889%_))
                      (_%K118860118884%_ _%rest118894%_ _%x118892%_)))
                  (_%else118858118872%_)))))))
    (define filter-map1
      (lambda (_%f112459%_ _%lst112460%_)
        (if (procedure? _%f112459%_)
            (let ((_%f112464%_ _%f112459%_))
              (__filter-map1 _%f112464%_ _%lst112460%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f112459%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f118747%_ _%lst1118748%_ _%lst2118749%_)
        (let ((_%f118752%_ _%f118747%_))
          (let _%recur118761%_ ((_%rest1118763%_ _%lst1118748%_)
                                (_%rest2118764%_ _%lst2118749%_))
            (let* ((_%rest1118766118774%_ _%rest1118763%_)
                   (_%else118768118782%_ (lambda () '()))
                   (_%K118770118827%_
                    (lambda (_%rest1118785%_ _%x1118786%_)
                      (let* ((_%rest2118787118795%_ _%rest2118764%_)
                             (_%else118789118803%_ (lambda () '()))
                             (_%K118791118815%_
                              (lambda (_%rest2118806%_ _%x2118807%_)
                                (let ((_%$e118809%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f118752%_
                                          _%x1118786%_
                                          _%x2118807%_))))
                                  (if _%$e118809%_
                                      ((lambda (_%r118812%_)
                                         (cons _%r118812%_
                                               (_%recur118761%_
                                                _%rest1118785%_
                                                _%rest2118806%_)))
                                       _%$e118809%_)
                                      (_%recur118761%_
                                       _%rest1118785%_
                                       _%rest2118806%_))))))
                        (if (pair? _%rest2118787118795%_)
                            (let ((_%hd118792118818%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2118787118795%_)))
                                  (_%tl118793118820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2118787118795%_))))
                              (let* ((_%x2118823%_ _%hd118792118818%_)
                                     (_%rest2118825%_ _%tl118793118820%_))
                                (_%K118791118815%_
                                 _%rest2118825%_
                                 _%x2118823%_)))
                            (_%else118789118803%_))))))
              (if (pair? _%rest1118766118774%_)
                  (let ((_%hd118771118830%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1118766118774%_)))
                        (_%tl118772118832%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1118766118774%_))))
                    (let* ((_%x1118835%_ _%hd118771118830%_)
                           (_%rest1118837%_ _%tl118772118832%_))
                      (_%K118770118827%_ _%rest1118837%_ _%x1118835%_)))
                  (_%else118768118782%_)))))))
    (define filter-map2
      (lambda (_%f112594%_ _%lst1112595%_ _%lst2112596%_)
        (if (procedure? _%f112594%_)
            (let ((_%f112600%_ _%f112594%_))
              (__filter-map2 _%f112600%_ _%lst1112595%_ _%lst2112596%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.20-482.21"
               'contract:
               'procedure?
               'value:
               _%f112594%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f118691%_ _%lst118692%_)
        (let* ((_%f118694%_ _%f118691%_) (_%lst118697%_ _%lst118692%_))
          (if (procedure? _%f118694%_)
              (let ((_%f118702%_ _%f118694%_))
                (__filter-map1 _%f118702%_ _%lst118697%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118694%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f118714%_ _%lst1118715%_ _%lst2118716%_)
        (let* ((_%f118718%_ _%f118714%_)
               (_%lst1118721%_ _%lst1118715%_)
               (_%lst2118724%_ _%lst2118716%_))
          (if (procedure? _%f118718%_)
              (let ((_%f118729%_ _%f118718%_))
                (__filter-map2 _%f118729%_ _%lst1118721%_ _%lst2118724%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118718%_)
                '#!void)))))
    (define filter-map
      (lambda _g123521_
        (let ((_g123522_ (let () (declare (not safe)) (##length _g123521_))))
          (cond ((let () (declare (not safe)) (##fx= _g123522_ 2))
                 (apply filter-map__0 _g123521_))
                ((let () (declare (not safe)) (##fx= _g123522_ 3))
                 (apply filter-map__1 _g123521_))
                ((let () (declare (not safe)) (##fx>= _g123522_ 3))
                 (apply filter-map* _g123521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g123521_))))))
    (define __filter-map*
      (lambda (_%f118642%_ . _%rest118643%_)
        (let ((_%f118646%_ _%f118642%_))
          (let _%recur118655%_ ((_%rest118657%_ _%rest118643%_))
            (if (let* ((_%f118660%_ pair?)
                       (_%lst118663%_ _%rest118657%_)
                       (_%f118668%_ _%f118660%_))
                  (__andmap1 _%f118668%_ _%lst118663%_))
                (let ((_%$e118685%_
                       (let ((__tmp123523 (map car _%rest118657%_)))
                         (declare (not safe))
                         (##apply _%f118646%_ __tmp123523))))
                  (if _%$e118685%_
                      ((lambda (_%r118688%_)
                         (cons _%r118688%_
                               (_%recur118655%_ (map cdr _%rest118657%_))))
                       _%$e118685%_)
                      (_%recur118655%_ (map cdr _%rest118657%_))))
                '())))))
    (define filter-map*
      (lambda (_%f112730%_ . _%rest112731%_)
        (if (procedure? _%f112730%_)
            (let ((_%f112735%_ _%f112730%_))
              (declare (not safe))
              (##apply __filter-map* _%f112735%_ _%rest112731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@504.20-504.21"
               'contract:
               'procedure?
               'value:
               _%f112730%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key118618%_ _%lst118620%_ _%default118622%_)
        (let ((_%$e118625%_
               (if (pair? _%lst118620%_)
                   (assq _%key118618%_ _%lst118620%_)
                   '#f)))
          (if _%$e118625%_
              (cdr _%$e118625%_)
              (if (procedure? _%default118622%_)
                  (_%default118622%_ _%key118618%_)
                  _%default118622%_)))))
    (define agetq__0
      (lambda (_%key118633%_ _%lst118634%_)
        (let ((_%default118636%_ '#f))
          (agetq__% _%key118633%_ _%lst118634%_ _%default118636%_))))
    (define agetq
      (lambda _g123524_
        (let ((_g123525_ (let () (declare (not safe)) (##length _g123524_))))
          (cond ((let () (declare (not safe)) (##fx= _g123525_ 2))
                 (apply agetq__0 _g123524_))
                ((let () (declare (not safe)) (##fx= _g123525_ 3))
                 (apply agetq__% _g123524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g123524_))))))
    (define agetv__%
      (lambda (_%key118593%_ _%lst118595%_ _%default118597%_)
        (let ((_%$e118600%_
               (if (pair? _%lst118595%_)
                   (assv _%key118593%_ _%lst118595%_)
                   '#f)))
          (if _%$e118600%_
              (cdr _%$e118600%_)
              (if (procedure? _%default118597%_)
                  (_%default118597%_ _%key118593%_)
                  _%default118597%_)))))
    (define agetv__0
      (lambda (_%key118608%_ _%lst118609%_)
        (let ((_%default118611%_ '#f))
          (agetv__% _%key118608%_ _%lst118609%_ _%default118611%_))))
    (define agetv
      (lambda _g123526_
        (let ((_g123527_ (let () (declare (not safe)) (##length _g123526_))))
          (cond ((let () (declare (not safe)) (##fx= _g123527_ 2))
                 (apply agetv__0 _g123526_))
                ((let () (declare (not safe)) (##fx= _g123527_ 3))
                 (apply agetv__% _g123526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g123526_))))))
    (define aget__%
      (lambda (_%key118568%_ _%lst118570%_ _%default118572%_)
        (let ((_%$e118575%_
               (if (pair? _%lst118570%_)
                   (assoc _%key118568%_ _%lst118570%_)
                   '#f)))
          (if _%$e118575%_
              (cdr _%$e118575%_)
              (if (procedure? _%default118572%_)
                  (_%default118572%_ _%key118568%_)
                  _%default118572%_)))))
    (define aget__0
      (lambda (_%key118583%_ _%lst118584%_)
        (let ((_%default118586%_ '#f))
          (aget__% _%key118583%_ _%lst118584%_ _%default118586%_))))
    (define aget
      (lambda _g123528_
        (let ((_g123529_ (let () (declare (not safe)) (##length _g123528_))))
          (cond ((let () (declare (not safe)) (##fx= _g123529_ 2))
                 (apply aget__0 _g123528_))
                ((let () (declare (not safe)) (##fx= _g123529_ 3))
                 (apply aget__% _g123528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g123528_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key118497%_ _%lst118499%_ _%default118501%_)
        (let _%lp118504%_ ((_%rest118507%_ _%lst118499%_))
          (let* ((_%rest118509118519%_ _%rest118507%_)
                 (_%else118511118527%_
                  (lambda ()
                    (if (procedure? _%default118501%_)
                        (_%default118501%_ _%key118497%_)
                        _%default118501%_)))
                 (_%K118513118536%_
                  (lambda (_%rest118530%_ _%v118531%_ _%k118533%_)
                    (if (eq? _%k118533%_ _%key118497%_)
                        _%v118531%_
                        (_%lp118504%_ _%rest118530%_)))))
            (if (pair? _%rest118509118519%_)
                (let ((_%hd118514118539%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118509118519%_)))
                      (_%tl118515118541%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118509118519%_))))
                  (let ((_%k118544%_ _%hd118514118539%_))
                    (if (pair? _%tl118515118541%_)
                        (let ((_%hd118516118546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl118515118541%_)))
                              (_%tl118517118548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl118515118541%_))))
                          (let* ((_%v118551%_ _%hd118516118546%_)
                                 (_%rest118553%_ _%tl118517118548%_))
                            (_%K118513118536%_
                             _%rest118553%_
                             _%v118551%_
                             _%k118544%_)))
                        (_%else118511118527%_))))
                (_%else118511118527%_))))))
    (define pgetq__0
      (lambda (_%key118558%_ _%lst118559%_)
        (let ((_%default118561%_ '#f))
          (pgetq__% _%key118558%_ _%lst118559%_ _%default118561%_))))
    (define pgetq
      (lambda _g123530_
        (let ((_g123531_ (let () (declare (not safe)) (##length _g123530_))))
          (cond ((let () (declare (not safe)) (##fx= _g123531_ 2))
                 (apply pgetq__0 _g123530_))
                ((let () (declare (not safe)) (##fx= _g123531_ 3))
                 (apply pgetq__% _g123530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g123530_))))))
    (define pgetv__%
      (lambda (_%key118426%_ _%lst118428%_ _%default118430%_)
        (let _%lp118433%_ ((_%rest118436%_ _%lst118428%_))
          (let* ((_%rest118438118448%_ _%rest118436%_)
                 (_%else118440118456%_
                  (lambda ()
                    (if (procedure? _%default118430%_)
                        (_%default118430%_ _%key118426%_)
                        _%default118430%_)))
                 (_%K118442118465%_
                  (lambda (_%rest118459%_ _%v118460%_ _%k118462%_)
                    (if (eqv? _%k118462%_ _%key118426%_)
                        _%v118460%_
                        (_%lp118433%_ _%rest118459%_)))))
            (if (pair? _%rest118438118448%_)
                (let ((_%hd118443118468%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118438118448%_)))
                      (_%tl118444118470%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118438118448%_))))
                  (let ((_%k118473%_ _%hd118443118468%_))
                    (if (pair? _%tl118444118470%_)
                        (let ((_%hd118445118475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl118444118470%_)))
                              (_%tl118446118477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl118444118470%_))))
                          (let* ((_%v118480%_ _%hd118445118475%_)
                                 (_%rest118482%_ _%tl118446118477%_))
                            (_%K118442118465%_
                             _%rest118482%_
                             _%v118480%_
                             _%k118473%_)))
                        (_%else118440118456%_))))
                (_%else118440118456%_))))))
    (define pgetv__0
      (lambda (_%key118487%_ _%lst118488%_)
        (let ((_%default118490%_ '#f))
          (pgetv__% _%key118487%_ _%lst118488%_ _%default118490%_))))
    (define pgetv
      (lambda _g123532_
        (let ((_g123533_ (let () (declare (not safe)) (##length _g123532_))))
          (cond ((let () (declare (not safe)) (##fx= _g123533_ 2))
                 (apply pgetv__0 _g123532_))
                ((let () (declare (not safe)) (##fx= _g123533_ 3))
                 (apply pgetv__% _g123532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g123532_))))))
    (define pget__%
      (lambda (_%key118355%_ _%lst118357%_ _%default118359%_)
        (let _%lp118362%_ ((_%rest118365%_ _%lst118357%_))
          (let* ((_%rest118367118377%_ _%rest118365%_)
                 (_%else118369118385%_
                  (lambda ()
                    (if (procedure? _%default118359%_)
                        (_%default118359%_ _%key118355%_)
                        _%default118359%_)))
                 (_%K118371118394%_
                  (lambda (_%rest118388%_ _%v118389%_ _%k118391%_)
                    (if (equal? _%k118391%_ _%key118355%_)
                        _%v118389%_
                        (_%lp118362%_ _%rest118388%_)))))
            (if (pair? _%rest118367118377%_)
                (let ((_%hd118372118397%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118367118377%_)))
                      (_%tl118373118399%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118367118377%_))))
                  (let ((_%k118402%_ _%hd118372118397%_))
                    (if (pair? _%tl118373118399%_)
                        (let ((_%hd118374118404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl118373118399%_)))
                              (_%tl118375118406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl118373118399%_))))
                          (let* ((_%v118409%_ _%hd118374118404%_)
                                 (_%rest118411%_ _%tl118375118406%_))
                            (_%K118371118394%_
                             _%rest118411%_
                             _%v118409%_
                             _%k118402%_)))
                        (_%else118369118385%_))))
                (_%else118369118385%_))))))
    (define pget__0
      (lambda (_%key118416%_ _%lst118417%_)
        (let ((_%default118419%_ '#f))
          (pget__% _%key118416%_ _%lst118417%_ _%default118419%_))))
    (define pget
      (lambda _g123534_
        (let ((_g123535_ (let () (declare (not safe)) (##length _g123534_))))
          (cond ((let () (declare (not safe)) (##fx= _g123535_ 2))
                 (apply pget__0 _g123534_))
                ((let () (declare (not safe)) (##fx= _g123535_ 3))
                 (apply pget__% _g123534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g123534_))))))
    (define __find
      (lambda (_%pred118315%_ _%lst118316%_)
        (let* ((_%pred118319%_ _%pred118315%_)
               (_%$e118350%_
                (let* ((_%proc118328%_ _%pred118319%_)
                       (_%lst118331%_ _%lst118316%_)
                       (_%proc118336%_ _%proc118328%_))
                  (__memf _%proc118336%_ _%lst118331%_))))
          (if _%$e118350%_
              (let () (declare (not safe)) (##car _%$e118350%_))
              '#f))))
    (define find
      (lambda (_%pred113027%_ _%lst113028%_)
        (if (procedure? _%pred113027%_)
            (let ((_%pred113032%_ _%pred113027%_))
              (__find _%pred113032%_ _%lst113028%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@550.13-550.17"
               'contract:
               'procedure?
               'value:
               _%pred113027%_)
              '#!void))))
    (define __memf
      (lambda (_%proc118265%_ _%lst118266%_)
        (let ((_%proc118269%_ _%proc118265%_))
          (let _%lp118278%_ ((_%rest118280%_ _%lst118266%_))
            (let* ((_%rest118281118289%_ _%rest118280%_)
                   (_%else118283118297%_ (lambda () '#f))
                   (_%K118285118303%_
                    (lambda (_%tl118300%_ _%hd118301%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc118269%_ _%hd118301%_))
                          _%rest118280%_
                          (_%lp118278%_ _%tl118300%_)))))
              (if (pair? _%rest118281118289%_)
                  (let ((_%hd118286118306%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest118281118289%_)))
                        (_%tl118287118308%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest118281118289%_))))
                    (let* ((_%hd118311%_ _%hd118286118306%_)
                           (_%tl118313%_ _%tl118287118308%_))
                      (_%K118285118303%_ _%tl118313%_ _%hd118311%_)))
                  (_%else118283118297%_)))))))
    (define memf
      (lambda (_%proc113162%_ _%lst113163%_)
        (if (procedure? _%proc113162%_)
            (let ((_%proc113167%_ _%proc113162%_))
              (__memf _%proc113167%_ _%lst113163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@555.13-555.17"
               'contract:
               'procedure?
               'value:
               _%proc113162%_)
              '#!void))))
    (define remove1
      (lambda (_%el118188%_ _%lst118190%_)
        (let _%lp118193%_ ((_%rest118196%_ _%lst118190%_) (_%r118198%_ '()))
          (let* ((_%rest118200118208%_ _%rest118196%_)
                 (_%else118202118216%_ (lambda () _%lst118190%_))
                 (_%K118204118253%_
                  (lambda (_%rest118219%_ _%hd118220%_)
                    (if (equal? _%el118188%_ _%hd118220%_)
                        (let* ((_%f118223%_ cons)
                               (_%iv118226%_ _%rest118219%_)
                               (_%lst118229%_ _%r118198%_)
                               (_%f118234%_ _%f118223%_))
                          (__foldl1 _%f118234%_ _%iv118226%_ _%lst118229%_))
                        (_%lp118193%_
                         _%rest118219%_
                         (cons _%hd118220%_ _%r118198%_))))))
            (if (pair? _%rest118200118208%_)
                (let ((_%hd118205118256%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118200118208%_)))
                      (_%tl118206118258%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118200118208%_))))
                  (let* ((_%hd118261%_ _%hd118205118256%_)
                         (_%rest118263%_ _%tl118206118258%_))
                    (_%K118204118253%_ _%rest118263%_ _%hd118261%_)))
                (_%else118202118216%_))))))
    (define remv1
      (lambda (_%el118111%_ _%lst118113%_)
        (let _%lp118116%_ ((_%rest118119%_ _%lst118113%_) (_%r118121%_ '()))
          (let* ((_%rest118123118131%_ _%rest118119%_)
                 (_%else118125118139%_ (lambda () _%lst118113%_))
                 (_%K118127118176%_
                  (lambda (_%rest118142%_ _%hd118143%_)
                    (if (eqv? _%el118111%_ _%hd118143%_)
                        (let* ((_%f118146%_ cons)
                               (_%iv118149%_ _%rest118142%_)
                               (_%lst118152%_ _%r118121%_)
                               (_%f118157%_ _%f118146%_))
                          (__foldl1 _%f118157%_ _%iv118149%_ _%lst118152%_))
                        (_%lp118116%_
                         _%rest118142%_
                         (cons _%hd118143%_ _%r118121%_))))))
            (if (pair? _%rest118123118131%_)
                (let ((_%hd118128118179%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118123118131%_)))
                      (_%tl118129118181%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118123118131%_))))
                  (let* ((_%hd118184%_ _%hd118128118179%_)
                         (_%rest118186%_ _%tl118129118181%_))
                    (_%K118127118176%_ _%rest118186%_ _%hd118184%_)))
                (_%else118125118139%_))))))
    (define remq1
      (lambda (_%el118034%_ _%lst118036%_)
        (let _%lp118039%_ ((_%rest118042%_ _%lst118036%_) (_%r118044%_ '()))
          (let* ((_%rest118046118054%_ _%rest118042%_)
                 (_%else118048118062%_ (lambda () _%lst118036%_))
                 (_%K118050118099%_
                  (lambda (_%rest118065%_ _%hd118066%_)
                    (if (eq? _%el118034%_ _%hd118066%_)
                        (let* ((_%f118069%_ cons)
                               (_%iv118072%_ _%rest118065%_)
                               (_%lst118075%_ _%r118044%_)
                               (_%f118080%_ _%f118069%_))
                          (__foldl1 _%f118080%_ _%iv118072%_ _%lst118075%_))
                        (_%lp118039%_
                         _%rest118065%_
                         (cons _%hd118066%_ _%r118044%_))))))
            (if (pair? _%rest118046118054%_)
                (let ((_%hd118051118102%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest118046118054%_)))
                      (_%tl118052118104%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest118046118054%_))))
                  (let* ((_%hd118107%_ _%hd118051118102%_)
                         (_%rest118109%_ _%tl118052118104%_))
                    (_%K118050118099%_ _%rest118109%_ _%hd118107%_)))
                (_%else118048118062%_))))))
    (define __remf
      (lambda (_%proc117951%_ _%lst117952%_)
        (let ((_%proc117955%_ _%proc117951%_))
          (let _%lp117964%_ ((_%rest117966%_ _%lst117952%_) (_%r117967%_ '()))
            (let* ((_%rest117968117976%_ _%rest117966%_)
                   (_%else117970117984%_ (lambda () _%lst117952%_))
                   (_%K117972118022%_
                    (lambda (_%rest117987%_ _%hd117988%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc117955%_ _%hd117988%_))
                          (let* ((_%f117990%_ cons)
                                 (_%iv117993%_ _%rest117987%_)
                                 (_%lst117996%_ _%r117967%_)
                                 (_%f118001%_ _%f117990%_))
                            (__foldl1 _%f118001%_ _%iv117993%_ _%lst117996%_))
                          (_%lp117964%_
                           _%rest117987%_
                           (cons _%hd117988%_ _%r117967%_))))))
              (if (pair? _%rest117968117976%_)
                  (let ((_%hd117973118025%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest117968117976%_)))
                        (_%tl117974118027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest117968117976%_))))
                    (let* ((_%hd118030%_ _%hd117973118025%_)
                           (_%rest118032%_ _%tl117974118027%_))
                      (_%K117972118022%_ _%rest118032%_ _%hd118030%_)))
                  (_%else117970117984%_)))))))
    (define remf
      (lambda (_%proc113378%_ _%lst113379%_)
        (if (procedure? _%proc113378%_)
            (let ((_%proc113383%_ _%proc113378%_))
              (__remf _%proc113383%_ _%lst113379%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.17"
               'contract:
               'procedure?
               'value:
               _%proc113378%_)
              '#!void))))
    (define __1+
      (lambda (_%x117939%_)
        (let ((_%x117942%_ _%x117939%_)) (+ _%x117942%_ '1))))
    (define 1+
      (lambda (_%x113513%_)
        (if (number? _%x113513%_)
            (let ((_%x113517%_ _%x113513%_)) (__1+ _%x113517%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.11-586.12"
               'contract:
               'number?
               'value:
               _%x113513%_)
              '#!void))))
    (define __1-
      (lambda (_%x117927%_)
        (let ((_%x117930%_ _%x117927%_)) (- _%x117930%_ '1))))
    (define 1-
      (lambda (_%x113647%_)
        (if (number? _%x113647%_)
            (let ((_%x113651%_ _%x113647%_)) (__1- _%x113651%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@594.11-594.12"
               'contract:
               'number?
               'value:
               _%x113647%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x117915%_)
        (let ((_%x117918%_ _%x117915%_))
          (declare (not safe))
          (##fx+ _%x117918%_ '1))))
    (define fx1+
      (lambda (_%x113781%_)
        (if (fixnum? _%x113781%_)
            (let ((_%x113785%_ _%x113781%_)) (__fx1+ _%x113785%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@602.13-602.14"
               'contract:
               'fixnum?
               'value:
               _%x113781%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x117903%_)
        (let ((_%x117906%_ _%x117903%_))
          (declare (not safe))
          (##fx- _%x117906%_ '1))))
    (define fx1-
      (lambda (_%x113915%_)
        (if (fixnum? _%x113915%_)
            (let ((_%x113919%_ _%x113915%_)) (__fx1- _%x113919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@610.13-610.14"
               'contract:
               'fixnum?
               'value:
               _%x113915%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x117900%_)
        (if (fixnum? _%x117900%_)
            (let () (declare (not safe)) (##fx>= _%x117900%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x117897%_)
        (if (fixnum? _%x117897%_)
            (let () (declare (not safe)) (##fx> _%x117897%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x117894%_)
        (let () (declare (not safe)) (##fx= _%x117894%_ '0))))
    (define fx<0?
      (lambda (_%x117891%_)
        (if (fixnum? _%x117891%_)
            (let () (declare (not safe)) (##fx< _%x117891%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x117888%_)
        (if (fixnum? _%x117888%_)
            (let () (declare (not safe)) (##fx<= _%x117888%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x117885%_)
        (if (symbol? _%x117885%_) (not (uninterned-symbol? _%x117885%_)) '#f)))
    (define __display-as-string
      (lambda (_%x117779%_ _%port117780%_)
        (let ((_%port117783%_ _%port117780%_))
          (if (or (string? _%x117779%_)
                  (symbol? _%x117779%_)
                  (keyword? _%x117779%_)
                  (number? _%x117779%_)
                  (char? _%x117779%_))
              (display _%x117779%_ _%port117783%_)
              (if (pair? _%x117779%_)
                  (let ()
                    (let* ((_%x117806%_
                            (let () (declare (not safe)) (##car _%x117779%_)))
                           (_%port117809%_ _%port117783%_))
                      (if (output-port? _%port117809%_)
                          (let ((_%port117814%_ _%port117809%_))
                            (__display-as-string _%x117806%_ _%port117814%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port117809%_)
                            '#!void)))
                    (let* ((_%x117829%_
                            (let () (declare (not safe)) (##cdr _%x117779%_)))
                           (_%port117832%_ _%port117783%_))
                      (if (output-port? _%port117832%_)
                          (let ((_%port117837%_ _%port117832%_))
                            (__display-as-string _%x117829%_ _%port117837%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port117832%_)
                            '#!void))))
                  (if (vector? _%x117779%_)
                      (vector-for-each
                       (lambda (_%g117848117850%_)
                         (let* ((_%x117853%_ _%g117848117850%_)
                                (_%port117856%_ _%port117783%_))
                           (if (output-port? _%port117856%_)
                               (let ((_%port117861%_ _%port117856%_))
                                 (__display-as-string
                                  _%x117853%_
                                  _%port117861%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port117856%_)
                                 '#!void))))
                       _%x117779%_)
                      (if (or (null? _%x117779%_)
                              (eq? _%x117779%_ '#!void)
                              (eof-object? _%x117779%_)
                              (boolean? _%x117779%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x117779%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x114049%_ _%port114050%_)
        (if (output-port? _%port114050%_)
            (let ((_%port114054%_ _%port114050%_))
              (__display-as-string _%x114049%_ _%port114054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@640.28-640.32"
               'contract:
               'output-port?
               'value:
               _%port114050%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x117719%_)
        (if (string? _%x117719%_)
            _%x117719%_
            (if (symbol? _%x117719%_)
                (let () (declare (not safe)) (##symbol->string _%x117719%_))
                (if (keyword? _%x117719%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x117719%_))
                    (if (number? _%x117719%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x117719%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g117725117727%_)
                           (let* ((_%x117730%_ _%x117719%_)
                                  (_%port117733%_ _%g117725117727%_))
                             (if (output-port? _%port117733%_)
                                 (let ((_%port117738%_ _%port117733%_))
                                   (__display-as-string
                                    _%x117730%_
                                    _%port117738%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port117733%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args117752%_
        (call-with-output-string
         '()
         (lambda (_%g117753117755%_)
           (let* ((_%x117758%_ _%args117752%_)
                  (_%port117761%_ _%g117753117755%_))
             (if (output-port? _%port117761%_)
                 (let ((_%port117766%_ _%port117761%_))
                   (__display-as-string _%x117758%_ _%port117766%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port117761%_)
                   '#!void)))))))
    (define as-string
      (lambda _g123536_
        (let ((_g123537_ (let () (declare (not safe)) (##length _g123536_))))
          (cond ((let () (declare (not safe)) (##fx= _g123537_ 1))
                 (apply as-string__0 _g123536_))
                (#t
                 (apply (lambda _%args117752%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args117752%_)))
                        _g123536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g123536_))))))
    (define make-symbol__0
      (lambda (_%x117715%_)
        (if (interned-symbol? _%x117715%_)
            _%x117715%_
            (let ((__tmp123538 (as-string__0 _%x117715%_)))
              (declare (not safe))
              (##string->symbol __tmp123538)))))
    (define make-symbol__1
      (lambda _%args117717%_
        (let ((__tmp123539
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args117717%_))))
          (declare (not safe))
          (##string->symbol __tmp123539))))
    (define make-symbol
      (lambda _g123540_
        (let ((_g123541_ (let () (declare (not safe)) (##length _g123540_))))
          (cond ((let () (declare (not safe)) (##fx= _g123541_ 1))
                 (apply make-symbol__0 _g123540_))
                (#t
                 (apply (lambda _%args117717%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args117717%_)))
                        _g123540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g123540_))))))
    (define make-keyword__0
      (lambda (_%x117711%_)
        (if (interned-keyword? _%x117711%_)
            _%x117711%_
            (let ((__tmp123542 (as-string__0 _%x117711%_)))
              (declare (not safe))
              (##string->keyword __tmp123542)))))
    (define make-keyword__1
      (lambda _%args117713%_
        (let ((__tmp123543
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args117713%_))))
          (declare (not safe))
          (##string->keyword __tmp123543))))
    (define make-keyword
      (lambda _g123544_
        (let ((_g123545_ (let () (declare (not safe)) (##length _g123544_))))
          (cond ((let () (declare (not safe)) (##fx= _g123545_ 1))
                 (apply make-keyword__0 _g123544_))
                (#t
                 (apply (lambda _%args117713%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args117713%_)))
                        _g123544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g123544_))))))
    (define interned-keyword?
      (lambda (_%x117708%_)
        (if (keyword? _%x117708%_)
            (not (uninterned-keyword? _%x117708%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym117696%_)
        (let ((_%sym117699%_ _%sym117696%_))
          (if (uninterned-symbol? _%sym117699%_)
              (let ((__tmp123546
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym117699%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp123546))
              (let ((__tmp123547
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym117699%_))))
                (declare (not safe))
                (##string->keyword __tmp123547))))))
    (define symbol->keyword
      (lambda (_%sym114184%_)
        (if (symbol? _%sym114184%_)
            (let ((_%sym114188%_ _%sym114184%_))
              (__symbol->keyword _%sym114188%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.24-683.27"
               'contract:
               'symbol?
               'value:
               _%sym114184%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym117684%_)
        (let ((_%sym117687%_ _%sym117684%_))
          (if (uninterned-keyword? _%sym117687%_)
              (let ((__tmp123548
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym117687%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp123548))
              (let ((__tmp123549
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym117687%_))))
                (declare (not safe))
                (##string->symbol __tmp123549))))))
    (define keyword->symbol
      (lambda (_%sym114318%_)
        (if (keyword? _%sym114318%_)
            (let ((_%sym114322%_ _%sym114318%_))
              (__keyword->symbol _%sym114322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.24-689.27"
               'contract:
               'keyword?
               'value:
               _%sym114318%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr117644%_ _%enc117645%_)
        (let* ((_%bstr117648%_ _%bstr117644%_) (_%enc117656%_ _%enc117645%_))
          (if (eq? _%enc117656%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr117648%_))
              (let* ((_%in117665%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc117656%_
                                   (cons 'init: (cons _%bstr117648%_ '()))))))
                     (_%len117667%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr117648%_)))
                     (_%out117669%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len117667%_)))
                     (_%n117671%_
                      (read-substring
                       _%out117669%_
                       '0
                       _%len117667%_
                       _%in117665%_)))
                (string-shrink! _%out117669%_ _%n117671%_)
                _%out117669%_)))))
    (define __bytes->string__0
      (lambda (_%bstr117677%_)
        (let ((_%enc117679%_ 'UTF-8))
          (__bytes->string__% _%bstr117677%_ _%enc117679%_))))
    (define __bytes->string
      (lambda _g123550_
        (let ((_g123551_ (let () (declare (not safe)) (##length _g123550_))))
          (cond ((let () (declare (not safe)) (##fx= _g123551_ 1))
                 (apply __bytes->string__0 _g123550_))
                ((let () (declare (not safe)) (##fx= _g123551_ 2))
                 (apply __bytes->string__% _g123550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g123550_))))))
    (define bytes->string__%
      (lambda (_%bstr114453%_ _%enc114454%_)
        (if (u8vector? _%bstr114453%_)
            (let ((_%bstr114458%_ _%bstr114453%_))
              (if (symbol? _%enc114454%_)
                  (let ((_%enc114468%_ _%enc114454%_))
                    (__bytes->string__% _%bstr114458%_ _%enc114468%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@696.25-696.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114454%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@695.22-695.26"
               'contract:
               'u8vector?
               'value:
               _%bstr114453%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr114481%_)
        (let ((_%enc114483%_ 'UTF-8))
          (bytes->string__% _%bstr114481%_ _%enc114483%_))))
    (define bytes->string
      (lambda _g123552_
        (let ((_g123553_ (let () (declare (not safe)) (##length _g123552_))))
          (cond ((let () (declare (not safe)) (##fx= _g123553_ 1))
                 (apply bytes->string__0 _g123552_))
                ((let () (declare (not safe)) (##fx= _g123553_ 2))
                 (apply bytes->string__% _g123552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g123552_))))))
    (define __string->bytes__%
      (lambda (_%str117562%_ _%enc117563%_)
        (let* ((_%str117566%_ _%str117562%_) (_%enc117574%_ _%enc117563%_))
          (if (eq? _%enc117574%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str117566%_))
              (let* ((_%str117583%_ _%str117566%_)
                     (_%start117586%_ '0)
                     (_%end117589%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str117566%_)))
                     (_%enc117592%_ _%enc117574%_)
                     (_%str117597%_ _%str117583%_))
                (if (nonnegative-fixnum? _%start117586%_)
                    (let ((_%start117613%_ _%start117586%_))
                      (if (nonnegative-fixnum? _%end117589%_)
                          (let ((_%end117623%_ _%end117589%_))
                            (__substring->bytes__%
                             _%str117597%_
                             _%start117613%_
                             _%end117623%_
                             _%enc117592%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end117589%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start117586%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str117636%_)
        (let ((_%enc117638%_ 'UTF-8))
          (__string->bytes__% _%str117636%_ _%enc117638%_))))
    (define __string->bytes
      (lambda _g123554_
        (let ((_g123555_ (let () (declare (not safe)) (##length _g123554_))))
          (cond ((let () (declare (not safe)) (##fx= _g123555_ 1))
                 (apply __string->bytes__0 _g123554_))
                ((let () (declare (not safe)) (##fx= _g123555_ 2))
                 (apply __string->bytes__% _g123554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g123554_))))))
    (define string->bytes__%
      (lambda (_%str114609%_ _%enc114610%_)
        (if (string? _%str114609%_)
            (let ((_%str114614%_ _%str114609%_))
              (if (symbol? _%enc114610%_)
                  (let ((_%enc114624%_ _%enc114610%_))
                    (__string->bytes__% _%str114614%_ _%enc114624%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@708.25-708.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114610%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@707.22-707.25"
               'contract:
               'string?
               'value:
               _%str114609%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str114637%_)
        (let ((_%enc114639%_ 'UTF-8))
          (string->bytes__% _%str114637%_ _%enc114639%_))))
    (define string->bytes
      (lambda _g123556_
        (let ((_g123557_ (let () (declare (not safe)) (##length _g123556_))))
          (cond ((let () (declare (not safe)) (##fx= _g123557_ 1))
                 (apply string->bytes__0 _g123556_))
                ((let () (declare (not safe)) (##fx= _g123557_ 2))
                 (apply string->bytes__% _g123556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g123556_))))))
    (define __substring->bytes__%
      (lambda (_%str117514%_ _%start117515%_ _%end117516%_ _%enc117517%_)
        (let* ((_%str117520%_ _%str117514%_)
               (_%start117528%_ _%start117515%_)
               (_%end117536%_ _%end117516%_))
          (if (eq? _%enc117517%_ 'UTF-8)
              (string->utf8 _%str117520%_ _%start117528%_ _%end117536%_)
              (let ((_%out117545%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc117517%_ '())))))
                (write-substring
                 _%str117520%_
                 _%start117528%_
                 _%end117536%_
                 _%out117545%_)
                (get-output-u8vector _%out117545%_))))))
    (define __substring->bytes__0
      (lambda (_%str117550%_ _%start117551%_ _%end117552%_)
        (let ((_%enc117554%_ 'UTF-8))
          (__substring->bytes__%
           _%str117550%_
           _%start117551%_
           _%end117552%_
           _%enc117554%_))))
    (define __substring->bytes
      (lambda _g123558_
        (let ((_g123559_ (let () (declare (not safe)) (##length _g123558_))))
          (cond ((let () (declare (not safe)) (##fx= _g123559_ 3))
                 (apply __substring->bytes__0 _g123558_))
                ((let () (declare (not safe)) (##fx= _g123559_ 4))
                 (apply __substring->bytes__% _g123558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g123558_))))))
    (define substring->bytes__%
      (lambda (_%str114765%_ _%start114766%_ _%end114767%_ _%enc114768%_)
        (if (string? _%str114765%_)
            (let ((_%str114772%_ _%str114765%_))
              (if (nonnegative-fixnum? _%start114766%_)
                  (let ((_%start114782%_ _%start114766%_))
                    (if (nonnegative-fixnum? _%end114767%_)
                        (let ((_%end114792%_ _%end114767%_))
                          (__substring->bytes__%
                           _%str114772%_
                           _%start114782%_
                           _%end114792%_
                           _%enc114768%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@716.25-716.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end114767%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@715.25-715.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start114766%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@714.25-714.28"
               'contract:
               'string?
               'value:
               _%str114765%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str114805%_ _%start114806%_ _%end114807%_)
        (let ((_%enc114809%_ 'UTF-8))
          (substring->bytes__%
           _%str114805%_
           _%start114806%_
           _%end114807%_
           _%enc114809%_))))
    (define substring->bytes
      (lambda _g123560_
        (let ((_g123561_ (let () (declare (not safe)) (##length _g123560_))))
          (cond ((let () (declare (not safe)) (##fx= _g123561_ 3))
                 (apply substring->bytes__0 _g123560_))
                ((let () (declare (not safe)) (##fx= _g123561_ 4))
                 (apply substring->bytes__% _g123560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g123560_))))))
    (define __string-empty?
      (lambda (_%str117501%_)
        (let* ((_%str117504%_ _%str117501%_)
               (__tmp123562
                (let () (declare (not safe)) (##string-length _%str117504%_))))
          (declare (not safe))
          (##fxzero? __tmp123562))))
    (define string-empty?
      (lambda (_%str114936%_)
        (if (string? _%str114936%_)
            (let ((_%str114940%_ _%str114936%_))
              (__string-empty? _%str114940%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@725.22-725.25"
               'contract:
               'string?
               'value:
               _%str114936%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str117441%_ _%char117442%_ _%start117443%_)
        (let* ((_%str117446%_ _%str117441%_)
               (_%char117454%_ _%char117442%_)
               (_%start117462%_ _%start117443%_)
               (_%len117471%_
                (let () (declare (not safe)) (##string-length _%str117446%_))))
          (let _%lp117473%_ ((_%k117475%_ _%start117462%_))
            (let ((_%k117477%_ _%k117475%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k117477%_ _%len117471%_))
                  (if (eq? _%char117454%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str117446%_ _%k117477%_)))
                      _%k117477%_
                      (_%lp117473%_
                       (let () (declare (not safe)) (##fx+ _%k117477%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str117492%_ _%char117493%_)
        (let ((_%start117495%_ '0))
          (__string-index__% _%str117492%_ _%char117493%_ _%start117495%_))))
    (define __string-index
      (lambda _g123563_
        (let ((_g123564_ (let () (declare (not safe)) (##length _g123563_))))
          (cond ((let () (declare (not safe)) (##fx= _g123564_ 2))
                 (apply __string-index__0 _g123563_))
                ((let () (declare (not safe)) (##fx= _g123564_ 3))
                 (apply __string-index__% _g123563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g123563_))))))
    (define string-index__%
      (lambda (_%str115071%_ _%char115072%_ _%start115073%_)
        (if (string? _%str115071%_)
            (let ((_%str115077%_ _%str115071%_))
              (if (char? _%char115072%_)
                  (let ((_%char115087%_ _%char115072%_))
                    (if (nonnegative-fixnum? _%start115073%_)
                        (let ((_%start115097%_ _%start115073%_))
                          (__string-index__%
                           _%str115077%_
                           _%char115087%_
                           _%start115097%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@731.21-731.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start115073%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@730.21-730.25"
                     'contract:
                     'char?
                     'value:
                     _%char115072%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str115071%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str115110%_ _%char115111%_)
        (let ((_%start115113%_ '0))
          (string-index__% _%str115110%_ _%char115111%_ _%start115113%_))))
    (define string-index
      (lambda _g123565_
        (let ((_g123566_ (let () (declare (not safe)) (##length _g123565_))))
          (cond ((let () (declare (not safe)) (##fx= _g123566_ 2))
                 (apply string-index__0 _g123565_))
                ((let () (declare (not safe)) (##fx= _g123566_ 3))
                 (apply string-index__% _g123565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g123565_))))))
    (define __string-rindex__%
      (lambda (_%str117383%_ _%char117384%_ _%start117385%_)
        (let* ((_%str117388%_ _%str117383%_)
               (_%char117396%_ _%char117384%_)
               (_%len117405%_
                (let () (declare (not safe)) (##string-length _%str117388%_)))
               (_%start117407%_
                (if (fixnum? _%start117385%_)
                    _%start117385%_
                    (let () (declare (not safe)) (##fx- _%len117405%_ '1)))))
          (let _%lp117410%_ ((_%k117412%_ _%start117407%_))
            (let ((_%k117414%_ _%k117412%_))
              (if (let () (declare (not safe)) (##fx>= _%k117414%_ '0))
                  (if (eq? _%char117396%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str117388%_ _%k117414%_)))
                      _%k117414%_
                      (_%lp117410%_
                       (let () (declare (not safe)) (##fx- _%k117414%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str117431%_ _%char117432%_)
        (let ((_%start117434%_ '#f))
          (__string-rindex__% _%str117431%_ _%char117432%_ _%start117434%_))))
    (define __string-rindex
      (lambda _g123567_
        (let ((_g123568_ (let () (declare (not safe)) (##length _g123567_))))
          (cond ((let () (declare (not safe)) (##fx= _g123568_ 2))
                 (apply __string-rindex__0 _g123567_))
                ((let () (declare (not safe)) (##fx= _g123568_ 3))
                 (apply __string-rindex__% _g123567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g123567_))))))
    (define string-rindex__%
      (lambda (_%str115240%_ _%char115241%_ _%start115242%_)
        (if (string? _%str115240%_)
            (let ((_%str115246%_ _%str115240%_))
              (if (char? _%char115241%_)
                  (let ((_%char115256%_ _%char115241%_))
                    (__string-rindex__%
                     _%str115246%_
                     _%char115256%_
                     _%start115242%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@741.25-741.29"
                     'contract:
                     'char?
                     'value:
                     _%char115241%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@740.22-740.25"
               'contract:
               'string?
               'value:
               _%str115240%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str115269%_ _%char115270%_)
        (let ((_%start115272%_ '#f))
          (string-rindex__% _%str115269%_ _%char115270%_ _%start115272%_))))
    (define string-rindex
      (lambda _g123569_
        (let ((_g123570_ (let () (declare (not safe)) (##length _g123569_))))
          (cond ((let () (declare (not safe)) (##fx= _g123570_ 2))
                 (apply string-rindex__0 _g123569_))
                ((let () (declare (not safe)) (##fx= _g123570_ 3))
                 (apply string-rindex__% _g123569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g123569_))))))
    (define __string-split
      (lambda (_%str117280%_ _%char117281%_)
        (let* ((_%str117284%_ _%str117280%_)
               (_%char117292%_ _%char117281%_)
               (_%len117301%_
                (let () (declare (not safe)) (##string-length _%str117284%_))))
          (let _%lp117303%_ ((_%start117305%_ '0) (_%r117306%_ '()))
            (let* ((_%start117309%_ _%start117305%_)
                   (_%$e117367%_
                    (let* ((_%str117322%_ _%str117284%_)
                           (_%char117325%_ _%char117292%_)
                           (_%start117328%_ _%start117309%_)
                           (_%str117333%_ _%str117322%_)
                           (_%char117347%_ _%char117325%_))
                      (if (nonnegative-fixnum? _%start117328%_)
                          (let ((_%start117357%_ _%start117328%_))
                            (__string-index__%
                             _%str117333%_
                             _%char117347%_
                             _%start117357%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start117328%_)
                            '#!void)))))
              (if _%$e117367%_
                  ((lambda (_%end117370%_)
                     (let ((_%end117372%_ _%end117370%_))
                       (_%lp117303%_
                        (let () (declare (not safe)) (##fx+ _%end117372%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str117284%_
                                 _%start117309%_
                                 _%end117372%_))
                              _%r117306%_))))
                   _%$e117367%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start117309%_ _%len117301%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str117284%_
                                _%start117309%_
                                _%len117301%_)))
                       _%r117306%_)
                      (reverse! _%r117306%_))))))))
    (define string-split
      (lambda (_%str115398%_ _%char115399%_)
        (if (string? _%str115398%_)
            (let ((_%str115403%_ _%str115398%_))
              (if (char? _%char115399%_)
                  (let ((_%char115413%_ _%char115399%_))
                    (__string-split _%str115403%_ _%char115413%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@752.37-752.41"
                     'contract:
                     'char?
                     'value:
                     _%char115399%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@752.21-752.24"
               'contract:
               'string?
               'value:
               _%str115398%_)
              '#!void))))
    (define string-join
      (lambda (_%strs117130%_ _%join117131%_)
        (letrec ((_%join-length117134%_
                  (lambda (_%strs117218%_ _%jlen117219%_)
                    (let _%lp117221%_ ((_%rest117223%_ _%strs117218%_)
                                       (_%len117224%_ '0))
                      (let* ((_%len117226%_ _%len117224%_)
                             (_%rest117234117242%_ _%rest117223%_)
                             (_%else117236117250%_ (lambda () '0))
                             (_%K117238117268%_
                              (lambda (_%rest117253%_ _%hd117254%_)
                                (if (string? _%hd117254%_)
                                    (let ((_%hd117256%_ _%hd117254%_))
                                      (if (pair? _%rest117253%_)
                                          (_%lp117221%_
                                           _%rest117253%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd117256%_))
                                                _%jlen117219%_
                                                _%len117226%_))
                                          (let ((__tmp123571
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd117256%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp123571
                                                   _%len117226%_))))
                                    (error '"expected string" _%hd117254%_)))))
                        (if (pair? _%rest117234117242%_)
                            (let ((_%hd117239117271%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest117234117242%_)))
                                  (_%tl117240117273%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest117234117242%_))))
                              (let* ((_%hd117276%_ _%hd117239117271%_)
                                     (_%rest117278%_ _%tl117240117273%_))
                                (_%K117238117268%_
                                 _%rest117278%_
                                 _%hd117276%_)))
                            (_%else117236117250%_)))))))
          (let* ((_%join117139%_
                  (if (char? _%join117131%_)
                      (let () (declare (not safe)) (##string _%join117131%_))
                      (if (string? _%join117131%_)
                          _%join117131%_
                          (error '"expected string or char" _%join117131%_))))
                 (_%jlen117141%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join117139%_)))
                 (_%olen117143%_
                  (_%join-length117134%_ _%strs117130%_ _%jlen117141%_))
                 (_%ostr117145%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen117143%_))))
            (let _%lp117148%_ ((_%rest117150%_ _%strs117130%_)
                               (_%k117151%_ '0))
              (let* ((_%k117154%_ _%k117151%_)
                     (_%rest117170117178%_ _%rest117150%_)
                     (_%else117172117186%_ (lambda () '""))
                     (_%K117174117206%_
                      (lambda (_%rest117189%_ _%hd117190%_)
                        (let* ((_%hd117192%_ _%hd117190%_)
                               (_%hdlen117204%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd117192%_))))
                          (if (pair? _%rest117189%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd117192%_
                                   '0
                                   _%hdlen117204%_
                                   _%ostr117145%_
                                   _%k117154%_))
                                (let ((__tmp123572
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k117154%_ _%hdlen117204%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join117139%_
                                   '0
                                   _%jlen117141%_
                                   _%ostr117145%_
                                   __tmp123572))
                                (_%lp117148%_
                                 _%rest117189%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k117154%_
                                          _%hdlen117204%_
                                          _%jlen117141%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd117192%_
                                   '0
                                   _%hdlen117204%_
                                   _%ostr117145%_
                                   _%k117154%_))
                                _%ostr117145%_))))))
                (if (pair? _%rest117170117178%_)
                    (let ((_%hd117175117209%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest117170117178%_)))
                          (_%tl117176117211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest117170117178%_))))
                      (let* ((_%hd117214%_ _%hd117175117209%_)
                             (_%rest117216%_ _%tl117176117211%_))
                        (_%K117174117206%_ _%rest117216%_ _%hd117214%_)))
                    (_%else117172117186%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes117070%_ _%port117071%_ _%start117072%_ _%end117073%_)
        (let* ((_%bytes117076%_ _%bytes117070%_)
               (_%port117084%_ _%port117071%_)
               (_%start117092%_ _%start117072%_)
               (_%end117100%_ _%end117073%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes117076%_
           _%start117092%_
           _%end117100%_
           _%port117084%_))))
    (define __read-u8vector__0
      (lambda (_%bytes117112%_ _%port117113%_)
        (let* ((_%start117115%_ '0)
               (_%end117117%_ (u8vector-length _%bytes117112%_)))
          (__read-u8vector__%
           _%bytes117112%_
           _%port117113%_
           _%start117115%_
           _%end117117%_))))
    (define __read-u8vector__1
      (lambda (_%bytes117119%_ _%port117120%_ _%start117121%_)
        (let ((_%end117123%_ (u8vector-length _%bytes117119%_)))
          (__read-u8vector__%
           _%bytes117119%_
           _%port117120%_
           _%start117121%_
           _%end117123%_))))
    (define __read-u8vector
      (lambda _g123573_
        (let ((_g123574_ (let () (declare (not safe)) (##length _g123573_))))
          (cond ((let () (declare (not safe)) (##fx= _g123574_ 2))
                 (apply __read-u8vector__0 _g123573_))
                ((let () (declare (not safe)) (##fx= _g123574_ 3))
                 (apply __read-u8vector__1 _g123573_))
                ((let () (declare (not safe)) (##fx= _g123574_ 4))
                 (apply __read-u8vector__% _g123573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g123573_))))))
    (define read-u8vector__%
      (lambda (_%bytes115544%_ _%port115545%_ _%start115546%_ _%end115547%_)
        (if (u8vector? _%bytes115544%_)
            (let ((_%bytes115551%_ _%bytes115544%_))
              (if (input-port? _%port115545%_)
                  (let ((_%port115561%_ _%port115545%_))
                    (if ((lambda (_%o115570%_)
                           (and (fixnum? _%o115570%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o115570%_ '0))
                                (let ((__tmp123575
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes115551%_))))
                                  (declare (not safe))
                                  (##fx< _%o115570%_ __tmp123575))))
                         _%start115546%_)
                        (let ((_%start115574%_ _%start115546%_))
                          (if ((lambda (_%o115583%_)
                                 (and (fixnum? _%o115583%_)
                                      (let ((__tmp123576
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes115551%_))))
                                        (declare (not safe))
                                        (##fx<= _%start115574%_
                                                _%o115583%_
                                                __tmp123576))))
                               _%end115547%_)
                              (let ((_%end115587%_ _%end115547%_))
                                (__read-u8vector__%
                                 _%bytes115551%_
                                 _%port115561%_
                                 _%start115574%_
                                 _%end115587%_))
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
                                 _%end115547%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@817.22-817.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start115546%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@816.22-816.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port115545%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@815.22-815.27"
               'contract:
               'u8vector?
               'value:
               _%bytes115544%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes115600%_ _%port115601%_)
        (let* ((_%start115603%_ '0)
               (_%end115605%_ (u8vector-length _%bytes115600%_)))
          (read-u8vector__%
           _%bytes115600%_
           _%port115601%_
           _%start115603%_
           _%end115605%_))))
    (define read-u8vector__1
      (lambda (_%bytes115607%_ _%port115608%_ _%start115609%_)
        (let ((_%end115611%_ (u8vector-length _%bytes115607%_)))
          (read-u8vector__%
           _%bytes115607%_
           _%port115608%_
           _%start115609%_
           _%end115611%_))))
    (define read-u8vector
      (lambda _g123577_
        (let ((_g123578_ (let () (declare (not safe)) (##length _g123577_))))
          (cond ((let () (declare (not safe)) (##fx= _g123578_ 2))
                 (apply read-u8vector__0 _g123577_))
                ((let () (declare (not safe)) (##fx= _g123578_ 3))
                 (apply read-u8vector__1 _g123577_))
                ((let () (declare (not safe)) (##fx= _g123578_ 4))
                 (apply read-u8vector__% _g123577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g123577_))))))
    (define __write-u8vector__%
      (lambda (_%bytes117009%_ _%port117010%_ _%start117011%_ _%end117012%_)
        (let* ((_%bytes117015%_ _%bytes117009%_)
               (_%port117023%_ _%port117010%_)
               (_%start117031%_ _%start117011%_)
               (_%end117039%_ _%end117012%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes117015%_
           _%start117031%_
           _%end117039%_
           _%port117023%_))))
    (define __write-u8vector__0
      (lambda (_%bytes117051%_ _%port117052%_)
        (let* ((_%start117054%_ '0)
               (_%end117056%_ (u8vector-length _%bytes117051%_)))
          (__write-u8vector__%
           _%bytes117051%_
           _%port117052%_
           _%start117054%_
           _%end117056%_))))
    (define __write-u8vector__1
      (lambda (_%bytes117058%_ _%port117059%_ _%start117060%_)
        (let ((_%end117062%_ (u8vector-length _%bytes117058%_)))
          (__write-u8vector__%
           _%bytes117058%_
           _%port117059%_
           _%start117060%_
           _%end117062%_))))
    (define __write-u8vector
      (lambda _g123579_
        (let ((_g123580_ (let () (declare (not safe)) (##length _g123579_))))
          (cond ((let () (declare (not safe)) (##fx= _g123580_ 2))
                 (apply __write-u8vector__0 _g123579_))
                ((let () (declare (not safe)) (##fx= _g123580_ 3))
                 (apply __write-u8vector__1 _g123579_))
                ((let () (declare (not safe)) (##fx= _g123580_ 4))
                 (apply __write-u8vector__% _g123579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g123579_))))))
    (define write-u8vector__%
      (lambda (_%bytes115739%_ _%port115740%_ _%start115741%_ _%end115742%_)
        (if (u8vector? _%bytes115739%_)
            (let ((_%bytes115746%_ _%bytes115739%_))
              (if (output-port? _%port115740%_)
                  (let* ((_%port115756%_ _%port115740%_)
                         (_%start115765%_ _%start115741%_))
                    (if ((lambda (_%o115773%_)
                           (and (fixnum? _%o115773%_)
                                (let ((__tmp123581
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes115746%_))))
                                  (declare (not safe))
                                  (##fx<= _%start115765%_
                                          _%o115773%_
                                          __tmp123581))))
                         _%end115742%_)
                        (let ((_%end115777%_ _%end115742%_))
                          (__write-u8vector__%
                           _%bytes115746%_
                           _%port115756%_
                           _%start115765%_
                           _%end115777%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@828.23-828.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end115742%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@826.23-826.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port115740%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@825.23-825.28"
               'contract:
               'u8vector?
               'value:
               _%bytes115739%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes115790%_ _%port115791%_)
        (let* ((_%start115793%_ '0)
               (_%end115795%_ (u8vector-length _%bytes115790%_)))
          (write-u8vector__%
           _%bytes115790%_
           _%port115791%_
           _%start115793%_
           _%end115795%_))))
    (define write-u8vector__1
      (lambda (_%bytes115797%_ _%port115798%_ _%start115799%_)
        (let ((_%end115801%_ (u8vector-length _%bytes115797%_)))
          (write-u8vector__%
           _%bytes115797%_
           _%port115798%_
           _%start115799%_
           _%end115801%_))))
    (define write-u8vector
      (lambda _g123582_
        (let ((_g123583_ (let () (declare (not safe)) (##length _g123582_))))
          (cond ((let () (declare (not safe)) (##fx= _g123583_ 2))
                 (apply write-u8vector__0 _g123582_))
                ((let () (declare (not safe)) (##fx= _g123583_ 3))
                 (apply write-u8vector__1 _g123582_))
                ((let () (declare (not safe)) (##fx= _g123583_ 4))
                 (apply write-u8vector__% _g123582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g123582_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag116977%_
               _%dbg-exprs116978%_
               _%dbg-thunks116979%_
               _%expr116980%_
               _%thunk116981%_)
        (letrec ((_%o116983%_ (current-output-port))
                 (_%e116984%_ (current-error-port))
                 (_%p116985%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f116986%_
                  (lambda ()
                    (force-output _%o116983%_)
                    (force-output _%e116984%_)))
                 (_%d116987%_
                  (lambda (_%x116994%_) (display _%x116994%_ _%e116984%_)))
                 (_%w116988%_
                  (lambda (_%x116996%_) (_%p116985%_ _%x116996%_ _%e116984%_)))
                 (_%n116989%_ (lambda () (newline _%e116984%_)))
                 (_%v116990%_
                  (lambda (_%l116999%_)
                    (for-each
                     (lambda (_%x117001%_)
                       (_%d116987%_ '" ")
                       (_%w116988%_ _%x117001%_))
                     _%l116999%_)
                    (_%n116989%_)))
                 (_%x116991%_
                  (lambda (_%expr117003%_ _%thunk117004%_)
                    (_%f116986%_)
                    (_%d116987%_ '"  ")
                    (_%w116988%_ _%expr117003%_)
                    (_%d116987%_ '" =>")
                    (call-with-values
                     _%thunk117004%_
                     (lambda _%x117006%_
                       (_%v116990%_ _%x117006%_)
                       (_%f116986%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x117006%_)))))))
          (if _%tag116977%_
              (begin
                (if (eq? _%tag116977%_ '#!void)
                    '#!void
                    (begin
                      (_%f116986%_)
                      (_%d116987%_ _%tag116977%_)
                      (_%n116989%_)))
                (for-each _%x116991%_ _%dbg-exprs116978%_ _%dbg-thunks116979%_)
                (if _%thunk116981%_
                    (_%x116991%_ _%expr116980%_ _%thunk116981%_)
                    '#!void))
              (if _%thunk116981%_ (_%thunk116981%_) '#!void)))))))
