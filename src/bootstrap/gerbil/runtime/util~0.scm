(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1768863409)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args97934%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args97934%_))
          (newline))))
    (define display*
      (lambda _%args97931%_
        (let () (declare (not safe)) (##for-each display _%args97931%_))))
    (define file-newer?
      (lambda (_%file197906%_ _%file297907%_)
        (if (string? _%file197906%_)
            (let ((_%file197911%_ _%file197906%_))
              (if (string? _%file297907%_)
                  (let ((_%file297921%_ _%file297907%_))
                    (__file-newer? _%file197911%_ _%file297921%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file297907%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file197906%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file197854%_ _%file297855%_)
        (let* ((_%file197858%_ _%file197854%_) (_%file297866%_ _%file297855%_))
          (letrec ((_%modification-time97875%_
                    (lambda (_%file97894%_)
                      (let ((_%file97897%_ _%file97894%_))
                        (_%__modification-time97876%_ _%file97897%_))))
                   (_%__modification-time97876%_
                    (lambda (_%file97878%_)
                      (let* ((_%file97881%_ _%file97878%_)
                             (__tmp99708
                              (let ((__tmp99709
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file97881%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp99709))))
                        (declare (not safe))
                        (##time->seconds __tmp99708)))))
            (let ((__tmp99711 (_%__modification-time97876%_ _%file197858%_))
                  (__tmp99710 (_%__modification-time97876%_ _%file297866%_)))
              (declare (not safe))
              (##fl> __tmp99711 __tmp99710))))))
    (define create-directory*__%
      (lambda (_%dir97819%_ _%perms97820%_)
        (if (string? _%dir97819%_)
            (let ((_%dir97824%_ _%dir97819%_))
              (if (fixnum? _%perms97820%_)
                  (let ((_%perms97834%_ _%perms97820%_))
                    (__create-directory*__% _%dir97824%_ _%perms97834%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms97820%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir97819%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir97847%_)
        (let ((_%perms97849%_ '493))
          (create-directory*__% _%dir97847%_ _%perms97849%_))))
    (define create-directory*
      (lambda _g99712_
        (let ((_g99713_ (let () (declare (not safe)) (##length _g99712_))))
          (cond ((let () (declare (not safe)) (##fx= _g99713_ 1))
                 (apply create-directory*__0 _g99712_))
                ((let () (declare (not safe)) (##fx= _g99713_ 2))
                 (apply create-directory*__% _g99712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g99712_))))))
    (define __create-directory*__%
      (lambda (_%dir97743%_ _%perms97744%_)
        (let* ((_%dir97747%_ _%dir97743%_) (_%perms97755%_ _%perms97744%_))
          (letrec ((_%create197764%_
                    (lambda (_%path97796%_)
                      (let ((_%path97799%_ _%path97796%_))
                        (_%__create197765%_ _%path97799%_))))
                   (_%__create197765%_
                    (lambda (_%path97777%_)
                      (let ((_%path97780%_ _%path97777%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path97780%_))
                            (if (eq? (file-type _%path97780%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path97780%_))
                            (if _%perms97755%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path97780%_
                                             (cons 'permissions:
                                                   (cons _%perms97755%_
                                                         '())))))
                                (create-directory _%path97780%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir97747%_))
                '#!void
                (let _%lp97767%_ ((_%start97769%_ '0))
                  (let ((_%$e97771%_
                         (__string-index__% _%dir97747%_ '#\/ _%start97769%_)))
                    (if _%$e97771%_
                        ((lambda (_%x97774%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x97774%_ '0))
                               (_%__create197765%_
                                (substring _%dir97747%_ '0 _%x97774%_))
                               '#!void)
                           (_%lp97767%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x97774%_ '1))))
                         _%$e97771%_)
                        (_%__create197765%_ _%dir97747%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir97811%_)
        (let ((_%perms97813%_ '493))
          (__create-directory*__% _%dir97811%_ _%perms97813%_))))
    (define __create-directory*
      (lambda _g99714_
        (let ((_g99715_ (let () (declare (not safe)) (##length _g99714_))))
          (cond ((let () (declare (not safe)) (##fx= _g99715_ 1))
                 (apply __create-directory*__0 _g99714_))
                ((let () (declare (not safe)) (##fx= _g99715_ 2))
                 (apply __create-directory*__% _g99714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g99714_))))))
    (define move-file__%
      (lambda (_%src97694%_ _%dest97695%_ _%replace?97696%_)
        (if (string? _%src97694%_)
            (let ((_%src97700%_ _%src97694%_))
              (if (string? _%dest97695%_)
                  (let ((_%dest97710%_ _%dest97695%_))
                    (if (boolean? _%replace?97696%_)
                        (let ((_%replace?97720%_ _%replace?97696%_))
                          (__move-file__%
                           _%src97700%_
                           _%dest97710%_
                           _%replace?97720%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?97696%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest97695%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src97694%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src97733%_ _%dest97734%_)
        (let ((_%replace?97736%_ '#t))
          (move-file__% _%src97733%_ _%dest97734%_ _%replace?97736%_))))
    (define move-file
      (lambda _g99716_
        (let ((_g99717_ (let () (declare (not safe)) (##length _g99716_))))
          (cond ((let () (declare (not safe)) (##fx= _g99717_ 2))
                 (apply move-file__0 _g99716_))
                ((let () (declare (not safe)) (##fx= _g99717_ 3))
                 (apply move-file__% _g99716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g99716_))))))
    (define __move-file__%
      (lambda (_%src97637%_ _%dest97638%_ _%replace?97639%_)
        (let* ((_%src97642%_ _%src97637%_)
               (_%dest97650%_ _%dest97638%_)
               (_%replace?97658%_ _%replace?97639%_))
          (letrec ((_%force-move-it97667%_
                    (lambda ()
                      (let ((_%tmp97673%_
                             (if _%replace?97658%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest97650%_))
                                     (let ((__tmp99718
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest97650%_
                                        '"."
                                        __tmp99718))
                                     '#f)
                                 '#f)))
                        (if _%tmp97673%_
                            (rename-file _%dest97650%_ _%tmp97673%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e97675%_)
                           (if _%tmp97673%_
                               (rename-file _%tmp97673%_ _%dest97650%_ '#t)
                               '#!void)
                           (raise _%e97675%_))
                         (lambda ()
                           (let ((_%fi97678%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src97642%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi97678%_))
                                      'symbolic-link)
                                 (let ((__tmp99719
                                        (path-normalize _%src97642%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp99719
                                    _%dest97650%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src97642%_ _%dest97650%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src97642%_))
                           (if _%tmp97673%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp97673%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e97669%_)
               (if (let () (declare (not safe)) (##file-exists? _%src97642%_))
                   (_%force-move-it97667%_)
                   (raise _%e97669%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src97642%_
                  _%dest97650%_
                  _%replace?97658%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src97684%_ _%dest97685%_)
        (let ((_%replace?97687%_ '#t))
          (__move-file__% _%src97684%_ _%dest97685%_ _%replace?97687%_))))
    (define __move-file
      (lambda _g99720_
        (let ((_g99721_ (let () (declare (not safe)) (##length _g99720_))))
          (cond ((let () (declare (not safe)) (##fx= _g99721_ 2))
                 (apply __move-file__0 _g99720_))
                ((let () (declare (not safe)) (##fx= _g99721_ 3))
                 (apply __move-file__% _g99720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g99720_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore97633%_ '#t))
    (define true? (lambda (_%obj97630%_) (eq? _%obj97630%_ '#t)))
    (define false (lambda _%ignore97627%_ '#f))
    (define void (lambda _%ignore97624%_ '#!void))
    (define void? (lambda (_%obj97621%_) (eq? _%obj97621%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj97618%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj97618%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj97615%_) (eq? _%obj97615%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj97612%_) (eq? _%obj97612%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj97609%_) (eq? _%obj97609%_ '#!optional)))
    (define immediate?
      (lambda (_%obj97606%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj97606%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj97603%_)
        (if (fixnum? _%obj97603%_)
            (let () (declare (not safe)) (##fx>= _%obj97603%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj97597%_)
        (let ((_%$e97600%_ (pair? _%obj97597%_)))
          (if _%$e97600%_ _%$e97600%_ (null? _%obj97597%_)))))
    (define values-count
      (lambda (_%obj97594%_)
        (if (let () (declare (not safe)) (##values? _%obj97594%_))
            (let () (declare (not safe)) (##values-length _%obj97594%_))
            '1)))
    (define values-ref
      (lambda (_%obj97579%_ _%k97580%_)
        (if (fixnum? _%k97580%_)
            (let ((_%k97584%_ _%k97580%_))
              (__values-ref _%obj97579%_ _%k97584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k97580%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj97566%_ _%k97567%_)
        (let ((_%k97570%_ _%k97567%_))
          (if (let () (declare (not safe)) (##values? _%obj97566%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj97566%_ _%k97570%_))
              _%obj97566%_))))
    (define values->list
      (lambda (_%obj97563%_)
        (if (let () (declare (not safe)) (##values? _%obj97563%_))
            (let () (declare (not safe)) (##values->list _%obj97563%_))
            (list _%obj97563%_))))
    (define foldl1
      (lambda (_%f97547%_ _%iv97548%_ _%lst97549%_)
        (if (procedure? _%f97547%_)
            (let ((_%f97553%_ _%f97547%_))
              (__foldl1 _%f97553%_ _%iv97548%_ _%lst97549%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f97547%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f97495%_ _%iv97496%_ _%lst97497%_)
        (let ((_%f97500%_ _%f97495%_))
          (let _%lp97509%_ ((_%rest97511%_ _%lst97497%_)
                            (_%r97512%_ _%iv97496%_))
            (let* ((_%rest9751397521%_ _%rest97511%_)
                   (_%else9751597529%_ (lambda () _%r97512%_))
                   (_%K9751797535%_
                    (lambda (_%rest97532%_ _%x97533%_)
                      (_%lp97509%_
                       _%rest97532%_
                       (let ()
                         (declare (not safe))
                         (_%f97500%_ _%x97533%_ _%r97512%_))))))
              (if (pair? _%rest9751397521%_)
                  (let ((_%hd9751897538%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9751397521%_)))
                        (_%tl9751997540%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9751397521%_))))
                    (let* ((_%x97543%_ _%hd9751897538%_)
                           (_%rest97545%_ _%tl9751997540%_))
                      (_%K9751797535%_ _%rest97545%_ _%x97543%_)))
                  (_%else9751597529%_)))))))
    (define foldl2
      (lambda (_%f97478%_ _%iv97479%_ _%lst197480%_ _%lst297481%_)
        (if (procedure? _%f97478%_)
            (let ((_%f97485%_ _%f97478%_))
              (__foldl2 _%f97485%_ _%iv97479%_ _%lst197480%_ _%lst297481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f97478%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f97391%_ _%iv97392%_ _%lst197393%_ _%lst297394%_)
        (let ((_%f97397%_ _%f97391%_))
          (let _%lp97406%_ ((_%rest197408%_ _%lst197393%_)
                            (_%rest297409%_ _%lst297394%_)
                            (_%r97410%_ _%iv97392%_))
            (let* ((_%rest19741197419%_ _%rest197408%_)
                   (_%else9741397427%_ (lambda () _%r97410%_))
                   (_%K9741597466%_
                    (lambda (_%rest197430%_ _%x197431%_)
                      (let* ((_%rest29743297440%_ _%rest297409%_)
                             (_%else9743497448%_ (lambda () _%r97410%_))
                             (_%K9743697454%_
                              (lambda (_%rest297451%_ _%x297452%_)
                                (_%lp97406%_
                                 _%rest197430%_
                                 _%rest297451%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f97397%_
                                    _%x197431%_
                                    _%x297452%_
                                    _%r97410%_))))))
                        (if (pair? _%rest29743297440%_)
                            (let ((_%hd9743797457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29743297440%_)))
                                  (_%tl9743897459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29743297440%_))))
                              (let* ((_%x297462%_ _%hd9743797457%_)
                                     (_%rest297464%_ _%tl9743897459%_))
                                (_%K9743697454%_ _%rest297464%_ _%x297462%_)))
                            (_%else9743497448%_))))))
              (if (pair? _%rest19741197419%_)
                  (let ((_%hd9741697469%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19741197419%_)))
                        (_%tl9741797471%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19741197419%_))))
                    (let* ((_%x197474%_ _%hd9741697469%_)
                           (_%rest197476%_ _%tl9741797471%_))
                      (_%K9741597466%_ _%rest197476%_ _%x197474%_)))
                  (_%else9741397427%_)))))))
    (define foldl
      (lambda _g99722_
        (let ((_g99723_ (let () (declare (not safe)) (##length _g99722_))))
          (cond ((let () (declare (not safe)) (##fx= _g99723_ 3))
                 (apply foldl1 _g99722_))
                ((let () (declare (not safe)) (##fx= _g99723_ 4))
                 (apply foldl2 _g99722_))
                ((let () (declare (not safe)) (##fx>= _g99723_ 4))
                 (apply foldl* _g99722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g99722_))))))
    (define foldl*
      (lambda (_%f97360%_ _%iv97361%_ . _%rest97362%_)
        (if (procedure? _%f97360%_)
            (let ((_%f97366%_ _%f97360%_))
              (declare (not safe))
              (##apply __foldl* _%f97366%_ _%iv97361%_ _%rest97362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f97360%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f97338%_ _%iv97339%_ . _%rest97340%_)
        (let ((_%f97343%_ _%f97338%_))
          (let _%recur97352%_ ((_%iv97354%_ _%iv97339%_)
                               (_%rest97355%_ _%rest97340%_))
            (if (__andmap1 pair? _%rest97355%_)
                (_%recur97352%_
                 (let ((__tmp99724
                        (__foldr1
                         (lambda (_%xs97357%_ _%r97358%_)
                           (cons (car _%xs97357%_) _%r97358%_))
                         (list _%iv97354%_)
                         _%rest97355%_)))
                   (declare (not safe))
                   (##apply _%f97343%_ __tmp99724))
                 (map cdr _%rest97355%_))
                _%iv97354%_)))))
    (define foldr1
      (lambda (_%f97322%_ _%iv97323%_ _%lst97324%_)
        (if (procedure? _%f97322%_)
            (let ((_%f97328%_ _%f97322%_))
              (__foldr1 _%f97328%_ _%iv97323%_ _%lst97324%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f97322%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f97271%_ _%iv97272%_ _%lst97273%_)
        (let ((_%f97276%_ _%f97271%_))
          (let _%recur97285%_ ((_%rest97287%_ _%lst97273%_))
            (let* ((_%rest9728897296%_ _%rest97287%_)
                   (_%else9729097304%_ (lambda () _%iv97272%_))
                   (_%K9729297310%_
                    (lambda (_%rest97307%_ _%x97308%_)
                      (let ((__tmp99725 (_%recur97285%_ _%rest97307%_)))
                        (declare (not safe))
                        (_%f97276%_ _%x97308%_ __tmp99725)))))
              (if (pair? _%rest9728897296%_)
                  (let ((_%hd9729397313%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9728897296%_)))
                        (_%tl9729497315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9728897296%_))))
                    (let* ((_%x97318%_ _%hd9729397313%_)
                           (_%rest97320%_ _%tl9729497315%_))
                      (_%K9729297310%_ _%rest97320%_ _%x97318%_)))
                  (_%else9729097304%_)))))))
    (define foldr2
      (lambda (_%f97254%_ _%iv97255%_ _%lst197256%_ _%lst297257%_)
        (if (procedure? _%f97254%_)
            (let ((_%f97261%_ _%f97254%_))
              (__foldr2 _%f97261%_ _%iv97255%_ _%lst197256%_ _%lst297257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f97254%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f97168%_ _%iv97169%_ _%lst197170%_ _%lst297171%_)
        (let ((_%f97174%_ _%f97168%_))
          (let _%recur97183%_ ((_%rest197185%_ _%lst197170%_)
                               (_%rest297186%_ _%lst297171%_))
            (let* ((_%rest19718797195%_ _%rest197185%_)
                   (_%else9718997203%_ (lambda () _%iv97169%_))
                   (_%K9719197242%_
                    (lambda (_%rest197206%_ _%x197207%_)
                      (let* ((_%rest29720897216%_ _%rest297186%_)
                             (_%else9721097224%_ (lambda () _%iv97169%_))
                             (_%K9721297230%_
                              (lambda (_%rest297227%_ _%x297228%_)
                                (let ((__tmp99726
                                       (_%recur97183%_
                                        _%rest197206%_
                                        _%rest297227%_)))
                                  (declare (not safe))
                                  (_%f97174%_
                                   _%x197207%_
                                   _%x297228%_
                                   __tmp99726)))))
                        (if (pair? _%rest29720897216%_)
                            (let ((_%hd9721397233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29720897216%_)))
                                  (_%tl9721497235%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29720897216%_))))
                              (let* ((_%x297238%_ _%hd9721397233%_)
                                     (_%rest297240%_ _%tl9721497235%_))
                                (_%K9721297230%_ _%rest297240%_ _%x297238%_)))
                            (_%else9721097224%_))))))
              (if (pair? _%rest19718797195%_)
                  (let ((_%hd9719297245%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19718797195%_)))
                        (_%tl9719397247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19718797195%_))))
                    (let* ((_%x197250%_ _%hd9719297245%_)
                           (_%rest197252%_ _%tl9719397247%_))
                      (_%K9719197242%_ _%rest197252%_ _%x197250%_)))
                  (_%else9718997203%_)))))))
    (define foldr
      (lambda _g99727_
        (let ((_g99728_ (let () (declare (not safe)) (##length _g99727_))))
          (cond ((let () (declare (not safe)) (##fx= _g99728_ 3))
                 (apply foldr1 _g99727_))
                ((let () (declare (not safe)) (##fx= _g99728_ 4))
                 (apply foldr2 _g99727_))
                ((let () (declare (not safe)) (##fx>= _g99728_ 4))
                 (apply foldr* _g99727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g99727_))))))
    (define foldr*
      (lambda (_%f97137%_ _%iv97138%_ . _%rest97139%_)
        (if (procedure? _%f97137%_)
            (let ((_%f97143%_ _%f97137%_))
              (declare (not safe))
              (##apply __foldr* _%f97143%_ _%iv97138%_ _%rest97139%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f97137%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f97116%_ _%iv97117%_ . _%rest97118%_)
        (let ((_%f97121%_ _%f97116%_))
          (let _%recur97130%_ ((_%rest97132%_ _%rest97118%_))
            (if (__andmap1 pair? _%rest97132%_)
                (let ((__tmp99729
                       (__foldr1
                        (lambda (_%xs97134%_ _%r97135%_)
                          (cons (car _%xs97134%_) _%r97135%_))
                        (list (_%recur97130%_ (map cdr _%rest97132%_)))
                        _%rest97132%_)))
                  (declare (not safe))
                  (##apply _%f97121%_ __tmp99729))
                _%iv97117%_)))))
    (define remove-nulls!
      (lambda (_%l97003%_)
        (let* ((_%l9700497017%_ _%l97003%_)
               (_%E9700897021%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9700497017%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9701397106%_
                 (lambda (_%r97104%_) (remove-nulls! _%r97104%_)))
                (_%K9701097093%_
                 (lambda (_%r97033%_)
                   (let _%loop97035%_ ((_%l97037%_ _%l97003%_)
                                       (_%r97038%_ _%r97033%_))
                     (let* ((_%r9703997052%_ _%r97038%_)
                            (_%E9704397056%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9703997052%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9704897083%_
                              (lambda (_%rr97081%_)
                                (let ((__tmp99731 _%l97037%_)
                                      (__tmp99730 (remove-nulls! _%rr97081%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp99731 __tmp99730))))
                             (_%K9704597070%_
                              (lambda (_%rr97068%_)
                                (_%loop97035%_ _%r97038%_ _%rr97068%_)))
                             (_%K9704497061%_ (lambda () '#!void)))
                         (if (pair? _%r9703997052%_)
                             (let ((_%tl9705097088%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9703997052%_)))
                                   (_%hd9704997086%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9703997052%_))))
                               (if (null? _%hd9704997086%_)
                                   (let ((_%rr97091%_ _%tl9705097088%_))
                                     (_%K9704897083%_ _%rr97091%_))
                                   (let ((_%rr97076%_ _%tl9705097088%_))
                                     (_%K9704597070%_ _%rr97076%_))))
                             '#!void))))
                   _%l97003%_))
                (_%K9700997026%_ (lambda () _%l97003%_)))
            (if (pair? _%l9700497017%_)
                (let ((_%tl9701597111%_
                       (let () (declare (not safe)) (##cdr _%l9700497017%_)))
                      (_%hd9701497109%_
                       (let () (declare (not safe)) (##car _%l9700497017%_))))
                  (if (null? _%hd9701497109%_)
                      (let ((_%r97114%_ _%tl9701597111%_))
                        (remove-nulls! _%r97114%_))
                      (let ((_%r97099%_ _%tl9701597111%_))
                        (_%K9701097093%_ _%r97099%_))))
                (_%K9700997026%_))))))
    (define append1!
      (lambda (_%l96988%_ _%x96989%_)
        (let ((_%l296992%_ (cons _%x96989%_ '())))
          (if (pair? _%l96988%_)
              (let ((_%l96994%_ _%l96988%_))
                (let ((__tmp99732
                       (let () (declare (not safe)) (##last-pair _%l96994%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp99732 _%l296992%_))
                _%l96994%_)
              _%l296992%_))))
    (define append-reverse-until
      (lambda (_%pred96972%_ _%rhead96973%_ _%tail96974%_)
        (if (procedure? _%pred96972%_)
            (let ((_%pred96978%_ _%pred96972%_))
              (__append-reverse-until
               _%pred96978%_
               _%rhead96973%_
               _%tail96974%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred96972%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred96914%_ _%rhead96915%_ _%tail96916%_)
        (let ((_%pred96919%_ _%pred96914%_))
          (let _%loop96928%_ ((_%rhead96930%_ _%rhead96915%_)
                              (_%tail96931%_ _%tail96916%_))
            (let* ((_%rhead9693396942%_ _%rhead96930%_)
                   (_%E9693696946%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9693396942%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9694096969%_ (lambda () (values '() _%tail96931%_)))
                    (_%K9693796953%_
                     (lambda (_%r96950%_ _%a96951%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred96919%_ _%a96951%_))
                           (values _%rhead96930%_ _%tail96931%_)
                           (_%loop96928%_
                            _%r96950%_
                            (cons _%a96951%_ _%tail96931%_))))))
                (let ((_%try-match9693596965%_
                       (lambda ()
                         (if (pair? _%rhead9693396942%_)
                             (let ((_%tl9693996958%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9693396942%_)))
                                   (_%hd9693896956%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9693396942%_))))
                               (let ((_%a96961%_ _%hd9693896956%_)
                                     (_%r96963%_ _%tl9693996958%_))
                                 (_%K9693796953%_ _%r96963%_ _%a96961%_)))
                             (_%E9693696946%_)))))
                  (if (null? _%rhead9693396942%_)
                      (_%K9694096969%_)
                      (_%try-match9693596965%_)))))))))
    (define andmap1
      (lambda (_%f96899%_ _%lst96900%_)
        (if (procedure? _%f96899%_)
            (let ((_%f96904%_ _%f96899%_)) (__andmap1 _%f96904%_ _%lst96900%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f96899%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f96848%_ _%lst96849%_)
        (let ((_%f96852%_ _%f96848%_))
          (let _%lp96861%_ ((_%rest96863%_ _%lst96849%_))
            (let* ((_%rest9686596873%_ _%rest96863%_)
                   (_%else9686796881%_ (lambda () '#t))
                   (_%K9686996887%_
                    (lambda (_%rest96884%_ _%x96885%_)
                      (if (let () (declare (not safe)) (_%f96852%_ _%x96885%_))
                          (_%lp96861%_ _%rest96884%_)
                          '#f))))
              (if (pair? _%rest9686596873%_)
                  (let ((_%hd9687096890%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9686596873%_)))
                        (_%tl9687196892%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9686596873%_))))
                    (let* ((_%x96895%_ _%hd9687096890%_)
                           (_%rest96897%_ _%tl9687196892%_))
                      (_%K9686996887%_ _%rest96897%_ _%x96895%_)))
                  (_%else9686796881%_)))))))
    (define andmap2
      (lambda (_%f96832%_ _%lst196833%_ _%lst296834%_)
        (if (procedure? _%f96832%_)
            (let ((_%f96838%_ _%f96832%_))
              (__andmap2 _%f96838%_ _%lst196833%_ _%lst296834%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f96832%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f96746%_ _%lst196747%_ _%lst296748%_)
        (let ((_%f96751%_ _%f96746%_))
          (let _%lp96760%_ ((_%rest196762%_ _%lst196747%_)
                            (_%rest296763%_ _%lst296748%_))
            (let* ((_%rest19676596773%_ _%rest196762%_)
                   (_%else9676796781%_ (lambda () '#t))
                   (_%K9676996820%_
                    (lambda (_%rest196784%_ _%x196785%_)
                      (let* ((_%rest29678696794%_ _%rest296763%_)
                             (_%else9678896802%_ (lambda () '#t))
                             (_%K9679096808%_
                              (lambda (_%rest296805%_ _%x296806%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f96751%_ _%x196785%_ _%x296806%_))
                                    (_%lp96760%_ _%rest196784%_ _%rest296805%_)
                                    '#f))))
                        (if (pair? _%rest29678696794%_)
                            (let ((_%hd9679196811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29678696794%_)))
                                  (_%tl9679296813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29678696794%_))))
                              (let* ((_%x296816%_ _%hd9679196811%_)
                                     (_%rest296818%_ _%tl9679296813%_))
                                (_%K9679096808%_ _%rest296818%_ _%x296816%_)))
                            (_%else9678896802%_))))))
              (if (pair? _%rest19676596773%_)
                  (let ((_%hd9677096823%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19676596773%_)))
                        (_%tl9677196825%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19676596773%_))))
                    (let* ((_%x196828%_ _%hd9677096823%_)
                           (_%rest196830%_ _%tl9677196825%_))
                      (_%K9676996820%_ _%rest196830%_ _%x196828%_)))
                  (_%else9676796781%_)))))))
    (define andmap
      (lambda _g99733_
        (let ((_g99734_ (let () (declare (not safe)) (##length _g99733_))))
          (cond ((let () (declare (not safe)) (##fx= _g99734_ 2))
                 (apply andmap1 _g99733_))
                ((let () (declare (not safe)) (##fx= _g99734_ 3))
                 (apply andmap2 _g99733_))
                ((let () (declare (not safe)) (##fx>= _g99734_ 3))
                 (apply andmap* _g99733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g99733_))))))
    (define andmap*
      (lambda (_%f96719%_ . _%rest96720%_)
        (if (procedure? _%f96719%_)
            (let ((_%f96724%_ _%f96719%_))
              (declare (not safe))
              (##apply __andmap* _%f96724%_ _%rest96720%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f96719%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f96701%_ . _%rest96702%_)
        (let ((_%f96705%_ _%f96701%_))
          (let _%recur96714%_ ((_%rest96716%_ _%rest96702%_))
            (if (__andmap1 pair? _%rest96716%_)
                (if (let ((__tmp99735 (map car _%rest96716%_)))
                      (declare (not safe))
                      (##apply _%f96705%_ __tmp99735))
                    (_%recur96714%_ (map cdr _%rest96716%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f96686%_ _%lst96687%_)
        (if (procedure? _%f96686%_)
            (let ((_%f96691%_ _%f96686%_)) (__ormap1 _%f96691%_ _%lst96687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f96686%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f96633%_ _%lst96634%_)
        (let ((_%f96637%_ _%f96633%_))
          (let _%lp96646%_ ((_%rest96648%_ _%lst96634%_))
            (let* ((_%rest9664996657%_ _%rest96648%_)
                   (_%else9665196665%_ (lambda () '#f))
                   (_%K9665396674%_
                    (lambda (_%rest96668%_ _%x96669%_)
                      (let ((_%$e96671%_
                             (let ()
                               (declare (not safe))
                               (_%f96637%_ _%x96669%_))))
                        (if _%$e96671%_
                            _%$e96671%_
                            (_%lp96646%_ _%rest96668%_))))))
              (if (pair? _%rest9664996657%_)
                  (let ((_%hd9665496677%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9664996657%_)))
                        (_%tl9665596679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9664996657%_))))
                    (let* ((_%x96682%_ _%hd9665496677%_)
                           (_%rest96684%_ _%tl9665596679%_))
                      (_%K9665396674%_ _%rest96684%_ _%x96682%_)))
                  (_%else9665196665%_)))))))
    (define ormap2
      (lambda (_%f96617%_ _%lst196618%_ _%lst296619%_)
        (if (procedure? _%f96617%_)
            (let ((_%f96623%_ _%f96617%_))
              (__ormap2 _%f96623%_ _%lst196618%_ _%lst296619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f96617%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f96529%_ _%lst196530%_ _%lst296531%_)
        (let ((_%f96534%_ _%f96529%_))
          (let _%lp96543%_ ((_%rest196545%_ _%lst196530%_)
                            (_%rest296546%_ _%lst296531%_))
            (let* ((_%rest19654796555%_ _%rest196545%_)
                   (_%else9654996563%_ (lambda () '#f))
                   (_%K9655196605%_
                    (lambda (_%rest196566%_ _%x196567%_)
                      (let* ((_%rest29656896576%_ _%rest296546%_)
                             (_%else9657096584%_ (lambda () '#f))
                             (_%K9657296593%_
                              (lambda (_%rest296587%_ _%x296588%_)
                                (let ((_%$e96590%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96534%_
                                          _%x196567%_
                                          _%x296588%_))))
                                  (if _%$e96590%_
                                      _%$e96590%_
                                      (_%lp96543%_
                                       _%rest196566%_
                                       _%rest296587%_))))))
                        (if (pair? _%rest29656896576%_)
                            (let ((_%hd9657396596%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29656896576%_)))
                                  (_%tl9657496598%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29656896576%_))))
                              (let* ((_%x296601%_ _%hd9657396596%_)
                                     (_%rest296603%_ _%tl9657496598%_))
                                (_%K9657296593%_ _%rest296603%_ _%x296601%_)))
                            (_%else9657096584%_))))))
              (if (pair? _%rest19654796555%_)
                  (let ((_%hd9655296608%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19654796555%_)))
                        (_%tl9655396610%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19654796555%_))))
                    (let* ((_%x196613%_ _%hd9655296608%_)
                           (_%rest196615%_ _%tl9655396610%_))
                      (_%K9655196605%_ _%rest196615%_ _%x196613%_)))
                  (_%else9654996563%_)))))))
    (define ormap
      (lambda _g99736_
        (let ((_g99737_ (let () (declare (not safe)) (##length _g99736_))))
          (cond ((let () (declare (not safe)) (##fx= _g99737_ 2))
                 (apply ormap1 _g99736_))
                ((let () (declare (not safe)) (##fx= _g99737_ 3))
                 (apply ormap2 _g99736_))
                ((let () (declare (not safe)) (##fx>= _g99737_ 3))
                 (apply ormap* _g99736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g99736_))))))
    (define ormap*
      (lambda (_%f96502%_ . _%rest96503%_)
        (if (procedure? _%f96502%_)
            (let ((_%f96507%_ _%f96502%_))
              (declare (not safe))
              (##apply __ormap* _%f96507%_ _%rest96503%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f96502%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f96482%_ . _%rest96483%_)
        (let ((_%f96486%_ _%f96482%_))
          (let _%recur96495%_ ((_%rest96497%_ _%rest96483%_))
            (if (__andmap1 pair? _%rest96497%_)
                (let ((_%$e96499%_
                       (let ((__tmp99738 (map car _%rest96497%_)))
                         (declare (not safe))
                         (##apply _%f96486%_ __tmp99738))))
                  (if _%$e96499%_
                      _%$e96499%_
                      (_%recur96495%_ (map cdr _%rest96497%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f96467%_ _%lst96468%_)
        (if (procedure? _%f96467%_)
            (let ((_%f96472%_ _%f96467%_))
              (__filter-map1 _%f96472%_ _%lst96468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f96467%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f96410%_ _%lst96411%_)
        (let ((_%f96414%_ _%f96410%_))
          (let _%recur96423%_ ((_%rest96425%_ _%lst96411%_))
            (let* ((_%rest9642796435%_ _%rest96425%_)
                   (_%else9642996443%_ (lambda () '()))
                   (_%K9643196455%_
                    (lambda (_%rest96446%_ _%x96447%_)
                      (let ((_%$e96449%_
                             (let ()
                               (declare (not safe))
                               (_%f96414%_ _%x96447%_))))
                        (if _%$e96449%_
                            ((lambda (_%r96452%_)
                               (cons _%r96452%_
                                     (_%recur96423%_ _%rest96446%_)))
                             _%$e96449%_)
                            (_%recur96423%_ _%rest96446%_))))))
              (if (pair? _%rest9642796435%_)
                  (let ((_%hd9643296458%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9642796435%_)))
                        (_%tl9643396460%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9642796435%_))))
                    (let* ((_%x96463%_ _%hd9643296458%_)
                           (_%rest96465%_ _%tl9643396460%_))
                      (_%K9643196455%_ _%rest96465%_ _%x96463%_)))
                  (_%else9642996443%_)))))))
    (define filter-map2
      (lambda (_%f96394%_ _%lst196395%_ _%lst296396%_)
        (if (procedure? _%f96394%_)
            (let ((_%f96400%_ _%f96394%_))
              (__filter-map2 _%f96400%_ _%lst196395%_ _%lst296396%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f96394%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f96302%_ _%lst196303%_ _%lst296304%_)
        (let ((_%f96307%_ _%f96302%_))
          (let _%recur96316%_ ((_%rest196318%_ _%lst196303%_)
                               (_%rest296319%_ _%lst296304%_))
            (let* ((_%rest19632196329%_ _%rest196318%_)
                   (_%else9632396337%_ (lambda () '()))
                   (_%K9632596382%_
                    (lambda (_%rest196340%_ _%x196341%_)
                      (let* ((_%rest29634296350%_ _%rest296319%_)
                             (_%else9634496358%_ (lambda () '()))
                             (_%K9634696370%_
                              (lambda (_%rest296361%_ _%x296362%_)
                                (let ((_%$e96364%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96307%_
                                          _%x196341%_
                                          _%x296362%_))))
                                  (if _%$e96364%_
                                      ((lambda (_%r96367%_)
                                         (cons _%r96367%_
                                               (_%recur96316%_
                                                _%rest196340%_
                                                _%rest296361%_)))
                                       _%$e96364%_)
                                      (_%recur96316%_
                                       _%rest196340%_
                                       _%rest296361%_))))))
                        (if (pair? _%rest29634296350%_)
                            (let ((_%hd9634796373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29634296350%_)))
                                  (_%tl9634896375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29634296350%_))))
                              (let* ((_%x296378%_ _%hd9634796373%_)
                                     (_%rest296380%_ _%tl9634896375%_))
                                (_%K9634696370%_ _%rest296380%_ _%x296378%_)))
                            (_%else9634496358%_))))))
              (if (pair? _%rest19632196329%_)
                  (let ((_%hd9632696385%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19632196329%_)))
                        (_%tl9632796387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19632196329%_))))
                    (let* ((_%x196390%_ _%hd9632696385%_)
                           (_%rest196392%_ _%tl9632796387%_))
                      (_%K9632596382%_ _%rest196392%_ _%x196390%_)))
                  (_%else9632396337%_)))))))
    (define filter-map
      (lambda _g99739_
        (let ((_g99740_ (let () (declare (not safe)) (##length _g99739_))))
          (cond ((let () (declare (not safe)) (##fx= _g99740_ 2))
                 (apply filter-map1 _g99739_))
                ((let () (declare (not safe)) (##fx= _g99740_ 3))
                 (apply filter-map2 _g99739_))
                ((let () (declare (not safe)) (##fx>= _g99740_ 3))
                 (apply filter-map* _g99739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g99739_))))))
    (define filter-map*
      (lambda (_%f96275%_ . _%rest96276%_)
        (if (procedure? _%f96275%_)
            (let ((_%f96280%_ _%f96275%_))
              (declare (not safe))
              (##apply __filter-map* _%f96280%_ _%rest96276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f96275%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f96251%_ . _%rest96252%_)
        (let ((_%f96255%_ _%f96251%_))
          (let _%recur96264%_ ((_%rest96266%_ _%rest96252%_))
            (if (__andmap1 pair? _%rest96266%_)
                (let ((_%$e96269%_
                       (let ((__tmp99741 (map car _%rest96266%_)))
                         (declare (not safe))
                         (##apply _%f96255%_ __tmp99741))))
                  (if _%$e96269%_
                      ((lambda (_%r96272%_)
                         (cons _%r96272%_
                               (_%recur96264%_ (map cdr _%rest96266%_))))
                       _%$e96269%_)
                      (_%recur96264%_ (map cdr _%rest96266%_))))
                '())))))
    (define agetq__%
      (lambda (_%key96227%_ _%lst96229%_ _%default96231%_)
        (let ((_%$e96234%_
               (if (pair? _%lst96229%_) (assq _%key96227%_ _%lst96229%_) '#f)))
          (if _%$e96234%_
              (cdr _%$e96234%_)
              (if (procedure? _%default96231%_)
                  (_%default96231%_ _%key96227%_)
                  _%default96231%_)))))
    (define agetq__0
      (lambda (_%key96242%_ _%lst96243%_)
        (let ((_%default96245%_ '#f))
          (agetq__% _%key96242%_ _%lst96243%_ _%default96245%_))))
    (define agetq
      (lambda _g99742_
        (let ((_g99743_ (let () (declare (not safe)) (##length _g99742_))))
          (cond ((let () (declare (not safe)) (##fx= _g99743_ 2))
                 (apply agetq__0 _g99742_))
                ((let () (declare (not safe)) (##fx= _g99743_ 3))
                 (apply agetq__% _g99742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g99742_))))))
    (define agetv__%
      (lambda (_%key96202%_ _%lst96204%_ _%default96206%_)
        (let ((_%$e96209%_
               (if (pair? _%lst96204%_) (assv _%key96202%_ _%lst96204%_) '#f)))
          (if _%$e96209%_
              (cdr _%$e96209%_)
              (if (procedure? _%default96206%_)
                  (_%default96206%_ _%key96202%_)
                  _%default96206%_)))))
    (define agetv__0
      (lambda (_%key96217%_ _%lst96218%_)
        (let ((_%default96220%_ '#f))
          (agetv__% _%key96217%_ _%lst96218%_ _%default96220%_))))
    (define agetv
      (lambda _g99744_
        (let ((_g99745_ (let () (declare (not safe)) (##length _g99744_))))
          (cond ((let () (declare (not safe)) (##fx= _g99745_ 2))
                 (apply agetv__0 _g99744_))
                ((let () (declare (not safe)) (##fx= _g99745_ 3))
                 (apply agetv__% _g99744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g99744_))))))
    (define aget__%
      (lambda (_%key96177%_ _%lst96179%_ _%default96181%_)
        (let ((_%$e96184%_
               (if (pair? _%lst96179%_)
                   (assoc _%key96177%_ _%lst96179%_)
                   '#f)))
          (if _%$e96184%_
              (cdr _%$e96184%_)
              (if (procedure? _%default96181%_)
                  (_%default96181%_ _%key96177%_)
                  _%default96181%_)))))
    (define aget__0
      (lambda (_%key96192%_ _%lst96193%_)
        (let ((_%default96195%_ '#f))
          (aget__% _%key96192%_ _%lst96193%_ _%default96195%_))))
    (define aget
      (lambda _g99746_
        (let ((_g99747_ (let () (declare (not safe)) (##length _g99746_))))
          (cond ((let () (declare (not safe)) (##fx= _g99747_ 2))
                 (apply aget__0 _g99746_))
                ((let () (declare (not safe)) (##fx= _g99747_ 3))
                 (apply aget__% _g99746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g99746_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key96106%_ _%lst96108%_ _%default96110%_)
        (let _%lp96113%_ ((_%rest96116%_ _%lst96108%_))
          (let* ((_%rest9611896128%_ _%rest96116%_)
                 (_%else9612096136%_
                  (lambda ()
                    (if (procedure? _%default96110%_)
                        (_%default96110%_ _%key96106%_)
                        _%default96110%_)))
                 (_%K9612296145%_
                  (lambda (_%rest96139%_ _%v96140%_ _%k96142%_)
                    (if (eq? _%k96142%_ _%key96106%_)
                        _%v96140%_
                        (_%lp96113%_ _%rest96139%_)))))
            (if (pair? _%rest9611896128%_)
                (let ((_%hd9612396148%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9611896128%_)))
                      (_%tl9612496150%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9611896128%_))))
                  (let ((_%k96153%_ _%hd9612396148%_))
                    (if (pair? _%tl9612496150%_)
                        (let ((_%hd9612596155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9612496150%_)))
                              (_%tl9612696157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9612496150%_))))
                          (let* ((_%v96160%_ _%hd9612596155%_)
                                 (_%rest96162%_ _%tl9612696157%_))
                            (_%K9612296145%_
                             _%rest96162%_
                             _%v96160%_
                             _%k96153%_)))
                        (_%else9612096136%_))))
                (_%else9612096136%_))))))
    (define pgetq__0
      (lambda (_%key96167%_ _%lst96168%_)
        (let ((_%default96170%_ '#f))
          (pgetq__% _%key96167%_ _%lst96168%_ _%default96170%_))))
    (define pgetq
      (lambda _g99748_
        (let ((_g99749_ (let () (declare (not safe)) (##length _g99748_))))
          (cond ((let () (declare (not safe)) (##fx= _g99749_ 2))
                 (apply pgetq__0 _g99748_))
                ((let () (declare (not safe)) (##fx= _g99749_ 3))
                 (apply pgetq__% _g99748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g99748_))))))
    (define pgetv__%
      (lambda (_%key96035%_ _%lst96037%_ _%default96039%_)
        (let _%lp96042%_ ((_%rest96045%_ _%lst96037%_))
          (let* ((_%rest9604796057%_ _%rest96045%_)
                 (_%else9604996065%_
                  (lambda ()
                    (if (procedure? _%default96039%_)
                        (_%default96039%_ _%key96035%_)
                        _%default96039%_)))
                 (_%K9605196074%_
                  (lambda (_%rest96068%_ _%v96069%_ _%k96071%_)
                    (if (eqv? _%k96071%_ _%key96035%_)
                        _%v96069%_
                        (_%lp96042%_ _%rest96068%_)))))
            (if (pair? _%rest9604796057%_)
                (let ((_%hd9605296077%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9604796057%_)))
                      (_%tl9605396079%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9604796057%_))))
                  (let ((_%k96082%_ _%hd9605296077%_))
                    (if (pair? _%tl9605396079%_)
                        (let ((_%hd9605496084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9605396079%_)))
                              (_%tl9605596086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9605396079%_))))
                          (let* ((_%v96089%_ _%hd9605496084%_)
                                 (_%rest96091%_ _%tl9605596086%_))
                            (_%K9605196074%_
                             _%rest96091%_
                             _%v96089%_
                             _%k96082%_)))
                        (_%else9604996065%_))))
                (_%else9604996065%_))))))
    (define pgetv__0
      (lambda (_%key96096%_ _%lst96097%_)
        (let ((_%default96099%_ '#f))
          (pgetv__% _%key96096%_ _%lst96097%_ _%default96099%_))))
    (define pgetv
      (lambda _g99750_
        (let ((_g99751_ (let () (declare (not safe)) (##length _g99750_))))
          (cond ((let () (declare (not safe)) (##fx= _g99751_ 2))
                 (apply pgetv__0 _g99750_))
                ((let () (declare (not safe)) (##fx= _g99751_ 3))
                 (apply pgetv__% _g99750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g99750_))))))
    (define pget__%
      (lambda (_%key95964%_ _%lst95966%_ _%default95968%_)
        (let _%lp95971%_ ((_%rest95974%_ _%lst95966%_))
          (let* ((_%rest9597695986%_ _%rest95974%_)
                 (_%else9597895994%_
                  (lambda ()
                    (if (procedure? _%default95968%_)
                        (_%default95968%_ _%key95964%_)
                        _%default95968%_)))
                 (_%K9598096003%_
                  (lambda (_%rest95997%_ _%v95998%_ _%k96000%_)
                    (if (equal? _%k96000%_ _%key95964%_)
                        _%v95998%_
                        (_%lp95971%_ _%rest95997%_)))))
            (if (pair? _%rest9597695986%_)
                (let ((_%hd9598196006%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9597695986%_)))
                      (_%tl9598296008%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9597695986%_))))
                  (let ((_%k96011%_ _%hd9598196006%_))
                    (if (pair? _%tl9598296008%_)
                        (let ((_%hd9598396013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9598296008%_)))
                              (_%tl9598496015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9598296008%_))))
                          (let* ((_%v96018%_ _%hd9598396013%_)
                                 (_%rest96020%_ _%tl9598496015%_))
                            (_%K9598096003%_
                             _%rest96020%_
                             _%v96018%_
                             _%k96011%_)))
                        (_%else9597895994%_))))
                (_%else9597895994%_))))))
    (define pget__0
      (lambda (_%key96025%_ _%lst96026%_)
        (let ((_%default96028%_ '#f))
          (pget__% _%key96025%_ _%lst96026%_ _%default96028%_))))
    (define pget
      (lambda _g99752_
        (let ((_g99753_ (let () (declare (not safe)) (##length _g99752_))))
          (cond ((let () (declare (not safe)) (##fx= _g99753_ 2))
                 (apply pget__0 _g99752_))
                ((let () (declare (not safe)) (##fx= _g99753_ 3))
                 (apply pget__% _g99752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g99752_))))))
    (define find
      (lambda (_%pred95948%_ _%lst95949%_)
        (if (procedure? _%pred95948%_)
            (let ((_%pred95953%_ _%pred95948%_))
              (__find _%pred95953%_ _%lst95949%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred95948%_)
              '#!void))))
    (define __find
      (lambda (_%pred95931%_ _%lst95932%_)
        (let* ((_%pred95935%_ _%pred95931%_)
               (_%$e95944%_ (__memf _%pred95935%_ _%lst95932%_)))
          (if _%$e95944%_
              (let () (declare (not safe)) (##car _%$e95944%_))
              '#f))))
    (define memf
      (lambda (_%proc95916%_ _%lst95917%_)
        (if (procedure? _%proc95916%_)
            (let ((_%proc95921%_ _%proc95916%_))
              (__memf _%proc95921%_ _%lst95917%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc95916%_)
              '#!void))))
    (define __memf
      (lambda (_%proc95866%_ _%lst95867%_)
        (let ((_%proc95870%_ _%proc95866%_))
          (let _%lp95879%_ ((_%rest95881%_ _%lst95867%_))
            (let* ((_%rest9588295890%_ _%rest95881%_)
                   (_%else9588495898%_ (lambda () '#f))
                   (_%K9588695904%_
                    (lambda (_%tl95901%_ _%hd95902%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95870%_ _%hd95902%_))
                          _%rest95881%_
                          (_%lp95879%_ _%tl95901%_)))))
              (if (pair? _%rest9588295890%_)
                  (let ((_%hd9588795907%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9588295890%_)))
                        (_%tl9588895909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9588295890%_))))
                    (let* ((_%hd95912%_ _%hd9588795907%_)
                           (_%tl95914%_ _%tl9588895909%_))
                      (_%K9588695904%_ _%tl95914%_ _%hd95912%_)))
                  (_%else9588495898%_)))))))
    (define remove1
      (lambda (_%el95819%_ _%lst95821%_)
        (let _%lp95824%_ ((_%rest95827%_ _%lst95821%_) (_%r95829%_ '()))
          (let* ((_%rest9583195839%_ _%rest95827%_)
                 (_%else9583395847%_ (lambda () _%lst95821%_))
                 (_%K9583595854%_
                  (lambda (_%rest95850%_ _%hd95851%_)
                    (if (equal? _%el95819%_ _%hd95851%_)
                        (__foldl1 cons _%rest95850%_ _%r95829%_)
                        (_%lp95824%_
                         _%rest95850%_
                         (cons _%hd95851%_ _%r95829%_))))))
            (if (pair? _%rest9583195839%_)
                (let ((_%hd9583695857%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9583195839%_)))
                      (_%tl9583795859%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9583195839%_))))
                  (let* ((_%hd95862%_ _%hd9583695857%_)
                         (_%rest95864%_ _%tl9583795859%_))
                    (_%K9583595854%_ _%rest95864%_ _%hd95862%_)))
                (_%else9583395847%_))))))
    (define remv1
      (lambda (_%el95772%_ _%lst95774%_)
        (let _%lp95777%_ ((_%rest95780%_ _%lst95774%_) (_%r95782%_ '()))
          (let* ((_%rest9578495792%_ _%rest95780%_)
                 (_%else9578695800%_ (lambda () _%lst95774%_))
                 (_%K9578895807%_
                  (lambda (_%rest95803%_ _%hd95804%_)
                    (if (eqv? _%el95772%_ _%hd95804%_)
                        (__foldl1 cons _%rest95803%_ _%r95782%_)
                        (_%lp95777%_
                         _%rest95803%_
                         (cons _%hd95804%_ _%r95782%_))))))
            (if (pair? _%rest9578495792%_)
                (let ((_%hd9578995810%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9578495792%_)))
                      (_%tl9579095812%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9578495792%_))))
                  (let* ((_%hd95815%_ _%hd9578995810%_)
                         (_%rest95817%_ _%tl9579095812%_))
                    (_%K9578895807%_ _%rest95817%_ _%hd95815%_)))
                (_%else9578695800%_))))))
    (define remq1
      (lambda (_%el95725%_ _%lst95727%_)
        (let _%lp95730%_ ((_%rest95733%_ _%lst95727%_) (_%r95735%_ '()))
          (let* ((_%rest9573795745%_ _%rest95733%_)
                 (_%else9573995753%_ (lambda () _%lst95727%_))
                 (_%K9574195760%_
                  (lambda (_%rest95756%_ _%hd95757%_)
                    (if (eq? _%el95725%_ _%hd95757%_)
                        (__foldl1 cons _%rest95756%_ _%r95735%_)
                        (_%lp95730%_
                         _%rest95756%_
                         (cons _%hd95757%_ _%r95735%_))))))
            (if (pair? _%rest9573795745%_)
                (let ((_%hd9574295763%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9573795745%_)))
                      (_%tl9574395765%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9573795745%_))))
                  (let* ((_%hd95768%_ _%hd9574295763%_)
                         (_%rest95770%_ _%tl9574395765%_))
                    (_%K9574195760%_ _%rest95770%_ _%hd95768%_)))
                (_%else9573995753%_))))))
    (define remf
      (lambda (_%proc95710%_ _%lst95711%_)
        (if (procedure? _%proc95710%_)
            (let ((_%proc95715%_ _%proc95710%_))
              (__remf _%proc95715%_ _%lst95711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc95710%_)
              '#!void))))
    (define __remf
      (lambda (_%proc95659%_ _%lst95660%_)
        (let ((_%proc95663%_ _%proc95659%_))
          (let _%lp95672%_ ((_%rest95674%_ _%lst95660%_) (_%r95675%_ '()))
            (let* ((_%rest9567695684%_ _%rest95674%_)
                   (_%else9567895692%_ (lambda () _%lst95660%_))
                   (_%K9568095698%_
                    (lambda (_%rest95695%_ _%hd95696%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95663%_ _%hd95696%_))
                          (__foldl1 cons _%rest95695%_ _%r95675%_)
                          (_%lp95672%_
                           _%rest95695%_
                           (cons _%hd95696%_ _%r95675%_))))))
              (if (pair? _%rest9567695684%_)
                  (let ((_%hd9568195701%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9567695684%_)))
                        (_%tl9568295703%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9567695684%_))))
                    (let* ((_%hd95706%_ _%hd9568195701%_)
                           (_%rest95708%_ _%tl9568295703%_))
                      (_%K9568095698%_ _%rest95708%_ _%hd95706%_)))
                  (_%else9567895692%_)))))))
    (define 1+
      (lambda (_%x95645%_)
        (if (number? _%x95645%_)
            (let ((_%x95649%_ _%x95645%_)) (__1+ _%x95649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x95645%_)
              '#!void))))
    (define __1+
      (lambda (_%x95633%_) (let ((_%x95636%_ _%x95633%_)) (+ _%x95636%_ '1))))
    (define 1-
      (lambda (_%x95619%_)
        (if (number? _%x95619%_)
            (let ((_%x95623%_ _%x95619%_)) (__1- _%x95623%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x95619%_)
              '#!void))))
    (define __1-
      (lambda (_%x95607%_) (let ((_%x95610%_ _%x95607%_)) (- _%x95610%_ '1))))
    (define fx1+
      (lambda (_%x95593%_)
        (if (fixnum? _%x95593%_)
            (let ((_%x95597%_ _%x95593%_)) (__fx1+ _%x95597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x95593%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x95581%_)
        (let ((_%x95584%_ _%x95581%_))
          (declare (not safe))
          (##fx+ _%x95584%_ '1))))
    (define fx1-
      (lambda (_%x95567%_)
        (if (fixnum? _%x95567%_)
            (let ((_%x95571%_ _%x95567%_)) (__fx1- _%x95571%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x95567%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x95555%_)
        (let ((_%x95558%_ _%x95555%_))
          (declare (not safe))
          (##fx- _%x95558%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x95552%_)
        (if (fixnum? _%x95552%_)
            (let () (declare (not safe)) (##fx>= _%x95552%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x95549%_)
        (if (fixnum? _%x95549%_)
            (let () (declare (not safe)) (##fx> _%x95549%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x95546%_)
        (let () (declare (not safe)) (##fx= _%x95546%_ '0))))
    (define fx<0?
      (lambda (_%x95543%_)
        (if (fixnum? _%x95543%_)
            (let () (declare (not safe)) (##fx< _%x95543%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x95540%_)
        (if (fixnum? _%x95540%_)
            (let () (declare (not safe)) (##fx<= _%x95540%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x95537%_)
        (if (symbol? _%x95537%_) (not (uninterned-symbol? _%x95537%_)) '#f)))
    (define display-as-string
      (lambda (_%x95522%_ _%port95523%_)
        (if (output-port? _%port95523%_)
            (let ((_%port95527%_ _%port95523%_))
              (__display-as-string _%x95522%_ _%port95527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port95523%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x95479%_ _%port95480%_)
        (let ((_%port95483%_ _%port95480%_))
          (if (or (string? _%x95479%_)
                  (symbol? _%x95479%_)
                  (keyword? _%x95479%_)
                  (number? _%x95479%_)
                  (char? _%x95479%_))
              (display _%x95479%_ _%port95483%_)
              (if (pair? _%x95479%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x95479%_))
                     _%port95483%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x95479%_))
                     _%port95483%_))
                  (if (vector? _%x95479%_)
                      (vector-for-each
                       (lambda (_%g9550695508%_)
                         (__display-as-string _%g9550695508%_ _%port95483%_))
                       _%x95479%_)
                      (if (or (null? _%x95479%_)
                              (eq? _%x95479%_ '#!void)
                              (eof-object? _%x95479%_)
                              (boolean? _%x95479%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x95479%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x95462%_)
        (if (string? _%x95462%_)
            _%x95462%_
            (if (symbol? _%x95462%_)
                (let () (declare (not safe)) (##symbol->string _%x95462%_))
                (if (keyword? _%x95462%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x95462%_))
                    (if (number? _%x95462%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x95462%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9546895470%_)
                           (__display-as-string
                            _%x95462%_
                            _%g9546895470%_)))))))))
    (define as-string__1
      (lambda _%args95473%_
        (call-with-output-string
         '()
         (lambda (_%g9547495476%_)
           (__display-as-string _%args95473%_ _%g9547495476%_)))))
    (define as-string
      (lambda _g99754_
        (let ((_g99755_ (let () (declare (not safe)) (##length _g99754_))))
          (cond ((let () (declare (not safe)) (##fx= _g99755_ 1))
                 (apply as-string__0 _g99754_))
                (#t
                 (apply (lambda _%args95473%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args95473%_)))
                        _g99754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g99754_))))))
    (define make-symbol__0
      (lambda (_%x95458%_)
        (if (interned-symbol? _%x95458%_)
            _%x95458%_
            (let ((__tmp99756 (as-string__0 _%x95458%_)))
              (declare (not safe))
              (##string->symbol __tmp99756)))))
    (define make-symbol__1
      (lambda _%args95460%_
        (let ((__tmp99757
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95460%_))))
          (declare (not safe))
          (##string->symbol __tmp99757))))
    (define make-symbol
      (lambda _g99758_
        (let ((_g99759_ (let () (declare (not safe)) (##length _g99758_))))
          (cond ((let () (declare (not safe)) (##fx= _g99759_ 1))
                 (apply make-symbol__0 _g99758_))
                (#t
                 (apply (lambda _%args95460%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args95460%_)))
                        _g99758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g99758_))))))
    (define make-keyword__0
      (lambda (_%x95454%_)
        (if (interned-keyword? _%x95454%_)
            _%x95454%_
            (let ((__tmp99760 (as-string__0 _%x95454%_)))
              (declare (not safe))
              (##string->keyword __tmp99760)))))
    (define make-keyword__1
      (lambda _%args95456%_
        (let ((__tmp99761
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95456%_))))
          (declare (not safe))
          (##string->keyword __tmp99761))))
    (define make-keyword
      (lambda _g99762_
        (let ((_g99763_ (let () (declare (not safe)) (##length _g99762_))))
          (cond ((let () (declare (not safe)) (##fx= _g99763_ 1))
                 (apply make-keyword__0 _g99762_))
                (#t
                 (apply (lambda _%args95456%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args95456%_)))
                        _g99762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g99762_))))))
    (define interned-keyword?
      (lambda (_%x95451%_)
        (if (keyword? _%x95451%_) (not (uninterned-keyword? _%x95451%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym95437%_)
        (if (symbol? _%sym95437%_)
            (let ((_%sym95441%_ _%sym95437%_))
              (__symbol->keyword _%sym95441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym95437%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym95425%_)
        (let ((_%sym95428%_ _%sym95425%_))
          (if (uninterned-symbol? _%sym95428%_)
              (let ((__tmp99764
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95428%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp99764))
              (let ((__tmp99765
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95428%_))))
                (declare (not safe))
                (##string->keyword __tmp99765))))))
    (define keyword->symbol
      (lambda (_%sym95411%_)
        (if (keyword? _%sym95411%_)
            (let ((_%sym95415%_ _%sym95411%_))
              (__keyword->symbol _%sym95415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym95411%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym95399%_)
        (let ((_%sym95402%_ _%sym95399%_))
          (if (uninterned-keyword? _%sym95402%_)
              (let ((__tmp99766
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95402%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp99766))
              (let ((__tmp99767
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95402%_))))
                (declare (not safe))
                (##string->symbol __tmp99767))))))
    (define bytes->string__%
      (lambda (_%bstr95364%_ _%enc95365%_)
        (if (u8vector? _%bstr95364%_)
            (let ((_%bstr95369%_ _%bstr95364%_))
              (if (symbol? _%enc95365%_)
                  (let ((_%enc95379%_ _%enc95365%_))
                    (__bytes->string__% _%bstr95369%_ _%enc95379%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95365%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr95364%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr95392%_)
        (let ((_%enc95394%_ 'UTF-8))
          (bytes->string__% _%bstr95392%_ _%enc95394%_))))
    (define bytes->string
      (lambda _g99768_
        (let ((_g99769_ (let () (declare (not safe)) (##length _g99768_))))
          (cond ((let () (declare (not safe)) (##fx= _g99769_ 1))
                 (apply bytes->string__0 _g99768_))
                ((let () (declare (not safe)) (##fx= _g99769_ 2))
                 (apply bytes->string__% _g99768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g99768_))))))
    (define __bytes->string__%
      (lambda (_%bstr95323%_ _%enc95324%_)
        (let* ((_%bstr95327%_ _%bstr95323%_) (_%enc95335%_ _%enc95324%_))
          (if (eq? _%enc95335%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr95327%_))
              (let* ((_%in95344%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc95335%_
                                   (cons 'init: (cons _%bstr95327%_ '()))))))
                     (_%len95346%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr95327%_)))
                     (_%out95348%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len95346%_)))
                     (_%n95350%_
                      (read-substring
                       _%out95348%_
                       '0
                       _%len95346%_
                       _%in95344%_)))
                (string-shrink! _%out95348%_ _%n95350%_)
                _%out95348%_)))))
    (define __bytes->string__0
      (lambda (_%bstr95356%_)
        (let ((_%enc95358%_ 'UTF-8))
          (__bytes->string__% _%bstr95356%_ _%enc95358%_))))
    (define __bytes->string
      (lambda _g99770_
        (let ((_g99771_ (let () (declare (not safe)) (##length _g99770_))))
          (cond ((let () (declare (not safe)) (##fx= _g99771_ 1))
                 (apply __bytes->string__0 _g99770_))
                ((let () (declare (not safe)) (##fx= _g99771_ 2))
                 (apply __bytes->string__% _g99770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g99770_))))))
    (define string->bytes__%
      (lambda (_%str95287%_ _%enc95288%_)
        (if (string? _%str95287%_)
            (let ((_%str95292%_ _%str95287%_))
              (if (symbol? _%enc95288%_)
                  (let ((_%enc95302%_ _%enc95288%_))
                    (__string->bytes__% _%str95292%_ _%enc95302%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95288%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str95287%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str95315%_)
        (let ((_%enc95317%_ 'UTF-8))
          (string->bytes__% _%str95315%_ _%enc95317%_))))
    (define string->bytes
      (lambda _g99772_
        (let ((_g99773_ (let () (declare (not safe)) (##length _g99772_))))
          (cond ((let () (declare (not safe)) (##fx= _g99773_ 1))
                 (apply string->bytes__0 _g99772_))
                ((let () (declare (not safe)) (##fx= _g99773_ 2))
                 (apply string->bytes__% _g99772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g99772_))))))
    (define __string->bytes__%
      (lambda (_%str95255%_ _%enc95256%_)
        (let* ((_%str95259%_ _%str95255%_) (_%enc95267%_ _%enc95256%_))
          (if (eq? _%enc95267%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str95259%_))
              (__substring->bytes__%
               _%str95259%_
               '0
               (let () (declare (not safe)) (##string-length _%str95259%_))
               _%enc95267%_)))))
    (define __string->bytes__0
      (lambda (_%str95279%_)
        (let ((_%enc95281%_ 'UTF-8))
          (__string->bytes__% _%str95279%_ _%enc95281%_))))
    (define __string->bytes
      (lambda _g99774_
        (let ((_g99775_ (let () (declare (not safe)) (##length _g99774_))))
          (cond ((let () (declare (not safe)) (##fx= _g99775_ 1))
                 (apply __string->bytes__0 _g99774_))
                ((let () (declare (not safe)) (##fx= _g99775_ 2))
                 (apply __string->bytes__% _g99774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g99774_))))))
    (define substring->bytes__%
      (lambda (_%str95203%_ _%start95204%_ _%end95205%_ _%enc95206%_)
        (if (string? _%str95203%_)
            (let ((_%str95210%_ _%str95203%_))
              (if (nonnegative-fixnum? _%start95204%_)
                  (let ((_%start95220%_ _%start95204%_))
                    (if (nonnegative-fixnum? _%end95205%_)
                        (let ((_%end95230%_ _%end95205%_))
                          (__substring->bytes__%
                           _%str95210%_
                           _%start95220%_
                           _%end95230%_
                           _%enc95206%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end95205%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start95204%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str95203%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str95243%_ _%start95244%_ _%end95245%_)
        (let ((_%enc95247%_ 'UTF-8))
          (substring->bytes__%
           _%str95243%_
           _%start95244%_
           _%end95245%_
           _%enc95247%_))))
    (define substring->bytes
      (lambda _g99776_
        (let ((_g99777_ (let () (declare (not safe)) (##length _g99776_))))
          (cond ((let () (declare (not safe)) (##fx= _g99777_ 3))
                 (apply substring->bytes__0 _g99776_))
                ((let () (declare (not safe)) (##fx= _g99777_ 4))
                 (apply substring->bytes__% _g99776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g99776_))))))
    (define __substring->bytes__%
      (lambda (_%str95155%_ _%start95156%_ _%end95157%_ _%enc95158%_)
        (let* ((_%str95161%_ _%str95155%_)
               (_%start95169%_ _%start95156%_)
               (_%end95177%_ _%end95157%_))
          (if (eq? _%enc95158%_ 'UTF-8)
              (string->utf8 _%str95161%_ _%start95169%_ _%end95177%_)
              (let ((_%out95186%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc95158%_ '())))))
                (write-substring
                 _%str95161%_
                 _%start95169%_
                 _%end95177%_
                 _%out95186%_)
                (get-output-u8vector _%out95186%_))))))
    (define __substring->bytes__0
      (lambda (_%str95191%_ _%start95192%_ _%end95193%_)
        (let ((_%enc95195%_ 'UTF-8))
          (__substring->bytes__%
           _%str95191%_
           _%start95192%_
           _%end95193%_
           _%enc95195%_))))
    (define __substring->bytes
      (lambda _g99778_
        (let ((_g99779_ (let () (declare (not safe)) (##length _g99778_))))
          (cond ((let () (declare (not safe)) (##fx= _g99779_ 3))
                 (apply __substring->bytes__0 _g99778_))
                ((let () (declare (not safe)) (##fx= _g99779_ 4))
                 (apply __substring->bytes__% _g99778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g99778_))))))
    (define string-empty?
      (lambda (_%str95140%_)
        (if (string? _%str95140%_)
            (let ((_%str95144%_ _%str95140%_)) (__string-empty? _%str95144%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str95140%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str95128%_)
        (let* ((_%str95131%_ _%str95128%_)
               (__tmp99780
                (let () (declare (not safe)) (##string-length _%str95131%_))))
          (declare (not safe))
          (##fxzero? __tmp99780))))
    (define string-index__%
      (lambda (_%str95080%_ _%char95081%_ _%start95082%_)
        (if (string? _%str95080%_)
            (let ((_%str95086%_ _%str95080%_))
              (if (char? _%char95081%_)
                  (let ((_%char95096%_ _%char95081%_))
                    (if (nonnegative-fixnum? _%start95082%_)
                        (let ((_%start95106%_ _%start95082%_))
                          (__string-index__%
                           _%str95086%_
                           _%char95096%_
                           _%start95106%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start95082%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char95081%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str95080%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str95119%_ _%char95120%_)
        (let ((_%start95122%_ '0))
          (string-index__% _%str95119%_ _%char95120%_ _%start95122%_))))
    (define string-index
      (lambda _g99781_
        (let ((_g99782_ (let () (declare (not safe)) (##length _g99781_))))
          (cond ((let () (declare (not safe)) (##fx= _g99782_ 2))
                 (apply string-index__0 _g99781_))
                ((let () (declare (not safe)) (##fx= _g99782_ 3))
                 (apply string-index__% _g99781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g99781_))))))
    (define __string-index__%
      (lambda (_%str95019%_ _%char95020%_ _%start95021%_)
        (let* ((_%str95024%_ _%str95019%_)
               (_%char95032%_ _%char95020%_)
               (_%start95040%_ _%start95021%_)
               (_%len95049%_
                (let () (declare (not safe)) (##string-length _%str95024%_))))
          (let _%lp95051%_ ((_%k95053%_ _%start95040%_))
            (let ((_%k95055%_ _%k95053%_))
              (if (let () (declare (not safe)) (##fx< _%k95055%_ _%len95049%_))
                  (if (eq? _%char95032%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95024%_ _%k95055%_)))
                      _%k95055%_
                      (_%lp95051%_
                       (let () (declare (not safe)) (##fx+ _%k95055%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str95070%_ _%char95071%_)
        (let ((_%start95073%_ '0))
          (__string-index__% _%str95070%_ _%char95071%_ _%start95073%_))))
    (define __string-index
      (lambda _g99783_
        (let ((_g99784_ (let () (declare (not safe)) (##length _g99783_))))
          (cond ((let () (declare (not safe)) (##fx= _g99784_ 2))
                 (apply __string-index__0 _g99783_))
                ((let () (declare (not safe)) (##fx= _g99784_ 3))
                 (apply __string-index__% _g99783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g99783_))))))
    (define string-rindex__%
      (lambda (_%str94980%_ _%char94981%_ _%start94982%_)
        (if (string? _%str94980%_)
            (let ((_%str94986%_ _%str94980%_))
              (if (char? _%char94981%_)
                  (let ((_%char94996%_ _%char94981%_))
                    (__string-rindex__%
                     _%str94986%_
                     _%char94996%_
                     _%start94982%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char94981%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str94980%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str95009%_ _%char95010%_)
        (let ((_%start95012%_ '#f))
          (string-rindex__% _%str95009%_ _%char95010%_ _%start95012%_))))
    (define string-rindex
      (lambda _g99785_
        (let ((_g99786_ (let () (declare (not safe)) (##length _g99785_))))
          (cond ((let () (declare (not safe)) (##fx= _g99786_ 2))
                 (apply string-rindex__0 _g99785_))
                ((let () (declare (not safe)) (##fx= _g99786_ 3))
                 (apply string-rindex__% _g99785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g99785_))))))
    (define __string-rindex__%
      (lambda (_%str94922%_ _%char94923%_ _%start94924%_)
        (let* ((_%str94927%_ _%str94922%_)
               (_%char94935%_ _%char94923%_)
               (_%len94944%_
                (let () (declare (not safe)) (##string-length _%str94927%_)))
               (_%start94946%_
                (if (fixnum? _%start94924%_)
                    _%start94924%_
                    (let () (declare (not safe)) (##fx- _%len94944%_ '1)))))
          (let _%lp94949%_ ((_%k94951%_ _%start94946%_))
            (let ((_%k94953%_ _%k94951%_))
              (if (let () (declare (not safe)) (##fx>= _%k94953%_ '0))
                  (if (eq? _%char94935%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str94927%_ _%k94953%_)))
                      _%k94953%_
                      (_%lp94949%_
                       (let () (declare (not safe)) (##fx- _%k94953%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str94970%_ _%char94971%_)
        (let ((_%start94973%_ '#f))
          (__string-rindex__% _%str94970%_ _%char94971%_ _%start94973%_))))
    (define __string-rindex
      (lambda _g99787_
        (let ((_g99788_ (let () (declare (not safe)) (##length _g99787_))))
          (cond ((let () (declare (not safe)) (##fx= _g99788_ 2))
                 (apply __string-rindex__0 _g99787_))
                ((let () (declare (not safe)) (##fx= _g99788_ 3))
                 (apply __string-rindex__% _g99787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g99787_))))))
    (define string-split
      (lambda (_%str94896%_ _%char94897%_)
        (if (string? _%str94896%_)
            (let ((_%str94901%_ _%str94896%_))
              (if (char? _%char94897%_)
                  (let ((_%char94911%_ _%char94897%_))
                    (__string-split _%str94901%_ _%char94911%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char94897%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str94896%_)
              '#!void))))
    (define __string-split
      (lambda (_%str94837%_ _%char94838%_)
        (let* ((_%str94841%_ _%str94837%_)
               (_%char94849%_ _%char94838%_)
               (_%len94858%_
                (let () (declare (not safe)) (##string-length _%str94841%_))))
          (let _%lp94860%_ ((_%start94862%_ '0) (_%r94863%_ '()))
            (let* ((_%start94866%_ _%start94862%_)
                   (_%$e94879%_
                    (__string-index__%
                     _%str94841%_
                     _%char94849%_
                     _%start94866%_)))
              (if _%$e94879%_
                  ((lambda (_%end94882%_)
                     (let ((_%end94884%_ _%end94882%_))
                       (_%lp94860%_
                        (let () (declare (not safe)) (##fx+ _%end94884%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str94841%_
                                 _%start94866%_
                                 _%end94884%_))
                              _%r94863%_))))
                   _%$e94879%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start94866%_ _%len94858%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str94841%_
                                _%start94866%_
                                _%len94858%_)))
                       _%r94863%_)
                      (reverse! _%r94863%_))))))))
    (define string-join
      (lambda (_%strs94687%_ _%join94688%_)
        (letrec ((_%join-length94691%_
                  (lambda (_%strs94775%_ _%jlen94776%_)
                    (let _%lp94778%_ ((_%rest94780%_ _%strs94775%_)
                                      (_%len94781%_ '0))
                      (let* ((_%len94783%_ _%len94781%_)
                             (_%rest9479194799%_ _%rest94780%_)
                             (_%else9479394807%_ (lambda () '0))
                             (_%K9479594825%_
                              (lambda (_%rest94810%_ _%hd94811%_)
                                (if (string? _%hd94811%_)
                                    (let ((_%hd94813%_ _%hd94811%_))
                                      (if (pair? _%rest94810%_)
                                          (_%lp94778%_
                                           _%rest94810%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd94813%_))
                                                _%jlen94776%_
                                                _%len94783%_))
                                          (let ((__tmp99789
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd94813%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp99789 _%len94783%_))))
                                    (error '"expected string" _%hd94811%_)))))
                        (if (pair? _%rest9479194799%_)
                            (let ((_%hd9479694828%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9479194799%_)))
                                  (_%tl9479794830%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9479194799%_))))
                              (let* ((_%hd94833%_ _%hd9479694828%_)
                                     (_%rest94835%_ _%tl9479794830%_))
                                (_%K9479594825%_ _%rest94835%_ _%hd94833%_)))
                            (_%else9479394807%_)))))))
          (let* ((_%join94696%_
                  (if (char? _%join94688%_)
                      (let () (declare (not safe)) (##string _%join94688%_))
                      (if (string? _%join94688%_)
                          _%join94688%_
                          (error '"expected string or char" _%join94688%_))))
                 (_%jlen94698%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join94696%_)))
                 (_%olen94700%_
                  (_%join-length94691%_ _%strs94687%_ _%jlen94698%_))
                 (_%ostr94702%_
                  (let () (declare (not safe)) (##make-string _%olen94700%_))))
            (let _%lp94705%_ ((_%rest94707%_ _%strs94687%_) (_%k94708%_ '0))
              (let* ((_%k94711%_ _%k94708%_)
                     (_%rest9472794735%_ _%rest94707%_)
                     (_%else9472994743%_ (lambda () '""))
                     (_%K9473194763%_
                      (lambda (_%rest94746%_ _%hd94747%_)
                        (let* ((_%hd94749%_ _%hd94747%_)
                               (_%hdlen94761%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd94749%_))))
                          (if (pair? _%rest94746%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94749%_
                                   '0
                                   _%hdlen94761%_
                                   _%ostr94702%_
                                   _%k94711%_))
                                (let ((__tmp99790
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k94711%_ _%hdlen94761%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join94696%_
                                   '0
                                   _%jlen94698%_
                                   _%ostr94702%_
                                   __tmp99790))
                                (_%lp94705%_
                                 _%rest94746%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k94711%_
                                          _%hdlen94761%_
                                          _%jlen94698%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94749%_
                                   '0
                                   _%hdlen94761%_
                                   _%ostr94702%_
                                   _%k94711%_))
                                _%ostr94702%_))))))
                (if (pair? _%rest9472794735%_)
                    (let ((_%hd9473294766%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9472794735%_)))
                          (_%tl9473394768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9472794735%_))))
                      (let* ((_%hd94771%_ _%hd9473294766%_)
                             (_%rest94773%_ _%tl9473394768%_))
                        (_%K9473194763%_ _%rest94773%_ _%hd94771%_)))
                    (_%else9472994743%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes94613%_ _%port94614%_ _%start94615%_ _%end94616%_)
        (if (u8vector? _%bytes94613%_)
            (let ((_%bytes94620%_ _%bytes94613%_))
              (if (input-port? _%port94614%_)
                  (let ((_%port94630%_ _%port94614%_))
                    (if ((lambda (_%o94639%_)
                           (and (fixnum? _%o94639%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o94639%_ '0))
                                (let ((__tmp99791
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94620%_))))
                                  (declare (not safe))
                                  (##fx< _%o94639%_ __tmp99791))))
                         _%start94615%_)
                        (let ((_%start94643%_ _%start94615%_))
                          (if ((lambda (_%o94652%_)
                                 (and (fixnum? _%o94652%_)
                                      (let ((__tmp99792
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes94620%_))))
                                        (declare (not safe))
                                        (##fx<= _%start94643%_
                                                _%o94652%_
                                                __tmp99792))))
                               _%end94616%_)
                              (let ((_%end94656%_ _%end94616%_))
                                (__read-u8vector__%
                                 _%bytes94620%_
                                 _%port94630%_
                                 _%start94643%_
                                 _%end94656%_))
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
                                 _%end94616%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start94615%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port94614%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes94613%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes94669%_ _%port94670%_)
        (let* ((_%start94672%_ '0)
               (_%end94674%_ (u8vector-length _%bytes94669%_)))
          (read-u8vector__%
           _%bytes94669%_
           _%port94670%_
           _%start94672%_
           _%end94674%_))))
    (define read-u8vector__1
      (lambda (_%bytes94676%_ _%port94677%_ _%start94678%_)
        (let ((_%end94680%_ (u8vector-length _%bytes94676%_)))
          (read-u8vector__%
           _%bytes94676%_
           _%port94677%_
           _%start94678%_
           _%end94680%_))))
    (define read-u8vector
      (lambda _g99793_
        (let ((_g99794_ (let () (declare (not safe)) (##length _g99793_))))
          (cond ((let () (declare (not safe)) (##fx= _g99794_ 2))
                 (apply read-u8vector__0 _g99793_))
                ((let () (declare (not safe)) (##fx= _g99794_ 3))
                 (apply read-u8vector__1 _g99793_))
                ((let () (declare (not safe)) (##fx= _g99794_ 4))
                 (apply read-u8vector__% _g99793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g99793_))))))
    (define __read-u8vector__%
      (lambda (_%bytes94552%_ _%port94553%_ _%start94554%_ _%end94555%_)
        (let* ((_%bytes94558%_ _%bytes94552%_)
               (_%port94566%_ _%port94553%_)
               (_%start94574%_ _%start94554%_)
               (_%end94582%_ _%end94555%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes94558%_
           _%start94574%_
           _%end94582%_
           _%port94566%_))))
    (define __read-u8vector__0
      (lambda (_%bytes94594%_ _%port94595%_)
        (let* ((_%start94597%_ '0)
               (_%end94599%_ (u8vector-length _%bytes94594%_)))
          (__read-u8vector__%
           _%bytes94594%_
           _%port94595%_
           _%start94597%_
           _%end94599%_))))
    (define __read-u8vector__1
      (lambda (_%bytes94601%_ _%port94602%_ _%start94603%_)
        (let ((_%end94605%_ (u8vector-length _%bytes94601%_)))
          (__read-u8vector__%
           _%bytes94601%_
           _%port94602%_
           _%start94603%_
           _%end94605%_))))
    (define __read-u8vector
      (lambda _g99795_
        (let ((_g99796_ (let () (declare (not safe)) (##length _g99795_))))
          (cond ((let () (declare (not safe)) (##fx= _g99796_ 2))
                 (apply __read-u8vector__0 _g99795_))
                ((let () (declare (not safe)) (##fx= _g99796_ 3))
                 (apply __read-u8vector__1 _g99795_))
                ((let () (declare (not safe)) (##fx= _g99796_ 4))
                 (apply __read-u8vector__% _g99795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g99795_))))))
    (define write-u8vector__%
      (lambda (_%bytes94482%_ _%port94483%_ _%start94484%_ _%end94485%_)
        (if (u8vector? _%bytes94482%_)
            (let ((_%bytes94489%_ _%bytes94482%_))
              (if (output-port? _%port94483%_)
                  (let* ((_%port94499%_ _%port94483%_)
                         (_%start94508%_ _%start94484%_))
                    (if ((lambda (_%o94516%_)
                           (and (fixnum? _%o94516%_)
                                (let ((__tmp99797
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94489%_))))
                                  (declare (not safe))
                                  (##fx<= _%start94508%_
                                          _%o94516%_
                                          __tmp99797))))
                         _%end94485%_)
                        (let ((_%end94520%_ _%end94485%_))
                          (__write-u8vector__%
                           _%bytes94489%_
                           _%port94499%_
                           _%start94508%_
                           _%end94520%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end94485%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port94483%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes94482%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes94533%_ _%port94534%_)
        (let* ((_%start94536%_ '0)
               (_%end94538%_ (u8vector-length _%bytes94533%_)))
          (write-u8vector__%
           _%bytes94533%_
           _%port94534%_
           _%start94536%_
           _%end94538%_))))
    (define write-u8vector__1
      (lambda (_%bytes94540%_ _%port94541%_ _%start94542%_)
        (let ((_%end94544%_ (u8vector-length _%bytes94540%_)))
          (write-u8vector__%
           _%bytes94540%_
           _%port94541%_
           _%start94542%_
           _%end94544%_))))
    (define write-u8vector
      (lambda _g99798_
        (let ((_g99799_ (let () (declare (not safe)) (##length _g99798_))))
          (cond ((let () (declare (not safe)) (##fx= _g99799_ 2))
                 (apply write-u8vector__0 _g99798_))
                ((let () (declare (not safe)) (##fx= _g99799_ 3))
                 (apply write-u8vector__1 _g99798_))
                ((let () (declare (not safe)) (##fx= _g99799_ 4))
                 (apply write-u8vector__% _g99798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g99798_))))))
    (define __write-u8vector__%
      (lambda (_%bytes94421%_ _%port94422%_ _%start94423%_ _%end94424%_)
        (let* ((_%bytes94427%_ _%bytes94421%_)
               (_%port94435%_ _%port94422%_)
               (_%start94443%_ _%start94423%_)
               (_%end94451%_ _%end94424%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes94427%_
           _%start94443%_
           _%end94451%_
           _%port94435%_))))
    (define __write-u8vector__0
      (lambda (_%bytes94463%_ _%port94464%_)
        (let* ((_%start94466%_ '0)
               (_%end94468%_ (u8vector-length _%bytes94463%_)))
          (__write-u8vector__%
           _%bytes94463%_
           _%port94464%_
           _%start94466%_
           _%end94468%_))))
    (define __write-u8vector__1
      (lambda (_%bytes94470%_ _%port94471%_ _%start94472%_)
        (let ((_%end94474%_ (u8vector-length _%bytes94470%_)))
          (__write-u8vector__%
           _%bytes94470%_
           _%port94471%_
           _%start94472%_
           _%end94474%_))))
    (define __write-u8vector
      (lambda _g99800_
        (let ((_g99801_ (let () (declare (not safe)) (##length _g99800_))))
          (cond ((let () (declare (not safe)) (##fx= _g99801_ 2))
                 (apply __write-u8vector__0 _g99800_))
                ((let () (declare (not safe)) (##fx= _g99801_ 3))
                 (apply __write-u8vector__1 _g99800_))
                ((let () (declare (not safe)) (##fx= _g99801_ 4))
                 (apply __write-u8vector__% _g99800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g99800_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag94389%_
               _%dbg-exprs94390%_
               _%dbg-thunks94391%_
               _%expr94392%_
               _%thunk94393%_)
        (letrec ((_%o94395%_ (current-output-port))
                 (_%e94396%_ (current-error-port))
                 (_%p94397%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f94398%_
                  (lambda ()
                    (force-output _%o94395%_)
                    (force-output _%e94396%_)))
                 (_%d94399%_
                  (lambda (_%x94406%_) (display _%x94406%_ _%e94396%_)))
                 (_%w94400%_
                  (lambda (_%x94408%_) (_%p94397%_ _%x94408%_ _%e94396%_)))
                 (_%n94401%_ (lambda () (newline _%e94396%_)))
                 (_%v94402%_
                  (lambda (_%l94411%_)
                    (for-each
                     (lambda (_%x94413%_)
                       (_%d94399%_ '" ")
                       (_%w94400%_ _%x94413%_))
                     _%l94411%_)
                    (_%n94401%_)))
                 (_%x94403%_
                  (lambda (_%expr94415%_ _%thunk94416%_)
                    (_%f94398%_)
                    (_%d94399%_ '"  ")
                    (_%w94400%_ _%expr94415%_)
                    (_%d94399%_ '" =>")
                    (call-with-values
                     _%thunk94416%_
                     (lambda _%x94418%_
                       (_%v94402%_ _%x94418%_)
                       (_%f94398%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x94418%_)))))))
          (if _%tag94389%_
              (begin
                (if (eq? _%tag94389%_ '#!void)
                    '#!void
                    (begin
                      (_%f94398%_)
                      (_%d94399%_ _%tag94389%_)
                      (_%n94401%_)))
                (for-each _%x94403%_ _%dbg-exprs94390%_ _%dbg-thunks94391%_)
                (if _%thunk94393%_
                    (_%x94403%_ _%expr94392%_ _%thunk94393%_)
                    '#!void))
              (if _%thunk94393%_ (_%thunk94393%_) '#!void)))))))
