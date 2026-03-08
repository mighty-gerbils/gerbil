(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1773012981)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args112339%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args112339%_))
          (newline))))
    (define display*
      (lambda _%args112336%_
        (let () (declare (not safe)) (##for-each display _%args112336%_))))
    (define __file-newer?
      (lambda (_%file1112127%_ _%file2112128%_)
        (let* ((_%file1112131%_ _%file1112127%_)
               (_%file2112139%_ _%file2112128%_))
          (letrec ((_%__modification-time112283%_
                    (lambda (_%file112324%_)
                      (let* ((_%file112327%_ _%file112324%_)
                             (__tmp115115
                              (let ((__tmp115116
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file112327%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp115116))))
                        (declare (not safe))
                        (##time->seconds __tmp115115))))
                   (_%modification-time112284%_
                    (lambda (_%file112312%_)
                      (let ((_%file112315%_ _%file112312%_))
                        (_%__modification-time112283%_ _%file112315%_)))))
            (let ((__tmp115118
                   (let* ((_%file112286%_ _%file1112131%_)
                          (_%file112290%_ _%file112286%_))
                     (_%__modification-time112283%_ _%file112290%_)))
                  (__tmp115117
                   (let* ((_%file112299%_ _%file2112139%_)
                          (_%file112303%_ _%file112299%_))
                     (_%__modification-time112283%_ _%file112303%_))))
              (declare (not safe))
              (##fl> __tmp115118 __tmp115117))))))
    (define file-newer?
      (lambda (_%file1101713%_ _%file2101714%_)
        (if (string? _%file1101713%_)
            (let ((_%file1101718%_ _%file1101713%_))
              (if (string? _%file2101714%_)
                  (let ((_%file2101728%_ _%file2101714%_))
                    (__file-newer? _%file1101718%_ _%file2101728%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2101714%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1101713%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir111847%_ _%perms111848%_)
        (let* ((_%dir111851%_ _%dir111847%_) (_%perms111859%_ _%perms111848%_))
          (letrec ((_%__create1112003%_
                    (lambda (_%path112102%_)
                      (let ((_%path112105%_ _%path112102%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path112105%_))
                            (if (eq? (file-type _%path112105%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path112105%_))
                            (if _%perms111859%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path112105%_
                                             (cons 'permissions:
                                                   (cons _%perms111859%_
                                                         '())))))
                                (create-directory _%path112105%_))))))
                   (_%create1112004%_
                    (lambda (_%path112090%_)
                      (let ((_%path112093%_ _%path112090%_))
                        (_%__create1112003%_ _%path112093%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir111851%_))
                '#!void
                (let _%lp112006%_ ((_%start112008%_ '0))
                  (let ((_%$e112055%_
                         (let* ((_%str112010%_ _%dir111851%_)
                                (_%char112013%_ '#\/)
                                (_%start112016%_ _%start112008%_)
                                (_%str112021%_ _%str112010%_)
                                (_%char112035%_ _%char112013%_))
                           (if (nonnegative-fixnum? _%start112016%_)
                               (let ((_%start112045%_ _%start112016%_))
                                 (__string-index__%
                                  _%str112021%_
                                  _%char112035%_
                                  _%start112045%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start112016%_)
                                 '#!void)))))
                    (if _%$e112055%_
                        ((lambda (_%x112058%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x112058%_ '0))
                               (let* ((_%path112060%_
                                       (substring
                                        _%dir111851%_
                                        '0
                                        _%x112058%_))
                                      (_%path112064%_ _%path112060%_))
                                 (_%__create1112003%_ _%path112064%_))
                               '#!void)
                           (_%lp112006%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x112058%_ '1))))
                         _%$e112055%_)
                        (let* ((_%path112076%_ _%dir111851%_)
                               (_%path112080%_ _%path112076%_))
                          (_%__create1112003%_ _%path112080%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir112120%_)
        (let ((_%perms112122%_ '493))
          (__create-directory*__% _%dir112120%_ _%perms112122%_))))
    (define __create-directory*
      (lambda _g115119_
        (let ((_g115120_ (let () (declare (not safe)) (##length _g115119_))))
          (cond ((let () (declare (not safe)) (##fx= _g115120_ 1))
                 (apply __create-directory*__0 _g115119_))
                ((let () (declare (not safe)) (##fx= _g115120_ 2))
                 (apply __create-directory*__% _g115119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g115119_))))))
    (define create-directory*__%
      (lambda (_%dir101859%_ _%perms101860%_)
        (if (string? _%dir101859%_)
            (let ((_%dir101864%_ _%dir101859%_))
              (if (fixnum? _%perms101860%_)
                  (let ((_%perms101874%_ _%perms101860%_))
                    (__create-directory*__% _%dir101864%_ _%perms101874%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms101860%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir101859%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir101887%_)
        (let ((_%perms101889%_ '493))
          (create-directory*__% _%dir101887%_ _%perms101889%_))))
    (define create-directory*
      (lambda _g115121_
        (let ((_g115122_ (let () (declare (not safe)) (##length _g115121_))))
          (cond ((let () (declare (not safe)) (##fx= _g115122_ 1))
                 (apply create-directory*__0 _g115121_))
                ((let () (declare (not safe)) (##fx= _g115122_ 2))
                 (apply create-directory*__% _g115121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g115121_))))))
    (define __move-file__%
      (lambda (_%src111790%_ _%dest111791%_ _%replace?111792%_)
        (let* ((_%src111795%_ _%src111790%_)
               (_%dest111803%_ _%dest111791%_)
               (_%replace?111811%_ _%replace?111792%_))
          (letrec ((_%force-move-it111820%_
                    (lambda ()
                      (let ((_%tmp111826%_
                             (if _%replace?111811%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest111803%_))
                                     (let ((__tmp115123
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest111803%_
                                        '"."
                                        __tmp115123))
                                     '#f)
                                 '#f)))
                        (if _%tmp111826%_
                            (rename-file _%dest111803%_ _%tmp111826%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e111828%_)
                           (if _%tmp111826%_
                               (rename-file _%tmp111826%_ _%dest111803%_ '#t)
                               '#!void)
                           (raise _%e111828%_))
                         (lambda ()
                           (let ((_%fi111831%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src111795%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi111831%_))
                                      'symbolic-link)
                                 (let ((__tmp115124
                                        (path-normalize _%src111795%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp115124
                                    _%dest111803%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src111795%_
                                    _%dest111803%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src111795%_))
                           (if _%tmp111826%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp111826%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e111822%_)
               (if (let () (declare (not safe)) (##file-exists? _%src111795%_))
                   (_%force-move-it111820%_)
                   (raise _%e111822%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src111795%_
                  _%dest111803%_
                  _%replace?111811%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src111837%_ _%dest111838%_)
        (let ((_%replace?111840%_ '#t))
          (__move-file__% _%src111837%_ _%dest111838%_ _%replace?111840%_))))
    (define __move-file
      (lambda _g115125_
        (let ((_g115126_ (let () (declare (not safe)) (##length _g115125_))))
          (cond ((let () (declare (not safe)) (##fx= _g115126_ 2))
                 (apply __move-file__0 _g115125_))
                ((let () (declare (not safe)) (##fx= _g115126_ 3))
                 (apply __move-file__% _g115125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g115125_))))))
    (define move-file__%
      (lambda (_%src102015%_ _%dest102016%_ _%replace?102017%_)
        (if (string? _%src102015%_)
            (let ((_%src102021%_ _%src102015%_))
              (if (string? _%dest102016%_)
                  (let ((_%dest102031%_ _%dest102016%_))
                    (if (boolean? _%replace?102017%_)
                        (let ((_%replace?102041%_ _%replace?102017%_))
                          (__move-file__%
                           _%src102021%_
                           _%dest102031%_
                           _%replace?102041%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?102017%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest102016%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src102015%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src102054%_ _%dest102055%_)
        (let ((_%replace?102057%_ '#t))
          (move-file__% _%src102054%_ _%dest102055%_ _%replace?102057%_))))
    (define move-file
      (lambda _g115127_
        (let ((_g115128_ (let () (declare (not safe)) (##length _g115127_))))
          (cond ((let () (declare (not safe)) (##fx= _g115128_ 2))
                 (apply move-file__0 _g115127_))
                ((let () (declare (not safe)) (##fx= _g115128_ 3))
                 (apply move-file__% _g115127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g115127_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore111786%_ '#t))
    (define true? (lambda (_%obj111783%_) (eq? _%obj111783%_ '#t)))
    (define false (lambda _%ignore111780%_ '#f))
    (define void (lambda _%ignore111777%_ '#!void))
    (define void? (lambda (_%obj111774%_) (eq? _%obj111774%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj111771%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj111771%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj111768%_) (eq? _%obj111768%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj111765%_) (eq? _%obj111765%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj111762%_) (eq? _%obj111762%_ '#!optional)))
    (define immediate?
      (lambda (_%obj111759%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj111759%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj111756%_)
        (if (fixnum? _%obj111756%_)
            (let () (declare (not safe)) (##fx>= _%obj111756%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj111750%_)
        (let ((_%$e111753%_ (pair? _%obj111750%_)))
          (if _%$e111753%_ _%$e111753%_ (null? _%obj111750%_)))))
    (define values-count
      (lambda (_%obj111747%_)
        (if (let () (declare (not safe)) (##values? _%obj111747%_))
            (let () (declare (not safe)) (##values-length _%obj111747%_))
            '1)))
    (define __values-ref
      (lambda (_%obj111734%_ _%k111735%_)
        (let ((_%k111738%_ _%k111735%_))
          (if (let () (declare (not safe)) (##values? _%obj111734%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj111734%_ _%k111738%_))
              _%obj111734%_))))
    (define values-ref
      (lambda (_%obj102183%_ _%k102184%_)
        (if (fixnum? _%k102184%_)
            (let ((_%k102188%_ _%k102184%_))
              (__values-ref _%obj102183%_ _%k102188%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k102184%_)
              '#!void))))
    (define values->list
      (lambda (_%obj111731%_)
        (if (let () (declare (not safe)) (##values? _%obj111731%_))
            (let () (declare (not safe)) (##values->list _%obj111731%_))
            (list _%obj111731%_))))
    (define __foldl1
      (lambda (_%f111679%_ _%iv111680%_ _%lst111681%_)
        (let ((_%f111684%_ _%f111679%_))
          (let _%lp111693%_ ((_%rest111695%_ _%lst111681%_)
                             (_%r111696%_ _%iv111680%_))
            (let* ((_%rest111697111705%_ _%rest111695%_)
                   (_%else111699111713%_ (lambda () _%r111696%_))
                   (_%K111701111719%_
                    (lambda (_%rest111716%_ _%x111717%_)
                      (_%lp111693%_
                       _%rest111716%_
                       (let ()
                         (declare (not safe))
                         (_%f111684%_ _%x111717%_ _%r111696%_))))))
              (if (pair? _%rest111697111705%_)
                  (let ((_%hd111702111722%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111697111705%_)))
                        (_%tl111703111724%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111697111705%_))))
                    (let* ((_%x111727%_ _%hd111702111722%_)
                           (_%rest111729%_ _%tl111703111724%_))
                      (_%K111701111719%_ _%rest111729%_ _%x111727%_)))
                  (_%else111699111713%_)))))))
    (define foldl1
      (lambda (_%f102318%_ _%iv102319%_ _%lst102320%_)
        (if (procedure? _%f102318%_)
            (let ((_%f102324%_ _%f102318%_))
              (__foldl1 _%f102324%_ _%iv102319%_ _%lst102320%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f102318%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f111592%_ _%iv111593%_ _%lst1111594%_ _%lst2111595%_)
        (let ((_%f111598%_ _%f111592%_))
          (let _%lp111607%_ ((_%rest1111609%_ _%lst1111594%_)
                             (_%rest2111610%_ _%lst2111595%_)
                             (_%r111611%_ _%iv111593%_))
            (let* ((_%rest1111612111620%_ _%rest1111609%_)
                   (_%else111614111628%_ (lambda () _%r111611%_))
                   (_%K111616111667%_
                    (lambda (_%rest1111631%_ _%x1111632%_)
                      (let* ((_%rest2111633111641%_ _%rest2111610%_)
                             (_%else111635111649%_ (lambda () _%r111611%_))
                             (_%K111637111655%_
                              (lambda (_%rest2111652%_ _%x2111653%_)
                                (_%lp111607%_
                                 _%rest1111631%_
                                 _%rest2111652%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f111598%_
                                    _%x1111632%_
                                    _%x2111653%_
                                    _%r111611%_))))))
                        (if (pair? _%rest2111633111641%_)
                            (let ((_%hd111638111658%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111633111641%_)))
                                  (_%tl111639111660%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111633111641%_))))
                              (let* ((_%x2111663%_ _%hd111638111658%_)
                                     (_%rest2111665%_ _%tl111639111660%_))
                                (_%K111637111655%_
                                 _%rest2111665%_
                                 _%x2111663%_)))
                            (_%else111635111649%_))))))
              (if (pair? _%rest1111612111620%_)
                  (let ((_%hd111617111670%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111612111620%_)))
                        (_%tl111618111672%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111612111620%_))))
                    (let* ((_%x1111675%_ _%hd111617111670%_)
                           (_%rest1111677%_ _%tl111618111672%_))
                      (_%K111616111667%_ _%rest1111677%_ _%x1111675%_)))
                  (_%else111614111628%_)))))))
    (define foldl2
      (lambda (_%f102454%_ _%iv102455%_ _%lst1102456%_ _%lst2102457%_)
        (if (procedure? _%f102454%_)
            (let ((_%f102461%_ _%f102454%_))
              (__foldl2
               _%f102461%_
               _%iv102455%_
               _%lst1102456%_
               _%lst2102457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f102454%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f111525%_ _%iv111526%_ _%lst111527%_)
        (let* ((_%f111529%_ _%f111525%_)
               (_%iv111532%_ _%iv111526%_)
               (_%lst111535%_ _%lst111527%_))
          (if (procedure? _%f111529%_)
              (let ((_%f111540%_ _%f111529%_))
                (__foldl1 _%f111540%_ _%iv111532%_ _%lst111535%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111529%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f111553%_ _%iv111554%_ _%lst1111555%_ _%lst2111556%_)
        (let* ((_%f111558%_ _%f111553%_)
               (_%iv111561%_ _%iv111554%_)
               (_%lst1111564%_ _%lst1111555%_)
               (_%lst2111567%_ _%lst2111556%_))
          (if (procedure? _%f111558%_)
              (let ((_%f111572%_ _%f111558%_))
                (__foldl2
                 _%f111572%_
                 _%iv111561%_
                 _%lst1111564%_
                 _%lst2111567%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111558%_)
                '#!void)))))
    (define foldl
      (lambda _g115129_
        (let ((_g115130_ (let () (declare (not safe)) (##length _g115129_))))
          (cond ((let () (declare (not safe)) (##fx= _g115130_ 3))
                 (apply foldl__0 _g115129_))
                ((let () (declare (not safe)) (##fx= _g115130_ 4))
                 (apply foldl__1 _g115129_))
                ((let () (declare (not safe)) (##fx>= _g115130_ 4))
                 (apply foldl* _g115129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g115129_))))))
    (define __foldl*
      (lambda (_%f111456%_ _%iv111457%_ . _%rest111458%_)
        (let ((_%f111461%_ _%f111456%_))
          (let _%recur111470%_ ((_%iv111472%_ _%iv111457%_)
                                (_%rest111473%_ _%rest111458%_))
            (if (let* ((_%f111475%_ pair?)
                       (_%lst111478%_ _%rest111473%_)
                       (_%f111483%_ _%f111475%_))
                  (__andmap1 _%f111483%_ _%lst111478%_))
                (_%recur111470%_
                 (let ((__tmp115131
                        (let* ((_%f111502%_
                                (lambda (_%xs111499%_ _%r111500%_)
                                  (cons (car _%xs111499%_) _%r111500%_)))
                               (_%iv111505%_ (list _%iv111472%_))
                               (_%lst111508%_ _%rest111473%_)
                               (_%f111513%_ _%f111502%_))
                          (__foldr1 _%f111513%_ _%iv111505%_ _%lst111508%_))))
                   (declare (not safe))
                   (##apply _%f111461%_ __tmp115131))
                 (map cdr _%rest111473%_))
                _%iv111472%_)))))
    (define foldl*
      (lambda (_%f102591%_ _%iv102592%_ . _%rest102593%_)
        (if (procedure? _%f102591%_)
            (let ((_%f102597%_ _%f102591%_))
              (declare (not safe))
              (##apply __foldl* _%f102597%_ _%iv102592%_ _%rest102593%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f102591%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f111405%_ _%iv111406%_ _%lst111407%_)
        (let ((_%f111410%_ _%f111405%_))
          (let _%recur111419%_ ((_%rest111421%_ _%lst111407%_))
            (let* ((_%rest111422111430%_ _%rest111421%_)
                   (_%else111424111438%_ (lambda () _%iv111406%_))
                   (_%K111426111444%_
                    (lambda (_%rest111441%_ _%x111442%_)
                      (let ((__tmp115132 (_%recur111419%_ _%rest111441%_)))
                        (declare (not safe))
                        (_%f111410%_ _%x111442%_ __tmp115132)))))
              (if (pair? _%rest111422111430%_)
                  (let ((_%hd111427111447%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111422111430%_)))
                        (_%tl111428111449%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111422111430%_))))
                    (let* ((_%x111452%_ _%hd111427111447%_)
                           (_%rest111454%_ _%tl111428111449%_))
                      (_%K111426111444%_ _%rest111454%_ _%x111452%_)))
                  (_%else111424111438%_)))))))
    (define foldr1
      (lambda (_%f102727%_ _%iv102728%_ _%lst102729%_)
        (if (procedure? _%f102727%_)
            (let ((_%f102733%_ _%f102727%_))
              (__foldr1 _%f102733%_ _%iv102728%_ _%lst102729%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f102727%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f111319%_ _%iv111320%_ _%lst1111321%_ _%lst2111322%_)
        (let ((_%f111325%_ _%f111319%_))
          (let _%recur111334%_ ((_%rest1111336%_ _%lst1111321%_)
                                (_%rest2111337%_ _%lst2111322%_))
            (let* ((_%rest1111338111346%_ _%rest1111336%_)
                   (_%else111340111354%_ (lambda () _%iv111320%_))
                   (_%K111342111393%_
                    (lambda (_%rest1111357%_ _%x1111358%_)
                      (let* ((_%rest2111359111367%_ _%rest2111337%_)
                             (_%else111361111375%_ (lambda () _%iv111320%_))
                             (_%K111363111381%_
                              (lambda (_%rest2111378%_ _%x2111379%_)
                                (let ((__tmp115133
                                       (_%recur111334%_
                                        _%rest1111357%_
                                        _%rest2111378%_)))
                                  (declare (not safe))
                                  (_%f111325%_
                                   _%x1111358%_
                                   _%x2111379%_
                                   __tmp115133)))))
                        (if (pair? _%rest2111359111367%_)
                            (let ((_%hd111364111384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111359111367%_)))
                                  (_%tl111365111386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111359111367%_))))
                              (let* ((_%x2111389%_ _%hd111364111384%_)
                                     (_%rest2111391%_ _%tl111365111386%_))
                                (_%K111363111381%_
                                 _%rest2111391%_
                                 _%x2111389%_)))
                            (_%else111361111375%_))))))
              (if (pair? _%rest1111338111346%_)
                  (let ((_%hd111343111396%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111338111346%_)))
                        (_%tl111344111398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111338111346%_))))
                    (let* ((_%x1111401%_ _%hd111343111396%_)
                           (_%rest1111403%_ _%tl111344111398%_))
                      (_%K111342111393%_ _%rest1111403%_ _%x1111401%_)))
                  (_%else111340111354%_)))))))
    (define foldr2
      (lambda (_%f102863%_ _%iv102864%_ _%lst1102865%_ _%lst2102866%_)
        (if (procedure? _%f102863%_)
            (let ((_%f102870%_ _%f102863%_))
              (__foldr2
               _%f102870%_
               _%iv102864%_
               _%lst1102865%_
               _%lst2102866%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f102863%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f111252%_ _%iv111253%_ _%lst111254%_)
        (let* ((_%f111256%_ _%f111252%_)
               (_%iv111259%_ _%iv111253%_)
               (_%lst111262%_ _%lst111254%_))
          (if (procedure? _%f111256%_)
              (let ((_%f111267%_ _%f111256%_))
                (__foldr1 _%f111267%_ _%iv111259%_ _%lst111262%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111256%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f111280%_ _%iv111281%_ _%lst1111282%_ _%lst2111283%_)
        (let* ((_%f111285%_ _%f111280%_)
               (_%iv111288%_ _%iv111281%_)
               (_%lst1111291%_ _%lst1111282%_)
               (_%lst2111294%_ _%lst2111283%_))
          (if (procedure? _%f111285%_)
              (let ((_%f111299%_ _%f111285%_))
                (__foldr2
                 _%f111299%_
                 _%iv111288%_
                 _%lst1111291%_
                 _%lst2111294%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111285%_)
                '#!void)))))
    (define foldr
      (lambda _g115134_
        (let ((_g115135_ (let () (declare (not safe)) (##length _g115134_))))
          (cond ((let () (declare (not safe)) (##fx= _g115135_ 3))
                 (apply foldr__0 _g115134_))
                ((let () (declare (not safe)) (##fx= _g115135_ 4))
                 (apply foldr__1 _g115134_))
                ((let () (declare (not safe)) (##fx>= _g115135_ 4))
                 (apply foldr* _g115134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g115134_))))))
    (define __foldr*
      (lambda (_%f111184%_ _%iv111185%_ . _%rest111186%_)
        (let ((_%f111189%_ _%f111184%_))
          (let _%recur111198%_ ((_%rest111200%_ _%rest111186%_))
            (if (let* ((_%f111202%_ pair?)
                       (_%lst111205%_ _%rest111200%_)
                       (_%f111210%_ _%f111202%_))
                  (__andmap1 _%f111210%_ _%lst111205%_))
                (let ((__tmp115136
                       (let* ((_%f111229%_
                               (lambda (_%xs111226%_ _%r111227%_)
                                 (cons (car _%xs111226%_) _%r111227%_)))
                              (_%iv111232%_
                               (list (_%recur111198%_
                                      (map cdr _%rest111200%_))))
                              (_%lst111235%_ _%rest111200%_)
                              (_%f111240%_ _%f111229%_))
                         (__foldr1 _%f111240%_ _%iv111232%_ _%lst111235%_))))
                  (declare (not safe))
                  (##apply _%f111189%_ __tmp115136))
                _%iv111185%_)))))
    (define foldr*
      (lambda (_%f103000%_ _%iv103001%_ . _%rest103002%_)
        (if (procedure? _%f103000%_)
            (let ((_%f103006%_ _%f103000%_))
              (declare (not safe))
              (##apply __foldr* _%f103006%_ _%iv103001%_ _%rest103002%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f103000%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l111071%_)
        (let* ((_%l111072111085%_ _%l111071%_)
               (_%E111076111089%_
                (lambda ()
                  (error '"No clause matching"
                         _%l111072111085%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K111081111174%_
                 (lambda (_%r111172%_) (remove-nulls! _%r111172%_)))
                (_%K111078111161%_
                 (lambda (_%r111101%_)
                   (let _%loop111103%_ ((_%l111105%_ _%l111071%_)
                                        (_%r111106%_ _%r111101%_))
                     (let* ((_%r111107111120%_ _%r111106%_)
                            (_%E111111111124%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r111107111120%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K111116111151%_
                              (lambda (_%rr111149%_)
                                (let ((__tmp115138 _%l111105%_)
                                      (__tmp115137
                                       (remove-nulls! _%rr111149%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp115138 __tmp115137))))
                             (_%K111113111138%_
                              (lambda (_%rr111136%_)
                                (_%loop111103%_ _%r111106%_ _%rr111136%_)))
                             (_%K111112111129%_ (lambda () '#!void)))
                         (if (pair? _%r111107111120%_)
                             (let ((_%tl111118111156%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r111107111120%_)))
                                   (_%hd111117111154%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r111107111120%_))))
                               (if (null? _%hd111117111154%_)
                                   (let ((_%rr111159%_ _%tl111118111156%_))
                                     (_%K111116111151%_ _%rr111159%_))
                                   (let ((_%rr111144%_ _%tl111118111156%_))
                                     (_%K111113111138%_ _%rr111144%_))))
                             '#!void))))
                   _%l111071%_))
                (_%K111077111094%_ (lambda () _%l111071%_)))
            (if (pair? _%l111072111085%_)
                (let ((_%tl111083111179%_
                       (let () (declare (not safe)) (##cdr _%l111072111085%_)))
                      (_%hd111082111177%_
                       (let ()
                         (declare (not safe))
                         (##car _%l111072111085%_))))
                  (if (null? _%hd111082111177%_)
                      (let ((_%r111182%_ _%tl111083111179%_))
                        (remove-nulls! _%r111182%_))
                      (let ((_%r111167%_ _%tl111083111179%_))
                        (_%K111078111161%_ _%r111167%_))))
                (_%K111077111094%_))))))
    (define append1!
      (lambda (_%l111056%_ _%x111057%_)
        (let ((_%l2111060%_ (cons _%x111057%_ '())))
          (if (pair? _%l111056%_)
              (let ((_%l111062%_ _%l111056%_))
                (let ((__tmp115139
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l111062%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp115139 _%l2111060%_))
                _%l111062%_)
              _%l2111060%_))))
    (define __append-reverse-until
      (lambda (_%pred110998%_ _%rhead110999%_ _%tail111000%_)
        (let ((_%pred111003%_ _%pred110998%_))
          (let _%loop111012%_ ((_%rhead111014%_ _%rhead110999%_)
                               (_%tail111015%_ _%tail111000%_))
            (let* ((_%rhead111017111026%_ _%rhead111014%_)
                   (_%E111020111030%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead111017111026%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K111024111053%_ (lambda () (values '() _%tail111015%_)))
                    (_%K111021111037%_
                     (lambda (_%r111034%_ _%a111035%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred111003%_ _%a111035%_))
                           (values _%rhead111014%_ _%tail111015%_)
                           (_%loop111012%_
                            _%r111034%_
                            (cons _%a111035%_ _%tail111015%_))))))
                (let ((_%try-match111019111049%_
                       (lambda ()
                         (if (pair? _%rhead111017111026%_)
                             (let ((_%tl111023111042%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead111017111026%_)))
                                   (_%hd111022111040%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead111017111026%_))))
                               (let ((_%a111045%_ _%hd111022111040%_)
                                     (_%r111047%_ _%tl111023111042%_))
                                 (_%K111021111037%_ _%r111047%_ _%a111045%_)))
                             (_%E111020111030%_)))))
                  (if (null? _%rhead111017111026%_)
                      (_%K111024111053%_)
                      (_%try-match111019111049%_)))))))))
    (define append-reverse-until
      (lambda (_%pred103136%_ _%rhead103137%_ _%tail103138%_)
        (if (procedure? _%pred103136%_)
            (let ((_%pred103142%_ _%pred103136%_))
              (__append-reverse-until
               _%pred103142%_
               _%rhead103137%_
               _%tail103138%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred103136%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f110947%_ _%lst110948%_)
        (let ((_%f110951%_ _%f110947%_))
          (let _%lp110960%_ ((_%rest110962%_ _%lst110948%_))
            (let* ((_%rest110964110972%_ _%rest110962%_)
                   (_%else110966110980%_ (lambda () '#t))
                   (_%K110968110986%_
                    (lambda (_%rest110983%_ _%x110984%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f110951%_ _%x110984%_))
                          (_%lp110960%_ _%rest110983%_)
                          '#f))))
              (if (pair? _%rest110964110972%_)
                  (let ((_%hd110969110989%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110964110972%_)))
                        (_%tl110970110991%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110964110972%_))))
                    (let* ((_%x110994%_ _%hd110969110989%_)
                           (_%rest110996%_ _%tl110970110991%_))
                      (_%K110968110986%_ _%rest110996%_ _%x110994%_)))
                  (_%else110966110980%_)))))))
    (define andmap1
      (lambda (_%f103272%_ _%lst103273%_)
        (if (procedure? _%f103272%_)
            (let ((_%f103277%_ _%f103272%_))
              (__andmap1 _%f103277%_ _%lst103273%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f103272%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f110861%_ _%lst1110862%_ _%lst2110863%_)
        (let ((_%f110866%_ _%f110861%_))
          (let _%lp110875%_ ((_%rest1110877%_ _%lst1110862%_)
                             (_%rest2110878%_ _%lst2110863%_))
            (let* ((_%rest1110880110888%_ _%rest1110877%_)
                   (_%else110882110896%_ (lambda () '#t))
                   (_%K110884110935%_
                    (lambda (_%rest1110899%_ _%x1110900%_)
                      (let* ((_%rest2110901110909%_ _%rest2110878%_)
                             (_%else110903110917%_ (lambda () '#t))
                             (_%K110905110923%_
                              (lambda (_%rest2110920%_ _%x2110921%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f110866%_ _%x1110900%_ _%x2110921%_))
                                    (_%lp110875%_
                                     _%rest1110899%_
                                     _%rest2110920%_)
                                    '#f))))
                        (if (pair? _%rest2110901110909%_)
                            (let ((_%hd110906110926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110901110909%_)))
                                  (_%tl110907110928%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110901110909%_))))
                              (let* ((_%x2110931%_ _%hd110906110926%_)
                                     (_%rest2110933%_ _%tl110907110928%_))
                                (_%K110905110923%_
                                 _%rest2110933%_
                                 _%x2110931%_)))
                            (_%else110903110917%_))))))
              (if (pair? _%rest1110880110888%_)
                  (let ((_%hd110885110938%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110880110888%_)))
                        (_%tl110886110940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110880110888%_))))
                    (let* ((_%x1110943%_ _%hd110885110938%_)
                           (_%rest1110945%_ _%tl110886110940%_))
                      (_%K110884110935%_ _%rest1110945%_ _%x1110943%_)))
                  (_%else110882110896%_)))))))
    (define andmap2
      (lambda (_%f103407%_ _%lst1103408%_ _%lst2103409%_)
        (if (procedure? _%f103407%_)
            (let ((_%f103413%_ _%f103407%_))
              (__andmap2 _%f103413%_ _%lst1103408%_ _%lst2103409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f103407%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f110805%_ _%lst110806%_)
        (let* ((_%f110808%_ _%f110805%_) (_%lst110811%_ _%lst110806%_))
          (if (procedure? _%f110808%_)
              (let ((_%f110816%_ _%f110808%_))
                (__andmap1 _%f110816%_ _%lst110811%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110808%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f110828%_ _%lst1110829%_ _%lst2110830%_)
        (let* ((_%f110832%_ _%f110828%_)
               (_%lst1110835%_ _%lst1110829%_)
               (_%lst2110838%_ _%lst2110830%_))
          (if (procedure? _%f110832%_)
              (let ((_%f110843%_ _%f110832%_))
                (__andmap2 _%f110843%_ _%lst1110835%_ _%lst2110838%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110832%_)
                '#!void)))))
    (define andmap
      (lambda _g115140_
        (let ((_g115141_ (let () (declare (not safe)) (##length _g115140_))))
          (cond ((let () (declare (not safe)) (##fx= _g115141_ 2))
                 (apply andmap__0 _g115140_))
                ((let () (declare (not safe)) (##fx= _g115141_ 3))
                 (apply andmap__1 _g115140_))
                ((let () (declare (not safe)) (##fx>= _g115141_ 3))
                 (apply andmap* _g115140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g115140_))))))
    (define __andmap*
      (lambda (_%f110762%_ . _%rest110763%_)
        (let ((_%f110766%_ _%f110762%_))
          (let _%recur110775%_ ((_%rest110777%_ _%rest110763%_))
            (if (let* ((_%f110780%_ pair?)
                       (_%lst110783%_ _%rest110777%_)
                       (_%f110788%_ _%f110780%_))
                  (__andmap1 _%f110788%_ _%lst110783%_))
                (if (let ((__tmp115142 (map car _%rest110777%_)))
                      (declare (not safe))
                      (##apply _%f110766%_ __tmp115142))
                    (_%recur110775%_ (map cdr _%rest110777%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f103543%_ . _%rest103544%_)
        (if (procedure? _%f103543%_)
            (let ((_%f103548%_ _%f103543%_))
              (declare (not safe))
              (##apply __andmap* _%f103548%_ _%rest103544%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f103543%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f110709%_ _%lst110710%_)
        (let ((_%f110713%_ _%f110709%_))
          (let _%lp110722%_ ((_%rest110724%_ _%lst110710%_))
            (let* ((_%rest110725110733%_ _%rest110724%_)
                   (_%else110727110741%_ (lambda () '#f))
                   (_%K110729110750%_
                    (lambda (_%rest110744%_ _%x110745%_)
                      (let ((_%$e110747%_
                             (let ()
                               (declare (not safe))
                               (_%f110713%_ _%x110745%_))))
                        (if _%$e110747%_
                            _%$e110747%_
                            (_%lp110722%_ _%rest110744%_))))))
              (if (pair? _%rest110725110733%_)
                  (let ((_%hd110730110753%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110725110733%_)))
                        (_%tl110731110755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110725110733%_))))
                    (let* ((_%x110758%_ _%hd110730110753%_)
                           (_%rest110760%_ _%tl110731110755%_))
                      (_%K110729110750%_ _%rest110760%_ _%x110758%_)))
                  (_%else110727110741%_)))))))
    (define ormap1
      (lambda (_%f103678%_ _%lst103679%_)
        (if (procedure? _%f103678%_)
            (let ((_%f103683%_ _%f103678%_))
              (__ormap1 _%f103683%_ _%lst103679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f103678%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f110621%_ _%lst1110622%_ _%lst2110623%_)
        (let ((_%f110626%_ _%f110621%_))
          (let _%lp110635%_ ((_%rest1110637%_ _%lst1110622%_)
                             (_%rest2110638%_ _%lst2110623%_))
            (let* ((_%rest1110639110647%_ _%rest1110637%_)
                   (_%else110641110655%_ (lambda () '#f))
                   (_%K110643110697%_
                    (lambda (_%rest1110658%_ _%x1110659%_)
                      (let* ((_%rest2110660110668%_ _%rest2110638%_)
                             (_%else110662110676%_ (lambda () '#f))
                             (_%K110664110685%_
                              (lambda (_%rest2110679%_ _%x2110680%_)
                                (let ((_%$e110682%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110626%_
                                          _%x1110659%_
                                          _%x2110680%_))))
                                  (if _%$e110682%_
                                      _%$e110682%_
                                      (_%lp110635%_
                                       _%rest1110658%_
                                       _%rest2110679%_))))))
                        (if (pair? _%rest2110660110668%_)
                            (let ((_%hd110665110688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110660110668%_)))
                                  (_%tl110666110690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110660110668%_))))
                              (let* ((_%x2110693%_ _%hd110665110688%_)
                                     (_%rest2110695%_ _%tl110666110690%_))
                                (_%K110664110685%_
                                 _%rest2110695%_
                                 _%x2110693%_)))
                            (_%else110662110676%_))))))
              (if (pair? _%rest1110639110647%_)
                  (let ((_%hd110644110700%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110639110647%_)))
                        (_%tl110645110702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110639110647%_))))
                    (let* ((_%x1110705%_ _%hd110644110700%_)
                           (_%rest1110707%_ _%tl110645110702%_))
                      (_%K110643110697%_ _%rest1110707%_ _%x1110705%_)))
                  (_%else110641110655%_)))))))
    (define ormap2
      (lambda (_%f103813%_ _%lst1103814%_ _%lst2103815%_)
        (if (procedure? _%f103813%_)
            (let ((_%f103819%_ _%f103813%_))
              (__ormap2 _%f103819%_ _%lst1103814%_ _%lst2103815%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f103813%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f110565%_ _%lst110566%_)
        (let* ((_%f110568%_ _%f110565%_) (_%lst110571%_ _%lst110566%_))
          (if (procedure? _%f110568%_)
              (let ((_%f110576%_ _%f110568%_))
                (__ormap1 _%f110576%_ _%lst110571%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110568%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f110588%_ _%lst1110589%_ _%lst2110590%_)
        (let* ((_%f110592%_ _%f110588%_)
               (_%lst1110595%_ _%lst1110589%_)
               (_%lst2110598%_ _%lst2110590%_))
          (if (procedure? _%f110592%_)
              (let ((_%f110603%_ _%f110592%_))
                (__ormap2 _%f110603%_ _%lst1110595%_ _%lst2110598%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110592%_)
                '#!void)))))
    (define ormap
      (lambda _g115143_
        (let ((_g115144_ (let () (declare (not safe)) (##length _g115143_))))
          (cond ((let () (declare (not safe)) (##fx= _g115144_ 2))
                 (apply ormap__0 _g115143_))
                ((let () (declare (not safe)) (##fx= _g115144_ 3))
                 (apply ormap__1 _g115143_))
                ((let () (declare (not safe)) (##fx>= _g115144_ 3))
                 (apply ormap* _g115143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g115143_))))))
    (define __ormap*
      (lambda (_%f110521%_ . _%rest110522%_)
        (let ((_%f110525%_ _%f110521%_))
          (let _%recur110534%_ ((_%rest110536%_ _%rest110522%_))
            (if (let* ((_%f110538%_ pair?)
                       (_%lst110541%_ _%rest110536%_)
                       (_%f110546%_ _%f110538%_))
                  (__andmap1 _%f110546%_ _%lst110541%_))
                (let ((_%$e110562%_
                       (let ((__tmp115145 (map car _%rest110536%_)))
                         (declare (not safe))
                         (##apply _%f110525%_ __tmp115145))))
                  (if _%$e110562%_
                      _%$e110562%_
                      (_%recur110534%_ (map cdr _%rest110536%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f103949%_ . _%rest103950%_)
        (if (procedure? _%f103949%_)
            (let ((_%f103954%_ _%f103949%_))
              (declare (not safe))
              (##apply __ormap* _%f103954%_ _%rest103950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f103949%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f110464%_ _%lst110465%_)
        (let ((_%f110468%_ _%f110464%_))
          (let _%recur110477%_ ((_%rest110479%_ _%lst110465%_))
            (let* ((_%rest110481110489%_ _%rest110479%_)
                   (_%else110483110497%_ (lambda () '()))
                   (_%K110485110509%_
                    (lambda (_%rest110500%_ _%x110501%_)
                      (let ((_%$e110503%_
                             (let ()
                               (declare (not safe))
                               (_%f110468%_ _%x110501%_))))
                        (if _%$e110503%_
                            ((lambda (_%r110506%_)
                               (cons _%r110506%_
                                     (_%recur110477%_ _%rest110500%_)))
                             _%$e110503%_)
                            (_%recur110477%_ _%rest110500%_))))))
              (if (pair? _%rest110481110489%_)
                  (let ((_%hd110486110512%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110481110489%_)))
                        (_%tl110487110514%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110481110489%_))))
                    (let* ((_%x110517%_ _%hd110486110512%_)
                           (_%rest110519%_ _%tl110487110514%_))
                      (_%K110485110509%_ _%rest110519%_ _%x110517%_)))
                  (_%else110483110497%_)))))))
    (define filter-map1
      (lambda (_%f104084%_ _%lst104085%_)
        (if (procedure? _%f104084%_)
            (let ((_%f104089%_ _%f104084%_))
              (__filter-map1 _%f104089%_ _%lst104085%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f104084%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f110372%_ _%lst1110373%_ _%lst2110374%_)
        (let ((_%f110377%_ _%f110372%_))
          (let _%recur110386%_ ((_%rest1110388%_ _%lst1110373%_)
                                (_%rest2110389%_ _%lst2110374%_))
            (let* ((_%rest1110391110399%_ _%rest1110388%_)
                   (_%else110393110407%_ (lambda () '()))
                   (_%K110395110452%_
                    (lambda (_%rest1110410%_ _%x1110411%_)
                      (let* ((_%rest2110412110420%_ _%rest2110389%_)
                             (_%else110414110428%_ (lambda () '()))
                             (_%K110416110440%_
                              (lambda (_%rest2110431%_ _%x2110432%_)
                                (let ((_%$e110434%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110377%_
                                          _%x1110411%_
                                          _%x2110432%_))))
                                  (if _%$e110434%_
                                      ((lambda (_%r110437%_)
                                         (cons _%r110437%_
                                               (_%recur110386%_
                                                _%rest1110410%_
                                                _%rest2110431%_)))
                                       _%$e110434%_)
                                      (_%recur110386%_
                                       _%rest1110410%_
                                       _%rest2110431%_))))))
                        (if (pair? _%rest2110412110420%_)
                            (let ((_%hd110417110443%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110412110420%_)))
                                  (_%tl110418110445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110412110420%_))))
                              (let* ((_%x2110448%_ _%hd110417110443%_)
                                     (_%rest2110450%_ _%tl110418110445%_))
                                (_%K110416110440%_
                                 _%rest2110450%_
                                 _%x2110448%_)))
                            (_%else110414110428%_))))))
              (if (pair? _%rest1110391110399%_)
                  (let ((_%hd110396110455%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110391110399%_)))
                        (_%tl110397110457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110391110399%_))))
                    (let* ((_%x1110460%_ _%hd110396110455%_)
                           (_%rest1110462%_ _%tl110397110457%_))
                      (_%K110395110452%_ _%rest1110462%_ _%x1110460%_)))
                  (_%else110393110407%_)))))))
    (define filter-map2
      (lambda (_%f104219%_ _%lst1104220%_ _%lst2104221%_)
        (if (procedure? _%f104219%_)
            (let ((_%f104225%_ _%f104219%_))
              (__filter-map2 _%f104225%_ _%lst1104220%_ _%lst2104221%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f104219%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f110316%_ _%lst110317%_)
        (let* ((_%f110319%_ _%f110316%_) (_%lst110322%_ _%lst110317%_))
          (if (procedure? _%f110319%_)
              (let ((_%f110327%_ _%f110319%_))
                (__filter-map1 _%f110327%_ _%lst110322%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110319%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f110339%_ _%lst1110340%_ _%lst2110341%_)
        (let* ((_%f110343%_ _%f110339%_)
               (_%lst1110346%_ _%lst1110340%_)
               (_%lst2110349%_ _%lst2110341%_))
          (if (procedure? _%f110343%_)
              (let ((_%f110354%_ _%f110343%_))
                (__filter-map2 _%f110354%_ _%lst1110346%_ _%lst2110349%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110343%_)
                '#!void)))))
    (define filter-map
      (lambda _g115146_
        (let ((_g115147_ (let () (declare (not safe)) (##length _g115146_))))
          (cond ((let () (declare (not safe)) (##fx= _g115147_ 2))
                 (apply filter-map__0 _g115146_))
                ((let () (declare (not safe)) (##fx= _g115147_ 3))
                 (apply filter-map__1 _g115146_))
                ((let () (declare (not safe)) (##fx>= _g115147_ 3))
                 (apply filter-map* _g115146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g115146_))))))
    (define __filter-map*
      (lambda (_%f110267%_ . _%rest110268%_)
        (let ((_%f110271%_ _%f110267%_))
          (let _%recur110280%_ ((_%rest110282%_ _%rest110268%_))
            (if (let* ((_%f110285%_ pair?)
                       (_%lst110288%_ _%rest110282%_)
                       (_%f110293%_ _%f110285%_))
                  (__andmap1 _%f110293%_ _%lst110288%_))
                (let ((_%$e110310%_
                       (let ((__tmp115148 (map car _%rest110282%_)))
                         (declare (not safe))
                         (##apply _%f110271%_ __tmp115148))))
                  (if _%$e110310%_
                      ((lambda (_%r110313%_)
                         (cons _%r110313%_
                               (_%recur110280%_ (map cdr _%rest110282%_))))
                       _%$e110310%_)
                      (_%recur110280%_ (map cdr _%rest110282%_))))
                '())))))
    (define filter-map*
      (lambda (_%f104355%_ . _%rest104356%_)
        (if (procedure? _%f104355%_)
            (let ((_%f104360%_ _%f104355%_))
              (declare (not safe))
              (##apply __filter-map* _%f104360%_ _%rest104356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f104355%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key110243%_ _%lst110245%_ _%default110247%_)
        (let ((_%$e110250%_
               (if (pair? _%lst110245%_)
                   (assq _%key110243%_ _%lst110245%_)
                   '#f)))
          (if _%$e110250%_
              (cdr _%$e110250%_)
              (if (procedure? _%default110247%_)
                  (_%default110247%_ _%key110243%_)
                  _%default110247%_)))))
    (define agetq__0
      (lambda (_%key110258%_ _%lst110259%_)
        (let ((_%default110261%_ '#f))
          (agetq__% _%key110258%_ _%lst110259%_ _%default110261%_))))
    (define agetq
      (lambda _g115149_
        (let ((_g115150_ (let () (declare (not safe)) (##length _g115149_))))
          (cond ((let () (declare (not safe)) (##fx= _g115150_ 2))
                 (apply agetq__0 _g115149_))
                ((let () (declare (not safe)) (##fx= _g115150_ 3))
                 (apply agetq__% _g115149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g115149_))))))
    (define agetv__%
      (lambda (_%key110218%_ _%lst110220%_ _%default110222%_)
        (let ((_%$e110225%_
               (if (pair? _%lst110220%_)
                   (assv _%key110218%_ _%lst110220%_)
                   '#f)))
          (if _%$e110225%_
              (cdr _%$e110225%_)
              (if (procedure? _%default110222%_)
                  (_%default110222%_ _%key110218%_)
                  _%default110222%_)))))
    (define agetv__0
      (lambda (_%key110233%_ _%lst110234%_)
        (let ((_%default110236%_ '#f))
          (agetv__% _%key110233%_ _%lst110234%_ _%default110236%_))))
    (define agetv
      (lambda _g115151_
        (let ((_g115152_ (let () (declare (not safe)) (##length _g115151_))))
          (cond ((let () (declare (not safe)) (##fx= _g115152_ 2))
                 (apply agetv__0 _g115151_))
                ((let () (declare (not safe)) (##fx= _g115152_ 3))
                 (apply agetv__% _g115151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g115151_))))))
    (define aget__%
      (lambda (_%key110193%_ _%lst110195%_ _%default110197%_)
        (let ((_%$e110200%_
               (if (pair? _%lst110195%_)
                   (assoc _%key110193%_ _%lst110195%_)
                   '#f)))
          (if _%$e110200%_
              (cdr _%$e110200%_)
              (if (procedure? _%default110197%_)
                  (_%default110197%_ _%key110193%_)
                  _%default110197%_)))))
    (define aget__0
      (lambda (_%key110208%_ _%lst110209%_)
        (let ((_%default110211%_ '#f))
          (aget__% _%key110208%_ _%lst110209%_ _%default110211%_))))
    (define aget
      (lambda _g115153_
        (let ((_g115154_ (let () (declare (not safe)) (##length _g115153_))))
          (cond ((let () (declare (not safe)) (##fx= _g115154_ 2))
                 (apply aget__0 _g115153_))
                ((let () (declare (not safe)) (##fx= _g115154_ 3))
                 (apply aget__% _g115153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g115153_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key110122%_ _%lst110124%_ _%default110126%_)
        (let _%lp110129%_ ((_%rest110132%_ _%lst110124%_))
          (let* ((_%rest110134110144%_ _%rest110132%_)
                 (_%else110136110152%_
                  (lambda ()
                    (if (procedure? _%default110126%_)
                        (_%default110126%_ _%key110122%_)
                        _%default110126%_)))
                 (_%K110138110161%_
                  (lambda (_%rest110155%_ _%v110156%_ _%k110158%_)
                    (if (eq? _%k110158%_ _%key110122%_)
                        _%v110156%_
                        (_%lp110129%_ _%rest110155%_)))))
            (if (pair? _%rest110134110144%_)
                (let ((_%hd110139110164%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110134110144%_)))
                      (_%tl110140110166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110134110144%_))))
                  (let ((_%k110169%_ _%hd110139110164%_))
                    (if (pair? _%tl110140110166%_)
                        (let ((_%hd110141110171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110140110166%_)))
                              (_%tl110142110173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110140110166%_))))
                          (let* ((_%v110176%_ _%hd110141110171%_)
                                 (_%rest110178%_ _%tl110142110173%_))
                            (_%K110138110161%_
                             _%rest110178%_
                             _%v110176%_
                             _%k110169%_)))
                        (_%else110136110152%_))))
                (_%else110136110152%_))))))
    (define pgetq__0
      (lambda (_%key110183%_ _%lst110184%_)
        (let ((_%default110186%_ '#f))
          (pgetq__% _%key110183%_ _%lst110184%_ _%default110186%_))))
    (define pgetq
      (lambda _g115155_
        (let ((_g115156_ (let () (declare (not safe)) (##length _g115155_))))
          (cond ((let () (declare (not safe)) (##fx= _g115156_ 2))
                 (apply pgetq__0 _g115155_))
                ((let () (declare (not safe)) (##fx= _g115156_ 3))
                 (apply pgetq__% _g115155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g115155_))))))
    (define pgetv__%
      (lambda (_%key110051%_ _%lst110053%_ _%default110055%_)
        (let _%lp110058%_ ((_%rest110061%_ _%lst110053%_))
          (let* ((_%rest110063110073%_ _%rest110061%_)
                 (_%else110065110081%_
                  (lambda ()
                    (if (procedure? _%default110055%_)
                        (_%default110055%_ _%key110051%_)
                        _%default110055%_)))
                 (_%K110067110090%_
                  (lambda (_%rest110084%_ _%v110085%_ _%k110087%_)
                    (if (eqv? _%k110087%_ _%key110051%_)
                        _%v110085%_
                        (_%lp110058%_ _%rest110084%_)))))
            (if (pair? _%rest110063110073%_)
                (let ((_%hd110068110093%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110063110073%_)))
                      (_%tl110069110095%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110063110073%_))))
                  (let ((_%k110098%_ _%hd110068110093%_))
                    (if (pair? _%tl110069110095%_)
                        (let ((_%hd110070110100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110069110095%_)))
                              (_%tl110071110102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110069110095%_))))
                          (let* ((_%v110105%_ _%hd110070110100%_)
                                 (_%rest110107%_ _%tl110071110102%_))
                            (_%K110067110090%_
                             _%rest110107%_
                             _%v110105%_
                             _%k110098%_)))
                        (_%else110065110081%_))))
                (_%else110065110081%_))))))
    (define pgetv__0
      (lambda (_%key110112%_ _%lst110113%_)
        (let ((_%default110115%_ '#f))
          (pgetv__% _%key110112%_ _%lst110113%_ _%default110115%_))))
    (define pgetv
      (lambda _g115157_
        (let ((_g115158_ (let () (declare (not safe)) (##length _g115157_))))
          (cond ((let () (declare (not safe)) (##fx= _g115158_ 2))
                 (apply pgetv__0 _g115157_))
                ((let () (declare (not safe)) (##fx= _g115158_ 3))
                 (apply pgetv__% _g115157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g115157_))))))
    (define pget__%
      (lambda (_%key109980%_ _%lst109982%_ _%default109984%_)
        (let _%lp109987%_ ((_%rest109990%_ _%lst109982%_))
          (let* ((_%rest109992110002%_ _%rest109990%_)
                 (_%else109994110010%_
                  (lambda ()
                    (if (procedure? _%default109984%_)
                        (_%default109984%_ _%key109980%_)
                        _%default109984%_)))
                 (_%K109996110019%_
                  (lambda (_%rest110013%_ _%v110014%_ _%k110016%_)
                    (if (equal? _%k110016%_ _%key109980%_)
                        _%v110014%_
                        (_%lp109987%_ _%rest110013%_)))))
            (if (pair? _%rest109992110002%_)
                (let ((_%hd109997110022%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109992110002%_)))
                      (_%tl109998110024%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109992110002%_))))
                  (let ((_%k110027%_ _%hd109997110022%_))
                    (if (pair? _%tl109998110024%_)
                        (let ((_%hd109999110029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109998110024%_)))
                              (_%tl110000110031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109998110024%_))))
                          (let* ((_%v110034%_ _%hd109999110029%_)
                                 (_%rest110036%_ _%tl110000110031%_))
                            (_%K109996110019%_
                             _%rest110036%_
                             _%v110034%_
                             _%k110027%_)))
                        (_%else109994110010%_))))
                (_%else109994110010%_))))))
    (define pget__0
      (lambda (_%key110041%_ _%lst110042%_)
        (let ((_%default110044%_ '#f))
          (pget__% _%key110041%_ _%lst110042%_ _%default110044%_))))
    (define pget
      (lambda _g115159_
        (let ((_g115160_ (let () (declare (not safe)) (##length _g115159_))))
          (cond ((let () (declare (not safe)) (##fx= _g115160_ 2))
                 (apply pget__0 _g115159_))
                ((let () (declare (not safe)) (##fx= _g115160_ 3))
                 (apply pget__% _g115159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g115159_))))))
    (define __find
      (lambda (_%pred109940%_ _%lst109941%_)
        (let* ((_%pred109944%_ _%pred109940%_)
               (_%$e109975%_
                (let* ((_%proc109953%_ _%pred109944%_)
                       (_%lst109956%_ _%lst109941%_)
                       (_%proc109961%_ _%proc109953%_))
                  (__memf _%proc109961%_ _%lst109956%_))))
          (if _%$e109975%_
              (let () (declare (not safe)) (##car _%$e109975%_))
              '#f))))
    (define find
      (lambda (_%pred104652%_ _%lst104653%_)
        (if (procedure? _%pred104652%_)
            (let ((_%pred104657%_ _%pred104652%_))
              (__find _%pred104657%_ _%lst104653%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred104652%_)
              '#!void))))
    (define __memf
      (lambda (_%proc109890%_ _%lst109891%_)
        (let ((_%proc109894%_ _%proc109890%_))
          (let _%lp109903%_ ((_%rest109905%_ _%lst109891%_))
            (let* ((_%rest109906109914%_ _%rest109905%_)
                   (_%else109908109922%_ (lambda () '#f))
                   (_%K109910109928%_
                    (lambda (_%tl109925%_ _%hd109926%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109894%_ _%hd109926%_))
                          _%rest109905%_
                          (_%lp109903%_ _%tl109925%_)))))
              (if (pair? _%rest109906109914%_)
                  (let ((_%hd109911109931%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109906109914%_)))
                        (_%tl109912109933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109906109914%_))))
                    (let* ((_%hd109936%_ _%hd109911109931%_)
                           (_%tl109938%_ _%tl109912109933%_))
                      (_%K109910109928%_ _%tl109938%_ _%hd109936%_)))
                  (_%else109908109922%_)))))))
    (define memf
      (lambda (_%proc104787%_ _%lst104788%_)
        (if (procedure? _%proc104787%_)
            (let ((_%proc104792%_ _%proc104787%_))
              (__memf _%proc104792%_ _%lst104788%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc104787%_)
              '#!void))))
    (define remove1
      (lambda (_%el109813%_ _%lst109815%_)
        (let _%lp109818%_ ((_%rest109821%_ _%lst109815%_) (_%r109823%_ '()))
          (let* ((_%rest109825109833%_ _%rest109821%_)
                 (_%else109827109841%_ (lambda () _%lst109815%_))
                 (_%K109829109878%_
                  (lambda (_%rest109844%_ _%hd109845%_)
                    (if (equal? _%el109813%_ _%hd109845%_)
                        (let* ((_%f109848%_ cons)
                               (_%iv109851%_ _%rest109844%_)
                               (_%lst109854%_ _%r109823%_)
                               (_%f109859%_ _%f109848%_))
                          (__foldl1 _%f109859%_ _%iv109851%_ _%lst109854%_))
                        (_%lp109818%_
                         _%rest109844%_
                         (cons _%hd109845%_ _%r109823%_))))))
            (if (pair? _%rest109825109833%_)
                (let ((_%hd109830109881%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109825109833%_)))
                      (_%tl109831109883%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109825109833%_))))
                  (let* ((_%hd109886%_ _%hd109830109881%_)
                         (_%rest109888%_ _%tl109831109883%_))
                    (_%K109829109878%_ _%rest109888%_ _%hd109886%_)))
                (_%else109827109841%_))))))
    (define remv1
      (lambda (_%el109736%_ _%lst109738%_)
        (let _%lp109741%_ ((_%rest109744%_ _%lst109738%_) (_%r109746%_ '()))
          (let* ((_%rest109748109756%_ _%rest109744%_)
                 (_%else109750109764%_ (lambda () _%lst109738%_))
                 (_%K109752109801%_
                  (lambda (_%rest109767%_ _%hd109768%_)
                    (if (eqv? _%el109736%_ _%hd109768%_)
                        (let* ((_%f109771%_ cons)
                               (_%iv109774%_ _%rest109767%_)
                               (_%lst109777%_ _%r109746%_)
                               (_%f109782%_ _%f109771%_))
                          (__foldl1 _%f109782%_ _%iv109774%_ _%lst109777%_))
                        (_%lp109741%_
                         _%rest109767%_
                         (cons _%hd109768%_ _%r109746%_))))))
            (if (pair? _%rest109748109756%_)
                (let ((_%hd109753109804%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109748109756%_)))
                      (_%tl109754109806%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109748109756%_))))
                  (let* ((_%hd109809%_ _%hd109753109804%_)
                         (_%rest109811%_ _%tl109754109806%_))
                    (_%K109752109801%_ _%rest109811%_ _%hd109809%_)))
                (_%else109750109764%_))))))
    (define remq1
      (lambda (_%el109659%_ _%lst109661%_)
        (let _%lp109664%_ ((_%rest109667%_ _%lst109661%_) (_%r109669%_ '()))
          (let* ((_%rest109671109679%_ _%rest109667%_)
                 (_%else109673109687%_ (lambda () _%lst109661%_))
                 (_%K109675109724%_
                  (lambda (_%rest109690%_ _%hd109691%_)
                    (if (eq? _%el109659%_ _%hd109691%_)
                        (let* ((_%f109694%_ cons)
                               (_%iv109697%_ _%rest109690%_)
                               (_%lst109700%_ _%r109669%_)
                               (_%f109705%_ _%f109694%_))
                          (__foldl1 _%f109705%_ _%iv109697%_ _%lst109700%_))
                        (_%lp109664%_
                         _%rest109690%_
                         (cons _%hd109691%_ _%r109669%_))))))
            (if (pair? _%rest109671109679%_)
                (let ((_%hd109676109727%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109671109679%_)))
                      (_%tl109677109729%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109671109679%_))))
                  (let* ((_%hd109732%_ _%hd109676109727%_)
                         (_%rest109734%_ _%tl109677109729%_))
                    (_%K109675109724%_ _%rest109734%_ _%hd109732%_)))
                (_%else109673109687%_))))))
    (define __remf
      (lambda (_%proc109576%_ _%lst109577%_)
        (let ((_%proc109580%_ _%proc109576%_))
          (let _%lp109589%_ ((_%rest109591%_ _%lst109577%_) (_%r109592%_ '()))
            (let* ((_%rest109593109601%_ _%rest109591%_)
                   (_%else109595109609%_ (lambda () _%lst109577%_))
                   (_%K109597109647%_
                    (lambda (_%rest109612%_ _%hd109613%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109580%_ _%hd109613%_))
                          (let* ((_%f109615%_ cons)
                                 (_%iv109618%_ _%rest109612%_)
                                 (_%lst109621%_ _%r109592%_)
                                 (_%f109626%_ _%f109615%_))
                            (__foldl1 _%f109626%_ _%iv109618%_ _%lst109621%_))
                          (_%lp109589%_
                           _%rest109612%_
                           (cons _%hd109613%_ _%r109592%_))))))
              (if (pair? _%rest109593109601%_)
                  (let ((_%hd109598109650%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109593109601%_)))
                        (_%tl109599109652%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109593109601%_))))
                    (let* ((_%hd109655%_ _%hd109598109650%_)
                           (_%rest109657%_ _%tl109599109652%_))
                      (_%K109597109647%_ _%rest109657%_ _%hd109655%_)))
                  (_%else109595109609%_)))))))
    (define remf
      (lambda (_%proc105003%_ _%lst105004%_)
        (if (procedure? _%proc105003%_)
            (let ((_%proc105008%_ _%proc105003%_))
              (__remf _%proc105008%_ _%lst105004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc105003%_)
              '#!void))))
    (define __1+
      (lambda (_%x109564%_)
        (let ((_%x109567%_ _%x109564%_)) (+ _%x109567%_ '1))))
    (define 1+
      (lambda (_%x105138%_)
        (if (number? _%x105138%_)
            (let ((_%x105142%_ _%x105138%_)) (__1+ _%x105142%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x105138%_)
              '#!void))))
    (define __1-
      (lambda (_%x109552%_)
        (let ((_%x109555%_ _%x109552%_)) (- _%x109555%_ '1))))
    (define 1-
      (lambda (_%x105272%_)
        (if (number? _%x105272%_)
            (let ((_%x105276%_ _%x105272%_)) (__1- _%x105276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x105272%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x109540%_)
        (let ((_%x109543%_ _%x109540%_))
          (declare (not safe))
          (##fx+ _%x109543%_ '1))))
    (define fx1+
      (lambda (_%x105406%_)
        (if (fixnum? _%x105406%_)
            (let ((_%x105410%_ _%x105406%_)) (__fx1+ _%x105410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x105406%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x109528%_)
        (let ((_%x109531%_ _%x109528%_))
          (declare (not safe))
          (##fx- _%x109531%_ '1))))
    (define fx1-
      (lambda (_%x105540%_)
        (if (fixnum? _%x105540%_)
            (let ((_%x105544%_ _%x105540%_)) (__fx1- _%x105544%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x105540%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x109525%_)
        (if (fixnum? _%x109525%_)
            (let () (declare (not safe)) (##fx>= _%x109525%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x109522%_)
        (if (fixnum? _%x109522%_)
            (let () (declare (not safe)) (##fx> _%x109522%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x109519%_)
        (let () (declare (not safe)) (##fx= _%x109519%_ '0))))
    (define fx<0?
      (lambda (_%x109516%_)
        (if (fixnum? _%x109516%_)
            (let () (declare (not safe)) (##fx< _%x109516%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x109513%_)
        (if (fixnum? _%x109513%_)
            (let () (declare (not safe)) (##fx<= _%x109513%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x109510%_)
        (if (symbol? _%x109510%_) (not (uninterned-symbol? _%x109510%_)) '#f)))
    (define __display-as-string
      (lambda (_%x109404%_ _%port109405%_)
        (let ((_%port109408%_ _%port109405%_))
          (if (or (string? _%x109404%_)
                  (symbol? _%x109404%_)
                  (keyword? _%x109404%_)
                  (number? _%x109404%_)
                  (char? _%x109404%_))
              (display _%x109404%_ _%port109408%_)
              (if (pair? _%x109404%_)
                  (let ()
                    (let* ((_%x109431%_
                            (let () (declare (not safe)) (##car _%x109404%_)))
                           (_%port109434%_ _%port109408%_))
                      (if (output-port? _%port109434%_)
                          (let ((_%port109439%_ _%port109434%_))
                            (__display-as-string _%x109431%_ _%port109439%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109434%_)
                            '#!void)))
                    (let* ((_%x109454%_
                            (let () (declare (not safe)) (##cdr _%x109404%_)))
                           (_%port109457%_ _%port109408%_))
                      (if (output-port? _%port109457%_)
                          (let ((_%port109462%_ _%port109457%_))
                            (__display-as-string _%x109454%_ _%port109462%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109457%_)
                            '#!void))))
                  (if (vector? _%x109404%_)
                      (vector-for-each
                       (lambda (_%g109473109475%_)
                         (let* ((_%x109478%_ _%g109473109475%_)
                                (_%port109481%_ _%port109408%_))
                           (if (output-port? _%port109481%_)
                               (let ((_%port109486%_ _%port109481%_))
                                 (__display-as-string
                                  _%x109478%_
                                  _%port109486%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port109481%_)
                                 '#!void))))
                       _%x109404%_)
                      (if (or (null? _%x109404%_)
                              (eq? _%x109404%_ '#!void)
                              (eof-object? _%x109404%_)
                              (boolean? _%x109404%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x109404%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x105674%_ _%port105675%_)
        (if (output-port? _%port105675%_)
            (let ((_%port105679%_ _%port105675%_))
              (__display-as-string _%x105674%_ _%port105679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port105675%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x109344%_)
        (if (string? _%x109344%_)
            _%x109344%_
            (if (symbol? _%x109344%_)
                (let () (declare (not safe)) (##symbol->string _%x109344%_))
                (if (keyword? _%x109344%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x109344%_))
                    (if (number? _%x109344%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x109344%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g109350109352%_)
                           (let* ((_%x109355%_ _%x109344%_)
                                  (_%port109358%_ _%g109350109352%_))
                             (if (output-port? _%port109358%_)
                                 (let ((_%port109363%_ _%port109358%_))
                                   (__display-as-string
                                    _%x109355%_
                                    _%port109363%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port109358%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args109377%_
        (call-with-output-string
         '()
         (lambda (_%g109378109380%_)
           (let* ((_%x109383%_ _%args109377%_)
                  (_%port109386%_ _%g109378109380%_))
             (if (output-port? _%port109386%_)
                 (let ((_%port109391%_ _%port109386%_))
                   (__display-as-string _%x109383%_ _%port109391%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port109386%_)
                   '#!void)))))))
    (define as-string
      (lambda _g115161_
        (let ((_g115162_ (let () (declare (not safe)) (##length _g115161_))))
          (cond ((let () (declare (not safe)) (##fx= _g115162_ 1))
                 (apply as-string__0 _g115161_))
                (#t
                 (apply (lambda _%args109377%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args109377%_)))
                        _g115161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g115161_))))))
    (define make-symbol__0
      (lambda (_%x109340%_)
        (if (interned-symbol? _%x109340%_)
            _%x109340%_
            (let ((__tmp115163 (as-string__0 _%x109340%_)))
              (declare (not safe))
              (##string->symbol __tmp115163)))))
    (define make-symbol__1
      (lambda _%args109342%_
        (let ((__tmp115164
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109342%_))))
          (declare (not safe))
          (##string->symbol __tmp115164))))
    (define make-symbol
      (lambda _g115165_
        (let ((_g115166_ (let () (declare (not safe)) (##length _g115165_))))
          (cond ((let () (declare (not safe)) (##fx= _g115166_ 1))
                 (apply make-symbol__0 _g115165_))
                (#t
                 (apply (lambda _%args109342%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args109342%_)))
                        _g115165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g115165_))))))
    (define make-keyword__0
      (lambda (_%x109336%_)
        (if (interned-keyword? _%x109336%_)
            _%x109336%_
            (let ((__tmp115167 (as-string__0 _%x109336%_)))
              (declare (not safe))
              (##string->keyword __tmp115167)))))
    (define make-keyword__1
      (lambda _%args109338%_
        (let ((__tmp115168
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109338%_))))
          (declare (not safe))
          (##string->keyword __tmp115168))))
    (define make-keyword
      (lambda _g115169_
        (let ((_g115170_ (let () (declare (not safe)) (##length _g115169_))))
          (cond ((let () (declare (not safe)) (##fx= _g115170_ 1))
                 (apply make-keyword__0 _g115169_))
                (#t
                 (apply (lambda _%args109338%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args109338%_)))
                        _g115169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g115169_))))))
    (define interned-keyword?
      (lambda (_%x109333%_)
        (if (keyword? _%x109333%_)
            (not (uninterned-keyword? _%x109333%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym109321%_)
        (let ((_%sym109324%_ _%sym109321%_))
          (if (uninterned-symbol? _%sym109324%_)
              (let ((__tmp115171
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109324%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp115171))
              (let ((__tmp115172
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109324%_))))
                (declare (not safe))
                (##string->keyword __tmp115172))))))
    (define symbol->keyword
      (lambda (_%sym105809%_)
        (if (symbol? _%sym105809%_)
            (let ((_%sym105813%_ _%sym105809%_))
              (__symbol->keyword _%sym105813%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym105809%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym109309%_)
        (let ((_%sym109312%_ _%sym109309%_))
          (if (uninterned-keyword? _%sym109312%_)
              (let ((__tmp115173
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109312%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp115173))
              (let ((__tmp115174
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109312%_))))
                (declare (not safe))
                (##string->symbol __tmp115174))))))
    (define keyword->symbol
      (lambda (_%sym105943%_)
        (if (keyword? _%sym105943%_)
            (let ((_%sym105947%_ _%sym105943%_))
              (__keyword->symbol _%sym105947%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym105943%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr109269%_ _%enc109270%_)
        (let* ((_%bstr109273%_ _%bstr109269%_) (_%enc109281%_ _%enc109270%_))
          (if (eq? _%enc109281%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr109273%_))
              (let* ((_%in109290%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc109281%_
                                   (cons 'init: (cons _%bstr109273%_ '()))))))
                     (_%len109292%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr109273%_)))
                     (_%out109294%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len109292%_)))
                     (_%n109296%_
                      (read-substring
                       _%out109294%_
                       '0
                       _%len109292%_
                       _%in109290%_)))
                (string-shrink! _%out109294%_ _%n109296%_)
                _%out109294%_)))))
    (define __bytes->string__0
      (lambda (_%bstr109302%_)
        (let ((_%enc109304%_ 'UTF-8))
          (__bytes->string__% _%bstr109302%_ _%enc109304%_))))
    (define __bytes->string
      (lambda _g115175_
        (let ((_g115176_ (let () (declare (not safe)) (##length _g115175_))))
          (cond ((let () (declare (not safe)) (##fx= _g115176_ 1))
                 (apply __bytes->string__0 _g115175_))
                ((let () (declare (not safe)) (##fx= _g115176_ 2))
                 (apply __bytes->string__% _g115175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g115175_))))))
    (define bytes->string__%
      (lambda (_%bstr106078%_ _%enc106079%_)
        (if (u8vector? _%bstr106078%_)
            (let ((_%bstr106083%_ _%bstr106078%_))
              (if (symbol? _%enc106079%_)
                  (let ((_%enc106093%_ _%enc106079%_))
                    (__bytes->string__% _%bstr106083%_ _%enc106093%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106079%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr106078%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr106106%_)
        (let ((_%enc106108%_ 'UTF-8))
          (bytes->string__% _%bstr106106%_ _%enc106108%_))))
    (define bytes->string
      (lambda _g115177_
        (let ((_g115178_ (let () (declare (not safe)) (##length _g115177_))))
          (cond ((let () (declare (not safe)) (##fx= _g115178_ 1))
                 (apply bytes->string__0 _g115177_))
                ((let () (declare (not safe)) (##fx= _g115178_ 2))
                 (apply bytes->string__% _g115177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g115177_))))))
    (define __string->bytes__%
      (lambda (_%str109187%_ _%enc109188%_)
        (let* ((_%str109191%_ _%str109187%_) (_%enc109199%_ _%enc109188%_))
          (if (eq? _%enc109199%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str109191%_))
              (let* ((_%str109208%_ _%str109191%_)
                     (_%start109211%_ '0)
                     (_%end109214%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str109191%_)))
                     (_%enc109217%_ _%enc109199%_)
                     (_%str109222%_ _%str109208%_))
                (if (nonnegative-fixnum? _%start109211%_)
                    (let ((_%start109238%_ _%start109211%_))
                      (if (nonnegative-fixnum? _%end109214%_)
                          (let ((_%end109248%_ _%end109214%_))
                            (__substring->bytes__%
                             _%str109222%_
                             _%start109238%_
                             _%end109248%_
                             _%enc109217%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end109214%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start109211%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str109261%_)
        (let ((_%enc109263%_ 'UTF-8))
          (__string->bytes__% _%str109261%_ _%enc109263%_))))
    (define __string->bytes
      (lambda _g115179_
        (let ((_g115180_ (let () (declare (not safe)) (##length _g115179_))))
          (cond ((let () (declare (not safe)) (##fx= _g115180_ 1))
                 (apply __string->bytes__0 _g115179_))
                ((let () (declare (not safe)) (##fx= _g115180_ 2))
                 (apply __string->bytes__% _g115179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g115179_))))))
    (define string->bytes__%
      (lambda (_%str106234%_ _%enc106235%_)
        (if (string? _%str106234%_)
            (let ((_%str106239%_ _%str106234%_))
              (if (symbol? _%enc106235%_)
                  (let ((_%enc106249%_ _%enc106235%_))
                    (__string->bytes__% _%str106239%_ _%enc106249%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106235%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str106234%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str106262%_)
        (let ((_%enc106264%_ 'UTF-8))
          (string->bytes__% _%str106262%_ _%enc106264%_))))
    (define string->bytes
      (lambda _g115181_
        (let ((_g115182_ (let () (declare (not safe)) (##length _g115181_))))
          (cond ((let () (declare (not safe)) (##fx= _g115182_ 1))
                 (apply string->bytes__0 _g115181_))
                ((let () (declare (not safe)) (##fx= _g115182_ 2))
                 (apply string->bytes__% _g115181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g115181_))))))
    (define __substring->bytes__%
      (lambda (_%str109139%_ _%start109140%_ _%end109141%_ _%enc109142%_)
        (let* ((_%str109145%_ _%str109139%_)
               (_%start109153%_ _%start109140%_)
               (_%end109161%_ _%end109141%_))
          (if (eq? _%enc109142%_ 'UTF-8)
              (string->utf8 _%str109145%_ _%start109153%_ _%end109161%_)
              (let ((_%out109170%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc109142%_ '())))))
                (write-substring
                 _%str109145%_
                 _%start109153%_
                 _%end109161%_
                 _%out109170%_)
                (get-output-u8vector _%out109170%_))))))
    (define __substring->bytes__0
      (lambda (_%str109175%_ _%start109176%_ _%end109177%_)
        (let ((_%enc109179%_ 'UTF-8))
          (__substring->bytes__%
           _%str109175%_
           _%start109176%_
           _%end109177%_
           _%enc109179%_))))
    (define __substring->bytes
      (lambda _g115183_
        (let ((_g115184_ (let () (declare (not safe)) (##length _g115183_))))
          (cond ((let () (declare (not safe)) (##fx= _g115184_ 3))
                 (apply __substring->bytes__0 _g115183_))
                ((let () (declare (not safe)) (##fx= _g115184_ 4))
                 (apply __substring->bytes__% _g115183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g115183_))))))
    (define substring->bytes__%
      (lambda (_%str106390%_ _%start106391%_ _%end106392%_ _%enc106393%_)
        (if (string? _%str106390%_)
            (let ((_%str106397%_ _%str106390%_))
              (if (nonnegative-fixnum? _%start106391%_)
                  (let ((_%start106407%_ _%start106391%_))
                    (if (nonnegative-fixnum? _%end106392%_)
                        (let ((_%end106417%_ _%end106392%_))
                          (__substring->bytes__%
                           _%str106397%_
                           _%start106407%_
                           _%end106417%_
                           _%enc106393%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end106392%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start106391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str106390%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str106430%_ _%start106431%_ _%end106432%_)
        (let ((_%enc106434%_ 'UTF-8))
          (substring->bytes__%
           _%str106430%_
           _%start106431%_
           _%end106432%_
           _%enc106434%_))))
    (define substring->bytes
      (lambda _g115185_
        (let ((_g115186_ (let () (declare (not safe)) (##length _g115185_))))
          (cond ((let () (declare (not safe)) (##fx= _g115186_ 3))
                 (apply substring->bytes__0 _g115185_))
                ((let () (declare (not safe)) (##fx= _g115186_ 4))
                 (apply substring->bytes__% _g115185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g115185_))))))
    (define __string-empty?
      (lambda (_%str109126%_)
        (let* ((_%str109129%_ _%str109126%_)
               (__tmp115187
                (let () (declare (not safe)) (##string-length _%str109129%_))))
          (declare (not safe))
          (##fxzero? __tmp115187))))
    (define string-empty?
      (lambda (_%str106561%_)
        (if (string? _%str106561%_)
            (let ((_%str106565%_ _%str106561%_))
              (__string-empty? _%str106565%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str106561%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str109066%_ _%char109067%_ _%start109068%_)
        (let* ((_%str109071%_ _%str109066%_)
               (_%char109079%_ _%char109067%_)
               (_%start109087%_ _%start109068%_)
               (_%len109096%_
                (let () (declare (not safe)) (##string-length _%str109071%_))))
          (let _%lp109098%_ ((_%k109100%_ _%start109087%_))
            (let ((_%k109102%_ _%k109100%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k109102%_ _%len109096%_))
                  (if (eq? _%char109079%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109071%_ _%k109102%_)))
                      _%k109102%_
                      (_%lp109098%_
                       (let () (declare (not safe)) (##fx+ _%k109102%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str109117%_ _%char109118%_)
        (let ((_%start109120%_ '0))
          (__string-index__% _%str109117%_ _%char109118%_ _%start109120%_))))
    (define __string-index
      (lambda _g115188_
        (let ((_g115189_ (let () (declare (not safe)) (##length _g115188_))))
          (cond ((let () (declare (not safe)) (##fx= _g115189_ 2))
                 (apply __string-index__0 _g115188_))
                ((let () (declare (not safe)) (##fx= _g115189_ 3))
                 (apply __string-index__% _g115188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g115188_))))))
    (define string-index__%
      (lambda (_%str106696%_ _%char106697%_ _%start106698%_)
        (if (string? _%str106696%_)
            (let ((_%str106702%_ _%str106696%_))
              (if (char? _%char106697%_)
                  (let ((_%char106712%_ _%char106697%_))
                    (if (nonnegative-fixnum? _%start106698%_)
                        (let ((_%start106722%_ _%start106698%_))
                          (__string-index__%
                           _%str106702%_
                           _%char106712%_
                           _%start106722%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start106698%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                     'contract:
                     'char?
                     'value:
                     _%char106697%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.21-706.24"
               'contract:
               'string?
               'value:
               _%str106696%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str106735%_ _%char106736%_)
        (let ((_%start106738%_ '0))
          (string-index__% _%str106735%_ _%char106736%_ _%start106738%_))))
    (define string-index
      (lambda _g115190_
        (let ((_g115191_ (let () (declare (not safe)) (##length _g115190_))))
          (cond ((let () (declare (not safe)) (##fx= _g115191_ 2))
                 (apply string-index__0 _g115190_))
                ((let () (declare (not safe)) (##fx= _g115191_ 3))
                 (apply string-index__% _g115190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g115190_))))))
    (define __string-rindex__%
      (lambda (_%str109008%_ _%char109009%_ _%start109010%_)
        (let* ((_%str109013%_ _%str109008%_)
               (_%char109021%_ _%char109009%_)
               (_%len109030%_
                (let () (declare (not safe)) (##string-length _%str109013%_)))
               (_%start109032%_
                (if (fixnum? _%start109010%_)
                    _%start109010%_
                    (let () (declare (not safe)) (##fx- _%len109030%_ '1)))))
          (let _%lp109035%_ ((_%k109037%_ _%start109032%_))
            (let ((_%k109039%_ _%k109037%_))
              (if (let () (declare (not safe)) (##fx>= _%k109039%_ '0))
                  (if (eq? _%char109021%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109013%_ _%k109039%_)))
                      _%k109039%_
                      (_%lp109035%_
                       (let () (declare (not safe)) (##fx- _%k109039%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str109056%_ _%char109057%_)
        (let ((_%start109059%_ '#f))
          (__string-rindex__% _%str109056%_ _%char109057%_ _%start109059%_))))
    (define __string-rindex
      (lambda _g115192_
        (let ((_g115193_ (let () (declare (not safe)) (##length _g115192_))))
          (cond ((let () (declare (not safe)) (##fx= _g115193_ 2))
                 (apply __string-rindex__0 _g115192_))
                ((let () (declare (not safe)) (##fx= _g115193_ 3))
                 (apply __string-rindex__% _g115192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g115192_))))))
    (define string-rindex__%
      (lambda (_%str106865%_ _%char106866%_ _%start106867%_)
        (if (string? _%str106865%_)
            (let ((_%str106871%_ _%str106865%_))
              (if (char? _%char106866%_)
                  (let ((_%char106881%_ _%char106866%_))
                    (__string-rindex__%
                     _%str106871%_
                     _%char106881%_
                     _%start106867%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                     'contract:
                     'char?
                     'value:
                     _%char106866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.22-717.25"
               'contract:
               'string?
               'value:
               _%str106865%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str106894%_ _%char106895%_)
        (let ((_%start106897%_ '#f))
          (string-rindex__% _%str106894%_ _%char106895%_ _%start106897%_))))
    (define string-rindex
      (lambda _g115194_
        (let ((_g115195_ (let () (declare (not safe)) (##length _g115194_))))
          (cond ((let () (declare (not safe)) (##fx= _g115195_ 2))
                 (apply string-rindex__0 _g115194_))
                ((let () (declare (not safe)) (##fx= _g115195_ 3))
                 (apply string-rindex__% _g115194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g115194_))))))
    (define __string-split
      (lambda (_%str108905%_ _%char108906%_)
        (let* ((_%str108909%_ _%str108905%_)
               (_%char108917%_ _%char108906%_)
               (_%len108926%_
                (let () (declare (not safe)) (##string-length _%str108909%_))))
          (let _%lp108928%_ ((_%start108930%_ '0) (_%r108931%_ '()))
            (let* ((_%start108934%_ _%start108930%_)
                   (_%$e108992%_
                    (let* ((_%str108947%_ _%str108909%_)
                           (_%char108950%_ _%char108917%_)
                           (_%start108953%_ _%start108934%_)
                           (_%str108958%_ _%str108947%_)
                           (_%char108972%_ _%char108950%_))
                      (if (nonnegative-fixnum? _%start108953%_)
                          (let ((_%start108982%_ _%start108953%_))
                            (__string-index__%
                             _%str108958%_
                             _%char108972%_
                             _%start108982%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108953%_)
                            '#!void)))))
              (if _%$e108992%_
                  ((lambda (_%end108995%_)
                     (let ((_%end108997%_ _%end108995%_))
                       (_%lp108928%_
                        (let () (declare (not safe)) (##fx+ _%end108997%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str108909%_
                                 _%start108934%_
                                 _%end108997%_))
                              _%r108931%_))))
                   _%$e108992%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108934%_ _%len108926%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108909%_
                                _%start108934%_
                                _%len108926%_)))
                       _%r108931%_)
                      (reverse! _%r108931%_))))))))
    (define string-split
      (lambda (_%str107023%_ _%char107024%_)
        (if (string? _%str107023%_)
            (let ((_%str107028%_ _%str107023%_))
              (if (char? _%char107024%_)
                  (let ((_%char107038%_ _%char107024%_))
                    (__string-split _%str107028%_ _%char107038%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char107024%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str107023%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108755%_ _%join108756%_)
        (letrec ((_%join-length108759%_
                  (lambda (_%strs108843%_ _%jlen108844%_)
                    (let _%lp108846%_ ((_%rest108848%_ _%strs108843%_)
                                       (_%len108849%_ '0))
                      (let* ((_%len108851%_ _%len108849%_)
                             (_%rest108859108867%_ _%rest108848%_)
                             (_%else108861108875%_ (lambda () '0))
                             (_%K108863108893%_
                              (lambda (_%rest108878%_ _%hd108879%_)
                                (if (string? _%hd108879%_)
                                    (let ((_%hd108881%_ _%hd108879%_))
                                      (if (pair? _%rest108878%_)
                                          (_%lp108846%_
                                           _%rest108878%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108881%_))
                                                _%jlen108844%_
                                                _%len108851%_))
                                          (let ((__tmp115196
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108881%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp115196
                                                   _%len108851%_))))
                                    (error '"expected string" _%hd108879%_)))))
                        (if (pair? _%rest108859108867%_)
                            (let ((_%hd108864108896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest108859108867%_)))
                                  (_%tl108865108898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest108859108867%_))))
                              (let* ((_%hd108901%_ _%hd108864108896%_)
                                     (_%rest108903%_ _%tl108865108898%_))
                                (_%K108863108893%_
                                 _%rest108903%_
                                 _%hd108901%_)))
                            (_%else108861108875%_)))))))
          (let* ((_%join108764%_
                  (if (char? _%join108756%_)
                      (let () (declare (not safe)) (##string _%join108756%_))
                      (if (string? _%join108756%_)
                          _%join108756%_
                          (error '"expected string or char" _%join108756%_))))
                 (_%jlen108766%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108764%_)))
                 (_%olen108768%_
                  (_%join-length108759%_ _%strs108755%_ _%jlen108766%_))
                 (_%ostr108770%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108768%_))))
            (let _%lp108773%_ ((_%rest108775%_ _%strs108755%_)
                               (_%k108776%_ '0))
              (let* ((_%k108779%_ _%k108776%_)
                     (_%rest108795108803%_ _%rest108775%_)
                     (_%else108797108811%_ (lambda () '""))
                     (_%K108799108831%_
                      (lambda (_%rest108814%_ _%hd108815%_)
                        (let* ((_%hd108817%_ _%hd108815%_)
                               (_%hdlen108829%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108817%_))))
                          (if (pair? _%rest108814%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108817%_
                                   '0
                                   _%hdlen108829%_
                                   _%ostr108770%_
                                   _%k108779%_))
                                (let ((__tmp115197
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108779%_ _%hdlen108829%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108764%_
                                   '0
                                   _%jlen108766%_
                                   _%ostr108770%_
                                   __tmp115197))
                                (_%lp108773%_
                                 _%rest108814%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108779%_
                                          _%hdlen108829%_
                                          _%jlen108766%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108817%_
                                   '0
                                   _%hdlen108829%_
                                   _%ostr108770%_
                                   _%k108779%_))
                                _%ostr108770%_))))))
                (if (pair? _%rest108795108803%_)
                    (let ((_%hd108800108834%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest108795108803%_)))
                          (_%tl108801108836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest108795108803%_))))
                      (let* ((_%hd108839%_ _%hd108800108834%_)
                             (_%rest108841%_ _%tl108801108836%_))
                        (_%K108799108831%_ _%rest108841%_ _%hd108839%_)))
                    (_%else108797108811%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108695%_ _%port108696%_ _%start108697%_ _%end108698%_)
        (let* ((_%bytes108701%_ _%bytes108695%_)
               (_%port108709%_ _%port108696%_)
               (_%start108717%_ _%start108697%_)
               (_%end108725%_ _%end108698%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108701%_
           _%start108717%_
           _%end108725%_
           _%port108709%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108737%_ _%port108738%_)
        (let* ((_%start108740%_ '0)
               (_%end108742%_ (u8vector-length _%bytes108737%_)))
          (__read-u8vector__%
           _%bytes108737%_
           _%port108738%_
           _%start108740%_
           _%end108742%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108744%_ _%port108745%_ _%start108746%_)
        (let ((_%end108748%_ (u8vector-length _%bytes108744%_)))
          (__read-u8vector__%
           _%bytes108744%_
           _%port108745%_
           _%start108746%_
           _%end108748%_))))
    (define __read-u8vector
      (lambda _g115198_
        (let ((_g115199_ (let () (declare (not safe)) (##length _g115198_))))
          (cond ((let () (declare (not safe)) (##fx= _g115199_ 2))
                 (apply __read-u8vector__0 _g115198_))
                ((let () (declare (not safe)) (##fx= _g115199_ 3))
                 (apply __read-u8vector__1 _g115198_))
                ((let () (declare (not safe)) (##fx= _g115199_ 4))
                 (apply __read-u8vector__% _g115198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g115198_))))))
    (define read-u8vector__%
      (lambda (_%bytes107169%_ _%port107170%_ _%start107171%_ _%end107172%_)
        (if (u8vector? _%bytes107169%_)
            (let ((_%bytes107176%_ _%bytes107169%_))
              (if (input-port? _%port107170%_)
                  (let ((_%port107186%_ _%port107170%_))
                    (if ((lambda (_%o107195%_)
                           (and (fixnum? _%o107195%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o107195%_ '0))
                                (let ((__tmp115200
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes107176%_))))
                                  (declare (not safe))
                                  (##fx< _%o107195%_ __tmp115200))))
                         _%start107171%_)
                        (let ((_%start107199%_ _%start107171%_))
                          (if ((lambda (_%o107208%_)
                                 (and (fixnum? _%o107208%_)
                                      (let ((__tmp115201
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes107176%_))))
                                        (declare (not safe))
                                        (##fx<= _%start107199%_
                                                _%o107208%_
                                                __tmp115201))))
                               _%end107172%_)
                              (let ((_%end107212%_ _%end107172%_))
                                (__read-u8vector__%
                                 _%bytes107176%_
                                 _%port107186%_
                                 _%start107199%_
                                 _%end107212%_))
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
                                 _%end107172%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start107171%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port107170%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@792.22-792.27"
               'contract:
               'u8vector?
               'value:
               _%bytes107169%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes107225%_ _%port107226%_)
        (let* ((_%start107228%_ '0)
               (_%end107230%_ (u8vector-length _%bytes107225%_)))
          (read-u8vector__%
           _%bytes107225%_
           _%port107226%_
           _%start107228%_
           _%end107230%_))))
    (define read-u8vector__1
      (lambda (_%bytes107232%_ _%port107233%_ _%start107234%_)
        (let ((_%end107236%_ (u8vector-length _%bytes107232%_)))
          (read-u8vector__%
           _%bytes107232%_
           _%port107233%_
           _%start107234%_
           _%end107236%_))))
    (define read-u8vector
      (lambda _g115202_
        (let ((_g115203_ (let () (declare (not safe)) (##length _g115202_))))
          (cond ((let () (declare (not safe)) (##fx= _g115203_ 2))
                 (apply read-u8vector__0 _g115202_))
                ((let () (declare (not safe)) (##fx= _g115203_ 3))
                 (apply read-u8vector__1 _g115202_))
                ((let () (declare (not safe)) (##fx= _g115203_ 4))
                 (apply read-u8vector__% _g115202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g115202_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108634%_ _%port108635%_ _%start108636%_ _%end108637%_)
        (let* ((_%bytes108640%_ _%bytes108634%_)
               (_%port108648%_ _%port108635%_)
               (_%start108656%_ _%start108636%_)
               (_%end108664%_ _%end108637%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108640%_
           _%start108656%_
           _%end108664%_
           _%port108648%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108676%_ _%port108677%_)
        (let* ((_%start108679%_ '0)
               (_%end108681%_ (u8vector-length _%bytes108676%_)))
          (__write-u8vector__%
           _%bytes108676%_
           _%port108677%_
           _%start108679%_
           _%end108681%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108683%_ _%port108684%_ _%start108685%_)
        (let ((_%end108687%_ (u8vector-length _%bytes108683%_)))
          (__write-u8vector__%
           _%bytes108683%_
           _%port108684%_
           _%start108685%_
           _%end108687%_))))
    (define __write-u8vector
      (lambda _g115204_
        (let ((_g115205_ (let () (declare (not safe)) (##length _g115204_))))
          (cond ((let () (declare (not safe)) (##fx= _g115205_ 2))
                 (apply __write-u8vector__0 _g115204_))
                ((let () (declare (not safe)) (##fx= _g115205_ 3))
                 (apply __write-u8vector__1 _g115204_))
                ((let () (declare (not safe)) (##fx= _g115205_ 4))
                 (apply __write-u8vector__% _g115204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g115204_))))))
    (define write-u8vector__%
      (lambda (_%bytes107364%_ _%port107365%_ _%start107366%_ _%end107367%_)
        (if (u8vector? _%bytes107364%_)
            (let ((_%bytes107371%_ _%bytes107364%_))
              (if (output-port? _%port107365%_)
                  (let* ((_%port107381%_ _%port107365%_)
                         (_%start107390%_ _%start107366%_))
                    (if ((lambda (_%o107398%_)
                           (and (fixnum? _%o107398%_)
                                (let ((__tmp115206
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes107371%_))))
                                  (declare (not safe))
                                  (##fx<= _%start107390%_
                                          _%o107398%_
                                          __tmp115206))))
                         _%end107367%_)
                        (let ((_%end107402%_ _%end107367%_))
                          (__write-u8vector__%
                           _%bytes107371%_
                           _%port107381%_
                           _%start107390%_
                           _%end107402%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end107367%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port107365%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@802.23-802.28"
               'contract:
               'u8vector?
               'value:
               _%bytes107364%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes107415%_ _%port107416%_)
        (let* ((_%start107418%_ '0)
               (_%end107420%_ (u8vector-length _%bytes107415%_)))
          (write-u8vector__%
           _%bytes107415%_
           _%port107416%_
           _%start107418%_
           _%end107420%_))))
    (define write-u8vector__1
      (lambda (_%bytes107422%_ _%port107423%_ _%start107424%_)
        (let ((_%end107426%_ (u8vector-length _%bytes107422%_)))
          (write-u8vector__%
           _%bytes107422%_
           _%port107423%_
           _%start107424%_
           _%end107426%_))))
    (define write-u8vector
      (lambda _g115207_
        (let ((_g115208_ (let () (declare (not safe)) (##length _g115207_))))
          (cond ((let () (declare (not safe)) (##fx= _g115208_ 2))
                 (apply write-u8vector__0 _g115207_))
                ((let () (declare (not safe)) (##fx= _g115208_ 3))
                 (apply write-u8vector__1 _g115207_))
                ((let () (declare (not safe)) (##fx= _g115208_ 4))
                 (apply write-u8vector__% _g115207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g115207_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag108602%_
               _%dbg-exprs108603%_
               _%dbg-thunks108604%_
               _%expr108605%_
               _%thunk108606%_)
        (letrec ((_%o108608%_ (current-output-port))
                 (_%e108609%_ (current-error-port))
                 (_%p108610%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f108611%_
                  (lambda ()
                    (force-output _%o108608%_)
                    (force-output _%e108609%_)))
                 (_%d108612%_
                  (lambda (_%x108619%_) (display _%x108619%_ _%e108609%_)))
                 (_%w108613%_
                  (lambda (_%x108621%_) (_%p108610%_ _%x108621%_ _%e108609%_)))
                 (_%n108614%_ (lambda () (newline _%e108609%_)))
                 (_%v108615%_
                  (lambda (_%l108624%_)
                    (for-each
                     (lambda (_%x108626%_)
                       (_%d108612%_ '" ")
                       (_%w108613%_ _%x108626%_))
                     _%l108624%_)
                    (_%n108614%_)))
                 (_%x108616%_
                  (lambda (_%expr108628%_ _%thunk108629%_)
                    (_%f108611%_)
                    (_%d108612%_ '"  ")
                    (_%w108613%_ _%expr108628%_)
                    (_%d108612%_ '" =>")
                    (call-with-values
                     _%thunk108629%_
                     (lambda _%x108631%_
                       (_%v108615%_ _%x108631%_)
                       (_%f108611%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x108631%_)))))))
          (if _%tag108602%_
              (begin
                (if (eq? _%tag108602%_ '#!void)
                    '#!void
                    (begin
                      (_%f108611%_)
                      (_%d108612%_ _%tag108602%_)
                      (_%n108614%_)))
                (for-each _%x108616%_ _%dbg-exprs108603%_ _%dbg-thunks108604%_)
                (if _%thunk108606%_
                    (_%x108616%_ _%expr108605%_ _%thunk108606%_)
                    '#!void))
              (if _%thunk108606%_ (_%thunk108606%_) '#!void)))))))
