(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712944160)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args87740%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args87740%_))
          (newline))))
    (define display*
      (lambda _%args87737%_
        (let () (declare (not safe)) (##for-each display _%args87737%_))))
    (define file-newer?
      (lambda (_%file187712%_ _%file287713%_)
        (if (string? _%file187712%_)
            (let ((_%file187717%_ _%file187712%_))
              (if (string? _%file287713%_)
                  (let ((_%file287727%_ _%file287713%_))
                    (__file-newer? _%file187717%_ _%file287727%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                     'contract:
                     'string?
                     'value:
                     _%file287713%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file187712%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file187660%_ _%file287661%_)
        (let* ((_%file187664%_ _%file187660%_) (_%file287672%_ _%file287661%_))
          (letrec ((_%modification-time87681%_
                    (lambda (_%file87700%_)
                      (let ((_%file87703%_ _%file87700%_))
                        (_%__modification-time87682%_ _%file87703%_))))
                   (_%__modification-time87682%_
                    (lambda (_%file87684%_)
                      (let* ((_%file87687%_ _%file87684%_)
                             (__tmp89470
                              (let ((__tmp89471
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file87687%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp89471))))
                        (declare (not safe))
                        (##time->seconds __tmp89470)))))
            (let ((__tmp89473 (_%__modification-time87682%_ _%file187664%_))
                  (__tmp89472 (_%__modification-time87682%_ _%file287672%_)))
              (declare (not safe))
              (##fl> __tmp89473 __tmp89472))))))
    (define create-directory*__%
      (lambda (_%dir87625%_ _%perms87626%_)
        (if (string? _%dir87625%_)
            (let ((_%dir87630%_ _%dir87625%_))
              (if (fixnum? _%perms87626%_)
                  (let ((_%perms87640%_ _%perms87626%_))
                    (__create-directory*__% _%dir87630%_ _%perms87640%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms87626%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir87625%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir87653%_)
        (let ((_%perms87655%_ '493))
          (create-directory*__% _%dir87653%_ _%perms87655%_))))
    (define create-directory*
      (lambda _g89475_
        (let ((_g89474_ (let () (declare (not safe)) (##length _g89475_))))
          (cond ((let () (declare (not safe)) (##fx= _g89474_ 1))
                 (apply create-directory*__0 _g89475_))
                ((let () (declare (not safe)) (##fx= _g89474_ 2))
                 (apply create-directory*__% _g89475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g89475_))))))
    (define __create-directory*__%
      (lambda (_%dir87549%_ _%perms87550%_)
        (let* ((_%dir87553%_ _%dir87549%_) (_%perms87561%_ _%perms87550%_))
          (letrec ((_%create187570%_
                    (lambda (_%path87602%_)
                      (let ((_%path87605%_ _%path87602%_))
                        (_%__create187571%_ _%path87605%_))))
                   (_%__create187571%_
                    (lambda (_%path87583%_)
                      (let ((_%path87586%_ _%path87583%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path87586%_))
                            (if (eq? (file-type _%path87586%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path87586%_))
                            (if _%perms87561%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path87586%_
                                             (cons 'permissions:
                                                   (cons _%perms87561%_
                                                         '())))))
                                (create-directory _%path87586%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir87553%_))
                '#!void
                (let _%lp87573%_ ((_%start87575%_ '0))
                  (let ((_%$e87577%_
                         (__string-index__% _%dir87553%_ '#\/ _%start87575%_)))
                    (if _%$e87577%_
                        ((lambda (_%x87580%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x87580%_ '0))
                               (_%__create187571%_
                                (substring _%dir87553%_ '0 _%x87580%_))
                               '#!void)
                           (_%lp87573%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x87580%_ '1))))
                         _%$e87577%_)
                        (_%__create187571%_ _%dir87553%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir87617%_)
        (let ((_%perms87619%_ '493))
          (__create-directory*__% _%dir87617%_ _%perms87619%_))))
    (define __create-directory*
      (lambda _g89477_
        (let ((_g89476_ (let () (declare (not safe)) (##length _g89477_))))
          (cond ((let () (declare (not safe)) (##fx= _g89476_ 1))
                 (apply __create-directory*__0 _g89477_))
                ((let () (declare (not safe)) (##fx= _g89476_ 2))
                 (apply __create-directory*__% _g89477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g89477_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore87545%_ '#t))
    (define true? (lambda (_%obj87542%_) (eq? _%obj87542%_ '#t)))
    (define false (lambda _%ignore87539%_ '#f))
    (define void (lambda _%ignore87536%_ '#!void))
    (define void? (lambda (_%obj87533%_) (eq? _%obj87533%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj87530%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj87530%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj87527%_) (eq? _%obj87527%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj87524%_) (eq? _%obj87524%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj87521%_) (eq? _%obj87521%_ '#!optional)))
    (define immediate?
      (lambda (_%obj87516%_)
        (let* ((_%t87519%_ (let () (declare (not safe)) (##type _%obj87516%_)))
               (__tmp89478
                (let () (declare (not safe)) (##fxand _%t87519%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp89478))))
    (define nonnegative-fixnum?
      (lambda (_%obj87513%_)
        (if (fixnum? _%obj87513%_)
            (let () (declare (not safe)) (##fx>= _%obj87513%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj87507%_)
        (let ((_%$e87510%_ (pair? _%obj87507%_)))
          (if _%$e87510%_ _%$e87510%_ (null? _%obj87507%_)))))
    (define values-count
      (lambda (_%obj87504%_)
        (if (let () (declare (not safe)) (##values? _%obj87504%_))
            (let () (declare (not safe)) (##vector-length _%obj87504%_))
            '1)))
    (define values-ref
      (lambda (_%obj87489%_ _%k87490%_)
        (if (fixnum? _%k87490%_)
            (let ((_%k87494%_ _%k87490%_))
              (__values-ref _%obj87489%_ _%k87494%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k87490%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj87476%_ _%k87477%_)
        (let ((_%k87480%_ _%k87477%_))
          (if (let () (declare (not safe)) (##values? _%obj87476%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj87476%_ _%k87480%_))
              _%obj87476%_))))
    (define values->list
      (lambda (_%obj87473%_)
        (if (let () (declare (not safe)) (##values? _%obj87473%_))
            (let () (declare (not safe)) (##vector->list _%obj87473%_))
            (list _%obj87473%_))))
    (define foldl1
      (lambda (_%f87457%_ _%iv87458%_ _%lst87459%_)
        (if (procedure? _%f87457%_)
            (let ((_%f87463%_ _%f87457%_))
              (__foldl1 _%f87463%_ _%iv87458%_ _%lst87459%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f87457%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f87405%_ _%iv87406%_ _%lst87407%_)
        (let ((_%f87410%_ _%f87405%_))
          (let _%lp87419%_ ((_%rest87421%_ _%lst87407%_)
                            (_%r87422%_ _%iv87406%_))
            (let* ((_%rest8742387431%_ _%rest87421%_)
                   (_%else8742587439%_ (lambda () _%r87422%_))
                   (_%K8742787445%_
                    (lambda (_%rest87442%_ _%x87443%_)
                      (_%lp87419%_
                       _%rest87442%_
                       (let ()
                         (declare (not safe))
                         (_%f87410%_ _%x87443%_ _%r87422%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8742387431%_))
                  (let ((_%hd8742887448%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8742387431%_)))
                        (_%tl8742987450%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8742387431%_))))
                    (let* ((_%x87453%_ _%hd8742887448%_)
                           (_%rest87455%_ _%tl8742987450%_))
                      (_%K8742787445%_ _%rest87455%_ _%x87453%_)))
                  (_%else8742587439%_)))))))
    (define foldl2
      (lambda (_%f87388%_ _%iv87389%_ _%lst187390%_ _%lst287391%_)
        (if (procedure? _%f87388%_)
            (let ((_%f87395%_ _%f87388%_))
              (__foldl2 _%f87395%_ _%iv87389%_ _%lst187390%_ _%lst287391%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f87388%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f87301%_ _%iv87302%_ _%lst187303%_ _%lst287304%_)
        (let ((_%f87307%_ _%f87301%_))
          (let _%lp87316%_ ((_%rest187318%_ _%lst187303%_)
                            (_%rest287319%_ _%lst287304%_)
                            (_%r87320%_ _%iv87302%_))
            (let* ((_%rest18732187329%_ _%rest187318%_)
                   (_%else8732387337%_ (lambda () _%r87320%_))
                   (_%K8732587376%_
                    (lambda (_%rest187340%_ _%x187341%_)
                      (let* ((_%rest28734287350%_ _%rest287319%_)
                             (_%else8734487358%_ (lambda () _%r87320%_))
                             (_%K8734687364%_
                              (lambda (_%rest287361%_ _%x287362%_)
                                (_%lp87316%_
                                 _%rest187340%_
                                 _%rest287361%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f87307%_
                                    _%x187341%_
                                    _%x287362%_
                                    _%r87320%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28734287350%_))
                            (let ((_%hd8734787367%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28734287350%_)))
                                  (_%tl8734887369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28734287350%_))))
                              (let* ((_%x287372%_ _%hd8734787367%_)
                                     (_%rest287374%_ _%tl8734887369%_))
                                (_%K8734687364%_ _%rest287374%_ _%x287372%_)))
                            (_%else8734487358%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18732187329%_))
                  (let ((_%hd8732687379%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18732187329%_)))
                        (_%tl8732787381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18732187329%_))))
                    (let* ((_%x187384%_ _%hd8732687379%_)
                           (_%rest187386%_ _%tl8732787381%_))
                      (_%K8732587376%_ _%rest187386%_ _%x187384%_)))
                  (_%else8732387337%_)))))))
    (define foldl
      (lambda _g89480_
        (let ((_g89479_ (let () (declare (not safe)) (##length _g89480_))))
          (cond ((let () (declare (not safe)) (##fx= _g89479_ 3))
                 (apply foldl1 _g89480_))
                ((let () (declare (not safe)) (##fx= _g89479_ 4))
                 (apply foldl2 _g89480_))
                ((let () (declare (not safe)) (##fx>= _g89479_ 4))
                 (apply foldl* _g89480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g89480_))))))
    (define foldl*
      (lambda (_%f87270%_ _%iv87271%_ . _%rest87272%_)
        (if (procedure? _%f87270%_)
            (let ((_%f87276%_ _%f87270%_))
              (declare (not safe))
              (##apply __foldl* _%f87276%_ _%iv87271%_ _%rest87272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f87270%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f87248%_ _%iv87249%_ . _%rest87250%_)
        (let ((_%f87253%_ _%f87248%_))
          (let _%recur87262%_ ((_%iv87264%_ _%iv87249%_)
                               (_%rest87265%_ _%rest87250%_))
            (if (__andmap1 pair? _%rest87265%_)
                (_%recur87262%_
                 (let ((__tmp89481
                        (__foldr1
                         (lambda (_%xs87267%_ _%r87268%_)
                           (cons (car _%xs87267%_) _%r87268%_))
                         (list _%iv87264%_)
                         _%rest87265%_)))
                   (declare (not safe))
                   (##apply _%f87253%_ __tmp89481))
                 (map cdr _%rest87265%_))
                _%iv87264%_)))))
    (define foldr1
      (lambda (_%f87232%_ _%iv87233%_ _%lst87234%_)
        (if (procedure? _%f87232%_)
            (let ((_%f87238%_ _%f87232%_))
              (__foldr1 _%f87238%_ _%iv87233%_ _%lst87234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f87232%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f87181%_ _%iv87182%_ _%lst87183%_)
        (let ((_%f87186%_ _%f87181%_))
          (let _%recur87195%_ ((_%rest87197%_ _%lst87183%_))
            (let* ((_%rest8719887206%_ _%rest87197%_)
                   (_%else8720087214%_ (lambda () _%iv87182%_))
                   (_%K8720287220%_
                    (lambda (_%rest87217%_ _%x87218%_)
                      (let ((__tmp89482 (_%recur87195%_ _%rest87217%_)))
                        (declare (not safe))
                        (_%f87186%_ _%x87218%_ __tmp89482)))))
              (if (let () (declare (not safe)) (##pair? _%rest8719887206%_))
                  (let ((_%hd8720387223%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8719887206%_)))
                        (_%tl8720487225%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8719887206%_))))
                    (let* ((_%x87228%_ _%hd8720387223%_)
                           (_%rest87230%_ _%tl8720487225%_))
                      (_%K8720287220%_ _%rest87230%_ _%x87228%_)))
                  (_%else8720087214%_)))))))
    (define foldr2
      (lambda (_%f87164%_ _%iv87165%_ _%lst187166%_ _%lst287167%_)
        (if (procedure? _%f87164%_)
            (let ((_%f87171%_ _%f87164%_))
              (__foldr2 _%f87171%_ _%iv87165%_ _%lst187166%_ _%lst287167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f87164%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f87078%_ _%iv87079%_ _%lst187080%_ _%lst287081%_)
        (let ((_%f87084%_ _%f87078%_))
          (let _%recur87093%_ ((_%rest187095%_ _%lst187080%_)
                               (_%rest287096%_ _%lst287081%_))
            (let* ((_%rest18709787105%_ _%rest187095%_)
                   (_%else8709987113%_ (lambda () _%iv87079%_))
                   (_%K8710187152%_
                    (lambda (_%rest187116%_ _%x187117%_)
                      (let* ((_%rest28711887126%_ _%rest287096%_)
                             (_%else8712087134%_ (lambda () _%iv87079%_))
                             (_%K8712287140%_
                              (lambda (_%rest287137%_ _%x287138%_)
                                (let ((__tmp89483
                                       (_%recur87093%_
                                        _%rest187116%_
                                        _%rest287137%_)))
                                  (declare (not safe))
                                  (_%f87084%_
                                   _%x187117%_
                                   _%x287138%_
                                   __tmp89483)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28711887126%_))
                            (let ((_%hd8712387143%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28711887126%_)))
                                  (_%tl8712487145%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28711887126%_))))
                              (let* ((_%x287148%_ _%hd8712387143%_)
                                     (_%rest287150%_ _%tl8712487145%_))
                                (_%K8712287140%_ _%rest287150%_ _%x287148%_)))
                            (_%else8712087134%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18709787105%_))
                  (let ((_%hd8710287155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18709787105%_)))
                        (_%tl8710387157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18709787105%_))))
                    (let* ((_%x187160%_ _%hd8710287155%_)
                           (_%rest187162%_ _%tl8710387157%_))
                      (_%K8710187152%_ _%rest187162%_ _%x187160%_)))
                  (_%else8709987113%_)))))))
    (define foldr
      (lambda _g89485_
        (let ((_g89484_ (let () (declare (not safe)) (##length _g89485_))))
          (cond ((let () (declare (not safe)) (##fx= _g89484_ 3))
                 (apply foldr1 _g89485_))
                ((let () (declare (not safe)) (##fx= _g89484_ 4))
                 (apply foldr2 _g89485_))
                ((let () (declare (not safe)) (##fx>= _g89484_ 4))
                 (apply foldr* _g89485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g89485_))))))
    (define foldr*
      (lambda (_%f87047%_ _%iv87048%_ . _%rest87049%_)
        (if (procedure? _%f87047%_)
            (let ((_%f87053%_ _%f87047%_))
              (declare (not safe))
              (##apply __foldr* _%f87053%_ _%iv87048%_ _%rest87049%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f87047%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f87026%_ _%iv87027%_ . _%rest87028%_)
        (let ((_%f87031%_ _%f87026%_))
          (let _%recur87040%_ ((_%rest87042%_ _%rest87028%_))
            (if (__andmap1 pair? _%rest87042%_)
                (let ((__tmp89486
                       (__foldr1
                        (lambda (_%xs87044%_ _%r87045%_)
                          (cons (car _%xs87044%_) _%r87045%_))
                        (list (_%recur87040%_ (map cdr _%rest87042%_)))
                        _%rest87042%_)))
                  (declare (not safe))
                  (##apply _%f87031%_ __tmp89486))
                _%iv87027%_)))))
    (define remove-nulls!
      (lambda (_%l86913%_)
        (let* ((_%l8691486927%_ _%l86913%_)
               (_%E8691886931%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8691486927%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8692387016%_
                 (lambda (_%r87014%_) (remove-nulls! _%r87014%_)))
                (_%K8692087003%_
                 (lambda (_%r86943%_)
                   (let _%loop86945%_ ((_%l86947%_ _%l86913%_)
                                       (_%r86948%_ _%r86943%_))
                     (let* ((_%r8694986962%_ _%r86948%_)
                            (_%E8695386966%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8694986962%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8695886993%_
                              (lambda (_%rr86991%_)
                                (let ((__tmp89488 _%l86947%_)
                                      (__tmp89487 (remove-nulls! _%rr86991%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp89488 __tmp89487))))
                             (_%K8695586980%_
                              (lambda (_%rr86978%_)
                                (_%loop86945%_ _%r86948%_ _%rr86978%_)))
                             (_%K8695486971%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8694986962%_))
                             (let ((_%tl8696086998%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8694986962%_)))
                                   (_%hd8695986996%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8694986962%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8695986996%_))
                                   (let ((_%rr87001%_ _%tl8696086998%_))
                                     (_%K8695886993%_ _%rr87001%_))
                                   (let ((_%rr86986%_ _%tl8696086998%_))
                                     (_%K8695586980%_ _%rr86986%_))))
                             '#!void))))
                   _%l86913%_))
                (_%K8691986936%_ (lambda () _%l86913%_)))
            (if (let () (declare (not safe)) (##pair? _%l8691486927%_))
                (let ((_%tl8692587021%_
                       (let () (declare (not safe)) (##cdr _%l8691486927%_)))
                      (_%hd8692487019%_
                       (let () (declare (not safe)) (##car _%l8691486927%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8692487019%_))
                      (let ((_%r87024%_ _%tl8692587021%_))
                        (remove-nulls! _%r87024%_))
                      (let ((_%r87009%_ _%tl8692587021%_))
                        (_%K8692087003%_ _%r87009%_))))
                (_%K8691986936%_))))))
    (define append1!
      (lambda (_%l86898%_ _%x86899%_)
        (let ((_%l286902%_ (cons _%x86899%_ '())))
          (if (pair? _%l86898%_)
              (let ((_%l86904%_ _%l86898%_))
                (let ((__tmp89489
                       (let () (declare (not safe)) (##last-pair _%l86904%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp89489 _%l286902%_))
                _%l86904%_)
              _%l286902%_))))
    (define append-reverse-until
      (lambda (_%pred86882%_ _%rhead86883%_ _%tail86884%_)
        (if (procedure? _%pred86882%_)
            (let ((_%pred86888%_ _%pred86882%_))
              (__append-reverse-until
               _%pred86888%_
               _%rhead86883%_
               _%tail86884%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred86882%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred86824%_ _%rhead86825%_ _%tail86826%_)
        (let ((_%pred86829%_ _%pred86824%_))
          (let _%loop86838%_ ((_%rhead86840%_ _%rhead86825%_)
                              (_%tail86841%_ _%tail86826%_))
            (let* ((_%rhead8684386852%_ _%rhead86840%_)
                   (_%E8684686856%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8684386852%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8685086879%_ (lambda () (values '() _%tail86841%_)))
                    (_%K8684786863%_
                     (lambda (_%r86860%_ _%a86861%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred86829%_ _%a86861%_))
                           (values _%rhead86840%_ _%tail86841%_)
                           (_%loop86838%_
                            _%r86860%_
                            (cons _%a86861%_ _%tail86841%_))))))
                (let ((_%try-match8684586875%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8684386852%_))
                             (let ((_%tl8684986868%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8684386852%_)))
                                   (_%hd8684886866%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8684386852%_))))
                               (let ((_%a86871%_ _%hd8684886866%_)
                                     (_%r86873%_ _%tl8684986868%_))
                                 (_%K8684786863%_ _%r86873%_ _%a86871%_)))
                             (_%E8684686856%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8684386852%_))
                      (_%K8685086879%_)
                      (_%try-match8684586875%_)))))))))
    (define andmap1
      (lambda (_%f86809%_ _%lst86810%_)
        (if (procedure? _%f86809%_)
            (let ((_%f86814%_ _%f86809%_)) (__andmap1 _%f86814%_ _%lst86810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f86809%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f86758%_ _%lst86759%_)
        (let ((_%f86762%_ _%f86758%_))
          (let _%lp86771%_ ((_%rest86773%_ _%lst86759%_))
            (let* ((_%rest8677586783%_ _%rest86773%_)
                   (_%else8677786791%_ (lambda () '#t))
                   (_%K8677986797%_
                    (lambda (_%rest86794%_ _%x86795%_)
                      (if (let () (declare (not safe)) (_%f86762%_ _%x86795%_))
                          (_%lp86771%_ _%rest86794%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8677586783%_))
                  (let ((_%hd8678086800%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8677586783%_)))
                        (_%tl8678186802%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8677586783%_))))
                    (let* ((_%x86805%_ _%hd8678086800%_)
                           (_%rest86807%_ _%tl8678186802%_))
                      (_%K8677986797%_ _%rest86807%_ _%x86805%_)))
                  (_%else8677786791%_)))))))
    (define andmap2
      (lambda (_%f86742%_ _%lst186743%_ _%lst286744%_)
        (if (procedure? _%f86742%_)
            (let ((_%f86748%_ _%f86742%_))
              (__andmap2 _%f86748%_ _%lst186743%_ _%lst286744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f86742%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f86656%_ _%lst186657%_ _%lst286658%_)
        (let ((_%f86661%_ _%f86656%_))
          (let _%lp86670%_ ((_%rest186672%_ _%lst186657%_)
                            (_%rest286673%_ _%lst286658%_))
            (let* ((_%rest18667586683%_ _%rest186672%_)
                   (_%else8667786691%_ (lambda () '#t))
                   (_%K8667986730%_
                    (lambda (_%rest186694%_ _%x186695%_)
                      (let* ((_%rest28669686704%_ _%rest286673%_)
                             (_%else8669886712%_ (lambda () '#t))
                             (_%K8670086718%_
                              (lambda (_%rest286715%_ _%x286716%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f86661%_ _%x186695%_ _%x286716%_))
                                    (_%lp86670%_ _%rest186694%_ _%rest286715%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28669686704%_))
                            (let ((_%hd8670186721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28669686704%_)))
                                  (_%tl8670286723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28669686704%_))))
                              (let* ((_%x286726%_ _%hd8670186721%_)
                                     (_%rest286728%_ _%tl8670286723%_))
                                (_%K8670086718%_ _%rest286728%_ _%x286726%_)))
                            (_%else8669886712%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18667586683%_))
                  (let ((_%hd8668086733%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18667586683%_)))
                        (_%tl8668186735%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18667586683%_))))
                    (let* ((_%x186738%_ _%hd8668086733%_)
                           (_%rest186740%_ _%tl8668186735%_))
                      (_%K8667986730%_ _%rest186740%_ _%x186738%_)))
                  (_%else8667786691%_)))))))
    (define andmap
      (lambda _g89491_
        (let ((_g89490_ (let () (declare (not safe)) (##length _g89491_))))
          (cond ((let () (declare (not safe)) (##fx= _g89490_ 2))
                 (apply andmap1 _g89491_))
                ((let () (declare (not safe)) (##fx= _g89490_ 3))
                 (apply andmap2 _g89491_))
                ((let () (declare (not safe)) (##fx>= _g89490_ 3))
                 (apply andmap* _g89491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g89491_))))))
    (define andmap*
      (lambda (_%f86629%_ . _%rest86630%_)
        (if (procedure? _%f86629%_)
            (let ((_%f86634%_ _%f86629%_))
              (declare (not safe))
              (##apply __andmap* _%f86634%_ _%rest86630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f86629%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f86611%_ . _%rest86612%_)
        (let ((_%f86615%_ _%f86611%_))
          (let _%recur86624%_ ((_%rest86626%_ _%rest86612%_))
            (if (__andmap1 pair? _%rest86626%_)
                (if (let ((__tmp89492 (map car _%rest86626%_)))
                      (declare (not safe))
                      (##apply _%f86615%_ __tmp89492))
                    (_%recur86624%_ (map cdr _%rest86626%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f86596%_ _%lst86597%_)
        (if (procedure? _%f86596%_)
            (let ((_%f86601%_ _%f86596%_)) (__ormap1 _%f86601%_ _%lst86597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f86596%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f86543%_ _%lst86544%_)
        (let ((_%f86547%_ _%f86543%_))
          (let _%lp86556%_ ((_%rest86558%_ _%lst86544%_))
            (let* ((_%rest8655986567%_ _%rest86558%_)
                   (_%else8656186575%_ (lambda () '#f))
                   (_%K8656386584%_
                    (lambda (_%rest86578%_ _%x86579%_)
                      (let ((_%$e86581%_
                             (let ()
                               (declare (not safe))
                               (_%f86547%_ _%x86579%_))))
                        (if _%$e86581%_
                            _%$e86581%_
                            (_%lp86556%_ _%rest86578%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8655986567%_))
                  (let ((_%hd8656486587%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8655986567%_)))
                        (_%tl8656586589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8655986567%_))))
                    (let* ((_%x86592%_ _%hd8656486587%_)
                           (_%rest86594%_ _%tl8656586589%_))
                      (_%K8656386584%_ _%rest86594%_ _%x86592%_)))
                  (_%else8656186575%_)))))))
    (define ormap2
      (lambda (_%f86527%_ _%lst186528%_ _%lst286529%_)
        (if (procedure? _%f86527%_)
            (let ((_%f86533%_ _%f86527%_))
              (__ormap2 _%f86533%_ _%lst186528%_ _%lst286529%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f86527%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f86439%_ _%lst186440%_ _%lst286441%_)
        (let ((_%f86444%_ _%f86439%_))
          (let _%lp86453%_ ((_%rest186455%_ _%lst186440%_)
                            (_%rest286456%_ _%lst286441%_))
            (let* ((_%rest18645786465%_ _%rest186455%_)
                   (_%else8645986473%_ (lambda () '#f))
                   (_%K8646186515%_
                    (lambda (_%rest186476%_ _%x186477%_)
                      (let* ((_%rest28647886486%_ _%rest286456%_)
                             (_%else8648086494%_ (lambda () '#f))
                             (_%K8648286503%_
                              (lambda (_%rest286497%_ _%x286498%_)
                                (let ((_%$e86500%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86444%_
                                          _%x186477%_
                                          _%x286498%_))))
                                  (if _%$e86500%_
                                      _%$e86500%_
                                      (_%lp86453%_
                                       _%rest186476%_
                                       _%rest286497%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28647886486%_))
                            (let ((_%hd8648386506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28647886486%_)))
                                  (_%tl8648486508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28647886486%_))))
                              (let* ((_%x286511%_ _%hd8648386506%_)
                                     (_%rest286513%_ _%tl8648486508%_))
                                (_%K8648286503%_ _%rest286513%_ _%x286511%_)))
                            (_%else8648086494%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18645786465%_))
                  (let ((_%hd8646286518%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18645786465%_)))
                        (_%tl8646386520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18645786465%_))))
                    (let* ((_%x186523%_ _%hd8646286518%_)
                           (_%rest186525%_ _%tl8646386520%_))
                      (_%K8646186515%_ _%rest186525%_ _%x186523%_)))
                  (_%else8645986473%_)))))))
    (define ormap
      (lambda _g89494_
        (let ((_g89493_ (let () (declare (not safe)) (##length _g89494_))))
          (cond ((let () (declare (not safe)) (##fx= _g89493_ 2))
                 (apply ormap1 _g89494_))
                ((let () (declare (not safe)) (##fx= _g89493_ 3))
                 (apply ormap2 _g89494_))
                ((let () (declare (not safe)) (##fx>= _g89493_ 3))
                 (apply ormap* _g89494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g89494_))))))
    (define ormap*
      (lambda (_%f86412%_ . _%rest86413%_)
        (if (procedure? _%f86412%_)
            (let ((_%f86417%_ _%f86412%_))
              (declare (not safe))
              (##apply __ormap* _%f86417%_ _%rest86413%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f86412%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f86392%_ . _%rest86393%_)
        (let ((_%f86396%_ _%f86392%_))
          (let _%recur86405%_ ((_%rest86407%_ _%rest86393%_))
            (if (__andmap1 pair? _%rest86407%_)
                (let ((_%$e86409%_
                       (let ((__tmp89495 (map car _%rest86407%_)))
                         (declare (not safe))
                         (##apply _%f86396%_ __tmp89495))))
                  (if _%$e86409%_
                      _%$e86409%_
                      (_%recur86405%_ (map cdr _%rest86407%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f86377%_ _%lst86378%_)
        (if (procedure? _%f86377%_)
            (let ((_%f86382%_ _%f86377%_))
              (__filter-map1 _%f86382%_ _%lst86378%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f86377%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f86320%_ _%lst86321%_)
        (let ((_%f86324%_ _%f86320%_))
          (let _%recur86333%_ ((_%rest86335%_ _%lst86321%_))
            (let* ((_%rest8633786345%_ _%rest86335%_)
                   (_%else8633986353%_ (lambda () '()))
                   (_%K8634186365%_
                    (lambda (_%rest86356%_ _%x86357%_)
                      (let ((_%$e86359%_
                             (let ()
                               (declare (not safe))
                               (_%f86324%_ _%x86357%_))))
                        (if _%$e86359%_
                            ((lambda (_%r86362%_)
                               (cons _%r86362%_
                                     (_%recur86333%_ _%rest86356%_)))
                             _%$e86359%_)
                            (_%recur86333%_ _%rest86356%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8633786345%_))
                  (let ((_%hd8634286368%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8633786345%_)))
                        (_%tl8634386370%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8633786345%_))))
                    (let* ((_%x86373%_ _%hd8634286368%_)
                           (_%rest86375%_ _%tl8634386370%_))
                      (_%K8634186365%_ _%rest86375%_ _%x86373%_)))
                  (_%else8633986353%_)))))))
    (define filter-map2
      (lambda (_%f86304%_ _%lst186305%_ _%lst286306%_)
        (if (procedure? _%f86304%_)
            (let ((_%f86310%_ _%f86304%_))
              (__filter-map2 _%f86310%_ _%lst186305%_ _%lst286306%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f86304%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f86212%_ _%lst186213%_ _%lst286214%_)
        (let ((_%f86217%_ _%f86212%_))
          (let _%recur86226%_ ((_%rest186228%_ _%lst186213%_)
                               (_%rest286229%_ _%lst286214%_))
            (let* ((_%rest18623186239%_ _%rest186228%_)
                   (_%else8623386247%_ (lambda () '()))
                   (_%K8623586292%_
                    (lambda (_%rest186250%_ _%x186251%_)
                      (let* ((_%rest28625286260%_ _%rest286229%_)
                             (_%else8625486268%_ (lambda () '()))
                             (_%K8625686280%_
                              (lambda (_%rest286271%_ _%x286272%_)
                                (let ((_%$e86274%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86217%_
                                          _%x186251%_
                                          _%x286272%_))))
                                  (if _%$e86274%_
                                      ((lambda (_%r86277%_)
                                         (cons _%r86277%_
                                               (_%recur86226%_
                                                _%rest186250%_
                                                _%rest286271%_)))
                                       _%$e86274%_)
                                      (_%recur86226%_
                                       _%rest186250%_
                                       _%rest286271%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28625286260%_))
                            (let ((_%hd8625786283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28625286260%_)))
                                  (_%tl8625886285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28625286260%_))))
                              (let* ((_%x286288%_ _%hd8625786283%_)
                                     (_%rest286290%_ _%tl8625886285%_))
                                (_%K8625686280%_ _%rest286290%_ _%x286288%_)))
                            (_%else8625486268%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18623186239%_))
                  (let ((_%hd8623686295%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18623186239%_)))
                        (_%tl8623786297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18623186239%_))))
                    (let* ((_%x186300%_ _%hd8623686295%_)
                           (_%rest186302%_ _%tl8623786297%_))
                      (_%K8623586292%_ _%rest186302%_ _%x186300%_)))
                  (_%else8623386247%_)))))))
    (define filter-map
      (lambda _g89497_
        (let ((_g89496_ (let () (declare (not safe)) (##length _g89497_))))
          (cond ((let () (declare (not safe)) (##fx= _g89496_ 2))
                 (apply filter-map1 _g89497_))
                ((let () (declare (not safe)) (##fx= _g89496_ 3))
                 (apply filter-map2 _g89497_))
                ((let () (declare (not safe)) (##fx>= _g89496_ 3))
                 (apply filter-map* _g89497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g89497_))))))
    (define filter-map*
      (lambda (_%f86185%_ . _%rest86186%_)
        (if (procedure? _%f86185%_)
            (let ((_%f86190%_ _%f86185%_))
              (declare (not safe))
              (##apply __filter-map* _%f86190%_ _%rest86186%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f86185%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f86161%_ . _%rest86162%_)
        (let ((_%f86165%_ _%f86161%_))
          (let _%recur86174%_ ((_%rest86176%_ _%rest86162%_))
            (if (__andmap1 pair? _%rest86176%_)
                (let ((_%$e86179%_
                       (let ((__tmp89498 (map car _%rest86176%_)))
                         (declare (not safe))
                         (##apply _%f86165%_ __tmp89498))))
                  (if _%$e86179%_
                      ((lambda (_%r86182%_)
                         (cons _%r86182%_
                               (_%recur86174%_ (map cdr _%rest86176%_))))
                       _%$e86179%_)
                      (_%recur86174%_ (map cdr _%rest86176%_))))
                '())))))
    (define agetq__%
      (lambda (_%key86137%_ _%lst86139%_ _%default86141%_)
        (let ((_%$e86144%_
               (if (pair? _%lst86139%_) (assq _%key86137%_ _%lst86139%_) '#f)))
          (if _%$e86144%_
              (cdr _%$e86144%_)
              (if (procedure? _%default86141%_)
                  (_%default86141%_ _%key86137%_)
                  _%default86141%_)))))
    (define agetq__0
      (lambda (_%key86152%_ _%lst86153%_)
        (let ((_%default86155%_ '#f))
          (agetq__% _%key86152%_ _%lst86153%_ _%default86155%_))))
    (define agetq
      (lambda _g89500_
        (let ((_g89499_ (let () (declare (not safe)) (##length _g89500_))))
          (cond ((let () (declare (not safe)) (##fx= _g89499_ 2))
                 (apply agetq__0 _g89500_))
                ((let () (declare (not safe)) (##fx= _g89499_ 3))
                 (apply agetq__% _g89500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g89500_))))))
    (define agetv__%
      (lambda (_%key86112%_ _%lst86114%_ _%default86116%_)
        (let ((_%$e86119%_
               (if (pair? _%lst86114%_) (assv _%key86112%_ _%lst86114%_) '#f)))
          (if _%$e86119%_
              (cdr _%$e86119%_)
              (if (procedure? _%default86116%_)
                  (_%default86116%_ _%key86112%_)
                  _%default86116%_)))))
    (define agetv__0
      (lambda (_%key86127%_ _%lst86128%_)
        (let ((_%default86130%_ '#f))
          (agetv__% _%key86127%_ _%lst86128%_ _%default86130%_))))
    (define agetv
      (lambda _g89502_
        (let ((_g89501_ (let () (declare (not safe)) (##length _g89502_))))
          (cond ((let () (declare (not safe)) (##fx= _g89501_ 2))
                 (apply agetv__0 _g89502_))
                ((let () (declare (not safe)) (##fx= _g89501_ 3))
                 (apply agetv__% _g89502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g89502_))))))
    (define aget__%
      (lambda (_%key86087%_ _%lst86089%_ _%default86091%_)
        (let ((_%$e86094%_
               (if (pair? _%lst86089%_)
                   (assoc _%key86087%_ _%lst86089%_)
                   '#f)))
          (if _%$e86094%_
              (cdr _%$e86094%_)
              (if (procedure? _%default86091%_)
                  (_%default86091%_ _%key86087%_)
                  _%default86091%_)))))
    (define aget__0
      (lambda (_%key86102%_ _%lst86103%_)
        (let ((_%default86105%_ '#f))
          (aget__% _%key86102%_ _%lst86103%_ _%default86105%_))))
    (define aget
      (lambda _g89504_
        (let ((_g89503_ (let () (declare (not safe)) (##length _g89504_))))
          (cond ((let () (declare (not safe)) (##fx= _g89503_ 2))
                 (apply aget__0 _g89504_))
                ((let () (declare (not safe)) (##fx= _g89503_ 3))
                 (apply aget__% _g89504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g89504_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key86016%_ _%lst86018%_ _%default86020%_)
        (let _%lp86023%_ ((_%rest86026%_ _%lst86018%_))
          (let* ((_%rest8602886038%_ _%rest86026%_)
                 (_%else8603086046%_
                  (lambda ()
                    (if (procedure? _%default86020%_)
                        (_%default86020%_ _%key86016%_)
                        _%default86020%_)))
                 (_%K8603286055%_
                  (lambda (_%rest86049%_ _%v86050%_ _%k86052%_)
                    (if (eq? _%k86052%_ _%key86016%_)
                        _%v86050%_
                        (_%lp86023%_ _%rest86049%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8602886038%_))
                (let ((_%hd8603386058%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8602886038%_)))
                      (_%tl8603486060%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8602886038%_))))
                  (let ((_%k86063%_ _%hd8603386058%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8603486060%_))
                        (let ((_%hd8603586065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8603486060%_)))
                              (_%tl8603686067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8603486060%_))))
                          (let* ((_%v86070%_ _%hd8603586065%_)
                                 (_%rest86072%_ _%tl8603686067%_))
                            (_%K8603286055%_
                             _%rest86072%_
                             _%v86070%_
                             _%k86063%_)))
                        (_%else8603086046%_))))
                (_%else8603086046%_))))))
    (define pgetq__0
      (lambda (_%key86077%_ _%lst86078%_)
        (let ((_%default86080%_ '#f))
          (pgetq__% _%key86077%_ _%lst86078%_ _%default86080%_))))
    (define pgetq
      (lambda _g89506_
        (let ((_g89505_ (let () (declare (not safe)) (##length _g89506_))))
          (cond ((let () (declare (not safe)) (##fx= _g89505_ 2))
                 (apply pgetq__0 _g89506_))
                ((let () (declare (not safe)) (##fx= _g89505_ 3))
                 (apply pgetq__% _g89506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g89506_))))))
    (define pgetv__%
      (lambda (_%key85945%_ _%lst85947%_ _%default85949%_)
        (let _%lp85952%_ ((_%rest85955%_ _%lst85947%_))
          (let* ((_%rest8595785967%_ _%rest85955%_)
                 (_%else8595985975%_
                  (lambda ()
                    (if (procedure? _%default85949%_)
                        (_%default85949%_ _%key85945%_)
                        _%default85949%_)))
                 (_%K8596185984%_
                  (lambda (_%rest85978%_ _%v85979%_ _%k85981%_)
                    (if (eqv? _%k85981%_ _%key85945%_)
                        _%v85979%_
                        (_%lp85952%_ _%rest85978%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8595785967%_))
                (let ((_%hd8596285987%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8595785967%_)))
                      (_%tl8596385989%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8595785967%_))))
                  (let ((_%k85992%_ _%hd8596285987%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8596385989%_))
                        (let ((_%hd8596485994%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8596385989%_)))
                              (_%tl8596585996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8596385989%_))))
                          (let* ((_%v85999%_ _%hd8596485994%_)
                                 (_%rest86001%_ _%tl8596585996%_))
                            (_%K8596185984%_
                             _%rest86001%_
                             _%v85999%_
                             _%k85992%_)))
                        (_%else8595985975%_))))
                (_%else8595985975%_))))))
    (define pgetv__0
      (lambda (_%key86006%_ _%lst86007%_)
        (let ((_%default86009%_ '#f))
          (pgetv__% _%key86006%_ _%lst86007%_ _%default86009%_))))
    (define pgetv
      (lambda _g89508_
        (let ((_g89507_ (let () (declare (not safe)) (##length _g89508_))))
          (cond ((let () (declare (not safe)) (##fx= _g89507_ 2))
                 (apply pgetv__0 _g89508_))
                ((let () (declare (not safe)) (##fx= _g89507_ 3))
                 (apply pgetv__% _g89508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g89508_))))))
    (define pget__%
      (lambda (_%key85874%_ _%lst85876%_ _%default85878%_)
        (let _%lp85881%_ ((_%rest85884%_ _%lst85876%_))
          (let* ((_%rest8588685896%_ _%rest85884%_)
                 (_%else8588885904%_
                  (lambda ()
                    (if (procedure? _%default85878%_)
                        (_%default85878%_ _%key85874%_)
                        _%default85878%_)))
                 (_%K8589085913%_
                  (lambda (_%rest85907%_ _%v85908%_ _%k85910%_)
                    (if (equal? _%k85910%_ _%key85874%_)
                        _%v85908%_
                        (_%lp85881%_ _%rest85907%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8588685896%_))
                (let ((_%hd8589185916%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8588685896%_)))
                      (_%tl8589285918%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8588685896%_))))
                  (let ((_%k85921%_ _%hd8589185916%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8589285918%_))
                        (let ((_%hd8589385923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8589285918%_)))
                              (_%tl8589485925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8589285918%_))))
                          (let* ((_%v85928%_ _%hd8589385923%_)
                                 (_%rest85930%_ _%tl8589485925%_))
                            (_%K8589085913%_
                             _%rest85930%_
                             _%v85928%_
                             _%k85921%_)))
                        (_%else8588885904%_))))
                (_%else8588885904%_))))))
    (define pget__0
      (lambda (_%key85935%_ _%lst85936%_)
        (let ((_%default85938%_ '#f))
          (pget__% _%key85935%_ _%lst85936%_ _%default85938%_))))
    (define pget
      (lambda _g89510_
        (let ((_g89509_ (let () (declare (not safe)) (##length _g89510_))))
          (cond ((let () (declare (not safe)) (##fx= _g89509_ 2))
                 (apply pget__0 _g89510_))
                ((let () (declare (not safe)) (##fx= _g89509_ 3))
                 (apply pget__% _g89510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g89510_))))))
    (define find
      (lambda (_%pred85858%_ _%lst85859%_)
        (if (procedure? _%pred85858%_)
            (let ((_%pred85863%_ _%pred85858%_))
              (__find _%pred85863%_ _%lst85859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred85858%_)
              '#!void))))
    (define __find
      (lambda (_%pred85841%_ _%lst85842%_)
        (let* ((_%pred85845%_ _%pred85841%_)
               (_%$e85854%_ (__memf _%pred85845%_ _%lst85842%_)))
          (if _%$e85854%_
              (let () (declare (not safe)) (##car _%$e85854%_))
              '#f))))
    (define memf
      (lambda (_%proc85826%_ _%lst85827%_)
        (if (procedure? _%proc85826%_)
            (let ((_%proc85831%_ _%proc85826%_))
              (__memf _%proc85831%_ _%lst85827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc85826%_)
              '#!void))))
    (define __memf
      (lambda (_%proc85776%_ _%lst85777%_)
        (let ((_%proc85780%_ _%proc85776%_))
          (let _%lp85789%_ ((_%rest85791%_ _%lst85777%_))
            (let* ((_%rest8579285800%_ _%rest85791%_)
                   (_%else8579485808%_ (lambda () '#f))
                   (_%K8579685814%_
                    (lambda (_%tl85811%_ _%hd85812%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85780%_ _%hd85812%_))
                          _%rest85791%_
                          (_%lp85789%_ _%tl85811%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8579285800%_))
                  (let ((_%hd8579785817%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8579285800%_)))
                        (_%tl8579885819%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8579285800%_))))
                    (let* ((_%hd85822%_ _%hd8579785817%_)
                           (_%tl85824%_ _%tl8579885819%_))
                      (_%K8579685814%_ _%tl85824%_ _%hd85822%_)))
                  (_%else8579485808%_)))))))
    (define remove1
      (lambda (_%el85729%_ _%lst85731%_)
        (let _%lp85734%_ ((_%rest85737%_ _%lst85731%_) (_%r85739%_ '()))
          (let* ((_%rest8574185749%_ _%rest85737%_)
                 (_%else8574385757%_ (lambda () _%lst85731%_))
                 (_%K8574585764%_
                  (lambda (_%rest85760%_ _%hd85761%_)
                    (if (equal? _%el85729%_ _%hd85761%_)
                        (__foldl1 cons _%rest85760%_ _%r85739%_)
                        (_%lp85734%_
                         _%rest85760%_
                         (cons _%hd85761%_ _%r85739%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8574185749%_))
                (let ((_%hd8574685767%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8574185749%_)))
                      (_%tl8574785769%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8574185749%_))))
                  (let* ((_%hd85772%_ _%hd8574685767%_)
                         (_%rest85774%_ _%tl8574785769%_))
                    (_%K8574585764%_ _%rest85774%_ _%hd85772%_)))
                (_%else8574385757%_))))))
    (define remv1
      (lambda (_%el85682%_ _%lst85684%_)
        (let _%lp85687%_ ((_%rest85690%_ _%lst85684%_) (_%r85692%_ '()))
          (let* ((_%rest8569485702%_ _%rest85690%_)
                 (_%else8569685710%_ (lambda () _%lst85684%_))
                 (_%K8569885717%_
                  (lambda (_%rest85713%_ _%hd85714%_)
                    (if (eqv? _%el85682%_ _%hd85714%_)
                        (__foldl1 cons _%rest85713%_ _%r85692%_)
                        (_%lp85687%_
                         _%rest85713%_
                         (cons _%hd85714%_ _%r85692%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8569485702%_))
                (let ((_%hd8569985720%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8569485702%_)))
                      (_%tl8570085722%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8569485702%_))))
                  (let* ((_%hd85725%_ _%hd8569985720%_)
                         (_%rest85727%_ _%tl8570085722%_))
                    (_%K8569885717%_ _%rest85727%_ _%hd85725%_)))
                (_%else8569685710%_))))))
    (define remq1
      (lambda (_%el85635%_ _%lst85637%_)
        (let _%lp85640%_ ((_%rest85643%_ _%lst85637%_) (_%r85645%_ '()))
          (let* ((_%rest8564785655%_ _%rest85643%_)
                 (_%else8564985663%_ (lambda () _%lst85637%_))
                 (_%K8565185670%_
                  (lambda (_%rest85666%_ _%hd85667%_)
                    (if (eq? _%el85635%_ _%hd85667%_)
                        (__foldl1 cons _%rest85666%_ _%r85645%_)
                        (_%lp85640%_
                         _%rest85666%_
                         (cons _%hd85667%_ _%r85645%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8564785655%_))
                (let ((_%hd8565285673%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8564785655%_)))
                      (_%tl8565385675%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8564785655%_))))
                  (let* ((_%hd85678%_ _%hd8565285673%_)
                         (_%rest85680%_ _%tl8565385675%_))
                    (_%K8565185670%_ _%rest85680%_ _%hd85678%_)))
                (_%else8564985663%_))))))
    (define remf
      (lambda (_%proc85620%_ _%lst85621%_)
        (if (procedure? _%proc85620%_)
            (let ((_%proc85625%_ _%proc85620%_))
              (__remf _%proc85625%_ _%lst85621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc85620%_)
              '#!void))))
    (define __remf
      (lambda (_%proc85569%_ _%lst85570%_)
        (let ((_%proc85573%_ _%proc85569%_))
          (let _%lp85582%_ ((_%rest85584%_ _%lst85570%_) (_%r85585%_ '()))
            (let* ((_%rest8558685594%_ _%rest85584%_)
                   (_%else8558885602%_ (lambda () _%lst85570%_))
                   (_%K8559085608%_
                    (lambda (_%rest85605%_ _%hd85606%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85573%_ _%hd85606%_))
                          (__foldl1 cons _%rest85605%_ _%r85585%_)
                          (_%lp85582%_
                           _%rest85605%_
                           (cons _%hd85606%_ _%r85585%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8558685594%_))
                  (let ((_%hd8559185611%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8558685594%_)))
                        (_%tl8559285613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8558685594%_))))
                    (let* ((_%hd85616%_ _%hd8559185611%_)
                           (_%rest85618%_ _%tl8559285613%_))
                      (_%K8559085608%_ _%rest85618%_ _%hd85616%_)))
                  (_%else8558885602%_)))))))
    (define 1+
      (lambda (_%x85555%_)
        (if (number? _%x85555%_)
            (let ((_%x85559%_ _%x85555%_)) (__1+ _%x85559%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x85555%_)
              '#!void))))
    (define __1+
      (lambda (_%x85543%_) (let ((_%x85546%_ _%x85543%_)) (+ _%x85546%_ '1))))
    (define 1-
      (lambda (_%x85529%_)
        (if (number? _%x85529%_)
            (let ((_%x85533%_ _%x85529%_)) (__1- _%x85533%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x85529%_)
              '#!void))))
    (define __1-
      (lambda (_%x85517%_) (let ((_%x85520%_ _%x85517%_)) (- _%x85520%_ '1))))
    (define fx1+
      (lambda (_%x85503%_)
        (if (fixnum? _%x85503%_)
            (let ((_%x85507%_ _%x85503%_)) (__fx1+ _%x85507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x85503%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x85491%_)
        (let ((_%x85494%_ _%x85491%_))
          (declare (not safe))
          (##fx+ _%x85494%_ '1))))
    (define fx1-
      (lambda (_%x85477%_)
        (if (fixnum? _%x85477%_)
            (let ((_%x85481%_ _%x85477%_)) (__fx1- _%x85481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x85477%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x85465%_)
        (let ((_%x85468%_ _%x85465%_))
          (declare (not safe))
          (##fx- _%x85468%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x85462%_)
        (if (fixnum? _%x85462%_)
            (let () (declare (not safe)) (##fx>= _%x85462%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x85459%_)
        (if (fixnum? _%x85459%_)
            (let () (declare (not safe)) (##fx> _%x85459%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x85456%_)
        (let () (declare (not safe)) (##fx= _%x85456%_ '0))))
    (define fx<0?
      (lambda (_%x85453%_)
        (if (fixnum? _%x85453%_)
            (let () (declare (not safe)) (##fx< _%x85453%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x85450%_)
        (if (fixnum? _%x85450%_)
            (let () (declare (not safe)) (##fx<= _%x85450%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x85447%_)
        (if (symbol? _%x85447%_) (not (uninterned-symbol? _%x85447%_)) '#f)))
    (define display-as-string
      (lambda (_%x85432%_ _%port85433%_)
        (if (output-port? _%port85433%_)
            (let ((_%port85437%_ _%port85433%_))
              (__display-as-string _%x85432%_ _%port85437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port85433%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x85389%_ _%port85390%_)
        (let ((_%port85393%_ _%port85390%_))
          (if (or (string? _%x85389%_)
                  (symbol? _%x85389%_)
                  (keyword? _%x85389%_)
                  (number? _%x85389%_)
                  (char? _%x85389%_))
              (display _%x85389%_ _%port85393%_)
              (if (pair? _%x85389%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x85389%_))
                     _%port85393%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x85389%_))
                     _%port85393%_))
                  (if (vector? _%x85389%_)
                      (vector-for-each
                       (lambda (_%g8541685418%_)
                         (__display-as-string _%g8541685418%_ _%port85393%_))
                       _%x85389%_)
                      (if (or (null? _%x85389%_)
                              (eq? _%x85389%_ '#!void)
                              (eof-object? _%x85389%_)
                              (boolean? _%x85389%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x85389%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x85372%_)
        (if (string? _%x85372%_)
            _%x85372%_
            (if (symbol? _%x85372%_)
                (let () (declare (not safe)) (##symbol->string _%x85372%_))
                (if (keyword? _%x85372%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x85372%_))
                    (if (number? _%x85372%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x85372%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8537885380%_)
                           (__display-as-string
                            _%x85372%_
                            _%g8537885380%_)))))))))
    (define as-string__1
      (lambda _%args85383%_
        (call-with-output-string
         '()
         (lambda (_%g8538485386%_)
           (__display-as-string _%args85383%_ _%g8538485386%_)))))
    (define as-string
      (lambda _g89512_
        (let ((_g89511_ (let () (declare (not safe)) (##length _g89512_))))
          (cond ((let () (declare (not safe)) (##fx= _g89511_ 1))
                 (apply as-string__0 _g89512_))
                (#t
                 (apply (lambda _%args85383%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args85383%_)))
                        _g89512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g89512_))))))
    (define make-symbol__0
      (lambda (_%x85368%_)
        (if (interned-symbol? _%x85368%_)
            _%x85368%_
            (string->symbol (as-string__0 _%x85368%_)))))
    (define make-symbol__1
      (lambda _%args85370%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args85370%_)))))
    (define make-symbol
      (lambda _g89514_
        (let ((_g89513_ (let () (declare (not safe)) (##length _g89514_))))
          (cond ((let () (declare (not safe)) (##fx= _g89513_ 1))
                 (apply make-symbol__0 _g89514_))
                (#t
                 (apply (lambda _%args85370%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args85370%_)))
                        _g89514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g89514_))))))
    (define make-keyword__0
      (lambda (_%x85364%_)
        (if (interned-keyword? _%x85364%_)
            _%x85364%_
            (string->keyword (as-string__0 _%x85364%_)))))
    (define make-keyword__1
      (lambda _%args85366%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args85366%_)))))
    (define make-keyword
      (lambda _g89516_
        (let ((_g89515_ (let () (declare (not safe)) (##length _g89516_))))
          (cond ((let () (declare (not safe)) (##fx= _g89515_ 1))
                 (apply make-keyword__0 _g89516_))
                (#t
                 (apply (lambda _%args85366%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args85366%_)))
                        _g89516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g89516_))))))
    (define interned-keyword?
      (lambda (_%x85361%_)
        (if (keyword? _%x85361%_) (not (uninterned-keyword? _%x85361%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym85347%_)
        (if (symbol? _%sym85347%_)
            (let ((_%sym85351%_ _%sym85347%_))
              (__symbol->keyword _%sym85351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym85347%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym85335%_)
        (let ((_%sym85338%_ _%sym85335%_))
          (if (uninterned-symbol? _%sym85338%_)
              (let ((__tmp89517
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85338%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp89517))
              (let ((__tmp89518
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85338%_))))
                (declare (not safe))
                (##string->keyword __tmp89518))))))
    (define keyword->symbol
      (lambda (_%sym85321%_)
        (if (keyword? _%sym85321%_)
            (let ((_%sym85325%_ _%sym85321%_))
              (__keyword->symbol _%sym85325%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym85321%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym85309%_)
        (let ((_%sym85312%_ _%sym85309%_))
          (if (uninterned-keyword? _%sym85312%_)
              (let ((__tmp89519
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85312%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp89519))
              (let ((__tmp89520
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85312%_))))
                (declare (not safe))
                (##string->symbol __tmp89520))))))
    (define bytes->string__%
      (lambda (_%bstr85274%_ _%enc85275%_)
        (if (u8vector? _%bstr85274%_)
            (let ((_%bstr85279%_ _%bstr85274%_))
              (if (symbol? _%enc85275%_)
                  (let ((_%enc85289%_ _%enc85275%_))
                    (__bytes->string__% _%bstr85279%_ _%enc85289%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85275%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr85274%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr85302%_)
        (let ((_%enc85304%_ 'UTF-8))
          (bytes->string__% _%bstr85302%_ _%enc85304%_))))
    (define bytes->string
      (lambda _g89522_
        (let ((_g89521_ (let () (declare (not safe)) (##length _g89522_))))
          (cond ((let () (declare (not safe)) (##fx= _g89521_ 1))
                 (apply bytes->string__0 _g89522_))
                ((let () (declare (not safe)) (##fx= _g89521_ 2))
                 (apply bytes->string__% _g89522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g89522_))))))
    (define __bytes->string__%
      (lambda (_%bstr85233%_ _%enc85234%_)
        (let* ((_%bstr85237%_ _%bstr85233%_) (_%enc85245%_ _%enc85234%_))
          (if (eq? _%enc85245%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr85237%_))
              (let* ((_%in85254%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc85245%_
                                   (cons 'init: (cons _%bstr85237%_ '()))))))
                     (_%len85256%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr85237%_)))
                     (_%out85258%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len85256%_)))
                     (_%n85260%_
                      (read-substring
                       _%out85258%_
                       '0
                       _%len85256%_
                       _%in85254%_)))
                (string-shrink! _%out85258%_ _%n85260%_)
                _%out85258%_)))))
    (define __bytes->string__0
      (lambda (_%bstr85266%_)
        (let ((_%enc85268%_ 'UTF-8))
          (__bytes->string__% _%bstr85266%_ _%enc85268%_))))
    (define __bytes->string
      (lambda _g89524_
        (let ((_g89523_ (let () (declare (not safe)) (##length _g89524_))))
          (cond ((let () (declare (not safe)) (##fx= _g89523_ 1))
                 (apply __bytes->string__0 _g89524_))
                ((let () (declare (not safe)) (##fx= _g89523_ 2))
                 (apply __bytes->string__% _g89524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g89524_))))))
    (define string->bytes__%
      (lambda (_%str85197%_ _%enc85198%_)
        (if (string? _%str85197%_)
            (let ((_%str85202%_ _%str85197%_))
              (if (symbol? _%enc85198%_)
                  (let ((_%enc85212%_ _%enc85198%_))
                    (__string->bytes__% _%str85202%_ _%enc85212%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85198%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str85197%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str85225%_)
        (let ((_%enc85227%_ 'UTF-8))
          (string->bytes__% _%str85225%_ _%enc85227%_))))
    (define string->bytes
      (lambda _g89526_
        (let ((_g89525_ (let () (declare (not safe)) (##length _g89526_))))
          (cond ((let () (declare (not safe)) (##fx= _g89525_ 1))
                 (apply string->bytes__0 _g89526_))
                ((let () (declare (not safe)) (##fx= _g89525_ 2))
                 (apply string->bytes__% _g89526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g89526_))))))
    (define __string->bytes__%
      (lambda (_%str85165%_ _%enc85166%_)
        (let* ((_%str85169%_ _%str85165%_) (_%enc85177%_ _%enc85166%_))
          (if (eq? _%enc85177%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str85169%_))
              (__substring->bytes__%
               _%str85169%_
               '0
               (let () (declare (not safe)) (##string-length _%str85169%_))
               _%enc85177%_)))))
    (define __string->bytes__0
      (lambda (_%str85189%_)
        (let ((_%enc85191%_ 'UTF-8))
          (__string->bytes__% _%str85189%_ _%enc85191%_))))
    (define __string->bytes
      (lambda _g89528_
        (let ((_g89527_ (let () (declare (not safe)) (##length _g89528_))))
          (cond ((let () (declare (not safe)) (##fx= _g89527_ 1))
                 (apply __string->bytes__0 _g89528_))
                ((let () (declare (not safe)) (##fx= _g89527_ 2))
                 (apply __string->bytes__% _g89528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g89528_))))))
    (define substring->bytes__%
      (lambda (_%str85113%_ _%start85114%_ _%end85115%_ _%enc85116%_)
        (if (string? _%str85113%_)
            (let ((_%str85120%_ _%str85113%_))
              (if (nonnegative-fixnum? _%start85114%_)
                  (let ((_%start85130%_ _%start85114%_))
                    (if (nonnegative-fixnum? _%end85115%_)
                        (let ((_%end85140%_ _%end85115%_))
                          (__substring->bytes__%
                           _%str85120%_
                           _%start85130%_
                           _%end85140%_
                           _%enc85116%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end85115%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start85114%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str85113%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str85153%_ _%start85154%_ _%end85155%_)
        (let ((_%enc85157%_ 'UTF-8))
          (substring->bytes__%
           _%str85153%_
           _%start85154%_
           _%end85155%_
           _%enc85157%_))))
    (define substring->bytes
      (lambda _g89530_
        (let ((_g89529_ (let () (declare (not safe)) (##length _g89530_))))
          (cond ((let () (declare (not safe)) (##fx= _g89529_ 3))
                 (apply substring->bytes__0 _g89530_))
                ((let () (declare (not safe)) (##fx= _g89529_ 4))
                 (apply substring->bytes__% _g89530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g89530_))))))
    (define __substring->bytes__%
      (lambda (_%str85065%_ _%start85066%_ _%end85067%_ _%enc85068%_)
        (let* ((_%str85071%_ _%str85065%_)
               (_%start85079%_ _%start85066%_)
               (_%end85087%_ _%end85067%_))
          (if (eq? _%enc85068%_ 'UTF-8)
              (string->utf8 _%str85071%_ _%start85079%_ _%end85087%_)
              (let ((_%out85096%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc85068%_ '())))))
                (write-substring
                 _%str85071%_
                 _%start85079%_
                 _%end85087%_
                 _%out85096%_)
                (get-output-u8vector _%out85096%_))))))
    (define __substring->bytes__0
      (lambda (_%str85101%_ _%start85102%_ _%end85103%_)
        (let ((_%enc85105%_ 'UTF-8))
          (__substring->bytes__%
           _%str85101%_
           _%start85102%_
           _%end85103%_
           _%enc85105%_))))
    (define __substring->bytes
      (lambda _g89532_
        (let ((_g89531_ (let () (declare (not safe)) (##length _g89532_))))
          (cond ((let () (declare (not safe)) (##fx= _g89531_ 3))
                 (apply __substring->bytes__0 _g89532_))
                ((let () (declare (not safe)) (##fx= _g89531_ 4))
                 (apply __substring->bytes__% _g89532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g89532_))))))
    (define string-empty?
      (lambda (_%str85050%_)
        (if (string? _%str85050%_)
            (let ((_%str85054%_ _%str85050%_)) (__string-empty? _%str85054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str85050%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str85038%_)
        (let* ((_%str85041%_ _%str85038%_)
               (__tmp89533
                (let () (declare (not safe)) (##string-length _%str85041%_))))
          (declare (not safe))
          (##fxzero? __tmp89533))))
    (define string-index__%
      (lambda (_%str84990%_ _%char84991%_ _%start84992%_)
        (if (string? _%str84990%_)
            (let ((_%str84996%_ _%str84990%_))
              (if (char? _%char84991%_)
                  (let ((_%char85006%_ _%char84991%_))
                    (if (nonnegative-fixnum? _%start84992%_)
                        (let ((_%start85016%_ _%start84992%_))
                          (__string-index__%
                           _%str84996%_
                           _%char85006%_
                           _%start85016%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start84992%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                     'contract:
                     'char?
                     'value:
                     _%char84991%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str84990%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str85029%_ _%char85030%_)
        (let ((_%start85032%_ '0))
          (string-index__% _%str85029%_ _%char85030%_ _%start85032%_))))
    (define string-index
      (lambda _g89535_
        (let ((_g89534_ (let () (declare (not safe)) (##length _g89535_))))
          (cond ((let () (declare (not safe)) (##fx= _g89534_ 2))
                 (apply string-index__0 _g89535_))
                ((let () (declare (not safe)) (##fx= _g89534_ 3))
                 (apply string-index__% _g89535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g89535_))))))
    (define __string-index__%
      (lambda (_%str84929%_ _%char84930%_ _%start84931%_)
        (let* ((_%str84934%_ _%str84929%_)
               (_%char84942%_ _%char84930%_)
               (_%start84950%_ _%start84931%_)
               (_%len84959%_
                (let () (declare (not safe)) (##string-length _%str84934%_))))
          (let _%lp84961%_ ((_%k84963%_ _%start84950%_))
            (let ((_%k84965%_ _%k84963%_))
              (if (let () (declare (not safe)) (##fx< _%k84965%_ _%len84959%_))
                  (if (eq? _%char84942%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str84934%_ _%k84965%_)))
                      _%k84965%_
                      (_%lp84961%_
                       (let () (declare (not safe)) (##fx+ _%k84965%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str84980%_ _%char84981%_)
        (let ((_%start84983%_ '0))
          (__string-index__% _%str84980%_ _%char84981%_ _%start84983%_))))
    (define __string-index
      (lambda _g89537_
        (let ((_g89536_ (let () (declare (not safe)) (##length _g89537_))))
          (cond ((let () (declare (not safe)) (##fx= _g89536_ 2))
                 (apply __string-index__0 _g89537_))
                ((let () (declare (not safe)) (##fx= _g89536_ 3))
                 (apply __string-index__% _g89537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g89537_))))))
    (define string-rindex__%
      (lambda (_%str84890%_ _%char84891%_ _%start84892%_)
        (if (string? _%str84890%_)
            (let ((_%str84896%_ _%str84890%_))
              (if (char? _%char84891%_)
                  (let ((_%char84906%_ _%char84891%_))
                    (__string-rindex__%
                     _%str84896%_
                     _%char84906%_
                     _%start84892%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                     'contract:
                     'char?
                     'value:
                     _%char84891%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str84890%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str84919%_ _%char84920%_)
        (let ((_%start84922%_ '#f))
          (string-rindex__% _%str84919%_ _%char84920%_ _%start84922%_))))
    (define string-rindex
      (lambda _g89539_
        (let ((_g89538_ (let () (declare (not safe)) (##length _g89539_))))
          (cond ((let () (declare (not safe)) (##fx= _g89538_ 2))
                 (apply string-rindex__0 _g89539_))
                ((let () (declare (not safe)) (##fx= _g89538_ 3))
                 (apply string-rindex__% _g89539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g89539_))))))
    (define __string-rindex__%
      (lambda (_%str84832%_ _%char84833%_ _%start84834%_)
        (let* ((_%str84837%_ _%str84832%_)
               (_%char84845%_ _%char84833%_)
               (_%len84854%_
                (let () (declare (not safe)) (##string-length _%str84837%_)))
               (_%start84856%_
                (if (fixnum? _%start84834%_)
                    _%start84834%_
                    (let () (declare (not safe)) (##fx- _%len84854%_ '1)))))
          (let _%lp84859%_ ((_%k84861%_ _%start84856%_))
            (let ((_%k84863%_ _%k84861%_))
              (if (let () (declare (not safe)) (##fx>= _%k84863%_ '0))
                  (if (eq? _%char84845%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str84837%_ _%k84863%_)))
                      _%k84863%_
                      (_%lp84859%_
                       (let () (declare (not safe)) (##fx- _%k84863%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str84880%_ _%char84881%_)
        (let ((_%start84883%_ '#f))
          (__string-rindex__% _%str84880%_ _%char84881%_ _%start84883%_))))
    (define __string-rindex
      (lambda _g89541_
        (let ((_g89540_ (let () (declare (not safe)) (##length _g89541_))))
          (cond ((let () (declare (not safe)) (##fx= _g89540_ 2))
                 (apply __string-rindex__0 _g89541_))
                ((let () (declare (not safe)) (##fx= _g89540_ 3))
                 (apply __string-rindex__% _g89541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g89541_))))))
    (define string-split
      (lambda (_%str84806%_ _%char84807%_)
        (if (string? _%str84806%_)
            (let ((_%str84811%_ _%str84806%_))
              (if (char? _%char84807%_)
                  (let ((_%char84821%_ _%char84807%_))
                    (__string-split _%str84811%_ _%char84821%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                     'contract:
                     'char?
                     'value:
                     _%char84807%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str84806%_)
              '#!void))))
    (define __string-split
      (lambda (_%str84747%_ _%char84748%_)
        (let* ((_%str84751%_ _%str84747%_)
               (_%char84759%_ _%char84748%_)
               (_%len84768%_
                (let () (declare (not safe)) (##string-length _%str84751%_))))
          (let _%lp84770%_ ((_%start84772%_ '0) (_%r84773%_ '()))
            (let* ((_%start84776%_ _%start84772%_)
                   (_%$e84789%_
                    (__string-index__%
                     _%str84751%_
                     _%char84759%_
                     _%start84776%_)))
              (if _%$e84789%_
                  ((lambda (_%end84792%_)
                     (let ((_%end84794%_ _%end84792%_))
                       (_%lp84770%_
                        (let () (declare (not safe)) (##fx+ _%end84794%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str84751%_
                                 _%start84776%_
                                 _%end84794%_))
                              _%r84773%_))))
                   _%$e84789%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start84776%_ _%len84768%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str84751%_
                                _%start84776%_
                                _%len84768%_)))
                       _%r84773%_)
                      (reverse! _%r84773%_))))))))
    (define string-join
      (lambda (_%strs84597%_ _%join84598%_)
        (letrec ((_%join-length84601%_
                  (lambda (_%strs84685%_ _%jlen84686%_)
                    (let _%lp84688%_ ((_%rest84690%_ _%strs84685%_)
                                      (_%len84691%_ '0))
                      (let* ((_%len84693%_ _%len84691%_)
                             (_%rest8470184709%_ _%rest84690%_)
                             (_%else8470384717%_ (lambda () '0))
                             (_%K8470584735%_
                              (lambda (_%rest84720%_ _%hd84721%_)
                                (if (string? _%hd84721%_)
                                    (let ((_%hd84723%_ _%hd84721%_))
                                      (if (pair? _%rest84720%_)
                                          (_%lp84688%_
                                           _%rest84720%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd84723%_))
                                                _%jlen84686%_
                                                _%len84693%_))
                                          (let ((__tmp89542
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd84723%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp89542 _%len84693%_))))
                                    (error '"expected string" _%hd84721%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8470184709%_))
                            (let ((_%hd8470684738%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8470184709%_)))
                                  (_%tl8470784740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8470184709%_))))
                              (let* ((_%hd84743%_ _%hd8470684738%_)
                                     (_%rest84745%_ _%tl8470784740%_))
                                (_%K8470584735%_ _%rest84745%_ _%hd84743%_)))
                            (_%else8470384717%_)))))))
          (let* ((_%join84606%_
                  (if (char? _%join84598%_)
                      (let () (declare (not safe)) (##string _%join84598%_))
                      (if (string? _%join84598%_)
                          _%join84598%_
                          (error '"expected string or char" _%join84598%_))))
                 (_%jlen84608%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join84606%_)))
                 (_%olen84610%_
                  (_%join-length84601%_ _%strs84597%_ _%jlen84608%_))
                 (_%ostr84612%_
                  (let () (declare (not safe)) (##make-string _%olen84610%_))))
            (let _%lp84615%_ ((_%rest84617%_ _%strs84597%_) (_%k84618%_ '0))
              (let* ((_%k84621%_ _%k84618%_)
                     (_%rest8463784645%_ _%rest84617%_)
                     (_%else8463984653%_ (lambda () '""))
                     (_%K8464184673%_
                      (lambda (_%rest84656%_ _%hd84657%_)
                        (let* ((_%hd84659%_ _%hd84657%_)
                               (_%hdlen84671%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd84659%_))))
                          (if (pair? _%rest84656%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84659%_
                                   '0
                                   _%hdlen84671%_
                                   _%ostr84612%_
                                   _%k84621%_))
                                (let ((__tmp89543
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k84621%_ _%hdlen84671%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join84606%_
                                   '0
                                   _%jlen84608%_
                                   _%ostr84612%_
                                   __tmp89543))
                                (_%lp84615%_
                                 _%rest84656%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k84621%_
                                          _%hdlen84671%_
                                          _%jlen84608%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84659%_
                                   '0
                                   _%hdlen84671%_
                                   _%ostr84612%_
                                   _%k84621%_))
                                _%ostr84612%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8463784645%_))
                    (let ((_%hd8464284676%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8463784645%_)))
                          (_%tl8464384678%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8463784645%_))))
                      (let* ((_%hd84681%_ _%hd8464284676%_)
                             (_%rest84683%_ _%tl8464384678%_))
                        (_%K8464184673%_ _%rest84683%_ _%hd84681%_)))
                    (_%else8463984653%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes84523%_ _%port84524%_ _%start84525%_ _%end84526%_)
        (if (u8vector? _%bytes84523%_)
            (let ((_%bytes84530%_ _%bytes84523%_))
              (if (input-port? _%port84524%_)
                  (let ((_%port84540%_ _%port84524%_))
                    (if ((lambda (_%o84549%_)
                           (and (fixnum? _%o84549%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84549%_ '0))
                                (let ((__tmp89544
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84530%_))))
                                  (declare (not safe))
                                  (##fx< _%o84549%_ __tmp89544))))
                         _%start84525%_)
                        (let ((_%start84553%_ _%start84525%_))
                          (if ((lambda (_%o84562%_)
                                 (and (fixnum? _%o84562%_)
                                      (let ((__tmp89545
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84530%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84553%_
                                                _%o84562%_
                                                __tmp89545))))
                               _%end84526%_)
                              (let ((_%end84566%_ _%end84526%_))
                                (__read-u8vector__%
                                 _%bytes84530%_
                                 _%port84540%_
                                 _%start84553%_
                                 _%end84566%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84526%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84525%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port84524%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes84523%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes84579%_ _%port84580%_)
        (let* ((_%start84582%_ '0)
               (_%end84584%_ (u8vector-length _%bytes84579%_)))
          (read-u8vector__%
           _%bytes84579%_
           _%port84580%_
           _%start84582%_
           _%end84584%_))))
    (define read-u8vector__1
      (lambda (_%bytes84586%_ _%port84587%_ _%start84588%_)
        (let ((_%end84590%_ (u8vector-length _%bytes84586%_)))
          (read-u8vector__%
           _%bytes84586%_
           _%port84587%_
           _%start84588%_
           _%end84590%_))))
    (define read-u8vector
      (lambda _g89547_
        (let ((_g89546_ (let () (declare (not safe)) (##length _g89547_))))
          (cond ((let () (declare (not safe)) (##fx= _g89546_ 2))
                 (apply read-u8vector__0 _g89547_))
                ((let () (declare (not safe)) (##fx= _g89546_ 3))
                 (apply read-u8vector__1 _g89547_))
                ((let () (declare (not safe)) (##fx= _g89546_ 4))
                 (apply read-u8vector__% _g89547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g89547_))))))
    (define __read-u8vector__%
      (lambda (_%bytes84462%_ _%port84463%_ _%start84464%_ _%end84465%_)
        (let* ((_%bytes84468%_ _%bytes84462%_)
               (_%port84476%_ _%port84463%_)
               (_%start84484%_ _%start84464%_)
               (_%end84492%_ _%end84465%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes84468%_
           _%start84484%_
           _%end84492%_
           _%port84476%_))))
    (define __read-u8vector__0
      (lambda (_%bytes84504%_ _%port84505%_)
        (let* ((_%start84507%_ '0)
               (_%end84509%_ (u8vector-length _%bytes84504%_)))
          (__read-u8vector__%
           _%bytes84504%_
           _%port84505%_
           _%start84507%_
           _%end84509%_))))
    (define __read-u8vector__1
      (lambda (_%bytes84511%_ _%port84512%_ _%start84513%_)
        (let ((_%end84515%_ (u8vector-length _%bytes84511%_)))
          (__read-u8vector__%
           _%bytes84511%_
           _%port84512%_
           _%start84513%_
           _%end84515%_))))
    (define __read-u8vector
      (lambda _g89549_
        (let ((_g89548_ (let () (declare (not safe)) (##length _g89549_))))
          (cond ((let () (declare (not safe)) (##fx= _g89548_ 2))
                 (apply __read-u8vector__0 _g89549_))
                ((let () (declare (not safe)) (##fx= _g89548_ 3))
                 (apply __read-u8vector__1 _g89549_))
                ((let () (declare (not safe)) (##fx= _g89548_ 4))
                 (apply __read-u8vector__% _g89549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g89549_))))))
    (define write-u8vector__%
      (lambda (_%bytes84387%_ _%port84388%_ _%start84389%_ _%end84390%_)
        (if (u8vector? _%bytes84387%_)
            (let ((_%bytes84394%_ _%bytes84387%_))
              (if (output-port? _%port84388%_)
                  (let ((_%port84404%_ _%port84388%_))
                    (if ((lambda (_%o84413%_)
                           (and (fixnum? _%o84413%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84413%_ '0))
                                (let ((__tmp89550
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84394%_))))
                                  (declare (not safe))
                                  (##fx< _%o84413%_ __tmp89550))))
                         _%start84389%_)
                        (let ((_%start84417%_ _%start84389%_))
                          (if ((lambda (_%o84426%_)
                                 (and (fixnum? _%o84426%_)
                                      (let ((__tmp89551
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84394%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84417%_
                                                _%o84426%_
                                                __tmp89551))))
                               _%end84390%_)
                              (let ((_%end84430%_ _%end84390%_))
                                (__write-u8vector__%
                                 _%bytes84394%_
                                 _%port84404%_
                                 _%start84417%_
                                 _%end84430%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84390%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84389%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port84388%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes84387%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes84443%_ _%port84444%_)
        (let* ((_%start84446%_ '0)
               (_%end84448%_ (u8vector-length _%bytes84443%_)))
          (write-u8vector__%
           _%bytes84443%_
           _%port84444%_
           _%start84446%_
           _%end84448%_))))
    (define write-u8vector__1
      (lambda (_%bytes84450%_ _%port84451%_ _%start84452%_)
        (let ((_%end84454%_ (u8vector-length _%bytes84450%_)))
          (write-u8vector__%
           _%bytes84450%_
           _%port84451%_
           _%start84452%_
           _%end84454%_))))
    (define write-u8vector
      (lambda _g89553_
        (let ((_g89552_ (let () (declare (not safe)) (##length _g89553_))))
          (cond ((let () (declare (not safe)) (##fx= _g89552_ 2))
                 (apply write-u8vector__0 _g89553_))
                ((let () (declare (not safe)) (##fx= _g89552_ 3))
                 (apply write-u8vector__1 _g89553_))
                ((let () (declare (not safe)) (##fx= _g89552_ 4))
                 (apply write-u8vector__% _g89553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g89553_))))))
    (define __write-u8vector__%
      (lambda (_%bytes84326%_ _%port84327%_ _%start84328%_ _%end84329%_)
        (let* ((_%bytes84332%_ _%bytes84326%_)
               (_%port84340%_ _%port84327%_)
               (_%start84348%_ _%start84328%_)
               (_%end84356%_ _%end84329%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes84332%_
           _%start84348%_
           _%end84356%_
           _%port84340%_))))
    (define __write-u8vector__0
      (lambda (_%bytes84368%_ _%port84369%_)
        (let* ((_%start84371%_ '0)
               (_%end84373%_ (u8vector-length _%bytes84368%_)))
          (__write-u8vector__%
           _%bytes84368%_
           _%port84369%_
           _%start84371%_
           _%end84373%_))))
    (define __write-u8vector__1
      (lambda (_%bytes84375%_ _%port84376%_ _%start84377%_)
        (let ((_%end84379%_ (u8vector-length _%bytes84375%_)))
          (__write-u8vector__%
           _%bytes84375%_
           _%port84376%_
           _%start84377%_
           _%end84379%_))))
    (define __write-u8vector
      (lambda _g89555_
        (let ((_g89554_ (let () (declare (not safe)) (##length _g89555_))))
          (cond ((let () (declare (not safe)) (##fx= _g89554_ 2))
                 (apply __write-u8vector__0 _g89555_))
                ((let () (declare (not safe)) (##fx= _g89554_ 3))
                 (apply __write-u8vector__1 _g89555_))
                ((let () (declare (not safe)) (##fx= _g89554_ 4))
                 (apply __write-u8vector__% _g89555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g89555_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag84294%_
               _%dbg-exprs84295%_
               _%dbg-thunks84296%_
               _%expr84297%_
               _%thunk84298%_)
        (letrec ((_%o84300%_ (current-output-port))
                 (_%e84301%_ (current-error-port))
                 (_%p84302%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f84303%_
                  (lambda ()
                    (force-output _%o84300%_)
                    (force-output _%e84301%_)))
                 (_%d84304%_
                  (lambda (_%x84311%_) (display _%x84311%_ _%e84301%_)))
                 (_%w84305%_
                  (lambda (_%x84313%_) (_%p84302%_ _%x84313%_ _%e84301%_)))
                 (_%n84306%_ (lambda () (newline _%e84301%_)))
                 (_%v84307%_
                  (lambda (_%l84316%_)
                    (for-each
                     (lambda (_%x84318%_)
                       (_%d84304%_ '" ")
                       (_%w84305%_ _%x84318%_))
                     _%l84316%_)
                    (_%n84306%_)))
                 (_%x84308%_
                  (lambda (_%expr84320%_ _%thunk84321%_)
                    (_%f84303%_)
                    (_%d84304%_ '"  ")
                    (_%w84305%_ _%expr84320%_)
                    (_%d84304%_ '" =>")
                    (call-with-values
                     _%thunk84321%_
                     (lambda _%x84323%_
                       (_%v84307%_ _%x84323%_)
                       (_%f84303%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x84323%_)))))))
          (if _%tag84294%_
              (begin
                (if (eq? _%tag84294%_ '#!void)
                    '#!void
                    (begin
                      (_%f84303%_)
                      (_%d84304%_ _%tag84294%_)
                      (_%n84306%_)))
                (for-each _%x84308%_ _%dbg-exprs84295%_ _%dbg-thunks84296%_)
                (if _%thunk84298%_
                    (_%x84308%_ _%expr84297%_ _%thunk84298%_)
                    '#!void))
              (if _%thunk84298%_ (_%thunk84298%_) '#!void)))))))
