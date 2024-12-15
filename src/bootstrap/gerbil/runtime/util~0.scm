(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1734225191)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args90381%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args90381%_))
          (newline))))
    (define display*
      (lambda _%args90378%_
        (let () (declare (not safe)) (##for-each display _%args90378%_))))
    (define file-newer?
      (lambda (_%file190353%_ _%file290354%_)
        (if (string? _%file190353%_)
            (let ((_%file190358%_ _%file190353%_))
              (if (string? _%file290354%_)
                  (let ((_%file290368%_ _%file290354%_))
                    (__file-newer? _%file190358%_ _%file290368%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file290354%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file190353%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file190301%_ _%file290302%_)
        (let* ((_%file190305%_ _%file190301%_) (_%file290313%_ _%file290302%_))
          (letrec ((_%modification-time90322%_
                    (lambda (_%file90341%_)
                      (let ((_%file90344%_ _%file90341%_))
                        (_%__modification-time90323%_ _%file90344%_))))
                   (_%__modification-time90323%_
                    (lambda (_%file90325%_)
                      (let* ((_%file90328%_ _%file90325%_)
                             (__tmp92111
                              (let ((__tmp92112
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file90328%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp92112))))
                        (declare (not safe))
                        (##time->seconds __tmp92111)))))
            (let ((__tmp92114 (_%__modification-time90323%_ _%file190305%_))
                  (__tmp92113 (_%__modification-time90323%_ _%file290313%_)))
              (declare (not safe))
              (##fl> __tmp92114 __tmp92113))))))
    (define create-directory*__%
      (lambda (_%dir90266%_ _%perms90267%_)
        (if (string? _%dir90266%_)
            (let ((_%dir90271%_ _%dir90266%_))
              (if (fixnum? _%perms90267%_)
                  (let ((_%perms90281%_ _%perms90267%_))
                    (__create-directory*__% _%dir90271%_ _%perms90281%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms90267%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir90266%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir90294%_)
        (let ((_%perms90296%_ '493))
          (create-directory*__% _%dir90294%_ _%perms90296%_))))
    (define create-directory*
      (lambda _g92116_
        (let ((_g92115_ (let () (declare (not safe)) (##length _g92116_))))
          (cond ((let () (declare (not safe)) (##fx= _g92115_ 1))
                 (apply create-directory*__0 _g92116_))
                ((let () (declare (not safe)) (##fx= _g92115_ 2))
                 (apply create-directory*__% _g92116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g92116_))))))
    (define __create-directory*__%
      (lambda (_%dir90190%_ _%perms90191%_)
        (let* ((_%dir90194%_ _%dir90190%_) (_%perms90202%_ _%perms90191%_))
          (letrec ((_%create190211%_
                    (lambda (_%path90243%_)
                      (let ((_%path90246%_ _%path90243%_))
                        (_%__create190212%_ _%path90246%_))))
                   (_%__create190212%_
                    (lambda (_%path90224%_)
                      (let ((_%path90227%_ _%path90224%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path90227%_))
                            (if (eq? (file-type _%path90227%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path90227%_))
                            (if _%perms90202%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path90227%_
                                             (cons 'permissions:
                                                   (cons _%perms90202%_
                                                         '())))))
                                (create-directory _%path90227%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir90194%_))
                '#!void
                (let _%lp90214%_ ((_%start90216%_ '0))
                  (let ((_%$e90218%_
                         (__string-index__% _%dir90194%_ '#\/ _%start90216%_)))
                    (if _%$e90218%_
                        ((lambda (_%x90221%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x90221%_ '0))
                               (_%__create190212%_
                                (substring _%dir90194%_ '0 _%x90221%_))
                               '#!void)
                           (_%lp90214%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x90221%_ '1))))
                         _%$e90218%_)
                        (_%__create190212%_ _%dir90194%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir90258%_)
        (let ((_%perms90260%_ '493))
          (__create-directory*__% _%dir90258%_ _%perms90260%_))))
    (define __create-directory*
      (lambda _g92118_
        (let ((_g92117_ (let () (declare (not safe)) (##length _g92118_))))
          (cond ((let () (declare (not safe)) (##fx= _g92117_ 1))
                 (apply __create-directory*__0 _g92118_))
                ((let () (declare (not safe)) (##fx= _g92117_ 2))
                 (apply __create-directory*__% _g92118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g92118_))))))
    (define move-file__%
      (lambda (_%src90141%_ _%dest90142%_ _%replace?90143%_)
        (if (string? _%src90141%_)
            (let ((_%src90147%_ _%src90141%_))
              (if (string? _%dest90142%_)
                  (let ((_%dest90157%_ _%dest90142%_))
                    (if (boolean? _%replace?90143%_)
                        (let ((_%replace?90167%_ _%replace?90143%_))
                          (__move-file__%
                           _%src90147%_
                           _%dest90157%_
                           _%replace?90167%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?90143%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest90142%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src90141%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src90180%_ _%dest90181%_)
        (let ((_%replace?90183%_ '#t))
          (move-file__% _%src90180%_ _%dest90181%_ _%replace?90183%_))))
    (define move-file
      (lambda _g92120_
        (let ((_g92119_ (let () (declare (not safe)) (##length _g92120_))))
          (cond ((let () (declare (not safe)) (##fx= _g92119_ 2))
                 (apply move-file__0 _g92120_))
                ((let () (declare (not safe)) (##fx= _g92119_ 3))
                 (apply move-file__% _g92120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g92120_))))))
    (define __move-file__%
      (lambda (_%src90084%_ _%dest90085%_ _%replace?90086%_)
        (let* ((_%src90089%_ _%src90084%_)
               (_%dest90097%_ _%dest90085%_)
               (_%replace?90105%_ _%replace?90086%_))
          (letrec ((_%force-move-it90114%_
                    (lambda ()
                      (let ((_%tmp90120%_
                             (if _%replace?90105%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest90097%_))
                                     (let ((__tmp92121
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest90097%_
                                        '"."
                                        __tmp92121))
                                     '#f)
                                 '#f)))
                        (if _%tmp90120%_
                            (rename-file _%dest90097%_ _%tmp90120%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e90122%_)
                           (if _%tmp90120%_
                               (rename-file _%tmp90120%_ _%dest90097%_ '#t)
                               '#!void)
                           (raise _%e90122%_))
                         (lambda ()
                           (let ((_%fi90125%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src90089%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi90125%_))
                                      'symbolic-link)
                                 (let ((__tmp92122
                                        (path-normalize _%src90089%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp92122
                                    _%dest90097%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src90089%_ _%dest90097%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src90089%_))
                           (if _%tmp90120%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp90120%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e90116%_)
               (if (let () (declare (not safe)) (##file-exists? _%src90089%_))
                   (_%force-move-it90114%_)
                   (raise _%e90116%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src90089%_
                  _%dest90097%_
                  _%replace?90105%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src90131%_ _%dest90132%_)
        (let ((_%replace?90134%_ '#t))
          (__move-file__% _%src90131%_ _%dest90132%_ _%replace?90134%_))))
    (define __move-file
      (lambda _g92124_
        (let ((_g92123_ (let () (declare (not safe)) (##length _g92124_))))
          (cond ((let () (declare (not safe)) (##fx= _g92123_ 2))
                 (apply __move-file__0 _g92124_))
                ((let () (declare (not safe)) (##fx= _g92123_ 3))
                 (apply __move-file__% _g92124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g92124_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore90080%_ '#t))
    (define true? (lambda (_%obj90077%_) (eq? _%obj90077%_ '#t)))
    (define false (lambda _%ignore90074%_ '#f))
    (define void (lambda _%ignore90071%_ '#!void))
    (define void? (lambda (_%obj90068%_) (eq? _%obj90068%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj90065%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj90065%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj90062%_) (eq? _%obj90062%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj90059%_) (eq? _%obj90059%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj90056%_) (eq? _%obj90056%_ '#!optional)))
    (define immediate?
      (lambda (_%obj90051%_)
        (let* ((_%t90054%_ (let () (declare (not safe)) (##type _%obj90051%_)))
               (__tmp92125
                (let () (declare (not safe)) (##fxand _%t90054%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp92125))))
    (define nonnegative-fixnum?
      (lambda (_%obj90048%_)
        (if (fixnum? _%obj90048%_)
            (let () (declare (not safe)) (##fx>= _%obj90048%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj90042%_)
        (let ((_%$e90045%_ (pair? _%obj90042%_)))
          (if _%$e90045%_ _%$e90045%_ (null? _%obj90042%_)))))
    (define values-count
      (lambda (_%obj90039%_)
        (if (let () (declare (not safe)) (##values? _%obj90039%_))
            (let () (declare (not safe)) (##vector-length _%obj90039%_))
            '1)))
    (define values-ref
      (lambda (_%obj90024%_ _%k90025%_)
        (if (fixnum? _%k90025%_)
            (let ((_%k90029%_ _%k90025%_))
              (__values-ref _%obj90024%_ _%k90029%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k90025%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj90011%_ _%k90012%_)
        (let ((_%k90015%_ _%k90012%_))
          (if (let () (declare (not safe)) (##values? _%obj90011%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj90011%_ _%k90015%_))
              _%obj90011%_))))
    (define values->list
      (lambda (_%obj90008%_)
        (if (let () (declare (not safe)) (##values? _%obj90008%_))
            (let () (declare (not safe)) (##vector->list _%obj90008%_))
            (list _%obj90008%_))))
    (define foldl1
      (lambda (_%f89992%_ _%iv89993%_ _%lst89994%_)
        (if (procedure? _%f89992%_)
            (let ((_%f89998%_ _%f89992%_))
              (__foldl1 _%f89998%_ _%iv89993%_ _%lst89994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f89992%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89940%_ _%iv89941%_ _%lst89942%_)
        (let ((_%f89945%_ _%f89940%_))
          (let _%lp89954%_ ((_%rest89956%_ _%lst89942%_)
                            (_%r89957%_ _%iv89941%_))
            (let* ((_%rest8995889966%_ _%rest89956%_)
                   (_%else8996089974%_ (lambda () _%r89957%_))
                   (_%K8996289980%_
                    (lambda (_%rest89977%_ _%x89978%_)
                      (_%lp89954%_
                       _%rest89977%_
                       (let ()
                         (declare (not safe))
                         (_%f89945%_ _%x89978%_ _%r89957%_))))))
              (if (pair? _%rest8995889966%_)
                  (let ((_%hd8996389983%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8995889966%_)))
                        (_%tl8996489985%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8995889966%_))))
                    (let* ((_%x89988%_ _%hd8996389983%_)
                           (_%rest89990%_ _%tl8996489985%_))
                      (_%K8996289980%_ _%rest89990%_ _%x89988%_)))
                  (_%else8996089974%_)))))))
    (define foldl2
      (lambda (_%f89923%_ _%iv89924%_ _%lst189925%_ _%lst289926%_)
        (if (procedure? _%f89923%_)
            (let ((_%f89930%_ _%f89923%_))
              (__foldl2 _%f89930%_ _%iv89924%_ _%lst189925%_ _%lst289926%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f89923%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89836%_ _%iv89837%_ _%lst189838%_ _%lst289839%_)
        (let ((_%f89842%_ _%f89836%_))
          (let _%lp89851%_ ((_%rest189853%_ _%lst189838%_)
                            (_%rest289854%_ _%lst289839%_)
                            (_%r89855%_ _%iv89837%_))
            (let* ((_%rest18985689864%_ _%rest189853%_)
                   (_%else8985889872%_ (lambda () _%r89855%_))
                   (_%K8986089911%_
                    (lambda (_%rest189875%_ _%x189876%_)
                      (let* ((_%rest28987789885%_ _%rest289854%_)
                             (_%else8987989893%_ (lambda () _%r89855%_))
                             (_%K8988189899%_
                              (lambda (_%rest289896%_ _%x289897%_)
                                (_%lp89851%_
                                 _%rest189875%_
                                 _%rest289896%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89842%_
                                    _%x189876%_
                                    _%x289897%_
                                    _%r89855%_))))))
                        (if (pair? _%rest28987789885%_)
                            (let ((_%hd8988289902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28987789885%_)))
                                  (_%tl8988389904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28987789885%_))))
                              (let* ((_%x289907%_ _%hd8988289902%_)
                                     (_%rest289909%_ _%tl8988389904%_))
                                (_%K8988189899%_ _%rest289909%_ _%x289907%_)))
                            (_%else8987989893%_))))))
              (if (pair? _%rest18985689864%_)
                  (let ((_%hd8986189914%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18985689864%_)))
                        (_%tl8986289916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18985689864%_))))
                    (let* ((_%x189919%_ _%hd8986189914%_)
                           (_%rest189921%_ _%tl8986289916%_))
                      (_%K8986089911%_ _%rest189921%_ _%x189919%_)))
                  (_%else8985889872%_)))))))
    (define foldl
      (lambda _g92127_
        (let ((_g92126_ (let () (declare (not safe)) (##length _g92127_))))
          (cond ((let () (declare (not safe)) (##fx= _g92126_ 3))
                 (apply foldl1 _g92127_))
                ((let () (declare (not safe)) (##fx= _g92126_ 4))
                 (apply foldl2 _g92127_))
                ((let () (declare (not safe)) (##fx>= _g92126_ 4))
                 (apply foldl* _g92127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g92127_))))))
    (define foldl*
      (lambda (_%f89805%_ _%iv89806%_ . _%rest89807%_)
        (if (procedure? _%f89805%_)
            (let ((_%f89811%_ _%f89805%_))
              (declare (not safe))
              (##apply __foldl* _%f89811%_ _%iv89806%_ _%rest89807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89805%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f89783%_ _%iv89784%_ . _%rest89785%_)
        (let ((_%f89788%_ _%f89783%_))
          (let _%recur89797%_ ((_%iv89799%_ _%iv89784%_)
                               (_%rest89800%_ _%rest89785%_))
            (if (__andmap1 pair? _%rest89800%_)
                (_%recur89797%_
                 (let ((__tmp92128
                        (__foldr1
                         (lambda (_%xs89802%_ _%r89803%_)
                           (cons (car _%xs89802%_) _%r89803%_))
                         (list _%iv89799%_)
                         _%rest89800%_)))
                   (declare (not safe))
                   (##apply _%f89788%_ __tmp92128))
                 (map cdr _%rest89800%_))
                _%iv89799%_)))))
    (define foldr1
      (lambda (_%f89767%_ _%iv89768%_ _%lst89769%_)
        (if (procedure? _%f89767%_)
            (let ((_%f89773%_ _%f89767%_))
              (__foldr1 _%f89773%_ _%iv89768%_ _%lst89769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f89767%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f89716%_ _%iv89717%_ _%lst89718%_)
        (let ((_%f89721%_ _%f89716%_))
          (let _%recur89730%_ ((_%rest89732%_ _%lst89718%_))
            (let* ((_%rest8973389741%_ _%rest89732%_)
                   (_%else8973589749%_ (lambda () _%iv89717%_))
                   (_%K8973789755%_
                    (lambda (_%rest89752%_ _%x89753%_)
                      (let ((__tmp92129 (_%recur89730%_ _%rest89752%_)))
                        (declare (not safe))
                        (_%f89721%_ _%x89753%_ __tmp92129)))))
              (if (pair? _%rest8973389741%_)
                  (let ((_%hd8973889758%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8973389741%_)))
                        (_%tl8973989760%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8973389741%_))))
                    (let* ((_%x89763%_ _%hd8973889758%_)
                           (_%rest89765%_ _%tl8973989760%_))
                      (_%K8973789755%_ _%rest89765%_ _%x89763%_)))
                  (_%else8973589749%_)))))))
    (define foldr2
      (lambda (_%f89699%_ _%iv89700%_ _%lst189701%_ _%lst289702%_)
        (if (procedure? _%f89699%_)
            (let ((_%f89706%_ _%f89699%_))
              (__foldr2 _%f89706%_ _%iv89700%_ _%lst189701%_ _%lst289702%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f89699%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f89613%_ _%iv89614%_ _%lst189615%_ _%lst289616%_)
        (let ((_%f89619%_ _%f89613%_))
          (let _%recur89628%_ ((_%rest189630%_ _%lst189615%_)
                               (_%rest289631%_ _%lst289616%_))
            (let* ((_%rest18963289640%_ _%rest189630%_)
                   (_%else8963489648%_ (lambda () _%iv89614%_))
                   (_%K8963689687%_
                    (lambda (_%rest189651%_ _%x189652%_)
                      (let* ((_%rest28965389661%_ _%rest289631%_)
                             (_%else8965589669%_ (lambda () _%iv89614%_))
                             (_%K8965789675%_
                              (lambda (_%rest289672%_ _%x289673%_)
                                (let ((__tmp92130
                                       (_%recur89628%_
                                        _%rest189651%_
                                        _%rest289672%_)))
                                  (declare (not safe))
                                  (_%f89619%_
                                   _%x189652%_
                                   _%x289673%_
                                   __tmp92130)))))
                        (if (pair? _%rest28965389661%_)
                            (let ((_%hd8965889678%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28965389661%_)))
                                  (_%tl8965989680%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28965389661%_))))
                              (let* ((_%x289683%_ _%hd8965889678%_)
                                     (_%rest289685%_ _%tl8965989680%_))
                                (_%K8965789675%_ _%rest289685%_ _%x289683%_)))
                            (_%else8965589669%_))))))
              (if (pair? _%rest18963289640%_)
                  (let ((_%hd8963789690%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18963289640%_)))
                        (_%tl8963889692%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18963289640%_))))
                    (let* ((_%x189695%_ _%hd8963789690%_)
                           (_%rest189697%_ _%tl8963889692%_))
                      (_%K8963689687%_ _%rest189697%_ _%x189695%_)))
                  (_%else8963489648%_)))))))
    (define foldr
      (lambda _g92132_
        (let ((_g92131_ (let () (declare (not safe)) (##length _g92132_))))
          (cond ((let () (declare (not safe)) (##fx= _g92131_ 3))
                 (apply foldr1 _g92132_))
                ((let () (declare (not safe)) (##fx= _g92131_ 4))
                 (apply foldr2 _g92132_))
                ((let () (declare (not safe)) (##fx>= _g92131_ 4))
                 (apply foldr* _g92132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g92132_))))))
    (define foldr*
      (lambda (_%f89582%_ _%iv89583%_ . _%rest89584%_)
        (if (procedure? _%f89582%_)
            (let ((_%f89588%_ _%f89582%_))
              (declare (not safe))
              (##apply __foldr* _%f89588%_ _%iv89583%_ _%rest89584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f89582%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f89561%_ _%iv89562%_ . _%rest89563%_)
        (let ((_%f89566%_ _%f89561%_))
          (let _%recur89575%_ ((_%rest89577%_ _%rest89563%_))
            (if (__andmap1 pair? _%rest89577%_)
                (let ((__tmp92133
                       (__foldr1
                        (lambda (_%xs89579%_ _%r89580%_)
                          (cons (car _%xs89579%_) _%r89580%_))
                        (list (_%recur89575%_ (map cdr _%rest89577%_)))
                        _%rest89577%_)))
                  (declare (not safe))
                  (##apply _%f89566%_ __tmp92133))
                _%iv89562%_)))))
    (define remove-nulls!
      (lambda (_%l89448%_)
        (let* ((_%l8944989462%_ _%l89448%_)
               (_%E8945389466%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8944989462%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8945889551%_
                 (lambda (_%r89549%_) (remove-nulls! _%r89549%_)))
                (_%K8945589538%_
                 (lambda (_%r89478%_)
                   (let _%loop89480%_ ((_%l89482%_ _%l89448%_)
                                       (_%r89483%_ _%r89478%_))
                     (let* ((_%r8948489497%_ _%r89483%_)
                            (_%E8948889501%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8948489497%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8949389528%_
                              (lambda (_%rr89526%_)
                                (let ((__tmp92135 _%l89482%_)
                                      (__tmp92134 (remove-nulls! _%rr89526%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp92135 __tmp92134))))
                             (_%K8949089515%_
                              (lambda (_%rr89513%_)
                                (_%loop89480%_ _%r89483%_ _%rr89513%_)))
                             (_%K8948989506%_ (lambda () '#!void)))
                         (if (pair? _%r8948489497%_)
                             (let ((_%tl8949589533%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8948489497%_)))
                                   (_%hd8949489531%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8948489497%_))))
                               (if (null? _%hd8949489531%_)
                                   (let ((_%rr89536%_ _%tl8949589533%_))
                                     (_%K8949389528%_ _%rr89536%_))
                                   (let ((_%rr89521%_ _%tl8949589533%_))
                                     (_%K8949089515%_ _%rr89521%_))))
                             '#!void))))
                   _%l89448%_))
                (_%K8945489471%_ (lambda () _%l89448%_)))
            (if (pair? _%l8944989462%_)
                (let ((_%tl8946089556%_
                       (let () (declare (not safe)) (##cdr _%l8944989462%_)))
                      (_%hd8945989554%_
                       (let () (declare (not safe)) (##car _%l8944989462%_))))
                  (if (null? _%hd8945989554%_)
                      (let ((_%r89559%_ _%tl8946089556%_))
                        (remove-nulls! _%r89559%_))
                      (let ((_%r89544%_ _%tl8946089556%_))
                        (_%K8945589538%_ _%r89544%_))))
                (_%K8945489471%_))))))
    (define append1!
      (lambda (_%l89433%_ _%x89434%_)
        (let ((_%l289437%_ (cons _%x89434%_ '())))
          (if (pair? _%l89433%_)
              (let ((_%l89439%_ _%l89433%_))
                (let ((__tmp92136
                       (let () (declare (not safe)) (##last-pair _%l89439%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp92136 _%l289437%_))
                _%l89439%_)
              _%l289437%_))))
    (define append-reverse-until
      (lambda (_%pred89417%_ _%rhead89418%_ _%tail89419%_)
        (if (procedure? _%pred89417%_)
            (let ((_%pred89423%_ _%pred89417%_))
              (__append-reverse-until
               _%pred89423%_
               _%rhead89418%_
               _%tail89419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred89417%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred89359%_ _%rhead89360%_ _%tail89361%_)
        (let ((_%pred89364%_ _%pred89359%_))
          (let _%loop89373%_ ((_%rhead89375%_ _%rhead89360%_)
                              (_%tail89376%_ _%tail89361%_))
            (let* ((_%rhead8937889387%_ _%rhead89375%_)
                   (_%E8938189391%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8937889387%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8938589414%_ (lambda () (values '() _%tail89376%_)))
                    (_%K8938289398%_
                     (lambda (_%r89395%_ _%a89396%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred89364%_ _%a89396%_))
                           (values _%rhead89375%_ _%tail89376%_)
                           (_%loop89373%_
                            _%r89395%_
                            (cons _%a89396%_ _%tail89376%_))))))
                (let ((_%try-match8938089410%_
                       (lambda ()
                         (if (pair? _%rhead8937889387%_)
                             (let ((_%tl8938489403%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8937889387%_)))
                                   (_%hd8938389401%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8937889387%_))))
                               (let ((_%a89406%_ _%hd8938389401%_)
                                     (_%r89408%_ _%tl8938489403%_))
                                 (_%K8938289398%_ _%r89408%_ _%a89406%_)))
                             (_%E8938189391%_)))))
                  (if (null? _%rhead8937889387%_)
                      (_%K8938589414%_)
                      (_%try-match8938089410%_)))))))))
    (define andmap1
      (lambda (_%f89344%_ _%lst89345%_)
        (if (procedure? _%f89344%_)
            (let ((_%f89349%_ _%f89344%_)) (__andmap1 _%f89349%_ _%lst89345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f89344%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f89293%_ _%lst89294%_)
        (let ((_%f89297%_ _%f89293%_))
          (let _%lp89306%_ ((_%rest89308%_ _%lst89294%_))
            (let* ((_%rest8931089318%_ _%rest89308%_)
                   (_%else8931289326%_ (lambda () '#t))
                   (_%K8931489332%_
                    (lambda (_%rest89329%_ _%x89330%_)
                      (if (let () (declare (not safe)) (_%f89297%_ _%x89330%_))
                          (_%lp89306%_ _%rest89329%_)
                          '#f))))
              (if (pair? _%rest8931089318%_)
                  (let ((_%hd8931589335%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8931089318%_)))
                        (_%tl8931689337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8931089318%_))))
                    (let* ((_%x89340%_ _%hd8931589335%_)
                           (_%rest89342%_ _%tl8931689337%_))
                      (_%K8931489332%_ _%rest89342%_ _%x89340%_)))
                  (_%else8931289326%_)))))))
    (define andmap2
      (lambda (_%f89277%_ _%lst189278%_ _%lst289279%_)
        (if (procedure? _%f89277%_)
            (let ((_%f89283%_ _%f89277%_))
              (__andmap2 _%f89283%_ _%lst189278%_ _%lst289279%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f89277%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f89191%_ _%lst189192%_ _%lst289193%_)
        (let ((_%f89196%_ _%f89191%_))
          (let _%lp89205%_ ((_%rest189207%_ _%lst189192%_)
                            (_%rest289208%_ _%lst289193%_))
            (let* ((_%rest18921089218%_ _%rest189207%_)
                   (_%else8921289226%_ (lambda () '#t))
                   (_%K8921489265%_
                    (lambda (_%rest189229%_ _%x189230%_)
                      (let* ((_%rest28923189239%_ _%rest289208%_)
                             (_%else8923389247%_ (lambda () '#t))
                             (_%K8923589253%_
                              (lambda (_%rest289250%_ _%x289251%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f89196%_ _%x189230%_ _%x289251%_))
                                    (_%lp89205%_ _%rest189229%_ _%rest289250%_)
                                    '#f))))
                        (if (pair? _%rest28923189239%_)
                            (let ((_%hd8923689256%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28923189239%_)))
                                  (_%tl8923789258%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28923189239%_))))
                              (let* ((_%x289261%_ _%hd8923689256%_)
                                     (_%rest289263%_ _%tl8923789258%_))
                                (_%K8923589253%_ _%rest289263%_ _%x289261%_)))
                            (_%else8923389247%_))))))
              (if (pair? _%rest18921089218%_)
                  (let ((_%hd8921589268%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18921089218%_)))
                        (_%tl8921689270%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18921089218%_))))
                    (let* ((_%x189273%_ _%hd8921589268%_)
                           (_%rest189275%_ _%tl8921689270%_))
                      (_%K8921489265%_ _%rest189275%_ _%x189273%_)))
                  (_%else8921289226%_)))))))
    (define andmap
      (lambda _g92138_
        (let ((_g92137_ (let () (declare (not safe)) (##length _g92138_))))
          (cond ((let () (declare (not safe)) (##fx= _g92137_ 2))
                 (apply andmap1 _g92138_))
                ((let () (declare (not safe)) (##fx= _g92137_ 3))
                 (apply andmap2 _g92138_))
                ((let () (declare (not safe)) (##fx>= _g92137_ 3))
                 (apply andmap* _g92138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g92138_))))))
    (define andmap*
      (lambda (_%f89164%_ . _%rest89165%_)
        (if (procedure? _%f89164%_)
            (let ((_%f89169%_ _%f89164%_))
              (declare (not safe))
              (##apply __andmap* _%f89169%_ _%rest89165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f89164%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f89146%_ . _%rest89147%_)
        (let ((_%f89150%_ _%f89146%_))
          (let _%recur89159%_ ((_%rest89161%_ _%rest89147%_))
            (if (__andmap1 pair? _%rest89161%_)
                (if (let ((__tmp92139 (map car _%rest89161%_)))
                      (declare (not safe))
                      (##apply _%f89150%_ __tmp92139))
                    (_%recur89159%_ (map cdr _%rest89161%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f89131%_ _%lst89132%_)
        (if (procedure? _%f89131%_)
            (let ((_%f89136%_ _%f89131%_)) (__ormap1 _%f89136%_ _%lst89132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f89131%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f89078%_ _%lst89079%_)
        (let ((_%f89082%_ _%f89078%_))
          (let _%lp89091%_ ((_%rest89093%_ _%lst89079%_))
            (let* ((_%rest8909489102%_ _%rest89093%_)
                   (_%else8909689110%_ (lambda () '#f))
                   (_%K8909889119%_
                    (lambda (_%rest89113%_ _%x89114%_)
                      (let ((_%$e89116%_
                             (let ()
                               (declare (not safe))
                               (_%f89082%_ _%x89114%_))))
                        (if _%$e89116%_
                            _%$e89116%_
                            (_%lp89091%_ _%rest89113%_))))))
              (if (pair? _%rest8909489102%_)
                  (let ((_%hd8909989122%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8909489102%_)))
                        (_%tl8910089124%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8909489102%_))))
                    (let* ((_%x89127%_ _%hd8909989122%_)
                           (_%rest89129%_ _%tl8910089124%_))
                      (_%K8909889119%_ _%rest89129%_ _%x89127%_)))
                  (_%else8909689110%_)))))))
    (define ormap2
      (lambda (_%f89062%_ _%lst189063%_ _%lst289064%_)
        (if (procedure? _%f89062%_)
            (let ((_%f89068%_ _%f89062%_))
              (__ormap2 _%f89068%_ _%lst189063%_ _%lst289064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f89062%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88974%_ _%lst188975%_ _%lst288976%_)
        (let ((_%f88979%_ _%f88974%_))
          (let _%lp88988%_ ((_%rest188990%_ _%lst188975%_)
                            (_%rest288991%_ _%lst288976%_))
            (let* ((_%rest18899289000%_ _%rest188990%_)
                   (_%else8899489008%_ (lambda () '#f))
                   (_%K8899689050%_
                    (lambda (_%rest189011%_ _%x189012%_)
                      (let* ((_%rest28901389021%_ _%rest288991%_)
                             (_%else8901589029%_ (lambda () '#f))
                             (_%K8901789038%_
                              (lambda (_%rest289032%_ _%x289033%_)
                                (let ((_%$e89035%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88979%_
                                          _%x189012%_
                                          _%x289033%_))))
                                  (if _%$e89035%_
                                      _%$e89035%_
                                      (_%lp88988%_
                                       _%rest189011%_
                                       _%rest289032%_))))))
                        (if (pair? _%rest28901389021%_)
                            (let ((_%hd8901889041%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28901389021%_)))
                                  (_%tl8901989043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28901389021%_))))
                              (let* ((_%x289046%_ _%hd8901889041%_)
                                     (_%rest289048%_ _%tl8901989043%_))
                                (_%K8901789038%_ _%rest289048%_ _%x289046%_)))
                            (_%else8901589029%_))))))
              (if (pair? _%rest18899289000%_)
                  (let ((_%hd8899789053%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18899289000%_)))
                        (_%tl8899889055%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18899289000%_))))
                    (let* ((_%x189058%_ _%hd8899789053%_)
                           (_%rest189060%_ _%tl8899889055%_))
                      (_%K8899689050%_ _%rest189060%_ _%x189058%_)))
                  (_%else8899489008%_)))))))
    (define ormap
      (lambda _g92141_
        (let ((_g92140_ (let () (declare (not safe)) (##length _g92141_))))
          (cond ((let () (declare (not safe)) (##fx= _g92140_ 2))
                 (apply ormap1 _g92141_))
                ((let () (declare (not safe)) (##fx= _g92140_ 3))
                 (apply ormap2 _g92141_))
                ((let () (declare (not safe)) (##fx>= _g92140_ 3))
                 (apply ormap* _g92141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g92141_))))))
    (define ormap*
      (lambda (_%f88947%_ . _%rest88948%_)
        (if (procedure? _%f88947%_)
            (let ((_%f88952%_ _%f88947%_))
              (declare (not safe))
              (##apply __ormap* _%f88952%_ _%rest88948%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f88947%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88927%_ . _%rest88928%_)
        (let ((_%f88931%_ _%f88927%_))
          (let _%recur88940%_ ((_%rest88942%_ _%rest88928%_))
            (if (__andmap1 pair? _%rest88942%_)
                (let ((_%$e88944%_
                       (let ((__tmp92142 (map car _%rest88942%_)))
                         (declare (not safe))
                         (##apply _%f88931%_ __tmp92142))))
                  (if _%$e88944%_
                      _%$e88944%_
                      (_%recur88940%_ (map cdr _%rest88942%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88912%_ _%lst88913%_)
        (if (procedure? _%f88912%_)
            (let ((_%f88917%_ _%f88912%_))
              (__filter-map1 _%f88917%_ _%lst88913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f88912%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88855%_ _%lst88856%_)
        (let ((_%f88859%_ _%f88855%_))
          (let _%recur88868%_ ((_%rest88870%_ _%lst88856%_))
            (let* ((_%rest8887288880%_ _%rest88870%_)
                   (_%else8887488888%_ (lambda () '()))
                   (_%K8887688900%_
                    (lambda (_%rest88891%_ _%x88892%_)
                      (let ((_%$e88894%_
                             (let ()
                               (declare (not safe))
                               (_%f88859%_ _%x88892%_))))
                        (if _%$e88894%_
                            ((lambda (_%r88897%_)
                               (cons _%r88897%_
                                     (_%recur88868%_ _%rest88891%_)))
                             _%$e88894%_)
                            (_%recur88868%_ _%rest88891%_))))))
              (if (pair? _%rest8887288880%_)
                  (let ((_%hd8887788903%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8887288880%_)))
                        (_%tl8887888905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8887288880%_))))
                    (let* ((_%x88908%_ _%hd8887788903%_)
                           (_%rest88910%_ _%tl8887888905%_))
                      (_%K8887688900%_ _%rest88910%_ _%x88908%_)))
                  (_%else8887488888%_)))))))
    (define filter-map2
      (lambda (_%f88839%_ _%lst188840%_ _%lst288841%_)
        (if (procedure? _%f88839%_)
            (let ((_%f88845%_ _%f88839%_))
              (__filter-map2 _%f88845%_ _%lst188840%_ _%lst288841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88839%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f88747%_ _%lst188748%_ _%lst288749%_)
        (let ((_%f88752%_ _%f88747%_))
          (let _%recur88761%_ ((_%rest188763%_ _%lst188748%_)
                               (_%rest288764%_ _%lst288749%_))
            (let* ((_%rest18876688774%_ _%rest188763%_)
                   (_%else8876888782%_ (lambda () '()))
                   (_%K8877088827%_
                    (lambda (_%rest188785%_ _%x188786%_)
                      (let* ((_%rest28878788795%_ _%rest288764%_)
                             (_%else8878988803%_ (lambda () '()))
                             (_%K8879188815%_
                              (lambda (_%rest288806%_ _%x288807%_)
                                (let ((_%$e88809%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88752%_
                                          _%x188786%_
                                          _%x288807%_))))
                                  (if _%$e88809%_
                                      ((lambda (_%r88812%_)
                                         (cons _%r88812%_
                                               (_%recur88761%_
                                                _%rest188785%_
                                                _%rest288806%_)))
                                       _%$e88809%_)
                                      (_%recur88761%_
                                       _%rest188785%_
                                       _%rest288806%_))))))
                        (if (pair? _%rest28878788795%_)
                            (let ((_%hd8879288818%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28878788795%_)))
                                  (_%tl8879388820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28878788795%_))))
                              (let* ((_%x288823%_ _%hd8879288818%_)
                                     (_%rest288825%_ _%tl8879388820%_))
                                (_%K8879188815%_ _%rest288825%_ _%x288823%_)))
                            (_%else8878988803%_))))))
              (if (pair? _%rest18876688774%_)
                  (let ((_%hd8877188830%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18876688774%_)))
                        (_%tl8877288832%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18876688774%_))))
                    (let* ((_%x188835%_ _%hd8877188830%_)
                           (_%rest188837%_ _%tl8877288832%_))
                      (_%K8877088827%_ _%rest188837%_ _%x188835%_)))
                  (_%else8876888782%_)))))))
    (define filter-map
      (lambda _g92144_
        (let ((_g92143_ (let () (declare (not safe)) (##length _g92144_))))
          (cond ((let () (declare (not safe)) (##fx= _g92143_ 2))
                 (apply filter-map1 _g92144_))
                ((let () (declare (not safe)) (##fx= _g92143_ 3))
                 (apply filter-map2 _g92144_))
                ((let () (declare (not safe)) (##fx>= _g92143_ 3))
                 (apply filter-map* _g92144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g92144_))))))
    (define filter-map*
      (lambda (_%f88720%_ . _%rest88721%_)
        (if (procedure? _%f88720%_)
            (let ((_%f88725%_ _%f88720%_))
              (declare (not safe))
              (##apply __filter-map* _%f88725%_ _%rest88721%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f88720%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f88696%_ . _%rest88697%_)
        (let ((_%f88700%_ _%f88696%_))
          (let _%recur88709%_ ((_%rest88711%_ _%rest88697%_))
            (if (__andmap1 pair? _%rest88711%_)
                (let ((_%$e88714%_
                       (let ((__tmp92145 (map car _%rest88711%_)))
                         (declare (not safe))
                         (##apply _%f88700%_ __tmp92145))))
                  (if _%$e88714%_
                      ((lambda (_%r88717%_)
                         (cons _%r88717%_
                               (_%recur88709%_ (map cdr _%rest88711%_))))
                       _%$e88714%_)
                      (_%recur88709%_ (map cdr _%rest88711%_))))
                '())))))
    (define agetq__%
      (lambda (_%key88672%_ _%lst88674%_ _%default88676%_)
        (let ((_%$e88679%_
               (if (pair? _%lst88674%_) (assq _%key88672%_ _%lst88674%_) '#f)))
          (if _%$e88679%_
              (cdr _%$e88679%_)
              (if (procedure? _%default88676%_)
                  (_%default88676%_ _%key88672%_)
                  _%default88676%_)))))
    (define agetq__0
      (lambda (_%key88687%_ _%lst88688%_)
        (let ((_%default88690%_ '#f))
          (agetq__% _%key88687%_ _%lst88688%_ _%default88690%_))))
    (define agetq
      (lambda _g92147_
        (let ((_g92146_ (let () (declare (not safe)) (##length _g92147_))))
          (cond ((let () (declare (not safe)) (##fx= _g92146_ 2))
                 (apply agetq__0 _g92147_))
                ((let () (declare (not safe)) (##fx= _g92146_ 3))
                 (apply agetq__% _g92147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g92147_))))))
    (define agetv__%
      (lambda (_%key88647%_ _%lst88649%_ _%default88651%_)
        (let ((_%$e88654%_
               (if (pair? _%lst88649%_) (assv _%key88647%_ _%lst88649%_) '#f)))
          (if _%$e88654%_
              (cdr _%$e88654%_)
              (if (procedure? _%default88651%_)
                  (_%default88651%_ _%key88647%_)
                  _%default88651%_)))))
    (define agetv__0
      (lambda (_%key88662%_ _%lst88663%_)
        (let ((_%default88665%_ '#f))
          (agetv__% _%key88662%_ _%lst88663%_ _%default88665%_))))
    (define agetv
      (lambda _g92149_
        (let ((_g92148_ (let () (declare (not safe)) (##length _g92149_))))
          (cond ((let () (declare (not safe)) (##fx= _g92148_ 2))
                 (apply agetv__0 _g92149_))
                ((let () (declare (not safe)) (##fx= _g92148_ 3))
                 (apply agetv__% _g92149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g92149_))))))
    (define aget__%
      (lambda (_%key88622%_ _%lst88624%_ _%default88626%_)
        (let ((_%$e88629%_
               (if (pair? _%lst88624%_)
                   (assoc _%key88622%_ _%lst88624%_)
                   '#f)))
          (if _%$e88629%_
              (cdr _%$e88629%_)
              (if (procedure? _%default88626%_)
                  (_%default88626%_ _%key88622%_)
                  _%default88626%_)))))
    (define aget__0
      (lambda (_%key88637%_ _%lst88638%_)
        (let ((_%default88640%_ '#f))
          (aget__% _%key88637%_ _%lst88638%_ _%default88640%_))))
    (define aget
      (lambda _g92151_
        (let ((_g92150_ (let () (declare (not safe)) (##length _g92151_))))
          (cond ((let () (declare (not safe)) (##fx= _g92150_ 2))
                 (apply aget__0 _g92151_))
                ((let () (declare (not safe)) (##fx= _g92150_ 3))
                 (apply aget__% _g92151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g92151_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key88551%_ _%lst88553%_ _%default88555%_)
        (let _%lp88558%_ ((_%rest88561%_ _%lst88553%_))
          (let* ((_%rest8856388573%_ _%rest88561%_)
                 (_%else8856588581%_
                  (lambda ()
                    (if (procedure? _%default88555%_)
                        (_%default88555%_ _%key88551%_)
                        _%default88555%_)))
                 (_%K8856788590%_
                  (lambda (_%rest88584%_ _%v88585%_ _%k88587%_)
                    (if (eq? _%k88587%_ _%key88551%_)
                        _%v88585%_
                        (_%lp88558%_ _%rest88584%_)))))
            (if (pair? _%rest8856388573%_)
                (let ((_%hd8856888593%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8856388573%_)))
                      (_%tl8856988595%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8856388573%_))))
                  (let ((_%k88598%_ _%hd8856888593%_))
                    (if (pair? _%tl8856988595%_)
                        (let ((_%hd8857088600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8856988595%_)))
                              (_%tl8857188602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8856988595%_))))
                          (let* ((_%v88605%_ _%hd8857088600%_)
                                 (_%rest88607%_ _%tl8857188602%_))
                            (_%K8856788590%_
                             _%rest88607%_
                             _%v88605%_
                             _%k88598%_)))
                        (_%else8856588581%_))))
                (_%else8856588581%_))))))
    (define pgetq__0
      (lambda (_%key88612%_ _%lst88613%_)
        (let ((_%default88615%_ '#f))
          (pgetq__% _%key88612%_ _%lst88613%_ _%default88615%_))))
    (define pgetq
      (lambda _g92153_
        (let ((_g92152_ (let () (declare (not safe)) (##length _g92153_))))
          (cond ((let () (declare (not safe)) (##fx= _g92152_ 2))
                 (apply pgetq__0 _g92153_))
                ((let () (declare (not safe)) (##fx= _g92152_ 3))
                 (apply pgetq__% _g92153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g92153_))))))
    (define pgetv__%
      (lambda (_%key88480%_ _%lst88482%_ _%default88484%_)
        (let _%lp88487%_ ((_%rest88490%_ _%lst88482%_))
          (let* ((_%rest8849288502%_ _%rest88490%_)
                 (_%else8849488510%_
                  (lambda ()
                    (if (procedure? _%default88484%_)
                        (_%default88484%_ _%key88480%_)
                        _%default88484%_)))
                 (_%K8849688519%_
                  (lambda (_%rest88513%_ _%v88514%_ _%k88516%_)
                    (if (eqv? _%k88516%_ _%key88480%_)
                        _%v88514%_
                        (_%lp88487%_ _%rest88513%_)))))
            (if (pair? _%rest8849288502%_)
                (let ((_%hd8849788522%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8849288502%_)))
                      (_%tl8849888524%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8849288502%_))))
                  (let ((_%k88527%_ _%hd8849788522%_))
                    (if (pair? _%tl8849888524%_)
                        (let ((_%hd8849988529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8849888524%_)))
                              (_%tl8850088531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8849888524%_))))
                          (let* ((_%v88534%_ _%hd8849988529%_)
                                 (_%rest88536%_ _%tl8850088531%_))
                            (_%K8849688519%_
                             _%rest88536%_
                             _%v88534%_
                             _%k88527%_)))
                        (_%else8849488510%_))))
                (_%else8849488510%_))))))
    (define pgetv__0
      (lambda (_%key88541%_ _%lst88542%_)
        (let ((_%default88544%_ '#f))
          (pgetv__% _%key88541%_ _%lst88542%_ _%default88544%_))))
    (define pgetv
      (lambda _g92155_
        (let ((_g92154_ (let () (declare (not safe)) (##length _g92155_))))
          (cond ((let () (declare (not safe)) (##fx= _g92154_ 2))
                 (apply pgetv__0 _g92155_))
                ((let () (declare (not safe)) (##fx= _g92154_ 3))
                 (apply pgetv__% _g92155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g92155_))))))
    (define pget__%
      (lambda (_%key88409%_ _%lst88411%_ _%default88413%_)
        (let _%lp88416%_ ((_%rest88419%_ _%lst88411%_))
          (let* ((_%rest8842188431%_ _%rest88419%_)
                 (_%else8842388439%_
                  (lambda ()
                    (if (procedure? _%default88413%_)
                        (_%default88413%_ _%key88409%_)
                        _%default88413%_)))
                 (_%K8842588448%_
                  (lambda (_%rest88442%_ _%v88443%_ _%k88445%_)
                    (if (equal? _%k88445%_ _%key88409%_)
                        _%v88443%_
                        (_%lp88416%_ _%rest88442%_)))))
            (if (pair? _%rest8842188431%_)
                (let ((_%hd8842688451%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8842188431%_)))
                      (_%tl8842788453%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8842188431%_))))
                  (let ((_%k88456%_ _%hd8842688451%_))
                    (if (pair? _%tl8842788453%_)
                        (let ((_%hd8842888458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8842788453%_)))
                              (_%tl8842988460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8842788453%_))))
                          (let* ((_%v88463%_ _%hd8842888458%_)
                                 (_%rest88465%_ _%tl8842988460%_))
                            (_%K8842588448%_
                             _%rest88465%_
                             _%v88463%_
                             _%k88456%_)))
                        (_%else8842388439%_))))
                (_%else8842388439%_))))))
    (define pget__0
      (lambda (_%key88470%_ _%lst88471%_)
        (let ((_%default88473%_ '#f))
          (pget__% _%key88470%_ _%lst88471%_ _%default88473%_))))
    (define pget
      (lambda _g92157_
        (let ((_g92156_ (let () (declare (not safe)) (##length _g92157_))))
          (cond ((let () (declare (not safe)) (##fx= _g92156_ 2))
                 (apply pget__0 _g92157_))
                ((let () (declare (not safe)) (##fx= _g92156_ 3))
                 (apply pget__% _g92157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g92157_))))))
    (define find
      (lambda (_%pred88393%_ _%lst88394%_)
        (if (procedure? _%pred88393%_)
            (let ((_%pred88398%_ _%pred88393%_))
              (__find _%pred88398%_ _%lst88394%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred88393%_)
              '#!void))))
    (define __find
      (lambda (_%pred88376%_ _%lst88377%_)
        (let* ((_%pred88380%_ _%pred88376%_)
               (_%$e88389%_ (__memf _%pred88380%_ _%lst88377%_)))
          (if _%$e88389%_
              (let () (declare (not safe)) (##car _%$e88389%_))
              '#f))))
    (define memf
      (lambda (_%proc88361%_ _%lst88362%_)
        (if (procedure? _%proc88361%_)
            (let ((_%proc88366%_ _%proc88361%_))
              (__memf _%proc88366%_ _%lst88362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc88361%_)
              '#!void))))
    (define __memf
      (lambda (_%proc88311%_ _%lst88312%_)
        (let ((_%proc88315%_ _%proc88311%_))
          (let _%lp88324%_ ((_%rest88326%_ _%lst88312%_))
            (let* ((_%rest8832788335%_ _%rest88326%_)
                   (_%else8832988343%_ (lambda () '#f))
                   (_%K8833188349%_
                    (lambda (_%tl88346%_ _%hd88347%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88315%_ _%hd88347%_))
                          _%rest88326%_
                          (_%lp88324%_ _%tl88346%_)))))
              (if (pair? _%rest8832788335%_)
                  (let ((_%hd8833288352%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8832788335%_)))
                        (_%tl8833388354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8832788335%_))))
                    (let* ((_%hd88357%_ _%hd8833288352%_)
                           (_%tl88359%_ _%tl8833388354%_))
                      (_%K8833188349%_ _%tl88359%_ _%hd88357%_)))
                  (_%else8832988343%_)))))))
    (define remove1
      (lambda (_%el88264%_ _%lst88266%_)
        (let _%lp88269%_ ((_%rest88272%_ _%lst88266%_) (_%r88274%_ '()))
          (let* ((_%rest8827688284%_ _%rest88272%_)
                 (_%else8827888292%_ (lambda () _%lst88266%_))
                 (_%K8828088299%_
                  (lambda (_%rest88295%_ _%hd88296%_)
                    (if (equal? _%el88264%_ _%hd88296%_)
                        (__foldl1 cons _%rest88295%_ _%r88274%_)
                        (_%lp88269%_
                         _%rest88295%_
                         (cons _%hd88296%_ _%r88274%_))))))
            (if (pair? _%rest8827688284%_)
                (let ((_%hd8828188302%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8827688284%_)))
                      (_%tl8828288304%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8827688284%_))))
                  (let* ((_%hd88307%_ _%hd8828188302%_)
                         (_%rest88309%_ _%tl8828288304%_))
                    (_%K8828088299%_ _%rest88309%_ _%hd88307%_)))
                (_%else8827888292%_))))))
    (define remv1
      (lambda (_%el88217%_ _%lst88219%_)
        (let _%lp88222%_ ((_%rest88225%_ _%lst88219%_) (_%r88227%_ '()))
          (let* ((_%rest8822988237%_ _%rest88225%_)
                 (_%else8823188245%_ (lambda () _%lst88219%_))
                 (_%K8823388252%_
                  (lambda (_%rest88248%_ _%hd88249%_)
                    (if (eqv? _%el88217%_ _%hd88249%_)
                        (__foldl1 cons _%rest88248%_ _%r88227%_)
                        (_%lp88222%_
                         _%rest88248%_
                         (cons _%hd88249%_ _%r88227%_))))))
            (if (pair? _%rest8822988237%_)
                (let ((_%hd8823488255%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8822988237%_)))
                      (_%tl8823588257%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8822988237%_))))
                  (let* ((_%hd88260%_ _%hd8823488255%_)
                         (_%rest88262%_ _%tl8823588257%_))
                    (_%K8823388252%_ _%rest88262%_ _%hd88260%_)))
                (_%else8823188245%_))))))
    (define remq1
      (lambda (_%el88170%_ _%lst88172%_)
        (let _%lp88175%_ ((_%rest88178%_ _%lst88172%_) (_%r88180%_ '()))
          (let* ((_%rest8818288190%_ _%rest88178%_)
                 (_%else8818488198%_ (lambda () _%lst88172%_))
                 (_%K8818688205%_
                  (lambda (_%rest88201%_ _%hd88202%_)
                    (if (eq? _%el88170%_ _%hd88202%_)
                        (__foldl1 cons _%rest88201%_ _%r88180%_)
                        (_%lp88175%_
                         _%rest88201%_
                         (cons _%hd88202%_ _%r88180%_))))))
            (if (pair? _%rest8818288190%_)
                (let ((_%hd8818788208%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8818288190%_)))
                      (_%tl8818888210%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8818288190%_))))
                  (let* ((_%hd88213%_ _%hd8818788208%_)
                         (_%rest88215%_ _%tl8818888210%_))
                    (_%K8818688205%_ _%rest88215%_ _%hd88213%_)))
                (_%else8818488198%_))))))
    (define remf
      (lambda (_%proc88155%_ _%lst88156%_)
        (if (procedure? _%proc88155%_)
            (let ((_%proc88160%_ _%proc88155%_))
              (__remf _%proc88160%_ _%lst88156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc88155%_)
              '#!void))))
    (define __remf
      (lambda (_%proc88104%_ _%lst88105%_)
        (let ((_%proc88108%_ _%proc88104%_))
          (let _%lp88117%_ ((_%rest88119%_ _%lst88105%_) (_%r88120%_ '()))
            (let* ((_%rest8812188129%_ _%rest88119%_)
                   (_%else8812388137%_ (lambda () _%lst88105%_))
                   (_%K8812588143%_
                    (lambda (_%rest88140%_ _%hd88141%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88108%_ _%hd88141%_))
                          (__foldl1 cons _%rest88140%_ _%r88120%_)
                          (_%lp88117%_
                           _%rest88140%_
                           (cons _%hd88141%_ _%r88120%_))))))
              (if (pair? _%rest8812188129%_)
                  (let ((_%hd8812688146%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8812188129%_)))
                        (_%tl8812788148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8812188129%_))))
                    (let* ((_%hd88151%_ _%hd8812688146%_)
                           (_%rest88153%_ _%tl8812788148%_))
                      (_%K8812588143%_ _%rest88153%_ _%hd88151%_)))
                  (_%else8812388137%_)))))))
    (define 1+
      (lambda (_%x88090%_)
        (if (number? _%x88090%_)
            (let ((_%x88094%_ _%x88090%_)) (__1+ _%x88094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x88090%_)
              '#!void))))
    (define __1+
      (lambda (_%x88078%_) (let ((_%x88081%_ _%x88078%_)) (+ _%x88081%_ '1))))
    (define 1-
      (lambda (_%x88064%_)
        (if (number? _%x88064%_)
            (let ((_%x88068%_ _%x88064%_)) (__1- _%x88068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x88064%_)
              '#!void))))
    (define __1-
      (lambda (_%x88052%_) (let ((_%x88055%_ _%x88052%_)) (- _%x88055%_ '1))))
    (define fx1+
      (lambda (_%x88038%_)
        (if (fixnum? _%x88038%_)
            (let ((_%x88042%_ _%x88038%_)) (__fx1+ _%x88042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x88038%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x88026%_)
        (let ((_%x88029%_ _%x88026%_))
          (declare (not safe))
          (##fx+ _%x88029%_ '1))))
    (define fx1-
      (lambda (_%x88012%_)
        (if (fixnum? _%x88012%_)
            (let ((_%x88016%_ _%x88012%_)) (__fx1- _%x88016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x88012%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x88000%_)
        (let ((_%x88003%_ _%x88000%_))
          (declare (not safe))
          (##fx- _%x88003%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87997%_)
        (if (fixnum? _%x87997%_)
            (let () (declare (not safe)) (##fx>= _%x87997%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87994%_)
        (if (fixnum? _%x87994%_)
            (let () (declare (not safe)) (##fx> _%x87994%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87991%_)
        (let () (declare (not safe)) (##fx= _%x87991%_ '0))))
    (define fx<0?
      (lambda (_%x87988%_)
        (if (fixnum? _%x87988%_)
            (let () (declare (not safe)) (##fx< _%x87988%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87985%_)
        (if (fixnum? _%x87985%_)
            (let () (declare (not safe)) (##fx<= _%x87985%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87982%_)
        (if (symbol? _%x87982%_) (not (uninterned-symbol? _%x87982%_)) '#f)))
    (define display-as-string
      (lambda (_%x87967%_ _%port87968%_)
        (if (output-port? _%port87968%_)
            (let ((_%port87972%_ _%port87968%_))
              (__display-as-string _%x87967%_ _%port87972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port87968%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87924%_ _%port87925%_)
        (let ((_%port87928%_ _%port87925%_))
          (if (or (string? _%x87924%_)
                  (symbol? _%x87924%_)
                  (keyword? _%x87924%_)
                  (number? _%x87924%_)
                  (char? _%x87924%_))
              (display _%x87924%_ _%port87928%_)
              (if (pair? _%x87924%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87924%_))
                     _%port87928%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87924%_))
                     _%port87928%_))
                  (if (vector? _%x87924%_)
                      (vector-for-each
                       (lambda (_%g8795187953%_)
                         (__display-as-string _%g8795187953%_ _%port87928%_))
                       _%x87924%_)
                      (if (or (null? _%x87924%_)
                              (eq? _%x87924%_ '#!void)
                              (eof-object? _%x87924%_)
                              (boolean? _%x87924%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87924%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87907%_)
        (if (string? _%x87907%_)
            _%x87907%_
            (if (symbol? _%x87907%_)
                (let () (declare (not safe)) (##symbol->string _%x87907%_))
                (if (keyword? _%x87907%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87907%_))
                    (if (number? _%x87907%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87907%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8791387915%_)
                           (__display-as-string
                            _%x87907%_
                            _%g8791387915%_)))))))))
    (define as-string__1
      (lambda _%args87918%_
        (call-with-output-string
         '()
         (lambda (_%g8791987921%_)
           (__display-as-string _%args87918%_ _%g8791987921%_)))))
    (define as-string
      (lambda _g92159_
        (let ((_g92158_ (let () (declare (not safe)) (##length _g92159_))))
          (cond ((let () (declare (not safe)) (##fx= _g92158_ 1))
                 (apply as-string__0 _g92159_))
                (#t
                 (apply (lambda _%args87918%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87918%_)))
                        _g92159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g92159_))))))
    (define make-symbol__0
      (lambda (_%x87903%_)
        (if (interned-symbol? _%x87903%_)
            _%x87903%_
            (let ((__tmp92160 (as-string__0 _%x87903%_)))
              (declare (not safe))
              (##string->symbol __tmp92160)))))
    (define make-symbol__1
      (lambda _%args87905%_
        (let ((__tmp92161
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87905%_))))
          (declare (not safe))
          (##string->symbol __tmp92161))))
    (define make-symbol
      (lambda _g92163_
        (let ((_g92162_ (let () (declare (not safe)) (##length _g92163_))))
          (cond ((let () (declare (not safe)) (##fx= _g92162_ 1))
                 (apply make-symbol__0 _g92163_))
                (#t
                 (apply (lambda _%args87905%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87905%_)))
                        _g92163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g92163_))))))
    (define make-keyword__0
      (lambda (_%x87899%_)
        (if (interned-keyword? _%x87899%_)
            _%x87899%_
            (let ((__tmp92164 (as-string__0 _%x87899%_)))
              (declare (not safe))
              (##string->keyword __tmp92164)))))
    (define make-keyword__1
      (lambda _%args87901%_
        (let ((__tmp92165
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87901%_))))
          (declare (not safe))
          (##string->keyword __tmp92165))))
    (define make-keyword
      (lambda _g92167_
        (let ((_g92166_ (let () (declare (not safe)) (##length _g92167_))))
          (cond ((let () (declare (not safe)) (##fx= _g92166_ 1))
                 (apply make-keyword__0 _g92167_))
                (#t
                 (apply (lambda _%args87901%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87901%_)))
                        _g92167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g92167_))))))
    (define interned-keyword?
      (lambda (_%x87896%_)
        (if (keyword? _%x87896%_) (not (uninterned-keyword? _%x87896%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87882%_)
        (if (symbol? _%sym87882%_)
            (let ((_%sym87886%_ _%sym87882%_))
              (__symbol->keyword _%sym87886%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87882%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87870%_)
        (let ((_%sym87873%_ _%sym87870%_))
          (if (uninterned-symbol? _%sym87873%_)
              (let ((__tmp92168
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87873%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp92168))
              (let ((__tmp92169
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87873%_))))
                (declare (not safe))
                (##string->keyword __tmp92169))))))
    (define keyword->symbol
      (lambda (_%sym87856%_)
        (if (keyword? _%sym87856%_)
            (let ((_%sym87860%_ _%sym87856%_))
              (__keyword->symbol _%sym87860%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87856%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87844%_)
        (let ((_%sym87847%_ _%sym87844%_))
          (if (uninterned-keyword? _%sym87847%_)
              (let ((__tmp92170
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87847%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp92170))
              (let ((__tmp92171
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87847%_))))
                (declare (not safe))
                (##string->symbol __tmp92171))))))
    (define bytes->string__%
      (lambda (_%bstr87809%_ _%enc87810%_)
        (if (u8vector? _%bstr87809%_)
            (let ((_%bstr87814%_ _%bstr87809%_))
              (if (symbol? _%enc87810%_)
                  (let ((_%enc87824%_ _%enc87810%_))
                    (__bytes->string__% _%bstr87814%_ _%enc87824%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87810%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87809%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87837%_)
        (let ((_%enc87839%_ 'UTF-8))
          (bytes->string__% _%bstr87837%_ _%enc87839%_))))
    (define bytes->string
      (lambda _g92173_
        (let ((_g92172_ (let () (declare (not safe)) (##length _g92173_))))
          (cond ((let () (declare (not safe)) (##fx= _g92172_ 1))
                 (apply bytes->string__0 _g92173_))
                ((let () (declare (not safe)) (##fx= _g92172_ 2))
                 (apply bytes->string__% _g92173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g92173_))))))
    (define __bytes->string__%
      (lambda (_%bstr87768%_ _%enc87769%_)
        (let* ((_%bstr87772%_ _%bstr87768%_) (_%enc87780%_ _%enc87769%_))
          (if (eq? _%enc87780%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr87772%_))
              (let* ((_%in87789%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc87780%_
                                   (cons 'init: (cons _%bstr87772%_ '()))))))
                     (_%len87791%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr87772%_)))
                     (_%out87793%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len87791%_)))
                     (_%n87795%_
                      (read-substring
                       _%out87793%_
                       '0
                       _%len87791%_
                       _%in87789%_)))
                (string-shrink! _%out87793%_ _%n87795%_)
                _%out87793%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87801%_)
        (let ((_%enc87803%_ 'UTF-8))
          (__bytes->string__% _%bstr87801%_ _%enc87803%_))))
    (define __bytes->string
      (lambda _g92175_
        (let ((_g92174_ (let () (declare (not safe)) (##length _g92175_))))
          (cond ((let () (declare (not safe)) (##fx= _g92174_ 1))
                 (apply __bytes->string__0 _g92175_))
                ((let () (declare (not safe)) (##fx= _g92174_ 2))
                 (apply __bytes->string__% _g92175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g92175_))))))
    (define string->bytes__%
      (lambda (_%str87732%_ _%enc87733%_)
        (if (string? _%str87732%_)
            (let ((_%str87737%_ _%str87732%_))
              (if (symbol? _%enc87733%_)
                  (let ((_%enc87747%_ _%enc87733%_))
                    (__string->bytes__% _%str87737%_ _%enc87747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str87732%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str87760%_)
        (let ((_%enc87762%_ 'UTF-8))
          (string->bytes__% _%str87760%_ _%enc87762%_))))
    (define string->bytes
      (lambda _g92177_
        (let ((_g92176_ (let () (declare (not safe)) (##length _g92177_))))
          (cond ((let () (declare (not safe)) (##fx= _g92176_ 1))
                 (apply string->bytes__0 _g92177_))
                ((let () (declare (not safe)) (##fx= _g92176_ 2))
                 (apply string->bytes__% _g92177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g92177_))))))
    (define __string->bytes__%
      (lambda (_%str87700%_ _%enc87701%_)
        (let* ((_%str87704%_ _%str87700%_) (_%enc87712%_ _%enc87701%_))
          (if (eq? _%enc87712%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str87704%_))
              (__substring->bytes__%
               _%str87704%_
               '0
               (let () (declare (not safe)) (##string-length _%str87704%_))
               _%enc87712%_)))))
    (define __string->bytes__0
      (lambda (_%str87724%_)
        (let ((_%enc87726%_ 'UTF-8))
          (__string->bytes__% _%str87724%_ _%enc87726%_))))
    (define __string->bytes
      (lambda _g92179_
        (let ((_g92178_ (let () (declare (not safe)) (##length _g92179_))))
          (cond ((let () (declare (not safe)) (##fx= _g92178_ 1))
                 (apply __string->bytes__0 _g92179_))
                ((let () (declare (not safe)) (##fx= _g92178_ 2))
                 (apply __string->bytes__% _g92179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g92179_))))))
    (define substring->bytes__%
      (lambda (_%str87648%_ _%start87649%_ _%end87650%_ _%enc87651%_)
        (if (string? _%str87648%_)
            (let ((_%str87655%_ _%str87648%_))
              (if (nonnegative-fixnum? _%start87649%_)
                  (let ((_%start87665%_ _%start87649%_))
                    (if (nonnegative-fixnum? _%end87650%_)
                        (let ((_%end87675%_ _%end87650%_))
                          (__substring->bytes__%
                           _%str87655%_
                           _%start87665%_
                           _%end87675%_
                           _%enc87651%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end87650%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start87649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str87648%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str87688%_ _%start87689%_ _%end87690%_)
        (let ((_%enc87692%_ 'UTF-8))
          (substring->bytes__%
           _%str87688%_
           _%start87689%_
           _%end87690%_
           _%enc87692%_))))
    (define substring->bytes
      (lambda _g92181_
        (let ((_g92180_ (let () (declare (not safe)) (##length _g92181_))))
          (cond ((let () (declare (not safe)) (##fx= _g92180_ 3))
                 (apply substring->bytes__0 _g92181_))
                ((let () (declare (not safe)) (##fx= _g92180_ 4))
                 (apply substring->bytes__% _g92181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g92181_))))))
    (define __substring->bytes__%
      (lambda (_%str87600%_ _%start87601%_ _%end87602%_ _%enc87603%_)
        (let* ((_%str87606%_ _%str87600%_)
               (_%start87614%_ _%start87601%_)
               (_%end87622%_ _%end87602%_))
          (if (eq? _%enc87603%_ 'UTF-8)
              (string->utf8 _%str87606%_ _%start87614%_ _%end87622%_)
              (let ((_%out87631%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc87603%_ '())))))
                (write-substring
                 _%str87606%_
                 _%start87614%_
                 _%end87622%_
                 _%out87631%_)
                (get-output-u8vector _%out87631%_))))))
    (define __substring->bytes__0
      (lambda (_%str87636%_ _%start87637%_ _%end87638%_)
        (let ((_%enc87640%_ 'UTF-8))
          (__substring->bytes__%
           _%str87636%_
           _%start87637%_
           _%end87638%_
           _%enc87640%_))))
    (define __substring->bytes
      (lambda _g92183_
        (let ((_g92182_ (let () (declare (not safe)) (##length _g92183_))))
          (cond ((let () (declare (not safe)) (##fx= _g92182_ 3))
                 (apply __substring->bytes__0 _g92183_))
                ((let () (declare (not safe)) (##fx= _g92182_ 4))
                 (apply __substring->bytes__% _g92183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g92183_))))))
    (define string-empty?
      (lambda (_%str87585%_)
        (if (string? _%str87585%_)
            (let ((_%str87589%_ _%str87585%_)) (__string-empty? _%str87589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str87585%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str87573%_)
        (let* ((_%str87576%_ _%str87573%_)
               (__tmp92184
                (let () (declare (not safe)) (##string-length _%str87576%_))))
          (declare (not safe))
          (##fxzero? __tmp92184))))
    (define string-index__%
      (lambda (_%str87525%_ _%char87526%_ _%start87527%_)
        (if (string? _%str87525%_)
            (let ((_%str87531%_ _%str87525%_))
              (if (char? _%char87526%_)
                  (let ((_%char87541%_ _%char87526%_))
                    (if (nonnegative-fixnum? _%start87527%_)
                        (let ((_%start87551%_ _%start87527%_))
                          (__string-index__%
                           _%str87531%_
                           _%char87541%_
                           _%start87551%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start87527%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char87526%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str87525%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str87564%_ _%char87565%_)
        (let ((_%start87567%_ '0))
          (string-index__% _%str87564%_ _%char87565%_ _%start87567%_))))
    (define string-index
      (lambda _g92186_
        (let ((_g92185_ (let () (declare (not safe)) (##length _g92186_))))
          (cond ((let () (declare (not safe)) (##fx= _g92185_ 2))
                 (apply string-index__0 _g92186_))
                ((let () (declare (not safe)) (##fx= _g92185_ 3))
                 (apply string-index__% _g92186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g92186_))))))
    (define __string-index__%
      (lambda (_%str87464%_ _%char87465%_ _%start87466%_)
        (let* ((_%str87469%_ _%str87464%_)
               (_%char87477%_ _%char87465%_)
               (_%start87485%_ _%start87466%_)
               (_%len87494%_
                (let () (declare (not safe)) (##string-length _%str87469%_))))
          (let _%lp87496%_ ((_%k87498%_ _%start87485%_))
            (let ((_%k87500%_ _%k87498%_))
              (if (let () (declare (not safe)) (##fx< _%k87500%_ _%len87494%_))
                  (if (eq? _%char87477%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87469%_ _%k87500%_)))
                      _%k87500%_
                      (_%lp87496%_
                       (let () (declare (not safe)) (##fx+ _%k87500%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str87515%_ _%char87516%_)
        (let ((_%start87518%_ '0))
          (__string-index__% _%str87515%_ _%char87516%_ _%start87518%_))))
    (define __string-index
      (lambda _g92188_
        (let ((_g92187_ (let () (declare (not safe)) (##length _g92188_))))
          (cond ((let () (declare (not safe)) (##fx= _g92187_ 2))
                 (apply __string-index__0 _g92188_))
                ((let () (declare (not safe)) (##fx= _g92187_ 3))
                 (apply __string-index__% _g92188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g92188_))))))
    (define string-rindex__%
      (lambda (_%str87425%_ _%char87426%_ _%start87427%_)
        (if (string? _%str87425%_)
            (let ((_%str87431%_ _%str87425%_))
              (if (char? _%char87426%_)
                  (let ((_%char87441%_ _%char87426%_))
                    (__string-rindex__%
                     _%str87431%_
                     _%char87441%_
                     _%start87427%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char87426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str87425%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str87454%_ _%char87455%_)
        (let ((_%start87457%_ '#f))
          (string-rindex__% _%str87454%_ _%char87455%_ _%start87457%_))))
    (define string-rindex
      (lambda _g92190_
        (let ((_g92189_ (let () (declare (not safe)) (##length _g92190_))))
          (cond ((let () (declare (not safe)) (##fx= _g92189_ 2))
                 (apply string-rindex__0 _g92190_))
                ((let () (declare (not safe)) (##fx= _g92189_ 3))
                 (apply string-rindex__% _g92190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g92190_))))))
    (define __string-rindex__%
      (lambda (_%str87367%_ _%char87368%_ _%start87369%_)
        (let* ((_%str87372%_ _%str87367%_)
               (_%char87380%_ _%char87368%_)
               (_%len87389%_
                (let () (declare (not safe)) (##string-length _%str87372%_)))
               (_%start87391%_
                (if (fixnum? _%start87369%_)
                    _%start87369%_
                    (let () (declare (not safe)) (##fx- _%len87389%_ '1)))))
          (let _%lp87394%_ ((_%k87396%_ _%start87391%_))
            (let ((_%k87398%_ _%k87396%_))
              (if (let () (declare (not safe)) (##fx>= _%k87398%_ '0))
                  (if (eq? _%char87380%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87372%_ _%k87398%_)))
                      _%k87398%_
                      (_%lp87394%_
                       (let () (declare (not safe)) (##fx- _%k87398%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str87415%_ _%char87416%_)
        (let ((_%start87418%_ '#f))
          (__string-rindex__% _%str87415%_ _%char87416%_ _%start87418%_))))
    (define __string-rindex
      (lambda _g92192_
        (let ((_g92191_ (let () (declare (not safe)) (##length _g92192_))))
          (cond ((let () (declare (not safe)) (##fx= _g92191_ 2))
                 (apply __string-rindex__0 _g92192_))
                ((let () (declare (not safe)) (##fx= _g92191_ 3))
                 (apply __string-rindex__% _g92192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g92192_))))))
    (define string-split
      (lambda (_%str87341%_ _%char87342%_)
        (if (string? _%str87341%_)
            (let ((_%str87346%_ _%str87341%_))
              (if (char? _%char87342%_)
                  (let ((_%char87356%_ _%char87342%_))
                    (__string-split _%str87346%_ _%char87356%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char87342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str87341%_)
              '#!void))))
    (define __string-split
      (lambda (_%str87282%_ _%char87283%_)
        (let* ((_%str87286%_ _%str87282%_)
               (_%char87294%_ _%char87283%_)
               (_%len87303%_
                (let () (declare (not safe)) (##string-length _%str87286%_))))
          (let _%lp87305%_ ((_%start87307%_ '0) (_%r87308%_ '()))
            (let* ((_%start87311%_ _%start87307%_)
                   (_%$e87324%_
                    (__string-index__%
                     _%str87286%_
                     _%char87294%_
                     _%start87311%_)))
              (if _%$e87324%_
                  ((lambda (_%end87327%_)
                     (let ((_%end87329%_ _%end87327%_))
                       (_%lp87305%_
                        (let () (declare (not safe)) (##fx+ _%end87329%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str87286%_
                                 _%start87311%_
                                 _%end87329%_))
                              _%r87308%_))))
                   _%$e87324%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start87311%_ _%len87303%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str87286%_
                                _%start87311%_
                                _%len87303%_)))
                       _%r87308%_)
                      (reverse! _%r87308%_))))))))
    (define string-join
      (lambda (_%strs87132%_ _%join87133%_)
        (letrec ((_%join-length87136%_
                  (lambda (_%strs87220%_ _%jlen87221%_)
                    (let _%lp87223%_ ((_%rest87225%_ _%strs87220%_)
                                      (_%len87226%_ '0))
                      (let* ((_%len87228%_ _%len87226%_)
                             (_%rest8723687244%_ _%rest87225%_)
                             (_%else8723887252%_ (lambda () '0))
                             (_%K8724087270%_
                              (lambda (_%rest87255%_ _%hd87256%_)
                                (if (string? _%hd87256%_)
                                    (let ((_%hd87258%_ _%hd87256%_))
                                      (if (pair? _%rest87255%_)
                                          (_%lp87223%_
                                           _%rest87255%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd87258%_))
                                                _%jlen87221%_
                                                _%len87228%_))
                                          (let ((__tmp92193
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd87258%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp92193 _%len87228%_))))
                                    (error '"expected string" _%hd87256%_)))))
                        (if (pair? _%rest8723687244%_)
                            (let ((_%hd8724187273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8723687244%_)))
                                  (_%tl8724287275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8723687244%_))))
                              (let* ((_%hd87278%_ _%hd8724187273%_)
                                     (_%rest87280%_ _%tl8724287275%_))
                                (_%K8724087270%_ _%rest87280%_ _%hd87278%_)))
                            (_%else8723887252%_)))))))
          (let* ((_%join87141%_
                  (if (char? _%join87133%_)
                      (let () (declare (not safe)) (##string _%join87133%_))
                      (if (string? _%join87133%_)
                          _%join87133%_
                          (error '"expected string or char" _%join87133%_))))
                 (_%jlen87143%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join87141%_)))
                 (_%olen87145%_
                  (_%join-length87136%_ _%strs87132%_ _%jlen87143%_))
                 (_%ostr87147%_
                  (let () (declare (not safe)) (##make-string _%olen87145%_))))
            (let _%lp87150%_ ((_%rest87152%_ _%strs87132%_) (_%k87153%_ '0))
              (let* ((_%k87156%_ _%k87153%_)
                     (_%rest8717287180%_ _%rest87152%_)
                     (_%else8717487188%_ (lambda () '""))
                     (_%K8717687208%_
                      (lambda (_%rest87191%_ _%hd87192%_)
                        (let* ((_%hd87194%_ _%hd87192%_)
                               (_%hdlen87206%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd87194%_))))
                          (if (pair? _%rest87191%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87194%_
                                   '0
                                   _%hdlen87206%_
                                   _%ostr87147%_
                                   _%k87156%_))
                                (let ((__tmp92194
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k87156%_ _%hdlen87206%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join87141%_
                                   '0
                                   _%jlen87143%_
                                   _%ostr87147%_
                                   __tmp92194))
                                (_%lp87150%_
                                 _%rest87191%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k87156%_
                                          _%hdlen87206%_
                                          _%jlen87143%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87194%_
                                   '0
                                   _%hdlen87206%_
                                   _%ostr87147%_
                                   _%k87156%_))
                                _%ostr87147%_))))))
                (if (pair? _%rest8717287180%_)
                    (let ((_%hd8717787211%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8717287180%_)))
                          (_%tl8717887213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8717287180%_))))
                      (let* ((_%hd87216%_ _%hd8717787211%_)
                             (_%rest87218%_ _%tl8717887213%_))
                        (_%K8717687208%_ _%rest87218%_ _%hd87216%_)))
                    (_%else8717487188%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes87058%_ _%port87059%_ _%start87060%_ _%end87061%_)
        (if (u8vector? _%bytes87058%_)
            (let ((_%bytes87065%_ _%bytes87058%_))
              (if (input-port? _%port87059%_)
                  (let ((_%port87075%_ _%port87059%_))
                    (if ((lambda (_%o87084%_)
                           (and (fixnum? _%o87084%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o87084%_ '0))
                                (let ((__tmp92195
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87065%_))))
                                  (declare (not safe))
                                  (##fx< _%o87084%_ __tmp92195))))
                         _%start87060%_)
                        (let ((_%start87088%_ _%start87060%_))
                          (if ((lambda (_%o87097%_)
                                 (and (fixnum? _%o87097%_)
                                      (let ((__tmp92196
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes87065%_))))
                                        (declare (not safe))
                                        (##fx<= _%start87088%_
                                                _%o87097%_
                                                __tmp92196))))
                               _%end87061%_)
                              (let ((_%end87101%_ _%end87061%_))
                                (__read-u8vector__%
                                 _%bytes87065%_
                                 _%port87075%_
                                 _%start87088%_
                                 _%end87101%_))
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
                                 _%end87061%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start87060%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port87059%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes87058%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes87114%_ _%port87115%_)
        (let* ((_%start87117%_ '0)
               (_%end87119%_ (u8vector-length _%bytes87114%_)))
          (read-u8vector__%
           _%bytes87114%_
           _%port87115%_
           _%start87117%_
           _%end87119%_))))
    (define read-u8vector__1
      (lambda (_%bytes87121%_ _%port87122%_ _%start87123%_)
        (let ((_%end87125%_ (u8vector-length _%bytes87121%_)))
          (read-u8vector__%
           _%bytes87121%_
           _%port87122%_
           _%start87123%_
           _%end87125%_))))
    (define read-u8vector
      (lambda _g92198_
        (let ((_g92197_ (let () (declare (not safe)) (##length _g92198_))))
          (cond ((let () (declare (not safe)) (##fx= _g92197_ 2))
                 (apply read-u8vector__0 _g92198_))
                ((let () (declare (not safe)) (##fx= _g92197_ 3))
                 (apply read-u8vector__1 _g92198_))
                ((let () (declare (not safe)) (##fx= _g92197_ 4))
                 (apply read-u8vector__% _g92198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g92198_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86997%_ _%port86998%_ _%start86999%_ _%end87000%_)
        (let* ((_%bytes87003%_ _%bytes86997%_)
               (_%port87011%_ _%port86998%_)
               (_%start87019%_ _%start86999%_)
               (_%end87027%_ _%end87000%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes87003%_
           _%start87019%_
           _%end87027%_
           _%port87011%_))))
    (define __read-u8vector__0
      (lambda (_%bytes87039%_ _%port87040%_)
        (let* ((_%start87042%_ '0)
               (_%end87044%_ (u8vector-length _%bytes87039%_)))
          (__read-u8vector__%
           _%bytes87039%_
           _%port87040%_
           _%start87042%_
           _%end87044%_))))
    (define __read-u8vector__1
      (lambda (_%bytes87046%_ _%port87047%_ _%start87048%_)
        (let ((_%end87050%_ (u8vector-length _%bytes87046%_)))
          (__read-u8vector__%
           _%bytes87046%_
           _%port87047%_
           _%start87048%_
           _%end87050%_))))
    (define __read-u8vector
      (lambda _g92200_
        (let ((_g92199_ (let () (declare (not safe)) (##length _g92200_))))
          (cond ((let () (declare (not safe)) (##fx= _g92199_ 2))
                 (apply __read-u8vector__0 _g92200_))
                ((let () (declare (not safe)) (##fx= _g92199_ 3))
                 (apply __read-u8vector__1 _g92200_))
                ((let () (declare (not safe)) (##fx= _g92199_ 4))
                 (apply __read-u8vector__% _g92200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g92200_))))))
    (define write-u8vector__%
      (lambda (_%bytes86927%_ _%port86928%_ _%start86929%_ _%end86930%_)
        (if (u8vector? _%bytes86927%_)
            (let ((_%bytes86934%_ _%bytes86927%_))
              (if (output-port? _%port86928%_)
                  (let* ((_%port86944%_ _%port86928%_)
                         (_%start86953%_ _%start86929%_))
                    (if ((lambda (_%o86961%_)
                           (and (fixnum? _%o86961%_)
                                (let ((__tmp92201
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86934%_))))
                                  (declare (not safe))
                                  (##fx<= _%start86953%_
                                          _%o86961%_
                                          __tmp92201))))
                         _%end86930%_)
                        (let ((_%end86965%_ _%end86930%_))
                          (__write-u8vector__%
                           _%bytes86934%_
                           _%port86944%_
                           _%start86953%_
                           _%end86965%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end86930%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86928%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86927%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86978%_ _%port86979%_)
        (let* ((_%start86981%_ '0)
               (_%end86983%_ (u8vector-length _%bytes86978%_)))
          (write-u8vector__%
           _%bytes86978%_
           _%port86979%_
           _%start86981%_
           _%end86983%_))))
    (define write-u8vector__1
      (lambda (_%bytes86985%_ _%port86986%_ _%start86987%_)
        (let ((_%end86989%_ (u8vector-length _%bytes86985%_)))
          (write-u8vector__%
           _%bytes86985%_
           _%port86986%_
           _%start86987%_
           _%end86989%_))))
    (define write-u8vector
      (lambda _g92203_
        (let ((_g92202_ (let () (declare (not safe)) (##length _g92203_))))
          (cond ((let () (declare (not safe)) (##fx= _g92202_ 2))
                 (apply write-u8vector__0 _g92203_))
                ((let () (declare (not safe)) (##fx= _g92202_ 3))
                 (apply write-u8vector__1 _g92203_))
                ((let () (declare (not safe)) (##fx= _g92202_ 4))
                 (apply write-u8vector__% _g92203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g92203_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86866%_ _%port86867%_ _%start86868%_ _%end86869%_)
        (let* ((_%bytes86872%_ _%bytes86866%_)
               (_%port86880%_ _%port86867%_)
               (_%start86888%_ _%start86868%_)
               (_%end86896%_ _%end86869%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86872%_
           _%start86888%_
           _%end86896%_
           _%port86880%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86908%_ _%port86909%_)
        (let* ((_%start86911%_ '0)
               (_%end86913%_ (u8vector-length _%bytes86908%_)))
          (__write-u8vector__%
           _%bytes86908%_
           _%port86909%_
           _%start86911%_
           _%end86913%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86915%_ _%port86916%_ _%start86917%_)
        (let ((_%end86919%_ (u8vector-length _%bytes86915%_)))
          (__write-u8vector__%
           _%bytes86915%_
           _%port86916%_
           _%start86917%_
           _%end86919%_))))
    (define __write-u8vector
      (lambda _g92205_
        (let ((_g92204_ (let () (declare (not safe)) (##length _g92205_))))
          (cond ((let () (declare (not safe)) (##fx= _g92204_ 2))
                 (apply __write-u8vector__0 _g92205_))
                ((let () (declare (not safe)) (##fx= _g92204_ 3))
                 (apply __write-u8vector__1 _g92205_))
                ((let () (declare (not safe)) (##fx= _g92204_ 4))
                 (apply __write-u8vector__% _g92205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g92205_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86834%_
               _%dbg-exprs86835%_
               _%dbg-thunks86836%_
               _%expr86837%_
               _%thunk86838%_)
        (letrec ((_%o86840%_ (current-output-port))
                 (_%e86841%_ (current-error-port))
                 (_%p86842%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86843%_
                  (lambda ()
                    (force-output _%o86840%_)
                    (force-output _%e86841%_)))
                 (_%d86844%_
                  (lambda (_%x86851%_) (display _%x86851%_ _%e86841%_)))
                 (_%w86845%_
                  (lambda (_%x86853%_) (_%p86842%_ _%x86853%_ _%e86841%_)))
                 (_%n86846%_ (lambda () (newline _%e86841%_)))
                 (_%v86847%_
                  (lambda (_%l86856%_)
                    (for-each
                     (lambda (_%x86858%_)
                       (_%d86844%_ '" ")
                       (_%w86845%_ _%x86858%_))
                     _%l86856%_)
                    (_%n86846%_)))
                 (_%x86848%_
                  (lambda (_%expr86860%_ _%thunk86861%_)
                    (_%f86843%_)
                    (_%d86844%_ '"  ")
                    (_%w86845%_ _%expr86860%_)
                    (_%d86844%_ '" =>")
                    (call-with-values
                     _%thunk86861%_
                     (lambda _%x86863%_
                       (_%v86847%_ _%x86863%_)
                       (_%f86843%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86863%_)))))))
          (if _%tag86834%_
              (begin
                (if (eq? _%tag86834%_ '#!void)
                    '#!void
                    (begin
                      (_%f86843%_)
                      (_%d86844%_ _%tag86834%_)
                      (_%n86846%_)))
                (for-each _%x86848%_ _%dbg-exprs86835%_ _%dbg-thunks86836%_)
                (if _%thunk86838%_
                    (_%x86848%_ _%expr86837%_ _%thunk86838%_)
                    '#!void))
              (if _%thunk86838%_ (_%thunk86838%_) '#!void)))))))
