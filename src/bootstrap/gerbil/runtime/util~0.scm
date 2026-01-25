(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1769384626)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args98336%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args98336%_))
          (newline))))
    (define display*
      (lambda _%args98333%_
        (let () (declare (not safe)) (##for-each display _%args98333%_))))
    (define file-newer?
      (lambda (_%file198308%_ _%file298309%_)
        (if (string? _%file198308%_)
            (let ((_%file198313%_ _%file198308%_))
              (if (string? _%file298309%_)
                  (let ((_%file298323%_ _%file298309%_))
                    (__file-newer? _%file198313%_ _%file298323%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298309%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198308%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file198256%_ _%file298257%_)
        (let* ((_%file198260%_ _%file198256%_) (_%file298268%_ _%file298257%_))
          (letrec ((_%modification-time98277%_
                    (lambda (_%file98296%_)
                      (let ((_%file98299%_ _%file98296%_))
                        (_%__modification-time98278%_ _%file98299%_))))
                   (_%__modification-time98278%_
                    (lambda (_%file98280%_)
                      (let* ((_%file98283%_ _%file98280%_)
                             (__tmp100098
                              (let ((__tmp100099
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file98283%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp100099))))
                        (declare (not safe))
                        (##time->seconds __tmp100098)))))
            (let ((__tmp100101 (_%__modification-time98278%_ _%file198260%_))
                  (__tmp100100 (_%__modification-time98278%_ _%file298268%_)))
              (declare (not safe))
              (##fl> __tmp100101 __tmp100100))))))
    (define create-directory*__%
      (lambda (_%dir98221%_ _%perms98222%_)
        (if (string? _%dir98221%_)
            (let ((_%dir98226%_ _%dir98221%_))
              (if (fixnum? _%perms98222%_)
                  (let ((_%perms98236%_ _%perms98222%_))
                    (__create-directory*__% _%dir98226%_ _%perms98236%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98222%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98221%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98249%_)
        (let ((_%perms98251%_ '493))
          (create-directory*__% _%dir98249%_ _%perms98251%_))))
    (define create-directory*
      (lambda _g100102_
        (let ((_g100103_ (let () (declare (not safe)) (##length _g100102_))))
          (cond ((let () (declare (not safe)) (##fx= _g100103_ 1))
                 (apply create-directory*__0 _g100102_))
                ((let () (declare (not safe)) (##fx= _g100103_ 2))
                 (apply create-directory*__% _g100102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g100102_))))))
    (define __create-directory*__%
      (lambda (_%dir98145%_ _%perms98146%_)
        (let* ((_%dir98149%_ _%dir98145%_) (_%perms98157%_ _%perms98146%_))
          (letrec ((_%create198166%_
                    (lambda (_%path98198%_)
                      (let ((_%path98201%_ _%path98198%_))
                        (_%__create198167%_ _%path98201%_))))
                   (_%__create198167%_
                    (lambda (_%path98179%_)
                      (let ((_%path98182%_ _%path98179%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path98182%_))
                            (if (eq? (file-type _%path98182%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path98182%_))
                            (if _%perms98157%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path98182%_
                                             (cons 'permissions:
                                                   (cons _%perms98157%_
                                                         '())))))
                                (create-directory _%path98182%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir98149%_))
                '#!void
                (let _%lp98169%_ ((_%start98171%_ '0))
                  (let ((_%$e98173%_
                         (__string-index__% _%dir98149%_ '#\/ _%start98171%_)))
                    (if _%$e98173%_
                        ((lambda (_%x98176%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x98176%_ '0))
                               (_%__create198167%_
                                (substring _%dir98149%_ '0 _%x98176%_))
                               '#!void)
                           (_%lp98169%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x98176%_ '1))))
                         _%$e98173%_)
                        (_%__create198167%_ _%dir98149%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir98213%_)
        (let ((_%perms98215%_ '493))
          (__create-directory*__% _%dir98213%_ _%perms98215%_))))
    (define __create-directory*
      (lambda _g100104_
        (let ((_g100105_ (let () (declare (not safe)) (##length _g100104_))))
          (cond ((let () (declare (not safe)) (##fx= _g100105_ 1))
                 (apply __create-directory*__0 _g100104_))
                ((let () (declare (not safe)) (##fx= _g100105_ 2))
                 (apply __create-directory*__% _g100104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g100104_))))))
    (define move-file__%
      (lambda (_%src98096%_ _%dest98097%_ _%replace?98098%_)
        (if (string? _%src98096%_)
            (let ((_%src98102%_ _%src98096%_))
              (if (string? _%dest98097%_)
                  (let ((_%dest98112%_ _%dest98097%_))
                    (if (boolean? _%replace?98098%_)
                        (let ((_%replace?98122%_ _%replace?98098%_))
                          (__move-file__%
                           _%src98102%_
                           _%dest98112%_
                           _%replace?98122%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98098%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98097%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98096%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src98135%_ _%dest98136%_)
        (let ((_%replace?98138%_ '#t))
          (move-file__% _%src98135%_ _%dest98136%_ _%replace?98138%_))))
    (define move-file
      (lambda _g100106_
        (let ((_g100107_ (let () (declare (not safe)) (##length _g100106_))))
          (cond ((let () (declare (not safe)) (##fx= _g100107_ 2))
                 (apply move-file__0 _g100106_))
                ((let () (declare (not safe)) (##fx= _g100107_ 3))
                 (apply move-file__% _g100106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g100106_))))))
    (define __move-file__%
      (lambda (_%src98039%_ _%dest98040%_ _%replace?98041%_)
        (let* ((_%src98044%_ _%src98039%_)
               (_%dest98052%_ _%dest98040%_)
               (_%replace?98060%_ _%replace?98041%_))
          (letrec ((_%force-move-it98069%_
                    (lambda ()
                      (let ((_%tmp98075%_
                             (if _%replace?98060%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest98052%_))
                                     (let ((__tmp100108
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest98052%_
                                        '"."
                                        __tmp100108))
                                     '#f)
                                 '#f)))
                        (if _%tmp98075%_
                            (rename-file _%dest98052%_ _%tmp98075%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e98077%_)
                           (if _%tmp98075%_
                               (rename-file _%tmp98075%_ _%dest98052%_ '#t)
                               '#!void)
                           (raise _%e98077%_))
                         (lambda ()
                           (let ((_%fi98080%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src98044%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi98080%_))
                                      'symbolic-link)
                                 (let ((__tmp100109
                                        (path-normalize _%src98044%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp100109
                                    _%dest98052%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src98044%_ _%dest98052%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src98044%_))
                           (if _%tmp98075%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp98075%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e98071%_)
               (if (let () (declare (not safe)) (##file-exists? _%src98044%_))
                   (_%force-move-it98069%_)
                   (raise _%e98071%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src98044%_
                  _%dest98052%_
                  _%replace?98060%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src98086%_ _%dest98087%_)
        (let ((_%replace?98089%_ '#t))
          (__move-file__% _%src98086%_ _%dest98087%_ _%replace?98089%_))))
    (define __move-file
      (lambda _g100110_
        (let ((_g100111_ (let () (declare (not safe)) (##length _g100110_))))
          (cond ((let () (declare (not safe)) (##fx= _g100111_ 2))
                 (apply __move-file__0 _g100110_))
                ((let () (declare (not safe)) (##fx= _g100111_ 3))
                 (apply __move-file__% _g100110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g100110_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore98035%_ '#t))
    (define true? (lambda (_%obj98032%_) (eq? _%obj98032%_ '#t)))
    (define false (lambda _%ignore98029%_ '#f))
    (define void (lambda _%ignore98026%_ '#!void))
    (define void? (lambda (_%obj98023%_) (eq? _%obj98023%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj98020%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj98020%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj98017%_) (eq? _%obj98017%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj98014%_) (eq? _%obj98014%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj98011%_) (eq? _%obj98011%_ '#!optional)))
    (define immediate?
      (lambda (_%obj98008%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj98008%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj98005%_)
        (if (fixnum? _%obj98005%_)
            (let () (declare (not safe)) (##fx>= _%obj98005%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj97999%_)
        (let ((_%$e98002%_ (pair? _%obj97999%_)))
          (if _%$e98002%_ _%$e98002%_ (null? _%obj97999%_)))))
    (define values-count
      (lambda (_%obj97996%_)
        (if (let () (declare (not safe)) (##values? _%obj97996%_))
            (let () (declare (not safe)) (##values-length _%obj97996%_))
            '1)))
    (define values-ref
      (lambda (_%obj97981%_ _%k97982%_)
        (if (fixnum? _%k97982%_)
            (let ((_%k97986%_ _%k97982%_))
              (__values-ref _%obj97981%_ _%k97986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k97982%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj97968%_ _%k97969%_)
        (let ((_%k97972%_ _%k97969%_))
          (if (let () (declare (not safe)) (##values? _%obj97968%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj97968%_ _%k97972%_))
              _%obj97968%_))))
    (define values->list
      (lambda (_%obj97965%_)
        (if (let () (declare (not safe)) (##values? _%obj97965%_))
            (let () (declare (not safe)) (##values->list _%obj97965%_))
            (list _%obj97965%_))))
    (define foldl1
      (lambda (_%f97949%_ _%iv97950%_ _%lst97951%_)
        (if (procedure? _%f97949%_)
            (let ((_%f97955%_ _%f97949%_))
              (__foldl1 _%f97955%_ _%iv97950%_ _%lst97951%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f97949%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f97897%_ _%iv97898%_ _%lst97899%_)
        (let ((_%f97902%_ _%f97897%_))
          (let _%lp97911%_ ((_%rest97913%_ _%lst97899%_)
                            (_%r97914%_ _%iv97898%_))
            (let* ((_%rest9791597923%_ _%rest97913%_)
                   (_%else9791797931%_ (lambda () _%r97914%_))
                   (_%K9791997937%_
                    (lambda (_%rest97934%_ _%x97935%_)
                      (_%lp97911%_
                       _%rest97934%_
                       (let ()
                         (declare (not safe))
                         (_%f97902%_ _%x97935%_ _%r97914%_))))))
              (if (pair? _%rest9791597923%_)
                  (let ((_%hd9792097940%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9791597923%_)))
                        (_%tl9792197942%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9791597923%_))))
                    (let* ((_%x97945%_ _%hd9792097940%_)
                           (_%rest97947%_ _%tl9792197942%_))
                      (_%K9791997937%_ _%rest97947%_ _%x97945%_)))
                  (_%else9791797931%_)))))))
    (define foldl2
      (lambda (_%f97880%_ _%iv97881%_ _%lst197882%_ _%lst297883%_)
        (if (procedure? _%f97880%_)
            (let ((_%f97887%_ _%f97880%_))
              (__foldl2 _%f97887%_ _%iv97881%_ _%lst197882%_ _%lst297883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f97880%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f97793%_ _%iv97794%_ _%lst197795%_ _%lst297796%_)
        (let ((_%f97799%_ _%f97793%_))
          (let _%lp97808%_ ((_%rest197810%_ _%lst197795%_)
                            (_%rest297811%_ _%lst297796%_)
                            (_%r97812%_ _%iv97794%_))
            (let* ((_%rest19781397821%_ _%rest197810%_)
                   (_%else9781597829%_ (lambda () _%r97812%_))
                   (_%K9781797868%_
                    (lambda (_%rest197832%_ _%x197833%_)
                      (let* ((_%rest29783497842%_ _%rest297811%_)
                             (_%else9783697850%_ (lambda () _%r97812%_))
                             (_%K9783897856%_
                              (lambda (_%rest297853%_ _%x297854%_)
                                (_%lp97808%_
                                 _%rest197832%_
                                 _%rest297853%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f97799%_
                                    _%x197833%_
                                    _%x297854%_
                                    _%r97812%_))))))
                        (if (pair? _%rest29783497842%_)
                            (let ((_%hd9783997859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29783497842%_)))
                                  (_%tl9784097861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29783497842%_))))
                              (let* ((_%x297864%_ _%hd9783997859%_)
                                     (_%rest297866%_ _%tl9784097861%_))
                                (_%K9783897856%_ _%rest297866%_ _%x297864%_)))
                            (_%else9783697850%_))))))
              (if (pair? _%rest19781397821%_)
                  (let ((_%hd9781897871%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19781397821%_)))
                        (_%tl9781997873%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19781397821%_))))
                    (let* ((_%x197876%_ _%hd9781897871%_)
                           (_%rest197878%_ _%tl9781997873%_))
                      (_%K9781797868%_ _%rest197878%_ _%x197876%_)))
                  (_%else9781597829%_)))))))
    (define foldl
      (lambda _g100112_
        (let ((_g100113_ (let () (declare (not safe)) (##length _g100112_))))
          (cond ((let () (declare (not safe)) (##fx= _g100113_ 3))
                 (apply foldl1 _g100112_))
                ((let () (declare (not safe)) (##fx= _g100113_ 4))
                 (apply foldl2 _g100112_))
                ((let () (declare (not safe)) (##fx>= _g100113_ 4))
                 (apply foldl* _g100112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g100112_))))))
    (define foldl*
      (lambda (_%f97762%_ _%iv97763%_ . _%rest97764%_)
        (if (procedure? _%f97762%_)
            (let ((_%f97768%_ _%f97762%_))
              (declare (not safe))
              (##apply __foldl* _%f97768%_ _%iv97763%_ _%rest97764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f97762%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f97740%_ _%iv97741%_ . _%rest97742%_)
        (let ((_%f97745%_ _%f97740%_))
          (let _%recur97754%_ ((_%iv97756%_ _%iv97741%_)
                               (_%rest97757%_ _%rest97742%_))
            (if (__andmap1 pair? _%rest97757%_)
                (_%recur97754%_
                 (let ((__tmp100114
                        (__foldr1
                         (lambda (_%xs97759%_ _%r97760%_)
                           (cons (car _%xs97759%_) _%r97760%_))
                         (list _%iv97756%_)
                         _%rest97757%_)))
                   (declare (not safe))
                   (##apply _%f97745%_ __tmp100114))
                 (map cdr _%rest97757%_))
                _%iv97756%_)))))
    (define foldr1
      (lambda (_%f97724%_ _%iv97725%_ _%lst97726%_)
        (if (procedure? _%f97724%_)
            (let ((_%f97730%_ _%f97724%_))
              (__foldr1 _%f97730%_ _%iv97725%_ _%lst97726%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f97724%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f97673%_ _%iv97674%_ _%lst97675%_)
        (let ((_%f97678%_ _%f97673%_))
          (let _%recur97687%_ ((_%rest97689%_ _%lst97675%_))
            (let* ((_%rest9769097698%_ _%rest97689%_)
                   (_%else9769297706%_ (lambda () _%iv97674%_))
                   (_%K9769497712%_
                    (lambda (_%rest97709%_ _%x97710%_)
                      (let ((__tmp100115 (_%recur97687%_ _%rest97709%_)))
                        (declare (not safe))
                        (_%f97678%_ _%x97710%_ __tmp100115)))))
              (if (pair? _%rest9769097698%_)
                  (let ((_%hd9769597715%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9769097698%_)))
                        (_%tl9769697717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9769097698%_))))
                    (let* ((_%x97720%_ _%hd9769597715%_)
                           (_%rest97722%_ _%tl9769697717%_))
                      (_%K9769497712%_ _%rest97722%_ _%x97720%_)))
                  (_%else9769297706%_)))))))
    (define foldr2
      (lambda (_%f97656%_ _%iv97657%_ _%lst197658%_ _%lst297659%_)
        (if (procedure? _%f97656%_)
            (let ((_%f97663%_ _%f97656%_))
              (__foldr2 _%f97663%_ _%iv97657%_ _%lst197658%_ _%lst297659%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f97656%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f97570%_ _%iv97571%_ _%lst197572%_ _%lst297573%_)
        (let ((_%f97576%_ _%f97570%_))
          (let _%recur97585%_ ((_%rest197587%_ _%lst197572%_)
                               (_%rest297588%_ _%lst297573%_))
            (let* ((_%rest19758997597%_ _%rest197587%_)
                   (_%else9759197605%_ (lambda () _%iv97571%_))
                   (_%K9759397644%_
                    (lambda (_%rest197608%_ _%x197609%_)
                      (let* ((_%rest29761097618%_ _%rest297588%_)
                             (_%else9761297626%_ (lambda () _%iv97571%_))
                             (_%K9761497632%_
                              (lambda (_%rest297629%_ _%x297630%_)
                                (let ((__tmp100116
                                       (_%recur97585%_
                                        _%rest197608%_
                                        _%rest297629%_)))
                                  (declare (not safe))
                                  (_%f97576%_
                                   _%x197609%_
                                   _%x297630%_
                                   __tmp100116)))))
                        (if (pair? _%rest29761097618%_)
                            (let ((_%hd9761597635%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29761097618%_)))
                                  (_%tl9761697637%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29761097618%_))))
                              (let* ((_%x297640%_ _%hd9761597635%_)
                                     (_%rest297642%_ _%tl9761697637%_))
                                (_%K9761497632%_ _%rest297642%_ _%x297640%_)))
                            (_%else9761297626%_))))))
              (if (pair? _%rest19758997597%_)
                  (let ((_%hd9759497647%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19758997597%_)))
                        (_%tl9759597649%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19758997597%_))))
                    (let* ((_%x197652%_ _%hd9759497647%_)
                           (_%rest197654%_ _%tl9759597649%_))
                      (_%K9759397644%_ _%rest197654%_ _%x197652%_)))
                  (_%else9759197605%_)))))))
    (define foldr
      (lambda _g100117_
        (let ((_g100118_ (let () (declare (not safe)) (##length _g100117_))))
          (cond ((let () (declare (not safe)) (##fx= _g100118_ 3))
                 (apply foldr1 _g100117_))
                ((let () (declare (not safe)) (##fx= _g100118_ 4))
                 (apply foldr2 _g100117_))
                ((let () (declare (not safe)) (##fx>= _g100118_ 4))
                 (apply foldr* _g100117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g100117_))))))
    (define foldr*
      (lambda (_%f97539%_ _%iv97540%_ . _%rest97541%_)
        (if (procedure? _%f97539%_)
            (let ((_%f97545%_ _%f97539%_))
              (declare (not safe))
              (##apply __foldr* _%f97545%_ _%iv97540%_ _%rest97541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f97539%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f97518%_ _%iv97519%_ . _%rest97520%_)
        (let ((_%f97523%_ _%f97518%_))
          (let _%recur97532%_ ((_%rest97534%_ _%rest97520%_))
            (if (__andmap1 pair? _%rest97534%_)
                (let ((__tmp100119
                       (__foldr1
                        (lambda (_%xs97536%_ _%r97537%_)
                          (cons (car _%xs97536%_) _%r97537%_))
                        (list (_%recur97532%_ (map cdr _%rest97534%_)))
                        _%rest97534%_)))
                  (declare (not safe))
                  (##apply _%f97523%_ __tmp100119))
                _%iv97519%_)))))
    (define remove-nulls!
      (lambda (_%l97405%_)
        (let* ((_%l9740697419%_ _%l97405%_)
               (_%E9741097423%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9740697419%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9741597508%_
                 (lambda (_%r97506%_) (remove-nulls! _%r97506%_)))
                (_%K9741297495%_
                 (lambda (_%r97435%_)
                   (let _%loop97437%_ ((_%l97439%_ _%l97405%_)
                                       (_%r97440%_ _%r97435%_))
                     (let* ((_%r9744197454%_ _%r97440%_)
                            (_%E9744597458%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9744197454%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9745097485%_
                              (lambda (_%rr97483%_)
                                (let ((__tmp100121 _%l97439%_)
                                      (__tmp100120
                                       (remove-nulls! _%rr97483%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp100121 __tmp100120))))
                             (_%K9744797472%_
                              (lambda (_%rr97470%_)
                                (_%loop97437%_ _%r97440%_ _%rr97470%_)))
                             (_%K9744697463%_ (lambda () '#!void)))
                         (if (pair? _%r9744197454%_)
                             (let ((_%tl9745297490%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9744197454%_)))
                                   (_%hd9745197488%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9744197454%_))))
                               (if (null? _%hd9745197488%_)
                                   (let ((_%rr97493%_ _%tl9745297490%_))
                                     (_%K9745097485%_ _%rr97493%_))
                                   (let ((_%rr97478%_ _%tl9745297490%_))
                                     (_%K9744797472%_ _%rr97478%_))))
                             '#!void))))
                   _%l97405%_))
                (_%K9741197428%_ (lambda () _%l97405%_)))
            (if (pair? _%l9740697419%_)
                (let ((_%tl9741797513%_
                       (let () (declare (not safe)) (##cdr _%l9740697419%_)))
                      (_%hd9741697511%_
                       (let () (declare (not safe)) (##car _%l9740697419%_))))
                  (if (null? _%hd9741697511%_)
                      (let ((_%r97516%_ _%tl9741797513%_))
                        (remove-nulls! _%r97516%_))
                      (let ((_%r97501%_ _%tl9741797513%_))
                        (_%K9741297495%_ _%r97501%_))))
                (_%K9741197428%_))))))
    (define append1!
      (lambda (_%l97390%_ _%x97391%_)
        (let ((_%l297394%_ (cons _%x97391%_ '())))
          (if (pair? _%l97390%_)
              (let ((_%l97396%_ _%l97390%_))
                (let ((__tmp100122
                       (let () (declare (not safe)) (##last-pair _%l97396%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp100122 _%l297394%_))
                _%l97396%_)
              _%l297394%_))))
    (define append-reverse-until
      (lambda (_%pred97374%_ _%rhead97375%_ _%tail97376%_)
        (if (procedure? _%pred97374%_)
            (let ((_%pred97380%_ _%pred97374%_))
              (__append-reverse-until
               _%pred97380%_
               _%rhead97375%_
               _%tail97376%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred97374%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred97316%_ _%rhead97317%_ _%tail97318%_)
        (let ((_%pred97321%_ _%pred97316%_))
          (let _%loop97330%_ ((_%rhead97332%_ _%rhead97317%_)
                              (_%tail97333%_ _%tail97318%_))
            (let* ((_%rhead9733597344%_ _%rhead97332%_)
                   (_%E9733897348%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9733597344%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9734297371%_ (lambda () (values '() _%tail97333%_)))
                    (_%K9733997355%_
                     (lambda (_%r97352%_ _%a97353%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred97321%_ _%a97353%_))
                           (values _%rhead97332%_ _%tail97333%_)
                           (_%loop97330%_
                            _%r97352%_
                            (cons _%a97353%_ _%tail97333%_))))))
                (let ((_%try-match9733797367%_
                       (lambda ()
                         (if (pair? _%rhead9733597344%_)
                             (let ((_%tl9734197360%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9733597344%_)))
                                   (_%hd9734097358%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9733597344%_))))
                               (let ((_%a97363%_ _%hd9734097358%_)
                                     (_%r97365%_ _%tl9734197360%_))
                                 (_%K9733997355%_ _%r97365%_ _%a97363%_)))
                             (_%E9733897348%_)))))
                  (if (null? _%rhead9733597344%_)
                      (_%K9734297371%_)
                      (_%try-match9733797367%_)))))))))
    (define andmap1
      (lambda (_%f97301%_ _%lst97302%_)
        (if (procedure? _%f97301%_)
            (let ((_%f97306%_ _%f97301%_)) (__andmap1 _%f97306%_ _%lst97302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f97301%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f97250%_ _%lst97251%_)
        (let ((_%f97254%_ _%f97250%_))
          (let _%lp97263%_ ((_%rest97265%_ _%lst97251%_))
            (let* ((_%rest9726797275%_ _%rest97265%_)
                   (_%else9726997283%_ (lambda () '#t))
                   (_%K9727197289%_
                    (lambda (_%rest97286%_ _%x97287%_)
                      (if (let () (declare (not safe)) (_%f97254%_ _%x97287%_))
                          (_%lp97263%_ _%rest97286%_)
                          '#f))))
              (if (pair? _%rest9726797275%_)
                  (let ((_%hd9727297292%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9726797275%_)))
                        (_%tl9727397294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9726797275%_))))
                    (let* ((_%x97297%_ _%hd9727297292%_)
                           (_%rest97299%_ _%tl9727397294%_))
                      (_%K9727197289%_ _%rest97299%_ _%x97297%_)))
                  (_%else9726997283%_)))))))
    (define andmap2
      (lambda (_%f97234%_ _%lst197235%_ _%lst297236%_)
        (if (procedure? _%f97234%_)
            (let ((_%f97240%_ _%f97234%_))
              (__andmap2 _%f97240%_ _%lst197235%_ _%lst297236%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f97234%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f97148%_ _%lst197149%_ _%lst297150%_)
        (let ((_%f97153%_ _%f97148%_))
          (let _%lp97162%_ ((_%rest197164%_ _%lst197149%_)
                            (_%rest297165%_ _%lst297150%_))
            (let* ((_%rest19716797175%_ _%rest197164%_)
                   (_%else9716997183%_ (lambda () '#t))
                   (_%K9717197222%_
                    (lambda (_%rest197186%_ _%x197187%_)
                      (let* ((_%rest29718897196%_ _%rest297165%_)
                             (_%else9719097204%_ (lambda () '#t))
                             (_%K9719297210%_
                              (lambda (_%rest297207%_ _%x297208%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f97153%_ _%x197187%_ _%x297208%_))
                                    (_%lp97162%_ _%rest197186%_ _%rest297207%_)
                                    '#f))))
                        (if (pair? _%rest29718897196%_)
                            (let ((_%hd9719397213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29718897196%_)))
                                  (_%tl9719497215%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29718897196%_))))
                              (let* ((_%x297218%_ _%hd9719397213%_)
                                     (_%rest297220%_ _%tl9719497215%_))
                                (_%K9719297210%_ _%rest297220%_ _%x297218%_)))
                            (_%else9719097204%_))))))
              (if (pair? _%rest19716797175%_)
                  (let ((_%hd9717297225%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19716797175%_)))
                        (_%tl9717397227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19716797175%_))))
                    (let* ((_%x197230%_ _%hd9717297225%_)
                           (_%rest197232%_ _%tl9717397227%_))
                      (_%K9717197222%_ _%rest197232%_ _%x197230%_)))
                  (_%else9716997183%_)))))))
    (define andmap
      (lambda _g100123_
        (let ((_g100124_ (let () (declare (not safe)) (##length _g100123_))))
          (cond ((let () (declare (not safe)) (##fx= _g100124_ 2))
                 (apply andmap1 _g100123_))
                ((let () (declare (not safe)) (##fx= _g100124_ 3))
                 (apply andmap2 _g100123_))
                ((let () (declare (not safe)) (##fx>= _g100124_ 3))
                 (apply andmap* _g100123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g100123_))))))
    (define andmap*
      (lambda (_%f97121%_ . _%rest97122%_)
        (if (procedure? _%f97121%_)
            (let ((_%f97126%_ _%f97121%_))
              (declare (not safe))
              (##apply __andmap* _%f97126%_ _%rest97122%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f97121%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f97103%_ . _%rest97104%_)
        (let ((_%f97107%_ _%f97103%_))
          (let _%recur97116%_ ((_%rest97118%_ _%rest97104%_))
            (if (__andmap1 pair? _%rest97118%_)
                (if (let ((__tmp100125 (map car _%rest97118%_)))
                      (declare (not safe))
                      (##apply _%f97107%_ __tmp100125))
                    (_%recur97116%_ (map cdr _%rest97118%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f97088%_ _%lst97089%_)
        (if (procedure? _%f97088%_)
            (let ((_%f97093%_ _%f97088%_)) (__ormap1 _%f97093%_ _%lst97089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f97088%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f97035%_ _%lst97036%_)
        (let ((_%f97039%_ _%f97035%_))
          (let _%lp97048%_ ((_%rest97050%_ _%lst97036%_))
            (let* ((_%rest9705197059%_ _%rest97050%_)
                   (_%else9705397067%_ (lambda () '#f))
                   (_%K9705597076%_
                    (lambda (_%rest97070%_ _%x97071%_)
                      (let ((_%$e97073%_
                             (let ()
                               (declare (not safe))
                               (_%f97039%_ _%x97071%_))))
                        (if _%$e97073%_
                            _%$e97073%_
                            (_%lp97048%_ _%rest97070%_))))))
              (if (pair? _%rest9705197059%_)
                  (let ((_%hd9705697079%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9705197059%_)))
                        (_%tl9705797081%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9705197059%_))))
                    (let* ((_%x97084%_ _%hd9705697079%_)
                           (_%rest97086%_ _%tl9705797081%_))
                      (_%K9705597076%_ _%rest97086%_ _%x97084%_)))
                  (_%else9705397067%_)))))))
    (define ormap2
      (lambda (_%f97019%_ _%lst197020%_ _%lst297021%_)
        (if (procedure? _%f97019%_)
            (let ((_%f97025%_ _%f97019%_))
              (__ormap2 _%f97025%_ _%lst197020%_ _%lst297021%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f97019%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f96931%_ _%lst196932%_ _%lst296933%_)
        (let ((_%f96936%_ _%f96931%_))
          (let _%lp96945%_ ((_%rest196947%_ _%lst196932%_)
                            (_%rest296948%_ _%lst296933%_))
            (let* ((_%rest19694996957%_ _%rest196947%_)
                   (_%else9695196965%_ (lambda () '#f))
                   (_%K9695397007%_
                    (lambda (_%rest196968%_ _%x196969%_)
                      (let* ((_%rest29697096978%_ _%rest296948%_)
                             (_%else9697296986%_ (lambda () '#f))
                             (_%K9697496995%_
                              (lambda (_%rest296989%_ _%x296990%_)
                                (let ((_%$e96992%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96936%_
                                          _%x196969%_
                                          _%x296990%_))))
                                  (if _%$e96992%_
                                      _%$e96992%_
                                      (_%lp96945%_
                                       _%rest196968%_
                                       _%rest296989%_))))))
                        (if (pair? _%rest29697096978%_)
                            (let ((_%hd9697596998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29697096978%_)))
                                  (_%tl9697697000%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29697096978%_))))
                              (let* ((_%x297003%_ _%hd9697596998%_)
                                     (_%rest297005%_ _%tl9697697000%_))
                                (_%K9697496995%_ _%rest297005%_ _%x297003%_)))
                            (_%else9697296986%_))))))
              (if (pair? _%rest19694996957%_)
                  (let ((_%hd9695497010%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19694996957%_)))
                        (_%tl9695597012%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19694996957%_))))
                    (let* ((_%x197015%_ _%hd9695497010%_)
                           (_%rest197017%_ _%tl9695597012%_))
                      (_%K9695397007%_ _%rest197017%_ _%x197015%_)))
                  (_%else9695196965%_)))))))
    (define ormap
      (lambda _g100126_
        (let ((_g100127_ (let () (declare (not safe)) (##length _g100126_))))
          (cond ((let () (declare (not safe)) (##fx= _g100127_ 2))
                 (apply ormap1 _g100126_))
                ((let () (declare (not safe)) (##fx= _g100127_ 3))
                 (apply ormap2 _g100126_))
                ((let () (declare (not safe)) (##fx>= _g100127_ 3))
                 (apply ormap* _g100126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g100126_))))))
    (define ormap*
      (lambda (_%f96904%_ . _%rest96905%_)
        (if (procedure? _%f96904%_)
            (let ((_%f96909%_ _%f96904%_))
              (declare (not safe))
              (##apply __ormap* _%f96909%_ _%rest96905%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f96904%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f96884%_ . _%rest96885%_)
        (let ((_%f96888%_ _%f96884%_))
          (let _%recur96897%_ ((_%rest96899%_ _%rest96885%_))
            (if (__andmap1 pair? _%rest96899%_)
                (let ((_%$e96901%_
                       (let ((__tmp100128 (map car _%rest96899%_)))
                         (declare (not safe))
                         (##apply _%f96888%_ __tmp100128))))
                  (if _%$e96901%_
                      _%$e96901%_
                      (_%recur96897%_ (map cdr _%rest96899%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f96869%_ _%lst96870%_)
        (if (procedure? _%f96869%_)
            (let ((_%f96874%_ _%f96869%_))
              (__filter-map1 _%f96874%_ _%lst96870%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f96869%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f96812%_ _%lst96813%_)
        (let ((_%f96816%_ _%f96812%_))
          (let _%recur96825%_ ((_%rest96827%_ _%lst96813%_))
            (let* ((_%rest9682996837%_ _%rest96827%_)
                   (_%else9683196845%_ (lambda () '()))
                   (_%K9683396857%_
                    (lambda (_%rest96848%_ _%x96849%_)
                      (let ((_%$e96851%_
                             (let ()
                               (declare (not safe))
                               (_%f96816%_ _%x96849%_))))
                        (if _%$e96851%_
                            ((lambda (_%r96854%_)
                               (cons _%r96854%_
                                     (_%recur96825%_ _%rest96848%_)))
                             _%$e96851%_)
                            (_%recur96825%_ _%rest96848%_))))))
              (if (pair? _%rest9682996837%_)
                  (let ((_%hd9683496860%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9682996837%_)))
                        (_%tl9683596862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9682996837%_))))
                    (let* ((_%x96865%_ _%hd9683496860%_)
                           (_%rest96867%_ _%tl9683596862%_))
                      (_%K9683396857%_ _%rest96867%_ _%x96865%_)))
                  (_%else9683196845%_)))))))
    (define filter-map2
      (lambda (_%f96796%_ _%lst196797%_ _%lst296798%_)
        (if (procedure? _%f96796%_)
            (let ((_%f96802%_ _%f96796%_))
              (__filter-map2 _%f96802%_ _%lst196797%_ _%lst296798%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f96796%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f96704%_ _%lst196705%_ _%lst296706%_)
        (let ((_%f96709%_ _%f96704%_))
          (let _%recur96718%_ ((_%rest196720%_ _%lst196705%_)
                               (_%rest296721%_ _%lst296706%_))
            (let* ((_%rest19672396731%_ _%rest196720%_)
                   (_%else9672596739%_ (lambda () '()))
                   (_%K9672796784%_
                    (lambda (_%rest196742%_ _%x196743%_)
                      (let* ((_%rest29674496752%_ _%rest296721%_)
                             (_%else9674696760%_ (lambda () '()))
                             (_%K9674896772%_
                              (lambda (_%rest296763%_ _%x296764%_)
                                (let ((_%$e96766%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96709%_
                                          _%x196743%_
                                          _%x296764%_))))
                                  (if _%$e96766%_
                                      ((lambda (_%r96769%_)
                                         (cons _%r96769%_
                                               (_%recur96718%_
                                                _%rest196742%_
                                                _%rest296763%_)))
                                       _%$e96766%_)
                                      (_%recur96718%_
                                       _%rest196742%_
                                       _%rest296763%_))))))
                        (if (pair? _%rest29674496752%_)
                            (let ((_%hd9674996775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29674496752%_)))
                                  (_%tl9675096777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29674496752%_))))
                              (let* ((_%x296780%_ _%hd9674996775%_)
                                     (_%rest296782%_ _%tl9675096777%_))
                                (_%K9674896772%_ _%rest296782%_ _%x296780%_)))
                            (_%else9674696760%_))))))
              (if (pair? _%rest19672396731%_)
                  (let ((_%hd9672896787%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19672396731%_)))
                        (_%tl9672996789%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19672396731%_))))
                    (let* ((_%x196792%_ _%hd9672896787%_)
                           (_%rest196794%_ _%tl9672996789%_))
                      (_%K9672796784%_ _%rest196794%_ _%x196792%_)))
                  (_%else9672596739%_)))))))
    (define filter-map
      (lambda _g100129_
        (let ((_g100130_ (let () (declare (not safe)) (##length _g100129_))))
          (cond ((let () (declare (not safe)) (##fx= _g100130_ 2))
                 (apply filter-map1 _g100129_))
                ((let () (declare (not safe)) (##fx= _g100130_ 3))
                 (apply filter-map2 _g100129_))
                ((let () (declare (not safe)) (##fx>= _g100130_ 3))
                 (apply filter-map* _g100129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g100129_))))))
    (define filter-map*
      (lambda (_%f96677%_ . _%rest96678%_)
        (if (procedure? _%f96677%_)
            (let ((_%f96682%_ _%f96677%_))
              (declare (not safe))
              (##apply __filter-map* _%f96682%_ _%rest96678%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f96677%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f96653%_ . _%rest96654%_)
        (let ((_%f96657%_ _%f96653%_))
          (let _%recur96666%_ ((_%rest96668%_ _%rest96654%_))
            (if (__andmap1 pair? _%rest96668%_)
                (let ((_%$e96671%_
                       (let ((__tmp100131 (map car _%rest96668%_)))
                         (declare (not safe))
                         (##apply _%f96657%_ __tmp100131))))
                  (if _%$e96671%_
                      ((lambda (_%r96674%_)
                         (cons _%r96674%_
                               (_%recur96666%_ (map cdr _%rest96668%_))))
                       _%$e96671%_)
                      (_%recur96666%_ (map cdr _%rest96668%_))))
                '())))))
    (define agetq__%
      (lambda (_%key96629%_ _%lst96631%_ _%default96633%_)
        (let ((_%$e96636%_
               (if (pair? _%lst96631%_) (assq _%key96629%_ _%lst96631%_) '#f)))
          (if _%$e96636%_
              (cdr _%$e96636%_)
              (if (procedure? _%default96633%_)
                  (_%default96633%_ _%key96629%_)
                  _%default96633%_)))))
    (define agetq__0
      (lambda (_%key96644%_ _%lst96645%_)
        (let ((_%default96647%_ '#f))
          (agetq__% _%key96644%_ _%lst96645%_ _%default96647%_))))
    (define agetq
      (lambda _g100132_
        (let ((_g100133_ (let () (declare (not safe)) (##length _g100132_))))
          (cond ((let () (declare (not safe)) (##fx= _g100133_ 2))
                 (apply agetq__0 _g100132_))
                ((let () (declare (not safe)) (##fx= _g100133_ 3))
                 (apply agetq__% _g100132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g100132_))))))
    (define agetv__%
      (lambda (_%key96604%_ _%lst96606%_ _%default96608%_)
        (let ((_%$e96611%_
               (if (pair? _%lst96606%_) (assv _%key96604%_ _%lst96606%_) '#f)))
          (if _%$e96611%_
              (cdr _%$e96611%_)
              (if (procedure? _%default96608%_)
                  (_%default96608%_ _%key96604%_)
                  _%default96608%_)))))
    (define agetv__0
      (lambda (_%key96619%_ _%lst96620%_)
        (let ((_%default96622%_ '#f))
          (agetv__% _%key96619%_ _%lst96620%_ _%default96622%_))))
    (define agetv
      (lambda _g100134_
        (let ((_g100135_ (let () (declare (not safe)) (##length _g100134_))))
          (cond ((let () (declare (not safe)) (##fx= _g100135_ 2))
                 (apply agetv__0 _g100134_))
                ((let () (declare (not safe)) (##fx= _g100135_ 3))
                 (apply agetv__% _g100134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g100134_))))))
    (define aget__%
      (lambda (_%key96579%_ _%lst96581%_ _%default96583%_)
        (let ((_%$e96586%_
               (if (pair? _%lst96581%_)
                   (assoc _%key96579%_ _%lst96581%_)
                   '#f)))
          (if _%$e96586%_
              (cdr _%$e96586%_)
              (if (procedure? _%default96583%_)
                  (_%default96583%_ _%key96579%_)
                  _%default96583%_)))))
    (define aget__0
      (lambda (_%key96594%_ _%lst96595%_)
        (let ((_%default96597%_ '#f))
          (aget__% _%key96594%_ _%lst96595%_ _%default96597%_))))
    (define aget
      (lambda _g100136_
        (let ((_g100137_ (let () (declare (not safe)) (##length _g100136_))))
          (cond ((let () (declare (not safe)) (##fx= _g100137_ 2))
                 (apply aget__0 _g100136_))
                ((let () (declare (not safe)) (##fx= _g100137_ 3))
                 (apply aget__% _g100136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g100136_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key96508%_ _%lst96510%_ _%default96512%_)
        (let _%lp96515%_ ((_%rest96518%_ _%lst96510%_))
          (let* ((_%rest9652096530%_ _%rest96518%_)
                 (_%else9652296538%_
                  (lambda ()
                    (if (procedure? _%default96512%_)
                        (_%default96512%_ _%key96508%_)
                        _%default96512%_)))
                 (_%K9652496547%_
                  (lambda (_%rest96541%_ _%v96542%_ _%k96544%_)
                    (if (eq? _%k96544%_ _%key96508%_)
                        _%v96542%_
                        (_%lp96515%_ _%rest96541%_)))))
            (if (pair? _%rest9652096530%_)
                (let ((_%hd9652596550%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9652096530%_)))
                      (_%tl9652696552%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9652096530%_))))
                  (let ((_%k96555%_ _%hd9652596550%_))
                    (if (pair? _%tl9652696552%_)
                        (let ((_%hd9652796557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9652696552%_)))
                              (_%tl9652896559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9652696552%_))))
                          (let* ((_%v96562%_ _%hd9652796557%_)
                                 (_%rest96564%_ _%tl9652896559%_))
                            (_%K9652496547%_
                             _%rest96564%_
                             _%v96562%_
                             _%k96555%_)))
                        (_%else9652296538%_))))
                (_%else9652296538%_))))))
    (define pgetq__0
      (lambda (_%key96569%_ _%lst96570%_)
        (let ((_%default96572%_ '#f))
          (pgetq__% _%key96569%_ _%lst96570%_ _%default96572%_))))
    (define pgetq
      (lambda _g100138_
        (let ((_g100139_ (let () (declare (not safe)) (##length _g100138_))))
          (cond ((let () (declare (not safe)) (##fx= _g100139_ 2))
                 (apply pgetq__0 _g100138_))
                ((let () (declare (not safe)) (##fx= _g100139_ 3))
                 (apply pgetq__% _g100138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g100138_))))))
    (define pgetv__%
      (lambda (_%key96437%_ _%lst96439%_ _%default96441%_)
        (let _%lp96444%_ ((_%rest96447%_ _%lst96439%_))
          (let* ((_%rest9644996459%_ _%rest96447%_)
                 (_%else9645196467%_
                  (lambda ()
                    (if (procedure? _%default96441%_)
                        (_%default96441%_ _%key96437%_)
                        _%default96441%_)))
                 (_%K9645396476%_
                  (lambda (_%rest96470%_ _%v96471%_ _%k96473%_)
                    (if (eqv? _%k96473%_ _%key96437%_)
                        _%v96471%_
                        (_%lp96444%_ _%rest96470%_)))))
            (if (pair? _%rest9644996459%_)
                (let ((_%hd9645496479%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9644996459%_)))
                      (_%tl9645596481%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9644996459%_))))
                  (let ((_%k96484%_ _%hd9645496479%_))
                    (if (pair? _%tl9645596481%_)
                        (let ((_%hd9645696486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9645596481%_)))
                              (_%tl9645796488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9645596481%_))))
                          (let* ((_%v96491%_ _%hd9645696486%_)
                                 (_%rest96493%_ _%tl9645796488%_))
                            (_%K9645396476%_
                             _%rest96493%_
                             _%v96491%_
                             _%k96484%_)))
                        (_%else9645196467%_))))
                (_%else9645196467%_))))))
    (define pgetv__0
      (lambda (_%key96498%_ _%lst96499%_)
        (let ((_%default96501%_ '#f))
          (pgetv__% _%key96498%_ _%lst96499%_ _%default96501%_))))
    (define pgetv
      (lambda _g100140_
        (let ((_g100141_ (let () (declare (not safe)) (##length _g100140_))))
          (cond ((let () (declare (not safe)) (##fx= _g100141_ 2))
                 (apply pgetv__0 _g100140_))
                ((let () (declare (not safe)) (##fx= _g100141_ 3))
                 (apply pgetv__% _g100140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g100140_))))))
    (define pget__%
      (lambda (_%key96366%_ _%lst96368%_ _%default96370%_)
        (let _%lp96373%_ ((_%rest96376%_ _%lst96368%_))
          (let* ((_%rest9637896388%_ _%rest96376%_)
                 (_%else9638096396%_
                  (lambda ()
                    (if (procedure? _%default96370%_)
                        (_%default96370%_ _%key96366%_)
                        _%default96370%_)))
                 (_%K9638296405%_
                  (lambda (_%rest96399%_ _%v96400%_ _%k96402%_)
                    (if (equal? _%k96402%_ _%key96366%_)
                        _%v96400%_
                        (_%lp96373%_ _%rest96399%_)))))
            (if (pair? _%rest9637896388%_)
                (let ((_%hd9638396408%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9637896388%_)))
                      (_%tl9638496410%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9637896388%_))))
                  (let ((_%k96413%_ _%hd9638396408%_))
                    (if (pair? _%tl9638496410%_)
                        (let ((_%hd9638596415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9638496410%_)))
                              (_%tl9638696417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9638496410%_))))
                          (let* ((_%v96420%_ _%hd9638596415%_)
                                 (_%rest96422%_ _%tl9638696417%_))
                            (_%K9638296405%_
                             _%rest96422%_
                             _%v96420%_
                             _%k96413%_)))
                        (_%else9638096396%_))))
                (_%else9638096396%_))))))
    (define pget__0
      (lambda (_%key96427%_ _%lst96428%_)
        (let ((_%default96430%_ '#f))
          (pget__% _%key96427%_ _%lst96428%_ _%default96430%_))))
    (define pget
      (lambda _g100142_
        (let ((_g100143_ (let () (declare (not safe)) (##length _g100142_))))
          (cond ((let () (declare (not safe)) (##fx= _g100143_ 2))
                 (apply pget__0 _g100142_))
                ((let () (declare (not safe)) (##fx= _g100143_ 3))
                 (apply pget__% _g100142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g100142_))))))
    (define find
      (lambda (_%pred96350%_ _%lst96351%_)
        (if (procedure? _%pred96350%_)
            (let ((_%pred96355%_ _%pred96350%_))
              (__find _%pred96355%_ _%lst96351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred96350%_)
              '#!void))))
    (define __find
      (lambda (_%pred96333%_ _%lst96334%_)
        (let* ((_%pred96337%_ _%pred96333%_)
               (_%$e96346%_ (__memf _%pred96337%_ _%lst96334%_)))
          (if _%$e96346%_
              (let () (declare (not safe)) (##car _%$e96346%_))
              '#f))))
    (define memf
      (lambda (_%proc96318%_ _%lst96319%_)
        (if (procedure? _%proc96318%_)
            (let ((_%proc96323%_ _%proc96318%_))
              (__memf _%proc96323%_ _%lst96319%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc96318%_)
              '#!void))))
    (define __memf
      (lambda (_%proc96268%_ _%lst96269%_)
        (let ((_%proc96272%_ _%proc96268%_))
          (let _%lp96281%_ ((_%rest96283%_ _%lst96269%_))
            (let* ((_%rest9628496292%_ _%rest96283%_)
                   (_%else9628696300%_ (lambda () '#f))
                   (_%K9628896306%_
                    (lambda (_%tl96303%_ _%hd96304%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc96272%_ _%hd96304%_))
                          _%rest96283%_
                          (_%lp96281%_ _%tl96303%_)))))
              (if (pair? _%rest9628496292%_)
                  (let ((_%hd9628996309%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9628496292%_)))
                        (_%tl9629096311%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9628496292%_))))
                    (let* ((_%hd96314%_ _%hd9628996309%_)
                           (_%tl96316%_ _%tl9629096311%_))
                      (_%K9628896306%_ _%tl96316%_ _%hd96314%_)))
                  (_%else9628696300%_)))))))
    (define remove1
      (lambda (_%el96221%_ _%lst96223%_)
        (let _%lp96226%_ ((_%rest96229%_ _%lst96223%_) (_%r96231%_ '()))
          (let* ((_%rest9623396241%_ _%rest96229%_)
                 (_%else9623596249%_ (lambda () _%lst96223%_))
                 (_%K9623796256%_
                  (lambda (_%rest96252%_ _%hd96253%_)
                    (if (equal? _%el96221%_ _%hd96253%_)
                        (__foldl1 cons _%rest96252%_ _%r96231%_)
                        (_%lp96226%_
                         _%rest96252%_
                         (cons _%hd96253%_ _%r96231%_))))))
            (if (pair? _%rest9623396241%_)
                (let ((_%hd9623896259%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9623396241%_)))
                      (_%tl9623996261%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9623396241%_))))
                  (let* ((_%hd96264%_ _%hd9623896259%_)
                         (_%rest96266%_ _%tl9623996261%_))
                    (_%K9623796256%_ _%rest96266%_ _%hd96264%_)))
                (_%else9623596249%_))))))
    (define remv1
      (lambda (_%el96174%_ _%lst96176%_)
        (let _%lp96179%_ ((_%rest96182%_ _%lst96176%_) (_%r96184%_ '()))
          (let* ((_%rest9618696194%_ _%rest96182%_)
                 (_%else9618896202%_ (lambda () _%lst96176%_))
                 (_%K9619096209%_
                  (lambda (_%rest96205%_ _%hd96206%_)
                    (if (eqv? _%el96174%_ _%hd96206%_)
                        (__foldl1 cons _%rest96205%_ _%r96184%_)
                        (_%lp96179%_
                         _%rest96205%_
                         (cons _%hd96206%_ _%r96184%_))))))
            (if (pair? _%rest9618696194%_)
                (let ((_%hd9619196212%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9618696194%_)))
                      (_%tl9619296214%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9618696194%_))))
                  (let* ((_%hd96217%_ _%hd9619196212%_)
                         (_%rest96219%_ _%tl9619296214%_))
                    (_%K9619096209%_ _%rest96219%_ _%hd96217%_)))
                (_%else9618896202%_))))))
    (define remq1
      (lambda (_%el96127%_ _%lst96129%_)
        (let _%lp96132%_ ((_%rest96135%_ _%lst96129%_) (_%r96137%_ '()))
          (let* ((_%rest9613996147%_ _%rest96135%_)
                 (_%else9614196155%_ (lambda () _%lst96129%_))
                 (_%K9614396162%_
                  (lambda (_%rest96158%_ _%hd96159%_)
                    (if (eq? _%el96127%_ _%hd96159%_)
                        (__foldl1 cons _%rest96158%_ _%r96137%_)
                        (_%lp96132%_
                         _%rest96158%_
                         (cons _%hd96159%_ _%r96137%_))))))
            (if (pair? _%rest9613996147%_)
                (let ((_%hd9614496165%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9613996147%_)))
                      (_%tl9614596167%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9613996147%_))))
                  (let* ((_%hd96170%_ _%hd9614496165%_)
                         (_%rest96172%_ _%tl9614596167%_))
                    (_%K9614396162%_ _%rest96172%_ _%hd96170%_)))
                (_%else9614196155%_))))))
    (define remf
      (lambda (_%proc96112%_ _%lst96113%_)
        (if (procedure? _%proc96112%_)
            (let ((_%proc96117%_ _%proc96112%_))
              (__remf _%proc96117%_ _%lst96113%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc96112%_)
              '#!void))))
    (define __remf
      (lambda (_%proc96061%_ _%lst96062%_)
        (let ((_%proc96065%_ _%proc96061%_))
          (let _%lp96074%_ ((_%rest96076%_ _%lst96062%_) (_%r96077%_ '()))
            (let* ((_%rest9607896086%_ _%rest96076%_)
                   (_%else9608096094%_ (lambda () _%lst96062%_))
                   (_%K9608296100%_
                    (lambda (_%rest96097%_ _%hd96098%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc96065%_ _%hd96098%_))
                          (__foldl1 cons _%rest96097%_ _%r96077%_)
                          (_%lp96074%_
                           _%rest96097%_
                           (cons _%hd96098%_ _%r96077%_))))))
              (if (pair? _%rest9607896086%_)
                  (let ((_%hd9608396103%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9607896086%_)))
                        (_%tl9608496105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9607896086%_))))
                    (let* ((_%hd96108%_ _%hd9608396103%_)
                           (_%rest96110%_ _%tl9608496105%_))
                      (_%K9608296100%_ _%rest96110%_ _%hd96108%_)))
                  (_%else9608096094%_)))))))
    (define 1+
      (lambda (_%x96047%_)
        (if (number? _%x96047%_)
            (let ((_%x96051%_ _%x96047%_)) (__1+ _%x96051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x96047%_)
              '#!void))))
    (define __1+
      (lambda (_%x96035%_) (let ((_%x96038%_ _%x96035%_)) (+ _%x96038%_ '1))))
    (define 1-
      (lambda (_%x96021%_)
        (if (number? _%x96021%_)
            (let ((_%x96025%_ _%x96021%_)) (__1- _%x96025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x96021%_)
              '#!void))))
    (define __1-
      (lambda (_%x96009%_) (let ((_%x96012%_ _%x96009%_)) (- _%x96012%_ '1))))
    (define fx1+
      (lambda (_%x95995%_)
        (if (fixnum? _%x95995%_)
            (let ((_%x95999%_ _%x95995%_)) (__fx1+ _%x95999%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x95995%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x95983%_)
        (let ((_%x95986%_ _%x95983%_))
          (declare (not safe))
          (##fx+ _%x95986%_ '1))))
    (define fx1-
      (lambda (_%x95969%_)
        (if (fixnum? _%x95969%_)
            (let ((_%x95973%_ _%x95969%_)) (__fx1- _%x95973%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x95969%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x95957%_)
        (let ((_%x95960%_ _%x95957%_))
          (declare (not safe))
          (##fx- _%x95960%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x95954%_)
        (if (fixnum? _%x95954%_)
            (let () (declare (not safe)) (##fx>= _%x95954%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x95951%_)
        (if (fixnum? _%x95951%_)
            (let () (declare (not safe)) (##fx> _%x95951%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x95948%_)
        (let () (declare (not safe)) (##fx= _%x95948%_ '0))))
    (define fx<0?
      (lambda (_%x95945%_)
        (if (fixnum? _%x95945%_)
            (let () (declare (not safe)) (##fx< _%x95945%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x95942%_)
        (if (fixnum? _%x95942%_)
            (let () (declare (not safe)) (##fx<= _%x95942%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x95939%_)
        (if (symbol? _%x95939%_) (not (uninterned-symbol? _%x95939%_)) '#f)))
    (define display-as-string
      (lambda (_%x95924%_ _%port95925%_)
        (if (output-port? _%port95925%_)
            (let ((_%port95929%_ _%port95925%_))
              (__display-as-string _%x95924%_ _%port95929%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port95925%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x95881%_ _%port95882%_)
        (let ((_%port95885%_ _%port95882%_))
          (if (or (string? _%x95881%_)
                  (symbol? _%x95881%_)
                  (keyword? _%x95881%_)
                  (number? _%x95881%_)
                  (char? _%x95881%_))
              (display _%x95881%_ _%port95885%_)
              (if (pair? _%x95881%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x95881%_))
                     _%port95885%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x95881%_))
                     _%port95885%_))
                  (if (vector? _%x95881%_)
                      (vector-for-each
                       (lambda (_%g9590895910%_)
                         (__display-as-string _%g9590895910%_ _%port95885%_))
                       _%x95881%_)
                      (if (or (null? _%x95881%_)
                              (eq? _%x95881%_ '#!void)
                              (eof-object? _%x95881%_)
                              (boolean? _%x95881%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x95881%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x95864%_)
        (if (string? _%x95864%_)
            _%x95864%_
            (if (symbol? _%x95864%_)
                (let () (declare (not safe)) (##symbol->string _%x95864%_))
                (if (keyword? _%x95864%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x95864%_))
                    (if (number? _%x95864%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x95864%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9587095872%_)
                           (__display-as-string
                            _%x95864%_
                            _%g9587095872%_)))))))))
    (define as-string__1
      (lambda _%args95875%_
        (call-with-output-string
         '()
         (lambda (_%g9587695878%_)
           (__display-as-string _%args95875%_ _%g9587695878%_)))))
    (define as-string
      (lambda _g100144_
        (let ((_g100145_ (let () (declare (not safe)) (##length _g100144_))))
          (cond ((let () (declare (not safe)) (##fx= _g100145_ 1))
                 (apply as-string__0 _g100144_))
                (#t
                 (apply (lambda _%args95875%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args95875%_)))
                        _g100144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g100144_))))))
    (define make-symbol__0
      (lambda (_%x95860%_)
        (if (interned-symbol? _%x95860%_)
            _%x95860%_
            (let ((__tmp100146 (as-string__0 _%x95860%_)))
              (declare (not safe))
              (##string->symbol __tmp100146)))))
    (define make-symbol__1
      (lambda _%args95862%_
        (let ((__tmp100147
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95862%_))))
          (declare (not safe))
          (##string->symbol __tmp100147))))
    (define make-symbol
      (lambda _g100148_
        (let ((_g100149_ (let () (declare (not safe)) (##length _g100148_))))
          (cond ((let () (declare (not safe)) (##fx= _g100149_ 1))
                 (apply make-symbol__0 _g100148_))
                (#t
                 (apply (lambda _%args95862%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args95862%_)))
                        _g100148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g100148_))))))
    (define make-keyword__0
      (lambda (_%x95856%_)
        (if (interned-keyword? _%x95856%_)
            _%x95856%_
            (let ((__tmp100150 (as-string__0 _%x95856%_)))
              (declare (not safe))
              (##string->keyword __tmp100150)))))
    (define make-keyword__1
      (lambda _%args95858%_
        (let ((__tmp100151
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95858%_))))
          (declare (not safe))
          (##string->keyword __tmp100151))))
    (define make-keyword
      (lambda _g100152_
        (let ((_g100153_ (let () (declare (not safe)) (##length _g100152_))))
          (cond ((let () (declare (not safe)) (##fx= _g100153_ 1))
                 (apply make-keyword__0 _g100152_))
                (#t
                 (apply (lambda _%args95858%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args95858%_)))
                        _g100152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g100152_))))))
    (define interned-keyword?
      (lambda (_%x95853%_)
        (if (keyword? _%x95853%_) (not (uninterned-keyword? _%x95853%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym95839%_)
        (if (symbol? _%sym95839%_)
            (let ((_%sym95843%_ _%sym95839%_))
              (__symbol->keyword _%sym95843%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym95839%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym95827%_)
        (let ((_%sym95830%_ _%sym95827%_))
          (if (uninterned-symbol? _%sym95830%_)
              (let ((__tmp100154
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95830%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp100154))
              (let ((__tmp100155
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95830%_))))
                (declare (not safe))
                (##string->keyword __tmp100155))))))
    (define keyword->symbol
      (lambda (_%sym95813%_)
        (if (keyword? _%sym95813%_)
            (let ((_%sym95817%_ _%sym95813%_))
              (__keyword->symbol _%sym95817%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym95813%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym95801%_)
        (let ((_%sym95804%_ _%sym95801%_))
          (if (uninterned-keyword? _%sym95804%_)
              (let ((__tmp100156
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95804%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp100156))
              (let ((__tmp100157
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95804%_))))
                (declare (not safe))
                (##string->symbol __tmp100157))))))
    (define bytes->string__%
      (lambda (_%bstr95766%_ _%enc95767%_)
        (if (u8vector? _%bstr95766%_)
            (let ((_%bstr95771%_ _%bstr95766%_))
              (if (symbol? _%enc95767%_)
                  (let ((_%enc95781%_ _%enc95767%_))
                    (__bytes->string__% _%bstr95771%_ _%enc95781%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95767%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr95766%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr95794%_)
        (let ((_%enc95796%_ 'UTF-8))
          (bytes->string__% _%bstr95794%_ _%enc95796%_))))
    (define bytes->string
      (lambda _g100158_
        (let ((_g100159_ (let () (declare (not safe)) (##length _g100158_))))
          (cond ((let () (declare (not safe)) (##fx= _g100159_ 1))
                 (apply bytes->string__0 _g100158_))
                ((let () (declare (not safe)) (##fx= _g100159_ 2))
                 (apply bytes->string__% _g100158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g100158_))))))
    (define __bytes->string__%
      (lambda (_%bstr95725%_ _%enc95726%_)
        (let* ((_%bstr95729%_ _%bstr95725%_) (_%enc95737%_ _%enc95726%_))
          (if (eq? _%enc95737%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr95729%_))
              (let* ((_%in95746%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc95737%_
                                   (cons 'init: (cons _%bstr95729%_ '()))))))
                     (_%len95748%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr95729%_)))
                     (_%out95750%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len95748%_)))
                     (_%n95752%_
                      (read-substring
                       _%out95750%_
                       '0
                       _%len95748%_
                       _%in95746%_)))
                (string-shrink! _%out95750%_ _%n95752%_)
                _%out95750%_)))))
    (define __bytes->string__0
      (lambda (_%bstr95758%_)
        (let ((_%enc95760%_ 'UTF-8))
          (__bytes->string__% _%bstr95758%_ _%enc95760%_))))
    (define __bytes->string
      (lambda _g100160_
        (let ((_g100161_ (let () (declare (not safe)) (##length _g100160_))))
          (cond ((let () (declare (not safe)) (##fx= _g100161_ 1))
                 (apply __bytes->string__0 _g100160_))
                ((let () (declare (not safe)) (##fx= _g100161_ 2))
                 (apply __bytes->string__% _g100160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g100160_))))))
    (define string->bytes__%
      (lambda (_%str95689%_ _%enc95690%_)
        (if (string? _%str95689%_)
            (let ((_%str95694%_ _%str95689%_))
              (if (symbol? _%enc95690%_)
                  (let ((_%enc95704%_ _%enc95690%_))
                    (__string->bytes__% _%str95694%_ _%enc95704%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95690%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str95689%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str95717%_)
        (let ((_%enc95719%_ 'UTF-8))
          (string->bytes__% _%str95717%_ _%enc95719%_))))
    (define string->bytes
      (lambda _g100162_
        (let ((_g100163_ (let () (declare (not safe)) (##length _g100162_))))
          (cond ((let () (declare (not safe)) (##fx= _g100163_ 1))
                 (apply string->bytes__0 _g100162_))
                ((let () (declare (not safe)) (##fx= _g100163_ 2))
                 (apply string->bytes__% _g100162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g100162_))))))
    (define __string->bytes__%
      (lambda (_%str95657%_ _%enc95658%_)
        (let* ((_%str95661%_ _%str95657%_) (_%enc95669%_ _%enc95658%_))
          (if (eq? _%enc95669%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str95661%_))
              (__substring->bytes__%
               _%str95661%_
               '0
               (let () (declare (not safe)) (##string-length _%str95661%_))
               _%enc95669%_)))))
    (define __string->bytes__0
      (lambda (_%str95681%_)
        (let ((_%enc95683%_ 'UTF-8))
          (__string->bytes__% _%str95681%_ _%enc95683%_))))
    (define __string->bytes
      (lambda _g100164_
        (let ((_g100165_ (let () (declare (not safe)) (##length _g100164_))))
          (cond ((let () (declare (not safe)) (##fx= _g100165_ 1))
                 (apply __string->bytes__0 _g100164_))
                ((let () (declare (not safe)) (##fx= _g100165_ 2))
                 (apply __string->bytes__% _g100164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g100164_))))))
    (define substring->bytes__%
      (lambda (_%str95605%_ _%start95606%_ _%end95607%_ _%enc95608%_)
        (if (string? _%str95605%_)
            (let ((_%str95612%_ _%str95605%_))
              (if (nonnegative-fixnum? _%start95606%_)
                  (let ((_%start95622%_ _%start95606%_))
                    (if (nonnegative-fixnum? _%end95607%_)
                        (let ((_%end95632%_ _%end95607%_))
                          (__substring->bytes__%
                           _%str95612%_
                           _%start95622%_
                           _%end95632%_
                           _%enc95608%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end95607%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start95606%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str95605%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str95645%_ _%start95646%_ _%end95647%_)
        (let ((_%enc95649%_ 'UTF-8))
          (substring->bytes__%
           _%str95645%_
           _%start95646%_
           _%end95647%_
           _%enc95649%_))))
    (define substring->bytes
      (lambda _g100166_
        (let ((_g100167_ (let () (declare (not safe)) (##length _g100166_))))
          (cond ((let () (declare (not safe)) (##fx= _g100167_ 3))
                 (apply substring->bytes__0 _g100166_))
                ((let () (declare (not safe)) (##fx= _g100167_ 4))
                 (apply substring->bytes__% _g100166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g100166_))))))
    (define __substring->bytes__%
      (lambda (_%str95557%_ _%start95558%_ _%end95559%_ _%enc95560%_)
        (let* ((_%str95563%_ _%str95557%_)
               (_%start95571%_ _%start95558%_)
               (_%end95579%_ _%end95559%_))
          (if (eq? _%enc95560%_ 'UTF-8)
              (string->utf8 _%str95563%_ _%start95571%_ _%end95579%_)
              (let ((_%out95588%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc95560%_ '())))))
                (write-substring
                 _%str95563%_
                 _%start95571%_
                 _%end95579%_
                 _%out95588%_)
                (get-output-u8vector _%out95588%_))))))
    (define __substring->bytes__0
      (lambda (_%str95593%_ _%start95594%_ _%end95595%_)
        (let ((_%enc95597%_ 'UTF-8))
          (__substring->bytes__%
           _%str95593%_
           _%start95594%_
           _%end95595%_
           _%enc95597%_))))
    (define __substring->bytes
      (lambda _g100168_
        (let ((_g100169_ (let () (declare (not safe)) (##length _g100168_))))
          (cond ((let () (declare (not safe)) (##fx= _g100169_ 3))
                 (apply __substring->bytes__0 _g100168_))
                ((let () (declare (not safe)) (##fx= _g100169_ 4))
                 (apply __substring->bytes__% _g100168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g100168_))))))
    (define string-empty?
      (lambda (_%str95542%_)
        (if (string? _%str95542%_)
            (let ((_%str95546%_ _%str95542%_)) (__string-empty? _%str95546%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str95542%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str95530%_)
        (let* ((_%str95533%_ _%str95530%_)
               (__tmp100170
                (let () (declare (not safe)) (##string-length _%str95533%_))))
          (declare (not safe))
          (##fxzero? __tmp100170))))
    (define string-index__%
      (lambda (_%str95482%_ _%char95483%_ _%start95484%_)
        (if (string? _%str95482%_)
            (let ((_%str95488%_ _%str95482%_))
              (if (char? _%char95483%_)
                  (let ((_%char95498%_ _%char95483%_))
                    (if (nonnegative-fixnum? _%start95484%_)
                        (let ((_%start95508%_ _%start95484%_))
                          (__string-index__%
                           _%str95488%_
                           _%char95498%_
                           _%start95508%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start95484%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char95483%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str95482%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str95521%_ _%char95522%_)
        (let ((_%start95524%_ '0))
          (string-index__% _%str95521%_ _%char95522%_ _%start95524%_))))
    (define string-index
      (lambda _g100171_
        (let ((_g100172_ (let () (declare (not safe)) (##length _g100171_))))
          (cond ((let () (declare (not safe)) (##fx= _g100172_ 2))
                 (apply string-index__0 _g100171_))
                ((let () (declare (not safe)) (##fx= _g100172_ 3))
                 (apply string-index__% _g100171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g100171_))))))
    (define __string-index__%
      (lambda (_%str95421%_ _%char95422%_ _%start95423%_)
        (let* ((_%str95426%_ _%str95421%_)
               (_%char95434%_ _%char95422%_)
               (_%start95442%_ _%start95423%_)
               (_%len95451%_
                (let () (declare (not safe)) (##string-length _%str95426%_))))
          (let _%lp95453%_ ((_%k95455%_ _%start95442%_))
            (let ((_%k95457%_ _%k95455%_))
              (if (let () (declare (not safe)) (##fx< _%k95457%_ _%len95451%_))
                  (if (eq? _%char95434%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95426%_ _%k95457%_)))
                      _%k95457%_
                      (_%lp95453%_
                       (let () (declare (not safe)) (##fx+ _%k95457%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str95472%_ _%char95473%_)
        (let ((_%start95475%_ '0))
          (__string-index__% _%str95472%_ _%char95473%_ _%start95475%_))))
    (define __string-index
      (lambda _g100173_
        (let ((_g100174_ (let () (declare (not safe)) (##length _g100173_))))
          (cond ((let () (declare (not safe)) (##fx= _g100174_ 2))
                 (apply __string-index__0 _g100173_))
                ((let () (declare (not safe)) (##fx= _g100174_ 3))
                 (apply __string-index__% _g100173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g100173_))))))
    (define string-rindex__%
      (lambda (_%str95382%_ _%char95383%_ _%start95384%_)
        (if (string? _%str95382%_)
            (let ((_%str95388%_ _%str95382%_))
              (if (char? _%char95383%_)
                  (let ((_%char95398%_ _%char95383%_))
                    (__string-rindex__%
                     _%str95388%_
                     _%char95398%_
                     _%start95384%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char95383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str95382%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str95411%_ _%char95412%_)
        (let ((_%start95414%_ '#f))
          (string-rindex__% _%str95411%_ _%char95412%_ _%start95414%_))))
    (define string-rindex
      (lambda _g100175_
        (let ((_g100176_ (let () (declare (not safe)) (##length _g100175_))))
          (cond ((let () (declare (not safe)) (##fx= _g100176_ 2))
                 (apply string-rindex__0 _g100175_))
                ((let () (declare (not safe)) (##fx= _g100176_ 3))
                 (apply string-rindex__% _g100175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g100175_))))))
    (define __string-rindex__%
      (lambda (_%str95324%_ _%char95325%_ _%start95326%_)
        (let* ((_%str95329%_ _%str95324%_)
               (_%char95337%_ _%char95325%_)
               (_%len95346%_
                (let () (declare (not safe)) (##string-length _%str95329%_)))
               (_%start95348%_
                (if (fixnum? _%start95326%_)
                    _%start95326%_
                    (let () (declare (not safe)) (##fx- _%len95346%_ '1)))))
          (let _%lp95351%_ ((_%k95353%_ _%start95348%_))
            (let ((_%k95355%_ _%k95353%_))
              (if (let () (declare (not safe)) (##fx>= _%k95355%_ '0))
                  (if (eq? _%char95337%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95329%_ _%k95355%_)))
                      _%k95355%_
                      (_%lp95351%_
                       (let () (declare (not safe)) (##fx- _%k95355%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str95372%_ _%char95373%_)
        (let ((_%start95375%_ '#f))
          (__string-rindex__% _%str95372%_ _%char95373%_ _%start95375%_))))
    (define __string-rindex
      (lambda _g100177_
        (let ((_g100178_ (let () (declare (not safe)) (##length _g100177_))))
          (cond ((let () (declare (not safe)) (##fx= _g100178_ 2))
                 (apply __string-rindex__0 _g100177_))
                ((let () (declare (not safe)) (##fx= _g100178_ 3))
                 (apply __string-rindex__% _g100177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g100177_))))))
    (define string-split
      (lambda (_%str95298%_ _%char95299%_)
        (if (string? _%str95298%_)
            (let ((_%str95303%_ _%str95298%_))
              (if (char? _%char95299%_)
                  (let ((_%char95313%_ _%char95299%_))
                    (__string-split _%str95303%_ _%char95313%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char95299%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str95298%_)
              '#!void))))
    (define __string-split
      (lambda (_%str95239%_ _%char95240%_)
        (let* ((_%str95243%_ _%str95239%_)
               (_%char95251%_ _%char95240%_)
               (_%len95260%_
                (let () (declare (not safe)) (##string-length _%str95243%_))))
          (let _%lp95262%_ ((_%start95264%_ '0) (_%r95265%_ '()))
            (let* ((_%start95268%_ _%start95264%_)
                   (_%$e95281%_
                    (__string-index__%
                     _%str95243%_
                     _%char95251%_
                     _%start95268%_)))
              (if _%$e95281%_
                  ((lambda (_%end95284%_)
                     (let ((_%end95286%_ _%end95284%_))
                       (_%lp95262%_
                        (let () (declare (not safe)) (##fx+ _%end95286%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str95243%_
                                 _%start95268%_
                                 _%end95286%_))
                              _%r95265%_))))
                   _%$e95281%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start95268%_ _%len95260%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str95243%_
                                _%start95268%_
                                _%len95260%_)))
                       _%r95265%_)
                      (reverse! _%r95265%_))))))))
    (define string-join
      (lambda (_%strs95089%_ _%join95090%_)
        (letrec ((_%join-length95093%_
                  (lambda (_%strs95177%_ _%jlen95178%_)
                    (let _%lp95180%_ ((_%rest95182%_ _%strs95177%_)
                                      (_%len95183%_ '0))
                      (let* ((_%len95185%_ _%len95183%_)
                             (_%rest9519395201%_ _%rest95182%_)
                             (_%else9519595209%_ (lambda () '0))
                             (_%K9519795227%_
                              (lambda (_%rest95212%_ _%hd95213%_)
                                (if (string? _%hd95213%_)
                                    (let ((_%hd95215%_ _%hd95213%_))
                                      (if (pair? _%rest95212%_)
                                          (_%lp95180%_
                                           _%rest95212%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd95215%_))
                                                _%jlen95178%_
                                                _%len95185%_))
                                          (let ((__tmp100179
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd95215%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp100179 _%len95185%_))))
                                    (error '"expected string" _%hd95213%_)))))
                        (if (pair? _%rest9519395201%_)
                            (let ((_%hd9519895230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9519395201%_)))
                                  (_%tl9519995232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9519395201%_))))
                              (let* ((_%hd95235%_ _%hd9519895230%_)
                                     (_%rest95237%_ _%tl9519995232%_))
                                (_%K9519795227%_ _%rest95237%_ _%hd95235%_)))
                            (_%else9519595209%_)))))))
          (let* ((_%join95098%_
                  (if (char? _%join95090%_)
                      (let () (declare (not safe)) (##string _%join95090%_))
                      (if (string? _%join95090%_)
                          _%join95090%_
                          (error '"expected string or char" _%join95090%_))))
                 (_%jlen95100%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join95098%_)))
                 (_%olen95102%_
                  (_%join-length95093%_ _%strs95089%_ _%jlen95100%_))
                 (_%ostr95104%_
                  (let () (declare (not safe)) (##make-string _%olen95102%_))))
            (let _%lp95107%_ ((_%rest95109%_ _%strs95089%_) (_%k95110%_ '0))
              (let* ((_%k95113%_ _%k95110%_)
                     (_%rest9512995137%_ _%rest95109%_)
                     (_%else9513195145%_ (lambda () '""))
                     (_%K9513395165%_
                      (lambda (_%rest95148%_ _%hd95149%_)
                        (let* ((_%hd95151%_ _%hd95149%_)
                               (_%hdlen95163%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd95151%_))))
                          (if (pair? _%rest95148%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd95151%_
                                   '0
                                   _%hdlen95163%_
                                   _%ostr95104%_
                                   _%k95113%_))
                                (let ((__tmp100180
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k95113%_ _%hdlen95163%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join95098%_
                                   '0
                                   _%jlen95100%_
                                   _%ostr95104%_
                                   __tmp100180))
                                (_%lp95107%_
                                 _%rest95148%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k95113%_
                                          _%hdlen95163%_
                                          _%jlen95100%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd95151%_
                                   '0
                                   _%hdlen95163%_
                                   _%ostr95104%_
                                   _%k95113%_))
                                _%ostr95104%_))))))
                (if (pair? _%rest9512995137%_)
                    (let ((_%hd9513495168%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9512995137%_)))
                          (_%tl9513595170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9512995137%_))))
                      (let* ((_%hd95173%_ _%hd9513495168%_)
                             (_%rest95175%_ _%tl9513595170%_))
                        (_%K9513395165%_ _%rest95175%_ _%hd95173%_)))
                    (_%else9513195145%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes95015%_ _%port95016%_ _%start95017%_ _%end95018%_)
        (if (u8vector? _%bytes95015%_)
            (let ((_%bytes95022%_ _%bytes95015%_))
              (if (input-port? _%port95016%_)
                  (let ((_%port95032%_ _%port95016%_))
                    (if ((lambda (_%o95041%_)
                           (and (fixnum? _%o95041%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o95041%_ '0))
                                (let ((__tmp100181
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes95022%_))))
                                  (declare (not safe))
                                  (##fx< _%o95041%_ __tmp100181))))
                         _%start95017%_)
                        (let ((_%start95045%_ _%start95017%_))
                          (if ((lambda (_%o95054%_)
                                 (and (fixnum? _%o95054%_)
                                      (let ((__tmp100182
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes95022%_))))
                                        (declare (not safe))
                                        (##fx<= _%start95045%_
                                                _%o95054%_
                                                __tmp100182))))
                               _%end95018%_)
                              (let ((_%end95058%_ _%end95018%_))
                                (__read-u8vector__%
                                 _%bytes95022%_
                                 _%port95032%_
                                 _%start95045%_
                                 _%end95058%_))
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
                                 _%end95018%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start95017%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port95016%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes95015%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes95071%_ _%port95072%_)
        (let* ((_%start95074%_ '0)
               (_%end95076%_ (u8vector-length _%bytes95071%_)))
          (read-u8vector__%
           _%bytes95071%_
           _%port95072%_
           _%start95074%_
           _%end95076%_))))
    (define read-u8vector__1
      (lambda (_%bytes95078%_ _%port95079%_ _%start95080%_)
        (let ((_%end95082%_ (u8vector-length _%bytes95078%_)))
          (read-u8vector__%
           _%bytes95078%_
           _%port95079%_
           _%start95080%_
           _%end95082%_))))
    (define read-u8vector
      (lambda _g100183_
        (let ((_g100184_ (let () (declare (not safe)) (##length _g100183_))))
          (cond ((let () (declare (not safe)) (##fx= _g100184_ 2))
                 (apply read-u8vector__0 _g100183_))
                ((let () (declare (not safe)) (##fx= _g100184_ 3))
                 (apply read-u8vector__1 _g100183_))
                ((let () (declare (not safe)) (##fx= _g100184_ 4))
                 (apply read-u8vector__% _g100183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g100183_))))))
    (define __read-u8vector__%
      (lambda (_%bytes94954%_ _%port94955%_ _%start94956%_ _%end94957%_)
        (let* ((_%bytes94960%_ _%bytes94954%_)
               (_%port94968%_ _%port94955%_)
               (_%start94976%_ _%start94956%_)
               (_%end94984%_ _%end94957%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes94960%_
           _%start94976%_
           _%end94984%_
           _%port94968%_))))
    (define __read-u8vector__0
      (lambda (_%bytes94996%_ _%port94997%_)
        (let* ((_%start94999%_ '0)
               (_%end95001%_ (u8vector-length _%bytes94996%_)))
          (__read-u8vector__%
           _%bytes94996%_
           _%port94997%_
           _%start94999%_
           _%end95001%_))))
    (define __read-u8vector__1
      (lambda (_%bytes95003%_ _%port95004%_ _%start95005%_)
        (let ((_%end95007%_ (u8vector-length _%bytes95003%_)))
          (__read-u8vector__%
           _%bytes95003%_
           _%port95004%_
           _%start95005%_
           _%end95007%_))))
    (define __read-u8vector
      (lambda _g100185_
        (let ((_g100186_ (let () (declare (not safe)) (##length _g100185_))))
          (cond ((let () (declare (not safe)) (##fx= _g100186_ 2))
                 (apply __read-u8vector__0 _g100185_))
                ((let () (declare (not safe)) (##fx= _g100186_ 3))
                 (apply __read-u8vector__1 _g100185_))
                ((let () (declare (not safe)) (##fx= _g100186_ 4))
                 (apply __read-u8vector__% _g100185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g100185_))))))
    (define write-u8vector__%
      (lambda (_%bytes94884%_ _%port94885%_ _%start94886%_ _%end94887%_)
        (if (u8vector? _%bytes94884%_)
            (let ((_%bytes94891%_ _%bytes94884%_))
              (if (output-port? _%port94885%_)
                  (let* ((_%port94901%_ _%port94885%_)
                         (_%start94910%_ _%start94886%_))
                    (if ((lambda (_%o94918%_)
                           (and (fixnum? _%o94918%_)
                                (let ((__tmp100187
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94891%_))))
                                  (declare (not safe))
                                  (##fx<= _%start94910%_
                                          _%o94918%_
                                          __tmp100187))))
                         _%end94887%_)
                        (let ((_%end94922%_ _%end94887%_))
                          (__write-u8vector__%
                           _%bytes94891%_
                           _%port94901%_
                           _%start94910%_
                           _%end94922%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end94887%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port94885%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes94884%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes94935%_ _%port94936%_)
        (let* ((_%start94938%_ '0)
               (_%end94940%_ (u8vector-length _%bytes94935%_)))
          (write-u8vector__%
           _%bytes94935%_
           _%port94936%_
           _%start94938%_
           _%end94940%_))))
    (define write-u8vector__1
      (lambda (_%bytes94942%_ _%port94943%_ _%start94944%_)
        (let ((_%end94946%_ (u8vector-length _%bytes94942%_)))
          (write-u8vector__%
           _%bytes94942%_
           _%port94943%_
           _%start94944%_
           _%end94946%_))))
    (define write-u8vector
      (lambda _g100188_
        (let ((_g100189_ (let () (declare (not safe)) (##length _g100188_))))
          (cond ((let () (declare (not safe)) (##fx= _g100189_ 2))
                 (apply write-u8vector__0 _g100188_))
                ((let () (declare (not safe)) (##fx= _g100189_ 3))
                 (apply write-u8vector__1 _g100188_))
                ((let () (declare (not safe)) (##fx= _g100189_ 4))
                 (apply write-u8vector__% _g100188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g100188_))))))
    (define __write-u8vector__%
      (lambda (_%bytes94823%_ _%port94824%_ _%start94825%_ _%end94826%_)
        (let* ((_%bytes94829%_ _%bytes94823%_)
               (_%port94837%_ _%port94824%_)
               (_%start94845%_ _%start94825%_)
               (_%end94853%_ _%end94826%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes94829%_
           _%start94845%_
           _%end94853%_
           _%port94837%_))))
    (define __write-u8vector__0
      (lambda (_%bytes94865%_ _%port94866%_)
        (let* ((_%start94868%_ '0)
               (_%end94870%_ (u8vector-length _%bytes94865%_)))
          (__write-u8vector__%
           _%bytes94865%_
           _%port94866%_
           _%start94868%_
           _%end94870%_))))
    (define __write-u8vector__1
      (lambda (_%bytes94872%_ _%port94873%_ _%start94874%_)
        (let ((_%end94876%_ (u8vector-length _%bytes94872%_)))
          (__write-u8vector__%
           _%bytes94872%_
           _%port94873%_
           _%start94874%_
           _%end94876%_))))
    (define __write-u8vector
      (lambda _g100190_
        (let ((_g100191_ (let () (declare (not safe)) (##length _g100190_))))
          (cond ((let () (declare (not safe)) (##fx= _g100191_ 2))
                 (apply __write-u8vector__0 _g100190_))
                ((let () (declare (not safe)) (##fx= _g100191_ 3))
                 (apply __write-u8vector__1 _g100190_))
                ((let () (declare (not safe)) (##fx= _g100191_ 4))
                 (apply __write-u8vector__% _g100190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g100190_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag94791%_
               _%dbg-exprs94792%_
               _%dbg-thunks94793%_
               _%expr94794%_
               _%thunk94795%_)
        (letrec ((_%o94797%_ (current-output-port))
                 (_%e94798%_ (current-error-port))
                 (_%p94799%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f94800%_
                  (lambda ()
                    (force-output _%o94797%_)
                    (force-output _%e94798%_)))
                 (_%d94801%_
                  (lambda (_%x94808%_) (display _%x94808%_ _%e94798%_)))
                 (_%w94802%_
                  (lambda (_%x94810%_) (_%p94799%_ _%x94810%_ _%e94798%_)))
                 (_%n94803%_ (lambda () (newline _%e94798%_)))
                 (_%v94804%_
                  (lambda (_%l94813%_)
                    (for-each
                     (lambda (_%x94815%_)
                       (_%d94801%_ '" ")
                       (_%w94802%_ _%x94815%_))
                     _%l94813%_)
                    (_%n94803%_)))
                 (_%x94805%_
                  (lambda (_%expr94817%_ _%thunk94818%_)
                    (_%f94800%_)
                    (_%d94801%_ '"  ")
                    (_%w94802%_ _%expr94817%_)
                    (_%d94801%_ '" =>")
                    (call-with-values
                     _%thunk94818%_
                     (lambda _%x94820%_
                       (_%v94804%_ _%x94820%_)
                       (_%f94800%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x94820%_)))))))
          (if _%tag94791%_
              (begin
                (if (eq? _%tag94791%_ '#!void)
                    '#!void
                    (begin
                      (_%f94800%_)
                      (_%d94801%_ _%tag94791%_)
                      (_%n94803%_)))
                (for-each _%x94805%_ _%dbg-exprs94792%_ _%dbg-thunks94793%_)
                (if _%thunk94795%_
                    (_%x94805%_ _%expr94794%_ _%thunk94795%_)
                    '#!void))
              (if _%thunk94795%_ (_%thunk94795%_) '#!void)))))))
