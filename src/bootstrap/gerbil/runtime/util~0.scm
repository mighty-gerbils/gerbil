(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1779289633)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args112786%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args112786%_))
          (newline))))
    (define display*
      (lambda _%args112783%_
        (let () (declare (not safe)) (##for-each display _%args112783%_))))
    (define __file-newer?
      (lambda (_%file1112574%_ _%file2112575%_)
        (let* ((_%file1112578%_ _%file1112574%_)
               (_%file2112586%_ _%file2112575%_))
          (letrec ((_%__modification-time112730%_
                    (lambda (_%file112771%_)
                      (let* ((_%file112774%_ _%file112771%_)
                             (__tmp115562
                              (let ((__tmp115563
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file112774%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp115563))))
                        (declare (not safe))
                        (##time->seconds __tmp115562))))
                   (_%modification-time112731%_
                    (lambda (_%file112759%_)
                      (let ((_%file112762%_ _%file112759%_))
                        (_%__modification-time112730%_ _%file112762%_)))))
            (let ((__tmp115565
                   (let* ((_%file112733%_ _%file1112578%_)
                          (_%file112737%_ _%file112733%_))
                     (_%__modification-time112730%_ _%file112737%_)))
                  (__tmp115564
                   (let* ((_%file112746%_ _%file2112586%_)
                          (_%file112750%_ _%file112746%_))
                     (_%__modification-time112730%_ _%file112750%_))))
              (declare (not safe))
              (##fl> __tmp115565 __tmp115564))))))
    (define file-newer?
      (lambda (_%file1102160%_ _%file2102161%_)
        (if (string? _%file1102160%_)
            (let ((_%file1102165%_ _%file1102160%_))
              (if (string? _%file2102161%_)
                  (let ((_%file2102175%_ _%file2102161%_))
                    (__file-newer? _%file1102165%_ _%file2102175%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2102161%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1102160%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir112294%_ _%perms112295%_)
        (let* ((_%dir112298%_ _%dir112294%_) (_%perms112306%_ _%perms112295%_))
          (letrec ((_%__create1112450%_
                    (lambda (_%path112549%_)
                      (let ((_%path112552%_ _%path112549%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path112552%_))
                            (if (eq? (file-type _%path112552%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path112552%_))
                            (if _%perms112306%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path112552%_
                                             (cons 'permissions:
                                                   (cons _%perms112306%_
                                                         '())))))
                                (create-directory _%path112552%_))))))
                   (_%create1112451%_
                    (lambda (_%path112537%_)
                      (let ((_%path112540%_ _%path112537%_))
                        (_%__create1112450%_ _%path112540%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir112298%_))
                '#!void
                (let _%lp112453%_ ((_%start112455%_ '0))
                  (let ((_%$e112502%_
                         (let* ((_%str112457%_ _%dir112298%_)
                                (_%char112460%_ '#\/)
                                (_%start112463%_ _%start112455%_)
                                (_%str112468%_ _%str112457%_)
                                (_%char112482%_ _%char112460%_))
                           (if (nonnegative-fixnum? _%start112463%_)
                               (let ((_%start112492%_ _%start112463%_))
                                 (__string-index__%
                                  _%str112468%_
                                  _%char112482%_
                                  _%start112492%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start112463%_)
                                 '#!void)))))
                    (if _%$e112502%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e112502%_ '0))
                              (let* ((_%path112507%_
                                      (substring
                                       _%dir112298%_
                                       '0
                                       _%$e112502%_))
                                     (_%path112511%_ _%path112507%_))
                                (_%__create1112450%_ _%path112511%_))
                              '#!void)
                          (_%lp112453%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e112502%_ '1))))
                        (let* ((_%path112523%_ _%dir112298%_)
                               (_%path112527%_ _%path112523%_))
                          (_%__create1112450%_ _%path112527%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir112567%_)
        (let ((_%perms112569%_ '493))
          (__create-directory*__% _%dir112567%_ _%perms112569%_))))
    (define __create-directory*
      (lambda _g115566_
        (let ((_g115567_ (let () (declare (not safe)) (##length _g115566_))))
          (cond ((let () (declare (not safe)) (##fx= _g115567_ 1))
                 (apply __create-directory*__0 _g115566_))
                ((let () (declare (not safe)) (##fx= _g115567_ 2))
                 (apply __create-directory*__% _g115566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g115566_))))))
    (define create-directory*__%
      (lambda (_%dir102306%_ _%perms102307%_)
        (if (string? _%dir102306%_)
            (let ((_%dir102311%_ _%dir102306%_))
              (if (fixnum? _%perms102307%_)
                  (let ((_%perms102321%_ _%perms102307%_))
                    (__create-directory*__% _%dir102311%_ _%perms102321%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms102307%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir102306%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir102334%_)
        (let ((_%perms102336%_ '493))
          (create-directory*__% _%dir102334%_ _%perms102336%_))))
    (define create-directory*
      (lambda _g115568_
        (let ((_g115569_ (let () (declare (not safe)) (##length _g115568_))))
          (cond ((let () (declare (not safe)) (##fx= _g115569_ 1))
                 (apply create-directory*__0 _g115568_))
                ((let () (declare (not safe)) (##fx= _g115569_ 2))
                 (apply create-directory*__% _g115568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g115568_))))))
    (define __move-file__%
      (lambda (_%src112237%_ _%dest112238%_ _%replace?112239%_)
        (let* ((_%src112242%_ _%src112237%_)
               (_%dest112250%_ _%dest112238%_)
               (_%replace?112258%_ _%replace?112239%_))
          (letrec ((_%force-move-it112267%_
                    (lambda ()
                      (let ((_%tmp112273%_
                             (if _%replace?112258%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest112250%_))
                                     (let ((__tmp115570
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest112250%_
                                        '"."
                                        __tmp115570))
                                     '#f)
                                 '#f)))
                        (if _%tmp112273%_
                            (rename-file _%dest112250%_ _%tmp112273%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e112275%_)
                           (if _%tmp112273%_
                               (rename-file _%tmp112273%_ _%dest112250%_ '#t)
                               '#!void)
                           (raise _%e112275%_))
                         (lambda ()
                           (let ((_%fi112278%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src112242%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi112278%_))
                                      'symbolic-link)
                                 (let ((__tmp115571
                                        (path-normalize _%src112242%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp115571
                                    _%dest112250%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src112242%_
                                    _%dest112250%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src112242%_))
                           (if _%tmp112273%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp112273%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e112269%_)
               (if (let () (declare (not safe)) (##file-exists? _%src112242%_))
                   (_%force-move-it112267%_)
                   (raise _%e112269%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src112242%_
                  _%dest112250%_
                  _%replace?112258%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src112284%_ _%dest112285%_)
        (let ((_%replace?112287%_ '#t))
          (__move-file__% _%src112284%_ _%dest112285%_ _%replace?112287%_))))
    (define __move-file
      (lambda _g115572_
        (let ((_g115573_ (let () (declare (not safe)) (##length _g115572_))))
          (cond ((let () (declare (not safe)) (##fx= _g115573_ 2))
                 (apply __move-file__0 _g115572_))
                ((let () (declare (not safe)) (##fx= _g115573_ 3))
                 (apply __move-file__% _g115572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g115572_))))))
    (define move-file__%
      (lambda (_%src102462%_ _%dest102463%_ _%replace?102464%_)
        (if (string? _%src102462%_)
            (let ((_%src102468%_ _%src102462%_))
              (if (string? _%dest102463%_)
                  (let ((_%dest102478%_ _%dest102463%_))
                    (if (boolean? _%replace?102464%_)
                        (let ((_%replace?102488%_ _%replace?102464%_))
                          (__move-file__%
                           _%src102468%_
                           _%dest102478%_
                           _%replace?102488%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?102464%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest102463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src102462%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src102501%_ _%dest102502%_)
        (let ((_%replace?102504%_ '#t))
          (move-file__% _%src102501%_ _%dest102502%_ _%replace?102504%_))))
    (define move-file
      (lambda _g115574_
        (let ((_g115575_ (let () (declare (not safe)) (##length _g115574_))))
          (cond ((let () (declare (not safe)) (##fx= _g115575_ 2))
                 (apply move-file__0 _g115574_))
                ((let () (declare (not safe)) (##fx= _g115575_ 3))
                 (apply move-file__% _g115574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g115574_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore112233%_ '#t))
    (define true? (lambda (_%obj112230%_) (eq? _%obj112230%_ '#t)))
    (define false (lambda _%ignore112227%_ '#f))
    (define void (lambda _%ignore112224%_ '#!void))
    (define void? (lambda (_%obj112221%_) (eq? _%obj112221%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj112218%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj112218%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj112215%_) (eq? _%obj112215%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj112212%_) (eq? _%obj112212%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj112209%_) (eq? _%obj112209%_ '#!optional)))
    (define immediate?
      (lambda (_%obj112206%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj112206%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj112203%_)
        (if (fixnum? _%obj112203%_)
            (let () (declare (not safe)) (##fx>= _%obj112203%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj112197%_)
        (let ((_%$e112200%_ (pair? _%obj112197%_)))
          (if _%$e112200%_ _%$e112200%_ (null? _%obj112197%_)))))
    (define values-count
      (lambda (_%obj112194%_)
        (if (let () (declare (not safe)) (##values? _%obj112194%_))
            (let () (declare (not safe)) (##values-length _%obj112194%_))
            '1)))
    (define __values-ref
      (lambda (_%obj112181%_ _%k112182%_)
        (let ((_%k112185%_ _%k112182%_))
          (if (let () (declare (not safe)) (##values? _%obj112181%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj112181%_ _%k112185%_))
              _%obj112181%_))))
    (define values-ref
      (lambda (_%obj102630%_ _%k102631%_)
        (if (fixnum? _%k102631%_)
            (let ((_%k102635%_ _%k102631%_))
              (__values-ref _%obj102630%_ _%k102635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k102631%_)
              '#!void))))
    (define values->list
      (lambda (_%obj112178%_)
        (if (let () (declare (not safe)) (##values? _%obj112178%_))
            (let () (declare (not safe)) (##values->list _%obj112178%_))
            (list _%obj112178%_))))
    (define __foldl1
      (lambda (_%f112126%_ _%iv112127%_ _%lst112128%_)
        (let ((_%f112131%_ _%f112126%_))
          (let _%lp112140%_ ((_%rest112142%_ _%lst112128%_)
                             (_%r112143%_ _%iv112127%_))
            (let* ((_%rest112144112152%_ _%rest112142%_)
                   (_%else112146112160%_ (lambda () _%r112143%_))
                   (_%K112148112166%_
                    (lambda (_%rest112163%_ _%x112164%_)
                      (_%lp112140%_
                       _%rest112163%_
                       (let ()
                         (declare (not safe))
                         (_%f112131%_ _%x112164%_ _%r112143%_))))))
              (if (pair? _%rest112144112152%_)
                  (let ((_%hd112149112169%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112144112152%_)))
                        (_%tl112150112171%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112144112152%_))))
                    (let* ((_%x112174%_ _%hd112149112169%_)
                           (_%rest112176%_ _%tl112150112171%_))
                      (_%K112148112166%_ _%rest112176%_ _%x112174%_)))
                  (_%else112146112160%_)))))))
    (define foldl1
      (lambda (_%f102765%_ _%iv102766%_ _%lst102767%_)
        (if (procedure? _%f102765%_)
            (let ((_%f102771%_ _%f102765%_))
              (__foldl1 _%f102771%_ _%iv102766%_ _%lst102767%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f102765%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f112039%_ _%iv112040%_ _%lst1112041%_ _%lst2112042%_)
        (let ((_%f112045%_ _%f112039%_))
          (let _%lp112054%_ ((_%rest1112056%_ _%lst1112041%_)
                             (_%rest2112057%_ _%lst2112042%_)
                             (_%r112058%_ _%iv112040%_))
            (let* ((_%rest1112059112067%_ _%rest1112056%_)
                   (_%else112061112075%_ (lambda () _%r112058%_))
                   (_%K112063112114%_
                    (lambda (_%rest1112078%_ _%x1112079%_)
                      (let* ((_%rest2112080112088%_ _%rest2112057%_)
                             (_%else112082112096%_ (lambda () _%r112058%_))
                             (_%K112084112102%_
                              (lambda (_%rest2112099%_ _%x2112100%_)
                                (_%lp112054%_
                                 _%rest1112078%_
                                 _%rest2112099%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f112045%_
                                    _%x1112079%_
                                    _%x2112100%_
                                    _%r112058%_))))))
                        (if (pair? _%rest2112080112088%_)
                            (let ((_%hd112085112105%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2112080112088%_)))
                                  (_%tl112086112107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2112080112088%_))))
                              (let* ((_%x2112110%_ _%hd112085112105%_)
                                     (_%rest2112112%_ _%tl112086112107%_))
                                (_%K112084112102%_
                                 _%rest2112112%_
                                 _%x2112110%_)))
                            (_%else112082112096%_))))))
              (if (pair? _%rest1112059112067%_)
                  (let ((_%hd112064112117%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1112059112067%_)))
                        (_%tl112065112119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1112059112067%_))))
                    (let* ((_%x1112122%_ _%hd112064112117%_)
                           (_%rest1112124%_ _%tl112065112119%_))
                      (_%K112063112114%_ _%rest1112124%_ _%x1112122%_)))
                  (_%else112061112075%_)))))))
    (define foldl2
      (lambda (_%f102901%_ _%iv102902%_ _%lst1102903%_ _%lst2102904%_)
        (if (procedure? _%f102901%_)
            (let ((_%f102908%_ _%f102901%_))
              (__foldl2
               _%f102908%_
               _%iv102902%_
               _%lst1102903%_
               _%lst2102904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f102901%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f111972%_ _%iv111973%_ _%lst111974%_)
        (let* ((_%f111976%_ _%f111972%_)
               (_%iv111979%_ _%iv111973%_)
               (_%lst111982%_ _%lst111974%_))
          (if (procedure? _%f111976%_)
              (let ((_%f111987%_ _%f111976%_))
                (__foldl1 _%f111987%_ _%iv111979%_ _%lst111982%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111976%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f112000%_ _%iv112001%_ _%lst1112002%_ _%lst2112003%_)
        (let* ((_%f112005%_ _%f112000%_)
               (_%iv112008%_ _%iv112001%_)
               (_%lst1112011%_ _%lst1112002%_)
               (_%lst2112014%_ _%lst2112003%_))
          (if (procedure? _%f112005%_)
              (let ((_%f112019%_ _%f112005%_))
                (__foldl2
                 _%f112019%_
                 _%iv112008%_
                 _%lst1112011%_
                 _%lst2112014%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112005%_)
                '#!void)))))
    (define foldl
      (lambda _g115576_
        (let ((_g115577_ (let () (declare (not safe)) (##length _g115576_))))
          (cond ((let () (declare (not safe)) (##fx= _g115577_ 3))
                 (apply foldl__0 _g115576_))
                ((let () (declare (not safe)) (##fx= _g115577_ 4))
                 (apply foldl__1 _g115576_))
                ((let () (declare (not safe)) (##fx>= _g115577_ 4))
                 (apply foldl* _g115576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g115576_))))))
    (define __foldl*
      (lambda (_%f111903%_ _%iv111904%_ . _%rest111905%_)
        (let ((_%f111908%_ _%f111903%_))
          (let _%recur111917%_ ((_%iv111919%_ _%iv111904%_)
                                (_%rest111920%_ _%rest111905%_))
            (if (let* ((_%f111922%_ pair?)
                       (_%lst111925%_ _%rest111920%_)
                       (_%f111930%_ _%f111922%_))
                  (__andmap1 _%f111930%_ _%lst111925%_))
                (_%recur111917%_
                 (let ((__tmp115578
                        (let* ((_%f111949%_
                                (lambda (_%xs111946%_ _%r111947%_)
                                  (cons (car _%xs111946%_) _%r111947%_)))
                               (_%iv111952%_ (list _%iv111919%_))
                               (_%lst111955%_ _%rest111920%_)
                               (_%f111960%_ _%f111949%_))
                          (__foldr1 _%f111960%_ _%iv111952%_ _%lst111955%_))))
                   (declare (not safe))
                   (##apply _%f111908%_ __tmp115578))
                 (map cdr _%rest111920%_))
                _%iv111919%_)))))
    (define foldl*
      (lambda (_%f103038%_ _%iv103039%_ . _%rest103040%_)
        (if (procedure? _%f103038%_)
            (let ((_%f103044%_ _%f103038%_))
              (declare (not safe))
              (##apply __foldl* _%f103044%_ _%iv103039%_ _%rest103040%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f103038%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f111852%_ _%iv111853%_ _%lst111854%_)
        (let ((_%f111857%_ _%f111852%_))
          (let _%recur111866%_ ((_%rest111868%_ _%lst111854%_))
            (let* ((_%rest111869111877%_ _%rest111868%_)
                   (_%else111871111885%_ (lambda () _%iv111853%_))
                   (_%K111873111891%_
                    (lambda (_%rest111888%_ _%x111889%_)
                      (let ((__tmp115579 (_%recur111866%_ _%rest111888%_)))
                        (declare (not safe))
                        (_%f111857%_ _%x111889%_ __tmp115579)))))
              (if (pair? _%rest111869111877%_)
                  (let ((_%hd111874111894%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111869111877%_)))
                        (_%tl111875111896%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111869111877%_))))
                    (let* ((_%x111899%_ _%hd111874111894%_)
                           (_%rest111901%_ _%tl111875111896%_))
                      (_%K111873111891%_ _%rest111901%_ _%x111899%_)))
                  (_%else111871111885%_)))))))
    (define foldr1
      (lambda (_%f103174%_ _%iv103175%_ _%lst103176%_)
        (if (procedure? _%f103174%_)
            (let ((_%f103180%_ _%f103174%_))
              (__foldr1 _%f103180%_ _%iv103175%_ _%lst103176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f103174%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f111766%_ _%iv111767%_ _%lst1111768%_ _%lst2111769%_)
        (let ((_%f111772%_ _%f111766%_))
          (let _%recur111781%_ ((_%rest1111783%_ _%lst1111768%_)
                                (_%rest2111784%_ _%lst2111769%_))
            (let* ((_%rest1111785111793%_ _%rest1111783%_)
                   (_%else111787111801%_ (lambda () _%iv111767%_))
                   (_%K111789111840%_
                    (lambda (_%rest1111804%_ _%x1111805%_)
                      (let* ((_%rest2111806111814%_ _%rest2111784%_)
                             (_%else111808111822%_ (lambda () _%iv111767%_))
                             (_%K111810111828%_
                              (lambda (_%rest2111825%_ _%x2111826%_)
                                (let ((__tmp115580
                                       (_%recur111781%_
                                        _%rest1111804%_
                                        _%rest2111825%_)))
                                  (declare (not safe))
                                  (_%f111772%_
                                   _%x1111805%_
                                   _%x2111826%_
                                   __tmp115580)))))
                        (if (pair? _%rest2111806111814%_)
                            (let ((_%hd111811111831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111806111814%_)))
                                  (_%tl111812111833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111806111814%_))))
                              (let* ((_%x2111836%_ _%hd111811111831%_)
                                     (_%rest2111838%_ _%tl111812111833%_))
                                (_%K111810111828%_
                                 _%rest2111838%_
                                 _%x2111836%_)))
                            (_%else111808111822%_))))))
              (if (pair? _%rest1111785111793%_)
                  (let ((_%hd111790111843%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111785111793%_)))
                        (_%tl111791111845%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111785111793%_))))
                    (let* ((_%x1111848%_ _%hd111790111843%_)
                           (_%rest1111850%_ _%tl111791111845%_))
                      (_%K111789111840%_ _%rest1111850%_ _%x1111848%_)))
                  (_%else111787111801%_)))))))
    (define foldr2
      (lambda (_%f103310%_ _%iv103311%_ _%lst1103312%_ _%lst2103313%_)
        (if (procedure? _%f103310%_)
            (let ((_%f103317%_ _%f103310%_))
              (__foldr2
               _%f103317%_
               _%iv103311%_
               _%lst1103312%_
               _%lst2103313%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f103310%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f111699%_ _%iv111700%_ _%lst111701%_)
        (let* ((_%f111703%_ _%f111699%_)
               (_%iv111706%_ _%iv111700%_)
               (_%lst111709%_ _%lst111701%_))
          (if (procedure? _%f111703%_)
              (let ((_%f111714%_ _%f111703%_))
                (__foldr1 _%f111714%_ _%iv111706%_ _%lst111709%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111703%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f111727%_ _%iv111728%_ _%lst1111729%_ _%lst2111730%_)
        (let* ((_%f111732%_ _%f111727%_)
               (_%iv111735%_ _%iv111728%_)
               (_%lst1111738%_ _%lst1111729%_)
               (_%lst2111741%_ _%lst2111730%_))
          (if (procedure? _%f111732%_)
              (let ((_%f111746%_ _%f111732%_))
                (__foldr2
                 _%f111746%_
                 _%iv111735%_
                 _%lst1111738%_
                 _%lst2111741%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111732%_)
                '#!void)))))
    (define foldr
      (lambda _g115581_
        (let ((_g115582_ (let () (declare (not safe)) (##length _g115581_))))
          (cond ((let () (declare (not safe)) (##fx= _g115582_ 3))
                 (apply foldr__0 _g115581_))
                ((let () (declare (not safe)) (##fx= _g115582_ 4))
                 (apply foldr__1 _g115581_))
                ((let () (declare (not safe)) (##fx>= _g115582_ 4))
                 (apply foldr* _g115581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g115581_))))))
    (define __foldr*
      (lambda (_%f111631%_ _%iv111632%_ . _%rest111633%_)
        (let ((_%f111636%_ _%f111631%_))
          (let _%recur111645%_ ((_%rest111647%_ _%rest111633%_))
            (if (let* ((_%f111649%_ pair?)
                       (_%lst111652%_ _%rest111647%_)
                       (_%f111657%_ _%f111649%_))
                  (__andmap1 _%f111657%_ _%lst111652%_))
                (let ((__tmp115583
                       (let* ((_%f111676%_
                               (lambda (_%xs111673%_ _%r111674%_)
                                 (cons (car _%xs111673%_) _%r111674%_)))
                              (_%iv111679%_
                               (list (_%recur111645%_
                                      (map cdr _%rest111647%_))))
                              (_%lst111682%_ _%rest111647%_)
                              (_%f111687%_ _%f111676%_))
                         (__foldr1 _%f111687%_ _%iv111679%_ _%lst111682%_))))
                  (declare (not safe))
                  (##apply _%f111636%_ __tmp115583))
                _%iv111632%_)))))
    (define foldr*
      (lambda (_%f103447%_ _%iv103448%_ . _%rest103449%_)
        (if (procedure? _%f103447%_)
            (let ((_%f103453%_ _%f103447%_))
              (declare (not safe))
              (##apply __foldr* _%f103453%_ _%iv103448%_ _%rest103449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f103447%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l111518%_)
        (let* ((_%l111519111532%_ _%l111518%_)
               (_%E111523111536%_
                (lambda ()
                  (error '"No clause matching"
                         _%l111519111532%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K111528111621%_
                 (lambda (_%r111619%_) (remove-nulls! _%r111619%_)))
                (_%K111525111608%_
                 (lambda (_%r111548%_)
                   (let _%loop111550%_ ((_%l111552%_ _%l111518%_)
                                        (_%r111553%_ _%r111548%_))
                     (let* ((_%r111554111567%_ _%r111553%_)
                            (_%E111558111571%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r111554111567%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K111563111598%_
                              (lambda (_%rr111596%_)
                                (let ((__tmp115585 _%l111552%_)
                                      (__tmp115584
                                       (remove-nulls! _%rr111596%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp115585 __tmp115584))))
                             (_%K111560111585%_
                              (lambda (_%rr111583%_)
                                (_%loop111550%_ _%r111553%_ _%rr111583%_)))
                             (_%K111559111576%_ (lambda () '#!void)))
                         (if (pair? _%r111554111567%_)
                             (let ((_%tl111565111603%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r111554111567%_)))
                                   (_%hd111564111601%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r111554111567%_))))
                               (if (null? _%hd111564111601%_)
                                   (let ((_%rr111606%_ _%tl111565111603%_))
                                     (_%K111563111598%_ _%rr111606%_))
                                   (let ((_%rr111591%_ _%tl111565111603%_))
                                     (_%K111560111585%_ _%rr111591%_))))
                             '#!void))))
                   _%l111518%_))
                (_%K111524111541%_ (lambda () _%l111518%_)))
            (if (pair? _%l111519111532%_)
                (let ((_%tl111530111626%_
                       (let () (declare (not safe)) (##cdr _%l111519111532%_)))
                      (_%hd111529111624%_
                       (let ()
                         (declare (not safe))
                         (##car _%l111519111532%_))))
                  (if (null? _%hd111529111624%_)
                      (let ((_%r111629%_ _%tl111530111626%_))
                        (remove-nulls! _%r111629%_))
                      (let ((_%r111614%_ _%tl111530111626%_))
                        (_%K111525111608%_ _%r111614%_))))
                (_%K111524111541%_))))))
    (define append1!
      (lambda (_%l111503%_ _%x111504%_)
        (let ((_%l2111507%_ (cons _%x111504%_ '())))
          (if (pair? _%l111503%_)
              (let ((_%l111509%_ _%l111503%_))
                (let ((__tmp115586
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l111509%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp115586 _%l2111507%_))
                _%l111509%_)
              _%l2111507%_))))
    (define __append-reverse-until
      (lambda (_%pred111445%_ _%rhead111446%_ _%tail111447%_)
        (let ((_%pred111450%_ _%pred111445%_))
          (let _%loop111459%_ ((_%rhead111461%_ _%rhead111446%_)
                               (_%tail111462%_ _%tail111447%_))
            (let* ((_%rhead111464111473%_ _%rhead111461%_)
                   (_%E111467111477%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead111464111473%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K111471111500%_ (lambda () (values '() _%tail111462%_)))
                    (_%K111468111484%_
                     (lambda (_%r111481%_ _%a111482%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred111450%_ _%a111482%_))
                           (values _%rhead111461%_ _%tail111462%_)
                           (_%loop111459%_
                            _%r111481%_
                            (cons _%a111482%_ _%tail111462%_))))))
                (let ((_%try-match111466111496%_
                       (lambda ()
                         (if (pair? _%rhead111464111473%_)
                             (let ((_%tl111470111489%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead111464111473%_)))
                                   (_%hd111469111487%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead111464111473%_))))
                               (let ((_%a111492%_ _%hd111469111487%_)
                                     (_%r111494%_ _%tl111470111489%_))
                                 (_%K111468111484%_ _%r111494%_ _%a111492%_)))
                             (_%E111467111477%_)))))
                  (if (null? _%rhead111464111473%_)
                      (_%K111471111500%_)
                      (_%try-match111466111496%_)))))))))
    (define append-reverse-until
      (lambda (_%pred103583%_ _%rhead103584%_ _%tail103585%_)
        (if (procedure? _%pred103583%_)
            (let ((_%pred103589%_ _%pred103583%_))
              (__append-reverse-until
               _%pred103589%_
               _%rhead103584%_
               _%tail103585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred103583%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f111394%_ _%lst111395%_)
        (let ((_%f111398%_ _%f111394%_))
          (let _%lp111407%_ ((_%rest111409%_ _%lst111395%_))
            (let* ((_%rest111411111419%_ _%rest111409%_)
                   (_%else111413111427%_ (lambda () '#t))
                   (_%K111415111433%_
                    (lambda (_%rest111430%_ _%x111431%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f111398%_ _%x111431%_))
                          (_%lp111407%_ _%rest111430%_)
                          '#f))))
              (if (pair? _%rest111411111419%_)
                  (let ((_%hd111416111436%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111411111419%_)))
                        (_%tl111417111438%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111411111419%_))))
                    (let* ((_%x111441%_ _%hd111416111436%_)
                           (_%rest111443%_ _%tl111417111438%_))
                      (_%K111415111433%_ _%rest111443%_ _%x111441%_)))
                  (_%else111413111427%_)))))))
    (define andmap1
      (lambda (_%f103719%_ _%lst103720%_)
        (if (procedure? _%f103719%_)
            (let ((_%f103724%_ _%f103719%_))
              (__andmap1 _%f103724%_ _%lst103720%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f103719%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f111308%_ _%lst1111309%_ _%lst2111310%_)
        (let ((_%f111313%_ _%f111308%_))
          (let _%lp111322%_ ((_%rest1111324%_ _%lst1111309%_)
                             (_%rest2111325%_ _%lst2111310%_))
            (let* ((_%rest1111327111335%_ _%rest1111324%_)
                   (_%else111329111343%_ (lambda () '#t))
                   (_%K111331111382%_
                    (lambda (_%rest1111346%_ _%x1111347%_)
                      (let* ((_%rest2111348111356%_ _%rest2111325%_)
                             (_%else111350111364%_ (lambda () '#t))
                             (_%K111352111370%_
                              (lambda (_%rest2111367%_ _%x2111368%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f111313%_ _%x1111347%_ _%x2111368%_))
                                    (_%lp111322%_
                                     _%rest1111346%_
                                     _%rest2111367%_)
                                    '#f))))
                        (if (pair? _%rest2111348111356%_)
                            (let ((_%hd111353111373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111348111356%_)))
                                  (_%tl111354111375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111348111356%_))))
                              (let* ((_%x2111378%_ _%hd111353111373%_)
                                     (_%rest2111380%_ _%tl111354111375%_))
                                (_%K111352111370%_
                                 _%rest2111380%_
                                 _%x2111378%_)))
                            (_%else111350111364%_))))))
              (if (pair? _%rest1111327111335%_)
                  (let ((_%hd111332111385%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111327111335%_)))
                        (_%tl111333111387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111327111335%_))))
                    (let* ((_%x1111390%_ _%hd111332111385%_)
                           (_%rest1111392%_ _%tl111333111387%_))
                      (_%K111331111382%_ _%rest1111392%_ _%x1111390%_)))
                  (_%else111329111343%_)))))))
    (define andmap2
      (lambda (_%f103854%_ _%lst1103855%_ _%lst2103856%_)
        (if (procedure? _%f103854%_)
            (let ((_%f103860%_ _%f103854%_))
              (__andmap2 _%f103860%_ _%lst1103855%_ _%lst2103856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f103854%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f111252%_ _%lst111253%_)
        (let* ((_%f111255%_ _%f111252%_) (_%lst111258%_ _%lst111253%_))
          (if (procedure? _%f111255%_)
              (let ((_%f111263%_ _%f111255%_))
                (__andmap1 _%f111263%_ _%lst111258%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111255%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f111275%_ _%lst1111276%_ _%lst2111277%_)
        (let* ((_%f111279%_ _%f111275%_)
               (_%lst1111282%_ _%lst1111276%_)
               (_%lst2111285%_ _%lst2111277%_))
          (if (procedure? _%f111279%_)
              (let ((_%f111290%_ _%f111279%_))
                (__andmap2 _%f111290%_ _%lst1111282%_ _%lst2111285%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111279%_)
                '#!void)))))
    (define andmap
      (lambda _g115587_
        (let ((_g115588_ (let () (declare (not safe)) (##length _g115587_))))
          (cond ((let () (declare (not safe)) (##fx= _g115588_ 2))
                 (apply andmap__0 _g115587_))
                ((let () (declare (not safe)) (##fx= _g115588_ 3))
                 (apply andmap__1 _g115587_))
                ((let () (declare (not safe)) (##fx>= _g115588_ 3))
                 (apply andmap* _g115587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g115587_))))))
    (define __andmap*
      (lambda (_%f111209%_ . _%rest111210%_)
        (let ((_%f111213%_ _%f111209%_))
          (let _%recur111222%_ ((_%rest111224%_ _%rest111210%_))
            (if (let* ((_%f111227%_ pair?)
                       (_%lst111230%_ _%rest111224%_)
                       (_%f111235%_ _%f111227%_))
                  (__andmap1 _%f111235%_ _%lst111230%_))
                (if (let ((__tmp115589 (map car _%rest111224%_)))
                      (declare (not safe))
                      (##apply _%f111213%_ __tmp115589))
                    (_%recur111222%_ (map cdr _%rest111224%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f103990%_ . _%rest103991%_)
        (if (procedure? _%f103990%_)
            (let ((_%f103995%_ _%f103990%_))
              (declare (not safe))
              (##apply __andmap* _%f103995%_ _%rest103991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f103990%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f111156%_ _%lst111157%_)
        (let ((_%f111160%_ _%f111156%_))
          (let _%lp111169%_ ((_%rest111171%_ _%lst111157%_))
            (let* ((_%rest111172111180%_ _%rest111171%_)
                   (_%else111174111188%_ (lambda () '#f))
                   (_%K111176111197%_
                    (lambda (_%rest111191%_ _%x111192%_)
                      (let ((_%$e111194%_
                             (let ()
                               (declare (not safe))
                               (_%f111160%_ _%x111192%_))))
                        (if _%$e111194%_
                            _%$e111194%_
                            (_%lp111169%_ _%rest111191%_))))))
              (if (pair? _%rest111172111180%_)
                  (let ((_%hd111177111200%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111172111180%_)))
                        (_%tl111178111202%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111172111180%_))))
                    (let* ((_%x111205%_ _%hd111177111200%_)
                           (_%rest111207%_ _%tl111178111202%_))
                      (_%K111176111197%_ _%rest111207%_ _%x111205%_)))
                  (_%else111174111188%_)))))))
    (define ormap1
      (lambda (_%f104125%_ _%lst104126%_)
        (if (procedure? _%f104125%_)
            (let ((_%f104130%_ _%f104125%_))
              (__ormap1 _%f104130%_ _%lst104126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f104125%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f111068%_ _%lst1111069%_ _%lst2111070%_)
        (let ((_%f111073%_ _%f111068%_))
          (let _%lp111082%_ ((_%rest1111084%_ _%lst1111069%_)
                             (_%rest2111085%_ _%lst2111070%_))
            (let* ((_%rest1111086111094%_ _%rest1111084%_)
                   (_%else111088111102%_ (lambda () '#f))
                   (_%K111090111144%_
                    (lambda (_%rest1111105%_ _%x1111106%_)
                      (let* ((_%rest2111107111115%_ _%rest2111085%_)
                             (_%else111109111123%_ (lambda () '#f))
                             (_%K111111111132%_
                              (lambda (_%rest2111126%_ _%x2111127%_)
                                (let ((_%$e111129%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f111073%_
                                          _%x1111106%_
                                          _%x2111127%_))))
                                  (if _%$e111129%_
                                      _%$e111129%_
                                      (_%lp111082%_
                                       _%rest1111105%_
                                       _%rest2111126%_))))))
                        (if (pair? _%rest2111107111115%_)
                            (let ((_%hd111112111135%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111107111115%_)))
                                  (_%tl111113111137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111107111115%_))))
                              (let* ((_%x2111140%_ _%hd111112111135%_)
                                     (_%rest2111142%_ _%tl111113111137%_))
                                (_%K111111111132%_
                                 _%rest2111142%_
                                 _%x2111140%_)))
                            (_%else111109111123%_))))))
              (if (pair? _%rest1111086111094%_)
                  (let ((_%hd111091111147%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111086111094%_)))
                        (_%tl111092111149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111086111094%_))))
                    (let* ((_%x1111152%_ _%hd111091111147%_)
                           (_%rest1111154%_ _%tl111092111149%_))
                      (_%K111090111144%_ _%rest1111154%_ _%x1111152%_)))
                  (_%else111088111102%_)))))))
    (define ormap2
      (lambda (_%f104260%_ _%lst1104261%_ _%lst2104262%_)
        (if (procedure? _%f104260%_)
            (let ((_%f104266%_ _%f104260%_))
              (__ormap2 _%f104266%_ _%lst1104261%_ _%lst2104262%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f104260%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f111012%_ _%lst111013%_)
        (let* ((_%f111015%_ _%f111012%_) (_%lst111018%_ _%lst111013%_))
          (if (procedure? _%f111015%_)
              (let ((_%f111023%_ _%f111015%_))
                (__ormap1 _%f111023%_ _%lst111018%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111015%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f111035%_ _%lst1111036%_ _%lst2111037%_)
        (let* ((_%f111039%_ _%f111035%_)
               (_%lst1111042%_ _%lst1111036%_)
               (_%lst2111045%_ _%lst2111037%_))
          (if (procedure? _%f111039%_)
              (let ((_%f111050%_ _%f111039%_))
                (__ormap2 _%f111050%_ _%lst1111042%_ _%lst2111045%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111039%_)
                '#!void)))))
    (define ormap
      (lambda _g115590_
        (let ((_g115591_ (let () (declare (not safe)) (##length _g115590_))))
          (cond ((let () (declare (not safe)) (##fx= _g115591_ 2))
                 (apply ormap__0 _g115590_))
                ((let () (declare (not safe)) (##fx= _g115591_ 3))
                 (apply ormap__1 _g115590_))
                ((let () (declare (not safe)) (##fx>= _g115591_ 3))
                 (apply ormap* _g115590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g115590_))))))
    (define __ormap*
      (lambda (_%f110968%_ . _%rest110969%_)
        (let ((_%f110972%_ _%f110968%_))
          (let _%recur110981%_ ((_%rest110983%_ _%rest110969%_))
            (if (let* ((_%f110985%_ pair?)
                       (_%lst110988%_ _%rest110983%_)
                       (_%f110993%_ _%f110985%_))
                  (__andmap1 _%f110993%_ _%lst110988%_))
                (let ((_%$e111009%_
                       (let ((__tmp115592 (map car _%rest110983%_)))
                         (declare (not safe))
                         (##apply _%f110972%_ __tmp115592))))
                  (if _%$e111009%_
                      _%$e111009%_
                      (_%recur110981%_ (map cdr _%rest110983%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f104396%_ . _%rest104397%_)
        (if (procedure? _%f104396%_)
            (let ((_%f104401%_ _%f104396%_))
              (declare (not safe))
              (##apply __ormap* _%f104401%_ _%rest104397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f104396%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f110911%_ _%lst110912%_)
        (let ((_%f110915%_ _%f110911%_))
          (let _%recur110924%_ ((_%rest110926%_ _%lst110912%_))
            (let* ((_%rest110928110936%_ _%rest110926%_)
                   (_%else110930110944%_ (lambda () '()))
                   (_%K110932110956%_
                    (lambda (_%rest110947%_ _%x110948%_)
                      (let ((_%$e110950%_
                             (let ()
                               (declare (not safe))
                               (_%f110915%_ _%x110948%_))))
                        (if _%$e110950%_
                            (cons _%$e110950%_
                                  (_%recur110924%_ _%rest110947%_))
                            (_%recur110924%_ _%rest110947%_))))))
              (if (pair? _%rest110928110936%_)
                  (let ((_%hd110933110959%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110928110936%_)))
                        (_%tl110934110961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110928110936%_))))
                    (let* ((_%x110964%_ _%hd110933110959%_)
                           (_%rest110966%_ _%tl110934110961%_))
                      (_%K110932110956%_ _%rest110966%_ _%x110964%_)))
                  (_%else110930110944%_)))))))
    (define filter-map1
      (lambda (_%f104531%_ _%lst104532%_)
        (if (procedure? _%f104531%_)
            (let ((_%f104536%_ _%f104531%_))
              (__filter-map1 _%f104536%_ _%lst104532%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f104531%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f110819%_ _%lst1110820%_ _%lst2110821%_)
        (let ((_%f110824%_ _%f110819%_))
          (let _%recur110833%_ ((_%rest1110835%_ _%lst1110820%_)
                                (_%rest2110836%_ _%lst2110821%_))
            (let* ((_%rest1110838110846%_ _%rest1110835%_)
                   (_%else110840110854%_ (lambda () '()))
                   (_%K110842110899%_
                    (lambda (_%rest1110857%_ _%x1110858%_)
                      (let* ((_%rest2110859110867%_ _%rest2110836%_)
                             (_%else110861110875%_ (lambda () '()))
                             (_%K110863110887%_
                              (lambda (_%rest2110878%_ _%x2110879%_)
                                (let ((_%$e110881%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110824%_
                                          _%x1110858%_
                                          _%x2110879%_))))
                                  (if _%$e110881%_
                                      (cons _%$e110881%_
                                            (_%recur110833%_
                                             _%rest1110857%_
                                             _%rest2110878%_))
                                      (_%recur110833%_
                                       _%rest1110857%_
                                       _%rest2110878%_))))))
                        (if (pair? _%rest2110859110867%_)
                            (let ((_%hd110864110890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110859110867%_)))
                                  (_%tl110865110892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110859110867%_))))
                              (let* ((_%x2110895%_ _%hd110864110890%_)
                                     (_%rest2110897%_ _%tl110865110892%_))
                                (_%K110863110887%_
                                 _%rest2110897%_
                                 _%x2110895%_)))
                            (_%else110861110875%_))))))
              (if (pair? _%rest1110838110846%_)
                  (let ((_%hd110843110902%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110838110846%_)))
                        (_%tl110844110904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110838110846%_))))
                    (let* ((_%x1110907%_ _%hd110843110902%_)
                           (_%rest1110909%_ _%tl110844110904%_))
                      (_%K110842110899%_ _%rest1110909%_ _%x1110907%_)))
                  (_%else110840110854%_)))))))
    (define filter-map2
      (lambda (_%f104666%_ _%lst1104667%_ _%lst2104668%_)
        (if (procedure? _%f104666%_)
            (let ((_%f104672%_ _%f104666%_))
              (__filter-map2 _%f104672%_ _%lst1104667%_ _%lst2104668%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f104666%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f110763%_ _%lst110764%_)
        (let* ((_%f110766%_ _%f110763%_) (_%lst110769%_ _%lst110764%_))
          (if (procedure? _%f110766%_)
              (let ((_%f110774%_ _%f110766%_))
                (__filter-map1 _%f110774%_ _%lst110769%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110766%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f110786%_ _%lst1110787%_ _%lst2110788%_)
        (let* ((_%f110790%_ _%f110786%_)
               (_%lst1110793%_ _%lst1110787%_)
               (_%lst2110796%_ _%lst2110788%_))
          (if (procedure? _%f110790%_)
              (let ((_%f110801%_ _%f110790%_))
                (__filter-map2 _%f110801%_ _%lst1110793%_ _%lst2110796%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110790%_)
                '#!void)))))
    (define filter-map
      (lambda _g115593_
        (let ((_g115594_ (let () (declare (not safe)) (##length _g115593_))))
          (cond ((let () (declare (not safe)) (##fx= _g115594_ 2))
                 (apply filter-map__0 _g115593_))
                ((let () (declare (not safe)) (##fx= _g115594_ 3))
                 (apply filter-map__1 _g115593_))
                ((let () (declare (not safe)) (##fx>= _g115594_ 3))
                 (apply filter-map* _g115593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g115593_))))))
    (define __filter-map*
      (lambda (_%f110714%_ . _%rest110715%_)
        (let ((_%f110718%_ _%f110714%_))
          (let _%recur110727%_ ((_%rest110729%_ _%rest110715%_))
            (if (let* ((_%f110732%_ pair?)
                       (_%lst110735%_ _%rest110729%_)
                       (_%f110740%_ _%f110732%_))
                  (__andmap1 _%f110740%_ _%lst110735%_))
                (let ((_%$e110757%_
                       (let ((__tmp115595 (map car _%rest110729%_)))
                         (declare (not safe))
                         (##apply _%f110718%_ __tmp115595))))
                  (if _%$e110757%_
                      (cons _%$e110757%_
                            (_%recur110727%_ (map cdr _%rest110729%_)))
                      (_%recur110727%_ (map cdr _%rest110729%_))))
                '())))))
    (define filter-map*
      (lambda (_%f104802%_ . _%rest104803%_)
        (if (procedure? _%f104802%_)
            (let ((_%f104807%_ _%f104802%_))
              (declare (not safe))
              (##apply __filter-map* _%f104807%_ _%rest104803%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f104802%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key110690%_ _%lst110692%_ _%default110694%_)
        (let ((_%$e110697%_
               (if (pair? _%lst110692%_)
                   (assq _%key110690%_ _%lst110692%_)
                   '#f)))
          (if _%$e110697%_
              (cdr _%$e110697%_)
              (if (procedure? _%default110694%_)
                  (_%default110694%_ _%key110690%_)
                  _%default110694%_)))))
    (define agetq__0
      (lambda (_%key110705%_ _%lst110706%_)
        (let ((_%default110708%_ '#f))
          (agetq__% _%key110705%_ _%lst110706%_ _%default110708%_))))
    (define agetq
      (lambda _g115596_
        (let ((_g115597_ (let () (declare (not safe)) (##length _g115596_))))
          (cond ((let () (declare (not safe)) (##fx= _g115597_ 2))
                 (apply agetq__0 _g115596_))
                ((let () (declare (not safe)) (##fx= _g115597_ 3))
                 (apply agetq__% _g115596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g115596_))))))
    (define agetv__%
      (lambda (_%key110665%_ _%lst110667%_ _%default110669%_)
        (let ((_%$e110672%_
               (if (pair? _%lst110667%_)
                   (assv _%key110665%_ _%lst110667%_)
                   '#f)))
          (if _%$e110672%_
              (cdr _%$e110672%_)
              (if (procedure? _%default110669%_)
                  (_%default110669%_ _%key110665%_)
                  _%default110669%_)))))
    (define agetv__0
      (lambda (_%key110680%_ _%lst110681%_)
        (let ((_%default110683%_ '#f))
          (agetv__% _%key110680%_ _%lst110681%_ _%default110683%_))))
    (define agetv
      (lambda _g115598_
        (let ((_g115599_ (let () (declare (not safe)) (##length _g115598_))))
          (cond ((let () (declare (not safe)) (##fx= _g115599_ 2))
                 (apply agetv__0 _g115598_))
                ((let () (declare (not safe)) (##fx= _g115599_ 3))
                 (apply agetv__% _g115598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g115598_))))))
    (define aget__%
      (lambda (_%key110640%_ _%lst110642%_ _%default110644%_)
        (let ((_%$e110647%_
               (if (pair? _%lst110642%_)
                   (assoc _%key110640%_ _%lst110642%_)
                   '#f)))
          (if _%$e110647%_
              (cdr _%$e110647%_)
              (if (procedure? _%default110644%_)
                  (_%default110644%_ _%key110640%_)
                  _%default110644%_)))))
    (define aget__0
      (lambda (_%key110655%_ _%lst110656%_)
        (let ((_%default110658%_ '#f))
          (aget__% _%key110655%_ _%lst110656%_ _%default110658%_))))
    (define aget
      (lambda _g115600_
        (let ((_g115601_ (let () (declare (not safe)) (##length _g115600_))))
          (cond ((let () (declare (not safe)) (##fx= _g115601_ 2))
                 (apply aget__0 _g115600_))
                ((let () (declare (not safe)) (##fx= _g115601_ 3))
                 (apply aget__% _g115600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g115600_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key110569%_ _%lst110571%_ _%default110573%_)
        (let _%lp110576%_ ((_%rest110579%_ _%lst110571%_))
          (let* ((_%rest110581110591%_ _%rest110579%_)
                 (_%else110583110599%_
                  (lambda ()
                    (if (procedure? _%default110573%_)
                        (_%default110573%_ _%key110569%_)
                        _%default110573%_)))
                 (_%K110585110608%_
                  (lambda (_%rest110602%_ _%v110603%_ _%k110605%_)
                    (if (eq? _%k110605%_ _%key110569%_)
                        _%v110603%_
                        (_%lp110576%_ _%rest110602%_)))))
            (if (pair? _%rest110581110591%_)
                (let ((_%hd110586110611%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110581110591%_)))
                      (_%tl110587110613%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110581110591%_))))
                  (let ((_%k110616%_ _%hd110586110611%_))
                    (if (pair? _%tl110587110613%_)
                        (let ((_%hd110588110618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110587110613%_)))
                              (_%tl110589110620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110587110613%_))))
                          (let* ((_%v110623%_ _%hd110588110618%_)
                                 (_%rest110625%_ _%tl110589110620%_))
                            (_%K110585110608%_
                             _%rest110625%_
                             _%v110623%_
                             _%k110616%_)))
                        (_%else110583110599%_))))
                (_%else110583110599%_))))))
    (define pgetq__0
      (lambda (_%key110630%_ _%lst110631%_)
        (let ((_%default110633%_ '#f))
          (pgetq__% _%key110630%_ _%lst110631%_ _%default110633%_))))
    (define pgetq
      (lambda _g115602_
        (let ((_g115603_ (let () (declare (not safe)) (##length _g115602_))))
          (cond ((let () (declare (not safe)) (##fx= _g115603_ 2))
                 (apply pgetq__0 _g115602_))
                ((let () (declare (not safe)) (##fx= _g115603_ 3))
                 (apply pgetq__% _g115602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g115602_))))))
    (define pgetv__%
      (lambda (_%key110498%_ _%lst110500%_ _%default110502%_)
        (let _%lp110505%_ ((_%rest110508%_ _%lst110500%_))
          (let* ((_%rest110510110520%_ _%rest110508%_)
                 (_%else110512110528%_
                  (lambda ()
                    (if (procedure? _%default110502%_)
                        (_%default110502%_ _%key110498%_)
                        _%default110502%_)))
                 (_%K110514110537%_
                  (lambda (_%rest110531%_ _%v110532%_ _%k110534%_)
                    (if (eqv? _%k110534%_ _%key110498%_)
                        _%v110532%_
                        (_%lp110505%_ _%rest110531%_)))))
            (if (pair? _%rest110510110520%_)
                (let ((_%hd110515110540%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110510110520%_)))
                      (_%tl110516110542%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110510110520%_))))
                  (let ((_%k110545%_ _%hd110515110540%_))
                    (if (pair? _%tl110516110542%_)
                        (let ((_%hd110517110547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110516110542%_)))
                              (_%tl110518110549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110516110542%_))))
                          (let* ((_%v110552%_ _%hd110517110547%_)
                                 (_%rest110554%_ _%tl110518110549%_))
                            (_%K110514110537%_
                             _%rest110554%_
                             _%v110552%_
                             _%k110545%_)))
                        (_%else110512110528%_))))
                (_%else110512110528%_))))))
    (define pgetv__0
      (lambda (_%key110559%_ _%lst110560%_)
        (let ((_%default110562%_ '#f))
          (pgetv__% _%key110559%_ _%lst110560%_ _%default110562%_))))
    (define pgetv
      (lambda _g115604_
        (let ((_g115605_ (let () (declare (not safe)) (##length _g115604_))))
          (cond ((let () (declare (not safe)) (##fx= _g115605_ 2))
                 (apply pgetv__0 _g115604_))
                ((let () (declare (not safe)) (##fx= _g115605_ 3))
                 (apply pgetv__% _g115604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g115604_))))))
    (define pget__%
      (lambda (_%key110427%_ _%lst110429%_ _%default110431%_)
        (let _%lp110434%_ ((_%rest110437%_ _%lst110429%_))
          (let* ((_%rest110439110449%_ _%rest110437%_)
                 (_%else110441110457%_
                  (lambda ()
                    (if (procedure? _%default110431%_)
                        (_%default110431%_ _%key110427%_)
                        _%default110431%_)))
                 (_%K110443110466%_
                  (lambda (_%rest110460%_ _%v110461%_ _%k110463%_)
                    (if (equal? _%k110463%_ _%key110427%_)
                        _%v110461%_
                        (_%lp110434%_ _%rest110460%_)))))
            (if (pair? _%rest110439110449%_)
                (let ((_%hd110444110469%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110439110449%_)))
                      (_%tl110445110471%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110439110449%_))))
                  (let ((_%k110474%_ _%hd110444110469%_))
                    (if (pair? _%tl110445110471%_)
                        (let ((_%hd110446110476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110445110471%_)))
                              (_%tl110447110478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110445110471%_))))
                          (let* ((_%v110481%_ _%hd110446110476%_)
                                 (_%rest110483%_ _%tl110447110478%_))
                            (_%K110443110466%_
                             _%rest110483%_
                             _%v110481%_
                             _%k110474%_)))
                        (_%else110441110457%_))))
                (_%else110441110457%_))))))
    (define pget__0
      (lambda (_%key110488%_ _%lst110489%_)
        (let ((_%default110491%_ '#f))
          (pget__% _%key110488%_ _%lst110489%_ _%default110491%_))))
    (define pget
      (lambda _g115606_
        (let ((_g115607_ (let () (declare (not safe)) (##length _g115606_))))
          (cond ((let () (declare (not safe)) (##fx= _g115607_ 2))
                 (apply pget__0 _g115606_))
                ((let () (declare (not safe)) (##fx= _g115607_ 3))
                 (apply pget__% _g115606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g115606_))))))
    (define __find
      (lambda (_%pred110387%_ _%lst110388%_)
        (let* ((_%pred110391%_ _%pred110387%_)
               (_%$e110422%_
                (let* ((_%proc110400%_ _%pred110391%_)
                       (_%lst110403%_ _%lst110388%_)
                       (_%proc110408%_ _%proc110400%_))
                  (__memf _%proc110408%_ _%lst110403%_))))
          (if _%$e110422%_
              (let () (declare (not safe)) (##car _%$e110422%_))
              '#f))))
    (define find
      (lambda (_%pred105099%_ _%lst105100%_)
        (if (procedure? _%pred105099%_)
            (let ((_%pred105104%_ _%pred105099%_))
              (__find _%pred105104%_ _%lst105100%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred105099%_)
              '#!void))))
    (define __memf
      (lambda (_%proc110337%_ _%lst110338%_)
        (let ((_%proc110341%_ _%proc110337%_))
          (let _%lp110350%_ ((_%rest110352%_ _%lst110338%_))
            (let* ((_%rest110353110361%_ _%rest110352%_)
                   (_%else110355110369%_ (lambda () '#f))
                   (_%K110357110375%_
                    (lambda (_%tl110372%_ _%hd110373%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc110341%_ _%hd110373%_))
                          _%rest110352%_
                          (_%lp110350%_ _%tl110372%_)))))
              (if (pair? _%rest110353110361%_)
                  (let ((_%hd110358110378%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110353110361%_)))
                        (_%tl110359110380%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110353110361%_))))
                    (let* ((_%hd110383%_ _%hd110358110378%_)
                           (_%tl110385%_ _%tl110359110380%_))
                      (_%K110357110375%_ _%tl110385%_ _%hd110383%_)))
                  (_%else110355110369%_)))))))
    (define memf
      (lambda (_%proc105234%_ _%lst105235%_)
        (if (procedure? _%proc105234%_)
            (let ((_%proc105239%_ _%proc105234%_))
              (__memf _%proc105239%_ _%lst105235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc105234%_)
              '#!void))))
    (define remove1
      (lambda (_%el110260%_ _%lst110262%_)
        (let _%lp110265%_ ((_%rest110268%_ _%lst110262%_) (_%r110270%_ '()))
          (let* ((_%rest110272110280%_ _%rest110268%_)
                 (_%else110274110288%_ (lambda () _%lst110262%_))
                 (_%K110276110325%_
                  (lambda (_%rest110291%_ _%hd110292%_)
                    (if (equal? _%el110260%_ _%hd110292%_)
                        (let* ((_%f110295%_ cons)
                               (_%iv110298%_ _%rest110291%_)
                               (_%lst110301%_ _%r110270%_)
                               (_%f110306%_ _%f110295%_))
                          (__foldl1 _%f110306%_ _%iv110298%_ _%lst110301%_))
                        (_%lp110265%_
                         _%rest110291%_
                         (cons _%hd110292%_ _%r110270%_))))))
            (if (pair? _%rest110272110280%_)
                (let ((_%hd110277110328%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110272110280%_)))
                      (_%tl110278110330%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110272110280%_))))
                  (let* ((_%hd110333%_ _%hd110277110328%_)
                         (_%rest110335%_ _%tl110278110330%_))
                    (_%K110276110325%_ _%rest110335%_ _%hd110333%_)))
                (_%else110274110288%_))))))
    (define remv1
      (lambda (_%el110183%_ _%lst110185%_)
        (let _%lp110188%_ ((_%rest110191%_ _%lst110185%_) (_%r110193%_ '()))
          (let* ((_%rest110195110203%_ _%rest110191%_)
                 (_%else110197110211%_ (lambda () _%lst110185%_))
                 (_%K110199110248%_
                  (lambda (_%rest110214%_ _%hd110215%_)
                    (if (eqv? _%el110183%_ _%hd110215%_)
                        (let* ((_%f110218%_ cons)
                               (_%iv110221%_ _%rest110214%_)
                               (_%lst110224%_ _%r110193%_)
                               (_%f110229%_ _%f110218%_))
                          (__foldl1 _%f110229%_ _%iv110221%_ _%lst110224%_))
                        (_%lp110188%_
                         _%rest110214%_
                         (cons _%hd110215%_ _%r110193%_))))))
            (if (pair? _%rest110195110203%_)
                (let ((_%hd110200110251%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110195110203%_)))
                      (_%tl110201110253%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110195110203%_))))
                  (let* ((_%hd110256%_ _%hd110200110251%_)
                         (_%rest110258%_ _%tl110201110253%_))
                    (_%K110199110248%_ _%rest110258%_ _%hd110256%_)))
                (_%else110197110211%_))))))
    (define remq1
      (lambda (_%el110106%_ _%lst110108%_)
        (let _%lp110111%_ ((_%rest110114%_ _%lst110108%_) (_%r110116%_ '()))
          (let* ((_%rest110118110126%_ _%rest110114%_)
                 (_%else110120110134%_ (lambda () _%lst110108%_))
                 (_%K110122110171%_
                  (lambda (_%rest110137%_ _%hd110138%_)
                    (if (eq? _%el110106%_ _%hd110138%_)
                        (let* ((_%f110141%_ cons)
                               (_%iv110144%_ _%rest110137%_)
                               (_%lst110147%_ _%r110116%_)
                               (_%f110152%_ _%f110141%_))
                          (__foldl1 _%f110152%_ _%iv110144%_ _%lst110147%_))
                        (_%lp110111%_
                         _%rest110137%_
                         (cons _%hd110138%_ _%r110116%_))))))
            (if (pair? _%rest110118110126%_)
                (let ((_%hd110123110174%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110118110126%_)))
                      (_%tl110124110176%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110118110126%_))))
                  (let* ((_%hd110179%_ _%hd110123110174%_)
                         (_%rest110181%_ _%tl110124110176%_))
                    (_%K110122110171%_ _%rest110181%_ _%hd110179%_)))
                (_%else110120110134%_))))))
    (define __remf
      (lambda (_%proc110023%_ _%lst110024%_)
        (let ((_%proc110027%_ _%proc110023%_))
          (let _%lp110036%_ ((_%rest110038%_ _%lst110024%_) (_%r110039%_ '()))
            (let* ((_%rest110040110048%_ _%rest110038%_)
                   (_%else110042110056%_ (lambda () _%lst110024%_))
                   (_%K110044110094%_
                    (lambda (_%rest110059%_ _%hd110060%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc110027%_ _%hd110060%_))
                          (let* ((_%f110062%_ cons)
                                 (_%iv110065%_ _%rest110059%_)
                                 (_%lst110068%_ _%r110039%_)
                                 (_%f110073%_ _%f110062%_))
                            (__foldl1 _%f110073%_ _%iv110065%_ _%lst110068%_))
                          (_%lp110036%_
                           _%rest110059%_
                           (cons _%hd110060%_ _%r110039%_))))))
              (if (pair? _%rest110040110048%_)
                  (let ((_%hd110045110097%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110040110048%_)))
                        (_%tl110046110099%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110040110048%_))))
                    (let* ((_%hd110102%_ _%hd110045110097%_)
                           (_%rest110104%_ _%tl110046110099%_))
                      (_%K110044110094%_ _%rest110104%_ _%hd110102%_)))
                  (_%else110042110056%_)))))))
    (define remf
      (lambda (_%proc105450%_ _%lst105451%_)
        (if (procedure? _%proc105450%_)
            (let ((_%proc105455%_ _%proc105450%_))
              (__remf _%proc105455%_ _%lst105451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc105450%_)
              '#!void))))
    (define __1+
      (lambda (_%x110011%_)
        (let ((_%x110014%_ _%x110011%_)) (+ _%x110014%_ '1))))
    (define 1+
      (lambda (_%x105585%_)
        (if (number? _%x105585%_)
            (let ((_%x105589%_ _%x105585%_)) (__1+ _%x105589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x105585%_)
              '#!void))))
    (define __1-
      (lambda (_%x109999%_)
        (let ((_%x110002%_ _%x109999%_)) (- _%x110002%_ '1))))
    (define 1-
      (lambda (_%x105719%_)
        (if (number? _%x105719%_)
            (let ((_%x105723%_ _%x105719%_)) (__1- _%x105723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x105719%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x109987%_)
        (let ((_%x109990%_ _%x109987%_))
          (declare (not safe))
          (##fx+ _%x109990%_ '1))))
    (define fx1+
      (lambda (_%x105853%_)
        (if (fixnum? _%x105853%_)
            (let ((_%x105857%_ _%x105853%_)) (__fx1+ _%x105857%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x105853%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x109975%_)
        (let ((_%x109978%_ _%x109975%_))
          (declare (not safe))
          (##fx- _%x109978%_ '1))))
    (define fx1-
      (lambda (_%x105987%_)
        (if (fixnum? _%x105987%_)
            (let ((_%x105991%_ _%x105987%_)) (__fx1- _%x105991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x105987%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x109972%_)
        (if (fixnum? _%x109972%_)
            (let () (declare (not safe)) (##fx>= _%x109972%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x109969%_)
        (if (fixnum? _%x109969%_)
            (let () (declare (not safe)) (##fx> _%x109969%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x109966%_)
        (let () (declare (not safe)) (##fx= _%x109966%_ '0))))
    (define fx<0?
      (lambda (_%x109963%_)
        (if (fixnum? _%x109963%_)
            (let () (declare (not safe)) (##fx< _%x109963%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x109960%_)
        (if (fixnum? _%x109960%_)
            (let () (declare (not safe)) (##fx<= _%x109960%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x109957%_)
        (if (symbol? _%x109957%_) (not (uninterned-symbol? _%x109957%_)) '#f)))
    (define __display-as-string
      (lambda (_%x109851%_ _%port109852%_)
        (let ((_%port109855%_ _%port109852%_))
          (if (or (string? _%x109851%_)
                  (symbol? _%x109851%_)
                  (keyword? _%x109851%_)
                  (number? _%x109851%_)
                  (char? _%x109851%_))
              (display _%x109851%_ _%port109855%_)
              (if (pair? _%x109851%_)
                  (let ()
                    (let* ((_%x109878%_
                            (let () (declare (not safe)) (##car _%x109851%_)))
                           (_%port109881%_ _%port109855%_))
                      (if (output-port? _%port109881%_)
                          (let ((_%port109886%_ _%port109881%_))
                            (__display-as-string _%x109878%_ _%port109886%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109881%_)
                            '#!void)))
                    (let* ((_%x109901%_
                            (let () (declare (not safe)) (##cdr _%x109851%_)))
                           (_%port109904%_ _%port109855%_))
                      (if (output-port? _%port109904%_)
                          (let ((_%port109909%_ _%port109904%_))
                            (__display-as-string _%x109901%_ _%port109909%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109904%_)
                            '#!void))))
                  (if (vector? _%x109851%_)
                      (vector-for-each
                       (lambda (_%g109920109922%_)
                         (let* ((_%x109925%_ _%g109920109922%_)
                                (_%port109928%_ _%port109855%_))
                           (if (output-port? _%port109928%_)
                               (let ((_%port109933%_ _%port109928%_))
                                 (__display-as-string
                                  _%x109925%_
                                  _%port109933%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port109928%_)
                                 '#!void))))
                       _%x109851%_)
                      (if (or (null? _%x109851%_)
                              (eq? _%x109851%_ '#!void)
                              (eof-object? _%x109851%_)
                              (boolean? _%x109851%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x109851%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x106121%_ _%port106122%_)
        (if (output-port? _%port106122%_)
            (let ((_%port106126%_ _%port106122%_))
              (__display-as-string _%x106121%_ _%port106126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port106122%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x109791%_)
        (if (string? _%x109791%_)
            _%x109791%_
            (if (symbol? _%x109791%_)
                (let () (declare (not safe)) (##symbol->string _%x109791%_))
                (if (keyword? _%x109791%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x109791%_))
                    (if (number? _%x109791%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x109791%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g109797109799%_)
                           (let* ((_%x109802%_ _%x109791%_)
                                  (_%port109805%_ _%g109797109799%_))
                             (if (output-port? _%port109805%_)
                                 (let ((_%port109810%_ _%port109805%_))
                                   (__display-as-string
                                    _%x109802%_
                                    _%port109810%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port109805%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args109824%_
        (call-with-output-string
         '()
         (lambda (_%g109825109827%_)
           (let* ((_%x109830%_ _%args109824%_)
                  (_%port109833%_ _%g109825109827%_))
             (if (output-port? _%port109833%_)
                 (let ((_%port109838%_ _%port109833%_))
                   (__display-as-string _%x109830%_ _%port109838%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port109833%_)
                   '#!void)))))))
    (define as-string
      (lambda _g115608_
        (let ((_g115609_ (let () (declare (not safe)) (##length _g115608_))))
          (cond ((let () (declare (not safe)) (##fx= _g115609_ 1))
                 (apply as-string__0 _g115608_))
                (#t
                 (apply (lambda _%args109824%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args109824%_)))
                        _g115608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g115608_))))))
    (define make-symbol__0
      (lambda (_%x109787%_)
        (if (interned-symbol? _%x109787%_)
            _%x109787%_
            (let ((__tmp115610 (as-string__0 _%x109787%_)))
              (declare (not safe))
              (##string->symbol __tmp115610)))))
    (define make-symbol__1
      (lambda _%args109789%_
        (let ((__tmp115611
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109789%_))))
          (declare (not safe))
          (##string->symbol __tmp115611))))
    (define make-symbol
      (lambda _g115612_
        (let ((_g115613_ (let () (declare (not safe)) (##length _g115612_))))
          (cond ((let () (declare (not safe)) (##fx= _g115613_ 1))
                 (apply make-symbol__0 _g115612_))
                (#t
                 (apply (lambda _%args109789%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args109789%_)))
                        _g115612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g115612_))))))
    (define make-keyword__0
      (lambda (_%x109783%_)
        (if (interned-keyword? _%x109783%_)
            _%x109783%_
            (let ((__tmp115614 (as-string__0 _%x109783%_)))
              (declare (not safe))
              (##string->keyword __tmp115614)))))
    (define make-keyword__1
      (lambda _%args109785%_
        (let ((__tmp115615
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109785%_))))
          (declare (not safe))
          (##string->keyword __tmp115615))))
    (define make-keyword
      (lambda _g115616_
        (let ((_g115617_ (let () (declare (not safe)) (##length _g115616_))))
          (cond ((let () (declare (not safe)) (##fx= _g115617_ 1))
                 (apply make-keyword__0 _g115616_))
                (#t
                 (apply (lambda _%args109785%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args109785%_)))
                        _g115616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g115616_))))))
    (define interned-keyword?
      (lambda (_%x109780%_)
        (if (keyword? _%x109780%_)
            (not (uninterned-keyword? _%x109780%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym109768%_)
        (let ((_%sym109771%_ _%sym109768%_))
          (if (uninterned-symbol? _%sym109771%_)
              (let ((__tmp115618
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109771%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp115618))
              (let ((__tmp115619
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109771%_))))
                (declare (not safe))
                (##string->keyword __tmp115619))))))
    (define symbol->keyword
      (lambda (_%sym106256%_)
        (if (symbol? _%sym106256%_)
            (let ((_%sym106260%_ _%sym106256%_))
              (__symbol->keyword _%sym106260%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym106256%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym109756%_)
        (let ((_%sym109759%_ _%sym109756%_))
          (if (uninterned-keyword? _%sym109759%_)
              (let ((__tmp115620
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109759%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp115620))
              (let ((__tmp115621
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109759%_))))
                (declare (not safe))
                (##string->symbol __tmp115621))))))
    (define keyword->symbol
      (lambda (_%sym106390%_)
        (if (keyword? _%sym106390%_)
            (let ((_%sym106394%_ _%sym106390%_))
              (__keyword->symbol _%sym106394%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym106390%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr109716%_ _%enc109717%_)
        (let* ((_%bstr109720%_ _%bstr109716%_) (_%enc109728%_ _%enc109717%_))
          (if (eq? _%enc109728%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr109720%_))
              (let* ((_%in109737%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc109728%_
                                   (cons 'init: (cons _%bstr109720%_ '()))))))
                     (_%len109739%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr109720%_)))
                     (_%out109741%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len109739%_)))
                     (_%n109743%_
                      (read-substring
                       _%out109741%_
                       '0
                       _%len109739%_
                       _%in109737%_)))
                (string-shrink! _%out109741%_ _%n109743%_)
                _%out109741%_)))))
    (define __bytes->string__0
      (lambda (_%bstr109749%_)
        (let ((_%enc109751%_ 'UTF-8))
          (__bytes->string__% _%bstr109749%_ _%enc109751%_))))
    (define __bytes->string
      (lambda _g115622_
        (let ((_g115623_ (let () (declare (not safe)) (##length _g115622_))))
          (cond ((let () (declare (not safe)) (##fx= _g115623_ 1))
                 (apply __bytes->string__0 _g115622_))
                ((let () (declare (not safe)) (##fx= _g115623_ 2))
                 (apply __bytes->string__% _g115622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g115622_))))))
    (define bytes->string__%
      (lambda (_%bstr106525%_ _%enc106526%_)
        (if (u8vector? _%bstr106525%_)
            (let ((_%bstr106530%_ _%bstr106525%_))
              (if (symbol? _%enc106526%_)
                  (let ((_%enc106540%_ _%enc106526%_))
                    (__bytes->string__% _%bstr106530%_ _%enc106540%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106526%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr106525%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr106553%_)
        (let ((_%enc106555%_ 'UTF-8))
          (bytes->string__% _%bstr106553%_ _%enc106555%_))))
    (define bytes->string
      (lambda _g115624_
        (let ((_g115625_ (let () (declare (not safe)) (##length _g115624_))))
          (cond ((let () (declare (not safe)) (##fx= _g115625_ 1))
                 (apply bytes->string__0 _g115624_))
                ((let () (declare (not safe)) (##fx= _g115625_ 2))
                 (apply bytes->string__% _g115624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g115624_))))))
    (define __string->bytes__%
      (lambda (_%str109634%_ _%enc109635%_)
        (let* ((_%str109638%_ _%str109634%_) (_%enc109646%_ _%enc109635%_))
          (if (eq? _%enc109646%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str109638%_))
              (let* ((_%str109655%_ _%str109638%_)
                     (_%start109658%_ '0)
                     (_%end109661%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str109638%_)))
                     (_%enc109664%_ _%enc109646%_)
                     (_%str109669%_ _%str109655%_))
                (if (nonnegative-fixnum? _%start109658%_)
                    (let ((_%start109685%_ _%start109658%_))
                      (if (nonnegative-fixnum? _%end109661%_)
                          (let ((_%end109695%_ _%end109661%_))
                            (__substring->bytes__%
                             _%str109669%_
                             _%start109685%_
                             _%end109695%_
                             _%enc109664%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end109661%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start109658%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str109708%_)
        (let ((_%enc109710%_ 'UTF-8))
          (__string->bytes__% _%str109708%_ _%enc109710%_))))
    (define __string->bytes
      (lambda _g115626_
        (let ((_g115627_ (let () (declare (not safe)) (##length _g115626_))))
          (cond ((let () (declare (not safe)) (##fx= _g115627_ 1))
                 (apply __string->bytes__0 _g115626_))
                ((let () (declare (not safe)) (##fx= _g115627_ 2))
                 (apply __string->bytes__% _g115626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g115626_))))))
    (define string->bytes__%
      (lambda (_%str106681%_ _%enc106682%_)
        (if (string? _%str106681%_)
            (let ((_%str106686%_ _%str106681%_))
              (if (symbol? _%enc106682%_)
                  (let ((_%enc106696%_ _%enc106682%_))
                    (__string->bytes__% _%str106686%_ _%enc106696%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106682%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str106681%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str106709%_)
        (let ((_%enc106711%_ 'UTF-8))
          (string->bytes__% _%str106709%_ _%enc106711%_))))
    (define string->bytes
      (lambda _g115628_
        (let ((_g115629_ (let () (declare (not safe)) (##length _g115628_))))
          (cond ((let () (declare (not safe)) (##fx= _g115629_ 1))
                 (apply string->bytes__0 _g115628_))
                ((let () (declare (not safe)) (##fx= _g115629_ 2))
                 (apply string->bytes__% _g115628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g115628_))))))
    (define __substring->bytes__%
      (lambda (_%str109586%_ _%start109587%_ _%end109588%_ _%enc109589%_)
        (let* ((_%str109592%_ _%str109586%_)
               (_%start109600%_ _%start109587%_)
               (_%end109608%_ _%end109588%_))
          (if (eq? _%enc109589%_ 'UTF-8)
              (string->utf8 _%str109592%_ _%start109600%_ _%end109608%_)
              (let ((_%out109617%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc109589%_ '())))))
                (write-substring
                 _%str109592%_
                 _%start109600%_
                 _%end109608%_
                 _%out109617%_)
                (get-output-u8vector _%out109617%_))))))
    (define __substring->bytes__0
      (lambda (_%str109622%_ _%start109623%_ _%end109624%_)
        (let ((_%enc109626%_ 'UTF-8))
          (__substring->bytes__%
           _%str109622%_
           _%start109623%_
           _%end109624%_
           _%enc109626%_))))
    (define __substring->bytes
      (lambda _g115630_
        (let ((_g115631_ (let () (declare (not safe)) (##length _g115630_))))
          (cond ((let () (declare (not safe)) (##fx= _g115631_ 3))
                 (apply __substring->bytes__0 _g115630_))
                ((let () (declare (not safe)) (##fx= _g115631_ 4))
                 (apply __substring->bytes__% _g115630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g115630_))))))
    (define substring->bytes__%
      (lambda (_%str106837%_ _%start106838%_ _%end106839%_ _%enc106840%_)
        (if (string? _%str106837%_)
            (let ((_%str106844%_ _%str106837%_))
              (if (nonnegative-fixnum? _%start106838%_)
                  (let ((_%start106854%_ _%start106838%_))
                    (if (nonnegative-fixnum? _%end106839%_)
                        (let ((_%end106864%_ _%end106839%_))
                          (__substring->bytes__%
                           _%str106844%_
                           _%start106854%_
                           _%end106864%_
                           _%enc106840%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end106839%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start106838%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str106837%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str106877%_ _%start106878%_ _%end106879%_)
        (let ((_%enc106881%_ 'UTF-8))
          (substring->bytes__%
           _%str106877%_
           _%start106878%_
           _%end106879%_
           _%enc106881%_))))
    (define substring->bytes
      (lambda _g115632_
        (let ((_g115633_ (let () (declare (not safe)) (##length _g115632_))))
          (cond ((let () (declare (not safe)) (##fx= _g115633_ 3))
                 (apply substring->bytes__0 _g115632_))
                ((let () (declare (not safe)) (##fx= _g115633_ 4))
                 (apply substring->bytes__% _g115632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g115632_))))))
    (define __string-empty?
      (lambda (_%str109573%_)
        (let* ((_%str109576%_ _%str109573%_)
               (__tmp115634
                (let () (declare (not safe)) (##string-length _%str109576%_))))
          (declare (not safe))
          (##fxzero? __tmp115634))))
    (define string-empty?
      (lambda (_%str107008%_)
        (if (string? _%str107008%_)
            (let ((_%str107012%_ _%str107008%_))
              (__string-empty? _%str107012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str107008%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str109513%_ _%char109514%_ _%start109515%_)
        (let* ((_%str109518%_ _%str109513%_)
               (_%char109526%_ _%char109514%_)
               (_%start109534%_ _%start109515%_)
               (_%len109543%_
                (let () (declare (not safe)) (##string-length _%str109518%_))))
          (let _%lp109545%_ ((_%k109547%_ _%start109534%_))
            (let ((_%k109549%_ _%k109547%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k109549%_ _%len109543%_))
                  (if (eq? _%char109526%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109518%_ _%k109549%_)))
                      _%k109549%_
                      (_%lp109545%_
                       (let () (declare (not safe)) (##fx+ _%k109549%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str109564%_ _%char109565%_)
        (let ((_%start109567%_ '0))
          (__string-index__% _%str109564%_ _%char109565%_ _%start109567%_))))
    (define __string-index
      (lambda _g115635_
        (let ((_g115636_ (let () (declare (not safe)) (##length _g115635_))))
          (cond ((let () (declare (not safe)) (##fx= _g115636_ 2))
                 (apply __string-index__0 _g115635_))
                ((let () (declare (not safe)) (##fx= _g115636_ 3))
                 (apply __string-index__% _g115635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g115635_))))))
    (define string-index__%
      (lambda (_%str107143%_ _%char107144%_ _%start107145%_)
        (if (string? _%str107143%_)
            (let ((_%str107149%_ _%str107143%_))
              (if (char? _%char107144%_)
                  (let ((_%char107159%_ _%char107144%_))
                    (if (nonnegative-fixnum? _%start107145%_)
                        (let ((_%start107169%_ _%start107145%_))
                          (__string-index__%
                           _%str107149%_
                           _%char107159%_
                           _%start107169%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start107145%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                     'contract:
                     'char?
                     'value:
                     _%char107144%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.21-706.24"
               'contract:
               'string?
               'value:
               _%str107143%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str107182%_ _%char107183%_)
        (let ((_%start107185%_ '0))
          (string-index__% _%str107182%_ _%char107183%_ _%start107185%_))))
    (define string-index
      (lambda _g115637_
        (let ((_g115638_ (let () (declare (not safe)) (##length _g115637_))))
          (cond ((let () (declare (not safe)) (##fx= _g115638_ 2))
                 (apply string-index__0 _g115637_))
                ((let () (declare (not safe)) (##fx= _g115638_ 3))
                 (apply string-index__% _g115637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g115637_))))))
    (define __string-rindex__%
      (lambda (_%str109455%_ _%char109456%_ _%start109457%_)
        (let* ((_%str109460%_ _%str109455%_)
               (_%char109468%_ _%char109456%_)
               (_%len109477%_
                (let () (declare (not safe)) (##string-length _%str109460%_)))
               (_%start109479%_
                (if (fixnum? _%start109457%_)
                    _%start109457%_
                    (let () (declare (not safe)) (##fx- _%len109477%_ '1)))))
          (let _%lp109482%_ ((_%k109484%_ _%start109479%_))
            (let ((_%k109486%_ _%k109484%_))
              (if (let () (declare (not safe)) (##fx>= _%k109486%_ '0))
                  (if (eq? _%char109468%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109460%_ _%k109486%_)))
                      _%k109486%_
                      (_%lp109482%_
                       (let () (declare (not safe)) (##fx- _%k109486%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str109503%_ _%char109504%_)
        (let ((_%start109506%_ '#f))
          (__string-rindex__% _%str109503%_ _%char109504%_ _%start109506%_))))
    (define __string-rindex
      (lambda _g115639_
        (let ((_g115640_ (let () (declare (not safe)) (##length _g115639_))))
          (cond ((let () (declare (not safe)) (##fx= _g115640_ 2))
                 (apply __string-rindex__0 _g115639_))
                ((let () (declare (not safe)) (##fx= _g115640_ 3))
                 (apply __string-rindex__% _g115639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g115639_))))))
    (define string-rindex__%
      (lambda (_%str107312%_ _%char107313%_ _%start107314%_)
        (if (string? _%str107312%_)
            (let ((_%str107318%_ _%str107312%_))
              (if (char? _%char107313%_)
                  (let ((_%char107328%_ _%char107313%_))
                    (__string-rindex__%
                     _%str107318%_
                     _%char107328%_
                     _%start107314%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                     'contract:
                     'char?
                     'value:
                     _%char107313%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.22-717.25"
               'contract:
               'string?
               'value:
               _%str107312%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str107341%_ _%char107342%_)
        (let ((_%start107344%_ '#f))
          (string-rindex__% _%str107341%_ _%char107342%_ _%start107344%_))))
    (define string-rindex
      (lambda _g115641_
        (let ((_g115642_ (let () (declare (not safe)) (##length _g115641_))))
          (cond ((let () (declare (not safe)) (##fx= _g115642_ 2))
                 (apply string-rindex__0 _g115641_))
                ((let () (declare (not safe)) (##fx= _g115642_ 3))
                 (apply string-rindex__% _g115641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g115641_))))))
    (define __string-split
      (lambda (_%str109352%_ _%char109353%_)
        (let* ((_%str109356%_ _%str109352%_)
               (_%char109364%_ _%char109353%_)
               (_%len109373%_
                (let () (declare (not safe)) (##string-length _%str109356%_))))
          (let _%lp109375%_ ((_%start109377%_ '0) (_%r109378%_ '()))
            (let* ((_%start109381%_ _%start109377%_)
                   (_%$e109439%_
                    (let* ((_%str109394%_ _%str109356%_)
                           (_%char109397%_ _%char109364%_)
                           (_%start109400%_ _%start109381%_)
                           (_%str109405%_ _%str109394%_)
                           (_%char109419%_ _%char109397%_))
                      (if (nonnegative-fixnum? _%start109400%_)
                          (let ((_%start109429%_ _%start109400%_))
                            (__string-index__%
                             _%str109405%_
                             _%char109419%_
                             _%start109429%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start109400%_)
                            '#!void)))))
              (if _%$e109439%_
                  (let ((_%end109444%_ _%$e109439%_))
                    (_%lp109375%_
                     (let () (declare (not safe)) (##fx+ _%end109444%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str109356%_
                              _%start109381%_
                              _%end109444%_))
                           _%r109378%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start109381%_ _%len109373%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str109356%_
                                _%start109381%_
                                _%len109373%_)))
                       _%r109378%_)
                      (reverse! _%r109378%_))))))))
    (define string-split
      (lambda (_%str107470%_ _%char107471%_)
        (if (string? _%str107470%_)
            (let ((_%str107475%_ _%str107470%_))
              (if (char? _%char107471%_)
                  (let ((_%char107485%_ _%char107471%_))
                    (__string-split _%str107475%_ _%char107485%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char107471%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str107470%_)
              '#!void))))
    (define string-join
      (lambda (_%strs109202%_ _%join109203%_)
        (letrec ((_%join-length109206%_
                  (lambda (_%strs109290%_ _%jlen109291%_)
                    (let _%lp109293%_ ((_%rest109295%_ _%strs109290%_)
                                       (_%len109296%_ '0))
                      (let* ((_%len109298%_ _%len109296%_)
                             (_%rest109306109314%_ _%rest109295%_)
                             (_%else109308109322%_ (lambda () '0))
                             (_%K109310109340%_
                              (lambda (_%rest109325%_ _%hd109326%_)
                                (if (string? _%hd109326%_)
                                    (let ((_%hd109328%_ _%hd109326%_))
                                      (if (pair? _%rest109325%_)
                                          (_%lp109293%_
                                           _%rest109325%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd109328%_))
                                                _%jlen109291%_
                                                _%len109298%_))
                                          (let ((__tmp115643
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd109328%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp115643
                                                   _%len109298%_))))
                                    (error '"expected string" _%hd109326%_)))))
                        (if (pair? _%rest109306109314%_)
                            (let ((_%hd109311109343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109306109314%_)))
                                  (_%tl109312109345%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109306109314%_))))
                              (let* ((_%hd109348%_ _%hd109311109343%_)
                                     (_%rest109350%_ _%tl109312109345%_))
                                (_%K109310109340%_
                                 _%rest109350%_
                                 _%hd109348%_)))
                            (_%else109308109322%_)))))))
          (let* ((_%join109211%_
                  (if (char? _%join109203%_)
                      (let () (declare (not safe)) (##string _%join109203%_))
                      (if (string? _%join109203%_)
                          _%join109203%_
                          (error '"expected string or char" _%join109203%_))))
                 (_%jlen109213%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join109211%_)))
                 (_%olen109215%_
                  (_%join-length109206%_ _%strs109202%_ _%jlen109213%_))
                 (_%ostr109217%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen109215%_))))
            (let _%lp109220%_ ((_%rest109222%_ _%strs109202%_)
                               (_%k109223%_ '0))
              (let* ((_%k109226%_ _%k109223%_)
                     (_%rest109242109250%_ _%rest109222%_)
                     (_%else109244109258%_ (lambda () '""))
                     (_%K109246109278%_
                      (lambda (_%rest109261%_ _%hd109262%_)
                        (let* ((_%hd109264%_ _%hd109262%_)
                               (_%hdlen109276%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd109264%_))))
                          (if (pair? _%rest109261%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd109264%_
                                   '0
                                   _%hdlen109276%_
                                   _%ostr109217%_
                                   _%k109226%_))
                                (let ((__tmp115644
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k109226%_ _%hdlen109276%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join109211%_
                                   '0
                                   _%jlen109213%_
                                   _%ostr109217%_
                                   __tmp115644))
                                (_%lp109220%_
                                 _%rest109261%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k109226%_
                                          _%hdlen109276%_
                                          _%jlen109213%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd109264%_
                                   '0
                                   _%hdlen109276%_
                                   _%ostr109217%_
                                   _%k109226%_))
                                _%ostr109217%_))))))
                (if (pair? _%rest109242109250%_)
                    (let ((_%hd109247109281%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest109242109250%_)))
                          (_%tl109248109283%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest109242109250%_))))
                      (let* ((_%hd109286%_ _%hd109247109281%_)
                             (_%rest109288%_ _%tl109248109283%_))
                        (_%K109246109278%_ _%rest109288%_ _%hd109286%_)))
                    (_%else109244109258%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes109142%_ _%port109143%_ _%start109144%_ _%end109145%_)
        (let* ((_%bytes109148%_ _%bytes109142%_)
               (_%port109156%_ _%port109143%_)
               (_%start109164%_ _%start109144%_)
               (_%end109172%_ _%end109145%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes109148%_
           _%start109164%_
           _%end109172%_
           _%port109156%_))))
    (define __read-u8vector__0
      (lambda (_%bytes109184%_ _%port109185%_)
        (let* ((_%start109187%_ '0)
               (_%end109189%_ (u8vector-length _%bytes109184%_)))
          (__read-u8vector__%
           _%bytes109184%_
           _%port109185%_
           _%start109187%_
           _%end109189%_))))
    (define __read-u8vector__1
      (lambda (_%bytes109191%_ _%port109192%_ _%start109193%_)
        (let ((_%end109195%_ (u8vector-length _%bytes109191%_)))
          (__read-u8vector__%
           _%bytes109191%_
           _%port109192%_
           _%start109193%_
           _%end109195%_))))
    (define __read-u8vector
      (lambda _g115645_
        (let ((_g115646_ (let () (declare (not safe)) (##length _g115645_))))
          (cond ((let () (declare (not safe)) (##fx= _g115646_ 2))
                 (apply __read-u8vector__0 _g115645_))
                ((let () (declare (not safe)) (##fx= _g115646_ 3))
                 (apply __read-u8vector__1 _g115645_))
                ((let () (declare (not safe)) (##fx= _g115646_ 4))
                 (apply __read-u8vector__% _g115645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g115645_))))))
    (define read-u8vector__%
      (lambda (_%bytes107616%_ _%port107617%_ _%start107618%_ _%end107619%_)
        (if (u8vector? _%bytes107616%_)
            (let ((_%bytes107623%_ _%bytes107616%_))
              (if (input-port? _%port107617%_)
                  (let ((_%port107633%_ _%port107617%_))
                    (if (and (fixnum? _%start107618%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start107618%_ '0))
                             (let ((__tmp115647
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes107623%_))))
                               (declare (not safe))
                               (##fx< _%start107618%_ __tmp115647)))
                        (let ((_%start107646%_ _%start107618%_))
                          (if (and (fixnum? _%end107619%_)
                                   (let ((__tmp115648
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes107623%_))))
                                     (declare (not safe))
                                     (##fx<= _%start107646%_
                                             _%end107619%_
                                             __tmp115648)))
                              (let ((_%end107659%_ _%end107619%_))
                                (__read-u8vector__%
                                 _%bytes107623%_
                                 _%port107633%_
                                 _%start107646%_
                                 _%end107659%_))
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
                                 _%end107619%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start107618%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port107617%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@792.22-792.27"
               'contract:
               'u8vector?
               'value:
               _%bytes107616%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes107672%_ _%port107673%_)
        (let* ((_%start107675%_ '0)
               (_%end107677%_ (u8vector-length _%bytes107672%_)))
          (read-u8vector__%
           _%bytes107672%_
           _%port107673%_
           _%start107675%_
           _%end107677%_))))
    (define read-u8vector__1
      (lambda (_%bytes107679%_ _%port107680%_ _%start107681%_)
        (let ((_%end107683%_ (u8vector-length _%bytes107679%_)))
          (read-u8vector__%
           _%bytes107679%_
           _%port107680%_
           _%start107681%_
           _%end107683%_))))
    (define read-u8vector
      (lambda _g115649_
        (let ((_g115650_ (let () (declare (not safe)) (##length _g115649_))))
          (cond ((let () (declare (not safe)) (##fx= _g115650_ 2))
                 (apply read-u8vector__0 _g115649_))
                ((let () (declare (not safe)) (##fx= _g115650_ 3))
                 (apply read-u8vector__1 _g115649_))
                ((let () (declare (not safe)) (##fx= _g115650_ 4))
                 (apply read-u8vector__% _g115649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g115649_))))))
    (define __write-u8vector__%
      (lambda (_%bytes109081%_ _%port109082%_ _%start109083%_ _%end109084%_)
        (let* ((_%bytes109087%_ _%bytes109081%_)
               (_%port109095%_ _%port109082%_)
               (_%start109103%_ _%start109083%_)
               (_%end109111%_ _%end109084%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes109087%_
           _%start109103%_
           _%end109111%_
           _%port109095%_))))
    (define __write-u8vector__0
      (lambda (_%bytes109123%_ _%port109124%_)
        (let* ((_%start109126%_ '0)
               (_%end109128%_ (u8vector-length _%bytes109123%_)))
          (__write-u8vector__%
           _%bytes109123%_
           _%port109124%_
           _%start109126%_
           _%end109128%_))))
    (define __write-u8vector__1
      (lambda (_%bytes109130%_ _%port109131%_ _%start109132%_)
        (let ((_%end109134%_ (u8vector-length _%bytes109130%_)))
          (__write-u8vector__%
           _%bytes109130%_
           _%port109131%_
           _%start109132%_
           _%end109134%_))))
    (define __write-u8vector
      (lambda _g115651_
        (let ((_g115652_ (let () (declare (not safe)) (##length _g115651_))))
          (cond ((let () (declare (not safe)) (##fx= _g115652_ 2))
                 (apply __write-u8vector__0 _g115651_))
                ((let () (declare (not safe)) (##fx= _g115652_ 3))
                 (apply __write-u8vector__1 _g115651_))
                ((let () (declare (not safe)) (##fx= _g115652_ 4))
                 (apply __write-u8vector__% _g115651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g115651_))))))
    (define write-u8vector__%
      (lambda (_%bytes107811%_ _%port107812%_ _%start107813%_ _%end107814%_)
        (if (u8vector? _%bytes107811%_)
            (let ((_%bytes107818%_ _%bytes107811%_))
              (if (output-port? _%port107812%_)
                  (let* ((_%port107828%_ _%port107812%_)
                         (_%start107837%_ _%start107813%_))
                    (if (and (fixnum? _%end107814%_)
                             (let ((__tmp115653
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes107818%_))))
                               (declare (not safe))
                               (##fx<= _%start107837%_
                                       _%end107814%_
                                       __tmp115653)))
                        (let ((_%end107849%_ _%end107814%_))
                          (__write-u8vector__%
                           _%bytes107818%_
                           _%port107828%_
                           _%start107837%_
                           _%end107849%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end107814%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port107812%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@802.23-802.28"
               'contract:
               'u8vector?
               'value:
               _%bytes107811%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes107862%_ _%port107863%_)
        (let* ((_%start107865%_ '0)
               (_%end107867%_ (u8vector-length _%bytes107862%_)))
          (write-u8vector__%
           _%bytes107862%_
           _%port107863%_
           _%start107865%_
           _%end107867%_))))
    (define write-u8vector__1
      (lambda (_%bytes107869%_ _%port107870%_ _%start107871%_)
        (let ((_%end107873%_ (u8vector-length _%bytes107869%_)))
          (write-u8vector__%
           _%bytes107869%_
           _%port107870%_
           _%start107871%_
           _%end107873%_))))
    (define write-u8vector
      (lambda _g115654_
        (let ((_g115655_ (let () (declare (not safe)) (##length _g115654_))))
          (cond ((let () (declare (not safe)) (##fx= _g115655_ 2))
                 (apply write-u8vector__0 _g115654_))
                ((let () (declare (not safe)) (##fx= _g115655_ 3))
                 (apply write-u8vector__1 _g115654_))
                ((let () (declare (not safe)) (##fx= _g115655_ 4))
                 (apply write-u8vector__% _g115654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g115654_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag109049%_
               _%dbg-exprs109050%_
               _%dbg-thunks109051%_
               _%expr109052%_
               _%thunk109053%_)
        (letrec ((_%o109055%_ (current-output-port))
                 (_%e109056%_ (current-error-port))
                 (_%p109057%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f109058%_
                  (lambda ()
                    (force-output _%o109055%_)
                    (force-output _%e109056%_)))
                 (_%d109059%_
                  (lambda (_%x109066%_) (display _%x109066%_ _%e109056%_)))
                 (_%w109060%_
                  (lambda (_%x109068%_) (_%p109057%_ _%x109068%_ _%e109056%_)))
                 (_%n109061%_ (lambda () (newline _%e109056%_)))
                 (_%v109062%_
                  (lambda (_%l109071%_)
                    (for-each
                     (lambda (_%x109073%_)
                       (_%d109059%_ '" ")
                       (_%w109060%_ _%x109073%_))
                     _%l109071%_)
                    (_%n109061%_)))
                 (_%x109063%_
                  (lambda (_%expr109075%_ _%thunk109076%_)
                    (_%f109058%_)
                    (_%d109059%_ '"  ")
                    (_%w109060%_ _%expr109075%_)
                    (_%d109059%_ '" =>")
                    (call-with-values
                     _%thunk109076%_
                     (lambda _%x109078%_
                       (_%v109062%_ _%x109078%_)
                       (_%f109058%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x109078%_)))))))
          (if _%tag109049%_
              (begin
                (if (eq? _%tag109049%_ '#!void)
                    '#!void
                    (begin
                      (_%f109058%_)
                      (_%d109059%_ _%tag109049%_)
                      (_%n109061%_)))
                (for-each _%x109063%_ _%dbg-exprs109050%_ _%dbg-thunks109051%_)
                (if _%thunk109053%_
                    (_%x109063%_ _%expr109052%_ _%thunk109053%_)
                    '#!void))
              (if _%thunk109053%_ (_%thunk109053%_) '#!void)))))))
