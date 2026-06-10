(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1781119030)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args99252%_
        (let () (for-each display _%args99252%_) (newline))))
    (define display* (lambda _%args99249%_ (for-each display _%args99249%_)))
    (define __file-newer?
      (lambda (_%file199040%_ _%file299041%_)
        (let* ((_%file199044%_ _%file199040%_) (_%file299052%_ _%file299041%_))
          (letrec ((_%__modification-time99196%_
                    (lambda (_%file99237%_)
                      (let ((_%file99240%_ _%file99237%_))
                        (time->seconds
                         (file-info-last-modification-time
                          (file-info _%file99240%_ '#t))))))
                   (_%modification-time99197%_
                    (lambda (_%file99225%_)
                      (let ((_%file99228%_ _%file99225%_))
                        (_%__modification-time99196%_ _%file99228%_)))))
            (fl> (let* ((_%file99199%_ _%file199044%_)
                        (_%file99203%_ _%file99199%_))
                   (_%__modification-time99196%_ _%file99203%_))
                 (let* ((_%file99212%_ _%file299052%_)
                        (_%file99216%_ _%file99212%_))
                   (_%__modification-time99196%_ _%file99216%_)))))))
    (define file-newer?
      (lambda (_%file199015%_ _%file299016%_)
        (if (string? _%file199015%_)
            (let ((_%file199020%_ _%file199015%_))
              (if (string? _%file299016%_)
                  (let ((_%file299030%_ _%file299016%_))
                    (__file-newer? _%file199020%_ _%file299030%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file299016%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file199015%_)
              (void)))))
    (define __create-directory*
      (let ((_%$%opt-lambda9873399005%_
             (lambda (_%dir98735%_ _%perms98736%_)
               (let* ((_%dir98739%_ _%dir98735%_)
                      (_%perms98747%_ _%perms98736%_))
                 (letrec ((_%__create198891%_
                           (lambda (_%path98990%_)
                             (let ((_%path98993%_ _%path98990%_))
                               (if (file-exists? _%path98993%_)
                                   (if (eq? (file-type _%path98993%_)
                                            'directory)
                                       '#!void
                                       (error '"Path component is not a directory"
                                              _%path98993%_))
                                   (if _%perms98747%_
                                       (create-directory
                                        (cons 'path:
                                              (cons _%path98993%_
                                                    (cons 'permissions:
                                                          (cons _%perms98747%_
                                                                '())))))
                                       (create-directory _%path98993%_))))))
                          (_%create198892%_
                           (lambda (_%path98978%_)
                             (let ((_%path98981%_ _%path98978%_))
                               (_%__create198891%_ _%path98981%_)))))
                   (if (file-exists? _%dir98739%_)
                       '#!void
                       (let _%lp98894%_ ((_%start98896%_ '0))
                         (let ((_%$e98943%_
                                (let* ((_%str98898%_ _%dir98739%_)
                                       (_%char98901%_ '#\/)
                                       (_%start98904%_ _%start98896%_))
                                  (if (string? _%str98898%_)
                                      (let ((_%str98909%_ _%str98898%_))
                                        (if (char? _%char98901%_)
                                            (let ((_%char98923%_
                                                   _%char98901%_))
                                              (if (nonnegative-fixnum?
                                                   _%start98904%_)
                                                  (let ((_%start98933%_
                                                         _%start98904%_))
                                                    (__string-index
                                                     _%str98909%_
                                                     _%char98923%_
                                                     _%start98933%_))
                                                  (begin
                                                    (raise-contract-violation-error
                                                     '"contract violation"
                                                     'context:
                                                     'gerbil/runtime/util
                                                     'contract:
                                                     'nonnegative-fixnum?
                                                     'value:
                                                     _%start98904%_)
                                                    (void))))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               'gerbil/runtime/util
                                               'contract:
                                               'char?
                                               'value:
                                               _%char98901%_)
                                              (void))))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/util
                                         'contract:
                                         'string?
                                         'value:
                                         _%str98898%_)
                                        (void))))))
                           (if _%$e98943%_
                               ((lambda (_%x98946%_)
                                  (if (fx> _%x98946%_ '0)
                                      (let* ((_%path98948%_
                                              (substring
                                               _%dir98739%_
                                               '0
                                               _%x98946%_))
                                             (_%path98952%_ _%path98948%_))
                                        (_%__create198891%_ _%path98952%_))
                                      '#!void)
                                  (_%lp98894%_ (fx+ _%x98946%_ '1)))
                                _%$e98943%_)
                               (let* ((_%path98964%_ _%dir98739%_)
                                      (_%path98968%_ _%path98964%_))
                                 (_%__create198891%_ _%path98968%_))))))
                   (void))))))
        (lambda _g99254_
          (let ((_g99255_ (let () (declare (not safe)) (##length _g99254_))))
            (cond ((let () (declare (not safe)) (##fx= _g99255_ 1))
                   (apply (lambda (_%dir99008%_)
                            (let ((_%perms99010%_ '493))
                              (_%$%opt-lambda9873399005%_
                               _%dir99008%_
                               _%perms99010%_)))
                          _g99254_))
                  ((let () (declare (not safe)) (##fx= _g99255_ 2))
                   (apply _%$%opt-lambda9873399005%_ _g99254_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __create-directory*
                    _g99254_)))))))
    (define create-directory*
      (let ((_%$%opt-lambda9869798724%_
             (lambda (_%dir98699%_ _%perms98700%_)
               (if (string? _%dir98699%_)
                   (let ((_%dir98704%_ _%dir98699%_))
                     (if (fixnum? _%perms98700%_)
                         (let ((_%perms98714%_ _%perms98700%_))
                           (__create-directory* _%dir98704%_ _%perms98714%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                            'contract:
                            'fixnum?
                            'value:
                            _%perms98700%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@85.26-85.29"
                      'contract:
                      'string?
                      'value:
                      _%dir98699%_)
                     (void))))))
        (lambda _g99256_
          (let ((_g99257_ (let () (declare (not safe)) (##length _g99256_))))
            (cond ((let () (declare (not safe)) (##fx= _g99257_ 1))
                   (apply (lambda (_%dir98727%_)
                            (let ((_%perms98729%_ '493))
                              (_%$%opt-lambda9869798724%_
                               _%dir98727%_
                               _%perms98729%_)))
                          _g99256_))
                  ((let () (declare (not safe)) (##fx= _g99257_ 2))
                   (apply _%$%opt-lambda9869798724%_ _g99256_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    create-directory*
                    _g99256_)))))))
    (define __move-file
      (let ((_%$%opt-lambda9864098686%_
             (lambda (_%src98642%_ _%dest98643%_ _%replace?98644%_)
               (let* ((_%src98647%_ _%src98642%_)
                      (_%dest98655%_ _%dest98643%_)
                      (_%replace?98663%_ _%replace?98644%_))
                 (letrec ((_%force-move-it98672%_
                           (lambda ()
                             (let ((_%tmp98678%_
                                    (if _%replace?98663%_
                                        (if (file-exists? _%dest98655%_)
                                            (string-append
                                             _%dest98655%_
                                             '"."
                                             (number->string
                                              (let ()
                                                (declare (not safe))
                                                (##current-time-point))))
                                            '#f)
                                        '#f)))
                               (if _%tmp98678%_
                                   (rename-file _%dest98655%_ _%tmp98678%_)
                                   '#!void)
                               (with-exception-catcher
                                (lambda (_%e98680%_)
                                  (if _%tmp98678%_
                                      (rename-file
                                       _%tmp98678%_
                                       _%dest98655%_
                                       '#t)
                                      '#!void)
                                  (raise _%e98680%_))
                                (lambda ()
                                  (let ((_%fi98683%_
                                         (file-info _%src98647%_ '#f)))
                                    (if (eq? (file-info-type _%fi98683%_)
                                             'symbolic-link)
                                        (create-symbolic-link
                                         (path-normalize _%src98647%_)
                                         _%dest98655%_)
                                        (copy-file
                                         _%src98647%_
                                         _%dest98655%_)))
                                  (delete-file _%src98647%_)
                                  (if _%tmp98678%_
                                      (with-exception-catcher
                                       void
                                       (lambda () (delete-file _%tmp98678%_)))
                                      '#!void)))))))
                   (with-exception-catcher
                    (lambda (_%e98674%_)
                      (if (file-exists? _%src98647%_)
                          (_%force-move-it98672%_)
                          (raise _%e98674%_)))
                    (lambda ()
                      (rename-file
                       _%src98647%_
                       _%dest98655%_
                       _%replace?98663%_)))
                   (void))))))
        (lambda _g99258_
          (let ((_g99259_ (let () (declare (not safe)) (##length _g99258_))))
            (cond ((let () (declare (not safe)) (##fx= _g99259_ 2))
                   (apply (lambda (_%src98689%_ _%dest98690%_)
                            (let ((_%replace?98692%_ '#t))
                              (_%$%opt-lambda9864098686%_
                               _%src98689%_
                               _%dest98690%_
                               _%replace?98692%_)))
                          _g99258_))
                  ((let () (declare (not safe)) (##fx= _g99259_ 3))
                   (apply _%$%opt-lambda9864098686%_ _g99258_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __move-file
                    _g99258_)))))))
    (define move-file
      (let ((_%$%opt-lambda9859198629%_
             (lambda (_%src98593%_ _%dest98594%_ _%replace?98595%_)
               (if (string? _%src98593%_)
                   (let ((_%src98599%_ _%src98593%_))
                     (if (string? _%dest98594%_)
                         (let ((_%dest98609%_ _%dest98594%_))
                           (if (boolean? _%replace?98595%_)
                               (let ((_%replace?98619%_ _%replace?98595%_))
                                 (__move-file
                                  _%src98599%_
                                  _%dest98609%_
                                  _%replace?98619%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                                  'contract:
                                  'boolean?
                                  'value:
                                  _%replace?98595%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                            'contract:
                            'string?
                            'value:
                            _%dest98594%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@110.18-110.21"
                      'contract:
                      'string?
                      'value:
                      _%src98593%_)
                     (void))))))
        (lambda _g99260_
          (let ((_g99261_ (let () (declare (not safe)) (##length _g99260_))))
            (cond ((let () (declare (not safe)) (##fx= _g99261_ 2))
                   (apply (lambda (_%src98632%_ _%dest98633%_)
                            (let ((_%replace?98635%_ '#t))
                              (_%$%opt-lambda9859198629%_
                               _%src98632%_
                               _%dest98633%_
                               _%replace?98635%_)))
                          _g99260_))
                  ((let () (declare (not safe)) (##fx= _g99261_ 3))
                   (apply _%$%opt-lambda9859198629%_ _g99260_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    move-file
                    _g99260_)))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore98589%_ '#t))
    (define true? (lambda (_%obj98586%_) (eq? _%obj98586%_ '#t)))
    (define false (lambda _%ignore98583%_ '#f))
    (define void (lambda _%ignore98580%_ '#!void))
    (define void? (lambda (_%obj98577%_) (eq? _%obj98577%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj98574%_)
        (if (memq _%obj98574%_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object? (lambda (_%obj98571%_) (eq? _%obj98571%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj98568%_) (eq? _%obj98568%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj98565%_) (eq? _%obj98565%_ '#!optional)))
    (define immediate?
      (lambda (_%obj98562%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj98562%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj98559%_)
        (if (fixnum? _%obj98559%_)
            (let () (declare (not safe)) (##fx>= _%obj98559%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj98553%_)
        (let ((_%$e98556%_ (pair? _%obj98553%_)))
          (if _%$e98556%_ _%$e98556%_ (null? _%obj98553%_)))))
    (define values-count
      (lambda (_%obj98550%_)
        (if (let () (declare (not safe)) (##values? _%obj98550%_))
            (let () (declare (not safe)) (##values-length _%obj98550%_))
            '1)))
    (define __values-ref
      (lambda (_%obj98537%_ _%k98538%_)
        (let ((_%k98541%_ _%k98538%_))
          (if (let () (declare (not safe)) (##values? _%obj98537%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj98537%_ _%k98541%_))
              _%obj98537%_))))
    (define values-ref
      (lambda (_%obj98522%_ _%k98523%_)
        (if (fixnum? _%k98523%_)
            (let ((_%k98527%_ _%k98523%_))
              (__values-ref _%obj98522%_ _%k98527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k98523%_)
              (void)))))
    (define values->list
      (lambda (_%obj98519%_)
        (if (let () (declare (not safe)) (##values? _%obj98519%_))
            (let () (declare (not safe)) (##values->list _%obj98519%_))
            (list _%obj98519%_))))
    (define __foldl1
      (lambda (_%f98467%_ _%iv98468%_ _%lst98469%_)
        (let ((_%f98472%_ _%f98467%_))
          (let _%lp98481%_ ((_%rest98483%_ _%lst98469%_)
                            (_%r98484%_ _%iv98468%_))
            (let* ((_%$%rest9848598493%_ _%rest98483%_)
                   (_%$%E9848898497%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9848598493%_
                             '([x . rest])
                             'else)
                      (void)))
                   (_%$%else9848798501%_ (lambda () _%r98484%_))
                   (_%$%K9848998507%_
                    (lambda (_%rest98504%_ _%x98505%_)
                      (_%lp98481%_
                       _%rest98504%_
                       (_%f98472%_ _%x98505%_ _%r98484%_)))))
              (if (pair? _%$%rest9848598493%_)
                  (let ((_%$%hd9849098510%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9848598493%_)))
                        (_%$%tl9849198512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9848598493%_))))
                    (let* ((_%x98515%_ _%$%hd9849098510%_)
                           (_%rest98517%_ _%$%tl9849198512%_))
                      (_%$%K9848998507%_ _%rest98517%_ _%x98515%_)))
                  (_%$%else9848798501%_)))))))
    (define foldl1
      (lambda (_%f98451%_ _%iv98452%_ _%lst98453%_)
        (if (procedure? _%f98451%_)
            (let ((_%f98457%_ _%f98451%_))
              (__foldl1 _%f98457%_ _%iv98452%_ _%lst98453%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f98451%_)
              (void)))))
    (define __foldl2
      (lambda (_%f98364%_ _%iv98365%_ _%lst198366%_ _%lst298367%_)
        (let ((_%f98370%_ _%f98364%_))
          (let _%lp98379%_ ((_%rest198381%_ _%lst198366%_)
                            (_%rest298382%_ _%lst298367%_)
                            (_%r98383%_ _%iv98365%_))
            (let* ((_%$%rest19838498392%_ _%rest198381%_)
                   (_%$%E9838798396%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest19838498392%_
                             '([x1 . rest1])
                             'else)
                      (void)))
                   (_%$%else9838698400%_ (lambda () _%r98383%_))
                   (_%$%K9838898439%_
                    (lambda (_%rest198403%_ _%x198404%_)
                      (let* ((_%$%rest29840598413%_ _%rest298382%_)
                             (_%$%E9840898417%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest29840598413%_
                                       '([x2 . rest2])
                                       'else)
                                (void)))
                             (_%$%else9840798421%_ (lambda () _%r98383%_))
                             (_%$%K9840998427%_
                              (lambda (_%rest298424%_ _%x298425%_)
                                (_%lp98379%_
                                 _%rest198403%_
                                 _%rest298424%_
                                 (_%f98370%_
                                  _%x198404%_
                                  _%x298425%_
                                  _%r98383%_)))))
                        (if (pair? _%$%rest29840598413%_)
                            (let ((_%$%hd9841098430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest29840598413%_)))
                                  (_%$%tl9841198432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest29840598413%_))))
                              (let* ((_%x298435%_ _%$%hd9841098430%_)
                                     (_%rest298437%_ _%$%tl9841198432%_))
                                (_%$%K9840998427%_
                                 _%rest298437%_
                                 _%x298435%_)))
                            (_%$%else9840798421%_))))))
              (if (pair? _%$%rest19838498392%_)
                  (let ((_%$%hd9838998442%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest19838498392%_)))
                        (_%$%tl9839098444%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest19838498392%_))))
                    (let* ((_%x198447%_ _%$%hd9838998442%_)
                           (_%rest198449%_ _%$%tl9839098444%_))
                      (_%$%K9838898439%_ _%rest198449%_ _%x198447%_)))
                  (_%$%else9838698400%_)))))))
    (define foldl2
      (lambda (_%f98347%_ _%iv98348%_ _%lst198349%_ _%lst298350%_)
        (if (procedure? _%f98347%_)
            (let ((_%f98354%_ _%f98347%_))
              (__foldl2 _%f98354%_ _%iv98348%_ _%lst198349%_ _%lst298350%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f98347%_)
              (void)))))
    (define foldl
      (lambda _g99262_
        (let ((_g99263_ (let () (declare (not safe)) (##length _g99262_))))
          (cond ((let () (declare (not safe)) (##fx= _g99263_ 3))
                 (apply (lambda (_%f98280%_ _%iv98281%_ _%lst98282%_)
                          (let* ((_%f98284%_ _%f98280%_)
                                 (_%iv98287%_ _%iv98281%_)
                                 (_%lst98290%_ _%lst98282%_))
                            (if (procedure? _%f98284%_)
                                (let ((_%f98295%_ _%f98284%_))
                                  (__foldl1
                                   _%f98295%_
                                   _%iv98287%_
                                   _%lst98290%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f98284%_)
                                  (void)))))
                        _g99262_))
                ((let () (declare (not safe)) (##fx= _g99263_ 4))
                 (apply (lambda (_%f98308%_
                                 _%iv98309%_
                                 _%lst198310%_
                                 _%lst298311%_)
                          (let* ((_%f98313%_ _%f98308%_)
                                 (_%iv98316%_ _%iv98309%_)
                                 (_%lst198319%_ _%lst198310%_)
                                 (_%lst298322%_ _%lst298311%_))
                            (if (procedure? _%f98313%_)
                                (let ((_%f98327%_ _%f98313%_))
                                  (__foldl2
                                   _%f98327%_
                                   _%iv98316%_
                                   _%lst198319%_
                                   _%lst298322%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f98313%_)
                                  (void)))))
                        _g99262_))
                ((let () (declare (not safe)) (##fx>= _g99263_ 4))
                 (apply foldl* _g99262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g99262_))))))
    (define __foldl*
      (lambda (_%f98211%_ _%iv98212%_ . _%rest98213%_)
        (let ((_%f98216%_ _%f98211%_))
          (let _%recur98225%_ ((_%iv98227%_ _%iv98212%_)
                               (_%rest98228%_ _%rest98213%_))
            (if (let* ((_%f98230%_ pair?) (_%lst98233%_ _%rest98228%_))
                  (if (procedure? _%f98230%_)
                      (let ((_%f98238%_ _%f98230%_))
                        (__andmap1 _%f98238%_ _%lst98233%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%f98230%_)
                        (void))))
                (_%recur98225%_
                 (apply _%f98216%_
                        (let* ((_%f98257%_
                                (lambda (_%xs98254%_ _%r98255%_)
                                  (cons (car _%xs98254%_) _%r98255%_)))
                               (_%iv98260%_ (list _%iv98227%_))
                               (_%lst98263%_ _%rest98228%_))
                          (if (procedure? _%f98257%_)
                              (let ((_%f98268%_ _%f98257%_))
                                (__foldr1 _%f98268%_ _%iv98260%_ _%lst98263%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/util
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%f98257%_)
                                (void)))))
                 (map cdr _%rest98228%_))
                _%iv98227%_)))))
    (define foldl*
      (lambda (_%f98195%_ _%iv98196%_ . _%rest98197%_)
        (if (procedure? _%f98195%_)
            (let ((_%f98201%_ _%f98195%_))
              (declare (not safe))
              (##apply __foldl* _%f98201%_ _%iv98196%_ _%rest98197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f98195%_)
              (void)))))
    (define __foldr1
      (lambda (_%f98144%_ _%iv98145%_ _%lst98146%_)
        (let ((_%f98149%_ _%f98144%_))
          (let _%recur98158%_ ((_%rest98160%_ _%lst98146%_))
            (let* ((_%$%rest9816198169%_ _%rest98160%_)
                   (_%$%E9816498173%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9816198169%_
                             '([x . rest])
                             'else)
                      (void)))
                   (_%$%else9816398177%_ (lambda () _%iv98145%_))
                   (_%$%K9816598183%_
                    (lambda (_%rest98180%_ _%x98181%_)
                      (_%f98149%_ _%x98181%_ (_%recur98158%_ _%rest98180%_)))))
              (if (pair? _%$%rest9816198169%_)
                  (let ((_%$%hd9816698186%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9816198169%_)))
                        (_%$%tl9816798188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9816198169%_))))
                    (let* ((_%x98191%_ _%$%hd9816698186%_)
                           (_%rest98193%_ _%$%tl9816798188%_))
                      (_%$%K9816598183%_ _%rest98193%_ _%x98191%_)))
                  (_%$%else9816398177%_)))))))
    (define foldr1
      (lambda (_%f98128%_ _%iv98129%_ _%lst98130%_)
        (if (procedure? _%f98128%_)
            (let ((_%f98134%_ _%f98128%_))
              (__foldr1 _%f98134%_ _%iv98129%_ _%lst98130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f98128%_)
              (void)))))
    (define __foldr2
      (lambda (_%f98042%_ _%iv98043%_ _%lst198044%_ _%lst298045%_)
        (let ((_%f98048%_ _%f98042%_))
          (let _%recur98057%_ ((_%rest198059%_ _%lst198044%_)
                               (_%rest298060%_ _%lst298045%_))
            (let* ((_%$%rest19806198069%_ _%rest198059%_)
                   (_%$%E9806498073%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest19806198069%_
                             '([x1 . rest1])
                             'else)
                      (void)))
                   (_%$%else9806398077%_ (lambda () _%iv98043%_))
                   (_%$%K9806598116%_
                    (lambda (_%rest198080%_ _%x198081%_)
                      (let* ((_%$%rest29808298090%_ _%rest298060%_)
                             (_%$%E9808598094%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest29808298090%_
                                       '([x2 . rest2])
                                       'else)
                                (void)))
                             (_%$%else9808498098%_ (lambda () _%iv98043%_))
                             (_%$%K9808698104%_
                              (lambda (_%rest298101%_ _%x298102%_)
                                (_%f98048%_
                                 _%x198081%_
                                 _%x298102%_
                                 (_%recur98057%_
                                  _%rest198080%_
                                  _%rest298101%_)))))
                        (if (pair? _%$%rest29808298090%_)
                            (let ((_%$%hd9808798107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest29808298090%_)))
                                  (_%$%tl9808898109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest29808298090%_))))
                              (let* ((_%x298112%_ _%$%hd9808798107%_)
                                     (_%rest298114%_ _%$%tl9808898109%_))
                                (_%$%K9808698104%_
                                 _%rest298114%_
                                 _%x298112%_)))
                            (_%$%else9808498098%_))))))
              (if (pair? _%$%rest19806198069%_)
                  (let ((_%$%hd9806698119%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest19806198069%_)))
                        (_%$%tl9806798121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest19806198069%_))))
                    (let* ((_%x198124%_ _%$%hd9806698119%_)
                           (_%rest198126%_ _%$%tl9806798121%_))
                      (_%$%K9806598116%_ _%rest198126%_ _%x198124%_)))
                  (_%$%else9806398077%_)))))))
    (define foldr2
      (lambda (_%f98025%_ _%iv98026%_ _%lst198027%_ _%lst298028%_)
        (if (procedure? _%f98025%_)
            (let ((_%f98032%_ _%f98025%_))
              (__foldr2 _%f98032%_ _%iv98026%_ _%lst198027%_ _%lst298028%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f98025%_)
              (void)))))
    (define foldr
      (lambda _g99264_
        (let ((_g99265_ (let () (declare (not safe)) (##length _g99264_))))
          (cond ((let () (declare (not safe)) (##fx= _g99265_ 3))
                 (apply (lambda (_%f97958%_ _%iv97959%_ _%lst97960%_)
                          (let* ((_%f97962%_ _%f97958%_)
                                 (_%iv97965%_ _%iv97959%_)
                                 (_%lst97968%_ _%lst97960%_))
                            (if (procedure? _%f97962%_)
                                (let ((_%f97973%_ _%f97962%_))
                                  (__foldr1
                                   _%f97973%_
                                   _%iv97965%_
                                   _%lst97968%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97962%_)
                                  (void)))))
                        _g99264_))
                ((let () (declare (not safe)) (##fx= _g99265_ 4))
                 (apply (lambda (_%f97986%_
                                 _%iv97987%_
                                 _%lst197988%_
                                 _%lst297989%_)
                          (let* ((_%f97991%_ _%f97986%_)
                                 (_%iv97994%_ _%iv97987%_)
                                 (_%lst197997%_ _%lst197988%_)
                                 (_%lst298000%_ _%lst297989%_))
                            (if (procedure? _%f97991%_)
                                (let ((_%f98005%_ _%f97991%_))
                                  (__foldr2
                                   _%f98005%_
                                   _%iv97994%_
                                   _%lst197997%_
                                   _%lst298000%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97991%_)
                                  (void)))))
                        _g99264_))
                ((let () (declare (not safe)) (##fx>= _g99265_ 4))
                 (apply foldr* _g99264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g99264_))))))
    (define __foldr*
      (lambda (_%f97890%_ _%iv97891%_ . _%rest97892%_)
        (let ((_%f97895%_ _%f97890%_))
          (let _%recur97904%_ ((_%rest97906%_ _%rest97892%_))
            (if (let* ((_%f97908%_ pair?) (_%lst97911%_ _%rest97906%_))
                  (if (procedure? _%f97908%_)
                      (let ((_%f97916%_ _%f97908%_))
                        (__andmap1 _%f97916%_ _%lst97911%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%f97908%_)
                        (void))))
                (apply _%f97895%_
                       (let* ((_%f97935%_
                               (lambda (_%xs97932%_ _%r97933%_)
                                 (cons (car _%xs97932%_) _%r97933%_)))
                              (_%iv97938%_
                               (list (_%recur97904%_ (map cdr _%rest97906%_))))
                              (_%lst97941%_ _%rest97906%_))
                         (if (procedure? _%f97935%_)
                             (let ((_%f97946%_ _%f97935%_))
                               (__foldr1 _%f97946%_ _%iv97938%_ _%lst97941%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/util
                                'contract:
                                'procedure?
                                'value:
                                _%f97935%_)
                               (void)))))
                _%iv97891%_)))))
    (define foldr*
      (lambda (_%f97874%_ _%iv97875%_ . _%rest97876%_)
        (if (procedure? _%f97874%_)
            (let ((_%f97880%_ _%f97874%_))
              (declare (not safe))
              (##apply __foldr* _%f97880%_ _%iv97875%_ _%rest97876%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f97874%_)
              (void)))))
    (define remove-nulls!
      (lambda (_%l97761%_)
        (let* ((_%$%l9776297775%_ _%l97761%_)
               (_%$%E9776697779%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%l9776297775%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  (void)))
               (_%$%try-match9776597787%_
                (lambda ()
                  (let ((_%$%K9776797784%_ (lambda () _%l97761%_)))
                    (_%$%K9776797784%_))))
               (_%$%try-match9776497859%_
                (lambda ()
                  (let ((_%$%K9776897851%_
                         (lambda (_%r97791%_)
                           (let _%loop97793%_ ((_%l97795%_ _%l97761%_)
                                               (_%r97796%_ _%r97791%_))
                             (let* ((_%$%r9779797810%_ _%r97796%_)
                                    (_%$%E9780197814%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%r9779797810%_
                                              '([[] . rr])
                                              '([_ . rr])
                                              '(_))
                                       (void)))
                                    (_%$%try-match9780097822%_
                                     (lambda ()
                                       (let ((_%$%K9780297819%_
                                              (lambda () (void))))
                                         (_%$%K9780297819%_))))
                                    (_%$%try-match9779997836%_
                                     (lambda ()
                                       (let ((_%$%K9780397828%_
                                              (lambda (_%rr97826%_)
                                                (_%loop97793%_
                                                 _%r97796%_
                                                 _%rr97826%_))))
                                         (if (pair? _%$%r9779797810%_)
                                             (let* ((_%$%tl9780597831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%r9779797810%_)))
                                                    (_%rr97834%_
                                                     _%$%tl9780597831%_))
                                               (_%$%K9780397828%_ _%rr97834%_))
                                             (_%$%try-match9780097822%_)))))
                                    (_%$%K9780697841%_
                                     (lambda (_%rr97839%_)
                                       (set-cdr!
                                        _%l97795%_
                                        (remove-nulls! _%rr97839%_)))))
                               (if (pair? _%$%r9779797810%_)
                                   (let ((_%$%hd9780797844%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%r9779797810%_)))
                                         (_%$%tl9780897846%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%r9779797810%_))))
                                     (if (null? _%$%hd9780797844%_)
                                         (let ((_%rr97849%_
                                                _%$%tl9780897846%_))
                                           (_%$%K9780697841%_ _%rr97849%_))
                                         (_%$%try-match9779997836%_)))
                                   (_%$%try-match9779997836%_))))
                           _%l97761%_)))
                    (if (pair? _%$%l9776297775%_)
                        (let* ((_%$%tl9777097854%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%l9776297775%_)))
                               (_%r97857%_ _%$%tl9777097854%_))
                          (_%$%K9776897851%_ _%r97857%_))
                        (_%$%try-match9776597787%_)))))
               (_%$%K9777197864%_
                (lambda (_%r97862%_) (remove-nulls! _%r97862%_))))
          (if (pair? _%$%l9776297775%_)
              (let ((_%$%hd9777297867%_
                     (let () (declare (not safe)) (##car _%$%l9776297775%_)))
                    (_%$%tl9777397869%_
                     (let () (declare (not safe)) (##cdr _%$%l9776297775%_))))
                (if (null? _%$%hd9777297867%_)
                    (let ((_%r97872%_ _%$%tl9777397869%_))
                      (_%$%K9777197864%_ _%r97872%_))
                    (_%$%try-match9776497859%_)))
              (_%$%try-match9776497859%_)))))
    (define append1!
      (lambda (_%l97746%_ _%x97747%_)
        (let ((_%l297750%_ (cons _%x97747%_ '())))
          (if (pair? _%l97746%_)
              (let ((_%l97752%_ _%l97746%_))
                (set-cdr!
                 (let () (declare (not safe)) (##last-pair _%l97752%_))
                 _%l297750%_)
                _%l97752%_)
              _%l297750%_))))
    (define __append-reverse-until
      (lambda (_%pred97688%_ _%rhead97689%_ _%tail97690%_)
        (let ((_%pred97693%_ _%pred97688%_))
          (let _%loop97702%_ ((_%rhead97704%_ _%rhead97689%_)
                              (_%tail97705%_ _%tail97690%_))
            (let* ((_%$%rhead9770797716%_ _%rhead97704%_)
                   (_%$%E9771097720%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead9770797716%_
                             '([])
                             '([a :: r]))
                      (void)))
                   (_%$%try-match9770997739%_
                    (lambda ()
                      (let ((_%$%K9771197727%_
                             (lambda (_%r97724%_ _%a97725%_)
                               (if (_%pred97693%_ _%a97725%_)
                                   (values _%rhead97704%_ _%tail97705%_)
                                   (_%loop97702%_
                                    _%r97724%_
                                    (cons _%a97725%_ _%tail97705%_))))))
                        (if (pair? _%$%rhead9770797716%_)
                            (let ((_%$%hd9771297730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rhead9770797716%_)))
                                  (_%$%tl9771397732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rhead9770797716%_))))
                              (let* ((_%a97735%_ _%$%hd9771297730%_)
                                     (_%r97737%_ _%$%tl9771397732%_))
                                (_%$%K9771197727%_ _%r97737%_ _%a97735%_)))
                            (_%$%E9771097720%_)))))
                   (_%$%K9771497743%_ (lambda () (values '() _%tail97705%_))))
              (if (null? _%$%rhead9770797716%_)
                  (_%$%K9771497743%_)
                  (_%$%try-match9770997739%_)))))))
    (define append-reverse-until
      (lambda (_%pred97672%_ _%rhead97673%_ _%tail97674%_)
        (if (procedure? _%pred97672%_)
            (let ((_%pred97678%_ _%pred97672%_))
              (__append-reverse-until
               _%pred97678%_
               _%rhead97673%_
               _%tail97674%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@367.29-367.33"
               'contract:
               'procedure?
               'value:
               _%pred97672%_)
              (void)))))
    (define __andmap1
      (lambda (_%f97621%_ _%lst97622%_)
        (let ((_%f97625%_ _%f97621%_))
          (let _%lp97634%_ ((_%rest97636%_ _%lst97622%_))
            (let* ((_%$%rest9763897646%_ _%rest97636%_)
                   (_%$%E9764197650%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9763897646%_
                             '([x . rest])
                             'else)
                      (void)))
                   (_%$%else9764097654%_ (lambda () '#t))
                   (_%$%K9764297660%_
                    (lambda (_%rest97657%_ _%x97658%_)
                      (if (_%f97625%_ _%x97658%_)
                          (_%lp97634%_ _%rest97657%_)
                          '#f))))
              (if (pair? _%$%rest9763897646%_)
                  (let ((_%$%hd9764397663%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9763897646%_)))
                        (_%$%tl9764497665%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9763897646%_))))
                    (let* ((_%x97668%_ _%$%hd9764397663%_)
                           (_%rest97670%_ _%$%tl9764497665%_))
                      (_%$%K9764297660%_ _%rest97670%_ _%x97668%_)))
                  (_%$%else9764097654%_)))))))
    (define andmap1
      (lambda (_%f97606%_ _%lst97607%_)
        (if (procedure? _%f97606%_)
            (let ((_%f97611%_ _%f97606%_)) (__andmap1 _%f97611%_ _%lst97607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.16-378.17"
               'contract:
               'procedure?
               'value:
               _%f97606%_)
              (void)))))
    (define __andmap2
      (lambda (_%f97520%_ _%lst197521%_ _%lst297522%_)
        (let ((_%f97525%_ _%f97520%_))
          (let _%lp97534%_ ((_%rest197536%_ _%lst197521%_)
                            (_%rest297537%_ _%lst297522%_))
            (let* ((_%$%rest19753997547%_ _%rest197536%_)
                   (_%$%E9754297551%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest19753997547%_
                             '([x1 . rest1])
                             'else)
                      (void)))
                   (_%$%else9754197555%_ (lambda () '#t))
                   (_%$%K9754397594%_
                    (lambda (_%rest197558%_ _%x197559%_)
                      (let* ((_%$%rest29756097568%_ _%rest297537%_)
                             (_%$%E9756397572%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest29756097568%_
                                       '([x2 . rest2])
                                       'else)
                                (void)))
                             (_%$%else9756297576%_ (lambda () '#t))
                             (_%$%K9756497582%_
                              (lambda (_%rest297579%_ _%x297580%_)
                                (if (_%f97525%_ _%x197559%_ _%x297580%_)
                                    (_%lp97534%_ _%rest197558%_ _%rest297579%_)
                                    '#f))))
                        (if (pair? _%$%rest29756097568%_)
                            (let ((_%$%hd9756597585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest29756097568%_)))
                                  (_%$%tl9756697587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest29756097568%_))))
                              (let* ((_%x297590%_ _%$%hd9756597585%_)
                                     (_%rest297592%_ _%$%tl9756697587%_))
                                (_%$%K9756497582%_
                                 _%rest297592%_
                                 _%x297590%_)))
                            (_%$%else9756297576%_))))))
              (if (pair? _%$%rest19753997547%_)
                  (let ((_%$%hd9754497597%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest19753997547%_)))
                        (_%$%tl9754597599%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest19753997547%_))))
                    (let* ((_%x197602%_ _%$%hd9754497597%_)
                           (_%rest197604%_ _%$%tl9754597599%_))
                      (_%$%K9754397594%_ _%rest197604%_ _%x197602%_)))
                  (_%$%else9754197555%_)))))))
    (define andmap2
      (lambda (_%f97504%_ _%lst197505%_ _%lst297506%_)
        (if (procedure? _%f97504%_)
            (let ((_%f97510%_ _%f97504%_))
              (__andmap2 _%f97510%_ _%lst197505%_ _%lst297506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@387.16-387.17"
               'contract:
               'procedure?
               'value:
               _%f97504%_)
              (void)))))
    (define andmap
      (lambda _g99266_
        (let ((_g99267_ (let () (declare (not safe)) (##length _g99266_))))
          (cond ((let () (declare (not safe)) (##fx= _g99267_ 2))
                 (apply (lambda (_%f97448%_ _%lst97449%_)
                          (let* ((_%f97451%_ _%f97448%_)
                                 (_%lst97454%_ _%lst97449%_))
                            (if (procedure? _%f97451%_)
                                (let ((_%f97459%_ _%f97451%_))
                                  (__andmap1 _%f97459%_ _%lst97454%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97451%_)
                                  (void)))))
                        _g99266_))
                ((let () (declare (not safe)) (##fx= _g99267_ 3))
                 (apply (lambda (_%f97471%_ _%lst197472%_ _%lst297473%_)
                          (let* ((_%f97475%_ _%f97471%_)
                                 (_%lst197478%_ _%lst197472%_)
                                 (_%lst297481%_ _%lst297473%_))
                            (if (procedure? _%f97475%_)
                                (let ((_%f97486%_ _%f97475%_))
                                  (__andmap2
                                   _%f97486%_
                                   _%lst197478%_
                                   _%lst297481%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97475%_)
                                  (void)))))
                        _g99266_))
                ((let () (declare (not safe)) (##fx>= _g99267_ 3))
                 (apply andmap* _g99266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g99266_))))))
    (define __andmap*
      (lambda (_%f97405%_ . _%rest97406%_)
        (let ((_%f97409%_ _%f97405%_))
          (let _%recur97418%_ ((_%rest97420%_ _%rest97406%_))
            (if (let* ((_%f97423%_ pair?) (_%lst97426%_ _%rest97420%_))
                  (if (procedure? _%f97423%_)
                      (let ((_%f97431%_ _%f97423%_))
                        (__andmap1 _%f97431%_ _%lst97426%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%f97423%_)
                        (void))))
                (if (apply _%f97409%_ (map car _%rest97420%_))
                    (_%recur97418%_ (map cdr _%rest97420%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f97390%_ . _%rest97391%_)
        (if (procedure? _%f97390%_)
            (let ((_%f97395%_ _%f97390%_))
              (declare (not safe))
              (##apply __andmap* _%f97395%_ _%rest97391%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@407.16-407.17"
               'contract:
               'procedure?
               'value:
               _%f97390%_)
              (void)))))
    (define __ormap1
      (lambda (_%f97337%_ _%lst97338%_)
        (let ((_%f97341%_ _%f97337%_))
          (let _%lp97350%_ ((_%rest97352%_ _%lst97338%_))
            (let* ((_%$%rest9735397361%_ _%rest97352%_)
                   (_%$%E9735697365%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9735397361%_
                             '([x . rest])
                             'else)
                      (void)))
                   (_%$%else9735597369%_ (lambda () '#f))
                   (_%$%K9735797378%_
                    (lambda (_%rest97372%_ _%x97373%_)
                      (let ((_%$e97375%_ (_%f97341%_ _%x97373%_)))
                        (if _%$e97375%_
                            _%$e97375%_
                            (_%lp97350%_ _%rest97372%_))))))
              (if (pair? _%$%rest9735397361%_)
                  (let ((_%$%hd9735897381%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9735397361%_)))
                        (_%$%tl9735997383%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9735397361%_))))
                    (let* ((_%x97386%_ _%$%hd9735897381%_)
                           (_%rest97388%_ _%$%tl9735997383%_))
                      (_%$%K9735797378%_ _%rest97388%_ _%x97386%_)))
                  (_%$%else9735597369%_)))))))
    (define ormap1
      (lambda (_%f97322%_ _%lst97323%_)
        (if (procedure? _%f97322%_)
            (let ((_%f97327%_ _%f97322%_)) (__ormap1 _%f97327%_ _%lst97323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@416.15-416.16"
               'contract:
               'procedure?
               'value:
               _%f97322%_)
              (void)))))
    (define __ormap2
      (lambda (_%f97234%_ _%lst197235%_ _%lst297236%_)
        (let ((_%f97239%_ _%f97234%_))
          (let _%lp97248%_ ((_%rest197250%_ _%lst197235%_)
                            (_%rest297251%_ _%lst297236%_))
            (let* ((_%$%rest19725297260%_ _%rest197250%_)
                   (_%$%E9725597264%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest19725297260%_
                             '([x1 . rest1])
                             'else)
                      (void)))
                   (_%$%else9725497268%_ (lambda () '#f))
                   (_%$%K9725697310%_
                    (lambda (_%rest197271%_ _%x197272%_)
                      (let* ((_%$%rest29727397281%_ _%rest297251%_)
                             (_%$%E9727697285%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest29727397281%_
                                       '([x2 . rest2])
                                       'else)
                                (void)))
                             (_%$%else9727597289%_ (lambda () '#f))
                             (_%$%K9727797298%_
                              (lambda (_%rest297292%_ _%x297293%_)
                                (let ((_%$e97295%_
                                       (_%f97239%_ _%x197272%_ _%x297293%_)))
                                  (if _%$e97295%_
                                      _%$e97295%_
                                      (_%lp97248%_
                                       _%rest197271%_
                                       _%rest297292%_))))))
                        (if (pair? _%$%rest29727397281%_)
                            (let ((_%$%hd9727897301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest29727397281%_)))
                                  (_%$%tl9727997303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest29727397281%_))))
                              (let* ((_%x297306%_ _%$%hd9727897301%_)
                                     (_%rest297308%_ _%$%tl9727997303%_))
                                (_%$%K9727797298%_
                                 _%rest297308%_
                                 _%x297306%_)))
                            (_%$%else9727597289%_))))))
              (if (pair? _%$%rest19725297260%_)
                  (let ((_%$%hd9725797313%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest19725297260%_)))
                        (_%$%tl9725897315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest19725297260%_))))
                    (let* ((_%x197318%_ _%$%hd9725797313%_)
                           (_%rest197320%_ _%$%tl9725897315%_))
                      (_%$%K9725697310%_ _%rest197320%_ _%x197318%_)))
                  (_%$%else9725497268%_)))))))
    (define ormap2
      (lambda (_%f97218%_ _%lst197219%_ _%lst297220%_)
        (if (procedure? _%f97218%_)
            (let ((_%f97224%_ _%f97218%_))
              (__ormap2 _%f97224%_ _%lst197219%_ _%lst297220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@423.15-423.16"
               'contract:
               'procedure?
               'value:
               _%f97218%_)
              (void)))))
    (define ormap
      (lambda _g99268_
        (let ((_g99269_ (let () (declare (not safe)) (##length _g99268_))))
          (cond ((let () (declare (not safe)) (##fx= _g99269_ 2))
                 (apply (lambda (_%f97162%_ _%lst97163%_)
                          (let* ((_%f97165%_ _%f97162%_)
                                 (_%lst97168%_ _%lst97163%_))
                            (if (procedure? _%f97165%_)
                                (let ((_%f97173%_ _%f97165%_))
                                  (__ormap1 _%f97173%_ _%lst97168%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97165%_)
                                  (void)))))
                        _g99268_))
                ((let () (declare (not safe)) (##fx= _g99269_ 3))
                 (apply (lambda (_%f97185%_ _%lst197186%_ _%lst297187%_)
                          (let* ((_%f97189%_ _%f97185%_)
                                 (_%lst197192%_ _%lst197186%_)
                                 (_%lst297195%_ _%lst297187%_))
                            (if (procedure? _%f97189%_)
                                (let ((_%f97200%_ _%f97189%_))
                                  (__ormap2
                                   _%f97200%_
                                   _%lst197192%_
                                   _%lst297195%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f97189%_)
                                  (void)))))
                        _g99268_))
                ((let () (declare (not safe)) (##fx>= _g99269_ 3))
                 (apply ormap* _g99268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g99268_))))))
    (define __ormap*
      (lambda (_%f97118%_ . _%rest97119%_)
        (let ((_%f97122%_ _%f97118%_))
          (let _%recur97131%_ ((_%rest97133%_ _%rest97119%_))
            (if (let* ((_%f97135%_ pair?) (_%lst97138%_ _%rest97133%_))
                  (if (procedure? _%f97135%_)
                      (let ((_%f97143%_ _%f97135%_))
                        (__andmap1 _%f97143%_ _%lst97138%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%f97135%_)
                        (void))))
                (let ((_%$e97159%_ (apply _%f97122%_ (map car _%rest97133%_))))
                  (if _%$e97159%_
                      _%$e97159%_
                      (_%recur97131%_ (map cdr _%rest97133%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f97103%_ . _%rest97104%_)
        (if (procedure? _%f97103%_)
            (let ((_%f97108%_ _%f97103%_))
              (declare (not safe))
              (##apply __ormap* _%f97108%_ _%rest97104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@441.15-441.16"
               'contract:
               'procedure?
               'value:
               _%f97103%_)
              (void)))))
    (define __filter-map1
      (lambda (_%f97046%_ _%lst97047%_)
        (let ((_%f97050%_ _%f97046%_))
          (let _%recur97059%_ ((_%rest97061%_ _%lst97047%_))
            (let* ((_%$%rest9706397071%_ _%rest97061%_)
                   (_%$%E9706697075%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9706397071%_
                             '([x . rest])
                             'else)
                      (void)))
                   (_%$%else9706597079%_ (lambda () '()))
                   (_%$%K9706797091%_
                    (lambda (_%rest97082%_ _%x97083%_)
                      (let ((_%$e97085%_ (_%f97050%_ _%x97083%_)))
                        (if _%$e97085%_
                            ((lambda (_%r97088%_)
                               (cons _%r97088%_
                                     (_%recur97059%_ _%rest97082%_)))
                             _%$e97085%_)
                            (_%recur97059%_ _%rest97082%_))))))
              (if (pair? _%$%rest9706397071%_)
                  (let ((_%$%hd9706897094%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9706397071%_)))
                        (_%$%tl9706997096%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9706397071%_))))
                    (let* ((_%x97099%_ _%$%hd9706897094%_)
                           (_%rest97101%_ _%$%tl9706997096%_))
                      (_%$%K9706797091%_ _%rest97101%_ _%x97099%_)))
                  (_%$%else9706597079%_)))))))
    (define filter-map1
      (lambda (_%f97031%_ _%lst97032%_)
        (if (procedure? _%f97031%_)
            (let ((_%f97036%_ _%f97031%_))
              (__filter-map1 _%f97036%_ _%lst97032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@448.20-448.21"
               'contract:
               'procedure?
               'value:
               _%f97031%_)
              (void)))))
    (define __filter-map2
      (lambda (_%f96939%_ _%lst196940%_ _%lst296941%_)
        (let ((_%f96944%_ _%f96939%_))
          (let _%recur96953%_ ((_%rest196955%_ _%lst196940%_)
                               (_%rest296956%_ _%lst296941%_))
            (let* ((_%$%rest19695896966%_ _%rest196955%_)
                   (_%$%E9696196970%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest19695896966%_
                             '([x1 . rest1])
                             'else)
                      (void)))
                   (_%$%else9696096974%_ (lambda () '()))
                   (_%$%K9696297019%_
                    (lambda (_%rest196977%_ _%x196978%_)
                      (let* ((_%$%rest29697996987%_ _%rest296956%_)
                             (_%$%E9698296991%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest29697996987%_
                                       '([x2 . rest2])
                                       'else)
                                (void)))
                             (_%$%else9698196995%_ (lambda () '()))
                             (_%$%K9698397007%_
                              (lambda (_%rest296998%_ _%x296999%_)
                                (let ((_%$e97001%_
                                       (_%f96944%_ _%x196978%_ _%x296999%_)))
                                  (if _%$e97001%_
                                      ((lambda (_%r97004%_)
                                         (cons _%r97004%_
                                               (_%recur96953%_
                                                _%rest196977%_
                                                _%rest296998%_)))
                                       _%$e97001%_)
                                      (_%recur96953%_
                                       _%rest196977%_
                                       _%rest296998%_))))))
                        (if (pair? _%$%rest29697996987%_)
                            (let ((_%$%hd9698497010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest29697996987%_)))
                                  (_%$%tl9698597012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest29697996987%_))))
                              (let* ((_%x297015%_ _%$%hd9698497010%_)
                                     (_%rest297017%_ _%$%tl9698597012%_))
                                (_%$%K9698397007%_
                                 _%rest297017%_
                                 _%x297015%_)))
                            (_%$%else9698196995%_))))))
              (if (pair? _%$%rest19695896966%_)
                  (let ((_%$%hd9696397022%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest19695896966%_)))
                        (_%$%tl9696497024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest19695896966%_))))
                    (let* ((_%x197027%_ _%$%hd9696397022%_)
                           (_%rest197029%_ _%$%tl9696497024%_))
                      (_%$%K9696297019%_ _%rest197029%_ _%x197027%_)))
                  (_%$%else9696096974%_)))))))
    (define filter-map2
      (lambda (_%f96923%_ _%lst196924%_ _%lst296925%_)
        (if (procedure? _%f96923%_)
            (let ((_%f96929%_ _%f96923%_))
              (__filter-map2 _%f96929%_ _%lst196924%_ _%lst296925%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@459.20-459.21"
               'contract:
               'procedure?
               'value:
               _%f96923%_)
              (void)))))
    (define filter-map
      (lambda _g99270_
        (let ((_g99271_ (let () (declare (not safe)) (##length _g99270_))))
          (cond ((let () (declare (not safe)) (##fx= _g99271_ 2))
                 (apply (lambda (_%f96867%_ _%lst96868%_)
                          (let* ((_%f96870%_ _%f96867%_)
                                 (_%lst96873%_ _%lst96868%_))
                            (if (procedure? _%f96870%_)
                                (let ((_%f96878%_ _%f96870%_))
                                  (__filter-map1 _%f96878%_ _%lst96873%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f96870%_)
                                  (void)))))
                        _g99270_))
                ((let () (declare (not safe)) (##fx= _g99271_ 3))
                 (apply (lambda (_%f96890%_ _%lst196891%_ _%lst296892%_)
                          (let* ((_%f96894%_ _%f96890%_)
                                 (_%lst196897%_ _%lst196891%_)
                                 (_%lst296900%_ _%lst296892%_))
                            (if (procedure? _%f96894%_)
                                (let ((_%f96905%_ _%f96894%_))
                                  (__filter-map2
                                   _%f96905%_
                                   _%lst196897%_
                                   _%lst296900%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f96894%_)
                                  (void)))))
                        _g99270_))
                ((let () (declare (not safe)) (##fx>= _g99271_ 3))
                 (apply filter-map* _g99270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g99270_))))))
    (define __filter-map*
      (lambda (_%f96818%_ . _%rest96819%_)
        (let ((_%f96822%_ _%f96818%_))
          (let _%recur96831%_ ((_%rest96833%_ _%rest96819%_))
            (if (let* ((_%f96836%_ pair?) (_%lst96839%_ _%rest96833%_))
                  (if (procedure? _%f96836%_)
                      (let ((_%f96844%_ _%f96836%_))
                        (__andmap1 _%f96844%_ _%lst96839%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%f96836%_)
                        (void))))
                (let ((_%$e96861%_ (apply _%f96822%_ (map car _%rest96833%_))))
                  (if _%$e96861%_
                      ((lambda (_%r96864%_)
                         (cons _%r96864%_
                               (_%recur96831%_ (map cdr _%rest96833%_))))
                       _%$e96861%_)
                      (_%recur96831%_ (map cdr _%rest96833%_))))
                '())))))
    (define filter-map*
      (lambda (_%f96803%_ . _%rest96804%_)
        (if (procedure? _%f96803%_)
            (let ((_%f96808%_ _%f96803%_))
              (declare (not safe))
              (##apply __filter-map* _%f96808%_ _%rest96804%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f96803%_)
              (void)))))
    (define agetq
      (let ((_%$%opt-lambda9677796791%_
             (lambda (_%key96779%_ _%lst96781%_ _%default96783%_)
               (let ((_%$e96786%_
                      (if (pair? _%lst96781%_)
                          (assq _%key96779%_ _%lst96781%_)
                          '#f)))
                 (if _%$e96786%_
                     (cdr _%$e96786%_)
                     (if (procedure? _%default96783%_)
                         (_%default96783%_ _%key96779%_)
                         _%default96783%_))))))
        (lambda _g99272_
          (let ((_g99273_ (let () (declare (not safe)) (##length _g99272_))))
            (cond ((let () (declare (not safe)) (##fx= _g99273_ 2))
                   (apply (lambda (_%key96794%_ _%lst96795%_)
                            (let ((_%default96797%_ '#f))
                              (_%$%opt-lambda9677796791%_
                               _%key96794%_
                               _%lst96795%_
                               _%default96797%_)))
                          _g99272_))
                  ((let () (declare (not safe)) (##fx= _g99273_ 3))
                   (apply _%$%opt-lambda9677796791%_ _g99272_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    agetq
                    _g99272_)))))))
    (define agetv
      (let ((_%$%opt-lambda9675296766%_
             (lambda (_%key96754%_ _%lst96756%_ _%default96758%_)
               (let ((_%$e96761%_
                      (if (pair? _%lst96756%_)
                          (assv _%key96754%_ _%lst96756%_)
                          '#f)))
                 (if _%$e96761%_
                     (cdr _%$e96761%_)
                     (if (procedure? _%default96758%_)
                         (_%default96758%_ _%key96754%_)
                         _%default96758%_))))))
        (lambda _g99274_
          (let ((_g99275_ (let () (declare (not safe)) (##length _g99274_))))
            (cond ((let () (declare (not safe)) (##fx= _g99275_ 2))
                   (apply (lambda (_%key96769%_ _%lst96770%_)
                            (let ((_%default96772%_ '#f))
                              (_%$%opt-lambda9675296766%_
                               _%key96769%_
                               _%lst96770%_
                               _%default96772%_)))
                          _g99274_))
                  ((let () (declare (not safe)) (##fx= _g99275_ 3))
                   (apply _%$%opt-lambda9675296766%_ _g99274_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    agetv
                    _g99274_)))))))
    (define aget
      (let ((_%$%opt-lambda9672796741%_
             (lambda (_%key96729%_ _%lst96731%_ _%default96733%_)
               (let ((_%$e96736%_
                      (if (pair? _%lst96731%_)
                          (assoc _%key96729%_ _%lst96731%_)
                          '#f)))
                 (if _%$e96736%_
                     (cdr _%$e96736%_)
                     (if (procedure? _%default96733%_)
                         (_%default96733%_ _%key96729%_)
                         _%default96733%_))))))
        (lambda _g99276_
          (let ((_g99277_ (let () (declare (not safe)) (##length _g99276_))))
            (cond ((let () (declare (not safe)) (##fx= _g99277_ 2))
                   (apply (lambda (_%key96744%_ _%lst96745%_)
                            (let ((_%default96747%_ '#f))
                              (_%$%opt-lambda9672796741%_
                               _%key96744%_
                               _%lst96745%_
                               _%default96747%_)))
                          _g99276_))
                  ((let () (declare (not safe)) (##fx= _g99277_ 3))
                   (apply _%$%opt-lambda9672796741%_ _g99276_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    aget
                    _g99276_)))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq
      (let ((_%$%opt-lambda9665696716%_
             (lambda (_%key96658%_ _%lst96660%_ _%default96662%_)
               (let _%lp96665%_ ((_%rest96668%_ _%lst96660%_))
                 (let* ((_%$%rest9667096680%_ _%rest96668%_)
                        (_%$%E9667396684%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest9667096680%_
                                  '([k v . rest])
                                  'else)
                           (void)))
                        (_%$%else9667296688%_
                         (lambda ()
                           (if (procedure? _%default96662%_)
                               (_%default96662%_ _%key96658%_)
                               _%default96662%_)))
                        (_%$%K9667496697%_
                         (lambda (_%rest96691%_ _%v96692%_ _%k96694%_)
                           (if (eq? _%k96694%_ _%key96658%_)
                               _%v96692%_
                               (_%lp96665%_ _%rest96691%_)))))
                   (if (pair? _%$%rest9667096680%_)
                       (let ((_%$%hd9667596700%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%rest9667096680%_)))
                             (_%$%tl9667696702%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%rest9667096680%_))))
                         (let ((_%k96705%_ _%$%hd9667596700%_))
                           (if (pair? _%$%tl9667696702%_)
                               (let ((_%$%hd9667796707%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%tl9667696702%_)))
                                     (_%$%tl9667896709%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%tl9667696702%_))))
                                 (let* ((_%v96712%_ _%$%hd9667796707%_)
                                        (_%rest96714%_ _%$%tl9667896709%_))
                                   (_%$%K9667496697%_
                                    _%rest96714%_
                                    _%v96712%_
                                    _%k96705%_)))
                               (_%$%else9667296688%_))))
                       (_%$%else9667296688%_)))))))
        (lambda _g99278_
          (let ((_g99279_ (let () (declare (not safe)) (##length _g99278_))))
            (cond ((let () (declare (not safe)) (##fx= _g99279_ 2))
                   (apply (lambda (_%key96719%_ _%lst96720%_)
                            (let ((_%default96722%_ '#f))
                              (_%$%opt-lambda9665696716%_
                               _%key96719%_
                               _%lst96720%_
                               _%default96722%_)))
                          _g99278_))
                  ((let () (declare (not safe)) (##fx= _g99279_ 3))
                   (apply _%$%opt-lambda9665696716%_ _g99278_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pgetq
                    _g99278_)))))))
    (define pgetv
      (let ((_%$%opt-lambda9658596645%_
             (lambda (_%key96587%_ _%lst96589%_ _%default96591%_)
               (let _%lp96594%_ ((_%rest96597%_ _%lst96589%_))
                 (let* ((_%$%rest9659996609%_ _%rest96597%_)
                        (_%$%E9660296613%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest9659996609%_
                                  '([k v . rest])
                                  'else)
                           (void)))
                        (_%$%else9660196617%_
                         (lambda ()
                           (if (procedure? _%default96591%_)
                               (_%default96591%_ _%key96587%_)
                               _%default96591%_)))
                        (_%$%K9660396626%_
                         (lambda (_%rest96620%_ _%v96621%_ _%k96623%_)
                           (if (eqv? _%k96623%_ _%key96587%_)
                               _%v96621%_
                               (_%lp96594%_ _%rest96620%_)))))
                   (if (pair? _%$%rest9659996609%_)
                       (let ((_%$%hd9660496629%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%rest9659996609%_)))
                             (_%$%tl9660596631%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%rest9659996609%_))))
                         (let ((_%k96634%_ _%$%hd9660496629%_))
                           (if (pair? _%$%tl9660596631%_)
                               (let ((_%$%hd9660696636%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%tl9660596631%_)))
                                     (_%$%tl9660796638%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%tl9660596631%_))))
                                 (let* ((_%v96641%_ _%$%hd9660696636%_)
                                        (_%rest96643%_ _%$%tl9660796638%_))
                                   (_%$%K9660396626%_
                                    _%rest96643%_
                                    _%v96641%_
                                    _%k96634%_)))
                               (_%$%else9660196617%_))))
                       (_%$%else9660196617%_)))))))
        (lambda _g99280_
          (let ((_g99281_ (let () (declare (not safe)) (##length _g99280_))))
            (cond ((let () (declare (not safe)) (##fx= _g99281_ 2))
                   (apply (lambda (_%key96648%_ _%lst96649%_)
                            (let ((_%default96651%_ '#f))
                              (_%$%opt-lambda9658596645%_
                               _%key96648%_
                               _%lst96649%_
                               _%default96651%_)))
                          _g99280_))
                  ((let () (declare (not safe)) (##fx= _g99281_ 3))
                   (apply _%$%opt-lambda9658596645%_ _g99280_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pgetv
                    _g99280_)))))))
    (define pget
      (let ((_%$%opt-lambda9651496574%_
             (lambda (_%key96516%_ _%lst96518%_ _%default96520%_)
               (let _%lp96523%_ ((_%rest96526%_ _%lst96518%_))
                 (let* ((_%$%rest9652896538%_ _%rest96526%_)
                        (_%$%E9653196542%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest9652896538%_
                                  '([k v . rest])
                                  'else)
                           (void)))
                        (_%$%else9653096546%_
                         (lambda ()
                           (if (procedure? _%default96520%_)
                               (_%default96520%_ _%key96516%_)
                               _%default96520%_)))
                        (_%$%K9653296555%_
                         (lambda (_%rest96549%_ _%v96550%_ _%k96552%_)
                           (if (equal? _%k96552%_ _%key96516%_)
                               _%v96550%_
                               (_%lp96523%_ _%rest96549%_)))))
                   (if (pair? _%$%rest9652896538%_)
                       (let ((_%$%hd9653396558%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%rest9652896538%_)))
                             (_%$%tl9653496560%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%rest9652896538%_))))
                         (let ((_%k96563%_ _%$%hd9653396558%_))
                           (if (pair? _%$%tl9653496560%_)
                               (let ((_%$%hd9653596565%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%tl9653496560%_)))
                                     (_%$%tl9653696567%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%tl9653496560%_))))
                                 (let* ((_%v96570%_ _%$%hd9653596565%_)
                                        (_%rest96572%_ _%$%tl9653696567%_))
                                   (_%$%K9653296555%_
                                    _%rest96572%_
                                    _%v96570%_
                                    _%k96563%_)))
                               (_%$%else9653096546%_))))
                       (_%$%else9653096546%_)))))))
        (lambda _g99282_
          (let ((_g99283_ (let () (declare (not safe)) (##length _g99282_))))
            (cond ((let () (declare (not safe)) (##fx= _g99283_ 2))
                   (apply (lambda (_%key96577%_ _%lst96578%_)
                            (let ((_%default96580%_ '#f))
                              (_%$%opt-lambda9651496574%_
                               _%key96577%_
                               _%lst96578%_
                               _%default96580%_)))
                          _g99282_))
                  ((let () (declare (not safe)) (##fx= _g99283_ 3))
                   (apply _%$%opt-lambda9651496574%_ _g99282_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pget
                    _g99282_)))))))
    (define __find
      (lambda (_%pred96476%_ _%lst96477%_)
        (let* ((_%pred96480%_ _%pred96476%_)
               (_%$e96511%_
                (let* ((_%proc96489%_ _%pred96480%_)
                       (_%lst96492%_ _%lst96477%_))
                  (if (procedure? _%proc96489%_)
                      (let ((_%proc96497%_ _%proc96489%_))
                        (__memf _%proc96497%_ _%lst96492%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/util
                         'contract:
                         'procedure?
                         'value:
                         _%proc96489%_)
                        (void))))))
          (if _%$e96511%_
              (let () (declare (not safe)) (##car _%$e96511%_))
              '#f))))
    (define find
      (lambda (_%pred96461%_ _%lst96462%_)
        (if (procedure? _%pred96461%_)
            (let ((_%pred96466%_ _%pred96461%_))
              (__find _%pred96466%_ _%lst96462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.13-527.17"
               'contract:
               'procedure?
               'value:
               _%pred96461%_)
              (void)))))
    (define __memf
      (lambda (_%proc96411%_ _%lst96412%_)
        (let ((_%proc96415%_ _%proc96411%_))
          (let _%lp96424%_ ((_%rest96426%_ _%lst96412%_))
            (let* ((_%$%rest9642796435%_ _%rest96426%_)
                   (_%$%E9643096439%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9642796435%_
                             '([hd . tl])
                             'else)
                      (void)))
                   (_%$%else9642996443%_ (lambda () '#f))
                   (_%$%K9643196449%_
                    (lambda (_%tl96446%_ _%hd96447%_)
                      (if (_%proc96415%_ _%hd96447%_)
                          _%rest96426%_
                          (_%lp96424%_ _%tl96446%_)))))
              (if (pair? _%$%rest9642796435%_)
                  (let ((_%$%hd9643296452%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9642796435%_)))
                        (_%$%tl9643396454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9642796435%_))))
                    (let* ((_%hd96457%_ _%$%hd9643296452%_)
                           (_%tl96459%_ _%$%tl9643396454%_))
                      (_%$%K9643196449%_ _%tl96459%_ _%hd96457%_)))
                  (_%$%else9642996443%_)))))))
    (define memf
      (lambda (_%proc96396%_ _%lst96397%_)
        (if (procedure? _%proc96396%_)
            (let ((_%proc96401%_ _%proc96396%_))
              (__memf _%proc96401%_ _%lst96397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@532.13-532.17"
               'contract:
               'procedure?
               'value:
               _%proc96396%_)
              (void)))))
    (define remove1
      (lambda (_%el96319%_ _%lst96321%_)
        (let _%lp96324%_ ((_%rest96327%_ _%lst96321%_) (_%r96329%_ '()))
          (let* ((_%$%rest9633196339%_ _%rest96327%_)
                 (_%$%E9633496343%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest9633196339%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else9633396347%_ (lambda () _%lst96321%_))
                 (_%$%K9633596384%_
                  (lambda (_%rest96350%_ _%hd96351%_)
                    (if (equal? _%el96319%_ _%hd96351%_)
                        (let* ((_%f96354%_ cons)
                               (_%iv96357%_ _%rest96350%_)
                               (_%lst96360%_ _%r96329%_))
                          (if (procedure? _%f96354%_)
                              (let ((_%f96365%_ _%f96354%_))
                                (__foldl1 _%f96365%_ _%iv96357%_ _%lst96360%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/util
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%f96354%_)
                                (void))))
                        (_%lp96324%_
                         _%rest96350%_
                         (cons _%hd96351%_ _%r96329%_))))))
            (if (pair? _%$%rest9633196339%_)
                (let ((_%$%hd9633696387%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest9633196339%_)))
                      (_%$%tl9633796389%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest9633196339%_))))
                  (let* ((_%hd96392%_ _%$%hd9633696387%_)
                         (_%rest96394%_ _%$%tl9633796389%_))
                    (_%$%K9633596384%_ _%rest96394%_ _%hd96392%_)))
                (_%$%else9633396347%_))))))
    (define remv1
      (lambda (_%el96242%_ _%lst96244%_)
        (let _%lp96247%_ ((_%rest96250%_ _%lst96244%_) (_%r96252%_ '()))
          (let* ((_%$%rest9625496262%_ _%rest96250%_)
                 (_%$%E9625796266%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest9625496262%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else9625696270%_ (lambda () _%lst96244%_))
                 (_%$%K9625896307%_
                  (lambda (_%rest96273%_ _%hd96274%_)
                    (if (eqv? _%el96242%_ _%hd96274%_)
                        (let* ((_%f96277%_ cons)
                               (_%iv96280%_ _%rest96273%_)
                               (_%lst96283%_ _%r96252%_))
                          (if (procedure? _%f96277%_)
                              (let ((_%f96288%_ _%f96277%_))
                                (__foldl1 _%f96288%_ _%iv96280%_ _%lst96283%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/util
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%f96277%_)
                                (void))))
                        (_%lp96247%_
                         _%rest96273%_
                         (cons _%hd96274%_ _%r96252%_))))))
            (if (pair? _%$%rest9625496262%_)
                (let ((_%$%hd9625996310%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest9625496262%_)))
                      (_%$%tl9626096312%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest9625496262%_))))
                  (let* ((_%hd96315%_ _%$%hd9625996310%_)
                         (_%rest96317%_ _%$%tl9626096312%_))
                    (_%$%K9625896307%_ _%rest96317%_ _%hd96315%_)))
                (_%$%else9625696270%_))))))
    (define remq1
      (lambda (_%el96165%_ _%lst96167%_)
        (let _%lp96170%_ ((_%rest96173%_ _%lst96167%_) (_%r96175%_ '()))
          (let* ((_%$%rest9617796185%_ _%rest96173%_)
                 (_%$%E9618096189%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest9617796185%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else9617996193%_ (lambda () _%lst96167%_))
                 (_%$%K9618196230%_
                  (lambda (_%rest96196%_ _%hd96197%_)
                    (if (eq? _%el96165%_ _%hd96197%_)
                        (let* ((_%f96200%_ cons)
                               (_%iv96203%_ _%rest96196%_)
                               (_%lst96206%_ _%r96175%_))
                          (if (procedure? _%f96200%_)
                              (let ((_%f96211%_ _%f96200%_))
                                (__foldl1 _%f96211%_ _%iv96203%_ _%lst96206%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/util
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%f96200%_)
                                (void))))
                        (_%lp96170%_
                         _%rest96196%_
                         (cons _%hd96197%_ _%r96175%_))))))
            (if (pair? _%$%rest9617796185%_)
                (let ((_%$%hd9618296233%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest9617796185%_)))
                      (_%$%tl9618396235%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest9617796185%_))))
                  (let* ((_%hd96238%_ _%$%hd9618296233%_)
                         (_%rest96240%_ _%$%tl9618396235%_))
                    (_%$%K9618196230%_ _%rest96240%_ _%hd96238%_)))
                (_%$%else9617996193%_))))))
    (define __remf
      (lambda (_%proc96082%_ _%lst96083%_)
        (let ((_%proc96086%_ _%proc96082%_))
          (let _%lp96095%_ ((_%rest96097%_ _%lst96083%_) (_%r96098%_ '()))
            (let* ((_%$%rest9609996107%_ _%rest96097%_)
                   (_%$%E9610296111%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest9609996107%_
                             '([hd . rest])
                             'else)
                      (void)))
                   (_%$%else9610196115%_ (lambda () _%lst96083%_))
                   (_%$%K9610396153%_
                    (lambda (_%rest96118%_ _%hd96119%_)
                      (if (_%proc96086%_ _%hd96119%_)
                          (let* ((_%f96121%_ cons)
                                 (_%iv96124%_ _%rest96118%_)
                                 (_%lst96127%_ _%r96098%_))
                            (if (procedure? _%f96121%_)
                                (let ((_%f96132%_ _%f96121%_))
                                  (__foldl1
                                   _%f96132%_
                                   _%iv96124%_
                                   _%lst96127%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'procedure?
                                   'value:
                                   _%f96121%_)
                                  (void))))
                          (_%lp96095%_
                           _%rest96118%_
                           (cons _%hd96119%_ _%r96098%_))))))
              (if (pair? _%$%rest9609996107%_)
                  (let ((_%$%hd9610496156%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest9609996107%_)))
                        (_%$%tl9610596158%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest9609996107%_))))
                    (let* ((_%hd96161%_ _%$%hd9610496156%_)
                           (_%rest96163%_ _%$%tl9610596158%_))
                      (_%$%K9610396153%_ _%rest96163%_ _%hd96161%_)))
                  (_%$%else9610196115%_)))))))
    (define remf
      (lambda (_%proc96067%_ _%lst96068%_)
        (if (procedure? _%proc96067%_)
            (let ((_%proc96072%_ _%proc96067%_))
              (__remf _%proc96072%_ _%lst96068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc96067%_)
              (void)))))
    (define __1+
      (lambda (_%x96055%_) (let ((_%x96058%_ _%x96055%_)) (+ _%x96058%_ '1))))
    (define 1+
      (lambda (_%x96041%_)
        (if (number? _%x96041%_)
            (let ((_%x96045%_ _%x96041%_)) (__1+ _%x96045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@563.11-563.12"
               'contract:
               'number?
               'value:
               _%x96041%_)
              (void)))))
    (define __1-
      (lambda (_%x96029%_) (let ((_%x96032%_ _%x96029%_)) (- _%x96032%_ '1))))
    (define 1-
      (lambda (_%x96015%_)
        (if (number? _%x96015%_)
            (let ((_%x96019%_ _%x96015%_)) (__1- _%x96019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.11-571.12"
               'contract:
               'number?
               'value:
               _%x96015%_)
              (void)))))
    (define __fx1+
      (lambda (_%x96003%_)
        (let ((_%x96006%_ _%x96003%_)) (fx+ _%x96006%_ '1))))
    (define fx1+
      (lambda (_%x95989%_)
        (if (fixnum? _%x95989%_)
            (let ((_%x95993%_ _%x95989%_)) (__fx1+ _%x95993%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@579.13-579.14"
               'contract:
               'fixnum?
               'value:
               _%x95989%_)
              (void)))))
    (define __fx1-
      (lambda (_%x95977%_)
        (let ((_%x95980%_ _%x95977%_)) (fx- _%x95980%_ '1))))
    (define fx1-
      (lambda (_%x95963%_)
        (if (fixnum? _%x95963%_)
            (let ((_%x95967%_ _%x95963%_)) (__fx1- _%x95967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@587.13-587.14"
               'contract:
               'fixnum?
               'value:
               _%x95963%_)
              (void)))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x95960%_)
        (if (fixnum? _%x95960%_)
            (let () (declare (not safe)) (##fx>= _%x95960%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x95957%_)
        (if (fixnum? _%x95957%_)
            (let () (declare (not safe)) (##fx> _%x95957%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x95954%_)
        (let () (declare (not safe)) (##fx= _%x95954%_ '0))))
    (define fx<0?
      (lambda (_%x95951%_)
        (if (fixnum? _%x95951%_)
            (let () (declare (not safe)) (##fx< _%x95951%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x95948%_)
        (if (fixnum? _%x95948%_)
            (let () (declare (not safe)) (##fx<= _%x95948%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x95945%_)
        (if (symbol? _%x95945%_) (not (uninterned-symbol? _%x95945%_)) '#f)))
    (define __display-as-string
      (lambda (_%x95839%_ _%port95840%_)
        (let ((_%port95843%_ _%port95840%_))
          (if (or (string? _%x95839%_)
                  (symbol? _%x95839%_)
                  (keyword? _%x95839%_)
                  (number? _%x95839%_)
                  (char? _%x95839%_))
              (display _%x95839%_ _%port95843%_)
              (if (pair? _%x95839%_)
                  (let ()
                    (let* ((_%x95866%_ (car _%x95839%_))
                           (_%port95869%_ _%port95843%_))
                      (if (output-port? _%port95869%_)
                          (let ((_%port95874%_ _%port95869%_))
                            (__display-as-string _%x95866%_ _%port95874%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port95869%_)
                            (void))))
                    (let* ((_%x95889%_ (cdr _%x95839%_))
                           (_%port95892%_ _%port95843%_))
                      (if (output-port? _%port95892%_)
                          (let ((_%port95897%_ _%port95892%_))
                            (__display-as-string _%x95889%_ _%port95897%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port95892%_)
                            (void)))))
                  (if (vector? _%x95839%_)
                      (vector-for-each
                       (lambda (_%$%g9590895910%_)
                         (let* ((_%x95913%_ _%$%g9590895910%_)
                                (_%port95916%_ _%port95843%_))
                           (if (output-port? _%port95916%_)
                               (let ((_%port95921%_ _%port95916%_))
                                 (__display-as-string
                                  _%x95913%_
                                  _%port95921%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port95916%_)
                                 (void)))))
                       _%x95839%_)
                      (if (or (null? _%x95839%_)
                              (void? _%x95839%_)
                              (eof-object? _%x95839%_)
                              (boolean? _%x95839%_))
                          (void)
                          (let ()
                            (error '"cannot convert as string" _%x95839%_)
                            (void)))))))))
    (define display-as-string
      (lambda (_%x95824%_ _%port95825%_)
        (if (output-port? _%port95825%_)
            (let ((_%port95829%_ _%port95825%_))
              (__display-as-string _%x95824%_ _%port95829%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@617.28-617.32"
               'contract:
               'output-port?
               'value:
               _%port95825%_)
              (void)))))
    (define as-string
      (lambda _g99284_
        (let ((_g99285_ (let () (declare (not safe)) (##length _g99284_))))
          (cond ((let () (declare (not safe)) (##fx= _g99285_ 1))
                 (apply (lambda (_%x95764%_)
                          (if (string? _%x95764%_)
                              _%x95764%_
                              (if (symbol? _%x95764%_)
                                  (symbol->string _%x95764%_)
                                  (if (keyword? _%x95764%_)
                                      (keyword->string _%x95764%_)
                                      (if (number? _%x95764%_)
                                          (number->string _%x95764%_)
                                          (call-with-output-string
                                           '()
                                           (lambda (_%$%g9577095772%_)
                                             (let* ((_%x95775%_ _%x95764%_)
                                                    (_%port95778%_
                                                     _%$%g9577095772%_))
                                               (if (output-port? _%port95778%_)
                                                   (let ((_%port95783%_
                                                          _%port95778%_))
                                                     (__display-as-string
                                                      _%x95775%_
                                                      _%port95783%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/util
                                                      'contract:
                                                      'output-port?
                                                      'value:
                                                      _%port95778%_)
                                                     (void)))))))))))
                        _g99284_))
                (#t
                 (apply (lambda _%args95797%_
                          (call-with-output-string
                           '()
                           (lambda (_%$%g9579895800%_)
                             (let* ((_%x95803%_ _%args95797%_)
                                    (_%port95806%_ _%$%g9579895800%_))
                               (if (output-port? _%port95806%_)
                                   (let ((_%port95811%_ _%port95806%_))
                                     (__display-as-string
                                      _%x95803%_
                                      _%port95811%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/util
                                      'contract:
                                      'output-port?
                                      'value:
                                      _%port95806%_)
                                     (void)))))))
                        _g99284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g99284_))))))
    (define make-symbol
      (lambda _g99286_
        (let ((_g99287_ (let () (declare (not safe)) (##length _g99286_))))
          (cond ((let () (declare (not safe)) (##fx= _g99287_ 1))
                 (apply (lambda (_%x95760%_)
                          (if (interned-symbol? _%x95760%_)
                              _%x95760%_
                              (string->symbol (as-string _%x95760%_))))
                        _g99286_))
                (#t
                 (apply (lambda _%args95762%_
                          (string->symbol (apply as-string _%args95762%_)))
                        _g99286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g99286_))))))
    (define make-keyword
      (lambda _g99288_
        (let ((_g99289_ (let () (declare (not safe)) (##length _g99288_))))
          (cond ((let () (declare (not safe)) (##fx= _g99289_ 1))
                 (apply (lambda (_%x95756%_)
                          (if (interned-keyword? _%x95756%_)
                              _%x95756%_
                              (string->keyword (as-string _%x95756%_))))
                        _g99288_))
                (#t
                 (apply (lambda _%args95758%_
                          (string->keyword (apply as-string _%args95758%_)))
                        _g99288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g99288_))))))
    (define interned-keyword?
      (lambda (_%x95753%_)
        (if (keyword? _%x95753%_) (not (uninterned-keyword? _%x95753%_)) '#f)))
    (define __symbol->keyword
      (lambda (_%sym95741%_)
        (let ((_%sym95744%_ _%sym95741%_))
          (if (uninterned-symbol? _%sym95744%_)
              (string->uninterned-keyword (symbol->string _%sym95744%_))
              (string->keyword (symbol->string _%sym95744%_))))))
    (define symbol->keyword
      (lambda (_%sym95727%_)
        (if (symbol? _%sym95727%_)
            (let ((_%sym95731%_ _%sym95727%_))
              (__symbol->keyword _%sym95731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym95727%_)
              (void)))))
    (define __keyword->symbol
      (lambda (_%sym95715%_)
        (let ((_%sym95718%_ _%sym95715%_))
          (if (uninterned-keyword? _%sym95718%_)
              (string->uninterned-symbol (keyword->string _%sym95718%_))
              (string->symbol (keyword->string _%sym95718%_))))))
    (define keyword->symbol
      (lambda (_%sym95701%_)
        (if (keyword? _%sym95701%_)
            (let ((_%sym95705%_ _%sym95701%_))
              (__keyword->symbol _%sym95705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym95701%_)
              (void)))))
    (define __bytes->string
      (let ((_%$%opt-lambda9565995691%_
             (lambda (_%bstr95661%_ _%enc95662%_)
               (let* ((_%bstr95665%_ _%bstr95661%_)
                      (_%enc95673%_ _%enc95662%_))
                 (if (eq? _%enc95673%_ 'UTF-8)
                     (utf8->string _%bstr95665%_)
                     (let* ((_%in95682%_
                             (open-input-u8vector
                              (cons 'char-encoding:
                                    (cons _%enc95673%_
                                          (cons 'init:
                                                (cons _%bstr95665%_ '()))))))
                            (_%len95684%_ (u8vector-length _%bstr95665%_))
                            (_%out95686%_ (make-string _%len95684%_))
                            (_%n95688%_
                             (read-substring
                              _%out95686%_
                              '0
                              _%len95684%_
                              _%in95682%_)))
                       (string-shrink! _%out95686%_ _%n95688%_)
                       _%out95686%_))))))
        (lambda _g99290_
          (let ((_g99291_ (let () (declare (not safe)) (##length _g99290_))))
            (cond ((let () (declare (not safe)) (##fx= _g99291_ 1))
                   (apply (lambda (_%bstr95694%_)
                            (let ((_%enc95696%_ 'UTF-8))
                              (_%$%opt-lambda9565995691%_
                               _%bstr95694%_
                               _%enc95696%_)))
                          _g99290_))
                  ((let () (declare (not safe)) (##fx= _g99291_ 2))
                   (apply _%$%opt-lambda9565995691%_ _g99290_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __bytes->string
                    _g99290_)))))))
    (define bytes->string
      (let ((_%$%opt-lambda9562395650%_
             (lambda (_%bstr95625%_ _%enc95626%_)
               (if (u8vector? _%bstr95625%_)
                   (let ((_%bstr95630%_ _%bstr95625%_))
                     (if (symbol? _%enc95626%_)
                         (let ((_%enc95640%_ _%enc95626%_))
                           (__bytes->string _%bstr95630%_ _%enc95640%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                            'contract:
                            'symbol?
                            'value:
                            _%enc95626%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@672.22-672.26"
                      'contract:
                      'u8vector?
                      'value:
                      _%bstr95625%_)
                     (void))))))
        (lambda _g99292_
          (let ((_g99293_ (let () (declare (not safe)) (##length _g99292_))))
            (cond ((let () (declare (not safe)) (##fx= _g99293_ 1))
                   (apply (lambda (_%bstr95653%_)
                            (let ((_%enc95655%_ 'UTF-8))
                              (_%$%opt-lambda9562395650%_
                               _%bstr95653%_
                               _%enc95655%_)))
                          _g99292_))
                  ((let () (declare (not safe)) (##fx= _g99293_ 2))
                   (apply _%$%opt-lambda9562395650%_ _g99292_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    bytes->string
                    _g99292_)))))))
    (define __string->bytes
      (let ((_%$%opt-lambda9554195614%_
             (lambda (_%str95543%_ _%enc95544%_)
               (let* ((_%str95547%_ _%str95543%_) (_%enc95555%_ _%enc95544%_))
                 (if (eq? _%enc95555%_ 'UTF-8)
                     (string->utf8 _%str95547%_)
                     (let* ((_%str95564%_ _%str95547%_)
                            (_%start95567%_ '0)
                            (_%end95570%_ (string-length _%str95547%_))
                            (_%enc95573%_ _%enc95555%_))
                       (if (string? _%str95564%_)
                           (let ((_%str95578%_ _%str95564%_))
                             (if (nonnegative-fixnum? _%start95567%_)
                                 (let ((_%start95594%_ _%start95567%_))
                                   (if (nonnegative-fixnum? _%end95570%_)
                                       (let ((_%end95604%_ _%end95570%_))
                                         (__substring->bytes
                                          _%str95578%_
                                          _%start95594%_
                                          _%end95604%_
                                          _%enc95573%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/util
                                          'contract:
                                          'nonnegative-fixnum?
                                          'value:
                                          _%end95570%_)
                                         (void))))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'nonnegative-fixnum?
                                    'value:
                                    _%start95567%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/util
                              'contract:
                              'string?
                              'value:
                              _%str95564%_)
                             (void)))))))))
        (lambda _g99294_
          (let ((_g99295_ (let () (declare (not safe)) (##length _g99294_))))
            (cond ((let () (declare (not safe)) (##fx= _g99295_ 1))
                   (apply (lambda (_%str95617%_)
                            (let ((_%enc95619%_ 'UTF-8))
                              (_%$%opt-lambda9554195614%_
                               _%str95617%_
                               _%enc95619%_)))
                          _g99294_))
                  ((let () (declare (not safe)) (##fx= _g99295_ 2))
                   (apply _%$%opt-lambda9554195614%_ _g99294_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __string->bytes
                    _g99294_)))))))
    (define string->bytes
      (let ((_%$%opt-lambda9550595532%_
             (lambda (_%str95507%_ _%enc95508%_)
               (if (string? _%str95507%_)
                   (let ((_%str95512%_ _%str95507%_))
                     (if (symbol? _%enc95508%_)
                         (let ((_%enc95522%_ _%enc95508%_))
                           (__string->bytes _%str95512%_ _%enc95522%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                            'contract:
                            'symbol?
                            'value:
                            _%enc95508%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@684.22-684.25"
                      'contract:
                      'string?
                      'value:
                      _%str95507%_)
                     (void))))))
        (lambda _g99296_
          (let ((_g99297_ (let () (declare (not safe)) (##length _g99296_))))
            (cond ((let () (declare (not safe)) (##fx= _g99297_ 1))
                   (apply (lambda (_%str95535%_)
                            (let ((_%enc95537%_ 'UTF-8))
                              (_%$%opt-lambda9550595532%_
                               _%str95535%_
                               _%enc95537%_)))
                          _g99296_))
                  ((let () (declare (not safe)) (##fx= _g99297_ 2))
                   (apply _%$%opt-lambda9550595532%_ _g99296_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string->bytes
                    _g99296_)))))))
    (define __substring->bytes
      (let ((_%$%opt-lambda9545795492%_
             (lambda (_%str95459%_ _%start95460%_ _%end95461%_ _%enc95462%_)
               (let* ((_%str95465%_ _%str95459%_)
                      (_%start95473%_ _%start95460%_)
                      (_%end95481%_ _%end95461%_))
                 (if (eq? _%enc95462%_ 'UTF-8)
                     (string->utf8 _%str95465%_ _%start95473%_ _%end95481%_)
                     (let ((_%out95490%_
                            (open-output-u8vector
                             (cons 'char-encoding: (cons _%enc95462%_ '())))))
                       (write-substring
                        _%str95465%_
                        _%start95473%_
                        _%end95481%_
                        _%out95490%_)
                       (get-output-u8vector _%out95490%_)))))))
        (lambda _g99298_
          (let ((_g99299_ (let () (declare (not safe)) (##length _g99298_))))
            (cond ((let () (declare (not safe)) (##fx= _g99299_ 3))
                   (apply (lambda (_%str95495%_ _%start95496%_ _%end95497%_)
                            (let ((_%enc95499%_ 'UTF-8))
                              (_%$%opt-lambda9545795492%_
                               _%str95495%_
                               _%start95496%_
                               _%end95497%_
                               _%enc95499%_)))
                          _g99298_))
                  ((let () (declare (not safe)) (##fx= _g99299_ 4))
                   (apply _%$%opt-lambda9545795492%_ _g99298_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __substring->bytes
                    _g99298_)))))))
    (define substring->bytes
      (let ((_%$%opt-lambda9540595444%_
             (lambda (_%str95407%_ _%start95408%_ _%end95409%_ _%enc95410%_)
               (if (string? _%str95407%_)
                   (let ((_%str95414%_ _%str95407%_))
                     (if (nonnegative-fixnum? _%start95408%_)
                         (let ((_%start95424%_ _%start95408%_))
                           (if (nonnegative-fixnum? _%end95409%_)
                               (let ((_%end95434%_ _%end95409%_))
                                 (__substring->bytes
                                  _%str95414%_
                                  _%start95424%_
                                  _%end95434%_
                                  _%enc95410%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%end95409%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                            'contract:
                            'nonnegative-fixnum?
                            'value:
                            _%start95408%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@691.25-691.28"
                      'contract:
                      'string?
                      'value:
                      _%str95407%_)
                     (void))))))
        (lambda _g99300_
          (let ((_g99301_ (let () (declare (not safe)) (##length _g99300_))))
            (cond ((let () (declare (not safe)) (##fx= _g99301_ 3))
                   (apply (lambda (_%str95447%_ _%start95448%_ _%end95449%_)
                            (let ((_%enc95451%_ 'UTF-8))
                              (_%$%opt-lambda9540595444%_
                               _%str95447%_
                               _%start95448%_
                               _%end95449%_
                               _%enc95451%_)))
                          _g99300_))
                  ((let () (declare (not safe)) (##fx= _g99301_ 4))
                   (apply _%$%opt-lambda9540595444%_ _g99300_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    substring->bytes
                    _g99300_)))))))
    (define __string-empty?
      (lambda (_%str95394%_)
        (let ((_%str95397%_ _%str95394%_))
          (fxzero? (string-length _%str95397%_)))))
    (define string-empty?
      (lambda (_%str95380%_)
        (if (string? _%str95380%_)
            (let ((_%str95384%_ _%str95380%_)) (__string-empty? _%str95384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str95380%_)
              (void)))))
    (define __string-index
      (let ((_%$%opt-lambda9531895368%_
             (lambda (_%str95320%_ _%char95321%_ _%start95322%_)
               (let* ((_%str95325%_ _%str95320%_)
                      (_%char95333%_ _%char95321%_)
                      (_%start95341%_ _%start95322%_)
                      (_%len95350%_ (string-length _%str95325%_)))
                 (let _%lp95352%_ ((_%k95354%_ _%start95341%_))
                   (let ((_%k95356%_ _%k95354%_))
                     (if (fx< _%k95356%_ _%len95350%_)
                         (if (eq? _%char95333%_
                                  (let ()
                                    (declare (not safe))
                                    (##string-ref _%str95325%_ _%k95356%_)))
                             _%k95356%_
                             (_%lp95352%_ (fx+ _%k95356%_ '1)))
                         '#f)))))))
        (lambda _g99302_
          (let ((_g99303_ (let () (declare (not safe)) (##length _g99302_))))
            (cond ((let () (declare (not safe)) (##fx= _g99303_ 2))
                   (apply (lambda (_%str95371%_ _%char95372%_)
                            (let ((_%start95374%_ '0))
                              (_%$%opt-lambda9531895368%_
                               _%str95371%_
                               _%char95372%_
                               _%start95374%_)))
                          _g99302_))
                  ((let () (declare (not safe)) (##fx= _g99303_ 3))
                   (apply _%$%opt-lambda9531895368%_ _g99302_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __string-index
                    _g99302_)))))))
    (define string-index
      (let ((_%$%opt-lambda9526995307%_
             (lambda (_%str95271%_ _%char95272%_ _%start95273%_)
               (if (string? _%str95271%_)
                   (let ((_%str95277%_ _%str95271%_))
                     (if (char? _%char95272%_)
                         (let ((_%char95287%_ _%char95272%_))
                           (if (nonnegative-fixnum? _%start95273%_)
                               (let ((_%start95297%_ _%start95273%_))
                                 (__string-index
                                  _%str95277%_
                                  _%char95287%_
                                  _%start95297%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  '"\"gerbil/runtime/util.ss\"@708.21-708.26"
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start95273%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@707.21-707.25"
                            'contract:
                            'char?
                            'value:
                            _%char95272%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@706.21-706.24"
                      'contract:
                      'string?
                      'value:
                      _%str95271%_)
                     (void))))))
        (lambda _g99304_
          (let ((_g99305_ (let () (declare (not safe)) (##length _g99304_))))
            (cond ((let () (declare (not safe)) (##fx= _g99305_ 2))
                   (apply (lambda (_%str95310%_ _%char95311%_)
                            (let ((_%start95313%_ '0))
                              (_%$%opt-lambda9526995307%_
                               _%str95310%_
                               _%char95311%_
                               _%start95313%_)))
                          _g99304_))
                  ((let () (declare (not safe)) (##fx= _g99305_ 3))
                   (apply _%$%opt-lambda9526995307%_ _g99304_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string-index
                    _g99304_)))))))
    (define __string-rindex
      (let ((_%$%opt-lambda9521195258%_
             (lambda (_%str95213%_ _%char95214%_ _%start95215%_)
               (let* ((_%str95218%_ _%str95213%_)
                      (_%char95226%_ _%char95214%_)
                      (_%len95235%_ (string-length _%str95218%_))
                      (_%start95237%_
                       (if (fixnum? _%start95215%_)
                           _%start95215%_
                           (fx- _%len95235%_ '1))))
                 (let _%lp95240%_ ((_%k95242%_ _%start95237%_))
                   (let ((_%k95244%_ _%k95242%_))
                     (if (fx>= _%k95244%_ '0)
                         (if (eq? _%char95226%_
                                  (let ()
                                    (declare (not safe))
                                    (##string-ref _%str95218%_ _%k95244%_)))
                             _%k95244%_
                             (_%lp95240%_ (fx- _%k95244%_ '1)))
                         '#f)))))))
        (lambda _g99306_
          (let ((_g99307_ (let () (declare (not safe)) (##length _g99306_))))
            (cond ((let () (declare (not safe)) (##fx= _g99307_ 2))
                   (apply (lambda (_%str95261%_ _%char95262%_)
                            (let ((_%start95264%_ '#f))
                              (_%$%opt-lambda9521195258%_
                               _%str95261%_
                               _%char95262%_
                               _%start95264%_)))
                          _g99306_))
                  ((let () (declare (not safe)) (##fx= _g99307_ 3))
                   (apply _%$%opt-lambda9521195258%_ _g99306_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __string-rindex
                    _g99306_)))))))
    (define string-rindex
      (let ((_%$%opt-lambda9517295200%_
             (lambda (_%str95174%_ _%char95175%_ _%start95176%_)
               (if (string? _%str95174%_)
                   (let ((_%str95180%_ _%str95174%_))
                     (if (char? _%char95175%_)
                         (let ((_%char95190%_ _%char95175%_))
                           (__string-rindex
                            _%str95180%_
                            _%char95190%_
                            _%start95176%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@718.25-718.29"
                            'contract:
                            'char?
                            'value:
                            _%char95175%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@717.22-717.25"
                      'contract:
                      'string?
                      'value:
                      _%str95174%_)
                     (void))))))
        (lambda _g99308_
          (let ((_g99309_ (let () (declare (not safe)) (##length _g99308_))))
            (cond ((let () (declare (not safe)) (##fx= _g99309_ 2))
                   (apply (lambda (_%str95203%_ _%char95204%_)
                            (let ((_%start95206%_ '#f))
                              (_%$%opt-lambda9517295200%_
                               _%str95203%_
                               _%char95204%_
                               _%start95206%_)))
                          _g99308_))
                  ((let () (declare (not safe)) (##fx= _g99309_ 3))
                   (apply _%$%opt-lambda9517295200%_ _g99308_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string-rindex
                    _g99308_)))))))
    (define __string-split
      (lambda (_%str95071%_ _%char95072%_)
        (let* ((_%str95075%_ _%str95071%_)
               (_%char95083%_ _%char95072%_)
               (_%len95092%_ (string-length _%str95075%_)))
          (let _%lp95094%_ ((_%start95096%_ '0) (_%r95097%_ '()))
            (let* ((_%start95100%_ _%start95096%_)
                   (_%$e95158%_
                    (let* ((_%str95113%_ _%str95075%_)
                           (_%char95116%_ _%char95083%_)
                           (_%start95119%_ _%start95100%_))
                      (if (string? _%str95113%_)
                          (let ((_%str95124%_ _%str95113%_))
                            (if (char? _%char95116%_)
                                (let ((_%char95138%_ _%char95116%_))
                                  (if (nonnegative-fixnum? _%start95119%_)
                                      (let ((_%start95148%_ _%start95119%_))
                                        (__string-index
                                         _%str95124%_
                                         _%char95138%_
                                         _%start95148%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/util
                                         'contract:
                                         'nonnegative-fixnum?
                                         'value:
                                         _%start95119%_)
                                        (void))))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   'char?
                                   'value:
                                   _%char95116%_)
                                  (void))))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'string?
                             'value:
                             _%str95113%_)
                            (void))))))
              (if _%$e95158%_
                  ((lambda (_%end95161%_)
                     (let ((_%end95163%_ _%end95161%_))
                       (_%lp95094%_
                        (fx+ _%end95163%_ '1)
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str95075%_
                                 _%start95100%_
                                 _%end95163%_))
                              _%r95097%_))))
                   _%$e95158%_)
                  (if (fx< _%start95100%_ _%len95092%_)
                      (foldl cons
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _%str95075%_
                                      _%start95100%_
                                      _%len95092%_)))
                             _%r95097%_)
                      (reverse! _%r95097%_))))))))
    (define string-split
      (lambda (_%str95046%_ _%char95047%_)
        (if (string? _%str95046%_)
            (let ((_%str95051%_ _%str95046%_))
              (if (char? _%char95047%_)
                  (let ((_%char95061%_ _%char95047%_))
                    (__string-split _%str95051%_ _%char95061%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.37-729.41"
                     'contract:
                     'char?
                     'value:
                     _%char95047%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str95046%_)
              (void)))))
    (define string-join
      (lambda (_%strs94896%_ _%join94897%_)
        (letrec ((_%join-length94900%_
                  (lambda (_%strs94984%_ _%jlen94985%_)
                    (let _%lp94987%_ ((_%rest94989%_ _%strs94984%_)
                                      (_%len94990%_ '0))
                      (let* ((_%len94992%_ _%len94990%_)
                             (_%$%rest9500095008%_ _%rest94989%_)
                             (_%$%E9500395012%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest9500095008%_
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else9500295016%_ (lambda () '0))
                             (_%$%K9500495034%_
                              (lambda (_%rest95019%_ _%hd95020%_)
                                (if (string? _%hd95020%_)
                                    (let ((_%hd95022%_ _%hd95020%_))
                                      (if (pair? _%rest95019%_)
                                          (_%lp94987%_
                                           _%rest95019%_
                                           (fx+ (string-length _%hd95022%_)
                                                _%jlen94985%_
                                                _%len94992%_))
                                          (fx+ (string-length _%hd95022%_)
                                               _%len94992%_)))
                                    (error '"expected string" _%hd95020%_)))))
                        (if (pair? _%$%rest9500095008%_)
                            (let ((_%$%hd9500595037%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest9500095008%_)))
                                  (_%$%tl9500695039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest9500095008%_))))
                              (let* ((_%hd95042%_ _%$%hd9500595037%_)
                                     (_%rest95044%_ _%$%tl9500695039%_))
                                (_%$%K9500495034%_ _%rest95044%_ _%hd95042%_)))
                            (_%$%else9500295016%_)))))))
          (let* ((_%join94905%_
                  (if (char? _%join94897%_)
                      (string _%join94897%_)
                      (if (string? _%join94897%_)
                          _%join94897%_
                          (error '"expected string or char" _%join94897%_))))
                 (_%jlen94907%_ (string-length _%join94905%_))
                 (_%olen94909%_
                  (_%join-length94900%_ _%strs94896%_ _%jlen94907%_))
                 (_%ostr94911%_ (make-string _%olen94909%_)))
            (let _%lp94914%_ ((_%rest94916%_ _%strs94896%_) (_%k94917%_ '0))
              (let* ((_%k94920%_ _%k94917%_)
                     (_%$%rest9493694944%_ _%rest94916%_)
                     (_%$%E9493994948%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%rest9493694944%_
                               '([hd . rest])
                               'else)
                        (void)))
                     (_%$%else9493894952%_ (lambda () '""))
                     (_%$%K9494094972%_
                      (lambda (_%rest94955%_ _%hd94956%_)
                        (let* ((_%hd94958%_ _%hd94956%_)
                               (_%hdlen94970%_ (string-length _%hd94958%_)))
                          (if (pair? _%rest94955%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94958%_
                                   '0
                                   _%hdlen94970%_
                                   _%ostr94911%_
                                   _%k94920%_))
                                (let ((__tmp99310
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k94920%_ _%hdlen94970%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join94905%_
                                   '0
                                   _%jlen94907%_
                                   _%ostr94911%_
                                   __tmp99310))
                                (_%lp94914%_
                                 _%rest94955%_
                                 (fx+ _%k94920%_
                                      _%hdlen94970%_
                                      _%jlen94907%_)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94958%_
                                   '0
                                   _%hdlen94970%_
                                   _%ostr94911%_
                                   _%k94920%_))
                                _%ostr94911%_))))))
                (if (pair? _%$%rest9493694944%_)
                    (let ((_%$%hd9494194975%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest9493694944%_)))
                          (_%$%tl9494294977%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest9493694944%_))))
                      (let* ((_%hd94980%_ _%$%hd9494194975%_)
                             (_%rest94982%_ _%$%tl9494294977%_))
                        (_%$%K9494094972%_ _%rest94982%_ _%hd94980%_)))
                    (_%$%else9493894952%_))))))))
    (define __read-u8vector
      (let ((_%$%opt-lambda9483494875%_
             (lambda (_%bytes94836%_ _%port94837%_ _%start94838%_ _%end94839%_)
               (let* ((_%bytes94842%_ _%bytes94836%_)
                      (_%port94850%_ _%port94837%_)
                      (_%start94858%_ _%start94838%_)
                      (_%end94866%_ _%end94839%_))
                 (declare (not safe))
                 (##read-subu8vector
                  _%bytes94842%_
                  _%start94858%_
                  _%end94866%_
                  _%port94850%_)))))
        (lambda _g99311_
          (let ((_g99312_ (let () (declare (not safe)) (##length _g99311_))))
            (cond ((let () (declare (not safe)) (##fx= _g99312_ 2))
                   (apply (lambda (_%bytes94878%_ _%port94879%_)
                            (let* ((_%start94881%_ '0)
                                   (_%end94883%_
                                    (u8vector-length _%bytes94878%_)))
                              (_%$%opt-lambda9483494875%_
                               _%bytes94878%_
                               _%port94879%_
                               _%start94881%_
                               _%end94883%_)))
                          _g99311_))
                  ((let () (declare (not safe)) (##fx= _g99312_ 3))
                   (apply (lambda (_%bytes94885%_ _%port94886%_ _%start94887%_)
                            (let ((_%end94889%_
                                   (u8vector-length _%bytes94885%_)))
                              (_%$%opt-lambda9483494875%_
                               _%bytes94885%_
                               _%port94886%_
                               _%start94887%_
                               _%end94889%_)))
                          _g99311_))
                  ((let () (declare (not safe)) (##fx= _g99312_ 4))
                   (apply _%$%opt-lambda9483494875%_ _g99311_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __read-u8vector
                    _g99311_)))))))
    (define read-u8vector
      (let ((_%$%opt-lambda9475994814%_
             (lambda (_%bytes94761%_ _%port94762%_ _%start94763%_ _%end94764%_)
               (if (u8vector? _%bytes94761%_)
                   (let ((_%bytes94768%_ _%bytes94761%_))
                     (if (input-port? _%port94762%_)
                         (let ((_%port94778%_ _%port94762%_))
                           (if ((lambda (_%o94787%_)
                                  (and (fixnum? _%o94787%_)
                                       (fx>= _%o94787%_ '0)
                                       (fx< _%o94787%_
                                            (u8vector-length _%bytes94768%_))))
                                _%start94763%_)
                               (let ((_%start94791%_ _%start94763%_))
                                 (if ((lambda (_%o94800%_)
                                        (and (fixnum? _%o94800%_)
                                             (fx<= _%start94791%_
                                                   _%o94800%_
                                                   (u8vector-length
                                                    _%bytes94768%_))))
                                      _%end94764%_)
                                     (let ((_%end94804%_ _%end94764%_))
                                       (__read-u8vector
                                        _%bytes94768%_
                                        _%port94778%_
                                        _%start94791%_
                                        _%end94804%_))
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
                                        _%end94764%_)
                                       (void))))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  '"\"gerbil/runtime/util.ss\"@794.22-794.27"
                                  'contract:
                                  '(in-range? 0 (u8vector-length bytes))
                                  'value:
                                  _%start94763%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@793.22-793.26"
                            'contract:
                            'input-port?
                            'value:
                            _%port94762%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@792.22-792.27"
                      'contract:
                      'u8vector?
                      'value:
                      _%bytes94761%_)
                     (void))))))
        (lambda _g99313_
          (let ((_g99314_ (let () (declare (not safe)) (##length _g99313_))))
            (cond ((let () (declare (not safe)) (##fx= _g99314_ 2))
                   (apply (lambda (_%bytes94817%_ _%port94818%_)
                            (let* ((_%start94820%_ '0)
                                   (_%end94822%_
                                    (u8vector-length _%bytes94817%_)))
                              (_%$%opt-lambda9475994814%_
                               _%bytes94817%_
                               _%port94818%_
                               _%start94820%_
                               _%end94822%_)))
                          _g99313_))
                  ((let () (declare (not safe)) (##fx= _g99314_ 3))
                   (apply (lambda (_%bytes94824%_ _%port94825%_ _%start94826%_)
                            (let ((_%end94828%_
                                   (u8vector-length _%bytes94824%_)))
                              (_%$%opt-lambda9475994814%_
                               _%bytes94824%_
                               _%port94825%_
                               _%start94826%_
                               _%end94828%_)))
                          _g99313_))
                  ((let () (declare (not safe)) (##fx= _g99314_ 4))
                   (apply _%$%opt-lambda9475994814%_ _g99313_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    read-u8vector
                    _g99313_)))))))
    (define __write-u8vector
      (let ((_%$%opt-lambda9469894739%_
             (lambda (_%bytes94700%_ _%port94701%_ _%start94702%_ _%end94703%_)
               (let* ((_%bytes94706%_ _%bytes94700%_)
                      (_%port94714%_ _%port94701%_)
                      (_%start94722%_ _%start94702%_)
                      (_%end94730%_ _%end94703%_))
                 (declare (not safe))
                 (##write-subu8vector
                  _%bytes94706%_
                  _%start94722%_
                  _%end94730%_
                  _%port94714%_)))))
        (lambda _g99315_
          (let ((_g99316_ (let () (declare (not safe)) (##length _g99315_))))
            (cond ((let () (declare (not safe)) (##fx= _g99316_ 2))
                   (apply (lambda (_%bytes94742%_ _%port94743%_)
                            (let* ((_%start94745%_ '0)
                                   (_%end94747%_
                                    (u8vector-length _%bytes94742%_)))
                              (_%$%opt-lambda9469894739%_
                               _%bytes94742%_
                               _%port94743%_
                               _%start94745%_
                               _%end94747%_)))
                          _g99315_))
                  ((let () (declare (not safe)) (##fx= _g99316_ 3))
                   (apply (lambda (_%bytes94749%_ _%port94750%_ _%start94751%_)
                            (let ((_%end94753%_
                                   (u8vector-length _%bytes94749%_)))
                              (_%$%opt-lambda9469894739%_
                               _%bytes94749%_
                               _%port94750%_
                               _%start94751%_
                               _%end94753%_)))
                          _g99315_))
                  ((let () (declare (not safe)) (##fx= _g99316_ 4))
                   (apply _%$%opt-lambda9469894739%_ _g99315_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __write-u8vector
                    _g99315_)))))))
    (define write-u8vector
      (let ((_%$%opt-lambda9462894678%_
             (lambda (_%bytes94630%_ _%port94631%_ _%start94632%_ _%end94633%_)
               (if (u8vector? _%bytes94630%_)
                   (let ((_%bytes94637%_ _%bytes94630%_))
                     (if (output-port? _%port94631%_)
                         (let* ((_%port94647%_ _%port94631%_)
                                (_%start94656%_ _%start94632%_))
                           (if ((lambda (_%o94664%_)
                                  (and (fixnum? _%o94664%_)
                                       (fx<= _%start94656%_
                                             _%o94664%_
                                             (u8vector-length
                                              _%bytes94637%_))))
                                _%end94633%_)
                               (let ((_%end94668%_ _%end94633%_))
                                 (__write-u8vector
                                  _%bytes94637%_
                                  _%port94647%_
                                  _%start94656%_
                                  _%end94668%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  '"\"gerbil/runtime/util.ss\"@805.23-805.26"
                                  'contract:
                                  '(in-range-inclusive?
                                    start
                                    (u8vector-length bytes))
                                  'value:
                                  _%end94633%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/util.ss\"@803.23-803.27"
                            'contract:
                            'output-port?
                            'value:
                            _%port94631%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/util.ss\"@802.23-802.28"
                      'contract:
                      'u8vector?
                      'value:
                      _%bytes94630%_)
                     (void))))))
        (lambda _g99317_
          (let ((_g99318_ (let () (declare (not safe)) (##length _g99317_))))
            (cond ((let () (declare (not safe)) (##fx= _g99318_ 2))
                   (apply (lambda (_%bytes94681%_ _%port94682%_)
                            (let* ((_%start94684%_ '0)
                                   (_%end94686%_
                                    (u8vector-length _%bytes94681%_)))
                              (_%$%opt-lambda9462894678%_
                               _%bytes94681%_
                               _%port94682%_
                               _%start94684%_
                               _%end94686%_)))
                          _g99317_))
                  ((let () (declare (not safe)) (##fx= _g99318_ 3))
                   (apply (lambda (_%bytes94688%_ _%port94689%_ _%start94690%_)
                            (let ((_%end94692%_
                                   (u8vector-length _%bytes94688%_)))
                              (_%$%opt-lambda9462894678%_
                               _%bytes94688%_
                               _%port94689%_
                               _%start94690%_
                               _%end94692%_)))
                          _g99317_))
                  ((let () (declare (not safe)) (##fx= _g99318_ 4))
                   (apply _%$%opt-lambda9462894678%_ _g99317_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    write-u8vector
                    _g99317_)))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag94598%_
               _%dbg-exprs94599%_
               _%dbg-thunks94600%_
               _%expr94601%_
               _%thunk94602%_)
        (letrec ((_%o94604%_ (current-output-port))
                 (_%e94605%_ (current-error-port))
                 (_%p94606%_ (DBG-printer))
                 (_%f94607%_
                  (lambda ()
                    (force-output _%o94604%_)
                    (force-output _%e94605%_)))
                 (_%d94608%_
                  (lambda (_%x94615%_) (display _%x94615%_ _%e94605%_)))
                 (_%w94609%_
                  (lambda (_%x94617%_) (_%p94606%_ _%x94617%_ _%e94605%_)))
                 (_%n94610%_ (lambda () (newline _%e94605%_)))
                 (_%v94611%_
                  (lambda (_%l94620%_)
                    (for-each
                     (lambda (_%x94622%_)
                       (_%d94608%_ '" ")
                       (_%w94609%_ _%x94622%_))
                     _%l94620%_)
                    (_%n94610%_)))
                 (_%x94612%_
                  (lambda (_%expr94624%_ _%thunk94625%_)
                    (_%f94607%_)
                    (_%d94608%_ '"  ")
                    (_%w94609%_ _%expr94624%_)
                    (_%d94608%_ '" =>")
                    (call-with-values
                     _%thunk94625%_
                     (lambda _%x94627%_
                       (_%v94611%_ _%x94627%_)
                       (_%f94607%_)
                       (apply values _%x94627%_))))))
          (if _%tag94598%_
              (begin
                (if (void? _%tag94598%_)
                    '#!void
                    (begin
                      (_%f94607%_)
                      (_%d94608%_ _%tag94598%_)
                      (_%n94610%_)))
                (for-each _%x94612%_ _%dbg-exprs94599%_ _%dbg-thunks94600%_)
                (if _%thunk94602%_
                    (_%x94612%_ _%expr94601%_ _%thunk94602%_)
                    (void)))
              (if _%thunk94602%_ (_%thunk94602%_) (void))))))))
