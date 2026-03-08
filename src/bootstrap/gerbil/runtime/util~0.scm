(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1773009258)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args112329%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args112329%_))
          (newline))))
    (define display*
      (lambda _%args112326%_
        (let () (declare (not safe)) (##for-each display _%args112326%_))))
    (define __file-newer?
      (lambda (_%file1112117%_ _%file2112118%_)
        (let* ((_%file1112121%_ _%file1112117%_)
               (_%file2112129%_ _%file2112118%_))
          (letrec ((_%__modification-time112273%_
                    (lambda (_%file112314%_)
                      (let* ((_%file112317%_ _%file112314%_)
                             (__tmp115105
                              (let ((__tmp115106
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file112317%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp115106))))
                        (declare (not safe))
                        (##time->seconds __tmp115105))))
                   (_%modification-time112274%_
                    (lambda (_%file112302%_)
                      (let ((_%file112305%_ _%file112302%_))
                        (_%__modification-time112273%_ _%file112305%_)))))
            (let ((__tmp115108
                   (let* ((_%file112276%_ _%file1112121%_)
                          (_%file112280%_ _%file112276%_))
                     (_%__modification-time112273%_ _%file112280%_)))
                  (__tmp115107
                   (let* ((_%file112289%_ _%file2112129%_)
                          (_%file112293%_ _%file112289%_))
                     (_%__modification-time112273%_ _%file112293%_))))
              (declare (not safe))
              (##fl> __tmp115108 __tmp115107))))))
    (define file-newer?
      (lambda (_%file1101703%_ _%file2101704%_)
        (if (string? _%file1101703%_)
            (let ((_%file1101708%_ _%file1101703%_))
              (if (string? _%file2101704%_)
                  (let ((_%file2101718%_ _%file2101704%_))
                    (__file-newer? _%file1101708%_ _%file2101718%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2101704%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1101703%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir111837%_ _%perms111838%_)
        (let* ((_%dir111841%_ _%dir111837%_) (_%perms111849%_ _%perms111838%_))
          (letrec ((_%__create1111993%_
                    (lambda (_%path112092%_)
                      (let ((_%path112095%_ _%path112092%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path112095%_))
                            (if (eq? (file-type _%path112095%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path112095%_))
                            (if _%perms111849%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path112095%_
                                             (cons 'permissions:
                                                   (cons _%perms111849%_
                                                         '())))))
                                (create-directory _%path112095%_))))))
                   (_%create1111994%_
                    (lambda (_%path112080%_)
                      (let ((_%path112083%_ _%path112080%_))
                        (_%__create1111993%_ _%path112083%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir111841%_))
                '#!void
                (let _%lp111996%_ ((_%start111998%_ '0))
                  (let ((_%$e112045%_
                         (let* ((_%str112000%_ _%dir111841%_)
                                (_%char112003%_ '#\/)
                                (_%start112006%_ _%start111998%_)
                                (_%str112011%_ _%str112000%_)
                                (_%char112025%_ _%char112003%_))
                           (if (nonnegative-fixnum? _%start112006%_)
                               (let ((_%start112035%_ _%start112006%_))
                                 (__string-index__%
                                  _%str112011%_
                                  _%char112025%_
                                  _%start112035%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start112006%_)
                                 '#!void)))))
                    (if _%$e112045%_
                        ((lambda (_%x112048%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x112048%_ '0))
                               (let* ((_%path112050%_
                                       (substring
                                        _%dir111841%_
                                        '0
                                        _%x112048%_))
                                      (_%path112054%_ _%path112050%_))
                                 (_%__create1111993%_ _%path112054%_))
                               '#!void)
                           (_%lp111996%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x112048%_ '1))))
                         _%$e112045%_)
                        (let* ((_%path112066%_ _%dir111841%_)
                               (_%path112070%_ _%path112066%_))
                          (_%__create1111993%_ _%path112070%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir112110%_)
        (let ((_%perms112112%_ '493))
          (__create-directory*__% _%dir112110%_ _%perms112112%_))))
    (define __create-directory*
      (lambda _g115109_
        (let ((_g115110_ (let () (declare (not safe)) (##length _g115109_))))
          (cond ((let () (declare (not safe)) (##fx= _g115110_ 1))
                 (apply __create-directory*__0 _g115109_))
                ((let () (declare (not safe)) (##fx= _g115110_ 2))
                 (apply __create-directory*__% _g115109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g115109_))))))
    (define create-directory*__%
      (lambda (_%dir101849%_ _%perms101850%_)
        (if (string? _%dir101849%_)
            (let ((_%dir101854%_ _%dir101849%_))
              (if (fixnum? _%perms101850%_)
                  (let ((_%perms101864%_ _%perms101850%_))
                    (__create-directory*__% _%dir101854%_ _%perms101864%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms101850%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir101849%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir101877%_)
        (let ((_%perms101879%_ '493))
          (create-directory*__% _%dir101877%_ _%perms101879%_))))
    (define create-directory*
      (lambda _g115111_
        (let ((_g115112_ (let () (declare (not safe)) (##length _g115111_))))
          (cond ((let () (declare (not safe)) (##fx= _g115112_ 1))
                 (apply create-directory*__0 _g115111_))
                ((let () (declare (not safe)) (##fx= _g115112_ 2))
                 (apply create-directory*__% _g115111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g115111_))))))
    (define __move-file__%
      (lambda (_%src111780%_ _%dest111781%_ _%replace?111782%_)
        (let* ((_%src111785%_ _%src111780%_)
               (_%dest111793%_ _%dest111781%_)
               (_%replace?111801%_ _%replace?111782%_))
          (letrec ((_%force-move-it111810%_
                    (lambda ()
                      (let ((_%tmp111816%_
                             (if _%replace?111801%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest111793%_))
                                     (let ((__tmp115113
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest111793%_
                                        '"."
                                        __tmp115113))
                                     '#f)
                                 '#f)))
                        (if _%tmp111816%_
                            (rename-file _%dest111793%_ _%tmp111816%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e111818%_)
                           (if _%tmp111816%_
                               (rename-file _%tmp111816%_ _%dest111793%_ '#t)
                               '#!void)
                           (raise _%e111818%_))
                         (lambda ()
                           (let ((_%fi111821%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src111785%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi111821%_))
                                      'symbolic-link)
                                 (let ((__tmp115114
                                        (path-normalize _%src111785%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp115114
                                    _%dest111793%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src111785%_
                                    _%dest111793%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src111785%_))
                           (if _%tmp111816%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp111816%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e111812%_)
               (if (let () (declare (not safe)) (##file-exists? _%src111785%_))
                   (_%force-move-it111810%_)
                   (raise _%e111812%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src111785%_
                  _%dest111793%_
                  _%replace?111801%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src111827%_ _%dest111828%_)
        (let ((_%replace?111830%_ '#t))
          (__move-file__% _%src111827%_ _%dest111828%_ _%replace?111830%_))))
    (define __move-file
      (lambda _g115115_
        (let ((_g115116_ (let () (declare (not safe)) (##length _g115115_))))
          (cond ((let () (declare (not safe)) (##fx= _g115116_ 2))
                 (apply __move-file__0 _g115115_))
                ((let () (declare (not safe)) (##fx= _g115116_ 3))
                 (apply __move-file__% _g115115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g115115_))))))
    (define move-file__%
      (lambda (_%src102005%_ _%dest102006%_ _%replace?102007%_)
        (if (string? _%src102005%_)
            (let ((_%src102011%_ _%src102005%_))
              (if (string? _%dest102006%_)
                  (let ((_%dest102021%_ _%dest102006%_))
                    (if (boolean? _%replace?102007%_)
                        (let ((_%replace?102031%_ _%replace?102007%_))
                          (__move-file__%
                           _%src102011%_
                           _%dest102021%_
                           _%replace?102031%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?102007%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest102006%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src102005%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src102044%_ _%dest102045%_)
        (let ((_%replace?102047%_ '#t))
          (move-file__% _%src102044%_ _%dest102045%_ _%replace?102047%_))))
    (define move-file
      (lambda _g115117_
        (let ((_g115118_ (let () (declare (not safe)) (##length _g115117_))))
          (cond ((let () (declare (not safe)) (##fx= _g115118_ 2))
                 (apply move-file__0 _g115117_))
                ((let () (declare (not safe)) (##fx= _g115118_ 3))
                 (apply move-file__% _g115117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g115117_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore111776%_ '#t))
    (define true? (lambda (_%obj111773%_) (eq? _%obj111773%_ '#t)))
    (define false (lambda _%ignore111770%_ '#f))
    (define void (lambda _%ignore111767%_ '#!void))
    (define void? (lambda (_%obj111764%_) (eq? _%obj111764%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj111761%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj111761%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj111758%_) (eq? _%obj111758%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj111755%_) (eq? _%obj111755%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj111752%_) (eq? _%obj111752%_ '#!optional)))
    (define immediate?
      (lambda (_%obj111749%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj111749%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj111746%_)
        (if (fixnum? _%obj111746%_)
            (let () (declare (not safe)) (##fx>= _%obj111746%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj111740%_)
        (let ((_%$e111743%_ (pair? _%obj111740%_)))
          (if _%$e111743%_ _%$e111743%_ (null? _%obj111740%_)))))
    (define values-count
      (lambda (_%obj111737%_)
        (if (let () (declare (not safe)) (##values? _%obj111737%_))
            (let () (declare (not safe)) (##values-length _%obj111737%_))
            '1)))
    (define __values-ref
      (lambda (_%obj111724%_ _%k111725%_)
        (let ((_%k111728%_ _%k111725%_))
          (if (let () (declare (not safe)) (##values? _%obj111724%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj111724%_ _%k111728%_))
              _%obj111724%_))))
    (define values-ref
      (lambda (_%obj102173%_ _%k102174%_)
        (if (fixnum? _%k102174%_)
            (let ((_%k102178%_ _%k102174%_))
              (__values-ref _%obj102173%_ _%k102178%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k102174%_)
              '#!void))))
    (define values->list
      (lambda (_%obj111721%_)
        (if (let () (declare (not safe)) (##values? _%obj111721%_))
            (let () (declare (not safe)) (##values->list _%obj111721%_))
            (list _%obj111721%_))))
    (define __foldl1
      (lambda (_%f111669%_ _%iv111670%_ _%lst111671%_)
        (let ((_%f111674%_ _%f111669%_))
          (let _%lp111683%_ ((_%rest111685%_ _%lst111671%_)
                             (_%r111686%_ _%iv111670%_))
            (let* ((_%rest111687111695%_ _%rest111685%_)
                   (_%else111689111703%_ (lambda () _%r111686%_))
                   (_%K111691111709%_
                    (lambda (_%rest111706%_ _%x111707%_)
                      (_%lp111683%_
                       _%rest111706%_
                       (let ()
                         (declare (not safe))
                         (_%f111674%_ _%x111707%_ _%r111686%_))))))
              (if (pair? _%rest111687111695%_)
                  (let ((_%hd111692111712%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111687111695%_)))
                        (_%tl111693111714%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111687111695%_))))
                    (let* ((_%x111717%_ _%hd111692111712%_)
                           (_%rest111719%_ _%tl111693111714%_))
                      (_%K111691111709%_ _%rest111719%_ _%x111717%_)))
                  (_%else111689111703%_)))))))
    (define foldl1
      (lambda (_%f102308%_ _%iv102309%_ _%lst102310%_)
        (if (procedure? _%f102308%_)
            (let ((_%f102314%_ _%f102308%_))
              (__foldl1 _%f102314%_ _%iv102309%_ _%lst102310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f102308%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f111582%_ _%iv111583%_ _%lst1111584%_ _%lst2111585%_)
        (let ((_%f111588%_ _%f111582%_))
          (let _%lp111597%_ ((_%rest1111599%_ _%lst1111584%_)
                             (_%rest2111600%_ _%lst2111585%_)
                             (_%r111601%_ _%iv111583%_))
            (let* ((_%rest1111602111610%_ _%rest1111599%_)
                   (_%else111604111618%_ (lambda () _%r111601%_))
                   (_%K111606111657%_
                    (lambda (_%rest1111621%_ _%x1111622%_)
                      (let* ((_%rest2111623111631%_ _%rest2111600%_)
                             (_%else111625111639%_ (lambda () _%r111601%_))
                             (_%K111627111645%_
                              (lambda (_%rest2111642%_ _%x2111643%_)
                                (_%lp111597%_
                                 _%rest1111621%_
                                 _%rest2111642%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f111588%_
                                    _%x1111622%_
                                    _%x2111643%_
                                    _%r111601%_))))))
                        (if (pair? _%rest2111623111631%_)
                            (let ((_%hd111628111648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111623111631%_)))
                                  (_%tl111629111650%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111623111631%_))))
                              (let* ((_%x2111653%_ _%hd111628111648%_)
                                     (_%rest2111655%_ _%tl111629111650%_))
                                (_%K111627111645%_
                                 _%rest2111655%_
                                 _%x2111653%_)))
                            (_%else111625111639%_))))))
              (if (pair? _%rest1111602111610%_)
                  (let ((_%hd111607111660%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111602111610%_)))
                        (_%tl111608111662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111602111610%_))))
                    (let* ((_%x1111665%_ _%hd111607111660%_)
                           (_%rest1111667%_ _%tl111608111662%_))
                      (_%K111606111657%_ _%rest1111667%_ _%x1111665%_)))
                  (_%else111604111618%_)))))))
    (define foldl2
      (lambda (_%f102444%_ _%iv102445%_ _%lst1102446%_ _%lst2102447%_)
        (if (procedure? _%f102444%_)
            (let ((_%f102451%_ _%f102444%_))
              (__foldl2
               _%f102451%_
               _%iv102445%_
               _%lst1102446%_
               _%lst2102447%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f102444%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f111515%_ _%iv111516%_ _%lst111517%_)
        (let* ((_%f111519%_ _%f111515%_)
               (_%iv111522%_ _%iv111516%_)
               (_%lst111525%_ _%lst111517%_))
          (if (procedure? _%f111519%_)
              (let ((_%f111530%_ _%f111519%_))
                (__foldl1 _%f111530%_ _%iv111522%_ _%lst111525%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111519%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f111543%_ _%iv111544%_ _%lst1111545%_ _%lst2111546%_)
        (let* ((_%f111548%_ _%f111543%_)
               (_%iv111551%_ _%iv111544%_)
               (_%lst1111554%_ _%lst1111545%_)
               (_%lst2111557%_ _%lst2111546%_))
          (if (procedure? _%f111548%_)
              (let ((_%f111562%_ _%f111548%_))
                (__foldl2
                 _%f111562%_
                 _%iv111551%_
                 _%lst1111554%_
                 _%lst2111557%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111548%_)
                '#!void)))))
    (define foldl
      (lambda _g115119_
        (let ((_g115120_ (let () (declare (not safe)) (##length _g115119_))))
          (cond ((let () (declare (not safe)) (##fx= _g115120_ 3))
                 (apply foldl__0 _g115119_))
                ((let () (declare (not safe)) (##fx= _g115120_ 4))
                 (apply foldl__1 _g115119_))
                ((let () (declare (not safe)) (##fx>= _g115120_ 4))
                 (apply foldl* _g115119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g115119_))))))
    (define __foldl*
      (lambda (_%f111446%_ _%iv111447%_ . _%rest111448%_)
        (let ((_%f111451%_ _%f111446%_))
          (let _%recur111460%_ ((_%iv111462%_ _%iv111447%_)
                                (_%rest111463%_ _%rest111448%_))
            (if (let* ((_%f111465%_ pair?)
                       (_%lst111468%_ _%rest111463%_)
                       (_%f111473%_ _%f111465%_))
                  (__andmap1 _%f111473%_ _%lst111468%_))
                (_%recur111460%_
                 (let ((__tmp115121
                        (let* ((_%f111492%_
                                (lambda (_%xs111489%_ _%r111490%_)
                                  (cons (car _%xs111489%_) _%r111490%_)))
                               (_%iv111495%_ (list _%iv111462%_))
                               (_%lst111498%_ _%rest111463%_)
                               (_%f111503%_ _%f111492%_))
                          (__foldr1 _%f111503%_ _%iv111495%_ _%lst111498%_))))
                   (declare (not safe))
                   (##apply _%f111451%_ __tmp115121))
                 (map cdr _%rest111463%_))
                _%iv111462%_)))))
    (define foldl*
      (lambda (_%f102581%_ _%iv102582%_ . _%rest102583%_)
        (if (procedure? _%f102581%_)
            (let ((_%f102587%_ _%f102581%_))
              (declare (not safe))
              (##apply __foldl* _%f102587%_ _%iv102582%_ _%rest102583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f102581%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f111395%_ _%iv111396%_ _%lst111397%_)
        (let ((_%f111400%_ _%f111395%_))
          (let _%recur111409%_ ((_%rest111411%_ _%lst111397%_))
            (let* ((_%rest111412111420%_ _%rest111411%_)
                   (_%else111414111428%_ (lambda () _%iv111396%_))
                   (_%K111416111434%_
                    (lambda (_%rest111431%_ _%x111432%_)
                      (let ((__tmp115122 (_%recur111409%_ _%rest111431%_)))
                        (declare (not safe))
                        (_%f111400%_ _%x111432%_ __tmp115122)))))
              (if (pair? _%rest111412111420%_)
                  (let ((_%hd111417111437%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111412111420%_)))
                        (_%tl111418111439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111412111420%_))))
                    (let* ((_%x111442%_ _%hd111417111437%_)
                           (_%rest111444%_ _%tl111418111439%_))
                      (_%K111416111434%_ _%rest111444%_ _%x111442%_)))
                  (_%else111414111428%_)))))))
    (define foldr1
      (lambda (_%f102717%_ _%iv102718%_ _%lst102719%_)
        (if (procedure? _%f102717%_)
            (let ((_%f102723%_ _%f102717%_))
              (__foldr1 _%f102723%_ _%iv102718%_ _%lst102719%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f102717%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f111309%_ _%iv111310%_ _%lst1111311%_ _%lst2111312%_)
        (let ((_%f111315%_ _%f111309%_))
          (let _%recur111324%_ ((_%rest1111326%_ _%lst1111311%_)
                                (_%rest2111327%_ _%lst2111312%_))
            (let* ((_%rest1111328111336%_ _%rest1111326%_)
                   (_%else111330111344%_ (lambda () _%iv111310%_))
                   (_%K111332111383%_
                    (lambda (_%rest1111347%_ _%x1111348%_)
                      (let* ((_%rest2111349111357%_ _%rest2111327%_)
                             (_%else111351111365%_ (lambda () _%iv111310%_))
                             (_%K111353111371%_
                              (lambda (_%rest2111368%_ _%x2111369%_)
                                (let ((__tmp115123
                                       (_%recur111324%_
                                        _%rest1111347%_
                                        _%rest2111368%_)))
                                  (declare (not safe))
                                  (_%f111315%_
                                   _%x1111348%_
                                   _%x2111369%_
                                   __tmp115123)))))
                        (if (pair? _%rest2111349111357%_)
                            (let ((_%hd111354111374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111349111357%_)))
                                  (_%tl111355111376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111349111357%_))))
                              (let* ((_%x2111379%_ _%hd111354111374%_)
                                     (_%rest2111381%_ _%tl111355111376%_))
                                (_%K111353111371%_
                                 _%rest2111381%_
                                 _%x2111379%_)))
                            (_%else111351111365%_))))))
              (if (pair? _%rest1111328111336%_)
                  (let ((_%hd111333111386%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1111328111336%_)))
                        (_%tl111334111388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1111328111336%_))))
                    (let* ((_%x1111391%_ _%hd111333111386%_)
                           (_%rest1111393%_ _%tl111334111388%_))
                      (_%K111332111383%_ _%rest1111393%_ _%x1111391%_)))
                  (_%else111330111344%_)))))))
    (define foldr2
      (lambda (_%f102853%_ _%iv102854%_ _%lst1102855%_ _%lst2102856%_)
        (if (procedure? _%f102853%_)
            (let ((_%f102860%_ _%f102853%_))
              (__foldr2
               _%f102860%_
               _%iv102854%_
               _%lst1102855%_
               _%lst2102856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f102853%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f111242%_ _%iv111243%_ _%lst111244%_)
        (let* ((_%f111246%_ _%f111242%_)
               (_%iv111249%_ _%iv111243%_)
               (_%lst111252%_ _%lst111244%_))
          (if (procedure? _%f111246%_)
              (let ((_%f111257%_ _%f111246%_))
                (__foldr1 _%f111257%_ _%iv111249%_ _%lst111252%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111246%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f111270%_ _%iv111271%_ _%lst1111272%_ _%lst2111273%_)
        (let* ((_%f111275%_ _%f111270%_)
               (_%iv111278%_ _%iv111271%_)
               (_%lst1111281%_ _%lst1111272%_)
               (_%lst2111284%_ _%lst2111273%_))
          (if (procedure? _%f111275%_)
              (let ((_%f111289%_ _%f111275%_))
                (__foldr2
                 _%f111289%_
                 _%iv111278%_
                 _%lst1111281%_
                 _%lst2111284%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111275%_)
                '#!void)))))
    (define foldr
      (lambda _g115124_
        (let ((_g115125_ (let () (declare (not safe)) (##length _g115124_))))
          (cond ((let () (declare (not safe)) (##fx= _g115125_ 3))
                 (apply foldr__0 _g115124_))
                ((let () (declare (not safe)) (##fx= _g115125_ 4))
                 (apply foldr__1 _g115124_))
                ((let () (declare (not safe)) (##fx>= _g115125_ 4))
                 (apply foldr* _g115124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g115124_))))))
    (define __foldr*
      (lambda (_%f111174%_ _%iv111175%_ . _%rest111176%_)
        (let ((_%f111179%_ _%f111174%_))
          (let _%recur111188%_ ((_%rest111190%_ _%rest111176%_))
            (if (let* ((_%f111192%_ pair?)
                       (_%lst111195%_ _%rest111190%_)
                       (_%f111200%_ _%f111192%_))
                  (__andmap1 _%f111200%_ _%lst111195%_))
                (let ((__tmp115126
                       (let* ((_%f111219%_
                               (lambda (_%xs111216%_ _%r111217%_)
                                 (cons (car _%xs111216%_) _%r111217%_)))
                              (_%iv111222%_
                               (list (_%recur111188%_
                                      (map cdr _%rest111190%_))))
                              (_%lst111225%_ _%rest111190%_)
                              (_%f111230%_ _%f111219%_))
                         (__foldr1 _%f111230%_ _%iv111222%_ _%lst111225%_))))
                  (declare (not safe))
                  (##apply _%f111179%_ __tmp115126))
                _%iv111175%_)))))
    (define foldr*
      (lambda (_%f102990%_ _%iv102991%_ . _%rest102992%_)
        (if (procedure? _%f102990%_)
            (let ((_%f102996%_ _%f102990%_))
              (declare (not safe))
              (##apply __foldr* _%f102996%_ _%iv102991%_ _%rest102992%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f102990%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l111061%_)
        (let* ((_%l111062111075%_ _%l111061%_)
               (_%E111066111079%_
                (lambda ()
                  (error '"No clause matching"
                         _%l111062111075%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K111071111164%_
                 (lambda (_%r111162%_) (remove-nulls! _%r111162%_)))
                (_%K111068111151%_
                 (lambda (_%r111091%_)
                   (let _%loop111093%_ ((_%l111095%_ _%l111061%_)
                                        (_%r111096%_ _%r111091%_))
                     (let* ((_%r111097111110%_ _%r111096%_)
                            (_%E111101111114%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r111097111110%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K111106111141%_
                              (lambda (_%rr111139%_)
                                (let ((__tmp115128 _%l111095%_)
                                      (__tmp115127
                                       (remove-nulls! _%rr111139%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp115128 __tmp115127))))
                             (_%K111103111128%_
                              (lambda (_%rr111126%_)
                                (_%loop111093%_ _%r111096%_ _%rr111126%_)))
                             (_%K111102111119%_ (lambda () '#!void)))
                         (if (pair? _%r111097111110%_)
                             (let ((_%tl111108111146%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r111097111110%_)))
                                   (_%hd111107111144%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r111097111110%_))))
                               (if (null? _%hd111107111144%_)
                                   (let ((_%rr111149%_ _%tl111108111146%_))
                                     (_%K111106111141%_ _%rr111149%_))
                                   (let ((_%rr111134%_ _%tl111108111146%_))
                                     (_%K111103111128%_ _%rr111134%_))))
                             '#!void))))
                   _%l111061%_))
                (_%K111067111084%_ (lambda () _%l111061%_)))
            (if (pair? _%l111062111075%_)
                (let ((_%tl111073111169%_
                       (let () (declare (not safe)) (##cdr _%l111062111075%_)))
                      (_%hd111072111167%_
                       (let ()
                         (declare (not safe))
                         (##car _%l111062111075%_))))
                  (if (null? _%hd111072111167%_)
                      (let ((_%r111172%_ _%tl111073111169%_))
                        (remove-nulls! _%r111172%_))
                      (let ((_%r111157%_ _%tl111073111169%_))
                        (_%K111068111151%_ _%r111157%_))))
                (_%K111067111084%_))))))
    (define append1!
      (lambda (_%l111046%_ _%x111047%_)
        (let ((_%l2111050%_ (cons _%x111047%_ '())))
          (if (pair? _%l111046%_)
              (let ((_%l111052%_ _%l111046%_))
                (let ((__tmp115129
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l111052%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp115129 _%l2111050%_))
                _%l111052%_)
              _%l2111050%_))))
    (define __append-reverse-until
      (lambda (_%pred110988%_ _%rhead110989%_ _%tail110990%_)
        (let ((_%pred110993%_ _%pred110988%_))
          (let _%loop111002%_ ((_%rhead111004%_ _%rhead110989%_)
                               (_%tail111005%_ _%tail110990%_))
            (let* ((_%rhead111007111016%_ _%rhead111004%_)
                   (_%E111010111020%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead111007111016%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K111014111043%_ (lambda () (values '() _%tail111005%_)))
                    (_%K111011111027%_
                     (lambda (_%r111024%_ _%a111025%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred110993%_ _%a111025%_))
                           (values _%rhead111004%_ _%tail111005%_)
                           (_%loop111002%_
                            _%r111024%_
                            (cons _%a111025%_ _%tail111005%_))))))
                (let ((_%try-match111009111039%_
                       (lambda ()
                         (if (pair? _%rhead111007111016%_)
                             (let ((_%tl111013111032%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead111007111016%_)))
                                   (_%hd111012111030%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead111007111016%_))))
                               (let ((_%a111035%_ _%hd111012111030%_)
                                     (_%r111037%_ _%tl111013111032%_))
                                 (_%K111011111027%_ _%r111037%_ _%a111035%_)))
                             (_%E111010111020%_)))))
                  (if (null? _%rhead111007111016%_)
                      (_%K111014111043%_)
                      (_%try-match111009111039%_)))))))))
    (define append-reverse-until
      (lambda (_%pred103126%_ _%rhead103127%_ _%tail103128%_)
        (if (procedure? _%pred103126%_)
            (let ((_%pred103132%_ _%pred103126%_))
              (__append-reverse-until
               _%pred103132%_
               _%rhead103127%_
               _%tail103128%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred103126%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f110937%_ _%lst110938%_)
        (let ((_%f110941%_ _%f110937%_))
          (let _%lp110950%_ ((_%rest110952%_ _%lst110938%_))
            (let* ((_%rest110954110962%_ _%rest110952%_)
                   (_%else110956110970%_ (lambda () '#t))
                   (_%K110958110976%_
                    (lambda (_%rest110973%_ _%x110974%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f110941%_ _%x110974%_))
                          (_%lp110950%_ _%rest110973%_)
                          '#f))))
              (if (pair? _%rest110954110962%_)
                  (let ((_%hd110959110979%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110954110962%_)))
                        (_%tl110960110981%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110954110962%_))))
                    (let* ((_%x110984%_ _%hd110959110979%_)
                           (_%rest110986%_ _%tl110960110981%_))
                      (_%K110958110976%_ _%rest110986%_ _%x110984%_)))
                  (_%else110956110970%_)))))))
    (define andmap1
      (lambda (_%f103262%_ _%lst103263%_)
        (if (procedure? _%f103262%_)
            (let ((_%f103267%_ _%f103262%_))
              (__andmap1 _%f103267%_ _%lst103263%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f103262%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f110851%_ _%lst1110852%_ _%lst2110853%_)
        (let ((_%f110856%_ _%f110851%_))
          (let _%lp110865%_ ((_%rest1110867%_ _%lst1110852%_)
                             (_%rest2110868%_ _%lst2110853%_))
            (let* ((_%rest1110870110878%_ _%rest1110867%_)
                   (_%else110872110886%_ (lambda () '#t))
                   (_%K110874110925%_
                    (lambda (_%rest1110889%_ _%x1110890%_)
                      (let* ((_%rest2110891110899%_ _%rest2110868%_)
                             (_%else110893110907%_ (lambda () '#t))
                             (_%K110895110913%_
                              (lambda (_%rest2110910%_ _%x2110911%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f110856%_ _%x1110890%_ _%x2110911%_))
                                    (_%lp110865%_
                                     _%rest1110889%_
                                     _%rest2110910%_)
                                    '#f))))
                        (if (pair? _%rest2110891110899%_)
                            (let ((_%hd110896110916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110891110899%_)))
                                  (_%tl110897110918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110891110899%_))))
                              (let* ((_%x2110921%_ _%hd110896110916%_)
                                     (_%rest2110923%_ _%tl110897110918%_))
                                (_%K110895110913%_
                                 _%rest2110923%_
                                 _%x2110921%_)))
                            (_%else110893110907%_))))))
              (if (pair? _%rest1110870110878%_)
                  (let ((_%hd110875110928%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110870110878%_)))
                        (_%tl110876110930%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110870110878%_))))
                    (let* ((_%x1110933%_ _%hd110875110928%_)
                           (_%rest1110935%_ _%tl110876110930%_))
                      (_%K110874110925%_ _%rest1110935%_ _%x1110933%_)))
                  (_%else110872110886%_)))))))
    (define andmap2
      (lambda (_%f103397%_ _%lst1103398%_ _%lst2103399%_)
        (if (procedure? _%f103397%_)
            (let ((_%f103403%_ _%f103397%_))
              (__andmap2 _%f103403%_ _%lst1103398%_ _%lst2103399%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f103397%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f110795%_ _%lst110796%_)
        (let* ((_%f110798%_ _%f110795%_) (_%lst110801%_ _%lst110796%_))
          (if (procedure? _%f110798%_)
              (let ((_%f110806%_ _%f110798%_))
                (__andmap1 _%f110806%_ _%lst110801%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110798%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f110818%_ _%lst1110819%_ _%lst2110820%_)
        (let* ((_%f110822%_ _%f110818%_)
               (_%lst1110825%_ _%lst1110819%_)
               (_%lst2110828%_ _%lst2110820%_))
          (if (procedure? _%f110822%_)
              (let ((_%f110833%_ _%f110822%_))
                (__andmap2 _%f110833%_ _%lst1110825%_ _%lst2110828%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110822%_)
                '#!void)))))
    (define andmap
      (lambda _g115130_
        (let ((_g115131_ (let () (declare (not safe)) (##length _g115130_))))
          (cond ((let () (declare (not safe)) (##fx= _g115131_ 2))
                 (apply andmap__0 _g115130_))
                ((let () (declare (not safe)) (##fx= _g115131_ 3))
                 (apply andmap__1 _g115130_))
                ((let () (declare (not safe)) (##fx>= _g115131_ 3))
                 (apply andmap* _g115130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g115130_))))))
    (define __andmap*
      (lambda (_%f110752%_ . _%rest110753%_)
        (let ((_%f110756%_ _%f110752%_))
          (let _%recur110765%_ ((_%rest110767%_ _%rest110753%_))
            (if (let* ((_%f110770%_ pair?)
                       (_%lst110773%_ _%rest110767%_)
                       (_%f110778%_ _%f110770%_))
                  (__andmap1 _%f110778%_ _%lst110773%_))
                (if (let ((__tmp115132 (map car _%rest110767%_)))
                      (declare (not safe))
                      (##apply _%f110756%_ __tmp115132))
                    (_%recur110765%_ (map cdr _%rest110767%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f103533%_ . _%rest103534%_)
        (if (procedure? _%f103533%_)
            (let ((_%f103538%_ _%f103533%_))
              (declare (not safe))
              (##apply __andmap* _%f103538%_ _%rest103534%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f103533%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f110699%_ _%lst110700%_)
        (let ((_%f110703%_ _%f110699%_))
          (let _%lp110712%_ ((_%rest110714%_ _%lst110700%_))
            (let* ((_%rest110715110723%_ _%rest110714%_)
                   (_%else110717110731%_ (lambda () '#f))
                   (_%K110719110740%_
                    (lambda (_%rest110734%_ _%x110735%_)
                      (let ((_%$e110737%_
                             (let ()
                               (declare (not safe))
                               (_%f110703%_ _%x110735%_))))
                        (if _%$e110737%_
                            _%$e110737%_
                            (_%lp110712%_ _%rest110734%_))))))
              (if (pair? _%rest110715110723%_)
                  (let ((_%hd110720110743%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110715110723%_)))
                        (_%tl110721110745%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110715110723%_))))
                    (let* ((_%x110748%_ _%hd110720110743%_)
                           (_%rest110750%_ _%tl110721110745%_))
                      (_%K110719110740%_ _%rest110750%_ _%x110748%_)))
                  (_%else110717110731%_)))))))
    (define ormap1
      (lambda (_%f103668%_ _%lst103669%_)
        (if (procedure? _%f103668%_)
            (let ((_%f103673%_ _%f103668%_))
              (__ormap1 _%f103673%_ _%lst103669%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f103668%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f110611%_ _%lst1110612%_ _%lst2110613%_)
        (let ((_%f110616%_ _%f110611%_))
          (let _%lp110625%_ ((_%rest1110627%_ _%lst1110612%_)
                             (_%rest2110628%_ _%lst2110613%_))
            (let* ((_%rest1110629110637%_ _%rest1110627%_)
                   (_%else110631110645%_ (lambda () '#f))
                   (_%K110633110687%_
                    (lambda (_%rest1110648%_ _%x1110649%_)
                      (let* ((_%rest2110650110658%_ _%rest2110628%_)
                             (_%else110652110666%_ (lambda () '#f))
                             (_%K110654110675%_
                              (lambda (_%rest2110669%_ _%x2110670%_)
                                (let ((_%$e110672%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110616%_
                                          _%x1110649%_
                                          _%x2110670%_))))
                                  (if _%$e110672%_
                                      _%$e110672%_
                                      (_%lp110625%_
                                       _%rest1110648%_
                                       _%rest2110669%_))))))
                        (if (pair? _%rest2110650110658%_)
                            (let ((_%hd110655110678%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110650110658%_)))
                                  (_%tl110656110680%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110650110658%_))))
                              (let* ((_%x2110683%_ _%hd110655110678%_)
                                     (_%rest2110685%_ _%tl110656110680%_))
                                (_%K110654110675%_
                                 _%rest2110685%_
                                 _%x2110683%_)))
                            (_%else110652110666%_))))))
              (if (pair? _%rest1110629110637%_)
                  (let ((_%hd110634110690%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110629110637%_)))
                        (_%tl110635110692%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110629110637%_))))
                    (let* ((_%x1110695%_ _%hd110634110690%_)
                           (_%rest1110697%_ _%tl110635110692%_))
                      (_%K110633110687%_ _%rest1110697%_ _%x1110695%_)))
                  (_%else110631110645%_)))))))
    (define ormap2
      (lambda (_%f103803%_ _%lst1103804%_ _%lst2103805%_)
        (if (procedure? _%f103803%_)
            (let ((_%f103809%_ _%f103803%_))
              (__ormap2 _%f103809%_ _%lst1103804%_ _%lst2103805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f103803%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f110555%_ _%lst110556%_)
        (let* ((_%f110558%_ _%f110555%_) (_%lst110561%_ _%lst110556%_))
          (if (procedure? _%f110558%_)
              (let ((_%f110566%_ _%f110558%_))
                (__ormap1 _%f110566%_ _%lst110561%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110558%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f110578%_ _%lst1110579%_ _%lst2110580%_)
        (let* ((_%f110582%_ _%f110578%_)
               (_%lst1110585%_ _%lst1110579%_)
               (_%lst2110588%_ _%lst2110580%_))
          (if (procedure? _%f110582%_)
              (let ((_%f110593%_ _%f110582%_))
                (__ormap2 _%f110593%_ _%lst1110585%_ _%lst2110588%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110582%_)
                '#!void)))))
    (define ormap
      (lambda _g115133_
        (let ((_g115134_ (let () (declare (not safe)) (##length _g115133_))))
          (cond ((let () (declare (not safe)) (##fx= _g115134_ 2))
                 (apply ormap__0 _g115133_))
                ((let () (declare (not safe)) (##fx= _g115134_ 3))
                 (apply ormap__1 _g115133_))
                ((let () (declare (not safe)) (##fx>= _g115134_ 3))
                 (apply ormap* _g115133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g115133_))))))
    (define __ormap*
      (lambda (_%f110511%_ . _%rest110512%_)
        (let ((_%f110515%_ _%f110511%_))
          (let _%recur110524%_ ((_%rest110526%_ _%rest110512%_))
            (if (let* ((_%f110528%_ pair?)
                       (_%lst110531%_ _%rest110526%_)
                       (_%f110536%_ _%f110528%_))
                  (__andmap1 _%f110536%_ _%lst110531%_))
                (let ((_%$e110552%_
                       (let ((__tmp115135 (map car _%rest110526%_)))
                         (declare (not safe))
                         (##apply _%f110515%_ __tmp115135))))
                  (if _%$e110552%_
                      _%$e110552%_
                      (_%recur110524%_ (map cdr _%rest110526%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f103939%_ . _%rest103940%_)
        (if (procedure? _%f103939%_)
            (let ((_%f103944%_ _%f103939%_))
              (declare (not safe))
              (##apply __ormap* _%f103944%_ _%rest103940%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f103939%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f110454%_ _%lst110455%_)
        (let ((_%f110458%_ _%f110454%_))
          (let _%recur110467%_ ((_%rest110469%_ _%lst110455%_))
            (let* ((_%rest110471110479%_ _%rest110469%_)
                   (_%else110473110487%_ (lambda () '()))
                   (_%K110475110499%_
                    (lambda (_%rest110490%_ _%x110491%_)
                      (let ((_%$e110493%_
                             (let ()
                               (declare (not safe))
                               (_%f110458%_ _%x110491%_))))
                        (if _%$e110493%_
                            ((lambda (_%r110496%_)
                               (cons _%r110496%_
                                     (_%recur110467%_ _%rest110490%_)))
                             _%$e110493%_)
                            (_%recur110467%_ _%rest110490%_))))))
              (if (pair? _%rest110471110479%_)
                  (let ((_%hd110476110502%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110471110479%_)))
                        (_%tl110477110504%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110471110479%_))))
                    (let* ((_%x110507%_ _%hd110476110502%_)
                           (_%rest110509%_ _%tl110477110504%_))
                      (_%K110475110499%_ _%rest110509%_ _%x110507%_)))
                  (_%else110473110487%_)))))))
    (define filter-map1
      (lambda (_%f104074%_ _%lst104075%_)
        (if (procedure? _%f104074%_)
            (let ((_%f104079%_ _%f104074%_))
              (__filter-map1 _%f104079%_ _%lst104075%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f104074%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f110362%_ _%lst1110363%_ _%lst2110364%_)
        (let ((_%f110367%_ _%f110362%_))
          (let _%recur110376%_ ((_%rest1110378%_ _%lst1110363%_)
                                (_%rest2110379%_ _%lst2110364%_))
            (let* ((_%rest1110381110389%_ _%rest1110378%_)
                   (_%else110383110397%_ (lambda () '()))
                   (_%K110385110442%_
                    (lambda (_%rest1110400%_ _%x1110401%_)
                      (let* ((_%rest2110402110410%_ _%rest2110379%_)
                             (_%else110404110418%_ (lambda () '()))
                             (_%K110406110430%_
                              (lambda (_%rest2110421%_ _%x2110422%_)
                                (let ((_%$e110424%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110367%_
                                          _%x1110401%_
                                          _%x2110422%_))))
                                  (if _%$e110424%_
                                      ((lambda (_%r110427%_)
                                         (cons _%r110427%_
                                               (_%recur110376%_
                                                _%rest1110400%_
                                                _%rest2110421%_)))
                                       _%$e110424%_)
                                      (_%recur110376%_
                                       _%rest1110400%_
                                       _%rest2110421%_))))))
                        (if (pair? _%rest2110402110410%_)
                            (let ((_%hd110407110433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110402110410%_)))
                                  (_%tl110408110435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110402110410%_))))
                              (let* ((_%x2110438%_ _%hd110407110433%_)
                                     (_%rest2110440%_ _%tl110408110435%_))
                                (_%K110406110430%_
                                 _%rest2110440%_
                                 _%x2110438%_)))
                            (_%else110404110418%_))))))
              (if (pair? _%rest1110381110389%_)
                  (let ((_%hd110386110445%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110381110389%_)))
                        (_%tl110387110447%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110381110389%_))))
                    (let* ((_%x1110450%_ _%hd110386110445%_)
                           (_%rest1110452%_ _%tl110387110447%_))
                      (_%K110385110442%_ _%rest1110452%_ _%x1110450%_)))
                  (_%else110383110397%_)))))))
    (define filter-map2
      (lambda (_%f104209%_ _%lst1104210%_ _%lst2104211%_)
        (if (procedure? _%f104209%_)
            (let ((_%f104215%_ _%f104209%_))
              (__filter-map2 _%f104215%_ _%lst1104210%_ _%lst2104211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f104209%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f110306%_ _%lst110307%_)
        (let* ((_%f110309%_ _%f110306%_) (_%lst110312%_ _%lst110307%_))
          (if (procedure? _%f110309%_)
              (let ((_%f110317%_ _%f110309%_))
                (__filter-map1 _%f110317%_ _%lst110312%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110309%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f110329%_ _%lst1110330%_ _%lst2110331%_)
        (let* ((_%f110333%_ _%f110329%_)
               (_%lst1110336%_ _%lst1110330%_)
               (_%lst2110339%_ _%lst2110331%_))
          (if (procedure? _%f110333%_)
              (let ((_%f110344%_ _%f110333%_))
                (__filter-map2 _%f110344%_ _%lst1110336%_ _%lst2110339%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110333%_)
                '#!void)))))
    (define filter-map
      (lambda _g115136_
        (let ((_g115137_ (let () (declare (not safe)) (##length _g115136_))))
          (cond ((let () (declare (not safe)) (##fx= _g115137_ 2))
                 (apply filter-map__0 _g115136_))
                ((let () (declare (not safe)) (##fx= _g115137_ 3))
                 (apply filter-map__1 _g115136_))
                ((let () (declare (not safe)) (##fx>= _g115137_ 3))
                 (apply filter-map* _g115136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g115136_))))))
    (define __filter-map*
      (lambda (_%f110257%_ . _%rest110258%_)
        (let ((_%f110261%_ _%f110257%_))
          (let _%recur110270%_ ((_%rest110272%_ _%rest110258%_))
            (if (let* ((_%f110275%_ pair?)
                       (_%lst110278%_ _%rest110272%_)
                       (_%f110283%_ _%f110275%_))
                  (__andmap1 _%f110283%_ _%lst110278%_))
                (let ((_%$e110300%_
                       (let ((__tmp115138 (map car _%rest110272%_)))
                         (declare (not safe))
                         (##apply _%f110261%_ __tmp115138))))
                  (if _%$e110300%_
                      ((lambda (_%r110303%_)
                         (cons _%r110303%_
                               (_%recur110270%_ (map cdr _%rest110272%_))))
                       _%$e110300%_)
                      (_%recur110270%_ (map cdr _%rest110272%_))))
                '())))))
    (define filter-map*
      (lambda (_%f104345%_ . _%rest104346%_)
        (if (procedure? _%f104345%_)
            (let ((_%f104350%_ _%f104345%_))
              (declare (not safe))
              (##apply __filter-map* _%f104350%_ _%rest104346%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f104345%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key110233%_ _%lst110235%_ _%default110237%_)
        (let ((_%$e110240%_
               (if (pair? _%lst110235%_)
                   (assq _%key110233%_ _%lst110235%_)
                   '#f)))
          (if _%$e110240%_
              (cdr _%$e110240%_)
              (if (procedure? _%default110237%_)
                  (_%default110237%_ _%key110233%_)
                  _%default110237%_)))))
    (define agetq__0
      (lambda (_%key110248%_ _%lst110249%_)
        (let ((_%default110251%_ '#f))
          (agetq__% _%key110248%_ _%lst110249%_ _%default110251%_))))
    (define agetq
      (lambda _g115139_
        (let ((_g115140_ (let () (declare (not safe)) (##length _g115139_))))
          (cond ((let () (declare (not safe)) (##fx= _g115140_ 2))
                 (apply agetq__0 _g115139_))
                ((let () (declare (not safe)) (##fx= _g115140_ 3))
                 (apply agetq__% _g115139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g115139_))))))
    (define agetv__%
      (lambda (_%key110208%_ _%lst110210%_ _%default110212%_)
        (let ((_%$e110215%_
               (if (pair? _%lst110210%_)
                   (assv _%key110208%_ _%lst110210%_)
                   '#f)))
          (if _%$e110215%_
              (cdr _%$e110215%_)
              (if (procedure? _%default110212%_)
                  (_%default110212%_ _%key110208%_)
                  _%default110212%_)))))
    (define agetv__0
      (lambda (_%key110223%_ _%lst110224%_)
        (let ((_%default110226%_ '#f))
          (agetv__% _%key110223%_ _%lst110224%_ _%default110226%_))))
    (define agetv
      (lambda _g115141_
        (let ((_g115142_ (let () (declare (not safe)) (##length _g115141_))))
          (cond ((let () (declare (not safe)) (##fx= _g115142_ 2))
                 (apply agetv__0 _g115141_))
                ((let () (declare (not safe)) (##fx= _g115142_ 3))
                 (apply agetv__% _g115141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g115141_))))))
    (define aget__%
      (lambda (_%key110183%_ _%lst110185%_ _%default110187%_)
        (let ((_%$e110190%_
               (if (pair? _%lst110185%_)
                   (assoc _%key110183%_ _%lst110185%_)
                   '#f)))
          (if _%$e110190%_
              (cdr _%$e110190%_)
              (if (procedure? _%default110187%_)
                  (_%default110187%_ _%key110183%_)
                  _%default110187%_)))))
    (define aget__0
      (lambda (_%key110198%_ _%lst110199%_)
        (let ((_%default110201%_ '#f))
          (aget__% _%key110198%_ _%lst110199%_ _%default110201%_))))
    (define aget
      (lambda _g115143_
        (let ((_g115144_ (let () (declare (not safe)) (##length _g115143_))))
          (cond ((let () (declare (not safe)) (##fx= _g115144_ 2))
                 (apply aget__0 _g115143_))
                ((let () (declare (not safe)) (##fx= _g115144_ 3))
                 (apply aget__% _g115143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g115143_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key110112%_ _%lst110114%_ _%default110116%_)
        (let _%lp110119%_ ((_%rest110122%_ _%lst110114%_))
          (let* ((_%rest110124110134%_ _%rest110122%_)
                 (_%else110126110142%_
                  (lambda ()
                    (if (procedure? _%default110116%_)
                        (_%default110116%_ _%key110112%_)
                        _%default110116%_)))
                 (_%K110128110151%_
                  (lambda (_%rest110145%_ _%v110146%_ _%k110148%_)
                    (if (eq? _%k110148%_ _%key110112%_)
                        _%v110146%_
                        (_%lp110119%_ _%rest110145%_)))))
            (if (pair? _%rest110124110134%_)
                (let ((_%hd110129110154%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110124110134%_)))
                      (_%tl110130110156%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110124110134%_))))
                  (let ((_%k110159%_ _%hd110129110154%_))
                    (if (pair? _%tl110130110156%_)
                        (let ((_%hd110131110161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110130110156%_)))
                              (_%tl110132110163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110130110156%_))))
                          (let* ((_%v110166%_ _%hd110131110161%_)
                                 (_%rest110168%_ _%tl110132110163%_))
                            (_%K110128110151%_
                             _%rest110168%_
                             _%v110166%_
                             _%k110159%_)))
                        (_%else110126110142%_))))
                (_%else110126110142%_))))))
    (define pgetq__0
      (lambda (_%key110173%_ _%lst110174%_)
        (let ((_%default110176%_ '#f))
          (pgetq__% _%key110173%_ _%lst110174%_ _%default110176%_))))
    (define pgetq
      (lambda _g115145_
        (let ((_g115146_ (let () (declare (not safe)) (##length _g115145_))))
          (cond ((let () (declare (not safe)) (##fx= _g115146_ 2))
                 (apply pgetq__0 _g115145_))
                ((let () (declare (not safe)) (##fx= _g115146_ 3))
                 (apply pgetq__% _g115145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g115145_))))))
    (define pgetv__%
      (lambda (_%key110041%_ _%lst110043%_ _%default110045%_)
        (let _%lp110048%_ ((_%rest110051%_ _%lst110043%_))
          (let* ((_%rest110053110063%_ _%rest110051%_)
                 (_%else110055110071%_
                  (lambda ()
                    (if (procedure? _%default110045%_)
                        (_%default110045%_ _%key110041%_)
                        _%default110045%_)))
                 (_%K110057110080%_
                  (lambda (_%rest110074%_ _%v110075%_ _%k110077%_)
                    (if (eqv? _%k110077%_ _%key110041%_)
                        _%v110075%_
                        (_%lp110048%_ _%rest110074%_)))))
            (if (pair? _%rest110053110063%_)
                (let ((_%hd110058110083%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest110053110063%_)))
                      (_%tl110059110085%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest110053110063%_))))
                  (let ((_%k110088%_ _%hd110058110083%_))
                    (if (pair? _%tl110059110085%_)
                        (let ((_%hd110060110090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl110059110085%_)))
                              (_%tl110061110092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl110059110085%_))))
                          (let* ((_%v110095%_ _%hd110060110090%_)
                                 (_%rest110097%_ _%tl110061110092%_))
                            (_%K110057110080%_
                             _%rest110097%_
                             _%v110095%_
                             _%k110088%_)))
                        (_%else110055110071%_))))
                (_%else110055110071%_))))))
    (define pgetv__0
      (lambda (_%key110102%_ _%lst110103%_)
        (let ((_%default110105%_ '#f))
          (pgetv__% _%key110102%_ _%lst110103%_ _%default110105%_))))
    (define pgetv
      (lambda _g115147_
        (let ((_g115148_ (let () (declare (not safe)) (##length _g115147_))))
          (cond ((let () (declare (not safe)) (##fx= _g115148_ 2))
                 (apply pgetv__0 _g115147_))
                ((let () (declare (not safe)) (##fx= _g115148_ 3))
                 (apply pgetv__% _g115147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g115147_))))))
    (define pget__%
      (lambda (_%key109970%_ _%lst109972%_ _%default109974%_)
        (let _%lp109977%_ ((_%rest109980%_ _%lst109972%_))
          (let* ((_%rest109982109992%_ _%rest109980%_)
                 (_%else109984110000%_
                  (lambda ()
                    (if (procedure? _%default109974%_)
                        (_%default109974%_ _%key109970%_)
                        _%default109974%_)))
                 (_%K109986110009%_
                  (lambda (_%rest110003%_ _%v110004%_ _%k110006%_)
                    (if (equal? _%k110006%_ _%key109970%_)
                        _%v110004%_
                        (_%lp109977%_ _%rest110003%_)))))
            (if (pair? _%rest109982109992%_)
                (let ((_%hd109987110012%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109982109992%_)))
                      (_%tl109988110014%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109982109992%_))))
                  (let ((_%k110017%_ _%hd109987110012%_))
                    (if (pair? _%tl109988110014%_)
                        (let ((_%hd109989110019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109988110014%_)))
                              (_%tl109990110021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109988110014%_))))
                          (let* ((_%v110024%_ _%hd109989110019%_)
                                 (_%rest110026%_ _%tl109990110021%_))
                            (_%K109986110009%_
                             _%rest110026%_
                             _%v110024%_
                             _%k110017%_)))
                        (_%else109984110000%_))))
                (_%else109984110000%_))))))
    (define pget__0
      (lambda (_%key110031%_ _%lst110032%_)
        (let ((_%default110034%_ '#f))
          (pget__% _%key110031%_ _%lst110032%_ _%default110034%_))))
    (define pget
      (lambda _g115149_
        (let ((_g115150_ (let () (declare (not safe)) (##length _g115149_))))
          (cond ((let () (declare (not safe)) (##fx= _g115150_ 2))
                 (apply pget__0 _g115149_))
                ((let () (declare (not safe)) (##fx= _g115150_ 3))
                 (apply pget__% _g115149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g115149_))))))
    (define __find
      (lambda (_%pred109930%_ _%lst109931%_)
        (let* ((_%pred109934%_ _%pred109930%_)
               (_%$e109965%_
                (let* ((_%proc109943%_ _%pred109934%_)
                       (_%lst109946%_ _%lst109931%_)
                       (_%proc109951%_ _%proc109943%_))
                  (__memf _%proc109951%_ _%lst109946%_))))
          (if _%$e109965%_
              (let () (declare (not safe)) (##car _%$e109965%_))
              '#f))))
    (define find
      (lambda (_%pred104642%_ _%lst104643%_)
        (if (procedure? _%pred104642%_)
            (let ((_%pred104647%_ _%pred104642%_))
              (__find _%pred104647%_ _%lst104643%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred104642%_)
              '#!void))))
    (define __memf
      (lambda (_%proc109880%_ _%lst109881%_)
        (let ((_%proc109884%_ _%proc109880%_))
          (let _%lp109893%_ ((_%rest109895%_ _%lst109881%_))
            (let* ((_%rest109896109904%_ _%rest109895%_)
                   (_%else109898109912%_ (lambda () '#f))
                   (_%K109900109918%_
                    (lambda (_%tl109915%_ _%hd109916%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109884%_ _%hd109916%_))
                          _%rest109895%_
                          (_%lp109893%_ _%tl109915%_)))))
              (if (pair? _%rest109896109904%_)
                  (let ((_%hd109901109921%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109896109904%_)))
                        (_%tl109902109923%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109896109904%_))))
                    (let* ((_%hd109926%_ _%hd109901109921%_)
                           (_%tl109928%_ _%tl109902109923%_))
                      (_%K109900109918%_ _%tl109928%_ _%hd109926%_)))
                  (_%else109898109912%_)))))))
    (define memf
      (lambda (_%proc104777%_ _%lst104778%_)
        (if (procedure? _%proc104777%_)
            (let ((_%proc104782%_ _%proc104777%_))
              (__memf _%proc104782%_ _%lst104778%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc104777%_)
              '#!void))))
    (define remove1
      (lambda (_%el109803%_ _%lst109805%_)
        (let _%lp109808%_ ((_%rest109811%_ _%lst109805%_) (_%r109813%_ '()))
          (let* ((_%rest109815109823%_ _%rest109811%_)
                 (_%else109817109831%_ (lambda () _%lst109805%_))
                 (_%K109819109868%_
                  (lambda (_%rest109834%_ _%hd109835%_)
                    (if (equal? _%el109803%_ _%hd109835%_)
                        (let* ((_%f109838%_ cons)
                               (_%iv109841%_ _%rest109834%_)
                               (_%lst109844%_ _%r109813%_)
                               (_%f109849%_ _%f109838%_))
                          (__foldl1 _%f109849%_ _%iv109841%_ _%lst109844%_))
                        (_%lp109808%_
                         _%rest109834%_
                         (cons _%hd109835%_ _%r109813%_))))))
            (if (pair? _%rest109815109823%_)
                (let ((_%hd109820109871%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109815109823%_)))
                      (_%tl109821109873%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109815109823%_))))
                  (let* ((_%hd109876%_ _%hd109820109871%_)
                         (_%rest109878%_ _%tl109821109873%_))
                    (_%K109819109868%_ _%rest109878%_ _%hd109876%_)))
                (_%else109817109831%_))))))
    (define remv1
      (lambda (_%el109726%_ _%lst109728%_)
        (let _%lp109731%_ ((_%rest109734%_ _%lst109728%_) (_%r109736%_ '()))
          (let* ((_%rest109738109746%_ _%rest109734%_)
                 (_%else109740109754%_ (lambda () _%lst109728%_))
                 (_%K109742109791%_
                  (lambda (_%rest109757%_ _%hd109758%_)
                    (if (eqv? _%el109726%_ _%hd109758%_)
                        (let* ((_%f109761%_ cons)
                               (_%iv109764%_ _%rest109757%_)
                               (_%lst109767%_ _%r109736%_)
                               (_%f109772%_ _%f109761%_))
                          (__foldl1 _%f109772%_ _%iv109764%_ _%lst109767%_))
                        (_%lp109731%_
                         _%rest109757%_
                         (cons _%hd109758%_ _%r109736%_))))))
            (if (pair? _%rest109738109746%_)
                (let ((_%hd109743109794%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109738109746%_)))
                      (_%tl109744109796%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109738109746%_))))
                  (let* ((_%hd109799%_ _%hd109743109794%_)
                         (_%rest109801%_ _%tl109744109796%_))
                    (_%K109742109791%_ _%rest109801%_ _%hd109799%_)))
                (_%else109740109754%_))))))
    (define remq1
      (lambda (_%el109649%_ _%lst109651%_)
        (let _%lp109654%_ ((_%rest109657%_ _%lst109651%_) (_%r109659%_ '()))
          (let* ((_%rest109661109669%_ _%rest109657%_)
                 (_%else109663109677%_ (lambda () _%lst109651%_))
                 (_%K109665109714%_
                  (lambda (_%rest109680%_ _%hd109681%_)
                    (if (eq? _%el109649%_ _%hd109681%_)
                        (let* ((_%f109684%_ cons)
                               (_%iv109687%_ _%rest109680%_)
                               (_%lst109690%_ _%r109659%_)
                               (_%f109695%_ _%f109684%_))
                          (__foldl1 _%f109695%_ _%iv109687%_ _%lst109690%_))
                        (_%lp109654%_
                         _%rest109680%_
                         (cons _%hd109681%_ _%r109659%_))))))
            (if (pair? _%rest109661109669%_)
                (let ((_%hd109666109717%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109661109669%_)))
                      (_%tl109667109719%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109661109669%_))))
                  (let* ((_%hd109722%_ _%hd109666109717%_)
                         (_%rest109724%_ _%tl109667109719%_))
                    (_%K109665109714%_ _%rest109724%_ _%hd109722%_)))
                (_%else109663109677%_))))))
    (define __remf
      (lambda (_%proc109566%_ _%lst109567%_)
        (let ((_%proc109570%_ _%proc109566%_))
          (let _%lp109579%_ ((_%rest109581%_ _%lst109567%_) (_%r109582%_ '()))
            (let* ((_%rest109583109591%_ _%rest109581%_)
                   (_%else109585109599%_ (lambda () _%lst109567%_))
                   (_%K109587109637%_
                    (lambda (_%rest109602%_ _%hd109603%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109570%_ _%hd109603%_))
                          (let* ((_%f109605%_ cons)
                                 (_%iv109608%_ _%rest109602%_)
                                 (_%lst109611%_ _%r109582%_)
                                 (_%f109616%_ _%f109605%_))
                            (__foldl1 _%f109616%_ _%iv109608%_ _%lst109611%_))
                          (_%lp109579%_
                           _%rest109602%_
                           (cons _%hd109603%_ _%r109582%_))))))
              (if (pair? _%rest109583109591%_)
                  (let ((_%hd109588109640%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109583109591%_)))
                        (_%tl109589109642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109583109591%_))))
                    (let* ((_%hd109645%_ _%hd109588109640%_)
                           (_%rest109647%_ _%tl109589109642%_))
                      (_%K109587109637%_ _%rest109647%_ _%hd109645%_)))
                  (_%else109585109599%_)))))))
    (define remf
      (lambda (_%proc104993%_ _%lst104994%_)
        (if (procedure? _%proc104993%_)
            (let ((_%proc104998%_ _%proc104993%_))
              (__remf _%proc104998%_ _%lst104994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc104993%_)
              '#!void))))
    (define __1+
      (lambda (_%x109554%_)
        (let ((_%x109557%_ _%x109554%_)) (+ _%x109557%_ '1))))
    (define 1+
      (lambda (_%x105128%_)
        (if (number? _%x105128%_)
            (let ((_%x105132%_ _%x105128%_)) (__1+ _%x105132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x105128%_)
              '#!void))))
    (define __1-
      (lambda (_%x109542%_)
        (let ((_%x109545%_ _%x109542%_)) (- _%x109545%_ '1))))
    (define 1-
      (lambda (_%x105262%_)
        (if (number? _%x105262%_)
            (let ((_%x105266%_ _%x105262%_)) (__1- _%x105266%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x105262%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x109530%_)
        (let ((_%x109533%_ _%x109530%_))
          (declare (not safe))
          (##fx+ _%x109533%_ '1))))
    (define fx1+
      (lambda (_%x105396%_)
        (if (fixnum? _%x105396%_)
            (let ((_%x105400%_ _%x105396%_)) (__fx1+ _%x105400%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x105396%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x109518%_)
        (let ((_%x109521%_ _%x109518%_))
          (declare (not safe))
          (##fx- _%x109521%_ '1))))
    (define fx1-
      (lambda (_%x105530%_)
        (if (fixnum? _%x105530%_)
            (let ((_%x105534%_ _%x105530%_)) (__fx1- _%x105534%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x105530%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x109515%_)
        (if (fixnum? _%x109515%_)
            (let () (declare (not safe)) (##fx>= _%x109515%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x109512%_)
        (if (fixnum? _%x109512%_)
            (let () (declare (not safe)) (##fx> _%x109512%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x109509%_)
        (let () (declare (not safe)) (##fx= _%x109509%_ '0))))
    (define fx<0?
      (lambda (_%x109506%_)
        (if (fixnum? _%x109506%_)
            (let () (declare (not safe)) (##fx< _%x109506%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x109503%_)
        (if (fixnum? _%x109503%_)
            (let () (declare (not safe)) (##fx<= _%x109503%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x109500%_)
        (if (symbol? _%x109500%_) (not (uninterned-symbol? _%x109500%_)) '#f)))
    (define __display-as-string
      (lambda (_%x109394%_ _%port109395%_)
        (let ((_%port109398%_ _%port109395%_))
          (if (or (string? _%x109394%_)
                  (symbol? _%x109394%_)
                  (keyword? _%x109394%_)
                  (number? _%x109394%_)
                  (char? _%x109394%_))
              (display _%x109394%_ _%port109398%_)
              (if (pair? _%x109394%_)
                  (let ()
                    (let* ((_%x109421%_
                            (let () (declare (not safe)) (##car _%x109394%_)))
                           (_%port109424%_ _%port109398%_))
                      (if (output-port? _%port109424%_)
                          (let ((_%port109429%_ _%port109424%_))
                            (__display-as-string _%x109421%_ _%port109429%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109424%_)
                            '#!void)))
                    (let* ((_%x109444%_
                            (let () (declare (not safe)) (##cdr _%x109394%_)))
                           (_%port109447%_ _%port109398%_))
                      (if (output-port? _%port109447%_)
                          (let ((_%port109452%_ _%port109447%_))
                            (__display-as-string _%x109444%_ _%port109452%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port109447%_)
                            '#!void))))
                  (if (vector? _%x109394%_)
                      (vector-for-each
                       (lambda (_%g109463109465%_)
                         (let* ((_%x109468%_ _%g109463109465%_)
                                (_%port109471%_ _%port109398%_))
                           (if (output-port? _%port109471%_)
                               (let ((_%port109476%_ _%port109471%_))
                                 (__display-as-string
                                  _%x109468%_
                                  _%port109476%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port109471%_)
                                 '#!void))))
                       _%x109394%_)
                      (if (or (null? _%x109394%_)
                              (eq? _%x109394%_ '#!void)
                              (eof-object? _%x109394%_)
                              (boolean? _%x109394%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x109394%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x105664%_ _%port105665%_)
        (if (output-port? _%port105665%_)
            (let ((_%port105669%_ _%port105665%_))
              (__display-as-string _%x105664%_ _%port105669%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port105665%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x109334%_)
        (if (string? _%x109334%_)
            _%x109334%_
            (if (symbol? _%x109334%_)
                (let () (declare (not safe)) (##symbol->string _%x109334%_))
                (if (keyword? _%x109334%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x109334%_))
                    (if (number? _%x109334%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x109334%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g109340109342%_)
                           (let* ((_%x109345%_ _%x109334%_)
                                  (_%port109348%_ _%g109340109342%_))
                             (if (output-port? _%port109348%_)
                                 (let ((_%port109353%_ _%port109348%_))
                                   (__display-as-string
                                    _%x109345%_
                                    _%port109353%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port109348%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args109367%_
        (call-with-output-string
         '()
         (lambda (_%g109368109370%_)
           (let* ((_%x109373%_ _%args109367%_)
                  (_%port109376%_ _%g109368109370%_))
             (if (output-port? _%port109376%_)
                 (let ((_%port109381%_ _%port109376%_))
                   (__display-as-string _%x109373%_ _%port109381%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port109376%_)
                   '#!void)))))))
    (define as-string
      (lambda _g115151_
        (let ((_g115152_ (let () (declare (not safe)) (##length _g115151_))))
          (cond ((let () (declare (not safe)) (##fx= _g115152_ 1))
                 (apply as-string__0 _g115151_))
                (#t
                 (apply (lambda _%args109367%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args109367%_)))
                        _g115151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g115151_))))))
    (define make-symbol__0
      (lambda (_%x109330%_)
        (if (interned-symbol? _%x109330%_)
            _%x109330%_
            (let ((__tmp115153 (as-string__0 _%x109330%_)))
              (declare (not safe))
              (##string->symbol __tmp115153)))))
    (define make-symbol__1
      (lambda _%args109332%_
        (let ((__tmp115154
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109332%_))))
          (declare (not safe))
          (##string->symbol __tmp115154))))
    (define make-symbol
      (lambda _g115155_
        (let ((_g115156_ (let () (declare (not safe)) (##length _g115155_))))
          (cond ((let () (declare (not safe)) (##fx= _g115156_ 1))
                 (apply make-symbol__0 _g115155_))
                (#t
                 (apply (lambda _%args109332%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args109332%_)))
                        _g115155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g115155_))))))
    (define make-keyword__0
      (lambda (_%x109326%_)
        (if (interned-keyword? _%x109326%_)
            _%x109326%_
            (let ((__tmp115157 (as-string__0 _%x109326%_)))
              (declare (not safe))
              (##string->keyword __tmp115157)))))
    (define make-keyword__1
      (lambda _%args109328%_
        (let ((__tmp115158
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args109328%_))))
          (declare (not safe))
          (##string->keyword __tmp115158))))
    (define make-keyword
      (lambda _g115159_
        (let ((_g115160_ (let () (declare (not safe)) (##length _g115159_))))
          (cond ((let () (declare (not safe)) (##fx= _g115160_ 1))
                 (apply make-keyword__0 _g115159_))
                (#t
                 (apply (lambda _%args109328%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args109328%_)))
                        _g115159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g115159_))))))
    (define interned-keyword?
      (lambda (_%x109323%_)
        (if (keyword? _%x109323%_)
            (not (uninterned-keyword? _%x109323%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym109311%_)
        (let ((_%sym109314%_ _%sym109311%_))
          (if (uninterned-symbol? _%sym109314%_)
              (let ((__tmp115161
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109314%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp115161))
              (let ((__tmp115162
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym109314%_))))
                (declare (not safe))
                (##string->keyword __tmp115162))))))
    (define symbol->keyword
      (lambda (_%sym105799%_)
        (if (symbol? _%sym105799%_)
            (let ((_%sym105803%_ _%sym105799%_))
              (__symbol->keyword _%sym105803%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym105799%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym109299%_)
        (let ((_%sym109302%_ _%sym109299%_))
          (if (uninterned-keyword? _%sym109302%_)
              (let ((__tmp115163
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109302%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp115163))
              (let ((__tmp115164
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym109302%_))))
                (declare (not safe))
                (##string->symbol __tmp115164))))))
    (define keyword->symbol
      (lambda (_%sym105933%_)
        (if (keyword? _%sym105933%_)
            (let ((_%sym105937%_ _%sym105933%_))
              (__keyword->symbol _%sym105937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym105933%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr109259%_ _%enc109260%_)
        (let* ((_%bstr109263%_ _%bstr109259%_) (_%enc109271%_ _%enc109260%_))
          (if (eq? _%enc109271%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr109263%_))
              (let* ((_%in109280%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc109271%_
                                   (cons 'init: (cons _%bstr109263%_ '()))))))
                     (_%len109282%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr109263%_)))
                     (_%out109284%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len109282%_)))
                     (_%n109286%_
                      (read-substring
                       _%out109284%_
                       '0
                       _%len109282%_
                       _%in109280%_)))
                (string-shrink! _%out109284%_ _%n109286%_)
                _%out109284%_)))))
    (define __bytes->string__0
      (lambda (_%bstr109292%_)
        (let ((_%enc109294%_ 'UTF-8))
          (__bytes->string__% _%bstr109292%_ _%enc109294%_))))
    (define __bytes->string
      (lambda _g115165_
        (let ((_g115166_ (let () (declare (not safe)) (##length _g115165_))))
          (cond ((let () (declare (not safe)) (##fx= _g115166_ 1))
                 (apply __bytes->string__0 _g115165_))
                ((let () (declare (not safe)) (##fx= _g115166_ 2))
                 (apply __bytes->string__% _g115165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g115165_))))))
    (define bytes->string__%
      (lambda (_%bstr106068%_ _%enc106069%_)
        (if (u8vector? _%bstr106068%_)
            (let ((_%bstr106073%_ _%bstr106068%_))
              (if (symbol? _%enc106069%_)
                  (let ((_%enc106083%_ _%enc106069%_))
                    (__bytes->string__% _%bstr106073%_ _%enc106083%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106069%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr106068%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr106096%_)
        (let ((_%enc106098%_ 'UTF-8))
          (bytes->string__% _%bstr106096%_ _%enc106098%_))))
    (define bytes->string
      (lambda _g115167_
        (let ((_g115168_ (let () (declare (not safe)) (##length _g115167_))))
          (cond ((let () (declare (not safe)) (##fx= _g115168_ 1))
                 (apply bytes->string__0 _g115167_))
                ((let () (declare (not safe)) (##fx= _g115168_ 2))
                 (apply bytes->string__% _g115167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g115167_))))))
    (define __string->bytes__%
      (lambda (_%str109177%_ _%enc109178%_)
        (let* ((_%str109181%_ _%str109177%_) (_%enc109189%_ _%enc109178%_))
          (if (eq? _%enc109189%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str109181%_))
              (let* ((_%str109198%_ _%str109181%_)
                     (_%start109201%_ '0)
                     (_%end109204%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str109181%_)))
                     (_%enc109207%_ _%enc109189%_)
                     (_%str109212%_ _%str109198%_))
                (if (nonnegative-fixnum? _%start109201%_)
                    (let ((_%start109228%_ _%start109201%_))
                      (if (nonnegative-fixnum? _%end109204%_)
                          (let ((_%end109238%_ _%end109204%_))
                            (__substring->bytes__%
                             _%str109212%_
                             _%start109228%_
                             _%end109238%_
                             _%enc109207%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end109204%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start109201%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str109251%_)
        (let ((_%enc109253%_ 'UTF-8))
          (__string->bytes__% _%str109251%_ _%enc109253%_))))
    (define __string->bytes
      (lambda _g115169_
        (let ((_g115170_ (let () (declare (not safe)) (##length _g115169_))))
          (cond ((let () (declare (not safe)) (##fx= _g115170_ 1))
                 (apply __string->bytes__0 _g115169_))
                ((let () (declare (not safe)) (##fx= _g115170_ 2))
                 (apply __string->bytes__% _g115169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g115169_))))))
    (define string->bytes__%
      (lambda (_%str106224%_ _%enc106225%_)
        (if (string? _%str106224%_)
            (let ((_%str106229%_ _%str106224%_))
              (if (symbol? _%enc106225%_)
                  (let ((_%enc106239%_ _%enc106225%_))
                    (__string->bytes__% _%str106229%_ _%enc106239%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc106225%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str106224%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str106252%_)
        (let ((_%enc106254%_ 'UTF-8))
          (string->bytes__% _%str106252%_ _%enc106254%_))))
    (define string->bytes
      (lambda _g115171_
        (let ((_g115172_ (let () (declare (not safe)) (##length _g115171_))))
          (cond ((let () (declare (not safe)) (##fx= _g115172_ 1))
                 (apply string->bytes__0 _g115171_))
                ((let () (declare (not safe)) (##fx= _g115172_ 2))
                 (apply string->bytes__% _g115171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g115171_))))))
    (define __substring->bytes__%
      (lambda (_%str109129%_ _%start109130%_ _%end109131%_ _%enc109132%_)
        (let* ((_%str109135%_ _%str109129%_)
               (_%start109143%_ _%start109130%_)
               (_%end109151%_ _%end109131%_))
          (if (eq? _%enc109132%_ 'UTF-8)
              (string->utf8 _%str109135%_ _%start109143%_ _%end109151%_)
              (let ((_%out109160%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc109132%_ '())))))
                (write-substring
                 _%str109135%_
                 _%start109143%_
                 _%end109151%_
                 _%out109160%_)
                (get-output-u8vector _%out109160%_))))))
    (define __substring->bytes__0
      (lambda (_%str109165%_ _%start109166%_ _%end109167%_)
        (let ((_%enc109169%_ 'UTF-8))
          (__substring->bytes__%
           _%str109165%_
           _%start109166%_
           _%end109167%_
           _%enc109169%_))))
    (define __substring->bytes
      (lambda _g115173_
        (let ((_g115174_ (let () (declare (not safe)) (##length _g115173_))))
          (cond ((let () (declare (not safe)) (##fx= _g115174_ 3))
                 (apply __substring->bytes__0 _g115173_))
                ((let () (declare (not safe)) (##fx= _g115174_ 4))
                 (apply __substring->bytes__% _g115173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g115173_))))))
    (define substring->bytes__%
      (lambda (_%str106380%_ _%start106381%_ _%end106382%_ _%enc106383%_)
        (if (string? _%str106380%_)
            (let ((_%str106387%_ _%str106380%_))
              (if (nonnegative-fixnum? _%start106381%_)
                  (let ((_%start106397%_ _%start106381%_))
                    (if (nonnegative-fixnum? _%end106382%_)
                        (let ((_%end106407%_ _%end106382%_))
                          (__substring->bytes__%
                           _%str106387%_
                           _%start106397%_
                           _%end106407%_
                           _%enc106383%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end106382%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start106381%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str106380%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str106420%_ _%start106421%_ _%end106422%_)
        (let ((_%enc106424%_ 'UTF-8))
          (substring->bytes__%
           _%str106420%_
           _%start106421%_
           _%end106422%_
           _%enc106424%_))))
    (define substring->bytes
      (lambda _g115175_
        (let ((_g115176_ (let () (declare (not safe)) (##length _g115175_))))
          (cond ((let () (declare (not safe)) (##fx= _g115176_ 3))
                 (apply substring->bytes__0 _g115175_))
                ((let () (declare (not safe)) (##fx= _g115176_ 4))
                 (apply substring->bytes__% _g115175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g115175_))))))
    (define __string-empty?
      (lambda (_%str109116%_)
        (let* ((_%str109119%_ _%str109116%_)
               (__tmp115177
                (let () (declare (not safe)) (##string-length _%str109119%_))))
          (declare (not safe))
          (##fxzero? __tmp115177))))
    (define string-empty?
      (lambda (_%str106551%_)
        (if (string? _%str106551%_)
            (let ((_%str106555%_ _%str106551%_))
              (__string-empty? _%str106555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str106551%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str109056%_ _%char109057%_ _%start109058%_)
        (let* ((_%str109061%_ _%str109056%_)
               (_%char109069%_ _%char109057%_)
               (_%start109077%_ _%start109058%_)
               (_%len109086%_
                (let () (declare (not safe)) (##string-length _%str109061%_))))
          (let _%lp109088%_ ((_%k109090%_ _%start109077%_))
            (let ((_%k109092%_ _%k109090%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k109092%_ _%len109086%_))
                  (if (eq? _%char109069%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109061%_ _%k109092%_)))
                      _%k109092%_
                      (_%lp109088%_
                       (let () (declare (not safe)) (##fx+ _%k109092%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str109107%_ _%char109108%_)
        (let ((_%start109110%_ '0))
          (__string-index__% _%str109107%_ _%char109108%_ _%start109110%_))))
    (define __string-index
      (lambda _g115178_
        (let ((_g115179_ (let () (declare (not safe)) (##length _g115178_))))
          (cond ((let () (declare (not safe)) (##fx= _g115179_ 2))
                 (apply __string-index__0 _g115178_))
                ((let () (declare (not safe)) (##fx= _g115179_ 3))
                 (apply __string-index__% _g115178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g115178_))))))
    (define string-index__%
      (lambda (_%str106686%_ _%char106687%_ _%start106688%_)
        (if (string? _%str106686%_)
            (let ((_%str106692%_ _%str106686%_))
              (if (char? _%char106687%_)
                  (let ((_%char106702%_ _%char106687%_))
                    (if (nonnegative-fixnum? _%start106688%_)
                        (let ((_%start106712%_ _%start106688%_))
                          (__string-index__%
                           _%str106692%_
                           _%char106702%_
                           _%start106712%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start106688%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                     'contract:
                     'char?
                     'value:
                     _%char106687%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.21-706.24"
               'contract:
               'string?
               'value:
               _%str106686%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str106725%_ _%char106726%_)
        (let ((_%start106728%_ '0))
          (string-index__% _%str106725%_ _%char106726%_ _%start106728%_))))
    (define string-index
      (lambda _g115180_
        (let ((_g115181_ (let () (declare (not safe)) (##length _g115180_))))
          (cond ((let () (declare (not safe)) (##fx= _g115181_ 2))
                 (apply string-index__0 _g115180_))
                ((let () (declare (not safe)) (##fx= _g115181_ 3))
                 (apply string-index__% _g115180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g115180_))))))
    (define __string-rindex__%
      (lambda (_%str108998%_ _%char108999%_ _%start109000%_)
        (let* ((_%str109003%_ _%str108998%_)
               (_%char109011%_ _%char108999%_)
               (_%len109020%_
                (let () (declare (not safe)) (##string-length _%str109003%_)))
               (_%start109022%_
                (if (fixnum? _%start109000%_)
                    _%start109000%_
                    (let () (declare (not safe)) (##fx- _%len109020%_ '1)))))
          (let _%lp109025%_ ((_%k109027%_ _%start109022%_))
            (let ((_%k109029%_ _%k109027%_))
              (if (let () (declare (not safe)) (##fx>= _%k109029%_ '0))
                  (if (eq? _%char109011%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109003%_ _%k109029%_)))
                      _%k109029%_
                      (_%lp109025%_
                       (let () (declare (not safe)) (##fx- _%k109029%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str109046%_ _%char109047%_)
        (let ((_%start109049%_ '#f))
          (__string-rindex__% _%str109046%_ _%char109047%_ _%start109049%_))))
    (define __string-rindex
      (lambda _g115182_
        (let ((_g115183_ (let () (declare (not safe)) (##length _g115182_))))
          (cond ((let () (declare (not safe)) (##fx= _g115183_ 2))
                 (apply __string-rindex__0 _g115182_))
                ((let () (declare (not safe)) (##fx= _g115183_ 3))
                 (apply __string-rindex__% _g115182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g115182_))))))
    (define string-rindex__%
      (lambda (_%str106855%_ _%char106856%_ _%start106857%_)
        (if (string? _%str106855%_)
            (let ((_%str106861%_ _%str106855%_))
              (if (char? _%char106856%_)
                  (let ((_%char106871%_ _%char106856%_))
                    (__string-rindex__%
                     _%str106861%_
                     _%char106871%_
                     _%start106857%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                     'contract:
                     'char?
                     'value:
                     _%char106856%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.22-717.25"
               'contract:
               'string?
               'value:
               _%str106855%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str106884%_ _%char106885%_)
        (let ((_%start106887%_ '#f))
          (string-rindex__% _%str106884%_ _%char106885%_ _%start106887%_))))
    (define string-rindex
      (lambda _g115184_
        (let ((_g115185_ (let () (declare (not safe)) (##length _g115184_))))
          (cond ((let () (declare (not safe)) (##fx= _g115185_ 2))
                 (apply string-rindex__0 _g115184_))
                ((let () (declare (not safe)) (##fx= _g115185_ 3))
                 (apply string-rindex__% _g115184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g115184_))))))
    (define __string-split
      (lambda (_%str108895%_ _%char108896%_)
        (let* ((_%str108899%_ _%str108895%_)
               (_%char108907%_ _%char108896%_)
               (_%len108916%_
                (let () (declare (not safe)) (##string-length _%str108899%_))))
          (let _%lp108918%_ ((_%start108920%_ '0) (_%r108921%_ '()))
            (let* ((_%start108924%_ _%start108920%_)
                   (_%$e108982%_
                    (let* ((_%str108937%_ _%str108899%_)
                           (_%char108940%_ _%char108907%_)
                           (_%start108943%_ _%start108924%_)
                           (_%str108948%_ _%str108937%_)
                           (_%char108962%_ _%char108940%_))
                      (if (nonnegative-fixnum? _%start108943%_)
                          (let ((_%start108972%_ _%start108943%_))
                            (__string-index__%
                             _%str108948%_
                             _%char108962%_
                             _%start108972%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108943%_)
                            '#!void)))))
              (if _%$e108982%_
                  ((lambda (_%end108985%_)
                     (let ((_%end108987%_ _%end108985%_))
                       (_%lp108918%_
                        (let () (declare (not safe)) (##fx+ _%end108987%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str108899%_
                                 _%start108924%_
                                 _%end108987%_))
                              _%r108921%_))))
                   _%$e108982%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108924%_ _%len108916%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108899%_
                                _%start108924%_
                                _%len108916%_)))
                       _%r108921%_)
                      (reverse! _%r108921%_))))))))
    (define string-split
      (lambda (_%str107013%_ _%char107014%_)
        (if (string? _%str107013%_)
            (let ((_%str107018%_ _%str107013%_))
              (if (char? _%char107014%_)
                  (let ((_%char107028%_ _%char107014%_))
                    (__string-split _%str107018%_ _%char107028%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char107014%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str107013%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108745%_ _%join108746%_)
        (letrec ((_%join-length108749%_
                  (lambda (_%strs108833%_ _%jlen108834%_)
                    (let _%lp108836%_ ((_%rest108838%_ _%strs108833%_)
                                       (_%len108839%_ '0))
                      (let* ((_%len108841%_ _%len108839%_)
                             (_%rest108849108857%_ _%rest108838%_)
                             (_%else108851108865%_ (lambda () '0))
                             (_%K108853108883%_
                              (lambda (_%rest108868%_ _%hd108869%_)
                                (if (string? _%hd108869%_)
                                    (let ((_%hd108871%_ _%hd108869%_))
                                      (if (pair? _%rest108868%_)
                                          (_%lp108836%_
                                           _%rest108868%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108871%_))
                                                _%jlen108834%_
                                                _%len108841%_))
                                          (let ((__tmp115186
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108871%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp115186
                                                   _%len108841%_))))
                                    (error '"expected string" _%hd108869%_)))))
                        (if (pair? _%rest108849108857%_)
                            (let ((_%hd108854108886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest108849108857%_)))
                                  (_%tl108855108888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest108849108857%_))))
                              (let* ((_%hd108891%_ _%hd108854108886%_)
                                     (_%rest108893%_ _%tl108855108888%_))
                                (_%K108853108883%_
                                 _%rest108893%_
                                 _%hd108891%_)))
                            (_%else108851108865%_)))))))
          (let* ((_%join108754%_
                  (if (char? _%join108746%_)
                      (let () (declare (not safe)) (##string _%join108746%_))
                      (if (string? _%join108746%_)
                          _%join108746%_
                          (error '"expected string or char" _%join108746%_))))
                 (_%jlen108756%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108754%_)))
                 (_%olen108758%_
                  (_%join-length108749%_ _%strs108745%_ _%jlen108756%_))
                 (_%ostr108760%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108758%_))))
            (let _%lp108763%_ ((_%rest108765%_ _%strs108745%_)
                               (_%k108766%_ '0))
              (let* ((_%k108769%_ _%k108766%_)
                     (_%rest108785108793%_ _%rest108765%_)
                     (_%else108787108801%_ (lambda () '""))
                     (_%K108789108821%_
                      (lambda (_%rest108804%_ _%hd108805%_)
                        (let* ((_%hd108807%_ _%hd108805%_)
                               (_%hdlen108819%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108807%_))))
                          (if (pair? _%rest108804%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108807%_
                                   '0
                                   _%hdlen108819%_
                                   _%ostr108760%_
                                   _%k108769%_))
                                (let ((__tmp115187
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108769%_ _%hdlen108819%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108754%_
                                   '0
                                   _%jlen108756%_
                                   _%ostr108760%_
                                   __tmp115187))
                                (_%lp108763%_
                                 _%rest108804%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108769%_
                                          _%hdlen108819%_
                                          _%jlen108756%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108807%_
                                   '0
                                   _%hdlen108819%_
                                   _%ostr108760%_
                                   _%k108769%_))
                                _%ostr108760%_))))))
                (if (pair? _%rest108785108793%_)
                    (let ((_%hd108790108824%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest108785108793%_)))
                          (_%tl108791108826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest108785108793%_))))
                      (let* ((_%hd108829%_ _%hd108790108824%_)
                             (_%rest108831%_ _%tl108791108826%_))
                        (_%K108789108821%_ _%rest108831%_ _%hd108829%_)))
                    (_%else108787108801%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108685%_ _%port108686%_ _%start108687%_ _%end108688%_)
        (let* ((_%bytes108691%_ _%bytes108685%_)
               (_%port108699%_ _%port108686%_)
               (_%start108707%_ _%start108687%_)
               (_%end108715%_ _%end108688%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108691%_
           _%start108707%_
           _%end108715%_
           _%port108699%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108727%_ _%port108728%_)
        (let* ((_%start108730%_ '0)
               (_%end108732%_ (u8vector-length _%bytes108727%_)))
          (__read-u8vector__%
           _%bytes108727%_
           _%port108728%_
           _%start108730%_
           _%end108732%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108734%_ _%port108735%_ _%start108736%_)
        (let ((_%end108738%_ (u8vector-length _%bytes108734%_)))
          (__read-u8vector__%
           _%bytes108734%_
           _%port108735%_
           _%start108736%_
           _%end108738%_))))
    (define __read-u8vector
      (lambda _g115188_
        (let ((_g115189_ (let () (declare (not safe)) (##length _g115188_))))
          (cond ((let () (declare (not safe)) (##fx= _g115189_ 2))
                 (apply __read-u8vector__0 _g115188_))
                ((let () (declare (not safe)) (##fx= _g115189_ 3))
                 (apply __read-u8vector__1 _g115188_))
                ((let () (declare (not safe)) (##fx= _g115189_ 4))
                 (apply __read-u8vector__% _g115188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g115188_))))))
    (define read-u8vector__%
      (lambda (_%bytes107159%_ _%port107160%_ _%start107161%_ _%end107162%_)
        (if (u8vector? _%bytes107159%_)
            (let ((_%bytes107166%_ _%bytes107159%_))
              (if (input-port? _%port107160%_)
                  (let ((_%port107176%_ _%port107160%_))
                    (if ((lambda (_%o107185%_)
                           (and (fixnum? _%o107185%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o107185%_ '0))
                                (let ((__tmp115190
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes107166%_))))
                                  (declare (not safe))
                                  (##fx< _%o107185%_ __tmp115190))))
                         _%start107161%_)
                        (let ((_%start107189%_ _%start107161%_))
                          (if ((lambda (_%o107198%_)
                                 (and (fixnum? _%o107198%_)
                                      (let ((__tmp115191
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes107166%_))))
                                        (declare (not safe))
                                        (##fx<= _%start107189%_
                                                _%o107198%_
                                                __tmp115191))))
                               _%end107162%_)
                              (let ((_%end107202%_ _%end107162%_))
                                (__read-u8vector__%
                                 _%bytes107166%_
                                 _%port107176%_
                                 _%start107189%_
                                 _%end107202%_))
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
                                 _%end107162%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start107161%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port107160%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@792.22-792.27"
               'contract:
               'u8vector?
               'value:
               _%bytes107159%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes107215%_ _%port107216%_)
        (let* ((_%start107218%_ '0)
               (_%end107220%_ (u8vector-length _%bytes107215%_)))
          (read-u8vector__%
           _%bytes107215%_
           _%port107216%_
           _%start107218%_
           _%end107220%_))))
    (define read-u8vector__1
      (lambda (_%bytes107222%_ _%port107223%_ _%start107224%_)
        (let ((_%end107226%_ (u8vector-length _%bytes107222%_)))
          (read-u8vector__%
           _%bytes107222%_
           _%port107223%_
           _%start107224%_
           _%end107226%_))))
    (define read-u8vector
      (lambda _g115192_
        (let ((_g115193_ (let () (declare (not safe)) (##length _g115192_))))
          (cond ((let () (declare (not safe)) (##fx= _g115193_ 2))
                 (apply read-u8vector__0 _g115192_))
                ((let () (declare (not safe)) (##fx= _g115193_ 3))
                 (apply read-u8vector__1 _g115192_))
                ((let () (declare (not safe)) (##fx= _g115193_ 4))
                 (apply read-u8vector__% _g115192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g115192_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108624%_ _%port108625%_ _%start108626%_ _%end108627%_)
        (let* ((_%bytes108630%_ _%bytes108624%_)
               (_%port108638%_ _%port108625%_)
               (_%start108646%_ _%start108626%_)
               (_%end108654%_ _%end108627%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108630%_
           _%start108646%_
           _%end108654%_
           _%port108638%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108666%_ _%port108667%_)
        (let* ((_%start108669%_ '0)
               (_%end108671%_ (u8vector-length _%bytes108666%_)))
          (__write-u8vector__%
           _%bytes108666%_
           _%port108667%_
           _%start108669%_
           _%end108671%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108673%_ _%port108674%_ _%start108675%_)
        (let ((_%end108677%_ (u8vector-length _%bytes108673%_)))
          (__write-u8vector__%
           _%bytes108673%_
           _%port108674%_
           _%start108675%_
           _%end108677%_))))
    (define __write-u8vector
      (lambda _g115194_
        (let ((_g115195_ (let () (declare (not safe)) (##length _g115194_))))
          (cond ((let () (declare (not safe)) (##fx= _g115195_ 2))
                 (apply __write-u8vector__0 _g115194_))
                ((let () (declare (not safe)) (##fx= _g115195_ 3))
                 (apply __write-u8vector__1 _g115194_))
                ((let () (declare (not safe)) (##fx= _g115195_ 4))
                 (apply __write-u8vector__% _g115194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g115194_))))))
    (define write-u8vector__%
      (lambda (_%bytes107354%_ _%port107355%_ _%start107356%_ _%end107357%_)
        (if (u8vector? _%bytes107354%_)
            (let ((_%bytes107361%_ _%bytes107354%_))
              (if (output-port? _%port107355%_)
                  (let* ((_%port107371%_ _%port107355%_)
                         (_%start107380%_ _%start107356%_))
                    (if ((lambda (_%o107388%_)
                           (and (fixnum? _%o107388%_)
                                (let ((__tmp115196
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes107361%_))))
                                  (declare (not safe))
                                  (##fx<= _%start107380%_
                                          _%o107388%_
                                          __tmp115196))))
                         _%end107357%_)
                        (let ((_%end107392%_ _%end107357%_))
                          (__write-u8vector__%
                           _%bytes107361%_
                           _%port107371%_
                           _%start107380%_
                           _%end107392%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end107357%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port107355%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@802.23-802.28"
               'contract:
               'u8vector?
               'value:
               _%bytes107354%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes107405%_ _%port107406%_)
        (let* ((_%start107408%_ '0)
               (_%end107410%_ (u8vector-length _%bytes107405%_)))
          (write-u8vector__%
           _%bytes107405%_
           _%port107406%_
           _%start107408%_
           _%end107410%_))))
    (define write-u8vector__1
      (lambda (_%bytes107412%_ _%port107413%_ _%start107414%_)
        (let ((_%end107416%_ (u8vector-length _%bytes107412%_)))
          (write-u8vector__%
           _%bytes107412%_
           _%port107413%_
           _%start107414%_
           _%end107416%_))))
    (define write-u8vector
      (lambda _g115197_
        (let ((_g115198_ (let () (declare (not safe)) (##length _g115197_))))
          (cond ((let () (declare (not safe)) (##fx= _g115198_ 2))
                 (apply write-u8vector__0 _g115197_))
                ((let () (declare (not safe)) (##fx= _g115198_ 3))
                 (apply write-u8vector__1 _g115197_))
                ((let () (declare (not safe)) (##fx= _g115198_ 4))
                 (apply write-u8vector__% _g115197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g115197_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag108592%_
               _%dbg-exprs108593%_
               _%dbg-thunks108594%_
               _%expr108595%_
               _%thunk108596%_)
        (letrec ((_%o108598%_ (current-output-port))
                 (_%e108599%_ (current-error-port))
                 (_%p108600%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f108601%_
                  (lambda ()
                    (force-output _%o108598%_)
                    (force-output _%e108599%_)))
                 (_%d108602%_
                  (lambda (_%x108609%_) (display _%x108609%_ _%e108599%_)))
                 (_%w108603%_
                  (lambda (_%x108611%_) (_%p108600%_ _%x108611%_ _%e108599%_)))
                 (_%n108604%_ (lambda () (newline _%e108599%_)))
                 (_%v108605%_
                  (lambda (_%l108614%_)
                    (for-each
                     (lambda (_%x108616%_)
                       (_%d108602%_ '" ")
                       (_%w108603%_ _%x108616%_))
                     _%l108614%_)
                    (_%n108604%_)))
                 (_%x108606%_
                  (lambda (_%expr108618%_ _%thunk108619%_)
                    (_%f108601%_)
                    (_%d108602%_ '"  ")
                    (_%w108603%_ _%expr108618%_)
                    (_%d108602%_ '" =>")
                    (call-with-values
                     _%thunk108619%_
                     (lambda _%x108621%_
                       (_%v108605%_ _%x108621%_)
                       (_%f108601%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x108621%_)))))))
          (if _%tag108592%_
              (begin
                (if (eq? _%tag108592%_ '#!void)
                    '#!void
                    (begin
                      (_%f108601%_)
                      (_%d108602%_ _%tag108592%_)
                      (_%n108604%_)))
                (for-each _%x108606%_ _%dbg-exprs108593%_ _%dbg-thunks108594%_)
                (if _%thunk108596%_
                    (_%x108606%_ _%expr108595%_ _%thunk108596%_)
                    '#!void))
              (if _%thunk108596%_ (_%thunk108596%_) '#!void)))))))
