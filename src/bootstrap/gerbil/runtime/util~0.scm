(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1713001405)
  (begin
    (define raise-contract-violation-error error)
    (define raise-contract-violation-error-set!
      (lambda (_%new-value87954%_)
        (if (procedure? _%new-value87954%_)
            (let ((_%new-value87958%_ _%new-value87954%_))
              (__raise-contract-violation-error-set! _%new-value87958%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/util
               'contract:
               'procedure?
               'value:
               _%new-value87954%_)
              '#!void))))
    (define __raise-contract-violation-error-set!
      (lambda (_%new-value87941%_)
        (let ((_%new-value87945%_ _%new-value87941%_))
          (set! raise-contract-violation-error _%new-value87945%_))))
    (define displayln
      (lambda _%args87938%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args87938%_))
          (newline))))
    (define display*
      (lambda _%args87935%_
        (let () (declare (not safe)) (##for-each display _%args87935%_))))
    (define file-newer?
      (lambda (_%file187910%_ _%file287911%_)
        (if (string? _%file187910%_)
            (let ((_%file187915%_ _%file187910%_))
              (if (string? _%file287911%_)
                  (let ((_%file287925%_ _%file287911%_))
                    (__file-newer? _%file187915%_ _%file287925%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@63.20-63.25"
                     'contract:
                     'string?
                     'value:
                     _%file287911%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@62.20-62.25"
               'contract:
               'string?
               'value:
               _%file187910%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file187858%_ _%file287859%_)
        (let* ((_%file187862%_ _%file187858%_) (_%file287870%_ _%file287859%_))
          (letrec ((_%modification-time87879%_
                    (lambda (_%file87898%_)
                      (let ((_%file87901%_ _%file87898%_))
                        (_%__modification-time87880%_ _%file87901%_))))
                   (_%__modification-time87880%_
                    (lambda (_%file87882%_)
                      (let* ((_%file87885%_ _%file87882%_)
                             (__tmp89695
                              (let ((__tmp89696
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file87885%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp89696))))
                        (declare (not safe))
                        (##time->seconds __tmp89695)))))
            (let ((__tmp89698 (_%__modification-time87880%_ _%file187862%_))
                  (__tmp89697 (_%__modification-time87880%_ _%file287870%_)))
              (declare (not safe))
              (##fl> __tmp89698 __tmp89697))))))
    (define create-directory*__%
      (lambda (_%dir87823%_ _%perms87824%_)
        (if (string? _%dir87823%_)
            (let ((_%dir87828%_ _%dir87823%_))
              (if (fixnum? _%perms87824%_)
                  (let ((_%perms87838%_ _%perms87824%_))
                    (__create-directory*__% _%dir87828%_ _%perms87838%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@74.26-74.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms87824%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@73.26-73.29"
               'contract:
               'string?
               'value:
               _%dir87823%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir87851%_)
        (let ((_%perms87853%_ '493))
          (create-directory*__% _%dir87851%_ _%perms87853%_))))
    (define create-directory*
      (lambda _g89700_
        (let ((_g89699_ (let () (declare (not safe)) (##length _g89700_))))
          (cond ((let () (declare (not safe)) (##fx= _g89699_ 1))
                 (apply create-directory*__0 _g89700_))
                ((let () (declare (not safe)) (##fx= _g89699_ 2))
                 (apply create-directory*__% _g89700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g89700_))))))
    (define __create-directory*__%
      (lambda (_%dir87747%_ _%perms87748%_)
        (let* ((_%dir87751%_ _%dir87747%_) (_%perms87759%_ _%perms87748%_))
          (letrec ((_%create187768%_
                    (lambda (_%path87800%_)
                      (let ((_%path87803%_ _%path87800%_))
                        (_%__create187769%_ _%path87803%_))))
                   (_%__create187769%_
                    (lambda (_%path87781%_)
                      (let ((_%path87784%_ _%path87781%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path87784%_))
                            (if (eq? (file-type _%path87784%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path87784%_))
                            (if _%perms87759%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path87784%_
                                             (cons 'permissions:
                                                   (cons _%perms87759%_
                                                         '())))))
                                (create-directory _%path87784%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir87751%_))
                '#!void
                (let _%lp87771%_ ((_%start87773%_ '0))
                  (let ((_%$e87775%_
                         (__string-index__% _%dir87751%_ '#\/ _%start87773%_)))
                    (if _%$e87775%_
                        ((lambda (_%x87778%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x87778%_ '0))
                               (_%__create187769%_
                                (substring _%dir87751%_ '0 _%x87778%_))
                               '#!void)
                           (_%lp87771%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x87778%_ '1))))
                         _%$e87775%_)
                        (_%__create187769%_ _%dir87751%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir87815%_)
        (let ((_%perms87817%_ '493))
          (__create-directory*__% _%dir87815%_ _%perms87817%_))))
    (define __create-directory*
      (lambda _g89702_
        (let ((_g89701_ (let () (declare (not safe)) (##length _g89702_))))
          (cond ((let () (declare (not safe)) (##fx= _g89701_ 1))
                 (apply __create-directory*__0 _g89702_))
                ((let () (declare (not safe)) (##fx= _g89701_ 2))
                 (apply __create-directory*__% _g89702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g89702_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore87743%_ '#t))
    (define true? (lambda (_%obj87740%_) (eq? _%obj87740%_ '#t)))
    (define false (lambda _%ignore87737%_ '#f))
    (define void (lambda _%ignore87734%_ '#!void))
    (define void? (lambda (_%obj87731%_) (eq? _%obj87731%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj87728%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj87728%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj87725%_) (eq? _%obj87725%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj87722%_) (eq? _%obj87722%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj87719%_) (eq? _%obj87719%_ '#!optional)))
    (define immediate?
      (lambda (_%obj87714%_)
        (let* ((_%t87717%_ (let () (declare (not safe)) (##type _%obj87714%_)))
               (__tmp89703
                (let () (declare (not safe)) (##fxand _%t87717%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp89703))))
    (define nonnegative-fixnum?
      (lambda (_%obj87711%_)
        (if (fixnum? _%obj87711%_)
            (let () (declare (not safe)) (##fx>= _%obj87711%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj87705%_)
        (let ((_%$e87708%_ (pair? _%obj87705%_)))
          (if _%$e87708%_ _%$e87708%_ (null? _%obj87705%_)))))
    (define values-count
      (lambda (_%obj87702%_)
        (if (let () (declare (not safe)) (##values? _%obj87702%_))
            (let () (declare (not safe)) (##vector-length _%obj87702%_))
            '1)))
    (define values-ref
      (lambda (_%obj87687%_ _%k87688%_)
        (if (fixnum? _%k87688%_)
            (let ((_%k87692%_ _%k87688%_))
              (__values-ref _%obj87687%_ _%k87692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@199.23-199.24"
               'contract:
               'fixnum?
               'value:
               _%k87688%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj87674%_ _%k87675%_)
        (let ((_%k87678%_ _%k87675%_))
          (if (let () (declare (not safe)) (##values? _%obj87674%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj87674%_ _%k87678%_))
              _%obj87674%_))))
    (define values->list
      (lambda (_%obj87671%_)
        (if (let () (declare (not safe)) (##values? _%obj87671%_))
            (let () (declare (not safe)) (##vector->list _%obj87671%_))
            (list _%obj87671%_))))
    (define foldl1
      (lambda (_%f87655%_ _%iv87656%_ _%lst87657%_)
        (if (procedure? _%f87655%_)
            (let ((_%f87661%_ _%f87655%_))
              (__foldl1 _%f87661%_ _%iv87656%_ _%lst87657%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@222.15-222.16"
               'contract:
               'procedure?
               'value:
               _%f87655%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f87603%_ _%iv87604%_ _%lst87605%_)
        (let ((_%f87608%_ _%f87603%_))
          (let _%lp87617%_ ((_%rest87619%_ _%lst87605%_)
                            (_%r87620%_ _%iv87604%_))
            (let* ((_%rest8762187629%_ _%rest87619%_)
                   (_%else8762387637%_ (lambda () _%r87620%_))
                   (_%K8762587643%_
                    (lambda (_%rest87640%_ _%x87641%_)
                      (_%lp87617%_
                       _%rest87640%_
                       (let ()
                         (declare (not safe))
                         (_%f87608%_ _%x87641%_ _%r87620%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8762187629%_))
                  (let ((_%hd8762687646%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8762187629%_)))
                        (_%tl8762787648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8762187629%_))))
                    (let* ((_%x87651%_ _%hd8762687646%_)
                           (_%rest87653%_ _%tl8762787648%_))
                      (_%K8762587643%_ _%rest87653%_ _%x87651%_)))
                  (_%else8762387637%_)))))))
    (define foldl2
      (lambda (_%f87586%_ _%iv87587%_ _%lst187588%_ _%lst287589%_)
        (if (procedure? _%f87586%_)
            (let ((_%f87593%_ _%f87586%_))
              (__foldl2 _%f87593%_ _%iv87587%_ _%lst187588%_ _%lst287589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@229.15-229.16"
               'contract:
               'procedure?
               'value:
               _%f87586%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f87499%_ _%iv87500%_ _%lst187501%_ _%lst287502%_)
        (let ((_%f87505%_ _%f87499%_))
          (let _%lp87514%_ ((_%rest187516%_ _%lst187501%_)
                            (_%rest287517%_ _%lst287502%_)
                            (_%r87518%_ _%iv87500%_))
            (let* ((_%rest18751987527%_ _%rest187516%_)
                   (_%else8752187535%_ (lambda () _%r87518%_))
                   (_%K8752387574%_
                    (lambda (_%rest187538%_ _%x187539%_)
                      (let* ((_%rest28754087548%_ _%rest287517%_)
                             (_%else8754287556%_ (lambda () _%r87518%_))
                             (_%K8754487562%_
                              (lambda (_%rest287559%_ _%x287560%_)
                                (_%lp87514%_
                                 _%rest187538%_
                                 _%rest287559%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f87505%_
                                    _%x187539%_
                                    _%x287560%_
                                    _%r87518%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28754087548%_))
                            (let ((_%hd8754587565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28754087548%_)))
                                  (_%tl8754687567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28754087548%_))))
                              (let* ((_%x287570%_ _%hd8754587565%_)
                                     (_%rest287572%_ _%tl8754687567%_))
                                (_%K8754487562%_ _%rest287572%_ _%x287570%_)))
                            (_%else8754287556%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18751987527%_))
                  (let ((_%hd8752487577%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18751987527%_)))
                        (_%tl8752587579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18751987527%_))))
                    (let* ((_%x187582%_ _%hd8752487577%_)
                           (_%rest187584%_ _%tl8752587579%_))
                      (_%K8752387574%_ _%rest187584%_ _%x187582%_)))
                  (_%else8752187535%_)))))))
    (define foldl
      (lambda _g89705_
        (let ((_g89704_ (let () (declare (not safe)) (##length _g89705_))))
          (cond ((let () (declare (not safe)) (##fx= _g89704_ 3))
                 (apply foldl1 _g89705_))
                ((let () (declare (not safe)) (##fx= _g89704_ 4))
                 (apply foldl2 _g89705_))
                ((let () (declare (not safe)) (##fx>= _g89704_ 4))
                 (apply foldl* _g89705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g89705_))))))
    (define foldl*
      (lambda (_%f87468%_ _%iv87469%_ . _%rest87470%_)
        (if (procedure? _%f87468%_)
            (let ((_%f87474%_ _%f87468%_))
              (declare (not safe))
              (##apply __foldl* _%f87474%_ _%iv87469%_ _%rest87470%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@247.15-247.16"
               'contract:
               'procedure?
               'value:
               _%f87468%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f87446%_ _%iv87447%_ . _%rest87448%_)
        (let ((_%f87451%_ _%f87446%_))
          (let _%recur87460%_ ((_%iv87462%_ _%iv87447%_)
                               (_%rest87463%_ _%rest87448%_))
            (if (__andmap1 pair? _%rest87463%_)
                (_%recur87460%_
                 (let ((__tmp89706
                        (__foldr1
                         (lambda (_%xs87465%_ _%r87466%_)
                           (cons (car _%xs87465%_) _%r87466%_))
                         (list _%iv87462%_)
                         _%rest87463%_)))
                   (declare (not safe))
                   (##apply _%f87451%_ __tmp89706))
                 (map cdr _%rest87463%_))
                _%iv87462%_)))))
    (define foldr1
      (lambda (_%f87430%_ _%iv87431%_ _%lst87432%_)
        (if (procedure? _%f87430%_)
            (let ((_%f87436%_ _%f87430%_))
              (__foldr1 _%f87436%_ _%iv87431%_ _%lst87432%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f87430%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f87379%_ _%iv87380%_ _%lst87381%_)
        (let ((_%f87384%_ _%f87379%_))
          (let _%recur87393%_ ((_%rest87395%_ _%lst87381%_))
            (let* ((_%rest8739687404%_ _%rest87395%_)
                   (_%else8739887412%_ (lambda () _%iv87380%_))
                   (_%K8740087418%_
                    (lambda (_%rest87415%_ _%x87416%_)
                      (let ((__tmp89707 (_%recur87393%_ _%rest87415%_)))
                        (declare (not safe))
                        (_%f87384%_ _%x87416%_ __tmp89707)))))
              (if (let () (declare (not safe)) (##pair? _%rest8739687404%_))
                  (let ((_%hd8740187421%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8739687404%_)))
                        (_%tl8740287423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8739687404%_))))
                    (let* ((_%x87426%_ _%hd8740187421%_)
                           (_%rest87428%_ _%tl8740287423%_))
                      (_%K8740087418%_ _%rest87428%_ _%x87426%_)))
                  (_%else8739887412%_)))))))
    (define foldr2
      (lambda (_%f87362%_ _%iv87363%_ _%lst187364%_ _%lst287365%_)
        (if (procedure? _%f87362%_)
            (let ((_%f87369%_ _%f87362%_))
              (__foldr2 _%f87369%_ _%iv87363%_ _%lst187364%_ _%lst287365%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f87362%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f87276%_ _%iv87277%_ _%lst187278%_ _%lst287279%_)
        (let ((_%f87282%_ _%f87276%_))
          (let _%recur87291%_ ((_%rest187293%_ _%lst187278%_)
                               (_%rest287294%_ _%lst287279%_))
            (let* ((_%rest18729587303%_ _%rest187293%_)
                   (_%else8729787311%_ (lambda () _%iv87277%_))
                   (_%K8729987350%_
                    (lambda (_%rest187314%_ _%x187315%_)
                      (let* ((_%rest28731687324%_ _%rest287294%_)
                             (_%else8731887332%_ (lambda () _%iv87277%_))
                             (_%K8732087338%_
                              (lambda (_%rest287335%_ _%x287336%_)
                                (let ((__tmp89708
                                       (_%recur87291%_
                                        _%rest187314%_
                                        _%rest287335%_)))
                                  (declare (not safe))
                                  (_%f87282%_
                                   _%x187315%_
                                   _%x287336%_
                                   __tmp89708)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28731687324%_))
                            (let ((_%hd8732187341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28731687324%_)))
                                  (_%tl8732287343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28731687324%_))))
                              (let* ((_%x287346%_ _%hd8732187341%_)
                                     (_%rest287348%_ _%tl8732287343%_))
                                (_%K8732087338%_ _%rest287348%_ _%x287346%_)))
                            (_%else8731887332%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18729587303%_))
                  (let ((_%hd8730087353%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18729587303%_)))
                        (_%tl8730187355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18729587303%_))))
                    (let* ((_%x187358%_ _%hd8730087353%_)
                           (_%rest187360%_ _%tl8730187355%_))
                      (_%K8729987350%_ _%rest187360%_ _%x187358%_)))
                  (_%else8729787311%_)))))))
    (define foldr
      (lambda _g89710_
        (let ((_g89709_ (let () (declare (not safe)) (##length _g89710_))))
          (cond ((let () (declare (not safe)) (##fx= _g89709_ 3))
                 (apply foldr1 _g89710_))
                ((let () (declare (not safe)) (##fx= _g89709_ 4))
                 (apply foldr2 _g89710_))
                ((let () (declare (not safe)) (##fx>= _g89709_ 4))
                 (apply foldr* _g89710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g89710_))))))
    (define foldr*
      (lambda (_%f87245%_ _%iv87246%_ . _%rest87247%_)
        (if (procedure? _%f87245%_)
            (let ((_%f87251%_ _%f87245%_))
              (declare (not safe))
              (##apply __foldr* _%f87251%_ _%iv87246%_ _%rest87247%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f87245%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f87224%_ _%iv87225%_ . _%rest87226%_)
        (let ((_%f87229%_ _%f87224%_))
          (let _%recur87238%_ ((_%rest87240%_ _%rest87226%_))
            (if (__andmap1 pair? _%rest87240%_)
                (let ((__tmp89711
                       (__foldr1
                        (lambda (_%xs87242%_ _%r87243%_)
                          (cons (car _%xs87242%_) _%r87243%_))
                        (list (_%recur87238%_ (map cdr _%rest87240%_)))
                        _%rest87240%_)))
                  (declare (not safe))
                  (##apply _%f87229%_ __tmp89711))
                _%iv87225%_)))))
    (define remove-nulls!
      (lambda (_%l87111%_)
        (let* ((_%l8711287125%_ _%l87111%_)
               (_%E8711687129%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8711287125%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8712187214%_
                 (lambda (_%r87212%_) (remove-nulls! _%r87212%_)))
                (_%K8711887201%_
                 (lambda (_%r87141%_)
                   (let _%loop87143%_ ((_%l87145%_ _%l87111%_)
                                       (_%r87146%_ _%r87141%_))
                     (let* ((_%r8714787160%_ _%r87146%_)
                            (_%E8715187164%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8714787160%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8715687191%_
                              (lambda (_%rr87189%_)
                                (let ((__tmp89713 _%l87145%_)
                                      (__tmp89712 (remove-nulls! _%rr87189%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp89713 __tmp89712))))
                             (_%K8715387178%_
                              (lambda (_%rr87176%_)
                                (_%loop87143%_ _%r87146%_ _%rr87176%_)))
                             (_%K8715287169%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8714787160%_))
                             (let ((_%tl8715887196%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8714787160%_)))
                                   (_%hd8715787194%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8714787160%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8715787194%_))
                                   (let ((_%rr87199%_ _%tl8715887196%_))
                                     (_%K8715687191%_ _%rr87199%_))
                                   (let ((_%rr87184%_ _%tl8715887196%_))
                                     (_%K8715387178%_ _%rr87184%_))))
                             '#!void))))
                   _%l87111%_))
                (_%K8711787134%_ (lambda () _%l87111%_)))
            (if (let () (declare (not safe)) (##pair? _%l8711287125%_))
                (let ((_%tl8712387219%_
                       (let () (declare (not safe)) (##cdr _%l8711287125%_)))
                      (_%hd8712287217%_
                       (let () (declare (not safe)) (##car _%l8711287125%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8712287217%_))
                      (let ((_%r87222%_ _%tl8712387219%_))
                        (remove-nulls! _%r87222%_))
                      (let ((_%r87207%_ _%tl8712387219%_))
                        (_%K8711887201%_ _%r87207%_))))
                (_%K8711787134%_))))))
    (define append1!
      (lambda (_%l87096%_ _%x87097%_)
        (let ((_%l287100%_ (cons _%x87097%_ '())))
          (if (pair? _%l87096%_)
              (let ((_%l87102%_ _%l87096%_))
                (let ((__tmp89714
                       (let () (declare (not safe)) (##last-pair _%l87102%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp89714 _%l287100%_))
                _%l87102%_)
              _%l287100%_))))
    (define append-reverse-until
      (lambda (_%pred87080%_ _%rhead87081%_ _%tail87082%_)
        (if (procedure? _%pred87080%_)
            (let ((_%pred87086%_ _%pred87080%_))
              (__append-reverse-until
               _%pred87086%_
               _%rhead87081%_
               _%tail87082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@322.29-322.33"
               'contract:
               'procedure?
               'value:
               _%pred87080%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred87022%_ _%rhead87023%_ _%tail87024%_)
        (let ((_%pred87027%_ _%pred87022%_))
          (let _%loop87036%_ ((_%rhead87038%_ _%rhead87023%_)
                              (_%tail87039%_ _%tail87024%_))
            (let* ((_%rhead8704187050%_ _%rhead87038%_)
                   (_%E8704487054%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8704187050%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8704887077%_ (lambda () (values '() _%tail87039%_)))
                    (_%K8704587061%_
                     (lambda (_%r87058%_ _%a87059%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred87027%_ _%a87059%_))
                           (values _%rhead87038%_ _%tail87039%_)
                           (_%loop87036%_
                            _%r87058%_
                            (cons _%a87059%_ _%tail87039%_))))))
                (let ((_%try-match8704387073%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8704187050%_))
                             (let ((_%tl8704787066%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8704187050%_)))
                                   (_%hd8704687064%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8704187050%_))))
                               (let ((_%a87069%_ _%hd8704687064%_)
                                     (_%r87071%_ _%tl8704787066%_))
                                 (_%K8704587061%_ _%r87071%_ _%a87069%_)))
                             (_%E8704487054%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8704187050%_))
                      (_%K8704887077%_)
                      (_%try-match8704387073%_)))))))))
    (define andmap1
      (lambda (_%f87007%_ _%lst87008%_)
        (if (procedure? _%f87007%_)
            (let ((_%f87012%_ _%f87007%_)) (__andmap1 _%f87012%_ _%lst87008%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@333.16-333.17"
               'contract:
               'procedure?
               'value:
               _%f87007%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f86956%_ _%lst86957%_)
        (let ((_%f86960%_ _%f86956%_))
          (let _%lp86969%_ ((_%rest86971%_ _%lst86957%_))
            (let* ((_%rest8697386981%_ _%rest86971%_)
                   (_%else8697586989%_ (lambda () '#t))
                   (_%K8697786995%_
                    (lambda (_%rest86992%_ _%x86993%_)
                      (if (let () (declare (not safe)) (_%f86960%_ _%x86993%_))
                          (_%lp86969%_ _%rest86992%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8697386981%_))
                  (let ((_%hd8697886998%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8697386981%_)))
                        (_%tl8697987000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8697386981%_))))
                    (let* ((_%x87003%_ _%hd8697886998%_)
                           (_%rest87005%_ _%tl8697987000%_))
                      (_%K8697786995%_ _%rest87005%_ _%x87003%_)))
                  (_%else8697586989%_)))))))
    (define andmap2
      (lambda (_%f86940%_ _%lst186941%_ _%lst286942%_)
        (if (procedure? _%f86940%_)
            (let ((_%f86946%_ _%f86940%_))
              (__andmap2 _%f86946%_ _%lst186941%_ _%lst286942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@342.16-342.17"
               'contract:
               'procedure?
               'value:
               _%f86940%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f86854%_ _%lst186855%_ _%lst286856%_)
        (let ((_%f86859%_ _%f86854%_))
          (let _%lp86868%_ ((_%rest186870%_ _%lst186855%_)
                            (_%rest286871%_ _%lst286856%_))
            (let* ((_%rest18687386881%_ _%rest186870%_)
                   (_%else8687586889%_ (lambda () '#t))
                   (_%K8687786928%_
                    (lambda (_%rest186892%_ _%x186893%_)
                      (let* ((_%rest28689486902%_ _%rest286871%_)
                             (_%else8689686910%_ (lambda () '#t))
                             (_%K8689886916%_
                              (lambda (_%rest286913%_ _%x286914%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f86859%_ _%x186893%_ _%x286914%_))
                                    (_%lp86868%_ _%rest186892%_ _%rest286913%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28689486902%_))
                            (let ((_%hd8689986919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28689486902%_)))
                                  (_%tl8690086921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28689486902%_))))
                              (let* ((_%x286924%_ _%hd8689986919%_)
                                     (_%rest286926%_ _%tl8690086921%_))
                                (_%K8689886916%_ _%rest286926%_ _%x286924%_)))
                            (_%else8689686910%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18687386881%_))
                  (let ((_%hd8687886931%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18687386881%_)))
                        (_%tl8687986933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18687386881%_))))
                    (let* ((_%x186936%_ _%hd8687886931%_)
                           (_%rest186938%_ _%tl8687986933%_))
                      (_%K8687786928%_ _%rest186938%_ _%x186936%_)))
                  (_%else8687586889%_)))))))
    (define andmap
      (lambda _g89716_
        (let ((_g89715_ (let () (declare (not safe)) (##length _g89716_))))
          (cond ((let () (declare (not safe)) (##fx= _g89715_ 2))
                 (apply andmap1 _g89716_))
                ((let () (declare (not safe)) (##fx= _g89715_ 3))
                 (apply andmap2 _g89716_))
                ((let () (declare (not safe)) (##fx>= _g89715_ 3))
                 (apply andmap* _g89716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g89716_))))))
    (define andmap*
      (lambda (_%f86827%_ . _%rest86828%_)
        (if (procedure? _%f86827%_)
            (let ((_%f86832%_ _%f86827%_))
              (declare (not safe))
              (##apply __andmap* _%f86832%_ _%rest86828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@362.16-362.17"
               'contract:
               'procedure?
               'value:
               _%f86827%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f86809%_ . _%rest86810%_)
        (let ((_%f86813%_ _%f86809%_))
          (let _%recur86822%_ ((_%rest86824%_ _%rest86810%_))
            (if (__andmap1 pair? _%rest86824%_)
                (if (let ((__tmp89717 (map car _%rest86824%_)))
                      (declare (not safe))
                      (##apply _%f86813%_ __tmp89717))
                    (_%recur86822%_ (map cdr _%rest86824%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f86794%_ _%lst86795%_)
        (if (procedure? _%f86794%_)
            (let ((_%f86799%_ _%f86794%_)) (__ormap1 _%f86799%_ _%lst86795%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@371.15-371.16"
               'contract:
               'procedure?
               'value:
               _%f86794%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f86741%_ _%lst86742%_)
        (let ((_%f86745%_ _%f86741%_))
          (let _%lp86754%_ ((_%rest86756%_ _%lst86742%_))
            (let* ((_%rest8675786765%_ _%rest86756%_)
                   (_%else8675986773%_ (lambda () '#f))
                   (_%K8676186782%_
                    (lambda (_%rest86776%_ _%x86777%_)
                      (let ((_%$e86779%_
                             (let ()
                               (declare (not safe))
                               (_%f86745%_ _%x86777%_))))
                        (if _%$e86779%_
                            _%$e86779%_
                            (_%lp86754%_ _%rest86776%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8675786765%_))
                  (let ((_%hd8676286785%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8675786765%_)))
                        (_%tl8676386787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8675786765%_))))
                    (let* ((_%x86790%_ _%hd8676286785%_)
                           (_%rest86792%_ _%tl8676386787%_))
                      (_%K8676186782%_ _%rest86792%_ _%x86790%_)))
                  (_%else8675986773%_)))))))
    (define ormap2
      (lambda (_%f86725%_ _%lst186726%_ _%lst286727%_)
        (if (procedure? _%f86725%_)
            (let ((_%f86731%_ _%f86725%_))
              (__ormap2 _%f86731%_ _%lst186726%_ _%lst286727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@378.15-378.16"
               'contract:
               'procedure?
               'value:
               _%f86725%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f86637%_ _%lst186638%_ _%lst286639%_)
        (let ((_%f86642%_ _%f86637%_))
          (let _%lp86651%_ ((_%rest186653%_ _%lst186638%_)
                            (_%rest286654%_ _%lst286639%_))
            (let* ((_%rest18665586663%_ _%rest186653%_)
                   (_%else8665786671%_ (lambda () '#f))
                   (_%K8665986713%_
                    (lambda (_%rest186674%_ _%x186675%_)
                      (let* ((_%rest28667686684%_ _%rest286654%_)
                             (_%else8667886692%_ (lambda () '#f))
                             (_%K8668086701%_
                              (lambda (_%rest286695%_ _%x286696%_)
                                (let ((_%$e86698%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86642%_
                                          _%x186675%_
                                          _%x286696%_))))
                                  (if _%$e86698%_
                                      _%$e86698%_
                                      (_%lp86651%_
                                       _%rest186674%_
                                       _%rest286695%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28667686684%_))
                            (let ((_%hd8668186704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28667686684%_)))
                                  (_%tl8668286706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28667686684%_))))
                              (let* ((_%x286709%_ _%hd8668186704%_)
                                     (_%rest286711%_ _%tl8668286706%_))
                                (_%K8668086701%_ _%rest286711%_ _%x286709%_)))
                            (_%else8667886692%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18665586663%_))
                  (let ((_%hd8666086716%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18665586663%_)))
                        (_%tl8666186718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18665586663%_))))
                    (let* ((_%x186721%_ _%hd8666086716%_)
                           (_%rest186723%_ _%tl8666186718%_))
                      (_%K8665986713%_ _%rest186723%_ _%x186721%_)))
                  (_%else8665786671%_)))))))
    (define ormap
      (lambda _g89719_
        (let ((_g89718_ (let () (declare (not safe)) (##length _g89719_))))
          (cond ((let () (declare (not safe)) (##fx= _g89718_ 2))
                 (apply ormap1 _g89719_))
                ((let () (declare (not safe)) (##fx= _g89718_ 3))
                 (apply ormap2 _g89719_))
                ((let () (declare (not safe)) (##fx>= _g89718_ 3))
                 (apply ormap* _g89719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g89719_))))))
    (define ormap*
      (lambda (_%f86610%_ . _%rest86611%_)
        (if (procedure? _%f86610%_)
            (let ((_%f86615%_ _%f86610%_))
              (declare (not safe))
              (##apply __ormap* _%f86615%_ _%rest86611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@396.15-396.16"
               'contract:
               'procedure?
               'value:
               _%f86610%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f86590%_ . _%rest86591%_)
        (let ((_%f86594%_ _%f86590%_))
          (let _%recur86603%_ ((_%rest86605%_ _%rest86591%_))
            (if (__andmap1 pair? _%rest86605%_)
                (let ((_%$e86607%_
                       (let ((__tmp89720 (map car _%rest86605%_)))
                         (declare (not safe))
                         (##apply _%f86594%_ __tmp89720))))
                  (if _%$e86607%_
                      _%$e86607%_
                      (_%recur86603%_ (map cdr _%rest86605%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f86575%_ _%lst86576%_)
        (if (procedure? _%f86575%_)
            (let ((_%f86580%_ _%f86575%_))
              (__filter-map1 _%f86580%_ _%lst86576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@403.20-403.21"
               'contract:
               'procedure?
               'value:
               _%f86575%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f86518%_ _%lst86519%_)
        (let ((_%f86522%_ _%f86518%_))
          (let _%recur86531%_ ((_%rest86533%_ _%lst86519%_))
            (let* ((_%rest8653586543%_ _%rest86533%_)
                   (_%else8653786551%_ (lambda () '()))
                   (_%K8653986563%_
                    (lambda (_%rest86554%_ _%x86555%_)
                      (let ((_%$e86557%_
                             (let ()
                               (declare (not safe))
                               (_%f86522%_ _%x86555%_))))
                        (if _%$e86557%_
                            ((lambda (_%r86560%_)
                               (cons _%r86560%_
                                     (_%recur86531%_ _%rest86554%_)))
                             _%$e86557%_)
                            (_%recur86531%_ _%rest86554%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8653586543%_))
                  (let ((_%hd8654086566%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8653586543%_)))
                        (_%tl8654186568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8653586543%_))))
                    (let* ((_%x86571%_ _%hd8654086566%_)
                           (_%rest86573%_ _%tl8654186568%_))
                      (_%K8653986563%_ _%rest86573%_ _%x86571%_)))
                  (_%else8653786551%_)))))))
    (define filter-map2
      (lambda (_%f86502%_ _%lst186503%_ _%lst286504%_)
        (if (procedure? _%f86502%_)
            (let ((_%f86508%_ _%f86502%_))
              (__filter-map2 _%f86508%_ _%lst186503%_ _%lst286504%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@414.20-414.21"
               'contract:
               'procedure?
               'value:
               _%f86502%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f86410%_ _%lst186411%_ _%lst286412%_)
        (let ((_%f86415%_ _%f86410%_))
          (let _%recur86424%_ ((_%rest186426%_ _%lst186411%_)
                               (_%rest286427%_ _%lst286412%_))
            (let* ((_%rest18642986437%_ _%rest186426%_)
                   (_%else8643186445%_ (lambda () '()))
                   (_%K8643386490%_
                    (lambda (_%rest186448%_ _%x186449%_)
                      (let* ((_%rest28645086458%_ _%rest286427%_)
                             (_%else8645286466%_ (lambda () '()))
                             (_%K8645486478%_
                              (lambda (_%rest286469%_ _%x286470%_)
                                (let ((_%$e86472%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86415%_
                                          _%x186449%_
                                          _%x286470%_))))
                                  (if _%$e86472%_
                                      ((lambda (_%r86475%_)
                                         (cons _%r86475%_
                                               (_%recur86424%_
                                                _%rest186448%_
                                                _%rest286469%_)))
                                       _%$e86472%_)
                                      (_%recur86424%_
                                       _%rest186448%_
                                       _%rest286469%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28645086458%_))
                            (let ((_%hd8645586481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28645086458%_)))
                                  (_%tl8645686483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28645086458%_))))
                              (let* ((_%x286486%_ _%hd8645586481%_)
                                     (_%rest286488%_ _%tl8645686483%_))
                                (_%K8645486478%_ _%rest286488%_ _%x286486%_)))
                            (_%else8645286466%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18642986437%_))
                  (let ((_%hd8643486493%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18642986437%_)))
                        (_%tl8643586495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18642986437%_))))
                    (let* ((_%x186498%_ _%hd8643486493%_)
                           (_%rest186500%_ _%tl8643586495%_))
                      (_%K8643386490%_ _%rest186500%_ _%x186498%_)))
                  (_%else8643186445%_)))))))
    (define filter-map
      (lambda _g89722_
        (let ((_g89721_ (let () (declare (not safe)) (##length _g89722_))))
          (cond ((let () (declare (not safe)) (##fx= _g89721_ 2))
                 (apply filter-map1 _g89722_))
                ((let () (declare (not safe)) (##fx= _g89721_ 3))
                 (apply filter-map2 _g89722_))
                ((let () (declare (not safe)) (##fx>= _g89721_ 3))
                 (apply filter-map* _g89722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g89722_))))))
    (define filter-map*
      (lambda (_%f86383%_ . _%rest86384%_)
        (if (procedure? _%f86383%_)
            (let ((_%f86388%_ _%f86383%_))
              (declare (not safe))
              (##apply __filter-map* _%f86388%_ _%rest86384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@436.20-436.21"
               'contract:
               'procedure?
               'value:
               _%f86383%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f86359%_ . _%rest86360%_)
        (let ((_%f86363%_ _%f86359%_))
          (let _%recur86372%_ ((_%rest86374%_ _%rest86360%_))
            (if (__andmap1 pair? _%rest86374%_)
                (let ((_%$e86377%_
                       (let ((__tmp89723 (map car _%rest86374%_)))
                         (declare (not safe))
                         (##apply _%f86363%_ __tmp89723))))
                  (if _%$e86377%_
                      ((lambda (_%r86380%_)
                         (cons _%r86380%_
                               (_%recur86372%_ (map cdr _%rest86374%_))))
                       _%$e86377%_)
                      (_%recur86372%_ (map cdr _%rest86374%_))))
                '())))))
    (define agetq__%
      (lambda (_%key86335%_ _%lst86337%_ _%default86339%_)
        (let ((_%$e86342%_
               (if (pair? _%lst86337%_) (assq _%key86335%_ _%lst86337%_) '#f)))
          (if _%$e86342%_
              (cdr _%$e86342%_)
              (if (procedure? _%default86339%_)
                  (_%default86339%_ _%key86335%_)
                  _%default86339%_)))))
    (define agetq__0
      (lambda (_%key86350%_ _%lst86351%_)
        (let ((_%default86353%_ '#f))
          (agetq__% _%key86350%_ _%lst86351%_ _%default86353%_))))
    (define agetq
      (lambda _g89725_
        (let ((_g89724_ (let () (declare (not safe)) (##length _g89725_))))
          (cond ((let () (declare (not safe)) (##fx= _g89724_ 2))
                 (apply agetq__0 _g89725_))
                ((let () (declare (not safe)) (##fx= _g89724_ 3))
                 (apply agetq__% _g89725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g89725_))))))
    (define agetv__%
      (lambda (_%key86310%_ _%lst86312%_ _%default86314%_)
        (let ((_%$e86317%_
               (if (pair? _%lst86312%_) (assv _%key86310%_ _%lst86312%_) '#f)))
          (if _%$e86317%_
              (cdr _%$e86317%_)
              (if (procedure? _%default86314%_)
                  (_%default86314%_ _%key86310%_)
                  _%default86314%_)))))
    (define agetv__0
      (lambda (_%key86325%_ _%lst86326%_)
        (let ((_%default86328%_ '#f))
          (agetv__% _%key86325%_ _%lst86326%_ _%default86328%_))))
    (define agetv
      (lambda _g89727_
        (let ((_g89726_ (let () (declare (not safe)) (##length _g89727_))))
          (cond ((let () (declare (not safe)) (##fx= _g89726_ 2))
                 (apply agetv__0 _g89727_))
                ((let () (declare (not safe)) (##fx= _g89726_ 3))
                 (apply agetv__% _g89727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g89727_))))))
    (define aget__%
      (lambda (_%key86285%_ _%lst86287%_ _%default86289%_)
        (let ((_%$e86292%_
               (if (pair? _%lst86287%_)
                   (assoc _%key86285%_ _%lst86287%_)
                   '#f)))
          (if _%$e86292%_
              (cdr _%$e86292%_)
              (if (procedure? _%default86289%_)
                  (_%default86289%_ _%key86285%_)
                  _%default86289%_)))))
    (define aget__0
      (lambda (_%key86300%_ _%lst86301%_)
        (let ((_%default86303%_ '#f))
          (aget__% _%key86300%_ _%lst86301%_ _%default86303%_))))
    (define aget
      (lambda _g89729_
        (let ((_g89728_ (let () (declare (not safe)) (##length _g89729_))))
          (cond ((let () (declare (not safe)) (##fx= _g89728_ 2))
                 (apply aget__0 _g89729_))
                ((let () (declare (not safe)) (##fx= _g89728_ 3))
                 (apply aget__% _g89729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g89729_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key86214%_ _%lst86216%_ _%default86218%_)
        (let _%lp86221%_ ((_%rest86224%_ _%lst86216%_))
          (let* ((_%rest8622686236%_ _%rest86224%_)
                 (_%else8622886244%_
                  (lambda ()
                    (if (procedure? _%default86218%_)
                        (_%default86218%_ _%key86214%_)
                        _%default86218%_)))
                 (_%K8623086253%_
                  (lambda (_%rest86247%_ _%v86248%_ _%k86250%_)
                    (if (eq? _%k86250%_ _%key86214%_)
                        _%v86248%_
                        (_%lp86221%_ _%rest86247%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8622686236%_))
                (let ((_%hd8623186256%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8622686236%_)))
                      (_%tl8623286258%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8622686236%_))))
                  (let ((_%k86261%_ _%hd8623186256%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8623286258%_))
                        (let ((_%hd8623386263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8623286258%_)))
                              (_%tl8623486265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8623286258%_))))
                          (let* ((_%v86268%_ _%hd8623386263%_)
                                 (_%rest86270%_ _%tl8623486265%_))
                            (_%K8623086253%_
                             _%rest86270%_
                             _%v86268%_
                             _%k86261%_)))
                        (_%else8622886244%_))))
                (_%else8622886244%_))))))
    (define pgetq__0
      (lambda (_%key86275%_ _%lst86276%_)
        (let ((_%default86278%_ '#f))
          (pgetq__% _%key86275%_ _%lst86276%_ _%default86278%_))))
    (define pgetq
      (lambda _g89731_
        (let ((_g89730_ (let () (declare (not safe)) (##length _g89731_))))
          (cond ((let () (declare (not safe)) (##fx= _g89730_ 2))
                 (apply pgetq__0 _g89731_))
                ((let () (declare (not safe)) (##fx= _g89730_ 3))
                 (apply pgetq__% _g89731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g89731_))))))
    (define pgetv__%
      (lambda (_%key86143%_ _%lst86145%_ _%default86147%_)
        (let _%lp86150%_ ((_%rest86153%_ _%lst86145%_))
          (let* ((_%rest8615586165%_ _%rest86153%_)
                 (_%else8615786173%_
                  (lambda ()
                    (if (procedure? _%default86147%_)
                        (_%default86147%_ _%key86143%_)
                        _%default86147%_)))
                 (_%K8615986182%_
                  (lambda (_%rest86176%_ _%v86177%_ _%k86179%_)
                    (if (eqv? _%k86179%_ _%key86143%_)
                        _%v86177%_
                        (_%lp86150%_ _%rest86176%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8615586165%_))
                (let ((_%hd8616086185%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8615586165%_)))
                      (_%tl8616186187%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8615586165%_))))
                  (let ((_%k86190%_ _%hd8616086185%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8616186187%_))
                        (let ((_%hd8616286192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8616186187%_)))
                              (_%tl8616386194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8616186187%_))))
                          (let* ((_%v86197%_ _%hd8616286192%_)
                                 (_%rest86199%_ _%tl8616386194%_))
                            (_%K8615986182%_
                             _%rest86199%_
                             _%v86197%_
                             _%k86190%_)))
                        (_%else8615786173%_))))
                (_%else8615786173%_))))))
    (define pgetv__0
      (lambda (_%key86204%_ _%lst86205%_)
        (let ((_%default86207%_ '#f))
          (pgetv__% _%key86204%_ _%lst86205%_ _%default86207%_))))
    (define pgetv
      (lambda _g89733_
        (let ((_g89732_ (let () (declare (not safe)) (##length _g89733_))))
          (cond ((let () (declare (not safe)) (##fx= _g89732_ 2))
                 (apply pgetv__0 _g89733_))
                ((let () (declare (not safe)) (##fx= _g89732_ 3))
                 (apply pgetv__% _g89733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g89733_))))))
    (define pget__%
      (lambda (_%key86072%_ _%lst86074%_ _%default86076%_)
        (let _%lp86079%_ ((_%rest86082%_ _%lst86074%_))
          (let* ((_%rest8608486094%_ _%rest86082%_)
                 (_%else8608686102%_
                  (lambda ()
                    (if (procedure? _%default86076%_)
                        (_%default86076%_ _%key86072%_)
                        _%default86076%_)))
                 (_%K8608886111%_
                  (lambda (_%rest86105%_ _%v86106%_ _%k86108%_)
                    (if (equal? _%k86108%_ _%key86072%_)
                        _%v86106%_
                        (_%lp86079%_ _%rest86105%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8608486094%_))
                (let ((_%hd8608986114%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8608486094%_)))
                      (_%tl8609086116%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8608486094%_))))
                  (let ((_%k86119%_ _%hd8608986114%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8609086116%_))
                        (let ((_%hd8609186121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8609086116%_)))
                              (_%tl8609286123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8609086116%_))))
                          (let* ((_%v86126%_ _%hd8609186121%_)
                                 (_%rest86128%_ _%tl8609286123%_))
                            (_%K8608886111%_
                             _%rest86128%_
                             _%v86126%_
                             _%k86119%_)))
                        (_%else8608686102%_))))
                (_%else8608686102%_))))))
    (define pget__0
      (lambda (_%key86133%_ _%lst86134%_)
        (let ((_%default86136%_ '#f))
          (pget__% _%key86133%_ _%lst86134%_ _%default86136%_))))
    (define pget
      (lambda _g89735_
        (let ((_g89734_ (let () (declare (not safe)) (##length _g89735_))))
          (cond ((let () (declare (not safe)) (##fx= _g89734_ 2))
                 (apply pget__0 _g89735_))
                ((let () (declare (not safe)) (##fx= _g89734_ 3))
                 (apply pget__% _g89735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g89735_))))))
    (define find
      (lambda (_%pred86056%_ _%lst86057%_)
        (if (procedure? _%pred86056%_)
            (let ((_%pred86061%_ _%pred86056%_))
              (__find _%pred86061%_ _%lst86057%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.13-482.17"
               'contract:
               'procedure?
               'value:
               _%pred86056%_)
              '#!void))))
    (define __find
      (lambda (_%pred86039%_ _%lst86040%_)
        (let* ((_%pred86043%_ _%pred86039%_)
               (_%$e86052%_ (__memf _%pred86043%_ _%lst86040%_)))
          (if _%$e86052%_
              (let () (declare (not safe)) (##car _%$e86052%_))
              '#f))))
    (define memf
      (lambda (_%proc86024%_ _%lst86025%_)
        (if (procedure? _%proc86024%_)
            (let ((_%proc86029%_ _%proc86024%_))
              (__memf _%proc86029%_ _%lst86025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@487.13-487.17"
               'contract:
               'procedure?
               'value:
               _%proc86024%_)
              '#!void))))
    (define __memf
      (lambda (_%proc85974%_ _%lst85975%_)
        (let ((_%proc85978%_ _%proc85974%_))
          (let _%lp85987%_ ((_%rest85989%_ _%lst85975%_))
            (let* ((_%rest8599085998%_ _%rest85989%_)
                   (_%else8599286006%_ (lambda () '#f))
                   (_%K8599486012%_
                    (lambda (_%tl86009%_ _%hd86010%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85978%_ _%hd86010%_))
                          _%rest85989%_
                          (_%lp85987%_ _%tl86009%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8599085998%_))
                  (let ((_%hd8599586015%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8599085998%_)))
                        (_%tl8599686017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8599085998%_))))
                    (let* ((_%hd86020%_ _%hd8599586015%_)
                           (_%tl86022%_ _%tl8599686017%_))
                      (_%K8599486012%_ _%tl86022%_ _%hd86020%_)))
                  (_%else8599286006%_)))))))
    (define remove1
      (lambda (_%el85927%_ _%lst85929%_)
        (let _%lp85932%_ ((_%rest85935%_ _%lst85929%_) (_%r85937%_ '()))
          (let* ((_%rest8593985947%_ _%rest85935%_)
                 (_%else8594185955%_ (lambda () _%lst85929%_))
                 (_%K8594385962%_
                  (lambda (_%rest85958%_ _%hd85959%_)
                    (if (equal? _%el85927%_ _%hd85959%_)
                        (__foldl1 cons _%rest85958%_ _%r85937%_)
                        (_%lp85932%_
                         _%rest85958%_
                         (cons _%hd85959%_ _%r85937%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8593985947%_))
                (let ((_%hd8594485965%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8593985947%_)))
                      (_%tl8594585967%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8593985947%_))))
                  (let* ((_%hd85970%_ _%hd8594485965%_)
                         (_%rest85972%_ _%tl8594585967%_))
                    (_%K8594385962%_ _%rest85972%_ _%hd85970%_)))
                (_%else8594185955%_))))))
    (define remv1
      (lambda (_%el85880%_ _%lst85882%_)
        (let _%lp85885%_ ((_%rest85888%_ _%lst85882%_) (_%r85890%_ '()))
          (let* ((_%rest8589285900%_ _%rest85888%_)
                 (_%else8589485908%_ (lambda () _%lst85882%_))
                 (_%K8589685915%_
                  (lambda (_%rest85911%_ _%hd85912%_)
                    (if (eqv? _%el85880%_ _%hd85912%_)
                        (__foldl1 cons _%rest85911%_ _%r85890%_)
                        (_%lp85885%_
                         _%rest85911%_
                         (cons _%hd85912%_ _%r85890%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8589285900%_))
                (let ((_%hd8589785918%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8589285900%_)))
                      (_%tl8589885920%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8589285900%_))))
                  (let* ((_%hd85923%_ _%hd8589785918%_)
                         (_%rest85925%_ _%tl8589885920%_))
                    (_%K8589685915%_ _%rest85925%_ _%hd85923%_)))
                (_%else8589485908%_))))))
    (define remq1
      (lambda (_%el85833%_ _%lst85835%_)
        (let _%lp85838%_ ((_%rest85841%_ _%lst85835%_) (_%r85843%_ '()))
          (let* ((_%rest8584585853%_ _%rest85841%_)
                 (_%else8584785861%_ (lambda () _%lst85835%_))
                 (_%K8584985868%_
                  (lambda (_%rest85864%_ _%hd85865%_)
                    (if (eq? _%el85833%_ _%hd85865%_)
                        (__foldl1 cons _%rest85864%_ _%r85843%_)
                        (_%lp85838%_
                         _%rest85864%_
                         (cons _%hd85865%_ _%r85843%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8584585853%_))
                (let ((_%hd8585085871%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8584585853%_)))
                      (_%tl8585185873%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8584585853%_))))
                  (let* ((_%hd85876%_ _%hd8585085871%_)
                         (_%rest85878%_ _%tl8585185873%_))
                    (_%K8584985868%_ _%rest85878%_ _%hd85876%_)))
                (_%else8584785861%_))))))
    (define remf
      (lambda (_%proc85818%_ _%lst85819%_)
        (if (procedure? _%proc85818%_)
            (let ((_%proc85823%_ _%proc85818%_))
              (__remf _%proc85823%_ _%lst85819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@509.13-509.17"
               'contract:
               'procedure?
               'value:
               _%proc85818%_)
              '#!void))))
    (define __remf
      (lambda (_%proc85767%_ _%lst85768%_)
        (let ((_%proc85771%_ _%proc85767%_))
          (let _%lp85780%_ ((_%rest85782%_ _%lst85768%_) (_%r85783%_ '()))
            (let* ((_%rest8578485792%_ _%rest85782%_)
                   (_%else8578685800%_ (lambda () _%lst85768%_))
                   (_%K8578885806%_
                    (lambda (_%rest85803%_ _%hd85804%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85771%_ _%hd85804%_))
                          (__foldl1 cons _%rest85803%_ _%r85783%_)
                          (_%lp85780%_
                           _%rest85803%_
                           (cons _%hd85804%_ _%r85783%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8578485792%_))
                  (let ((_%hd8578985809%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8578485792%_)))
                        (_%tl8579085811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8578485792%_))))
                    (let* ((_%hd85814%_ _%hd8578985809%_)
                           (_%rest85816%_ _%tl8579085811%_))
                      (_%K8578885806%_ _%rest85816%_ _%hd85814%_)))
                  (_%else8578685800%_)))))))
    (define 1+
      (lambda (_%x85753%_)
        (if (number? _%x85753%_)
            (let ((_%x85757%_ _%x85753%_)) (__1+ _%x85757%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@518.11-518.12"
               'contract:
               'number?
               'value:
               _%x85753%_)
              '#!void))))
    (define __1+
      (lambda (_%x85741%_) (let ((_%x85744%_ _%x85741%_)) (+ _%x85744%_ '1))))
    (define 1-
      (lambda (_%x85727%_)
        (if (number? _%x85727%_)
            (let ((_%x85731%_ _%x85727%_)) (__1- _%x85731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.11-526.12"
               'contract:
               'number?
               'value:
               _%x85727%_)
              '#!void))))
    (define __1-
      (lambda (_%x85715%_) (let ((_%x85718%_ _%x85715%_)) (- _%x85718%_ '1))))
    (define fx1+
      (lambda (_%x85701%_)
        (if (fixnum? _%x85701%_)
            (let ((_%x85705%_ _%x85701%_)) (__fx1+ _%x85705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@534.13-534.14"
               'contract:
               'fixnum?
               'value:
               _%x85701%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x85689%_)
        (let ((_%x85692%_ _%x85689%_))
          (declare (not safe))
          (##fx+ _%x85692%_ '1))))
    (define fx1-
      (lambda (_%x85675%_)
        (if (fixnum? _%x85675%_)
            (let ((_%x85679%_ _%x85675%_)) (__fx1- _%x85679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@542.13-542.14"
               'contract:
               'fixnum?
               'value:
               _%x85675%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x85663%_)
        (let ((_%x85666%_ _%x85663%_))
          (declare (not safe))
          (##fx- _%x85666%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x85660%_)
        (if (fixnum? _%x85660%_)
            (let () (declare (not safe)) (##fx>= _%x85660%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x85657%_)
        (if (fixnum? _%x85657%_)
            (let () (declare (not safe)) (##fx> _%x85657%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x85654%_)
        (let () (declare (not safe)) (##fx= _%x85654%_ '0))))
    (define fx<0?
      (lambda (_%x85651%_)
        (if (fixnum? _%x85651%_)
            (let () (declare (not safe)) (##fx< _%x85651%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x85648%_)
        (if (fixnum? _%x85648%_)
            (let () (declare (not safe)) (##fx<= _%x85648%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x85645%_)
        (if (symbol? _%x85645%_) (not (uninterned-symbol? _%x85645%_)) '#f)))
    (define display-as-string
      (lambda (_%x85630%_ _%port85631%_)
        (if (output-port? _%port85631%_)
            (let ((_%port85635%_ _%port85631%_))
              (__display-as-string _%x85630%_ _%port85635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.28-570.32"
               'contract:
               'output-port?
               'value:
               _%port85631%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x85587%_ _%port85588%_)
        (let ((_%port85591%_ _%port85588%_))
          (if (or (string? _%x85587%_)
                  (symbol? _%x85587%_)
                  (keyword? _%x85587%_)
                  (number? _%x85587%_)
                  (char? _%x85587%_))
              (display _%x85587%_ _%port85591%_)
              (if (pair? _%x85587%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x85587%_))
                     _%port85591%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x85587%_))
                     _%port85591%_))
                  (if (vector? _%x85587%_)
                      (vector-for-each
                       (lambda (_%g8561485616%_)
                         (__display-as-string _%g8561485616%_ _%port85591%_))
                       _%x85587%_)
                      (if (or (null? _%x85587%_)
                              (eq? _%x85587%_ '#!void)
                              (eof-object? _%x85587%_)
                              (boolean? _%x85587%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x85587%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x85570%_)
        (if (string? _%x85570%_)
            _%x85570%_
            (if (symbol? _%x85570%_)
                (let () (declare (not safe)) (##symbol->string _%x85570%_))
                (if (keyword? _%x85570%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x85570%_))
                    (if (number? _%x85570%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x85570%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8557685578%_)
                           (__display-as-string
                            _%x85570%_
                            _%g8557685578%_)))))))))
    (define as-string__1
      (lambda _%args85581%_
        (call-with-output-string
         '()
         (lambda (_%g8558285584%_)
           (__display-as-string _%args85581%_ _%g8558285584%_)))))
    (define as-string
      (lambda _g89737_
        (let ((_g89736_ (let () (declare (not safe)) (##length _g89737_))))
          (cond ((let () (declare (not safe)) (##fx= _g89736_ 1))
                 (apply as-string__0 _g89737_))
                (#t
                 (apply (lambda _%args85581%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args85581%_)))
                        _g89737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g89737_))))))
    (define make-symbol__0
      (lambda (_%x85566%_)
        (if (interned-symbol? _%x85566%_)
            _%x85566%_
            (string->symbol (as-string__0 _%x85566%_)))))
    (define make-symbol__1
      (lambda _%args85568%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args85568%_)))))
    (define make-symbol
      (lambda _g89739_
        (let ((_g89738_ (let () (declare (not safe)) (##length _g89739_))))
          (cond ((let () (declare (not safe)) (##fx= _g89738_ 1))
                 (apply make-symbol__0 _g89739_))
                (#t
                 (apply (lambda _%args85568%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args85568%_)))
                        _g89739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g89739_))))))
    (define make-keyword__0
      (lambda (_%x85562%_)
        (if (interned-keyword? _%x85562%_)
            _%x85562%_
            (string->keyword (as-string__0 _%x85562%_)))))
    (define make-keyword__1
      (lambda _%args85564%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args85564%_)))))
    (define make-keyword
      (lambda _g89741_
        (let ((_g89740_ (let () (declare (not safe)) (##length _g89741_))))
          (cond ((let () (declare (not safe)) (##fx= _g89740_ 1))
                 (apply make-keyword__0 _g89741_))
                (#t
                 (apply (lambda _%args85564%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args85564%_)))
                        _g89741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g89741_))))))
    (define interned-keyword?
      (lambda (_%x85559%_)
        (if (keyword? _%x85559%_) (not (uninterned-keyword? _%x85559%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym85545%_)
        (if (symbol? _%sym85545%_)
            (let ((_%sym85549%_ _%sym85545%_))
              (__symbol->keyword _%sym85549%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@613.24-613.27"
               'contract:
               'symbol?
               'value:
               _%sym85545%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym85533%_)
        (let ((_%sym85536%_ _%sym85533%_))
          (if (uninterned-symbol? _%sym85536%_)
              (let ((__tmp89742
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85536%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp89742))
              (let ((__tmp89743
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85536%_))))
                (declare (not safe))
                (##string->keyword __tmp89743))))))
    (define keyword->symbol
      (lambda (_%sym85519%_)
        (if (keyword? _%sym85519%_)
            (let ((_%sym85523%_ _%sym85519%_))
              (__keyword->symbol _%sym85523%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@619.24-619.27"
               'contract:
               'keyword?
               'value:
               _%sym85519%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym85507%_)
        (let ((_%sym85510%_ _%sym85507%_))
          (if (uninterned-keyword? _%sym85510%_)
              (let ((__tmp89744
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85510%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp89744))
              (let ((__tmp89745
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85510%_))))
                (declare (not safe))
                (##string->symbol __tmp89745))))))
    (define bytes->string__%
      (lambda (_%bstr85472%_ _%enc85473%_)
        (if (u8vector? _%bstr85472%_)
            (let ((_%bstr85477%_ _%bstr85472%_))
              (if (symbol? _%enc85473%_)
                  (let ((_%enc85487%_ _%enc85473%_))
                    (__bytes->string__% _%bstr85477%_ _%enc85487%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@626.25-626.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85473%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@625.22-625.26"
               'contract:
               'u8vector?
               'value:
               _%bstr85472%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr85500%_)
        (let ((_%enc85502%_ 'UTF-8))
          (bytes->string__% _%bstr85500%_ _%enc85502%_))))
    (define bytes->string
      (lambda _g89747_
        (let ((_g89746_ (let () (declare (not safe)) (##length _g89747_))))
          (cond ((let () (declare (not safe)) (##fx= _g89746_ 1))
                 (apply bytes->string__0 _g89747_))
                ((let () (declare (not safe)) (##fx= _g89746_ 2))
                 (apply bytes->string__% _g89747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g89747_))))))
    (define __bytes->string__%
      (lambda (_%bstr85431%_ _%enc85432%_)
        (let* ((_%bstr85435%_ _%bstr85431%_) (_%enc85443%_ _%enc85432%_))
          (if (eq? _%enc85443%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr85435%_))
              (let* ((_%in85452%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc85443%_
                                   (cons 'init: (cons _%bstr85435%_ '()))))))
                     (_%len85454%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr85435%_)))
                     (_%out85456%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len85454%_)))
                     (_%n85458%_
                      (read-substring
                       _%out85456%_
                       '0
                       _%len85454%_
                       _%in85452%_)))
                (string-shrink! _%out85456%_ _%n85458%_)
                _%out85456%_)))))
    (define __bytes->string__0
      (lambda (_%bstr85464%_)
        (let ((_%enc85466%_ 'UTF-8))
          (__bytes->string__% _%bstr85464%_ _%enc85466%_))))
    (define __bytes->string
      (lambda _g89749_
        (let ((_g89748_ (let () (declare (not safe)) (##length _g89749_))))
          (cond ((let () (declare (not safe)) (##fx= _g89748_ 1))
                 (apply __bytes->string__0 _g89749_))
                ((let () (declare (not safe)) (##fx= _g89748_ 2))
                 (apply __bytes->string__% _g89749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g89749_))))))
    (define string->bytes__%
      (lambda (_%str85395%_ _%enc85396%_)
        (if (string? _%str85395%_)
            (let ((_%str85400%_ _%str85395%_))
              (if (symbol? _%enc85396%_)
                  (let ((_%enc85410%_ _%enc85396%_))
                    (__string->bytes__% _%str85400%_ _%enc85410%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@638.25-638.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@637.22-637.25"
               'contract:
               'string?
               'value:
               _%str85395%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str85423%_)
        (let ((_%enc85425%_ 'UTF-8))
          (string->bytes__% _%str85423%_ _%enc85425%_))))
    (define string->bytes
      (lambda _g89751_
        (let ((_g89750_ (let () (declare (not safe)) (##length _g89751_))))
          (cond ((let () (declare (not safe)) (##fx= _g89750_ 1))
                 (apply string->bytes__0 _g89751_))
                ((let () (declare (not safe)) (##fx= _g89750_ 2))
                 (apply string->bytes__% _g89751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g89751_))))))
    (define __string->bytes__%
      (lambda (_%str85363%_ _%enc85364%_)
        (let* ((_%str85367%_ _%str85363%_) (_%enc85375%_ _%enc85364%_))
          (if (eq? _%enc85375%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str85367%_))
              (__substring->bytes__%
               _%str85367%_
               '0
               (let () (declare (not safe)) (##string-length _%str85367%_))
               _%enc85375%_)))))
    (define __string->bytes__0
      (lambda (_%str85387%_)
        (let ((_%enc85389%_ 'UTF-8))
          (__string->bytes__% _%str85387%_ _%enc85389%_))))
    (define __string->bytes
      (lambda _g89753_
        (let ((_g89752_ (let () (declare (not safe)) (##length _g89753_))))
          (cond ((let () (declare (not safe)) (##fx= _g89752_ 1))
                 (apply __string->bytes__0 _g89753_))
                ((let () (declare (not safe)) (##fx= _g89752_ 2))
                 (apply __string->bytes__% _g89753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g89753_))))))
    (define substring->bytes__%
      (lambda (_%str85311%_ _%start85312%_ _%end85313%_ _%enc85314%_)
        (if (string? _%str85311%_)
            (let ((_%str85318%_ _%str85311%_))
              (if (nonnegative-fixnum? _%start85312%_)
                  (let ((_%start85328%_ _%start85312%_))
                    (if (nonnegative-fixnum? _%end85313%_)
                        (let ((_%end85338%_ _%end85313%_))
                          (__substring->bytes__%
                           _%str85318%_
                           _%start85328%_
                           _%end85338%_
                           _%enc85314%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@646.25-646.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end85313%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@645.25-645.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start85312%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@644.25-644.28"
               'contract:
               'string?
               'value:
               _%str85311%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str85351%_ _%start85352%_ _%end85353%_)
        (let ((_%enc85355%_ 'UTF-8))
          (substring->bytes__%
           _%str85351%_
           _%start85352%_
           _%end85353%_
           _%enc85355%_))))
    (define substring->bytes
      (lambda _g89755_
        (let ((_g89754_ (let () (declare (not safe)) (##length _g89755_))))
          (cond ((let () (declare (not safe)) (##fx= _g89754_ 3))
                 (apply substring->bytes__0 _g89755_))
                ((let () (declare (not safe)) (##fx= _g89754_ 4))
                 (apply substring->bytes__% _g89755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g89755_))))))
    (define __substring->bytes__%
      (lambda (_%str85263%_ _%start85264%_ _%end85265%_ _%enc85266%_)
        (let* ((_%str85269%_ _%str85263%_)
               (_%start85277%_ _%start85264%_)
               (_%end85285%_ _%end85265%_))
          (if (eq? _%enc85266%_ 'UTF-8)
              (string->utf8 _%str85269%_ _%start85277%_ _%end85285%_)
              (let ((_%out85294%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc85266%_ '())))))
                (write-substring
                 _%str85269%_
                 _%start85277%_
                 _%end85285%_
                 _%out85294%_)
                (get-output-u8vector _%out85294%_))))))
    (define __substring->bytes__0
      (lambda (_%str85299%_ _%start85300%_ _%end85301%_)
        (let ((_%enc85303%_ 'UTF-8))
          (__substring->bytes__%
           _%str85299%_
           _%start85300%_
           _%end85301%_
           _%enc85303%_))))
    (define __substring->bytes
      (lambda _g89757_
        (let ((_g89756_ (let () (declare (not safe)) (##length _g89757_))))
          (cond ((let () (declare (not safe)) (##fx= _g89756_ 3))
                 (apply __substring->bytes__0 _g89757_))
                ((let () (declare (not safe)) (##fx= _g89756_ 4))
                 (apply __substring->bytes__% _g89757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g89757_))))))
    (define string-empty?
      (lambda (_%str85248%_)
        (if (string? _%str85248%_)
            (let ((_%str85252%_ _%str85248%_)) (__string-empty? _%str85252%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@655.22-655.25"
               'contract:
               'string?
               'value:
               _%str85248%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str85236%_)
        (let* ((_%str85239%_ _%str85236%_)
               (__tmp89758
                (let () (declare (not safe)) (##string-length _%str85239%_))))
          (declare (not safe))
          (##fxzero? __tmp89758))))
    (define string-index__%
      (lambda (_%str85188%_ _%char85189%_ _%start85190%_)
        (if (string? _%str85188%_)
            (let ((_%str85194%_ _%str85188%_))
              (if (char? _%char85189%_)
                  (let ((_%char85204%_ _%char85189%_))
                    (if (nonnegative-fixnum? _%start85190%_)
                        (let ((_%start85214%_ _%start85190%_))
                          (__string-index__%
                           _%str85194%_
                           _%char85204%_
                           _%start85214%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@661.21-661.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start85190%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@660.21-660.25"
                     'contract:
                     'char?
                     'value:
                     _%char85189%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@659.21-659.24"
               'contract:
               'string?
               'value:
               _%str85188%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str85227%_ _%char85228%_)
        (let ((_%start85230%_ '0))
          (string-index__% _%str85227%_ _%char85228%_ _%start85230%_))))
    (define string-index
      (lambda _g89760_
        (let ((_g89759_ (let () (declare (not safe)) (##length _g89760_))))
          (cond ((let () (declare (not safe)) (##fx= _g89759_ 2))
                 (apply string-index__0 _g89760_))
                ((let () (declare (not safe)) (##fx= _g89759_ 3))
                 (apply string-index__% _g89760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g89760_))))))
    (define __string-index__%
      (lambda (_%str85127%_ _%char85128%_ _%start85129%_)
        (let* ((_%str85132%_ _%str85127%_)
               (_%char85140%_ _%char85128%_)
               (_%start85148%_ _%start85129%_)
               (_%len85157%_
                (let () (declare (not safe)) (##string-length _%str85132%_))))
          (let _%lp85159%_ ((_%k85161%_ _%start85148%_))
            (let ((_%k85163%_ _%k85161%_))
              (if (let () (declare (not safe)) (##fx< _%k85163%_ _%len85157%_))
                  (if (eq? _%char85140%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85132%_ _%k85163%_)))
                      _%k85163%_
                      (_%lp85159%_
                       (let () (declare (not safe)) (##fx+ _%k85163%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str85178%_ _%char85179%_)
        (let ((_%start85181%_ '0))
          (__string-index__% _%str85178%_ _%char85179%_ _%start85181%_))))
    (define __string-index
      (lambda _g89762_
        (let ((_g89761_ (let () (declare (not safe)) (##length _g89762_))))
          (cond ((let () (declare (not safe)) (##fx= _g89761_ 2))
                 (apply __string-index__0 _g89762_))
                ((let () (declare (not safe)) (##fx= _g89761_ 3))
                 (apply __string-index__% _g89762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g89762_))))))
    (define string-rindex__%
      (lambda (_%str85088%_ _%char85089%_ _%start85090%_)
        (if (string? _%str85088%_)
            (let ((_%str85094%_ _%str85088%_))
              (if (char? _%char85089%_)
                  (let ((_%char85104%_ _%char85089%_))
                    (__string-rindex__%
                     _%str85094%_
                     _%char85104%_
                     _%start85090%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@671.25-671.29"
                     'contract:
                     'char?
                     'value:
                     _%char85089%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@670.22-670.25"
               'contract:
               'string?
               'value:
               _%str85088%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str85117%_ _%char85118%_)
        (let ((_%start85120%_ '#f))
          (string-rindex__% _%str85117%_ _%char85118%_ _%start85120%_))))
    (define string-rindex
      (lambda _g89764_
        (let ((_g89763_ (let () (declare (not safe)) (##length _g89764_))))
          (cond ((let () (declare (not safe)) (##fx= _g89763_ 2))
                 (apply string-rindex__0 _g89764_))
                ((let () (declare (not safe)) (##fx= _g89763_ 3))
                 (apply string-rindex__% _g89764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g89764_))))))
    (define __string-rindex__%
      (lambda (_%str85030%_ _%char85031%_ _%start85032%_)
        (let* ((_%str85035%_ _%str85030%_)
               (_%char85043%_ _%char85031%_)
               (_%len85052%_
                (let () (declare (not safe)) (##string-length _%str85035%_)))
               (_%start85054%_
                (if (fixnum? _%start85032%_)
                    _%start85032%_
                    (let () (declare (not safe)) (##fx- _%len85052%_ '1)))))
          (let _%lp85057%_ ((_%k85059%_ _%start85054%_))
            (let ((_%k85061%_ _%k85059%_))
              (if (let () (declare (not safe)) (##fx>= _%k85061%_ '0))
                  (if (eq? _%char85043%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85035%_ _%k85061%_)))
                      _%k85061%_
                      (_%lp85057%_
                       (let () (declare (not safe)) (##fx- _%k85061%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str85078%_ _%char85079%_)
        (let ((_%start85081%_ '#f))
          (__string-rindex__% _%str85078%_ _%char85079%_ _%start85081%_))))
    (define __string-rindex
      (lambda _g89766_
        (let ((_g89765_ (let () (declare (not safe)) (##length _g89766_))))
          (cond ((let () (declare (not safe)) (##fx= _g89765_ 2))
                 (apply __string-rindex__0 _g89766_))
                ((let () (declare (not safe)) (##fx= _g89765_ 3))
                 (apply __string-rindex__% _g89766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g89766_))))))
    (define string-split
      (lambda (_%str85004%_ _%char85005%_)
        (if (string? _%str85004%_)
            (let ((_%str85009%_ _%str85004%_))
              (if (char? _%char85005%_)
                  (let ((_%char85019%_ _%char85005%_))
                    (__string-split _%str85009%_ _%char85019%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@682.37-682.41"
                     'contract:
                     'char?
                     'value:
                     _%char85005%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.21-682.24"
               'contract:
               'string?
               'value:
               _%str85004%_)
              '#!void))))
    (define __string-split
      (lambda (_%str84945%_ _%char84946%_)
        (let* ((_%str84949%_ _%str84945%_)
               (_%char84957%_ _%char84946%_)
               (_%len84966%_
                (let () (declare (not safe)) (##string-length _%str84949%_))))
          (let _%lp84968%_ ((_%start84970%_ '0) (_%r84971%_ '()))
            (let* ((_%start84974%_ _%start84970%_)
                   (_%$e84987%_
                    (__string-index__%
                     _%str84949%_
                     _%char84957%_
                     _%start84974%_)))
              (if _%$e84987%_
                  ((lambda (_%end84990%_)
                     (let ((_%end84992%_ _%end84990%_))
                       (_%lp84968%_
                        (let () (declare (not safe)) (##fx+ _%end84992%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str84949%_
                                 _%start84974%_
                                 _%end84992%_))
                              _%r84971%_))))
                   _%$e84987%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start84974%_ _%len84966%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str84949%_
                                _%start84974%_
                                _%len84966%_)))
                       _%r84971%_)
                      (reverse! _%r84971%_))))))))
    (define string-join
      (lambda (_%strs84795%_ _%join84796%_)
        (letrec ((_%join-length84799%_
                  (lambda (_%strs84883%_ _%jlen84884%_)
                    (let _%lp84886%_ ((_%rest84888%_ _%strs84883%_)
                                      (_%len84889%_ '0))
                      (let* ((_%len84891%_ _%len84889%_)
                             (_%rest8489984907%_ _%rest84888%_)
                             (_%else8490184915%_ (lambda () '0))
                             (_%K8490384933%_
                              (lambda (_%rest84918%_ _%hd84919%_)
                                (if (string? _%hd84919%_)
                                    (let ((_%hd84921%_ _%hd84919%_))
                                      (if (pair? _%rest84918%_)
                                          (_%lp84886%_
                                           _%rest84918%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd84921%_))
                                                _%jlen84884%_
                                                _%len84891%_))
                                          (let ((__tmp89767
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd84921%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp89767 _%len84891%_))))
                                    (error '"expected string" _%hd84919%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8489984907%_))
                            (let ((_%hd8490484936%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8489984907%_)))
                                  (_%tl8490584938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8489984907%_))))
                              (let* ((_%hd84941%_ _%hd8490484936%_)
                                     (_%rest84943%_ _%tl8490584938%_))
                                (_%K8490384933%_ _%rest84943%_ _%hd84941%_)))
                            (_%else8490184915%_)))))))
          (let* ((_%join84804%_
                  (if (char? _%join84796%_)
                      (let () (declare (not safe)) (##string _%join84796%_))
                      (if (string? _%join84796%_)
                          _%join84796%_
                          (error '"expected string or char" _%join84796%_))))
                 (_%jlen84806%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join84804%_)))
                 (_%olen84808%_
                  (_%join-length84799%_ _%strs84795%_ _%jlen84806%_))
                 (_%ostr84810%_
                  (let () (declare (not safe)) (##make-string _%olen84808%_))))
            (let _%lp84813%_ ((_%rest84815%_ _%strs84795%_) (_%k84816%_ '0))
              (let* ((_%k84819%_ _%k84816%_)
                     (_%rest8483584843%_ _%rest84815%_)
                     (_%else8483784851%_ (lambda () '""))
                     (_%K8483984871%_
                      (lambda (_%rest84854%_ _%hd84855%_)
                        (let* ((_%hd84857%_ _%hd84855%_)
                               (_%hdlen84869%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd84857%_))))
                          (if (pair? _%rest84854%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84857%_
                                   '0
                                   _%hdlen84869%_
                                   _%ostr84810%_
                                   _%k84819%_))
                                (let ((__tmp89768
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k84819%_ _%hdlen84869%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join84804%_
                                   '0
                                   _%jlen84806%_
                                   _%ostr84810%_
                                   __tmp89768))
                                (_%lp84813%_
                                 _%rest84854%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k84819%_
                                          _%hdlen84869%_
                                          _%jlen84806%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84857%_
                                   '0
                                   _%hdlen84869%_
                                   _%ostr84810%_
                                   _%k84819%_))
                                _%ostr84810%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8483584843%_))
                    (let ((_%hd8484084874%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8483584843%_)))
                          (_%tl8484184876%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8483584843%_))))
                      (let* ((_%hd84879%_ _%hd8484084874%_)
                             (_%rest84881%_ _%tl8484184876%_))
                        (_%K8483984871%_ _%rest84881%_ _%hd84879%_)))
                    (_%else8483784851%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes84721%_ _%port84722%_ _%start84723%_ _%end84724%_)
        (if (u8vector? _%bytes84721%_)
            (let ((_%bytes84728%_ _%bytes84721%_))
              (if (input-port? _%port84722%_)
                  (let ((_%port84738%_ _%port84722%_))
                    (if ((lambda (_%o84747%_)
                           (and (fixnum? _%o84747%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84747%_ '0))
                                (let ((__tmp89769
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84728%_))))
                                  (declare (not safe))
                                  (##fx< _%o84747%_ __tmp89769))))
                         _%start84723%_)
                        (let ((_%start84751%_ _%start84723%_))
                          (if ((lambda (_%o84760%_)
                                 (and (fixnum? _%o84760%_)
                                      (let ((__tmp89770
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84728%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84751%_
                                                _%o84760%_
                                                __tmp89770))))
                               _%end84724%_)
                              (let ((_%end84764%_ _%end84724%_))
                                (__read-u8vector__%
                                 _%bytes84728%_
                                 _%port84738%_
                                 _%start84751%_
                                 _%end84764%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@749.22-749.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84724%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@747.22-747.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84723%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@746.22-746.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port84722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@745.22-745.27"
               'contract:
               'u8vector?
               'value:
               _%bytes84721%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes84777%_ _%port84778%_)
        (let* ((_%start84780%_ '0)
               (_%end84782%_ (u8vector-length _%bytes84777%_)))
          (read-u8vector__%
           _%bytes84777%_
           _%port84778%_
           _%start84780%_
           _%end84782%_))))
    (define read-u8vector__1
      (lambda (_%bytes84784%_ _%port84785%_ _%start84786%_)
        (let ((_%end84788%_ (u8vector-length _%bytes84784%_)))
          (read-u8vector__%
           _%bytes84784%_
           _%port84785%_
           _%start84786%_
           _%end84788%_))))
    (define read-u8vector
      (lambda _g89772_
        (let ((_g89771_ (let () (declare (not safe)) (##length _g89772_))))
          (cond ((let () (declare (not safe)) (##fx= _g89771_ 2))
                 (apply read-u8vector__0 _g89772_))
                ((let () (declare (not safe)) (##fx= _g89771_ 3))
                 (apply read-u8vector__1 _g89772_))
                ((let () (declare (not safe)) (##fx= _g89771_ 4))
                 (apply read-u8vector__% _g89772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g89772_))))))
    (define __read-u8vector__%
      (lambda (_%bytes84660%_ _%port84661%_ _%start84662%_ _%end84663%_)
        (let* ((_%bytes84666%_ _%bytes84660%_)
               (_%port84674%_ _%port84661%_)
               (_%start84682%_ _%start84662%_)
               (_%end84690%_ _%end84663%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes84666%_
           _%start84682%_
           _%end84690%_
           _%port84674%_))))
    (define __read-u8vector__0
      (lambda (_%bytes84702%_ _%port84703%_)
        (let* ((_%start84705%_ '0)
               (_%end84707%_ (u8vector-length _%bytes84702%_)))
          (__read-u8vector__%
           _%bytes84702%_
           _%port84703%_
           _%start84705%_
           _%end84707%_))))
    (define __read-u8vector__1
      (lambda (_%bytes84709%_ _%port84710%_ _%start84711%_)
        (let ((_%end84713%_ (u8vector-length _%bytes84709%_)))
          (__read-u8vector__%
           _%bytes84709%_
           _%port84710%_
           _%start84711%_
           _%end84713%_))))
    (define __read-u8vector
      (lambda _g89774_
        (let ((_g89773_ (let () (declare (not safe)) (##length _g89774_))))
          (cond ((let () (declare (not safe)) (##fx= _g89773_ 2))
                 (apply __read-u8vector__0 _g89774_))
                ((let () (declare (not safe)) (##fx= _g89773_ 3))
                 (apply __read-u8vector__1 _g89774_))
                ((let () (declare (not safe)) (##fx= _g89773_ 4))
                 (apply __read-u8vector__% _g89774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g89774_))))))
    (define write-u8vector__%
      (lambda (_%bytes84585%_ _%port84586%_ _%start84587%_ _%end84588%_)
        (if (u8vector? _%bytes84585%_)
            (let ((_%bytes84592%_ _%bytes84585%_))
              (if (output-port? _%port84586%_)
                  (let ((_%port84602%_ _%port84586%_))
                    (if ((lambda (_%o84611%_)
                           (and (fixnum? _%o84611%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84611%_ '0))
                                (let ((__tmp89775
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84592%_))))
                                  (declare (not safe))
                                  (##fx< _%o84611%_ __tmp89775))))
                         _%start84587%_)
                        (let ((_%start84615%_ _%start84587%_))
                          (if ((lambda (_%o84624%_)
                                 (and (fixnum? _%o84624%_)
                                      (let ((__tmp89776
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84592%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84615%_
                                                _%o84624%_
                                                __tmp89776))))
                               _%end84588%_)
                              (let ((_%end84628%_ _%end84588%_))
                                (__write-u8vector__%
                                 _%bytes84592%_
                                 _%port84602%_
                                 _%start84615%_
                                 _%end84628%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@759.23-759.26"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84588%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@757.23-757.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84587%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@756.23-756.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port84586%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@755.23-755.28"
               'contract:
               'u8vector?
               'value:
               _%bytes84585%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes84641%_ _%port84642%_)
        (let* ((_%start84644%_ '0)
               (_%end84646%_ (u8vector-length _%bytes84641%_)))
          (write-u8vector__%
           _%bytes84641%_
           _%port84642%_
           _%start84644%_
           _%end84646%_))))
    (define write-u8vector__1
      (lambda (_%bytes84648%_ _%port84649%_ _%start84650%_)
        (let ((_%end84652%_ (u8vector-length _%bytes84648%_)))
          (write-u8vector__%
           _%bytes84648%_
           _%port84649%_
           _%start84650%_
           _%end84652%_))))
    (define write-u8vector
      (lambda _g89778_
        (let ((_g89777_ (let () (declare (not safe)) (##length _g89778_))))
          (cond ((let () (declare (not safe)) (##fx= _g89777_ 2))
                 (apply write-u8vector__0 _g89778_))
                ((let () (declare (not safe)) (##fx= _g89777_ 3))
                 (apply write-u8vector__1 _g89778_))
                ((let () (declare (not safe)) (##fx= _g89777_ 4))
                 (apply write-u8vector__% _g89778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g89778_))))))
    (define __write-u8vector__%
      (lambda (_%bytes84524%_ _%port84525%_ _%start84526%_ _%end84527%_)
        (let* ((_%bytes84530%_ _%bytes84524%_)
               (_%port84538%_ _%port84525%_)
               (_%start84546%_ _%start84526%_)
               (_%end84554%_ _%end84527%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes84530%_
           _%start84546%_
           _%end84554%_
           _%port84538%_))))
    (define __write-u8vector__0
      (lambda (_%bytes84566%_ _%port84567%_)
        (let* ((_%start84569%_ '0)
               (_%end84571%_ (u8vector-length _%bytes84566%_)))
          (__write-u8vector__%
           _%bytes84566%_
           _%port84567%_
           _%start84569%_
           _%end84571%_))))
    (define __write-u8vector__1
      (lambda (_%bytes84573%_ _%port84574%_ _%start84575%_)
        (let ((_%end84577%_ (u8vector-length _%bytes84573%_)))
          (__write-u8vector__%
           _%bytes84573%_
           _%port84574%_
           _%start84575%_
           _%end84577%_))))
    (define __write-u8vector
      (lambda _g89780_
        (let ((_g89779_ (let () (declare (not safe)) (##length _g89780_))))
          (cond ((let () (declare (not safe)) (##fx= _g89779_ 2))
                 (apply __write-u8vector__0 _g89780_))
                ((let () (declare (not safe)) (##fx= _g89779_ 3))
                 (apply __write-u8vector__1 _g89780_))
                ((let () (declare (not safe)) (##fx= _g89779_ 4))
                 (apply __write-u8vector__% _g89780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g89780_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag84492%_
               _%dbg-exprs84493%_
               _%dbg-thunks84494%_
               _%expr84495%_
               _%thunk84496%_)
        (letrec ((_%o84498%_ (current-output-port))
                 (_%e84499%_ (current-error-port))
                 (_%p84500%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f84501%_
                  (lambda ()
                    (force-output _%o84498%_)
                    (force-output _%e84499%_)))
                 (_%d84502%_
                  (lambda (_%x84509%_) (display _%x84509%_ _%e84499%_)))
                 (_%w84503%_
                  (lambda (_%x84511%_) (_%p84500%_ _%x84511%_ _%e84499%_)))
                 (_%n84504%_ (lambda () (newline _%e84499%_)))
                 (_%v84505%_
                  (lambda (_%l84514%_)
                    (for-each
                     (lambda (_%x84516%_)
                       (_%d84502%_ '" ")
                       (_%w84503%_ _%x84516%_))
                     _%l84514%_)
                    (_%n84504%_)))
                 (_%x84506%_
                  (lambda (_%expr84518%_ _%thunk84519%_)
                    (_%f84501%_)
                    (_%d84502%_ '"  ")
                    (_%w84503%_ _%expr84518%_)
                    (_%d84502%_ '" =>")
                    (call-with-values
                     _%thunk84519%_
                     (lambda _%x84521%_
                       (_%v84505%_ _%x84521%_)
                       (_%f84501%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x84521%_)))))))
          (if _%tag84492%_
              (begin
                (if (eq? _%tag84492%_ '#!void)
                    '#!void
                    (begin
                      (_%f84501%_)
                      (_%d84502%_ _%tag84492%_)
                      (_%n84504%_)))
                (for-each _%x84506%_ _%dbg-exprs84493%_ _%dbg-thunks84494%_)
                (if _%thunk84496%_
                    (_%x84506%_ _%expr84495%_ _%thunk84496%_)
                    '#!void))
              (if _%thunk84496%_ (_%thunk84496%_) '#!void)))))))
