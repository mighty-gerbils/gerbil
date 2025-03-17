(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1742226229)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args90489%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args90489%_))
          (newline))))
    (define display*
      (lambda _%args90486%_
        (let () (declare (not safe)) (##for-each display _%args90486%_))))
    (define file-newer?
      (lambda (_%file190461%_ _%file290462%_)
        (if (string? _%file190461%_)
            (let ((_%file190466%_ _%file190461%_))
              (if (string? _%file290462%_)
                  (let ((_%file290476%_ _%file290462%_))
                    (__file-newer? _%file190466%_ _%file290476%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file290462%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file190461%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file190409%_ _%file290410%_)
        (let* ((_%file190413%_ _%file190409%_) (_%file290421%_ _%file290410%_))
          (letrec ((_%modification-time90430%_
                    (lambda (_%file90449%_)
                      (let ((_%file90452%_ _%file90449%_))
                        (_%__modification-time90431%_ _%file90452%_))))
                   (_%__modification-time90431%_
                    (lambda (_%file90433%_)
                      (let* ((_%file90436%_ _%file90433%_)
                             (__tmp92219
                              (let ((__tmp92220
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file90436%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp92220))))
                        (declare (not safe))
                        (##time->seconds __tmp92219)))))
            (let ((__tmp92222 (_%__modification-time90431%_ _%file190413%_))
                  (__tmp92221 (_%__modification-time90431%_ _%file290421%_)))
              (declare (not safe))
              (##fl> __tmp92222 __tmp92221))))))
    (define create-directory*__%
      (lambda (_%dir90374%_ _%perms90375%_)
        (if (string? _%dir90374%_)
            (let ((_%dir90379%_ _%dir90374%_))
              (if (fixnum? _%perms90375%_)
                  (let ((_%perms90389%_ _%perms90375%_))
                    (__create-directory*__% _%dir90379%_ _%perms90389%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms90375%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir90374%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir90402%_)
        (let ((_%perms90404%_ '493))
          (create-directory*__% _%dir90402%_ _%perms90404%_))))
    (define create-directory*
      (lambda _g92224_
        (let ((_g92223_ (let () (declare (not safe)) (##length _g92224_))))
          (cond ((let () (declare (not safe)) (##fx= _g92223_ 1))
                 (apply create-directory*__0 _g92224_))
                ((let () (declare (not safe)) (##fx= _g92223_ 2))
                 (apply create-directory*__% _g92224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g92224_))))))
    (define __create-directory*__%
      (lambda (_%dir90298%_ _%perms90299%_)
        (let* ((_%dir90302%_ _%dir90298%_) (_%perms90310%_ _%perms90299%_))
          (letrec ((_%create190319%_
                    (lambda (_%path90351%_)
                      (let ((_%path90354%_ _%path90351%_))
                        (_%__create190320%_ _%path90354%_))))
                   (_%__create190320%_
                    (lambda (_%path90332%_)
                      (let ((_%path90335%_ _%path90332%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path90335%_))
                            (if (eq? (file-type _%path90335%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path90335%_))
                            (if _%perms90310%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path90335%_
                                             (cons 'permissions:
                                                   (cons _%perms90310%_
                                                         '())))))
                                (create-directory _%path90335%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir90302%_))
                '#!void
                (let _%lp90322%_ ((_%start90324%_ '0))
                  (let ((_%$e90326%_
                         (__string-index__% _%dir90302%_ '#\/ _%start90324%_)))
                    (if _%$e90326%_
                        ((lambda (_%x90329%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x90329%_ '0))
                               (_%__create190320%_
                                (substring _%dir90302%_ '0 _%x90329%_))
                               '#!void)
                           (_%lp90322%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x90329%_ '1))))
                         _%$e90326%_)
                        (_%__create190320%_ _%dir90302%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir90366%_)
        (let ((_%perms90368%_ '493))
          (__create-directory*__% _%dir90366%_ _%perms90368%_))))
    (define __create-directory*
      (lambda _g92226_
        (let ((_g92225_ (let () (declare (not safe)) (##length _g92226_))))
          (cond ((let () (declare (not safe)) (##fx= _g92225_ 1))
                 (apply __create-directory*__0 _g92226_))
                ((let () (declare (not safe)) (##fx= _g92225_ 2))
                 (apply __create-directory*__% _g92226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g92226_))))))
    (define move-file__%
      (lambda (_%src90249%_ _%dest90250%_ _%replace?90251%_)
        (if (string? _%src90249%_)
            (let ((_%src90255%_ _%src90249%_))
              (if (string? _%dest90250%_)
                  (let ((_%dest90265%_ _%dest90250%_))
                    (if (boolean? _%replace?90251%_)
                        (let ((_%replace?90275%_ _%replace?90251%_))
                          (__move-file__%
                           _%src90255%_
                           _%dest90265%_
                           _%replace?90275%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?90251%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest90250%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src90249%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src90288%_ _%dest90289%_)
        (let ((_%replace?90291%_ '#t))
          (move-file__% _%src90288%_ _%dest90289%_ _%replace?90291%_))))
    (define move-file
      (lambda _g92228_
        (let ((_g92227_ (let () (declare (not safe)) (##length _g92228_))))
          (cond ((let () (declare (not safe)) (##fx= _g92227_ 2))
                 (apply move-file__0 _g92228_))
                ((let () (declare (not safe)) (##fx= _g92227_ 3))
                 (apply move-file__% _g92228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g92228_))))))
    (define __move-file__%
      (lambda (_%src90192%_ _%dest90193%_ _%replace?90194%_)
        (let* ((_%src90197%_ _%src90192%_)
               (_%dest90205%_ _%dest90193%_)
               (_%replace?90213%_ _%replace?90194%_))
          (letrec ((_%force-move-it90222%_
                    (lambda ()
                      (let ((_%tmp90228%_
                             (if _%replace?90213%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest90205%_))
                                     (let ((__tmp92229
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest90205%_
                                        '"."
                                        __tmp92229))
                                     '#f)
                                 '#f)))
                        (if _%tmp90228%_
                            (rename-file _%dest90205%_ _%tmp90228%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e90230%_)
                           (if _%tmp90228%_
                               (rename-file _%tmp90228%_ _%dest90205%_ '#t)
                               '#!void)
                           (raise _%e90230%_))
                         (lambda ()
                           (let ((_%fi90233%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src90197%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi90233%_))
                                      'symbolic-link)
                                 (let ((__tmp92230
                                        (path-normalize _%src90197%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp92230
                                    _%dest90205%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src90197%_ _%dest90205%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src90197%_))
                           (if _%tmp90228%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp90228%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e90224%_)
               (if (let () (declare (not safe)) (##file-exists? _%src90197%_))
                   (_%force-move-it90222%_)
                   (raise _%e90224%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src90197%_
                  _%dest90205%_
                  _%replace?90213%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src90239%_ _%dest90240%_)
        (let ((_%replace?90242%_ '#t))
          (__move-file__% _%src90239%_ _%dest90240%_ _%replace?90242%_))))
    (define __move-file
      (lambda _g92232_
        (let ((_g92231_ (let () (declare (not safe)) (##length _g92232_))))
          (cond ((let () (declare (not safe)) (##fx= _g92231_ 2))
                 (apply __move-file__0 _g92232_))
                ((let () (declare (not safe)) (##fx= _g92231_ 3))
                 (apply __move-file__% _g92232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g92232_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore90188%_ '#t))
    (define true? (lambda (_%obj90185%_) (eq? _%obj90185%_ '#t)))
    (define false (lambda _%ignore90182%_ '#f))
    (define void (lambda _%ignore90179%_ '#!void))
    (define void? (lambda (_%obj90176%_) (eq? _%obj90176%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj90173%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj90173%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj90170%_) (eq? _%obj90170%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj90167%_) (eq? _%obj90167%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj90164%_) (eq? _%obj90164%_ '#!optional)))
    (define immediate?
      (lambda (_%obj90159%_)
        (let* ((_%t90162%_ (let () (declare (not safe)) (##type _%obj90159%_)))
               (__tmp92233
                (let () (declare (not safe)) (##fxand _%t90162%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp92233))))
    (define nonnegative-fixnum?
      (lambda (_%obj90156%_)
        (if (fixnum? _%obj90156%_)
            (let () (declare (not safe)) (##fx>= _%obj90156%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj90150%_)
        (let ((_%$e90153%_ (pair? _%obj90150%_)))
          (if _%$e90153%_ _%$e90153%_ (null? _%obj90150%_)))))
    (define values-count
      (lambda (_%obj90147%_)
        (if (let () (declare (not safe)) (##values? _%obj90147%_))
            (let () (declare (not safe)) (##values-length _%obj90147%_))
            '1)))
    (define values-ref
      (lambda (_%obj90132%_ _%k90133%_)
        (if (fixnum? _%k90133%_)
            (let ((_%k90137%_ _%k90133%_))
              (__values-ref _%obj90132%_ _%k90137%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k90133%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj90119%_ _%k90120%_)
        (let ((_%k90123%_ _%k90120%_))
          (if (let () (declare (not safe)) (##values? _%obj90119%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj90119%_ _%k90123%_))
              _%obj90119%_))))
    (define values->list
      (lambda (_%obj90116%_)
        (if (let () (declare (not safe)) (##values? _%obj90116%_))
            (let () (declare (not safe)) (##values->list _%obj90116%_))
            (list _%obj90116%_))))
    (define foldl1
      (lambda (_%f90100%_ _%iv90101%_ _%lst90102%_)
        (if (procedure? _%f90100%_)
            (let ((_%f90106%_ _%f90100%_))
              (__foldl1 _%f90106%_ _%iv90101%_ _%lst90102%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f90100%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f90048%_ _%iv90049%_ _%lst90050%_)
        (let ((_%f90053%_ _%f90048%_))
          (let _%lp90062%_ ((_%rest90064%_ _%lst90050%_)
                            (_%r90065%_ _%iv90049%_))
            (let* ((_%rest9006690074%_ _%rest90064%_)
                   (_%else9006890082%_ (lambda () _%r90065%_))
                   (_%K9007090088%_
                    (lambda (_%rest90085%_ _%x90086%_)
                      (_%lp90062%_
                       _%rest90085%_
                       (let ()
                         (declare (not safe))
                         (_%f90053%_ _%x90086%_ _%r90065%_))))))
              (if (pair? _%rest9006690074%_)
                  (let ((_%hd9007190091%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9006690074%_)))
                        (_%tl9007290093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9006690074%_))))
                    (let* ((_%x90096%_ _%hd9007190091%_)
                           (_%rest90098%_ _%tl9007290093%_))
                      (_%K9007090088%_ _%rest90098%_ _%x90096%_)))
                  (_%else9006890082%_)))))))
    (define foldl2
      (lambda (_%f90031%_ _%iv90032%_ _%lst190033%_ _%lst290034%_)
        (if (procedure? _%f90031%_)
            (let ((_%f90038%_ _%f90031%_))
              (__foldl2 _%f90038%_ _%iv90032%_ _%lst190033%_ _%lst290034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f90031%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89944%_ _%iv89945%_ _%lst189946%_ _%lst289947%_)
        (let ((_%f89950%_ _%f89944%_))
          (let _%lp89959%_ ((_%rest189961%_ _%lst189946%_)
                            (_%rest289962%_ _%lst289947%_)
                            (_%r89963%_ _%iv89945%_))
            (let* ((_%rest18996489972%_ _%rest189961%_)
                   (_%else8996689980%_ (lambda () _%r89963%_))
                   (_%K8996890019%_
                    (lambda (_%rest189983%_ _%x189984%_)
                      (let* ((_%rest28998589993%_ _%rest289962%_)
                             (_%else8998790001%_ (lambda () _%r89963%_))
                             (_%K8998990007%_
                              (lambda (_%rest290004%_ _%x290005%_)
                                (_%lp89959%_
                                 _%rest189983%_
                                 _%rest290004%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89950%_
                                    _%x189984%_
                                    _%x290005%_
                                    _%r89963%_))))))
                        (if (pair? _%rest28998589993%_)
                            (let ((_%hd8999090010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28998589993%_)))
                                  (_%tl8999190012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28998589993%_))))
                              (let* ((_%x290015%_ _%hd8999090010%_)
                                     (_%rest290017%_ _%tl8999190012%_))
                                (_%K8998990007%_ _%rest290017%_ _%x290015%_)))
                            (_%else8998790001%_))))))
              (if (pair? _%rest18996489972%_)
                  (let ((_%hd8996990022%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18996489972%_)))
                        (_%tl8997090024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18996489972%_))))
                    (let* ((_%x190027%_ _%hd8996990022%_)
                           (_%rest190029%_ _%tl8997090024%_))
                      (_%K8996890019%_ _%rest190029%_ _%x190027%_)))
                  (_%else8996689980%_)))))))
    (define foldl
      (lambda _g92235_
        (let ((_g92234_ (let () (declare (not safe)) (##length _g92235_))))
          (cond ((let () (declare (not safe)) (##fx= _g92234_ 3))
                 (apply foldl1 _g92235_))
                ((let () (declare (not safe)) (##fx= _g92234_ 4))
                 (apply foldl2 _g92235_))
                ((let () (declare (not safe)) (##fx>= _g92234_ 4))
                 (apply foldl* _g92235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g92235_))))))
    (define foldl*
      (lambda (_%f89913%_ _%iv89914%_ . _%rest89915%_)
        (if (procedure? _%f89913%_)
            (let ((_%f89919%_ _%f89913%_))
              (declare (not safe))
              (##apply __foldl* _%f89919%_ _%iv89914%_ _%rest89915%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89913%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f89891%_ _%iv89892%_ . _%rest89893%_)
        (let ((_%f89896%_ _%f89891%_))
          (let _%recur89905%_ ((_%iv89907%_ _%iv89892%_)
                               (_%rest89908%_ _%rest89893%_))
            (if (__andmap1 pair? _%rest89908%_)
                (_%recur89905%_
                 (let ((__tmp92236
                        (__foldr1
                         (lambda (_%xs89910%_ _%r89911%_)
                           (cons (car _%xs89910%_) _%r89911%_))
                         (list _%iv89907%_)
                         _%rest89908%_)))
                   (declare (not safe))
                   (##apply _%f89896%_ __tmp92236))
                 (map cdr _%rest89908%_))
                _%iv89907%_)))))
    (define foldr1
      (lambda (_%f89875%_ _%iv89876%_ _%lst89877%_)
        (if (procedure? _%f89875%_)
            (let ((_%f89881%_ _%f89875%_))
              (__foldr1 _%f89881%_ _%iv89876%_ _%lst89877%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f89875%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f89824%_ _%iv89825%_ _%lst89826%_)
        (let ((_%f89829%_ _%f89824%_))
          (let _%recur89838%_ ((_%rest89840%_ _%lst89826%_))
            (let* ((_%rest8984189849%_ _%rest89840%_)
                   (_%else8984389857%_ (lambda () _%iv89825%_))
                   (_%K8984589863%_
                    (lambda (_%rest89860%_ _%x89861%_)
                      (let ((__tmp92237 (_%recur89838%_ _%rest89860%_)))
                        (declare (not safe))
                        (_%f89829%_ _%x89861%_ __tmp92237)))))
              (if (pair? _%rest8984189849%_)
                  (let ((_%hd8984689866%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8984189849%_)))
                        (_%tl8984789868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8984189849%_))))
                    (let* ((_%x89871%_ _%hd8984689866%_)
                           (_%rest89873%_ _%tl8984789868%_))
                      (_%K8984589863%_ _%rest89873%_ _%x89871%_)))
                  (_%else8984389857%_)))))))
    (define foldr2
      (lambda (_%f89807%_ _%iv89808%_ _%lst189809%_ _%lst289810%_)
        (if (procedure? _%f89807%_)
            (let ((_%f89814%_ _%f89807%_))
              (__foldr2 _%f89814%_ _%iv89808%_ _%lst189809%_ _%lst289810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f89807%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f89721%_ _%iv89722%_ _%lst189723%_ _%lst289724%_)
        (let ((_%f89727%_ _%f89721%_))
          (let _%recur89736%_ ((_%rest189738%_ _%lst189723%_)
                               (_%rest289739%_ _%lst289724%_))
            (let* ((_%rest18974089748%_ _%rest189738%_)
                   (_%else8974289756%_ (lambda () _%iv89722%_))
                   (_%K8974489795%_
                    (lambda (_%rest189759%_ _%x189760%_)
                      (let* ((_%rest28976189769%_ _%rest289739%_)
                             (_%else8976389777%_ (lambda () _%iv89722%_))
                             (_%K8976589783%_
                              (lambda (_%rest289780%_ _%x289781%_)
                                (let ((__tmp92238
                                       (_%recur89736%_
                                        _%rest189759%_
                                        _%rest289780%_)))
                                  (declare (not safe))
                                  (_%f89727%_
                                   _%x189760%_
                                   _%x289781%_
                                   __tmp92238)))))
                        (if (pair? _%rest28976189769%_)
                            (let ((_%hd8976689786%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28976189769%_)))
                                  (_%tl8976789788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28976189769%_))))
                              (let* ((_%x289791%_ _%hd8976689786%_)
                                     (_%rest289793%_ _%tl8976789788%_))
                                (_%K8976589783%_ _%rest289793%_ _%x289791%_)))
                            (_%else8976389777%_))))))
              (if (pair? _%rest18974089748%_)
                  (let ((_%hd8974589798%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18974089748%_)))
                        (_%tl8974689800%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18974089748%_))))
                    (let* ((_%x189803%_ _%hd8974589798%_)
                           (_%rest189805%_ _%tl8974689800%_))
                      (_%K8974489795%_ _%rest189805%_ _%x189803%_)))
                  (_%else8974289756%_)))))))
    (define foldr
      (lambda _g92240_
        (let ((_g92239_ (let () (declare (not safe)) (##length _g92240_))))
          (cond ((let () (declare (not safe)) (##fx= _g92239_ 3))
                 (apply foldr1 _g92240_))
                ((let () (declare (not safe)) (##fx= _g92239_ 4))
                 (apply foldr2 _g92240_))
                ((let () (declare (not safe)) (##fx>= _g92239_ 4))
                 (apply foldr* _g92240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g92240_))))))
    (define foldr*
      (lambda (_%f89690%_ _%iv89691%_ . _%rest89692%_)
        (if (procedure? _%f89690%_)
            (let ((_%f89696%_ _%f89690%_))
              (declare (not safe))
              (##apply __foldr* _%f89696%_ _%iv89691%_ _%rest89692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f89690%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f89669%_ _%iv89670%_ . _%rest89671%_)
        (let ((_%f89674%_ _%f89669%_))
          (let _%recur89683%_ ((_%rest89685%_ _%rest89671%_))
            (if (__andmap1 pair? _%rest89685%_)
                (let ((__tmp92241
                       (__foldr1
                        (lambda (_%xs89687%_ _%r89688%_)
                          (cons (car _%xs89687%_) _%r89688%_))
                        (list (_%recur89683%_ (map cdr _%rest89685%_)))
                        _%rest89685%_)))
                  (declare (not safe))
                  (##apply _%f89674%_ __tmp92241))
                _%iv89670%_)))))
    (define remove-nulls!
      (lambda (_%l89556%_)
        (let* ((_%l8955789570%_ _%l89556%_)
               (_%E8956189574%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8955789570%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8956689659%_
                 (lambda (_%r89657%_) (remove-nulls! _%r89657%_)))
                (_%K8956389646%_
                 (lambda (_%r89586%_)
                   (let _%loop89588%_ ((_%l89590%_ _%l89556%_)
                                       (_%r89591%_ _%r89586%_))
                     (let* ((_%r8959289605%_ _%r89591%_)
                            (_%E8959689609%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8959289605%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8960189636%_
                              (lambda (_%rr89634%_)
                                (let ((__tmp92243 _%l89590%_)
                                      (__tmp92242 (remove-nulls! _%rr89634%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp92243 __tmp92242))))
                             (_%K8959889623%_
                              (lambda (_%rr89621%_)
                                (_%loop89588%_ _%r89591%_ _%rr89621%_)))
                             (_%K8959789614%_ (lambda () '#!void)))
                         (if (pair? _%r8959289605%_)
                             (let ((_%tl8960389641%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8959289605%_)))
                                   (_%hd8960289639%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8959289605%_))))
                               (if (null? _%hd8960289639%_)
                                   (let ((_%rr89644%_ _%tl8960389641%_))
                                     (_%K8960189636%_ _%rr89644%_))
                                   (let ((_%rr89629%_ _%tl8960389641%_))
                                     (_%K8959889623%_ _%rr89629%_))))
                             '#!void))))
                   _%l89556%_))
                (_%K8956289579%_ (lambda () _%l89556%_)))
            (if (pair? _%l8955789570%_)
                (let ((_%tl8956889664%_
                       (let () (declare (not safe)) (##cdr _%l8955789570%_)))
                      (_%hd8956789662%_
                       (let () (declare (not safe)) (##car _%l8955789570%_))))
                  (if (null? _%hd8956789662%_)
                      (let ((_%r89667%_ _%tl8956889664%_))
                        (remove-nulls! _%r89667%_))
                      (let ((_%r89652%_ _%tl8956889664%_))
                        (_%K8956389646%_ _%r89652%_))))
                (_%K8956289579%_))))))
    (define append1!
      (lambda (_%l89541%_ _%x89542%_)
        (let ((_%l289545%_ (cons _%x89542%_ '())))
          (if (pair? _%l89541%_)
              (let ((_%l89547%_ _%l89541%_))
                (let ((__tmp92244
                       (let () (declare (not safe)) (##last-pair _%l89547%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp92244 _%l289545%_))
                _%l89547%_)
              _%l289545%_))))
    (define append-reverse-until
      (lambda (_%pred89525%_ _%rhead89526%_ _%tail89527%_)
        (if (procedure? _%pred89525%_)
            (let ((_%pred89531%_ _%pred89525%_))
              (__append-reverse-until
               _%pred89531%_
               _%rhead89526%_
               _%tail89527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred89525%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred89467%_ _%rhead89468%_ _%tail89469%_)
        (let ((_%pred89472%_ _%pred89467%_))
          (let _%loop89481%_ ((_%rhead89483%_ _%rhead89468%_)
                              (_%tail89484%_ _%tail89469%_))
            (let* ((_%rhead8948689495%_ _%rhead89483%_)
                   (_%E8948989499%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8948689495%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8949389522%_ (lambda () (values '() _%tail89484%_)))
                    (_%K8949089506%_
                     (lambda (_%r89503%_ _%a89504%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred89472%_ _%a89504%_))
                           (values _%rhead89483%_ _%tail89484%_)
                           (_%loop89481%_
                            _%r89503%_
                            (cons _%a89504%_ _%tail89484%_))))))
                (let ((_%try-match8948889518%_
                       (lambda ()
                         (if (pair? _%rhead8948689495%_)
                             (let ((_%tl8949289511%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8948689495%_)))
                                   (_%hd8949189509%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8948689495%_))))
                               (let ((_%a89514%_ _%hd8949189509%_)
                                     (_%r89516%_ _%tl8949289511%_))
                                 (_%K8949089506%_ _%r89516%_ _%a89514%_)))
                             (_%E8948989499%_)))))
                  (if (null? _%rhead8948689495%_)
                      (_%K8949389522%_)
                      (_%try-match8948889518%_)))))))))
    (define andmap1
      (lambda (_%f89452%_ _%lst89453%_)
        (if (procedure? _%f89452%_)
            (let ((_%f89457%_ _%f89452%_)) (__andmap1 _%f89457%_ _%lst89453%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f89452%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f89401%_ _%lst89402%_)
        (let ((_%f89405%_ _%f89401%_))
          (let _%lp89414%_ ((_%rest89416%_ _%lst89402%_))
            (let* ((_%rest8941889426%_ _%rest89416%_)
                   (_%else8942089434%_ (lambda () '#t))
                   (_%K8942289440%_
                    (lambda (_%rest89437%_ _%x89438%_)
                      (if (let () (declare (not safe)) (_%f89405%_ _%x89438%_))
                          (_%lp89414%_ _%rest89437%_)
                          '#f))))
              (if (pair? _%rest8941889426%_)
                  (let ((_%hd8942389443%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8941889426%_)))
                        (_%tl8942489445%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8941889426%_))))
                    (let* ((_%x89448%_ _%hd8942389443%_)
                           (_%rest89450%_ _%tl8942489445%_))
                      (_%K8942289440%_ _%rest89450%_ _%x89448%_)))
                  (_%else8942089434%_)))))))
    (define andmap2
      (lambda (_%f89385%_ _%lst189386%_ _%lst289387%_)
        (if (procedure? _%f89385%_)
            (let ((_%f89391%_ _%f89385%_))
              (__andmap2 _%f89391%_ _%lst189386%_ _%lst289387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f89385%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f89299%_ _%lst189300%_ _%lst289301%_)
        (let ((_%f89304%_ _%f89299%_))
          (let _%lp89313%_ ((_%rest189315%_ _%lst189300%_)
                            (_%rest289316%_ _%lst289301%_))
            (let* ((_%rest18931889326%_ _%rest189315%_)
                   (_%else8932089334%_ (lambda () '#t))
                   (_%K8932289373%_
                    (lambda (_%rest189337%_ _%x189338%_)
                      (let* ((_%rest28933989347%_ _%rest289316%_)
                             (_%else8934189355%_ (lambda () '#t))
                             (_%K8934389361%_
                              (lambda (_%rest289358%_ _%x289359%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f89304%_ _%x189338%_ _%x289359%_))
                                    (_%lp89313%_ _%rest189337%_ _%rest289358%_)
                                    '#f))))
                        (if (pair? _%rest28933989347%_)
                            (let ((_%hd8934489364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28933989347%_)))
                                  (_%tl8934589366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28933989347%_))))
                              (let* ((_%x289369%_ _%hd8934489364%_)
                                     (_%rest289371%_ _%tl8934589366%_))
                                (_%K8934389361%_ _%rest289371%_ _%x289369%_)))
                            (_%else8934189355%_))))))
              (if (pair? _%rest18931889326%_)
                  (let ((_%hd8932389376%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18931889326%_)))
                        (_%tl8932489378%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18931889326%_))))
                    (let* ((_%x189381%_ _%hd8932389376%_)
                           (_%rest189383%_ _%tl8932489378%_))
                      (_%K8932289373%_ _%rest189383%_ _%x189381%_)))
                  (_%else8932089334%_)))))))
    (define andmap
      (lambda _g92246_
        (let ((_g92245_ (let () (declare (not safe)) (##length _g92246_))))
          (cond ((let () (declare (not safe)) (##fx= _g92245_ 2))
                 (apply andmap1 _g92246_))
                ((let () (declare (not safe)) (##fx= _g92245_ 3))
                 (apply andmap2 _g92246_))
                ((let () (declare (not safe)) (##fx>= _g92245_ 3))
                 (apply andmap* _g92246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g92246_))))))
    (define andmap*
      (lambda (_%f89272%_ . _%rest89273%_)
        (if (procedure? _%f89272%_)
            (let ((_%f89277%_ _%f89272%_))
              (declare (not safe))
              (##apply __andmap* _%f89277%_ _%rest89273%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f89272%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f89254%_ . _%rest89255%_)
        (let ((_%f89258%_ _%f89254%_))
          (let _%recur89267%_ ((_%rest89269%_ _%rest89255%_))
            (if (__andmap1 pair? _%rest89269%_)
                (if (let ((__tmp92247 (map car _%rest89269%_)))
                      (declare (not safe))
                      (##apply _%f89258%_ __tmp92247))
                    (_%recur89267%_ (map cdr _%rest89269%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f89239%_ _%lst89240%_)
        (if (procedure? _%f89239%_)
            (let ((_%f89244%_ _%f89239%_)) (__ormap1 _%f89244%_ _%lst89240%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f89239%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f89186%_ _%lst89187%_)
        (let ((_%f89190%_ _%f89186%_))
          (let _%lp89199%_ ((_%rest89201%_ _%lst89187%_))
            (let* ((_%rest8920289210%_ _%rest89201%_)
                   (_%else8920489218%_ (lambda () '#f))
                   (_%K8920689227%_
                    (lambda (_%rest89221%_ _%x89222%_)
                      (let ((_%$e89224%_
                             (let ()
                               (declare (not safe))
                               (_%f89190%_ _%x89222%_))))
                        (if _%$e89224%_
                            _%$e89224%_
                            (_%lp89199%_ _%rest89221%_))))))
              (if (pair? _%rest8920289210%_)
                  (let ((_%hd8920789230%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8920289210%_)))
                        (_%tl8920889232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8920289210%_))))
                    (let* ((_%x89235%_ _%hd8920789230%_)
                           (_%rest89237%_ _%tl8920889232%_))
                      (_%K8920689227%_ _%rest89237%_ _%x89235%_)))
                  (_%else8920489218%_)))))))
    (define ormap2
      (lambda (_%f89170%_ _%lst189171%_ _%lst289172%_)
        (if (procedure? _%f89170%_)
            (let ((_%f89176%_ _%f89170%_))
              (__ormap2 _%f89176%_ _%lst189171%_ _%lst289172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f89170%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f89082%_ _%lst189083%_ _%lst289084%_)
        (let ((_%f89087%_ _%f89082%_))
          (let _%lp89096%_ ((_%rest189098%_ _%lst189083%_)
                            (_%rest289099%_ _%lst289084%_))
            (let* ((_%rest18910089108%_ _%rest189098%_)
                   (_%else8910289116%_ (lambda () '#f))
                   (_%K8910489158%_
                    (lambda (_%rest189119%_ _%x189120%_)
                      (let* ((_%rest28912189129%_ _%rest289099%_)
                             (_%else8912389137%_ (lambda () '#f))
                             (_%K8912589146%_
                              (lambda (_%rest289140%_ _%x289141%_)
                                (let ((_%$e89143%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f89087%_
                                          _%x189120%_
                                          _%x289141%_))))
                                  (if _%$e89143%_
                                      _%$e89143%_
                                      (_%lp89096%_
                                       _%rest189119%_
                                       _%rest289140%_))))))
                        (if (pair? _%rest28912189129%_)
                            (let ((_%hd8912689149%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28912189129%_)))
                                  (_%tl8912789151%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28912189129%_))))
                              (let* ((_%x289154%_ _%hd8912689149%_)
                                     (_%rest289156%_ _%tl8912789151%_))
                                (_%K8912589146%_ _%rest289156%_ _%x289154%_)))
                            (_%else8912389137%_))))))
              (if (pair? _%rest18910089108%_)
                  (let ((_%hd8910589161%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18910089108%_)))
                        (_%tl8910689163%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18910089108%_))))
                    (let* ((_%x189166%_ _%hd8910589161%_)
                           (_%rest189168%_ _%tl8910689163%_))
                      (_%K8910489158%_ _%rest189168%_ _%x189166%_)))
                  (_%else8910289116%_)))))))
    (define ormap
      (lambda _g92249_
        (let ((_g92248_ (let () (declare (not safe)) (##length _g92249_))))
          (cond ((let () (declare (not safe)) (##fx= _g92248_ 2))
                 (apply ormap1 _g92249_))
                ((let () (declare (not safe)) (##fx= _g92248_ 3))
                 (apply ormap2 _g92249_))
                ((let () (declare (not safe)) (##fx>= _g92248_ 3))
                 (apply ormap* _g92249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g92249_))))))
    (define ormap*
      (lambda (_%f89055%_ . _%rest89056%_)
        (if (procedure? _%f89055%_)
            (let ((_%f89060%_ _%f89055%_))
              (declare (not safe))
              (##apply __ormap* _%f89060%_ _%rest89056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f89055%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f89035%_ . _%rest89036%_)
        (let ((_%f89039%_ _%f89035%_))
          (let _%recur89048%_ ((_%rest89050%_ _%rest89036%_))
            (if (__andmap1 pair? _%rest89050%_)
                (let ((_%$e89052%_
                       (let ((__tmp92250 (map car _%rest89050%_)))
                         (declare (not safe))
                         (##apply _%f89039%_ __tmp92250))))
                  (if _%$e89052%_
                      _%$e89052%_
                      (_%recur89048%_ (map cdr _%rest89050%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f89020%_ _%lst89021%_)
        (if (procedure? _%f89020%_)
            (let ((_%f89025%_ _%f89020%_))
              (__filter-map1 _%f89025%_ _%lst89021%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f89020%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88963%_ _%lst88964%_)
        (let ((_%f88967%_ _%f88963%_))
          (let _%recur88976%_ ((_%rest88978%_ _%lst88964%_))
            (let* ((_%rest8898088988%_ _%rest88978%_)
                   (_%else8898288996%_ (lambda () '()))
                   (_%K8898489008%_
                    (lambda (_%rest88999%_ _%x89000%_)
                      (let ((_%$e89002%_
                             (let ()
                               (declare (not safe))
                               (_%f88967%_ _%x89000%_))))
                        (if _%$e89002%_
                            ((lambda (_%r89005%_)
                               (cons _%r89005%_
                                     (_%recur88976%_ _%rest88999%_)))
                             _%$e89002%_)
                            (_%recur88976%_ _%rest88999%_))))))
              (if (pair? _%rest8898088988%_)
                  (let ((_%hd8898589011%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8898088988%_)))
                        (_%tl8898689013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8898088988%_))))
                    (let* ((_%x89016%_ _%hd8898589011%_)
                           (_%rest89018%_ _%tl8898689013%_))
                      (_%K8898489008%_ _%rest89018%_ _%x89016%_)))
                  (_%else8898288996%_)))))))
    (define filter-map2
      (lambda (_%f88947%_ _%lst188948%_ _%lst288949%_)
        (if (procedure? _%f88947%_)
            (let ((_%f88953%_ _%f88947%_))
              (__filter-map2 _%f88953%_ _%lst188948%_ _%lst288949%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88947%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f88855%_ _%lst188856%_ _%lst288857%_)
        (let ((_%f88860%_ _%f88855%_))
          (let _%recur88869%_ ((_%rest188871%_ _%lst188856%_)
                               (_%rest288872%_ _%lst288857%_))
            (let* ((_%rest18887488882%_ _%rest188871%_)
                   (_%else8887688890%_ (lambda () '()))
                   (_%K8887888935%_
                    (lambda (_%rest188893%_ _%x188894%_)
                      (let* ((_%rest28889588903%_ _%rest288872%_)
                             (_%else8889788911%_ (lambda () '()))
                             (_%K8889988923%_
                              (lambda (_%rest288914%_ _%x288915%_)
                                (let ((_%$e88917%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88860%_
                                          _%x188894%_
                                          _%x288915%_))))
                                  (if _%$e88917%_
                                      ((lambda (_%r88920%_)
                                         (cons _%r88920%_
                                               (_%recur88869%_
                                                _%rest188893%_
                                                _%rest288914%_)))
                                       _%$e88917%_)
                                      (_%recur88869%_
                                       _%rest188893%_
                                       _%rest288914%_))))))
                        (if (pair? _%rest28889588903%_)
                            (let ((_%hd8890088926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28889588903%_)))
                                  (_%tl8890188928%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28889588903%_))))
                              (let* ((_%x288931%_ _%hd8890088926%_)
                                     (_%rest288933%_ _%tl8890188928%_))
                                (_%K8889988923%_ _%rest288933%_ _%x288931%_)))
                            (_%else8889788911%_))))))
              (if (pair? _%rest18887488882%_)
                  (let ((_%hd8887988938%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18887488882%_)))
                        (_%tl8888088940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18887488882%_))))
                    (let* ((_%x188943%_ _%hd8887988938%_)
                           (_%rest188945%_ _%tl8888088940%_))
                      (_%K8887888935%_ _%rest188945%_ _%x188943%_)))
                  (_%else8887688890%_)))))))
    (define filter-map
      (lambda _g92252_
        (let ((_g92251_ (let () (declare (not safe)) (##length _g92252_))))
          (cond ((let () (declare (not safe)) (##fx= _g92251_ 2))
                 (apply filter-map1 _g92252_))
                ((let () (declare (not safe)) (##fx= _g92251_ 3))
                 (apply filter-map2 _g92252_))
                ((let () (declare (not safe)) (##fx>= _g92251_ 3))
                 (apply filter-map* _g92252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g92252_))))))
    (define filter-map*
      (lambda (_%f88828%_ . _%rest88829%_)
        (if (procedure? _%f88828%_)
            (let ((_%f88833%_ _%f88828%_))
              (declare (not safe))
              (##apply __filter-map* _%f88833%_ _%rest88829%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f88828%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f88804%_ . _%rest88805%_)
        (let ((_%f88808%_ _%f88804%_))
          (let _%recur88817%_ ((_%rest88819%_ _%rest88805%_))
            (if (__andmap1 pair? _%rest88819%_)
                (let ((_%$e88822%_
                       (let ((__tmp92253 (map car _%rest88819%_)))
                         (declare (not safe))
                         (##apply _%f88808%_ __tmp92253))))
                  (if _%$e88822%_
                      ((lambda (_%r88825%_)
                         (cons _%r88825%_
                               (_%recur88817%_ (map cdr _%rest88819%_))))
                       _%$e88822%_)
                      (_%recur88817%_ (map cdr _%rest88819%_))))
                '())))))
    (define agetq__%
      (lambda (_%key88780%_ _%lst88782%_ _%default88784%_)
        (let ((_%$e88787%_
               (if (pair? _%lst88782%_) (assq _%key88780%_ _%lst88782%_) '#f)))
          (if _%$e88787%_
              (cdr _%$e88787%_)
              (if (procedure? _%default88784%_)
                  (_%default88784%_ _%key88780%_)
                  _%default88784%_)))))
    (define agetq__0
      (lambda (_%key88795%_ _%lst88796%_)
        (let ((_%default88798%_ '#f))
          (agetq__% _%key88795%_ _%lst88796%_ _%default88798%_))))
    (define agetq
      (lambda _g92255_
        (let ((_g92254_ (let () (declare (not safe)) (##length _g92255_))))
          (cond ((let () (declare (not safe)) (##fx= _g92254_ 2))
                 (apply agetq__0 _g92255_))
                ((let () (declare (not safe)) (##fx= _g92254_ 3))
                 (apply agetq__% _g92255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g92255_))))))
    (define agetv__%
      (lambda (_%key88755%_ _%lst88757%_ _%default88759%_)
        (let ((_%$e88762%_
               (if (pair? _%lst88757%_) (assv _%key88755%_ _%lst88757%_) '#f)))
          (if _%$e88762%_
              (cdr _%$e88762%_)
              (if (procedure? _%default88759%_)
                  (_%default88759%_ _%key88755%_)
                  _%default88759%_)))))
    (define agetv__0
      (lambda (_%key88770%_ _%lst88771%_)
        (let ((_%default88773%_ '#f))
          (agetv__% _%key88770%_ _%lst88771%_ _%default88773%_))))
    (define agetv
      (lambda _g92257_
        (let ((_g92256_ (let () (declare (not safe)) (##length _g92257_))))
          (cond ((let () (declare (not safe)) (##fx= _g92256_ 2))
                 (apply agetv__0 _g92257_))
                ((let () (declare (not safe)) (##fx= _g92256_ 3))
                 (apply agetv__% _g92257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g92257_))))))
    (define aget__%
      (lambda (_%key88730%_ _%lst88732%_ _%default88734%_)
        (let ((_%$e88737%_
               (if (pair? _%lst88732%_)
                   (assoc _%key88730%_ _%lst88732%_)
                   '#f)))
          (if _%$e88737%_
              (cdr _%$e88737%_)
              (if (procedure? _%default88734%_)
                  (_%default88734%_ _%key88730%_)
                  _%default88734%_)))))
    (define aget__0
      (lambda (_%key88745%_ _%lst88746%_)
        (let ((_%default88748%_ '#f))
          (aget__% _%key88745%_ _%lst88746%_ _%default88748%_))))
    (define aget
      (lambda _g92259_
        (let ((_g92258_ (let () (declare (not safe)) (##length _g92259_))))
          (cond ((let () (declare (not safe)) (##fx= _g92258_ 2))
                 (apply aget__0 _g92259_))
                ((let () (declare (not safe)) (##fx= _g92258_ 3))
                 (apply aget__% _g92259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g92259_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key88659%_ _%lst88661%_ _%default88663%_)
        (let _%lp88666%_ ((_%rest88669%_ _%lst88661%_))
          (let* ((_%rest8867188681%_ _%rest88669%_)
                 (_%else8867388689%_
                  (lambda ()
                    (if (procedure? _%default88663%_)
                        (_%default88663%_ _%key88659%_)
                        _%default88663%_)))
                 (_%K8867588698%_
                  (lambda (_%rest88692%_ _%v88693%_ _%k88695%_)
                    (if (eq? _%k88695%_ _%key88659%_)
                        _%v88693%_
                        (_%lp88666%_ _%rest88692%_)))))
            (if (pair? _%rest8867188681%_)
                (let ((_%hd8867688701%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8867188681%_)))
                      (_%tl8867788703%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8867188681%_))))
                  (let ((_%k88706%_ _%hd8867688701%_))
                    (if (pair? _%tl8867788703%_)
                        (let ((_%hd8867888708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8867788703%_)))
                              (_%tl8867988710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8867788703%_))))
                          (let* ((_%v88713%_ _%hd8867888708%_)
                                 (_%rest88715%_ _%tl8867988710%_))
                            (_%K8867588698%_
                             _%rest88715%_
                             _%v88713%_
                             _%k88706%_)))
                        (_%else8867388689%_))))
                (_%else8867388689%_))))))
    (define pgetq__0
      (lambda (_%key88720%_ _%lst88721%_)
        (let ((_%default88723%_ '#f))
          (pgetq__% _%key88720%_ _%lst88721%_ _%default88723%_))))
    (define pgetq
      (lambda _g92261_
        (let ((_g92260_ (let () (declare (not safe)) (##length _g92261_))))
          (cond ((let () (declare (not safe)) (##fx= _g92260_ 2))
                 (apply pgetq__0 _g92261_))
                ((let () (declare (not safe)) (##fx= _g92260_ 3))
                 (apply pgetq__% _g92261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g92261_))))))
    (define pgetv__%
      (lambda (_%key88588%_ _%lst88590%_ _%default88592%_)
        (let _%lp88595%_ ((_%rest88598%_ _%lst88590%_))
          (let* ((_%rest8860088610%_ _%rest88598%_)
                 (_%else8860288618%_
                  (lambda ()
                    (if (procedure? _%default88592%_)
                        (_%default88592%_ _%key88588%_)
                        _%default88592%_)))
                 (_%K8860488627%_
                  (lambda (_%rest88621%_ _%v88622%_ _%k88624%_)
                    (if (eqv? _%k88624%_ _%key88588%_)
                        _%v88622%_
                        (_%lp88595%_ _%rest88621%_)))))
            (if (pair? _%rest8860088610%_)
                (let ((_%hd8860588630%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8860088610%_)))
                      (_%tl8860688632%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8860088610%_))))
                  (let ((_%k88635%_ _%hd8860588630%_))
                    (if (pair? _%tl8860688632%_)
                        (let ((_%hd8860788637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8860688632%_)))
                              (_%tl8860888639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8860688632%_))))
                          (let* ((_%v88642%_ _%hd8860788637%_)
                                 (_%rest88644%_ _%tl8860888639%_))
                            (_%K8860488627%_
                             _%rest88644%_
                             _%v88642%_
                             _%k88635%_)))
                        (_%else8860288618%_))))
                (_%else8860288618%_))))))
    (define pgetv__0
      (lambda (_%key88649%_ _%lst88650%_)
        (let ((_%default88652%_ '#f))
          (pgetv__% _%key88649%_ _%lst88650%_ _%default88652%_))))
    (define pgetv
      (lambda _g92263_
        (let ((_g92262_ (let () (declare (not safe)) (##length _g92263_))))
          (cond ((let () (declare (not safe)) (##fx= _g92262_ 2))
                 (apply pgetv__0 _g92263_))
                ((let () (declare (not safe)) (##fx= _g92262_ 3))
                 (apply pgetv__% _g92263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g92263_))))))
    (define pget__%
      (lambda (_%key88517%_ _%lst88519%_ _%default88521%_)
        (let _%lp88524%_ ((_%rest88527%_ _%lst88519%_))
          (let* ((_%rest8852988539%_ _%rest88527%_)
                 (_%else8853188547%_
                  (lambda ()
                    (if (procedure? _%default88521%_)
                        (_%default88521%_ _%key88517%_)
                        _%default88521%_)))
                 (_%K8853388556%_
                  (lambda (_%rest88550%_ _%v88551%_ _%k88553%_)
                    (if (equal? _%k88553%_ _%key88517%_)
                        _%v88551%_
                        (_%lp88524%_ _%rest88550%_)))))
            (if (pair? _%rest8852988539%_)
                (let ((_%hd8853488559%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8852988539%_)))
                      (_%tl8853588561%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8852988539%_))))
                  (let ((_%k88564%_ _%hd8853488559%_))
                    (if (pair? _%tl8853588561%_)
                        (let ((_%hd8853688566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8853588561%_)))
                              (_%tl8853788568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8853588561%_))))
                          (let* ((_%v88571%_ _%hd8853688566%_)
                                 (_%rest88573%_ _%tl8853788568%_))
                            (_%K8853388556%_
                             _%rest88573%_
                             _%v88571%_
                             _%k88564%_)))
                        (_%else8853188547%_))))
                (_%else8853188547%_))))))
    (define pget__0
      (lambda (_%key88578%_ _%lst88579%_)
        (let ((_%default88581%_ '#f))
          (pget__% _%key88578%_ _%lst88579%_ _%default88581%_))))
    (define pget
      (lambda _g92265_
        (let ((_g92264_ (let () (declare (not safe)) (##length _g92265_))))
          (cond ((let () (declare (not safe)) (##fx= _g92264_ 2))
                 (apply pget__0 _g92265_))
                ((let () (declare (not safe)) (##fx= _g92264_ 3))
                 (apply pget__% _g92265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g92265_))))))
    (define find
      (lambda (_%pred88501%_ _%lst88502%_)
        (if (procedure? _%pred88501%_)
            (let ((_%pred88506%_ _%pred88501%_))
              (__find _%pred88506%_ _%lst88502%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred88501%_)
              '#!void))))
    (define __find
      (lambda (_%pred88484%_ _%lst88485%_)
        (let* ((_%pred88488%_ _%pred88484%_)
               (_%$e88497%_ (__memf _%pred88488%_ _%lst88485%_)))
          (if _%$e88497%_
              (let () (declare (not safe)) (##car _%$e88497%_))
              '#f))))
    (define memf
      (lambda (_%proc88469%_ _%lst88470%_)
        (if (procedure? _%proc88469%_)
            (let ((_%proc88474%_ _%proc88469%_))
              (__memf _%proc88474%_ _%lst88470%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc88469%_)
              '#!void))))
    (define __memf
      (lambda (_%proc88419%_ _%lst88420%_)
        (let ((_%proc88423%_ _%proc88419%_))
          (let _%lp88432%_ ((_%rest88434%_ _%lst88420%_))
            (let* ((_%rest8843588443%_ _%rest88434%_)
                   (_%else8843788451%_ (lambda () '#f))
                   (_%K8843988457%_
                    (lambda (_%tl88454%_ _%hd88455%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88423%_ _%hd88455%_))
                          _%rest88434%_
                          (_%lp88432%_ _%tl88454%_)))))
              (if (pair? _%rest8843588443%_)
                  (let ((_%hd8844088460%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8843588443%_)))
                        (_%tl8844188462%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8843588443%_))))
                    (let* ((_%hd88465%_ _%hd8844088460%_)
                           (_%tl88467%_ _%tl8844188462%_))
                      (_%K8843988457%_ _%tl88467%_ _%hd88465%_)))
                  (_%else8843788451%_)))))))
    (define remove1
      (lambda (_%el88372%_ _%lst88374%_)
        (let _%lp88377%_ ((_%rest88380%_ _%lst88374%_) (_%r88382%_ '()))
          (let* ((_%rest8838488392%_ _%rest88380%_)
                 (_%else8838688400%_ (lambda () _%lst88374%_))
                 (_%K8838888407%_
                  (lambda (_%rest88403%_ _%hd88404%_)
                    (if (equal? _%el88372%_ _%hd88404%_)
                        (__foldl1 cons _%rest88403%_ _%r88382%_)
                        (_%lp88377%_
                         _%rest88403%_
                         (cons _%hd88404%_ _%r88382%_))))))
            (if (pair? _%rest8838488392%_)
                (let ((_%hd8838988410%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8838488392%_)))
                      (_%tl8839088412%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8838488392%_))))
                  (let* ((_%hd88415%_ _%hd8838988410%_)
                         (_%rest88417%_ _%tl8839088412%_))
                    (_%K8838888407%_ _%rest88417%_ _%hd88415%_)))
                (_%else8838688400%_))))))
    (define remv1
      (lambda (_%el88325%_ _%lst88327%_)
        (let _%lp88330%_ ((_%rest88333%_ _%lst88327%_) (_%r88335%_ '()))
          (let* ((_%rest8833788345%_ _%rest88333%_)
                 (_%else8833988353%_ (lambda () _%lst88327%_))
                 (_%K8834188360%_
                  (lambda (_%rest88356%_ _%hd88357%_)
                    (if (eqv? _%el88325%_ _%hd88357%_)
                        (__foldl1 cons _%rest88356%_ _%r88335%_)
                        (_%lp88330%_
                         _%rest88356%_
                         (cons _%hd88357%_ _%r88335%_))))))
            (if (pair? _%rest8833788345%_)
                (let ((_%hd8834288363%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8833788345%_)))
                      (_%tl8834388365%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8833788345%_))))
                  (let* ((_%hd88368%_ _%hd8834288363%_)
                         (_%rest88370%_ _%tl8834388365%_))
                    (_%K8834188360%_ _%rest88370%_ _%hd88368%_)))
                (_%else8833988353%_))))))
    (define remq1
      (lambda (_%el88278%_ _%lst88280%_)
        (let _%lp88283%_ ((_%rest88286%_ _%lst88280%_) (_%r88288%_ '()))
          (let* ((_%rest8829088298%_ _%rest88286%_)
                 (_%else8829288306%_ (lambda () _%lst88280%_))
                 (_%K8829488313%_
                  (lambda (_%rest88309%_ _%hd88310%_)
                    (if (eq? _%el88278%_ _%hd88310%_)
                        (__foldl1 cons _%rest88309%_ _%r88288%_)
                        (_%lp88283%_
                         _%rest88309%_
                         (cons _%hd88310%_ _%r88288%_))))))
            (if (pair? _%rest8829088298%_)
                (let ((_%hd8829588316%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8829088298%_)))
                      (_%tl8829688318%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8829088298%_))))
                  (let* ((_%hd88321%_ _%hd8829588316%_)
                         (_%rest88323%_ _%tl8829688318%_))
                    (_%K8829488313%_ _%rest88323%_ _%hd88321%_)))
                (_%else8829288306%_))))))
    (define remf
      (lambda (_%proc88263%_ _%lst88264%_)
        (if (procedure? _%proc88263%_)
            (let ((_%proc88268%_ _%proc88263%_))
              (__remf _%proc88268%_ _%lst88264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc88263%_)
              '#!void))))
    (define __remf
      (lambda (_%proc88212%_ _%lst88213%_)
        (let ((_%proc88216%_ _%proc88212%_))
          (let _%lp88225%_ ((_%rest88227%_ _%lst88213%_) (_%r88228%_ '()))
            (let* ((_%rest8822988237%_ _%rest88227%_)
                   (_%else8823188245%_ (lambda () _%lst88213%_))
                   (_%K8823388251%_
                    (lambda (_%rest88248%_ _%hd88249%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88216%_ _%hd88249%_))
                          (__foldl1 cons _%rest88248%_ _%r88228%_)
                          (_%lp88225%_
                           _%rest88248%_
                           (cons _%hd88249%_ _%r88228%_))))))
              (if (pair? _%rest8822988237%_)
                  (let ((_%hd8823488254%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8822988237%_)))
                        (_%tl8823588256%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8822988237%_))))
                    (let* ((_%hd88259%_ _%hd8823488254%_)
                           (_%rest88261%_ _%tl8823588256%_))
                      (_%K8823388251%_ _%rest88261%_ _%hd88259%_)))
                  (_%else8823188245%_)))))))
    (define 1+
      (lambda (_%x88198%_)
        (if (number? _%x88198%_)
            (let ((_%x88202%_ _%x88198%_)) (__1+ _%x88202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x88198%_)
              '#!void))))
    (define __1+
      (lambda (_%x88186%_) (let ((_%x88189%_ _%x88186%_)) (+ _%x88189%_ '1))))
    (define 1-
      (lambda (_%x88172%_)
        (if (number? _%x88172%_)
            (let ((_%x88176%_ _%x88172%_)) (__1- _%x88176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x88172%_)
              '#!void))))
    (define __1-
      (lambda (_%x88160%_) (let ((_%x88163%_ _%x88160%_)) (- _%x88163%_ '1))))
    (define fx1+
      (lambda (_%x88146%_)
        (if (fixnum? _%x88146%_)
            (let ((_%x88150%_ _%x88146%_)) (__fx1+ _%x88150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x88146%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x88134%_)
        (let ((_%x88137%_ _%x88134%_))
          (declare (not safe))
          (##fx+ _%x88137%_ '1))))
    (define fx1-
      (lambda (_%x88120%_)
        (if (fixnum? _%x88120%_)
            (let ((_%x88124%_ _%x88120%_)) (__fx1- _%x88124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x88120%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x88108%_)
        (let ((_%x88111%_ _%x88108%_))
          (declare (not safe))
          (##fx- _%x88111%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x88105%_)
        (if (fixnum? _%x88105%_)
            (let () (declare (not safe)) (##fx>= _%x88105%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x88102%_)
        (if (fixnum? _%x88102%_)
            (let () (declare (not safe)) (##fx> _%x88102%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x88099%_)
        (let () (declare (not safe)) (##fx= _%x88099%_ '0))))
    (define fx<0?
      (lambda (_%x88096%_)
        (if (fixnum? _%x88096%_)
            (let () (declare (not safe)) (##fx< _%x88096%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x88093%_)
        (if (fixnum? _%x88093%_)
            (let () (declare (not safe)) (##fx<= _%x88093%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x88090%_)
        (if (symbol? _%x88090%_) (not (uninterned-symbol? _%x88090%_)) '#f)))
    (define display-as-string
      (lambda (_%x88075%_ _%port88076%_)
        (if (output-port? _%port88076%_)
            (let ((_%port88080%_ _%port88076%_))
              (__display-as-string _%x88075%_ _%port88080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port88076%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x88032%_ _%port88033%_)
        (let ((_%port88036%_ _%port88033%_))
          (if (or (string? _%x88032%_)
                  (symbol? _%x88032%_)
                  (keyword? _%x88032%_)
                  (number? _%x88032%_)
                  (char? _%x88032%_))
              (display _%x88032%_ _%port88036%_)
              (if (pair? _%x88032%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x88032%_))
                     _%port88036%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x88032%_))
                     _%port88036%_))
                  (if (vector? _%x88032%_)
                      (vector-for-each
                       (lambda (_%g8805988061%_)
                         (__display-as-string _%g8805988061%_ _%port88036%_))
                       _%x88032%_)
                      (if (or (null? _%x88032%_)
                              (eq? _%x88032%_ '#!void)
                              (eof-object? _%x88032%_)
                              (boolean? _%x88032%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x88032%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x88015%_)
        (if (string? _%x88015%_)
            _%x88015%_
            (if (symbol? _%x88015%_)
                (let () (declare (not safe)) (##symbol->string _%x88015%_))
                (if (keyword? _%x88015%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x88015%_))
                    (if (number? _%x88015%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x88015%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8802188023%_)
                           (__display-as-string
                            _%x88015%_
                            _%g8802188023%_)))))))))
    (define as-string__1
      (lambda _%args88026%_
        (call-with-output-string
         '()
         (lambda (_%g8802788029%_)
           (__display-as-string _%args88026%_ _%g8802788029%_)))))
    (define as-string
      (lambda _g92267_
        (let ((_g92266_ (let () (declare (not safe)) (##length _g92267_))))
          (cond ((let () (declare (not safe)) (##fx= _g92266_ 1))
                 (apply as-string__0 _g92267_))
                (#t
                 (apply (lambda _%args88026%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args88026%_)))
                        _g92267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g92267_))))))
    (define make-symbol__0
      (lambda (_%x88011%_)
        (if (interned-symbol? _%x88011%_)
            _%x88011%_
            (let ((__tmp92268 (as-string__0 _%x88011%_)))
              (declare (not safe))
              (##string->symbol __tmp92268)))))
    (define make-symbol__1
      (lambda _%args88013%_
        (let ((__tmp92269
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args88013%_))))
          (declare (not safe))
          (##string->symbol __tmp92269))))
    (define make-symbol
      (lambda _g92271_
        (let ((_g92270_ (let () (declare (not safe)) (##length _g92271_))))
          (cond ((let () (declare (not safe)) (##fx= _g92270_ 1))
                 (apply make-symbol__0 _g92271_))
                (#t
                 (apply (lambda _%args88013%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args88013%_)))
                        _g92271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g92271_))))))
    (define make-keyword__0
      (lambda (_%x88007%_)
        (if (interned-keyword? _%x88007%_)
            _%x88007%_
            (let ((__tmp92272 (as-string__0 _%x88007%_)))
              (declare (not safe))
              (##string->keyword __tmp92272)))))
    (define make-keyword__1
      (lambda _%args88009%_
        (let ((__tmp92273
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args88009%_))))
          (declare (not safe))
          (##string->keyword __tmp92273))))
    (define make-keyword
      (lambda _g92275_
        (let ((_g92274_ (let () (declare (not safe)) (##length _g92275_))))
          (cond ((let () (declare (not safe)) (##fx= _g92274_ 1))
                 (apply make-keyword__0 _g92275_))
                (#t
                 (apply (lambda _%args88009%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args88009%_)))
                        _g92275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g92275_))))))
    (define interned-keyword?
      (lambda (_%x88004%_)
        (if (keyword? _%x88004%_) (not (uninterned-keyword? _%x88004%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87990%_)
        (if (symbol? _%sym87990%_)
            (let ((_%sym87994%_ _%sym87990%_))
              (__symbol->keyword _%sym87994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87990%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87978%_)
        (let ((_%sym87981%_ _%sym87978%_))
          (if (uninterned-symbol? _%sym87981%_)
              (let ((__tmp92276
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87981%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp92276))
              (let ((__tmp92277
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87981%_))))
                (declare (not safe))
                (##string->keyword __tmp92277))))))
    (define keyword->symbol
      (lambda (_%sym87964%_)
        (if (keyword? _%sym87964%_)
            (let ((_%sym87968%_ _%sym87964%_))
              (__keyword->symbol _%sym87968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87964%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87952%_)
        (let ((_%sym87955%_ _%sym87952%_))
          (if (uninterned-keyword? _%sym87955%_)
              (let ((__tmp92278
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87955%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp92278))
              (let ((__tmp92279
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87955%_))))
                (declare (not safe))
                (##string->symbol __tmp92279))))))
    (define bytes->string__%
      (lambda (_%bstr87917%_ _%enc87918%_)
        (if (u8vector? _%bstr87917%_)
            (let ((_%bstr87922%_ _%bstr87917%_))
              (if (symbol? _%enc87918%_)
                  (let ((_%enc87932%_ _%enc87918%_))
                    (__bytes->string__% _%bstr87922%_ _%enc87932%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87918%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87917%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87945%_)
        (let ((_%enc87947%_ 'UTF-8))
          (bytes->string__% _%bstr87945%_ _%enc87947%_))))
    (define bytes->string
      (lambda _g92281_
        (let ((_g92280_ (let () (declare (not safe)) (##length _g92281_))))
          (cond ((let () (declare (not safe)) (##fx= _g92280_ 1))
                 (apply bytes->string__0 _g92281_))
                ((let () (declare (not safe)) (##fx= _g92280_ 2))
                 (apply bytes->string__% _g92281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g92281_))))))
    (define __bytes->string__%
      (lambda (_%bstr87876%_ _%enc87877%_)
        (let* ((_%bstr87880%_ _%bstr87876%_) (_%enc87888%_ _%enc87877%_))
          (if (eq? _%enc87888%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr87880%_))
              (let* ((_%in87897%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc87888%_
                                   (cons 'init: (cons _%bstr87880%_ '()))))))
                     (_%len87899%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr87880%_)))
                     (_%out87901%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len87899%_)))
                     (_%n87903%_
                      (read-substring
                       _%out87901%_
                       '0
                       _%len87899%_
                       _%in87897%_)))
                (string-shrink! _%out87901%_ _%n87903%_)
                _%out87901%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87909%_)
        (let ((_%enc87911%_ 'UTF-8))
          (__bytes->string__% _%bstr87909%_ _%enc87911%_))))
    (define __bytes->string
      (lambda _g92283_
        (let ((_g92282_ (let () (declare (not safe)) (##length _g92283_))))
          (cond ((let () (declare (not safe)) (##fx= _g92282_ 1))
                 (apply __bytes->string__0 _g92283_))
                ((let () (declare (not safe)) (##fx= _g92282_ 2))
                 (apply __bytes->string__% _g92283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g92283_))))))
    (define string->bytes__%
      (lambda (_%str87840%_ _%enc87841%_)
        (if (string? _%str87840%_)
            (let ((_%str87845%_ _%str87840%_))
              (if (symbol? _%enc87841%_)
                  (let ((_%enc87855%_ _%enc87841%_))
                    (__string->bytes__% _%str87845%_ _%enc87855%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87841%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str87840%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str87868%_)
        (let ((_%enc87870%_ 'UTF-8))
          (string->bytes__% _%str87868%_ _%enc87870%_))))
    (define string->bytes
      (lambda _g92285_
        (let ((_g92284_ (let () (declare (not safe)) (##length _g92285_))))
          (cond ((let () (declare (not safe)) (##fx= _g92284_ 1))
                 (apply string->bytes__0 _g92285_))
                ((let () (declare (not safe)) (##fx= _g92284_ 2))
                 (apply string->bytes__% _g92285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g92285_))))))
    (define __string->bytes__%
      (lambda (_%str87808%_ _%enc87809%_)
        (let* ((_%str87812%_ _%str87808%_) (_%enc87820%_ _%enc87809%_))
          (if (eq? _%enc87820%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str87812%_))
              (__substring->bytes__%
               _%str87812%_
               '0
               (let () (declare (not safe)) (##string-length _%str87812%_))
               _%enc87820%_)))))
    (define __string->bytes__0
      (lambda (_%str87832%_)
        (let ((_%enc87834%_ 'UTF-8))
          (__string->bytes__% _%str87832%_ _%enc87834%_))))
    (define __string->bytes
      (lambda _g92287_
        (let ((_g92286_ (let () (declare (not safe)) (##length _g92287_))))
          (cond ((let () (declare (not safe)) (##fx= _g92286_ 1))
                 (apply __string->bytes__0 _g92287_))
                ((let () (declare (not safe)) (##fx= _g92286_ 2))
                 (apply __string->bytes__% _g92287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g92287_))))))
    (define substring->bytes__%
      (lambda (_%str87756%_ _%start87757%_ _%end87758%_ _%enc87759%_)
        (if (string? _%str87756%_)
            (let ((_%str87763%_ _%str87756%_))
              (if (nonnegative-fixnum? _%start87757%_)
                  (let ((_%start87773%_ _%start87757%_))
                    (if (nonnegative-fixnum? _%end87758%_)
                        (let ((_%end87783%_ _%end87758%_))
                          (__substring->bytes__%
                           _%str87763%_
                           _%start87773%_
                           _%end87783%_
                           _%enc87759%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end87758%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start87757%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str87756%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str87796%_ _%start87797%_ _%end87798%_)
        (let ((_%enc87800%_ 'UTF-8))
          (substring->bytes__%
           _%str87796%_
           _%start87797%_
           _%end87798%_
           _%enc87800%_))))
    (define substring->bytes
      (lambda _g92289_
        (let ((_g92288_ (let () (declare (not safe)) (##length _g92289_))))
          (cond ((let () (declare (not safe)) (##fx= _g92288_ 3))
                 (apply substring->bytes__0 _g92289_))
                ((let () (declare (not safe)) (##fx= _g92288_ 4))
                 (apply substring->bytes__% _g92289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g92289_))))))
    (define __substring->bytes__%
      (lambda (_%str87708%_ _%start87709%_ _%end87710%_ _%enc87711%_)
        (let* ((_%str87714%_ _%str87708%_)
               (_%start87722%_ _%start87709%_)
               (_%end87730%_ _%end87710%_))
          (if (eq? _%enc87711%_ 'UTF-8)
              (string->utf8 _%str87714%_ _%start87722%_ _%end87730%_)
              (let ((_%out87739%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc87711%_ '())))))
                (write-substring
                 _%str87714%_
                 _%start87722%_
                 _%end87730%_
                 _%out87739%_)
                (get-output-u8vector _%out87739%_))))))
    (define __substring->bytes__0
      (lambda (_%str87744%_ _%start87745%_ _%end87746%_)
        (let ((_%enc87748%_ 'UTF-8))
          (__substring->bytes__%
           _%str87744%_
           _%start87745%_
           _%end87746%_
           _%enc87748%_))))
    (define __substring->bytes
      (lambda _g92291_
        (let ((_g92290_ (let () (declare (not safe)) (##length _g92291_))))
          (cond ((let () (declare (not safe)) (##fx= _g92290_ 3))
                 (apply __substring->bytes__0 _g92291_))
                ((let () (declare (not safe)) (##fx= _g92290_ 4))
                 (apply __substring->bytes__% _g92291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g92291_))))))
    (define string-empty?
      (lambda (_%str87693%_)
        (if (string? _%str87693%_)
            (let ((_%str87697%_ _%str87693%_)) (__string-empty? _%str87697%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str87693%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str87681%_)
        (let* ((_%str87684%_ _%str87681%_)
               (__tmp92292
                (let () (declare (not safe)) (##string-length _%str87684%_))))
          (declare (not safe))
          (##fxzero? __tmp92292))))
    (define string-index__%
      (lambda (_%str87633%_ _%char87634%_ _%start87635%_)
        (if (string? _%str87633%_)
            (let ((_%str87639%_ _%str87633%_))
              (if (char? _%char87634%_)
                  (let ((_%char87649%_ _%char87634%_))
                    (if (nonnegative-fixnum? _%start87635%_)
                        (let ((_%start87659%_ _%start87635%_))
                          (__string-index__%
                           _%str87639%_
                           _%char87649%_
                           _%start87659%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start87635%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char87634%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str87633%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str87672%_ _%char87673%_)
        (let ((_%start87675%_ '0))
          (string-index__% _%str87672%_ _%char87673%_ _%start87675%_))))
    (define string-index
      (lambda _g92294_
        (let ((_g92293_ (let () (declare (not safe)) (##length _g92294_))))
          (cond ((let () (declare (not safe)) (##fx= _g92293_ 2))
                 (apply string-index__0 _g92294_))
                ((let () (declare (not safe)) (##fx= _g92293_ 3))
                 (apply string-index__% _g92294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g92294_))))))
    (define __string-index__%
      (lambda (_%str87572%_ _%char87573%_ _%start87574%_)
        (let* ((_%str87577%_ _%str87572%_)
               (_%char87585%_ _%char87573%_)
               (_%start87593%_ _%start87574%_)
               (_%len87602%_
                (let () (declare (not safe)) (##string-length _%str87577%_))))
          (let _%lp87604%_ ((_%k87606%_ _%start87593%_))
            (let ((_%k87608%_ _%k87606%_))
              (if (let () (declare (not safe)) (##fx< _%k87608%_ _%len87602%_))
                  (if (eq? _%char87585%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87577%_ _%k87608%_)))
                      _%k87608%_
                      (_%lp87604%_
                       (let () (declare (not safe)) (##fx+ _%k87608%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str87623%_ _%char87624%_)
        (let ((_%start87626%_ '0))
          (__string-index__% _%str87623%_ _%char87624%_ _%start87626%_))))
    (define __string-index
      (lambda _g92296_
        (let ((_g92295_ (let () (declare (not safe)) (##length _g92296_))))
          (cond ((let () (declare (not safe)) (##fx= _g92295_ 2))
                 (apply __string-index__0 _g92296_))
                ((let () (declare (not safe)) (##fx= _g92295_ 3))
                 (apply __string-index__% _g92296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g92296_))))))
    (define string-rindex__%
      (lambda (_%str87533%_ _%char87534%_ _%start87535%_)
        (if (string? _%str87533%_)
            (let ((_%str87539%_ _%str87533%_))
              (if (char? _%char87534%_)
                  (let ((_%char87549%_ _%char87534%_))
                    (__string-rindex__%
                     _%str87539%_
                     _%char87549%_
                     _%start87535%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char87534%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str87533%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str87562%_ _%char87563%_)
        (let ((_%start87565%_ '#f))
          (string-rindex__% _%str87562%_ _%char87563%_ _%start87565%_))))
    (define string-rindex
      (lambda _g92298_
        (let ((_g92297_ (let () (declare (not safe)) (##length _g92298_))))
          (cond ((let () (declare (not safe)) (##fx= _g92297_ 2))
                 (apply string-rindex__0 _g92298_))
                ((let () (declare (not safe)) (##fx= _g92297_ 3))
                 (apply string-rindex__% _g92298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g92298_))))))
    (define __string-rindex__%
      (lambda (_%str87475%_ _%char87476%_ _%start87477%_)
        (let* ((_%str87480%_ _%str87475%_)
               (_%char87488%_ _%char87476%_)
               (_%len87497%_
                (let () (declare (not safe)) (##string-length _%str87480%_)))
               (_%start87499%_
                (if (fixnum? _%start87477%_)
                    _%start87477%_
                    (let () (declare (not safe)) (##fx- _%len87497%_ '1)))))
          (let _%lp87502%_ ((_%k87504%_ _%start87499%_))
            (let ((_%k87506%_ _%k87504%_))
              (if (let () (declare (not safe)) (##fx>= _%k87506%_ '0))
                  (if (eq? _%char87488%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87480%_ _%k87506%_)))
                      _%k87506%_
                      (_%lp87502%_
                       (let () (declare (not safe)) (##fx- _%k87506%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str87523%_ _%char87524%_)
        (let ((_%start87526%_ '#f))
          (__string-rindex__% _%str87523%_ _%char87524%_ _%start87526%_))))
    (define __string-rindex
      (lambda _g92300_
        (let ((_g92299_ (let () (declare (not safe)) (##length _g92300_))))
          (cond ((let () (declare (not safe)) (##fx= _g92299_ 2))
                 (apply __string-rindex__0 _g92300_))
                ((let () (declare (not safe)) (##fx= _g92299_ 3))
                 (apply __string-rindex__% _g92300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g92300_))))))
    (define string-split
      (lambda (_%str87449%_ _%char87450%_)
        (if (string? _%str87449%_)
            (let ((_%str87454%_ _%str87449%_))
              (if (char? _%char87450%_)
                  (let ((_%char87464%_ _%char87450%_))
                    (__string-split _%str87454%_ _%char87464%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char87450%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str87449%_)
              '#!void))))
    (define __string-split
      (lambda (_%str87390%_ _%char87391%_)
        (let* ((_%str87394%_ _%str87390%_)
               (_%char87402%_ _%char87391%_)
               (_%len87411%_
                (let () (declare (not safe)) (##string-length _%str87394%_))))
          (let _%lp87413%_ ((_%start87415%_ '0) (_%r87416%_ '()))
            (let* ((_%start87419%_ _%start87415%_)
                   (_%$e87432%_
                    (__string-index__%
                     _%str87394%_
                     _%char87402%_
                     _%start87419%_)))
              (if _%$e87432%_
                  ((lambda (_%end87435%_)
                     (let ((_%end87437%_ _%end87435%_))
                       (_%lp87413%_
                        (let () (declare (not safe)) (##fx+ _%end87437%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str87394%_
                                 _%start87419%_
                                 _%end87437%_))
                              _%r87416%_))))
                   _%$e87432%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start87419%_ _%len87411%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str87394%_
                                _%start87419%_
                                _%len87411%_)))
                       _%r87416%_)
                      (reverse! _%r87416%_))))))))
    (define string-join
      (lambda (_%strs87240%_ _%join87241%_)
        (letrec ((_%join-length87244%_
                  (lambda (_%strs87328%_ _%jlen87329%_)
                    (let _%lp87331%_ ((_%rest87333%_ _%strs87328%_)
                                      (_%len87334%_ '0))
                      (let* ((_%len87336%_ _%len87334%_)
                             (_%rest8734487352%_ _%rest87333%_)
                             (_%else8734687360%_ (lambda () '0))
                             (_%K8734887378%_
                              (lambda (_%rest87363%_ _%hd87364%_)
                                (if (string? _%hd87364%_)
                                    (let ((_%hd87366%_ _%hd87364%_))
                                      (if (pair? _%rest87363%_)
                                          (_%lp87331%_
                                           _%rest87363%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd87366%_))
                                                _%jlen87329%_
                                                _%len87336%_))
                                          (let ((__tmp92301
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd87366%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp92301 _%len87336%_))))
                                    (error '"expected string" _%hd87364%_)))))
                        (if (pair? _%rest8734487352%_)
                            (let ((_%hd8734987381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8734487352%_)))
                                  (_%tl8735087383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8734487352%_))))
                              (let* ((_%hd87386%_ _%hd8734987381%_)
                                     (_%rest87388%_ _%tl8735087383%_))
                                (_%K8734887378%_ _%rest87388%_ _%hd87386%_)))
                            (_%else8734687360%_)))))))
          (let* ((_%join87249%_
                  (if (char? _%join87241%_)
                      (let () (declare (not safe)) (##string _%join87241%_))
                      (if (string? _%join87241%_)
                          _%join87241%_
                          (error '"expected string or char" _%join87241%_))))
                 (_%jlen87251%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join87249%_)))
                 (_%olen87253%_
                  (_%join-length87244%_ _%strs87240%_ _%jlen87251%_))
                 (_%ostr87255%_
                  (let () (declare (not safe)) (##make-string _%olen87253%_))))
            (let _%lp87258%_ ((_%rest87260%_ _%strs87240%_) (_%k87261%_ '0))
              (let* ((_%k87264%_ _%k87261%_)
                     (_%rest8728087288%_ _%rest87260%_)
                     (_%else8728287296%_ (lambda () '""))
                     (_%K8728487316%_
                      (lambda (_%rest87299%_ _%hd87300%_)
                        (let* ((_%hd87302%_ _%hd87300%_)
                               (_%hdlen87314%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd87302%_))))
                          (if (pair? _%rest87299%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87302%_
                                   '0
                                   _%hdlen87314%_
                                   _%ostr87255%_
                                   _%k87264%_))
                                (let ((__tmp92302
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k87264%_ _%hdlen87314%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join87249%_
                                   '0
                                   _%jlen87251%_
                                   _%ostr87255%_
                                   __tmp92302))
                                (_%lp87258%_
                                 _%rest87299%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k87264%_
                                          _%hdlen87314%_
                                          _%jlen87251%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87302%_
                                   '0
                                   _%hdlen87314%_
                                   _%ostr87255%_
                                   _%k87264%_))
                                _%ostr87255%_))))))
                (if (pair? _%rest8728087288%_)
                    (let ((_%hd8728587319%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8728087288%_)))
                          (_%tl8728687321%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8728087288%_))))
                      (let* ((_%hd87324%_ _%hd8728587319%_)
                             (_%rest87326%_ _%tl8728687321%_))
                        (_%K8728487316%_ _%rest87326%_ _%hd87324%_)))
                    (_%else8728287296%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes87166%_ _%port87167%_ _%start87168%_ _%end87169%_)
        (if (u8vector? _%bytes87166%_)
            (let ((_%bytes87173%_ _%bytes87166%_))
              (if (input-port? _%port87167%_)
                  (let ((_%port87183%_ _%port87167%_))
                    (if ((lambda (_%o87192%_)
                           (and (fixnum? _%o87192%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o87192%_ '0))
                                (let ((__tmp92303
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87173%_))))
                                  (declare (not safe))
                                  (##fx< _%o87192%_ __tmp92303))))
                         _%start87168%_)
                        (let ((_%start87196%_ _%start87168%_))
                          (if ((lambda (_%o87205%_)
                                 (and (fixnum? _%o87205%_)
                                      (let ((__tmp92304
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes87173%_))))
                                        (declare (not safe))
                                        (##fx<= _%start87196%_
                                                _%o87205%_
                                                __tmp92304))))
                               _%end87169%_)
                              (let ((_%end87209%_ _%end87169%_))
                                (__read-u8vector__%
                                 _%bytes87173%_
                                 _%port87183%_
                                 _%start87196%_
                                 _%end87209%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@784.22-784.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end87169%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start87168%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port87167%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes87166%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes87222%_ _%port87223%_)
        (let* ((_%start87225%_ '0)
               (_%end87227%_ (u8vector-length _%bytes87222%_)))
          (read-u8vector__%
           _%bytes87222%_
           _%port87223%_
           _%start87225%_
           _%end87227%_))))
    (define read-u8vector__1
      (lambda (_%bytes87229%_ _%port87230%_ _%start87231%_)
        (let ((_%end87233%_ (u8vector-length _%bytes87229%_)))
          (read-u8vector__%
           _%bytes87229%_
           _%port87230%_
           _%start87231%_
           _%end87233%_))))
    (define read-u8vector
      (lambda _g92306_
        (let ((_g92305_ (let () (declare (not safe)) (##length _g92306_))))
          (cond ((let () (declare (not safe)) (##fx= _g92305_ 2))
                 (apply read-u8vector__0 _g92306_))
                ((let () (declare (not safe)) (##fx= _g92305_ 3))
                 (apply read-u8vector__1 _g92306_))
                ((let () (declare (not safe)) (##fx= _g92305_ 4))
                 (apply read-u8vector__% _g92306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g92306_))))))
    (define __read-u8vector__%
      (lambda (_%bytes87105%_ _%port87106%_ _%start87107%_ _%end87108%_)
        (let* ((_%bytes87111%_ _%bytes87105%_)
               (_%port87119%_ _%port87106%_)
               (_%start87127%_ _%start87107%_)
               (_%end87135%_ _%end87108%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes87111%_
           _%start87127%_
           _%end87135%_
           _%port87119%_))))
    (define __read-u8vector__0
      (lambda (_%bytes87147%_ _%port87148%_)
        (let* ((_%start87150%_ '0)
               (_%end87152%_ (u8vector-length _%bytes87147%_)))
          (__read-u8vector__%
           _%bytes87147%_
           _%port87148%_
           _%start87150%_
           _%end87152%_))))
    (define __read-u8vector__1
      (lambda (_%bytes87154%_ _%port87155%_ _%start87156%_)
        (let ((_%end87158%_ (u8vector-length _%bytes87154%_)))
          (__read-u8vector__%
           _%bytes87154%_
           _%port87155%_
           _%start87156%_
           _%end87158%_))))
    (define __read-u8vector
      (lambda _g92308_
        (let ((_g92307_ (let () (declare (not safe)) (##length _g92308_))))
          (cond ((let () (declare (not safe)) (##fx= _g92307_ 2))
                 (apply __read-u8vector__0 _g92308_))
                ((let () (declare (not safe)) (##fx= _g92307_ 3))
                 (apply __read-u8vector__1 _g92308_))
                ((let () (declare (not safe)) (##fx= _g92307_ 4))
                 (apply __read-u8vector__% _g92308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g92308_))))))
    (define write-u8vector__%
      (lambda (_%bytes87035%_ _%port87036%_ _%start87037%_ _%end87038%_)
        (if (u8vector? _%bytes87035%_)
            (let ((_%bytes87042%_ _%bytes87035%_))
              (if (output-port? _%port87036%_)
                  (let* ((_%port87052%_ _%port87036%_)
                         (_%start87061%_ _%start87037%_))
                    (if ((lambda (_%o87069%_)
                           (and (fixnum? _%o87069%_)
                                (let ((__tmp92309
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87042%_))))
                                  (declare (not safe))
                                  (##fx<= _%start87061%_
                                          _%o87069%_
                                          __tmp92309))))
                         _%end87038%_)
                        (let ((_%end87073%_ _%end87038%_))
                          (__write-u8vector__%
                           _%bytes87042%_
                           _%port87052%_
                           _%start87061%_
                           _%end87073%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end87038%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port87036%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes87035%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes87086%_ _%port87087%_)
        (let* ((_%start87089%_ '0)
               (_%end87091%_ (u8vector-length _%bytes87086%_)))
          (write-u8vector__%
           _%bytes87086%_
           _%port87087%_
           _%start87089%_
           _%end87091%_))))
    (define write-u8vector__1
      (lambda (_%bytes87093%_ _%port87094%_ _%start87095%_)
        (let ((_%end87097%_ (u8vector-length _%bytes87093%_)))
          (write-u8vector__%
           _%bytes87093%_
           _%port87094%_
           _%start87095%_
           _%end87097%_))))
    (define write-u8vector
      (lambda _g92311_
        (let ((_g92310_ (let () (declare (not safe)) (##length _g92311_))))
          (cond ((let () (declare (not safe)) (##fx= _g92310_ 2))
                 (apply write-u8vector__0 _g92311_))
                ((let () (declare (not safe)) (##fx= _g92310_ 3))
                 (apply write-u8vector__1 _g92311_))
                ((let () (declare (not safe)) (##fx= _g92310_ 4))
                 (apply write-u8vector__% _g92311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g92311_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86974%_ _%port86975%_ _%start86976%_ _%end86977%_)
        (let* ((_%bytes86980%_ _%bytes86974%_)
               (_%port86988%_ _%port86975%_)
               (_%start86996%_ _%start86976%_)
               (_%end87004%_ _%end86977%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86980%_
           _%start86996%_
           _%end87004%_
           _%port86988%_))))
    (define __write-u8vector__0
      (lambda (_%bytes87016%_ _%port87017%_)
        (let* ((_%start87019%_ '0)
               (_%end87021%_ (u8vector-length _%bytes87016%_)))
          (__write-u8vector__%
           _%bytes87016%_
           _%port87017%_
           _%start87019%_
           _%end87021%_))))
    (define __write-u8vector__1
      (lambda (_%bytes87023%_ _%port87024%_ _%start87025%_)
        (let ((_%end87027%_ (u8vector-length _%bytes87023%_)))
          (__write-u8vector__%
           _%bytes87023%_
           _%port87024%_
           _%start87025%_
           _%end87027%_))))
    (define __write-u8vector
      (lambda _g92313_
        (let ((_g92312_ (let () (declare (not safe)) (##length _g92313_))))
          (cond ((let () (declare (not safe)) (##fx= _g92312_ 2))
                 (apply __write-u8vector__0 _g92313_))
                ((let () (declare (not safe)) (##fx= _g92312_ 3))
                 (apply __write-u8vector__1 _g92313_))
                ((let () (declare (not safe)) (##fx= _g92312_ 4))
                 (apply __write-u8vector__% _g92313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g92313_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86942%_
               _%dbg-exprs86943%_
               _%dbg-thunks86944%_
               _%expr86945%_
               _%thunk86946%_)
        (letrec ((_%o86948%_ (current-output-port))
                 (_%e86949%_ (current-error-port))
                 (_%p86950%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86951%_
                  (lambda ()
                    (force-output _%o86948%_)
                    (force-output _%e86949%_)))
                 (_%d86952%_
                  (lambda (_%x86959%_) (display _%x86959%_ _%e86949%_)))
                 (_%w86953%_
                  (lambda (_%x86961%_) (_%p86950%_ _%x86961%_ _%e86949%_)))
                 (_%n86954%_ (lambda () (newline _%e86949%_)))
                 (_%v86955%_
                  (lambda (_%l86964%_)
                    (for-each
                     (lambda (_%x86966%_)
                       (_%d86952%_ '" ")
                       (_%w86953%_ _%x86966%_))
                     _%l86964%_)
                    (_%n86954%_)))
                 (_%x86956%_
                  (lambda (_%expr86968%_ _%thunk86969%_)
                    (_%f86951%_)
                    (_%d86952%_ '"  ")
                    (_%w86953%_ _%expr86968%_)
                    (_%d86952%_ '" =>")
                    (call-with-values
                     _%thunk86969%_
                     (lambda _%x86971%_
                       (_%v86955%_ _%x86971%_)
                       (_%f86951%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86971%_)))))))
          (if _%tag86942%_
              (begin
                (if (eq? _%tag86942%_ '#!void)
                    '#!void
                    (begin
                      (_%f86951%_)
                      (_%d86952%_ _%tag86942%_)
                      (_%n86954%_)))
                (for-each _%x86956%_ _%dbg-exprs86943%_ _%dbg-thunks86944%_)
                (if _%thunk86946%_
                    (_%x86956%_ _%expr86945%_ _%thunk86946%_)
                    '#!void))
              (if _%thunk86946%_ (_%thunk86946%_) '#!void)))))))
