(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1756156297)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args96962%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args96962%_))
          (newline))))
    (define display*
      (lambda _%args96959%_
        (let () (declare (not safe)) (##for-each display _%args96959%_))))
    (define file-newer?
      (lambda (_%file196934%_ _%file296935%_)
        (if (string? _%file196934%_)
            (let ((_%file196939%_ _%file196934%_))
              (if (string? _%file296935%_)
                  (let ((_%file296949%_ _%file296935%_))
                    (__file-newer? _%file196939%_ _%file296949%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file296935%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file196934%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file196882%_ _%file296883%_)
        (let* ((_%file196886%_ _%file196882%_) (_%file296894%_ _%file296883%_))
          (letrec ((_%modification-time96903%_
                    (lambda (_%file96922%_)
                      (let ((_%file96925%_ _%file96922%_))
                        (_%__modification-time96904%_ _%file96925%_))))
                   (_%__modification-time96904%_
                    (lambda (_%file96906%_)
                      (let* ((_%file96909%_ _%file96906%_)
                             (__tmp98692
                              (let ((__tmp98693
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file96909%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp98693))))
                        (declare (not safe))
                        (##time->seconds __tmp98692)))))
            (let ((__tmp98695 (_%__modification-time96904%_ _%file196886%_))
                  (__tmp98694 (_%__modification-time96904%_ _%file296894%_)))
              (declare (not safe))
              (##fl> __tmp98695 __tmp98694))))))
    (define create-directory*__%
      (lambda (_%dir96847%_ _%perms96848%_)
        (if (string? _%dir96847%_)
            (let ((_%dir96852%_ _%dir96847%_))
              (if (fixnum? _%perms96848%_)
                  (let ((_%perms96862%_ _%perms96848%_))
                    (__create-directory*__% _%dir96852%_ _%perms96862%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms96848%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir96847%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir96875%_)
        (let ((_%perms96877%_ '493))
          (create-directory*__% _%dir96875%_ _%perms96877%_))))
    (define create-directory*
      (lambda _g98696_
        (let ((_g98697_ (let () (declare (not safe)) (##length _g98696_))))
          (cond ((let () (declare (not safe)) (##fx= _g98697_ 1))
                 (apply create-directory*__0 _g98696_))
                ((let () (declare (not safe)) (##fx= _g98697_ 2))
                 (apply create-directory*__% _g98696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g98696_))))))
    (define __create-directory*__%
      (lambda (_%dir96771%_ _%perms96772%_)
        (let* ((_%dir96775%_ _%dir96771%_) (_%perms96783%_ _%perms96772%_))
          (letrec ((_%create196792%_
                    (lambda (_%path96824%_)
                      (let ((_%path96827%_ _%path96824%_))
                        (_%__create196793%_ _%path96827%_))))
                   (_%__create196793%_
                    (lambda (_%path96805%_)
                      (let ((_%path96808%_ _%path96805%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path96808%_))
                            (if (eq? (file-type _%path96808%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path96808%_))
                            (if _%perms96783%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path96808%_
                                             (cons 'permissions:
                                                   (cons _%perms96783%_
                                                         '())))))
                                (create-directory _%path96808%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir96775%_))
                '#!void
                (let _%lp96795%_ ((_%start96797%_ '0))
                  (let ((_%$e96799%_
                         (__string-index__% _%dir96775%_ '#\/ _%start96797%_)))
                    (if _%$e96799%_
                        ((lambda (_%x96802%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x96802%_ '0))
                               (_%__create196793%_
                                (substring _%dir96775%_ '0 _%x96802%_))
                               '#!void)
                           (_%lp96795%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x96802%_ '1))))
                         _%$e96799%_)
                        (_%__create196793%_ _%dir96775%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir96839%_)
        (let ((_%perms96841%_ '493))
          (__create-directory*__% _%dir96839%_ _%perms96841%_))))
    (define __create-directory*
      (lambda _g98698_
        (let ((_g98699_ (let () (declare (not safe)) (##length _g98698_))))
          (cond ((let () (declare (not safe)) (##fx= _g98699_ 1))
                 (apply __create-directory*__0 _g98698_))
                ((let () (declare (not safe)) (##fx= _g98699_ 2))
                 (apply __create-directory*__% _g98698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g98698_))))))
    (define move-file__%
      (lambda (_%src96722%_ _%dest96723%_ _%replace?96724%_)
        (if (string? _%src96722%_)
            (let ((_%src96728%_ _%src96722%_))
              (if (string? _%dest96723%_)
                  (let ((_%dest96738%_ _%dest96723%_))
                    (if (boolean? _%replace?96724%_)
                        (let ((_%replace?96748%_ _%replace?96724%_))
                          (__move-file__%
                           _%src96728%_
                           _%dest96738%_
                           _%replace?96748%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?96724%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest96723%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src96722%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src96761%_ _%dest96762%_)
        (let ((_%replace?96764%_ '#t))
          (move-file__% _%src96761%_ _%dest96762%_ _%replace?96764%_))))
    (define move-file
      (lambda _g98700_
        (let ((_g98701_ (let () (declare (not safe)) (##length _g98700_))))
          (cond ((let () (declare (not safe)) (##fx= _g98701_ 2))
                 (apply move-file__0 _g98700_))
                ((let () (declare (not safe)) (##fx= _g98701_ 3))
                 (apply move-file__% _g98700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g98700_))))))
    (define __move-file__%
      (lambda (_%src96665%_ _%dest96666%_ _%replace?96667%_)
        (let* ((_%src96670%_ _%src96665%_)
               (_%dest96678%_ _%dest96666%_)
               (_%replace?96686%_ _%replace?96667%_))
          (letrec ((_%force-move-it96695%_
                    (lambda ()
                      (let ((_%tmp96701%_
                             (if _%replace?96686%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest96678%_))
                                     (let ((__tmp98702
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest96678%_
                                        '"."
                                        __tmp98702))
                                     '#f)
                                 '#f)))
                        (if _%tmp96701%_
                            (rename-file _%dest96678%_ _%tmp96701%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e96703%_)
                           (if _%tmp96701%_
                               (rename-file _%tmp96701%_ _%dest96678%_ '#t)
                               '#!void)
                           (raise _%e96703%_))
                         (lambda ()
                           (let ((_%fi96706%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src96670%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi96706%_))
                                      'symbolic-link)
                                 (let ((__tmp98703
                                        (path-normalize _%src96670%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp98703
                                    _%dest96678%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src96670%_ _%dest96678%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src96670%_))
                           (if _%tmp96701%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp96701%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e96697%_)
               (if (let () (declare (not safe)) (##file-exists? _%src96670%_))
                   (_%force-move-it96695%_)
                   (raise _%e96697%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src96670%_
                  _%dest96678%_
                  _%replace?96686%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src96712%_ _%dest96713%_)
        (let ((_%replace?96715%_ '#t))
          (__move-file__% _%src96712%_ _%dest96713%_ _%replace?96715%_))))
    (define __move-file
      (lambda _g98704_
        (let ((_g98705_ (let () (declare (not safe)) (##length _g98704_))))
          (cond ((let () (declare (not safe)) (##fx= _g98705_ 2))
                 (apply __move-file__0 _g98704_))
                ((let () (declare (not safe)) (##fx= _g98705_ 3))
                 (apply __move-file__% _g98704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g98704_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore96661%_ '#t))
    (define true? (lambda (_%obj96658%_) (eq? _%obj96658%_ '#t)))
    (define false (lambda _%ignore96655%_ '#f))
    (define void (lambda _%ignore96652%_ '#!void))
    (define void? (lambda (_%obj96649%_) (eq? _%obj96649%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj96646%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj96646%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj96643%_) (eq? _%obj96643%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj96640%_) (eq? _%obj96640%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj96637%_) (eq? _%obj96637%_ '#!optional)))
    (define immediate?
      (lambda (_%obj96632%_)
        (let* ((_%t96635%_ (let () (declare (not safe)) (##type _%obj96632%_)))
               (__tmp98706
                (let () (declare (not safe)) (##fxand _%t96635%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp98706))))
    (define nonnegative-fixnum?
      (lambda (_%obj96629%_)
        (if (fixnum? _%obj96629%_)
            (let () (declare (not safe)) (##fx>= _%obj96629%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj96623%_)
        (let ((_%$e96626%_ (pair? _%obj96623%_)))
          (if _%$e96626%_ _%$e96626%_ (null? _%obj96623%_)))))
    (define values-count
      (lambda (_%obj96620%_)
        (if (let () (declare (not safe)) (##values? _%obj96620%_))
            (let () (declare (not safe)) (##values-length _%obj96620%_))
            '1)))
    (define values-ref
      (lambda (_%obj96605%_ _%k96606%_)
        (if (fixnum? _%k96606%_)
            (let ((_%k96610%_ _%k96606%_))
              (__values-ref _%obj96605%_ _%k96610%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k96606%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj96592%_ _%k96593%_)
        (let ((_%k96596%_ _%k96593%_))
          (if (let () (declare (not safe)) (##values? _%obj96592%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj96592%_ _%k96596%_))
              _%obj96592%_))))
    (define values->list
      (lambda (_%obj96589%_)
        (if (let () (declare (not safe)) (##values? _%obj96589%_))
            (let () (declare (not safe)) (##values->list _%obj96589%_))
            (list _%obj96589%_))))
    (define foldl1
      (lambda (_%f96573%_ _%iv96574%_ _%lst96575%_)
        (if (procedure? _%f96573%_)
            (let ((_%f96579%_ _%f96573%_))
              (__foldl1 _%f96579%_ _%iv96574%_ _%lst96575%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f96573%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f96521%_ _%iv96522%_ _%lst96523%_)
        (let ((_%f96526%_ _%f96521%_))
          (let _%lp96535%_ ((_%rest96537%_ _%lst96523%_)
                            (_%r96538%_ _%iv96522%_))
            (let* ((_%rest9653996547%_ _%rest96537%_)
                   (_%else9654196555%_ (lambda () _%r96538%_))
                   (_%K9654396561%_
                    (lambda (_%rest96558%_ _%x96559%_)
                      (_%lp96535%_
                       _%rest96558%_
                       (let ()
                         (declare (not safe))
                         (_%f96526%_ _%x96559%_ _%r96538%_))))))
              (if (pair? _%rest9653996547%_)
                  (let ((_%hd9654496564%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9653996547%_)))
                        (_%tl9654596566%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9653996547%_))))
                    (let* ((_%x96569%_ _%hd9654496564%_)
                           (_%rest96571%_ _%tl9654596566%_))
                      (_%K9654396561%_ _%rest96571%_ _%x96569%_)))
                  (_%else9654196555%_)))))))
    (define foldl2
      (lambda (_%f96504%_ _%iv96505%_ _%lst196506%_ _%lst296507%_)
        (if (procedure? _%f96504%_)
            (let ((_%f96511%_ _%f96504%_))
              (__foldl2 _%f96511%_ _%iv96505%_ _%lst196506%_ _%lst296507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f96504%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f96417%_ _%iv96418%_ _%lst196419%_ _%lst296420%_)
        (let ((_%f96423%_ _%f96417%_))
          (let _%lp96432%_ ((_%rest196434%_ _%lst196419%_)
                            (_%rest296435%_ _%lst296420%_)
                            (_%r96436%_ _%iv96418%_))
            (let* ((_%rest19643796445%_ _%rest196434%_)
                   (_%else9643996453%_ (lambda () _%r96436%_))
                   (_%K9644196492%_
                    (lambda (_%rest196456%_ _%x196457%_)
                      (let* ((_%rest29645896466%_ _%rest296435%_)
                             (_%else9646096474%_ (lambda () _%r96436%_))
                             (_%K9646296480%_
                              (lambda (_%rest296477%_ _%x296478%_)
                                (_%lp96432%_
                                 _%rest196456%_
                                 _%rest296477%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f96423%_
                                    _%x196457%_
                                    _%x296478%_
                                    _%r96436%_))))))
                        (if (pair? _%rest29645896466%_)
                            (let ((_%hd9646396483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29645896466%_)))
                                  (_%tl9646496485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29645896466%_))))
                              (let* ((_%x296488%_ _%hd9646396483%_)
                                     (_%rest296490%_ _%tl9646496485%_))
                                (_%K9646296480%_ _%rest296490%_ _%x296488%_)))
                            (_%else9646096474%_))))))
              (if (pair? _%rest19643796445%_)
                  (let ((_%hd9644296495%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19643796445%_)))
                        (_%tl9644396497%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19643796445%_))))
                    (let* ((_%x196500%_ _%hd9644296495%_)
                           (_%rest196502%_ _%tl9644396497%_))
                      (_%K9644196492%_ _%rest196502%_ _%x196500%_)))
                  (_%else9643996453%_)))))))
    (define foldl
      (lambda _g98707_
        (let ((_g98708_ (let () (declare (not safe)) (##length _g98707_))))
          (cond ((let () (declare (not safe)) (##fx= _g98708_ 3))
                 (apply foldl1 _g98707_))
                ((let () (declare (not safe)) (##fx= _g98708_ 4))
                 (apply foldl2 _g98707_))
                ((let () (declare (not safe)) (##fx>= _g98708_ 4))
                 (apply foldl* _g98707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g98707_))))))
    (define foldl*
      (lambda (_%f96386%_ _%iv96387%_ . _%rest96388%_)
        (if (procedure? _%f96386%_)
            (let ((_%f96392%_ _%f96386%_))
              (declare (not safe))
              (##apply __foldl* _%f96392%_ _%iv96387%_ _%rest96388%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f96386%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f96364%_ _%iv96365%_ . _%rest96366%_)
        (let ((_%f96369%_ _%f96364%_))
          (let _%recur96378%_ ((_%iv96380%_ _%iv96365%_)
                               (_%rest96381%_ _%rest96366%_))
            (if (__andmap1 pair? _%rest96381%_)
                (_%recur96378%_
                 (let ((__tmp98709
                        (__foldr1
                         (lambda (_%xs96383%_ _%r96384%_)
                           (cons (car _%xs96383%_) _%r96384%_))
                         (list _%iv96380%_)
                         _%rest96381%_)))
                   (declare (not safe))
                   (##apply _%f96369%_ __tmp98709))
                 (map cdr _%rest96381%_))
                _%iv96380%_)))))
    (define foldr1
      (lambda (_%f96348%_ _%iv96349%_ _%lst96350%_)
        (if (procedure? _%f96348%_)
            (let ((_%f96354%_ _%f96348%_))
              (__foldr1 _%f96354%_ _%iv96349%_ _%lst96350%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f96348%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f96297%_ _%iv96298%_ _%lst96299%_)
        (let ((_%f96302%_ _%f96297%_))
          (let _%recur96311%_ ((_%rest96313%_ _%lst96299%_))
            (let* ((_%rest9631496322%_ _%rest96313%_)
                   (_%else9631696330%_ (lambda () _%iv96298%_))
                   (_%K9631896336%_
                    (lambda (_%rest96333%_ _%x96334%_)
                      (let ((__tmp98710 (_%recur96311%_ _%rest96333%_)))
                        (declare (not safe))
                        (_%f96302%_ _%x96334%_ __tmp98710)))))
              (if (pair? _%rest9631496322%_)
                  (let ((_%hd9631996339%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9631496322%_)))
                        (_%tl9632096341%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9631496322%_))))
                    (let* ((_%x96344%_ _%hd9631996339%_)
                           (_%rest96346%_ _%tl9632096341%_))
                      (_%K9631896336%_ _%rest96346%_ _%x96344%_)))
                  (_%else9631696330%_)))))))
    (define foldr2
      (lambda (_%f96280%_ _%iv96281%_ _%lst196282%_ _%lst296283%_)
        (if (procedure? _%f96280%_)
            (let ((_%f96287%_ _%f96280%_))
              (__foldr2 _%f96287%_ _%iv96281%_ _%lst196282%_ _%lst296283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f96280%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f96194%_ _%iv96195%_ _%lst196196%_ _%lst296197%_)
        (let ((_%f96200%_ _%f96194%_))
          (let _%recur96209%_ ((_%rest196211%_ _%lst196196%_)
                               (_%rest296212%_ _%lst296197%_))
            (let* ((_%rest19621396221%_ _%rest196211%_)
                   (_%else9621596229%_ (lambda () _%iv96195%_))
                   (_%K9621796268%_
                    (lambda (_%rest196232%_ _%x196233%_)
                      (let* ((_%rest29623496242%_ _%rest296212%_)
                             (_%else9623696250%_ (lambda () _%iv96195%_))
                             (_%K9623896256%_
                              (lambda (_%rest296253%_ _%x296254%_)
                                (let ((__tmp98711
                                       (_%recur96209%_
                                        _%rest196232%_
                                        _%rest296253%_)))
                                  (declare (not safe))
                                  (_%f96200%_
                                   _%x196233%_
                                   _%x296254%_
                                   __tmp98711)))))
                        (if (pair? _%rest29623496242%_)
                            (let ((_%hd9623996259%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29623496242%_)))
                                  (_%tl9624096261%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29623496242%_))))
                              (let* ((_%x296264%_ _%hd9623996259%_)
                                     (_%rest296266%_ _%tl9624096261%_))
                                (_%K9623896256%_ _%rest296266%_ _%x296264%_)))
                            (_%else9623696250%_))))))
              (if (pair? _%rest19621396221%_)
                  (let ((_%hd9621896271%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19621396221%_)))
                        (_%tl9621996273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19621396221%_))))
                    (let* ((_%x196276%_ _%hd9621896271%_)
                           (_%rest196278%_ _%tl9621996273%_))
                      (_%K9621796268%_ _%rest196278%_ _%x196276%_)))
                  (_%else9621596229%_)))))))
    (define foldr
      (lambda _g98712_
        (let ((_g98713_ (let () (declare (not safe)) (##length _g98712_))))
          (cond ((let () (declare (not safe)) (##fx= _g98713_ 3))
                 (apply foldr1 _g98712_))
                ((let () (declare (not safe)) (##fx= _g98713_ 4))
                 (apply foldr2 _g98712_))
                ((let () (declare (not safe)) (##fx>= _g98713_ 4))
                 (apply foldr* _g98712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g98712_))))))
    (define foldr*
      (lambda (_%f96163%_ _%iv96164%_ . _%rest96165%_)
        (if (procedure? _%f96163%_)
            (let ((_%f96169%_ _%f96163%_))
              (declare (not safe))
              (##apply __foldr* _%f96169%_ _%iv96164%_ _%rest96165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f96163%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f96142%_ _%iv96143%_ . _%rest96144%_)
        (let ((_%f96147%_ _%f96142%_))
          (let _%recur96156%_ ((_%rest96158%_ _%rest96144%_))
            (if (__andmap1 pair? _%rest96158%_)
                (let ((__tmp98714
                       (__foldr1
                        (lambda (_%xs96160%_ _%r96161%_)
                          (cons (car _%xs96160%_) _%r96161%_))
                        (list (_%recur96156%_ (map cdr _%rest96158%_)))
                        _%rest96158%_)))
                  (declare (not safe))
                  (##apply _%f96147%_ __tmp98714))
                _%iv96143%_)))))
    (define remove-nulls!
      (lambda (_%l96029%_)
        (let* ((_%l9603096043%_ _%l96029%_)
               (_%E9603496047%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9603096043%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9603996132%_
                 (lambda (_%r96130%_) (remove-nulls! _%r96130%_)))
                (_%K9603696119%_
                 (lambda (_%r96059%_)
                   (let _%loop96061%_ ((_%l96063%_ _%l96029%_)
                                       (_%r96064%_ _%r96059%_))
                     (let* ((_%r9606596078%_ _%r96064%_)
                            (_%E9606996082%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9606596078%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9607496109%_
                              (lambda (_%rr96107%_)
                                (let ((__tmp98716 _%l96063%_)
                                      (__tmp98715 (remove-nulls! _%rr96107%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp98716 __tmp98715))))
                             (_%K9607196096%_
                              (lambda (_%rr96094%_)
                                (_%loop96061%_ _%r96064%_ _%rr96094%_)))
                             (_%K9607096087%_ (lambda () '#!void)))
                         (if (pair? _%r9606596078%_)
                             (let ((_%tl9607696114%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9606596078%_)))
                                   (_%hd9607596112%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9606596078%_))))
                               (if (null? _%hd9607596112%_)
                                   (let ((_%rr96117%_ _%tl9607696114%_))
                                     (_%K9607496109%_ _%rr96117%_))
                                   (let ((_%rr96102%_ _%tl9607696114%_))
                                     (_%K9607196096%_ _%rr96102%_))))
                             '#!void))))
                   _%l96029%_))
                (_%K9603596052%_ (lambda () _%l96029%_)))
            (if (pair? _%l9603096043%_)
                (let ((_%tl9604196137%_
                       (let () (declare (not safe)) (##cdr _%l9603096043%_)))
                      (_%hd9604096135%_
                       (let () (declare (not safe)) (##car _%l9603096043%_))))
                  (if (null? _%hd9604096135%_)
                      (let ((_%r96140%_ _%tl9604196137%_))
                        (remove-nulls! _%r96140%_))
                      (let ((_%r96125%_ _%tl9604196137%_))
                        (_%K9603696119%_ _%r96125%_))))
                (_%K9603596052%_))))))
    (define append1!
      (lambda (_%l96014%_ _%x96015%_)
        (let ((_%l296018%_ (cons _%x96015%_ '())))
          (if (pair? _%l96014%_)
              (let ((_%l96020%_ _%l96014%_))
                (let ((__tmp98717
                       (let () (declare (not safe)) (##last-pair _%l96020%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp98717 _%l296018%_))
                _%l96020%_)
              _%l296018%_))))
    (define append-reverse-until
      (lambda (_%pred95998%_ _%rhead95999%_ _%tail96000%_)
        (if (procedure? _%pred95998%_)
            (let ((_%pred96004%_ _%pred95998%_))
              (__append-reverse-until
               _%pred96004%_
               _%rhead95999%_
               _%tail96000%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred95998%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred95940%_ _%rhead95941%_ _%tail95942%_)
        (let ((_%pred95945%_ _%pred95940%_))
          (let _%loop95954%_ ((_%rhead95956%_ _%rhead95941%_)
                              (_%tail95957%_ _%tail95942%_))
            (let* ((_%rhead9595995968%_ _%rhead95956%_)
                   (_%E9596295972%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9595995968%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9596695995%_ (lambda () (values '() _%tail95957%_)))
                    (_%K9596395979%_
                     (lambda (_%r95976%_ _%a95977%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred95945%_ _%a95977%_))
                           (values _%rhead95956%_ _%tail95957%_)
                           (_%loop95954%_
                            _%r95976%_
                            (cons _%a95977%_ _%tail95957%_))))))
                (let ((_%try-match9596195991%_
                       (lambda ()
                         (if (pair? _%rhead9595995968%_)
                             (let ((_%tl9596595984%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9595995968%_)))
                                   (_%hd9596495982%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9595995968%_))))
                               (let ((_%a95987%_ _%hd9596495982%_)
                                     (_%r95989%_ _%tl9596595984%_))
                                 (_%K9596395979%_ _%r95989%_ _%a95987%_)))
                             (_%E9596295972%_)))))
                  (if (null? _%rhead9595995968%_)
                      (_%K9596695995%_)
                      (_%try-match9596195991%_)))))))))
    (define andmap1
      (lambda (_%f95925%_ _%lst95926%_)
        (if (procedure? _%f95925%_)
            (let ((_%f95930%_ _%f95925%_)) (__andmap1 _%f95930%_ _%lst95926%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f95925%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f95874%_ _%lst95875%_)
        (let ((_%f95878%_ _%f95874%_))
          (let _%lp95887%_ ((_%rest95889%_ _%lst95875%_))
            (let* ((_%rest9589195899%_ _%rest95889%_)
                   (_%else9589395907%_ (lambda () '#t))
                   (_%K9589595913%_
                    (lambda (_%rest95910%_ _%x95911%_)
                      (if (let () (declare (not safe)) (_%f95878%_ _%x95911%_))
                          (_%lp95887%_ _%rest95910%_)
                          '#f))))
              (if (pair? _%rest9589195899%_)
                  (let ((_%hd9589695916%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9589195899%_)))
                        (_%tl9589795918%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9589195899%_))))
                    (let* ((_%x95921%_ _%hd9589695916%_)
                           (_%rest95923%_ _%tl9589795918%_))
                      (_%K9589595913%_ _%rest95923%_ _%x95921%_)))
                  (_%else9589395907%_)))))))
    (define andmap2
      (lambda (_%f95858%_ _%lst195859%_ _%lst295860%_)
        (if (procedure? _%f95858%_)
            (let ((_%f95864%_ _%f95858%_))
              (__andmap2 _%f95864%_ _%lst195859%_ _%lst295860%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f95858%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f95772%_ _%lst195773%_ _%lst295774%_)
        (let ((_%f95777%_ _%f95772%_))
          (let _%lp95786%_ ((_%rest195788%_ _%lst195773%_)
                            (_%rest295789%_ _%lst295774%_))
            (let* ((_%rest19579195799%_ _%rest195788%_)
                   (_%else9579395807%_ (lambda () '#t))
                   (_%K9579595846%_
                    (lambda (_%rest195810%_ _%x195811%_)
                      (let* ((_%rest29581295820%_ _%rest295789%_)
                             (_%else9581495828%_ (lambda () '#t))
                             (_%K9581695834%_
                              (lambda (_%rest295831%_ _%x295832%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f95777%_ _%x195811%_ _%x295832%_))
                                    (_%lp95786%_ _%rest195810%_ _%rest295831%_)
                                    '#f))))
                        (if (pair? _%rest29581295820%_)
                            (let ((_%hd9581795837%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29581295820%_)))
                                  (_%tl9581895839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29581295820%_))))
                              (let* ((_%x295842%_ _%hd9581795837%_)
                                     (_%rest295844%_ _%tl9581895839%_))
                                (_%K9581695834%_ _%rest295844%_ _%x295842%_)))
                            (_%else9581495828%_))))))
              (if (pair? _%rest19579195799%_)
                  (let ((_%hd9579695849%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19579195799%_)))
                        (_%tl9579795851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19579195799%_))))
                    (let* ((_%x195854%_ _%hd9579695849%_)
                           (_%rest195856%_ _%tl9579795851%_))
                      (_%K9579595846%_ _%rest195856%_ _%x195854%_)))
                  (_%else9579395807%_)))))))
    (define andmap
      (lambda _g98718_
        (let ((_g98719_ (let () (declare (not safe)) (##length _g98718_))))
          (cond ((let () (declare (not safe)) (##fx= _g98719_ 2))
                 (apply andmap1 _g98718_))
                ((let () (declare (not safe)) (##fx= _g98719_ 3))
                 (apply andmap2 _g98718_))
                ((let () (declare (not safe)) (##fx>= _g98719_ 3))
                 (apply andmap* _g98718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g98718_))))))
    (define andmap*
      (lambda (_%f95745%_ . _%rest95746%_)
        (if (procedure? _%f95745%_)
            (let ((_%f95750%_ _%f95745%_))
              (declare (not safe))
              (##apply __andmap* _%f95750%_ _%rest95746%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f95745%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f95727%_ . _%rest95728%_)
        (let ((_%f95731%_ _%f95727%_))
          (let _%recur95740%_ ((_%rest95742%_ _%rest95728%_))
            (if (__andmap1 pair? _%rest95742%_)
                (if (let ((__tmp98720 (map car _%rest95742%_)))
                      (declare (not safe))
                      (##apply _%f95731%_ __tmp98720))
                    (_%recur95740%_ (map cdr _%rest95742%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f95712%_ _%lst95713%_)
        (if (procedure? _%f95712%_)
            (let ((_%f95717%_ _%f95712%_)) (__ormap1 _%f95717%_ _%lst95713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f95712%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f95659%_ _%lst95660%_)
        (let ((_%f95663%_ _%f95659%_))
          (let _%lp95672%_ ((_%rest95674%_ _%lst95660%_))
            (let* ((_%rest9567595683%_ _%rest95674%_)
                   (_%else9567795691%_ (lambda () '#f))
                   (_%K9567995700%_
                    (lambda (_%rest95694%_ _%x95695%_)
                      (let ((_%$e95697%_
                             (let ()
                               (declare (not safe))
                               (_%f95663%_ _%x95695%_))))
                        (if _%$e95697%_
                            _%$e95697%_
                            (_%lp95672%_ _%rest95694%_))))))
              (if (pair? _%rest9567595683%_)
                  (let ((_%hd9568095703%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9567595683%_)))
                        (_%tl9568195705%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9567595683%_))))
                    (let* ((_%x95708%_ _%hd9568095703%_)
                           (_%rest95710%_ _%tl9568195705%_))
                      (_%K9567995700%_ _%rest95710%_ _%x95708%_)))
                  (_%else9567795691%_)))))))
    (define ormap2
      (lambda (_%f95643%_ _%lst195644%_ _%lst295645%_)
        (if (procedure? _%f95643%_)
            (let ((_%f95649%_ _%f95643%_))
              (__ormap2 _%f95649%_ _%lst195644%_ _%lst295645%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f95643%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f95555%_ _%lst195556%_ _%lst295557%_)
        (let ((_%f95560%_ _%f95555%_))
          (let _%lp95569%_ ((_%rest195571%_ _%lst195556%_)
                            (_%rest295572%_ _%lst295557%_))
            (let* ((_%rest19557395581%_ _%rest195571%_)
                   (_%else9557595589%_ (lambda () '#f))
                   (_%K9557795631%_
                    (lambda (_%rest195592%_ _%x195593%_)
                      (let* ((_%rest29559495602%_ _%rest295572%_)
                             (_%else9559695610%_ (lambda () '#f))
                             (_%K9559895619%_
                              (lambda (_%rest295613%_ _%x295614%_)
                                (let ((_%$e95616%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f95560%_
                                          _%x195593%_
                                          _%x295614%_))))
                                  (if _%$e95616%_
                                      _%$e95616%_
                                      (_%lp95569%_
                                       _%rest195592%_
                                       _%rest295613%_))))))
                        (if (pair? _%rest29559495602%_)
                            (let ((_%hd9559995622%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29559495602%_)))
                                  (_%tl9560095624%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29559495602%_))))
                              (let* ((_%x295627%_ _%hd9559995622%_)
                                     (_%rest295629%_ _%tl9560095624%_))
                                (_%K9559895619%_ _%rest295629%_ _%x295627%_)))
                            (_%else9559695610%_))))))
              (if (pair? _%rest19557395581%_)
                  (let ((_%hd9557895634%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19557395581%_)))
                        (_%tl9557995636%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19557395581%_))))
                    (let* ((_%x195639%_ _%hd9557895634%_)
                           (_%rest195641%_ _%tl9557995636%_))
                      (_%K9557795631%_ _%rest195641%_ _%x195639%_)))
                  (_%else9557595589%_)))))))
    (define ormap
      (lambda _g98721_
        (let ((_g98722_ (let () (declare (not safe)) (##length _g98721_))))
          (cond ((let () (declare (not safe)) (##fx= _g98722_ 2))
                 (apply ormap1 _g98721_))
                ((let () (declare (not safe)) (##fx= _g98722_ 3))
                 (apply ormap2 _g98721_))
                ((let () (declare (not safe)) (##fx>= _g98722_ 3))
                 (apply ormap* _g98721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g98721_))))))
    (define ormap*
      (lambda (_%f95528%_ . _%rest95529%_)
        (if (procedure? _%f95528%_)
            (let ((_%f95533%_ _%f95528%_))
              (declare (not safe))
              (##apply __ormap* _%f95533%_ _%rest95529%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f95528%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f95508%_ . _%rest95509%_)
        (let ((_%f95512%_ _%f95508%_))
          (let _%recur95521%_ ((_%rest95523%_ _%rest95509%_))
            (if (__andmap1 pair? _%rest95523%_)
                (let ((_%$e95525%_
                       (let ((__tmp98723 (map car _%rest95523%_)))
                         (declare (not safe))
                         (##apply _%f95512%_ __tmp98723))))
                  (if _%$e95525%_
                      _%$e95525%_
                      (_%recur95521%_ (map cdr _%rest95523%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f95493%_ _%lst95494%_)
        (if (procedure? _%f95493%_)
            (let ((_%f95498%_ _%f95493%_))
              (__filter-map1 _%f95498%_ _%lst95494%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f95493%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f95436%_ _%lst95437%_)
        (let ((_%f95440%_ _%f95436%_))
          (let _%recur95449%_ ((_%rest95451%_ _%lst95437%_))
            (let* ((_%rest9545395461%_ _%rest95451%_)
                   (_%else9545595469%_ (lambda () '()))
                   (_%K9545795481%_
                    (lambda (_%rest95472%_ _%x95473%_)
                      (let ((_%$e95475%_
                             (let ()
                               (declare (not safe))
                               (_%f95440%_ _%x95473%_))))
                        (if _%$e95475%_
                            ((lambda (_%r95478%_)
                               (cons _%r95478%_
                                     (_%recur95449%_ _%rest95472%_)))
                             _%$e95475%_)
                            (_%recur95449%_ _%rest95472%_))))))
              (if (pair? _%rest9545395461%_)
                  (let ((_%hd9545895484%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9545395461%_)))
                        (_%tl9545995486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9545395461%_))))
                    (let* ((_%x95489%_ _%hd9545895484%_)
                           (_%rest95491%_ _%tl9545995486%_))
                      (_%K9545795481%_ _%rest95491%_ _%x95489%_)))
                  (_%else9545595469%_)))))))
    (define filter-map2
      (lambda (_%f95420%_ _%lst195421%_ _%lst295422%_)
        (if (procedure? _%f95420%_)
            (let ((_%f95426%_ _%f95420%_))
              (__filter-map2 _%f95426%_ _%lst195421%_ _%lst295422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f95420%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f95328%_ _%lst195329%_ _%lst295330%_)
        (let ((_%f95333%_ _%f95328%_))
          (let _%recur95342%_ ((_%rest195344%_ _%lst195329%_)
                               (_%rest295345%_ _%lst295330%_))
            (let* ((_%rest19534795355%_ _%rest195344%_)
                   (_%else9534995363%_ (lambda () '()))
                   (_%K9535195408%_
                    (lambda (_%rest195366%_ _%x195367%_)
                      (let* ((_%rest29536895376%_ _%rest295345%_)
                             (_%else9537095384%_ (lambda () '()))
                             (_%K9537295396%_
                              (lambda (_%rest295387%_ _%x295388%_)
                                (let ((_%$e95390%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f95333%_
                                          _%x195367%_
                                          _%x295388%_))))
                                  (if _%$e95390%_
                                      ((lambda (_%r95393%_)
                                         (cons _%r95393%_
                                               (_%recur95342%_
                                                _%rest195366%_
                                                _%rest295387%_)))
                                       _%$e95390%_)
                                      (_%recur95342%_
                                       _%rest195366%_
                                       _%rest295387%_))))))
                        (if (pair? _%rest29536895376%_)
                            (let ((_%hd9537395399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29536895376%_)))
                                  (_%tl9537495401%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29536895376%_))))
                              (let* ((_%x295404%_ _%hd9537395399%_)
                                     (_%rest295406%_ _%tl9537495401%_))
                                (_%K9537295396%_ _%rest295406%_ _%x295404%_)))
                            (_%else9537095384%_))))))
              (if (pair? _%rest19534795355%_)
                  (let ((_%hd9535295411%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19534795355%_)))
                        (_%tl9535395413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19534795355%_))))
                    (let* ((_%x195416%_ _%hd9535295411%_)
                           (_%rest195418%_ _%tl9535395413%_))
                      (_%K9535195408%_ _%rest195418%_ _%x195416%_)))
                  (_%else9534995363%_)))))))
    (define filter-map
      (lambda _g98724_
        (let ((_g98725_ (let () (declare (not safe)) (##length _g98724_))))
          (cond ((let () (declare (not safe)) (##fx= _g98725_ 2))
                 (apply filter-map1 _g98724_))
                ((let () (declare (not safe)) (##fx= _g98725_ 3))
                 (apply filter-map2 _g98724_))
                ((let () (declare (not safe)) (##fx>= _g98725_ 3))
                 (apply filter-map* _g98724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g98724_))))))
    (define filter-map*
      (lambda (_%f95301%_ . _%rest95302%_)
        (if (procedure? _%f95301%_)
            (let ((_%f95306%_ _%f95301%_))
              (declare (not safe))
              (##apply __filter-map* _%f95306%_ _%rest95302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f95301%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f95277%_ . _%rest95278%_)
        (let ((_%f95281%_ _%f95277%_))
          (let _%recur95290%_ ((_%rest95292%_ _%rest95278%_))
            (if (__andmap1 pair? _%rest95292%_)
                (let ((_%$e95295%_
                       (let ((__tmp98726 (map car _%rest95292%_)))
                         (declare (not safe))
                         (##apply _%f95281%_ __tmp98726))))
                  (if _%$e95295%_
                      ((lambda (_%r95298%_)
                         (cons _%r95298%_
                               (_%recur95290%_ (map cdr _%rest95292%_))))
                       _%$e95295%_)
                      (_%recur95290%_ (map cdr _%rest95292%_))))
                '())))))
    (define agetq__%
      (lambda (_%key95253%_ _%lst95255%_ _%default95257%_)
        (let ((_%$e95260%_
               (if (pair? _%lst95255%_) (assq _%key95253%_ _%lst95255%_) '#f)))
          (if _%$e95260%_
              (cdr _%$e95260%_)
              (if (procedure? _%default95257%_)
                  (_%default95257%_ _%key95253%_)
                  _%default95257%_)))))
    (define agetq__0
      (lambda (_%key95268%_ _%lst95269%_)
        (let ((_%default95271%_ '#f))
          (agetq__% _%key95268%_ _%lst95269%_ _%default95271%_))))
    (define agetq
      (lambda _g98727_
        (let ((_g98728_ (let () (declare (not safe)) (##length _g98727_))))
          (cond ((let () (declare (not safe)) (##fx= _g98728_ 2))
                 (apply agetq__0 _g98727_))
                ((let () (declare (not safe)) (##fx= _g98728_ 3))
                 (apply agetq__% _g98727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g98727_))))))
    (define agetv__%
      (lambda (_%key95228%_ _%lst95230%_ _%default95232%_)
        (let ((_%$e95235%_
               (if (pair? _%lst95230%_) (assv _%key95228%_ _%lst95230%_) '#f)))
          (if _%$e95235%_
              (cdr _%$e95235%_)
              (if (procedure? _%default95232%_)
                  (_%default95232%_ _%key95228%_)
                  _%default95232%_)))))
    (define agetv__0
      (lambda (_%key95243%_ _%lst95244%_)
        (let ((_%default95246%_ '#f))
          (agetv__% _%key95243%_ _%lst95244%_ _%default95246%_))))
    (define agetv
      (lambda _g98729_
        (let ((_g98730_ (let () (declare (not safe)) (##length _g98729_))))
          (cond ((let () (declare (not safe)) (##fx= _g98730_ 2))
                 (apply agetv__0 _g98729_))
                ((let () (declare (not safe)) (##fx= _g98730_ 3))
                 (apply agetv__% _g98729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g98729_))))))
    (define aget__%
      (lambda (_%key95203%_ _%lst95205%_ _%default95207%_)
        (let ((_%$e95210%_
               (if (pair? _%lst95205%_)
                   (assoc _%key95203%_ _%lst95205%_)
                   '#f)))
          (if _%$e95210%_
              (cdr _%$e95210%_)
              (if (procedure? _%default95207%_)
                  (_%default95207%_ _%key95203%_)
                  _%default95207%_)))))
    (define aget__0
      (lambda (_%key95218%_ _%lst95219%_)
        (let ((_%default95221%_ '#f))
          (aget__% _%key95218%_ _%lst95219%_ _%default95221%_))))
    (define aget
      (lambda _g98731_
        (let ((_g98732_ (let () (declare (not safe)) (##length _g98731_))))
          (cond ((let () (declare (not safe)) (##fx= _g98732_ 2))
                 (apply aget__0 _g98731_))
                ((let () (declare (not safe)) (##fx= _g98732_ 3))
                 (apply aget__% _g98731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g98731_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key95132%_ _%lst95134%_ _%default95136%_)
        (let _%lp95139%_ ((_%rest95142%_ _%lst95134%_))
          (let* ((_%rest9514495154%_ _%rest95142%_)
                 (_%else9514695162%_
                  (lambda ()
                    (if (procedure? _%default95136%_)
                        (_%default95136%_ _%key95132%_)
                        _%default95136%_)))
                 (_%K9514895171%_
                  (lambda (_%rest95165%_ _%v95166%_ _%k95168%_)
                    (if (eq? _%k95168%_ _%key95132%_)
                        _%v95166%_
                        (_%lp95139%_ _%rest95165%_)))))
            (if (pair? _%rest9514495154%_)
                (let ((_%hd9514995174%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9514495154%_)))
                      (_%tl9515095176%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9514495154%_))))
                  (let ((_%k95179%_ _%hd9514995174%_))
                    (if (pair? _%tl9515095176%_)
                        (let ((_%hd9515195181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9515095176%_)))
                              (_%tl9515295183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9515095176%_))))
                          (let* ((_%v95186%_ _%hd9515195181%_)
                                 (_%rest95188%_ _%tl9515295183%_))
                            (_%K9514895171%_
                             _%rest95188%_
                             _%v95186%_
                             _%k95179%_)))
                        (_%else9514695162%_))))
                (_%else9514695162%_))))))
    (define pgetq__0
      (lambda (_%key95193%_ _%lst95194%_)
        (let ((_%default95196%_ '#f))
          (pgetq__% _%key95193%_ _%lst95194%_ _%default95196%_))))
    (define pgetq
      (lambda _g98733_
        (let ((_g98734_ (let () (declare (not safe)) (##length _g98733_))))
          (cond ((let () (declare (not safe)) (##fx= _g98734_ 2))
                 (apply pgetq__0 _g98733_))
                ((let () (declare (not safe)) (##fx= _g98734_ 3))
                 (apply pgetq__% _g98733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g98733_))))))
    (define pgetv__%
      (lambda (_%key95061%_ _%lst95063%_ _%default95065%_)
        (let _%lp95068%_ ((_%rest95071%_ _%lst95063%_))
          (let* ((_%rest9507395083%_ _%rest95071%_)
                 (_%else9507595091%_
                  (lambda ()
                    (if (procedure? _%default95065%_)
                        (_%default95065%_ _%key95061%_)
                        _%default95065%_)))
                 (_%K9507795100%_
                  (lambda (_%rest95094%_ _%v95095%_ _%k95097%_)
                    (if (eqv? _%k95097%_ _%key95061%_)
                        _%v95095%_
                        (_%lp95068%_ _%rest95094%_)))))
            (if (pair? _%rest9507395083%_)
                (let ((_%hd9507895103%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9507395083%_)))
                      (_%tl9507995105%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9507395083%_))))
                  (let ((_%k95108%_ _%hd9507895103%_))
                    (if (pair? _%tl9507995105%_)
                        (let ((_%hd9508095110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9507995105%_)))
                              (_%tl9508195112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9507995105%_))))
                          (let* ((_%v95115%_ _%hd9508095110%_)
                                 (_%rest95117%_ _%tl9508195112%_))
                            (_%K9507795100%_
                             _%rest95117%_
                             _%v95115%_
                             _%k95108%_)))
                        (_%else9507595091%_))))
                (_%else9507595091%_))))))
    (define pgetv__0
      (lambda (_%key95122%_ _%lst95123%_)
        (let ((_%default95125%_ '#f))
          (pgetv__% _%key95122%_ _%lst95123%_ _%default95125%_))))
    (define pgetv
      (lambda _g98735_
        (let ((_g98736_ (let () (declare (not safe)) (##length _g98735_))))
          (cond ((let () (declare (not safe)) (##fx= _g98736_ 2))
                 (apply pgetv__0 _g98735_))
                ((let () (declare (not safe)) (##fx= _g98736_ 3))
                 (apply pgetv__% _g98735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g98735_))))))
    (define pget__%
      (lambda (_%key94990%_ _%lst94992%_ _%default94994%_)
        (let _%lp94997%_ ((_%rest95000%_ _%lst94992%_))
          (let* ((_%rest9500295012%_ _%rest95000%_)
                 (_%else9500495020%_
                  (lambda ()
                    (if (procedure? _%default94994%_)
                        (_%default94994%_ _%key94990%_)
                        _%default94994%_)))
                 (_%K9500695029%_
                  (lambda (_%rest95023%_ _%v95024%_ _%k95026%_)
                    (if (equal? _%k95026%_ _%key94990%_)
                        _%v95024%_
                        (_%lp94997%_ _%rest95023%_)))))
            (if (pair? _%rest9500295012%_)
                (let ((_%hd9500795032%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9500295012%_)))
                      (_%tl9500895034%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9500295012%_))))
                  (let ((_%k95037%_ _%hd9500795032%_))
                    (if (pair? _%tl9500895034%_)
                        (let ((_%hd9500995039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9500895034%_)))
                              (_%tl9501095041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9500895034%_))))
                          (let* ((_%v95044%_ _%hd9500995039%_)
                                 (_%rest95046%_ _%tl9501095041%_))
                            (_%K9500695029%_
                             _%rest95046%_
                             _%v95044%_
                             _%k95037%_)))
                        (_%else9500495020%_))))
                (_%else9500495020%_))))))
    (define pget__0
      (lambda (_%key95051%_ _%lst95052%_)
        (let ((_%default95054%_ '#f))
          (pget__% _%key95051%_ _%lst95052%_ _%default95054%_))))
    (define pget
      (lambda _g98737_
        (let ((_g98738_ (let () (declare (not safe)) (##length _g98737_))))
          (cond ((let () (declare (not safe)) (##fx= _g98738_ 2))
                 (apply pget__0 _g98737_))
                ((let () (declare (not safe)) (##fx= _g98738_ 3))
                 (apply pget__% _g98737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g98737_))))))
    (define find
      (lambda (_%pred94974%_ _%lst94975%_)
        (if (procedure? _%pred94974%_)
            (let ((_%pred94979%_ _%pred94974%_))
              (__find _%pred94979%_ _%lst94975%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred94974%_)
              '#!void))))
    (define __find
      (lambda (_%pred94957%_ _%lst94958%_)
        (let* ((_%pred94961%_ _%pred94957%_)
               (_%$e94970%_ (__memf _%pred94961%_ _%lst94958%_)))
          (if _%$e94970%_
              (let () (declare (not safe)) (##car _%$e94970%_))
              '#f))))
    (define memf
      (lambda (_%proc94942%_ _%lst94943%_)
        (if (procedure? _%proc94942%_)
            (let ((_%proc94947%_ _%proc94942%_))
              (__memf _%proc94947%_ _%lst94943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc94942%_)
              '#!void))))
    (define __memf
      (lambda (_%proc94892%_ _%lst94893%_)
        (let ((_%proc94896%_ _%proc94892%_))
          (let _%lp94905%_ ((_%rest94907%_ _%lst94893%_))
            (let* ((_%rest9490894916%_ _%rest94907%_)
                   (_%else9491094924%_ (lambda () '#f))
                   (_%K9491294930%_
                    (lambda (_%tl94927%_ _%hd94928%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc94896%_ _%hd94928%_))
                          _%rest94907%_
                          (_%lp94905%_ _%tl94927%_)))))
              (if (pair? _%rest9490894916%_)
                  (let ((_%hd9491394933%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9490894916%_)))
                        (_%tl9491494935%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9490894916%_))))
                    (let* ((_%hd94938%_ _%hd9491394933%_)
                           (_%tl94940%_ _%tl9491494935%_))
                      (_%K9491294930%_ _%tl94940%_ _%hd94938%_)))
                  (_%else9491094924%_)))))))
    (define remove1
      (lambda (_%el94845%_ _%lst94847%_)
        (let _%lp94850%_ ((_%rest94853%_ _%lst94847%_) (_%r94855%_ '()))
          (let* ((_%rest9485794865%_ _%rest94853%_)
                 (_%else9485994873%_ (lambda () _%lst94847%_))
                 (_%K9486194880%_
                  (lambda (_%rest94876%_ _%hd94877%_)
                    (if (equal? _%el94845%_ _%hd94877%_)
                        (__foldl1 cons _%rest94876%_ _%r94855%_)
                        (_%lp94850%_
                         _%rest94876%_
                         (cons _%hd94877%_ _%r94855%_))))))
            (if (pair? _%rest9485794865%_)
                (let ((_%hd9486294883%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9485794865%_)))
                      (_%tl9486394885%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9485794865%_))))
                  (let* ((_%hd94888%_ _%hd9486294883%_)
                         (_%rest94890%_ _%tl9486394885%_))
                    (_%K9486194880%_ _%rest94890%_ _%hd94888%_)))
                (_%else9485994873%_))))))
    (define remv1
      (lambda (_%el94798%_ _%lst94800%_)
        (let _%lp94803%_ ((_%rest94806%_ _%lst94800%_) (_%r94808%_ '()))
          (let* ((_%rest9481094818%_ _%rest94806%_)
                 (_%else9481294826%_ (lambda () _%lst94800%_))
                 (_%K9481494833%_
                  (lambda (_%rest94829%_ _%hd94830%_)
                    (if (eqv? _%el94798%_ _%hd94830%_)
                        (__foldl1 cons _%rest94829%_ _%r94808%_)
                        (_%lp94803%_
                         _%rest94829%_
                         (cons _%hd94830%_ _%r94808%_))))))
            (if (pair? _%rest9481094818%_)
                (let ((_%hd9481594836%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9481094818%_)))
                      (_%tl9481694838%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9481094818%_))))
                  (let* ((_%hd94841%_ _%hd9481594836%_)
                         (_%rest94843%_ _%tl9481694838%_))
                    (_%K9481494833%_ _%rest94843%_ _%hd94841%_)))
                (_%else9481294826%_))))))
    (define remq1
      (lambda (_%el94751%_ _%lst94753%_)
        (let _%lp94756%_ ((_%rest94759%_ _%lst94753%_) (_%r94761%_ '()))
          (let* ((_%rest9476394771%_ _%rest94759%_)
                 (_%else9476594779%_ (lambda () _%lst94753%_))
                 (_%K9476794786%_
                  (lambda (_%rest94782%_ _%hd94783%_)
                    (if (eq? _%el94751%_ _%hd94783%_)
                        (__foldl1 cons _%rest94782%_ _%r94761%_)
                        (_%lp94756%_
                         _%rest94782%_
                         (cons _%hd94783%_ _%r94761%_))))))
            (if (pair? _%rest9476394771%_)
                (let ((_%hd9476894789%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9476394771%_)))
                      (_%tl9476994791%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9476394771%_))))
                  (let* ((_%hd94794%_ _%hd9476894789%_)
                         (_%rest94796%_ _%tl9476994791%_))
                    (_%K9476794786%_ _%rest94796%_ _%hd94794%_)))
                (_%else9476594779%_))))))
    (define remf
      (lambda (_%proc94736%_ _%lst94737%_)
        (if (procedure? _%proc94736%_)
            (let ((_%proc94741%_ _%proc94736%_))
              (__remf _%proc94741%_ _%lst94737%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc94736%_)
              '#!void))))
    (define __remf
      (lambda (_%proc94685%_ _%lst94686%_)
        (let ((_%proc94689%_ _%proc94685%_))
          (let _%lp94698%_ ((_%rest94700%_ _%lst94686%_) (_%r94701%_ '()))
            (let* ((_%rest9470294710%_ _%rest94700%_)
                   (_%else9470494718%_ (lambda () _%lst94686%_))
                   (_%K9470694724%_
                    (lambda (_%rest94721%_ _%hd94722%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc94689%_ _%hd94722%_))
                          (__foldl1 cons _%rest94721%_ _%r94701%_)
                          (_%lp94698%_
                           _%rest94721%_
                           (cons _%hd94722%_ _%r94701%_))))))
              (if (pair? _%rest9470294710%_)
                  (let ((_%hd9470794727%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9470294710%_)))
                        (_%tl9470894729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9470294710%_))))
                    (let* ((_%hd94732%_ _%hd9470794727%_)
                           (_%rest94734%_ _%tl9470894729%_))
                      (_%K9470694724%_ _%rest94734%_ _%hd94732%_)))
                  (_%else9470494718%_)))))))
    (define 1+
      (lambda (_%x94671%_)
        (if (number? _%x94671%_)
            (let ((_%x94675%_ _%x94671%_)) (__1+ _%x94675%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x94671%_)
              '#!void))))
    (define __1+
      (lambda (_%x94659%_) (let ((_%x94662%_ _%x94659%_)) (+ _%x94662%_ '1))))
    (define 1-
      (lambda (_%x94645%_)
        (if (number? _%x94645%_)
            (let ((_%x94649%_ _%x94645%_)) (__1- _%x94649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x94645%_)
              '#!void))))
    (define __1-
      (lambda (_%x94633%_) (let ((_%x94636%_ _%x94633%_)) (- _%x94636%_ '1))))
    (define fx1+
      (lambda (_%x94619%_)
        (if (fixnum? _%x94619%_)
            (let ((_%x94623%_ _%x94619%_)) (__fx1+ _%x94623%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x94619%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x94607%_)
        (let ((_%x94610%_ _%x94607%_))
          (declare (not safe))
          (##fx+ _%x94610%_ '1))))
    (define fx1-
      (lambda (_%x94593%_)
        (if (fixnum? _%x94593%_)
            (let ((_%x94597%_ _%x94593%_)) (__fx1- _%x94597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x94593%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x94581%_)
        (let ((_%x94584%_ _%x94581%_))
          (declare (not safe))
          (##fx- _%x94584%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x94578%_)
        (if (fixnum? _%x94578%_)
            (let () (declare (not safe)) (##fx>= _%x94578%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x94575%_)
        (if (fixnum? _%x94575%_)
            (let () (declare (not safe)) (##fx> _%x94575%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x94572%_)
        (let () (declare (not safe)) (##fx= _%x94572%_ '0))))
    (define fx<0?
      (lambda (_%x94569%_)
        (if (fixnum? _%x94569%_)
            (let () (declare (not safe)) (##fx< _%x94569%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x94566%_)
        (if (fixnum? _%x94566%_)
            (let () (declare (not safe)) (##fx<= _%x94566%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x94563%_)
        (if (symbol? _%x94563%_) (not (uninterned-symbol? _%x94563%_)) '#f)))
    (define display-as-string
      (lambda (_%x94548%_ _%port94549%_)
        (if (output-port? _%port94549%_)
            (let ((_%port94553%_ _%port94549%_))
              (__display-as-string _%x94548%_ _%port94553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port94549%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x94505%_ _%port94506%_)
        (let ((_%port94509%_ _%port94506%_))
          (if (or (string? _%x94505%_)
                  (symbol? _%x94505%_)
                  (keyword? _%x94505%_)
                  (number? _%x94505%_)
                  (char? _%x94505%_))
              (display _%x94505%_ _%port94509%_)
              (if (pair? _%x94505%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x94505%_))
                     _%port94509%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x94505%_))
                     _%port94509%_))
                  (if (vector? _%x94505%_)
                      (vector-for-each
                       (lambda (_%g9453294534%_)
                         (__display-as-string _%g9453294534%_ _%port94509%_))
                       _%x94505%_)
                      (if (or (null? _%x94505%_)
                              (eq? _%x94505%_ '#!void)
                              (eof-object? _%x94505%_)
                              (boolean? _%x94505%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x94505%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x94488%_)
        (if (string? _%x94488%_)
            _%x94488%_
            (if (symbol? _%x94488%_)
                (let () (declare (not safe)) (##symbol->string _%x94488%_))
                (if (keyword? _%x94488%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x94488%_))
                    (if (number? _%x94488%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x94488%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9449494496%_)
                           (__display-as-string
                            _%x94488%_
                            _%g9449494496%_)))))))))
    (define as-string__1
      (lambda _%args94499%_
        (call-with-output-string
         '()
         (lambda (_%g9450094502%_)
           (__display-as-string _%args94499%_ _%g9450094502%_)))))
    (define as-string
      (lambda _g98739_
        (let ((_g98740_ (let () (declare (not safe)) (##length _g98739_))))
          (cond ((let () (declare (not safe)) (##fx= _g98740_ 1))
                 (apply as-string__0 _g98739_))
                (#t
                 (apply (lambda _%args94499%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args94499%_)))
                        _g98739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g98739_))))))
    (define make-symbol__0
      (lambda (_%x94484%_)
        (if (interned-symbol? _%x94484%_)
            _%x94484%_
            (let ((__tmp98741 (as-string__0 _%x94484%_)))
              (declare (not safe))
              (##string->symbol __tmp98741)))))
    (define make-symbol__1
      (lambda _%args94486%_
        (let ((__tmp98742
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args94486%_))))
          (declare (not safe))
          (##string->symbol __tmp98742))))
    (define make-symbol
      (lambda _g98743_
        (let ((_g98744_ (let () (declare (not safe)) (##length _g98743_))))
          (cond ((let () (declare (not safe)) (##fx= _g98744_ 1))
                 (apply make-symbol__0 _g98743_))
                (#t
                 (apply (lambda _%args94486%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args94486%_)))
                        _g98743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g98743_))))))
    (define make-keyword__0
      (lambda (_%x94480%_)
        (if (interned-keyword? _%x94480%_)
            _%x94480%_
            (let ((__tmp98745 (as-string__0 _%x94480%_)))
              (declare (not safe))
              (##string->keyword __tmp98745)))))
    (define make-keyword__1
      (lambda _%args94482%_
        (let ((__tmp98746
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args94482%_))))
          (declare (not safe))
          (##string->keyword __tmp98746))))
    (define make-keyword
      (lambda _g98747_
        (let ((_g98748_ (let () (declare (not safe)) (##length _g98747_))))
          (cond ((let () (declare (not safe)) (##fx= _g98748_ 1))
                 (apply make-keyword__0 _g98747_))
                (#t
                 (apply (lambda _%args94482%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args94482%_)))
                        _g98747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g98747_))))))
    (define interned-keyword?
      (lambda (_%x94477%_)
        (if (keyword? _%x94477%_) (not (uninterned-keyword? _%x94477%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym94463%_)
        (if (symbol? _%sym94463%_)
            (let ((_%sym94467%_ _%sym94463%_))
              (__symbol->keyword _%sym94467%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym94463%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym94451%_)
        (let ((_%sym94454%_ _%sym94451%_))
          (if (uninterned-symbol? _%sym94454%_)
              (let ((__tmp98749
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym94454%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp98749))
              (let ((__tmp98750
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym94454%_))))
                (declare (not safe))
                (##string->keyword __tmp98750))))))
    (define keyword->symbol
      (lambda (_%sym94437%_)
        (if (keyword? _%sym94437%_)
            (let ((_%sym94441%_ _%sym94437%_))
              (__keyword->symbol _%sym94441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym94437%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym94425%_)
        (let ((_%sym94428%_ _%sym94425%_))
          (if (uninterned-keyword? _%sym94428%_)
              (let ((__tmp98751
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym94428%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp98751))
              (let ((__tmp98752
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym94428%_))))
                (declare (not safe))
                (##string->symbol __tmp98752))))))
    (define bytes->string__%
      (lambda (_%bstr94390%_ _%enc94391%_)
        (if (u8vector? _%bstr94390%_)
            (let ((_%bstr94395%_ _%bstr94390%_))
              (if (symbol? _%enc94391%_)
                  (let ((_%enc94405%_ _%enc94391%_))
                    (__bytes->string__% _%bstr94395%_ _%enc94405%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc94391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr94390%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr94418%_)
        (let ((_%enc94420%_ 'UTF-8))
          (bytes->string__% _%bstr94418%_ _%enc94420%_))))
    (define bytes->string
      (lambda _g98753_
        (let ((_g98754_ (let () (declare (not safe)) (##length _g98753_))))
          (cond ((let () (declare (not safe)) (##fx= _g98754_ 1))
                 (apply bytes->string__0 _g98753_))
                ((let () (declare (not safe)) (##fx= _g98754_ 2))
                 (apply bytes->string__% _g98753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g98753_))))))
    (define __bytes->string__%
      (lambda (_%bstr94349%_ _%enc94350%_)
        (let* ((_%bstr94353%_ _%bstr94349%_) (_%enc94361%_ _%enc94350%_))
          (if (eq? _%enc94361%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr94353%_))
              (let* ((_%in94370%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc94361%_
                                   (cons 'init: (cons _%bstr94353%_ '()))))))
                     (_%len94372%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr94353%_)))
                     (_%out94374%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len94372%_)))
                     (_%n94376%_
                      (read-substring
                       _%out94374%_
                       '0
                       _%len94372%_
                       _%in94370%_)))
                (string-shrink! _%out94374%_ _%n94376%_)
                _%out94374%_)))))
    (define __bytes->string__0
      (lambda (_%bstr94382%_)
        (let ((_%enc94384%_ 'UTF-8))
          (__bytes->string__% _%bstr94382%_ _%enc94384%_))))
    (define __bytes->string
      (lambda _g98755_
        (let ((_g98756_ (let () (declare (not safe)) (##length _g98755_))))
          (cond ((let () (declare (not safe)) (##fx= _g98756_ 1))
                 (apply __bytes->string__0 _g98755_))
                ((let () (declare (not safe)) (##fx= _g98756_ 2))
                 (apply __bytes->string__% _g98755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g98755_))))))
    (define string->bytes__%
      (lambda (_%str94313%_ _%enc94314%_)
        (if (string? _%str94313%_)
            (let ((_%str94318%_ _%str94313%_))
              (if (symbol? _%enc94314%_)
                  (let ((_%enc94328%_ _%enc94314%_))
                    (__string->bytes__% _%str94318%_ _%enc94328%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc94314%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str94313%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str94341%_)
        (let ((_%enc94343%_ 'UTF-8))
          (string->bytes__% _%str94341%_ _%enc94343%_))))
    (define string->bytes
      (lambda _g98757_
        (let ((_g98758_ (let () (declare (not safe)) (##length _g98757_))))
          (cond ((let () (declare (not safe)) (##fx= _g98758_ 1))
                 (apply string->bytes__0 _g98757_))
                ((let () (declare (not safe)) (##fx= _g98758_ 2))
                 (apply string->bytes__% _g98757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g98757_))))))
    (define __string->bytes__%
      (lambda (_%str94281%_ _%enc94282%_)
        (let* ((_%str94285%_ _%str94281%_) (_%enc94293%_ _%enc94282%_))
          (if (eq? _%enc94293%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str94285%_))
              (__substring->bytes__%
               _%str94285%_
               '0
               (let () (declare (not safe)) (##string-length _%str94285%_))
               _%enc94293%_)))))
    (define __string->bytes__0
      (lambda (_%str94305%_)
        (let ((_%enc94307%_ 'UTF-8))
          (__string->bytes__% _%str94305%_ _%enc94307%_))))
    (define __string->bytes
      (lambda _g98759_
        (let ((_g98760_ (let () (declare (not safe)) (##length _g98759_))))
          (cond ((let () (declare (not safe)) (##fx= _g98760_ 1))
                 (apply __string->bytes__0 _g98759_))
                ((let () (declare (not safe)) (##fx= _g98760_ 2))
                 (apply __string->bytes__% _g98759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g98759_))))))
    (define substring->bytes__%
      (lambda (_%str94229%_ _%start94230%_ _%end94231%_ _%enc94232%_)
        (if (string? _%str94229%_)
            (let ((_%str94236%_ _%str94229%_))
              (if (nonnegative-fixnum? _%start94230%_)
                  (let ((_%start94246%_ _%start94230%_))
                    (if (nonnegative-fixnum? _%end94231%_)
                        (let ((_%end94256%_ _%end94231%_))
                          (__substring->bytes__%
                           _%str94236%_
                           _%start94246%_
                           _%end94256%_
                           _%enc94232%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end94231%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start94230%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str94229%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str94269%_ _%start94270%_ _%end94271%_)
        (let ((_%enc94273%_ 'UTF-8))
          (substring->bytes__%
           _%str94269%_
           _%start94270%_
           _%end94271%_
           _%enc94273%_))))
    (define substring->bytes
      (lambda _g98761_
        (let ((_g98762_ (let () (declare (not safe)) (##length _g98761_))))
          (cond ((let () (declare (not safe)) (##fx= _g98762_ 3))
                 (apply substring->bytes__0 _g98761_))
                ((let () (declare (not safe)) (##fx= _g98762_ 4))
                 (apply substring->bytes__% _g98761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g98761_))))))
    (define __substring->bytes__%
      (lambda (_%str94181%_ _%start94182%_ _%end94183%_ _%enc94184%_)
        (let* ((_%str94187%_ _%str94181%_)
               (_%start94195%_ _%start94182%_)
               (_%end94203%_ _%end94183%_))
          (if (eq? _%enc94184%_ 'UTF-8)
              (string->utf8 _%str94187%_ _%start94195%_ _%end94203%_)
              (let ((_%out94212%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc94184%_ '())))))
                (write-substring
                 _%str94187%_
                 _%start94195%_
                 _%end94203%_
                 _%out94212%_)
                (get-output-u8vector _%out94212%_))))))
    (define __substring->bytes__0
      (lambda (_%str94217%_ _%start94218%_ _%end94219%_)
        (let ((_%enc94221%_ 'UTF-8))
          (__substring->bytes__%
           _%str94217%_
           _%start94218%_
           _%end94219%_
           _%enc94221%_))))
    (define __substring->bytes
      (lambda _g98763_
        (let ((_g98764_ (let () (declare (not safe)) (##length _g98763_))))
          (cond ((let () (declare (not safe)) (##fx= _g98764_ 3))
                 (apply __substring->bytes__0 _g98763_))
                ((let () (declare (not safe)) (##fx= _g98764_ 4))
                 (apply __substring->bytes__% _g98763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g98763_))))))
    (define string-empty?
      (lambda (_%str94166%_)
        (if (string? _%str94166%_)
            (let ((_%str94170%_ _%str94166%_)) (__string-empty? _%str94170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str94166%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str94154%_)
        (let* ((_%str94157%_ _%str94154%_)
               (__tmp98765
                (let () (declare (not safe)) (##string-length _%str94157%_))))
          (declare (not safe))
          (##fxzero? __tmp98765))))
    (define string-index__%
      (lambda (_%str94106%_ _%char94107%_ _%start94108%_)
        (if (string? _%str94106%_)
            (let ((_%str94112%_ _%str94106%_))
              (if (char? _%char94107%_)
                  (let ((_%char94122%_ _%char94107%_))
                    (if (nonnegative-fixnum? _%start94108%_)
                        (let ((_%start94132%_ _%start94108%_))
                          (__string-index__%
                           _%str94112%_
                           _%char94122%_
                           _%start94132%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start94108%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char94107%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str94106%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str94145%_ _%char94146%_)
        (let ((_%start94148%_ '0))
          (string-index__% _%str94145%_ _%char94146%_ _%start94148%_))))
    (define string-index
      (lambda _g98766_
        (let ((_g98767_ (let () (declare (not safe)) (##length _g98766_))))
          (cond ((let () (declare (not safe)) (##fx= _g98767_ 2))
                 (apply string-index__0 _g98766_))
                ((let () (declare (not safe)) (##fx= _g98767_ 3))
                 (apply string-index__% _g98766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g98766_))))))
    (define __string-index__%
      (lambda (_%str94045%_ _%char94046%_ _%start94047%_)
        (let* ((_%str94050%_ _%str94045%_)
               (_%char94058%_ _%char94046%_)
               (_%start94066%_ _%start94047%_)
               (_%len94075%_
                (let () (declare (not safe)) (##string-length _%str94050%_))))
          (let _%lp94077%_ ((_%k94079%_ _%start94066%_))
            (let ((_%k94081%_ _%k94079%_))
              (if (let () (declare (not safe)) (##fx< _%k94081%_ _%len94075%_))
                  (if (eq? _%char94058%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str94050%_ _%k94081%_)))
                      _%k94081%_
                      (_%lp94077%_
                       (let () (declare (not safe)) (##fx+ _%k94081%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str94096%_ _%char94097%_)
        (let ((_%start94099%_ '0))
          (__string-index__% _%str94096%_ _%char94097%_ _%start94099%_))))
    (define __string-index
      (lambda _g98768_
        (let ((_g98769_ (let () (declare (not safe)) (##length _g98768_))))
          (cond ((let () (declare (not safe)) (##fx= _g98769_ 2))
                 (apply __string-index__0 _g98768_))
                ((let () (declare (not safe)) (##fx= _g98769_ 3))
                 (apply __string-index__% _g98768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g98768_))))))
    (define string-rindex__%
      (lambda (_%str94006%_ _%char94007%_ _%start94008%_)
        (if (string? _%str94006%_)
            (let ((_%str94012%_ _%str94006%_))
              (if (char? _%char94007%_)
                  (let ((_%char94022%_ _%char94007%_))
                    (__string-rindex__%
                     _%str94012%_
                     _%char94022%_
                     _%start94008%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char94007%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str94006%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str94035%_ _%char94036%_)
        (let ((_%start94038%_ '#f))
          (string-rindex__% _%str94035%_ _%char94036%_ _%start94038%_))))
    (define string-rindex
      (lambda _g98770_
        (let ((_g98771_ (let () (declare (not safe)) (##length _g98770_))))
          (cond ((let () (declare (not safe)) (##fx= _g98771_ 2))
                 (apply string-rindex__0 _g98770_))
                ((let () (declare (not safe)) (##fx= _g98771_ 3))
                 (apply string-rindex__% _g98770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g98770_))))))
    (define __string-rindex__%
      (lambda (_%str93948%_ _%char93949%_ _%start93950%_)
        (let* ((_%str93953%_ _%str93948%_)
               (_%char93961%_ _%char93949%_)
               (_%len93970%_
                (let () (declare (not safe)) (##string-length _%str93953%_)))
               (_%start93972%_
                (if (fixnum? _%start93950%_)
                    _%start93950%_
                    (let () (declare (not safe)) (##fx- _%len93970%_ '1)))))
          (let _%lp93975%_ ((_%k93977%_ _%start93972%_))
            (let ((_%k93979%_ _%k93977%_))
              (if (let () (declare (not safe)) (##fx>= _%k93979%_ '0))
                  (if (eq? _%char93961%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str93953%_ _%k93979%_)))
                      _%k93979%_
                      (_%lp93975%_
                       (let () (declare (not safe)) (##fx- _%k93979%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str93996%_ _%char93997%_)
        (let ((_%start93999%_ '#f))
          (__string-rindex__% _%str93996%_ _%char93997%_ _%start93999%_))))
    (define __string-rindex
      (lambda _g98772_
        (let ((_g98773_ (let () (declare (not safe)) (##length _g98772_))))
          (cond ((let () (declare (not safe)) (##fx= _g98773_ 2))
                 (apply __string-rindex__0 _g98772_))
                ((let () (declare (not safe)) (##fx= _g98773_ 3))
                 (apply __string-rindex__% _g98772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g98772_))))))
    (define string-split
      (lambda (_%str93922%_ _%char93923%_)
        (if (string? _%str93922%_)
            (let ((_%str93927%_ _%str93922%_))
              (if (char? _%char93923%_)
                  (let ((_%char93937%_ _%char93923%_))
                    (__string-split _%str93927%_ _%char93937%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char93923%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str93922%_)
              '#!void))))
    (define __string-split
      (lambda (_%str93863%_ _%char93864%_)
        (let* ((_%str93867%_ _%str93863%_)
               (_%char93875%_ _%char93864%_)
               (_%len93884%_
                (let () (declare (not safe)) (##string-length _%str93867%_))))
          (let _%lp93886%_ ((_%start93888%_ '0) (_%r93889%_ '()))
            (let* ((_%start93892%_ _%start93888%_)
                   (_%$e93905%_
                    (__string-index__%
                     _%str93867%_
                     _%char93875%_
                     _%start93892%_)))
              (if _%$e93905%_
                  ((lambda (_%end93908%_)
                     (let ((_%end93910%_ _%end93908%_))
                       (_%lp93886%_
                        (let () (declare (not safe)) (##fx+ _%end93910%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str93867%_
                                 _%start93892%_
                                 _%end93910%_))
                              _%r93889%_))))
                   _%$e93905%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start93892%_ _%len93884%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str93867%_
                                _%start93892%_
                                _%len93884%_)))
                       _%r93889%_)
                      (reverse! _%r93889%_))))))))
    (define string-join
      (lambda (_%strs93713%_ _%join93714%_)
        (letrec ((_%join-length93717%_
                  (lambda (_%strs93801%_ _%jlen93802%_)
                    (let _%lp93804%_ ((_%rest93806%_ _%strs93801%_)
                                      (_%len93807%_ '0))
                      (let* ((_%len93809%_ _%len93807%_)
                             (_%rest9381793825%_ _%rest93806%_)
                             (_%else9381993833%_ (lambda () '0))
                             (_%K9382193851%_
                              (lambda (_%rest93836%_ _%hd93837%_)
                                (if (string? _%hd93837%_)
                                    (let ((_%hd93839%_ _%hd93837%_))
                                      (if (pair? _%rest93836%_)
                                          (_%lp93804%_
                                           _%rest93836%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd93839%_))
                                                _%jlen93802%_
                                                _%len93809%_))
                                          (let ((__tmp98774
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd93839%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp98774 _%len93809%_))))
                                    (error '"expected string" _%hd93837%_)))))
                        (if (pair? _%rest9381793825%_)
                            (let ((_%hd9382293854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9381793825%_)))
                                  (_%tl9382393856%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9381793825%_))))
                              (let* ((_%hd93859%_ _%hd9382293854%_)
                                     (_%rest93861%_ _%tl9382393856%_))
                                (_%K9382193851%_ _%rest93861%_ _%hd93859%_)))
                            (_%else9381993833%_)))))))
          (let* ((_%join93722%_
                  (if (char? _%join93714%_)
                      (let () (declare (not safe)) (##string _%join93714%_))
                      (if (string? _%join93714%_)
                          _%join93714%_
                          (error '"expected string or char" _%join93714%_))))
                 (_%jlen93724%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join93722%_)))
                 (_%olen93726%_
                  (_%join-length93717%_ _%strs93713%_ _%jlen93724%_))
                 (_%ostr93728%_
                  (let () (declare (not safe)) (##make-string _%olen93726%_))))
            (let _%lp93731%_ ((_%rest93733%_ _%strs93713%_) (_%k93734%_ '0))
              (let* ((_%k93737%_ _%k93734%_)
                     (_%rest9375393761%_ _%rest93733%_)
                     (_%else9375593769%_ (lambda () '""))
                     (_%K9375793789%_
                      (lambda (_%rest93772%_ _%hd93773%_)
                        (let* ((_%hd93775%_ _%hd93773%_)
                               (_%hdlen93787%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd93775%_))))
                          (if (pair? _%rest93772%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd93775%_
                                   '0
                                   _%hdlen93787%_
                                   _%ostr93728%_
                                   _%k93737%_))
                                (let ((__tmp98775
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k93737%_ _%hdlen93787%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join93722%_
                                   '0
                                   _%jlen93724%_
                                   _%ostr93728%_
                                   __tmp98775))
                                (_%lp93731%_
                                 _%rest93772%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k93737%_
                                          _%hdlen93787%_
                                          _%jlen93724%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd93775%_
                                   '0
                                   _%hdlen93787%_
                                   _%ostr93728%_
                                   _%k93737%_))
                                _%ostr93728%_))))))
                (if (pair? _%rest9375393761%_)
                    (let ((_%hd9375893792%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9375393761%_)))
                          (_%tl9375993794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9375393761%_))))
                      (let* ((_%hd93797%_ _%hd9375893792%_)
                             (_%rest93799%_ _%tl9375993794%_))
                        (_%K9375793789%_ _%rest93799%_ _%hd93797%_)))
                    (_%else9375593769%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes93639%_ _%port93640%_ _%start93641%_ _%end93642%_)
        (if (u8vector? _%bytes93639%_)
            (let ((_%bytes93646%_ _%bytes93639%_))
              (if (input-port? _%port93640%_)
                  (let ((_%port93656%_ _%port93640%_))
                    (if ((lambda (_%o93665%_)
                           (and (fixnum? _%o93665%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o93665%_ '0))
                                (let ((__tmp98776
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes93646%_))))
                                  (declare (not safe))
                                  (##fx< _%o93665%_ __tmp98776))))
                         _%start93641%_)
                        (let ((_%start93669%_ _%start93641%_))
                          (if ((lambda (_%o93678%_)
                                 (and (fixnum? _%o93678%_)
                                      (let ((__tmp98777
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes93646%_))))
                                        (declare (not safe))
                                        (##fx<= _%start93669%_
                                                _%o93678%_
                                                __tmp98777))))
                               _%end93642%_)
                              (let ((_%end93682%_ _%end93642%_))
                                (__read-u8vector__%
                                 _%bytes93646%_
                                 _%port93656%_
                                 _%start93669%_
                                 _%end93682%_))
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
                                 _%end93642%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start93641%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port93640%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes93639%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes93695%_ _%port93696%_)
        (let* ((_%start93698%_ '0)
               (_%end93700%_ (u8vector-length _%bytes93695%_)))
          (read-u8vector__%
           _%bytes93695%_
           _%port93696%_
           _%start93698%_
           _%end93700%_))))
    (define read-u8vector__1
      (lambda (_%bytes93702%_ _%port93703%_ _%start93704%_)
        (let ((_%end93706%_ (u8vector-length _%bytes93702%_)))
          (read-u8vector__%
           _%bytes93702%_
           _%port93703%_
           _%start93704%_
           _%end93706%_))))
    (define read-u8vector
      (lambda _g98778_
        (let ((_g98779_ (let () (declare (not safe)) (##length _g98778_))))
          (cond ((let () (declare (not safe)) (##fx= _g98779_ 2))
                 (apply read-u8vector__0 _g98778_))
                ((let () (declare (not safe)) (##fx= _g98779_ 3))
                 (apply read-u8vector__1 _g98778_))
                ((let () (declare (not safe)) (##fx= _g98779_ 4))
                 (apply read-u8vector__% _g98778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g98778_))))))
    (define __read-u8vector__%
      (lambda (_%bytes93578%_ _%port93579%_ _%start93580%_ _%end93581%_)
        (let* ((_%bytes93584%_ _%bytes93578%_)
               (_%port93592%_ _%port93579%_)
               (_%start93600%_ _%start93580%_)
               (_%end93608%_ _%end93581%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes93584%_
           _%start93600%_
           _%end93608%_
           _%port93592%_))))
    (define __read-u8vector__0
      (lambda (_%bytes93620%_ _%port93621%_)
        (let* ((_%start93623%_ '0)
               (_%end93625%_ (u8vector-length _%bytes93620%_)))
          (__read-u8vector__%
           _%bytes93620%_
           _%port93621%_
           _%start93623%_
           _%end93625%_))))
    (define __read-u8vector__1
      (lambda (_%bytes93627%_ _%port93628%_ _%start93629%_)
        (let ((_%end93631%_ (u8vector-length _%bytes93627%_)))
          (__read-u8vector__%
           _%bytes93627%_
           _%port93628%_
           _%start93629%_
           _%end93631%_))))
    (define __read-u8vector
      (lambda _g98780_
        (let ((_g98781_ (let () (declare (not safe)) (##length _g98780_))))
          (cond ((let () (declare (not safe)) (##fx= _g98781_ 2))
                 (apply __read-u8vector__0 _g98780_))
                ((let () (declare (not safe)) (##fx= _g98781_ 3))
                 (apply __read-u8vector__1 _g98780_))
                ((let () (declare (not safe)) (##fx= _g98781_ 4))
                 (apply __read-u8vector__% _g98780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g98780_))))))
    (define write-u8vector__%
      (lambda (_%bytes93508%_ _%port93509%_ _%start93510%_ _%end93511%_)
        (if (u8vector? _%bytes93508%_)
            (let ((_%bytes93515%_ _%bytes93508%_))
              (if (output-port? _%port93509%_)
                  (let* ((_%port93525%_ _%port93509%_)
                         (_%start93534%_ _%start93510%_))
                    (if ((lambda (_%o93542%_)
                           (and (fixnum? _%o93542%_)
                                (let ((__tmp98782
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes93515%_))))
                                  (declare (not safe))
                                  (##fx<= _%start93534%_
                                          _%o93542%_
                                          __tmp98782))))
                         _%end93511%_)
                        (let ((_%end93546%_ _%end93511%_))
                          (__write-u8vector__%
                           _%bytes93515%_
                           _%port93525%_
                           _%start93534%_
                           _%end93546%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end93511%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port93509%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes93508%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes93559%_ _%port93560%_)
        (let* ((_%start93562%_ '0)
               (_%end93564%_ (u8vector-length _%bytes93559%_)))
          (write-u8vector__%
           _%bytes93559%_
           _%port93560%_
           _%start93562%_
           _%end93564%_))))
    (define write-u8vector__1
      (lambda (_%bytes93566%_ _%port93567%_ _%start93568%_)
        (let ((_%end93570%_ (u8vector-length _%bytes93566%_)))
          (write-u8vector__%
           _%bytes93566%_
           _%port93567%_
           _%start93568%_
           _%end93570%_))))
    (define write-u8vector
      (lambda _g98783_
        (let ((_g98784_ (let () (declare (not safe)) (##length _g98783_))))
          (cond ((let () (declare (not safe)) (##fx= _g98784_ 2))
                 (apply write-u8vector__0 _g98783_))
                ((let () (declare (not safe)) (##fx= _g98784_ 3))
                 (apply write-u8vector__1 _g98783_))
                ((let () (declare (not safe)) (##fx= _g98784_ 4))
                 (apply write-u8vector__% _g98783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g98783_))))))
    (define __write-u8vector__%
      (lambda (_%bytes93447%_ _%port93448%_ _%start93449%_ _%end93450%_)
        (let* ((_%bytes93453%_ _%bytes93447%_)
               (_%port93461%_ _%port93448%_)
               (_%start93469%_ _%start93449%_)
               (_%end93477%_ _%end93450%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes93453%_
           _%start93469%_
           _%end93477%_
           _%port93461%_))))
    (define __write-u8vector__0
      (lambda (_%bytes93489%_ _%port93490%_)
        (let* ((_%start93492%_ '0)
               (_%end93494%_ (u8vector-length _%bytes93489%_)))
          (__write-u8vector__%
           _%bytes93489%_
           _%port93490%_
           _%start93492%_
           _%end93494%_))))
    (define __write-u8vector__1
      (lambda (_%bytes93496%_ _%port93497%_ _%start93498%_)
        (let ((_%end93500%_ (u8vector-length _%bytes93496%_)))
          (__write-u8vector__%
           _%bytes93496%_
           _%port93497%_
           _%start93498%_
           _%end93500%_))))
    (define __write-u8vector
      (lambda _g98785_
        (let ((_g98786_ (let () (declare (not safe)) (##length _g98785_))))
          (cond ((let () (declare (not safe)) (##fx= _g98786_ 2))
                 (apply __write-u8vector__0 _g98785_))
                ((let () (declare (not safe)) (##fx= _g98786_ 3))
                 (apply __write-u8vector__1 _g98785_))
                ((let () (declare (not safe)) (##fx= _g98786_ 4))
                 (apply __write-u8vector__% _g98785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g98785_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag93415%_
               _%dbg-exprs93416%_
               _%dbg-thunks93417%_
               _%expr93418%_
               _%thunk93419%_)
        (letrec ((_%o93421%_ (current-output-port))
                 (_%e93422%_ (current-error-port))
                 (_%p93423%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f93424%_
                  (lambda ()
                    (force-output _%o93421%_)
                    (force-output _%e93422%_)))
                 (_%d93425%_
                  (lambda (_%x93432%_) (display _%x93432%_ _%e93422%_)))
                 (_%w93426%_
                  (lambda (_%x93434%_) (_%p93423%_ _%x93434%_ _%e93422%_)))
                 (_%n93427%_ (lambda () (newline _%e93422%_)))
                 (_%v93428%_
                  (lambda (_%l93437%_)
                    (for-each
                     (lambda (_%x93439%_)
                       (_%d93425%_ '" ")
                       (_%w93426%_ _%x93439%_))
                     _%l93437%_)
                    (_%n93427%_)))
                 (_%x93429%_
                  (lambda (_%expr93441%_ _%thunk93442%_)
                    (_%f93424%_)
                    (_%d93425%_ '"  ")
                    (_%w93426%_ _%expr93441%_)
                    (_%d93425%_ '" =>")
                    (call-with-values
                     _%thunk93442%_
                     (lambda _%x93444%_
                       (_%v93428%_ _%x93444%_)
                       (_%f93424%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x93444%_)))))))
          (if _%tag93415%_
              (begin
                (if (eq? _%tag93415%_ '#!void)
                    '#!void
                    (begin
                      (_%f93424%_)
                      (_%d93425%_ _%tag93415%_)
                      (_%n93427%_)))
                (for-each _%x93429%_ _%dbg-exprs93416%_ _%dbg-thunks93417%_)
                (if _%thunk93419%_
                    (_%x93429%_ _%expr93418%_ _%thunk93419%_)
                    '#!void))
              (if _%thunk93419%_ (_%thunk93419%_) '#!void)))))))
